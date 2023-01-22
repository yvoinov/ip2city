--------------------------------------------
--   PRIVATE IMPLEMENTATION (INTERNALS)   --
--          Yuri Voinov (C) 2009          --
--      MUST BE WRAPPED BEFORE LOAD !     --
--------------------------------------------

create or replace package body ip2city_api is
-- ------------------------------------------------------------------------
-- Note: REGEXP functions uses, needs Oracle10g and above!
-- ------------------------------------------------------------------------
 e_ip4_not_long exception; -- IPv4 not ULONG format exception
 e_ip4_not_dotted exception; -- IPv4 not dotted format exception
-- ------------------------------------------------------------------------
function checkip4long(p_ipaddr number) return boolean is
 -- Check IP for ULONG format
begin
 if regexp_instr(p_ipaddr,'[^[:digit:]]') = 0 then
  return true;
 else
  return false;
 end if;
end checkip4long;
-- ------------------------------------------------------------------------
function checkip4dotted(p_ipaddr varchar2) return boolean is
 -- Check IPv4 in correct x.y.z.w dotted format
 i pls_integer; -- Loop counter
 v_octet_check boolean; -- Check octet flag
 v_dummy number;  -- Address buffer
begin
 if regexp_instr(p_ipaddr,'^([01]?\d\d?|2[0-4]\d|25[0-5])\.([01]?\d\d?|2[0-4]\d|25[0-5])\.([01]?\d\d?|2[0-4]\d|25[0-5])\.([01]?\d\d?|2[0-4]\d|25[0-5])$') = 1 then
  return true;
 else
  return false;
 end if;
end checkip4dotted;
-- ------------------------------------------------------------------------
function ip2long4(p_ipaddr varchar2) return number
 -- IP2LONG4() takes a dotted internet address in the format w.x.y.z
 -- and returns the long value of it (IPv4).
 is
  v_part1 number(38);
  v_part2 number(38);
  v_part3 number(38);
  v_part4 number(38);
  v_dummy varchar2(20);
begin
 -- Check IP in dotted format
 if not checkip4dotted(p_ipaddr) then
  raise e_ip4_not_dotted;
 end if;
 v_dummy := regexp_substr(p_ipaddr,'[^.]+',1,1);
 if v_dummy > 255 then
  return(-1);
 end if;
 v_part1 := 16777216 * v_dummy;
 v_dummy := regexp_substr(p_ipaddr,'[^.]+',1,2);
 if v_dummy > 255 then
  return(-2);
 end if;
 v_part2 := 65536 * v_dummy;    
 v_dummy := regexp_substr(p_ipaddr,'[^.]+',1,3);
 if v_dummy > 255 then
  return(-3);
 end if;
 v_part3 := 256 * v_dummy;
 v_dummy := regexp_substr(p_ipaddr,'[^.]+',1,4);
 if v_dummy > 255 then
  return(-4);
 end if;
 v_part4 := v_dummy;
 return((v_part1+v_part2+v_part3+v_part4));
exception 
 when e_ip4_not_dotted then 
  raise_application_error(-20191,'IP not in x.y.x.w dotted format.');
 when others then return(0);
end ip2long4;
-- ------------------------------------------------------------------------
function long2ip4(p_ipaddr number) return varchar2
 -- LONG2IP4() takes a ULONG IP address
 -- and returns the dotted internet address in the format w.x.y.z.
 is
  v_part1 number(38);
  v_part2 number(38);
  v_part3 number(38);
  v_part4 number(38);
  v_dummy varchar2(20);
begin
 -- Check IP in ULONG format
 if not checkip4long(p_ipaddr) then
  raise e_ip4_not_long;
 end if;
 -- Corrected IP computation formula for Oracle mod function
 v_part1 := mod(trunc(p_ipaddr / 16777216), 256);
 v_part2 := mod(trunc(p_ipaddr / 65536), 256);
 v_part3 := mod(trunc(p_ipaddr / 256), 256);
 v_part4 := mod(trunc(p_ipaddr), 256);
 v_dummy := v_part1||'.'||v_part2||'.'||v_part3||'.'||v_part4;
 return v_dummy;
exception
 when e_ip4_not_long then 
  raise_application_error(-20190,'IP not in ULONG format.');
 when others then return null;
end long2ip4;
-- ------------------------------------------------------------------------ 
function getalldata(p_ipaddr number) return varchar2
 -- Function takes an p_ipaddress in long format and returns the corresponding
 -- complete data row or NULL in case no match could be found.
 is
  v_complete_data ip2city_location%rowtype;  -- Row buffer
  v_cname varchar2(100);  -- Country name buffer
begin
 -- Check IP already in ULONG format
 if not checkip4long(p_ipaddr) then
  raise e_ip4_not_long;
 end if;
 select /*+ first_rows */ l.locid,l.country,l.region,l.city,l.postalCode,
                          l.latitude,l.longitude,l.metroCode,l.areaCode
 into v_complete_data
 from ip2city_blocks b, ip2city_location l
 where b.locid = l.locid
   and p_ipaddr between b.startipnum and b.endipnum;
 select /*+ first_rows */ name
 into v_cname
 from ip2city_country_icons
 where country = v_complete_data.country;
 return(nvl(v_complete_data.country,'-')||'|'||v_cname||'|'||nvl(v_complete_data.region,'-')||'|'||nvl(v_complete_data.city,'-')||'|'||nvl(v_complete_data.postalCode,'-')||'|'||nvl(to_char(v_complete_data.latitude),'-')||'|'||nvl(to_char(v_complete_data.longitude),'-')||'|'||nvl(to_char(v_complete_data.metroCode),'-')||'|'||nvl(to_char(v_complete_data.areaCode),'-'));
exception 
 when no_data_found then return(null);
 when e_ip4_not_long then 
  raise_application_error(-20190,'IP not in ULONG format.');
end getalldata;
-- ------------------------------------------------------------------------
function getalldata(p_ipaddr varchar2) return varchar2
 -- Function takes an p_ipaddress in dotted format and returns the corresponding
 -- complete data row or NULL in case no match could be found.
 is
  v_complete_data ip2city_location%rowtype;  -- Row buffer
  v_cname varchar2(100);  -- Country name buffer
  v_ip_long number;
begin
 -- Check IP already in dotted format
 if not checkip4dotted(p_ipaddr) then
  raise e_ip4_not_dotted;
 end if;
 -- Transform IP to long form.
 -- This is performance issue for query
 -- when selecting city data from complete
 -- database.
 v_ip_long := ip2long4(p_ipaddr);
 select /*+ first_rows */ l.locid,l.country,l.region,l.city,l.postalCode,
                          l.latitude,l.longitude,l.metroCode,l.areaCode
 into v_complete_data 
 from ip2city_blocks b, ip2city_location l
 where b.locid = l.locid
   and v_ip_long between b.startipnum and b.endipnum;
 select /*+ first_rows */ name
 into v_cname
 from ip2city_country_icons
 where country = v_complete_data.country;
 return(nvl(v_complete_data.country,'-')||'|'||v_cname||'|'||nvl(v_complete_data.region,'-')||'|'||nvl(v_complete_data.city,'-')||'|'||nvl(v_complete_data.postalCode,'-')||'|'||nvl(to_char(v_complete_data.latitude),'-')||'|'||nvl(to_char(v_complete_data.longitude),'-')||'|'||nvl(to_char(v_complete_data.metroCode),'-')||'|'||nvl(to_char(v_complete_data.areaCode),'-'));
exception 
 when no_data_found then return(null);
 when e_ip4_not_dotted then 
  raise_application_error(-20191,'IP not in x.y.x.w dotted format.');
end getalldata;
-- ------------------------------------------------------------------------
function getcc(p_ipaddr number) return varchar2
 -- Function takes an p_ipaddress in long format and returns the corresponding
 -- country code or NULL in case no match could be found.
 is
  v_cc varchar2(2); -- Country code buffer
begin
 -- Check IP already in ULONG format
 if not checkip4long(p_ipaddr) then
  raise e_ip4_not_long;
 end if;
 v_cc := regexp_substr(getalldata(p_ipaddr),'[^\|]+',1,1);
 return(v_cc);
exception 
 when no_data_found then return(null);
 when e_ip4_not_long then 
  raise_application_error(-20190,'IP not in ULONG format.');
end getcc;
-- ------------------------------------------------------------------------
function getcc(p_ipaddr varchar2) return varchar2
 -- Function takes an p_ipaddress in dotted format and returns the corresponding
 -- country code or NULL in case no match could be found.
 is
  v_cc varchar2(2);
  v_ip_long number;
begin
 -- Check IP already in dotted format
 if not checkip4dotted(p_ipaddr) then
  raise e_ip4_not_dotted;
 end if;
 -- Transform IP to long form.
 -- This is performance issue for query
 -- when selecting city data from complete
 -- database.
 v_ip_long := ip2long4(p_ipaddr);
 v_cc := regexp_substr(getalldata(p_ipaddr),'[^\|]+',1,1);
 return(v_cc);
exception 
 when no_data_found then return(null);
 when e_ip4_not_dotted then 
  raise_application_error(-20191,'IP not in x.y.x.w dotted format.');
end getcc;
-- ------------------------------------------------------------------------
function getcountryname(p_ipaddr number) return varchar2
 -- Function takes an p_ipaddress in long format and returns the corresponding
 -- country name or NULL in case no match could be found.
 is
  v_cname varchar2(100);  -- Country name buffer
begin
 -- Check IP already in ULONG format
 if not checkip4long(p_ipaddr) then
  raise e_ip4_not_long;
 end if;
 v_cname := regexp_substr(getalldata(p_ipaddr),'[^\|]+',1,2);
 return(v_cname);
exception 
 when no_data_found then return(null);
 when e_ip4_not_long then 
  raise_application_error(-20190,'IP not in ULONG format.');
end getcountryname;
-- ------------------------------------------------------------------------
function getcountryname(p_ipaddr varchar2) return varchar2
 -- Function takes an p_ipaddress in dotted format and returns the corresponding
 -- country name or NULL in case no match could be found.
 is
  v_cc varchar2(2);  -- Country code buffer
  v_cname varchar2(100);
  v_ip_long number;
begin
 -- Check IP already in dotted format
 if not checkip4dotted(p_ipaddr) then
  raise e_ip4_not_dotted;
 end if;
 -- Transform IP to long form.
 -- This is performance issue for query
 -- when selecting city data from complete
 -- database.
 v_ip_long := ip2long4(p_ipaddr);
 v_cname := regexp_substr(getalldata(p_ipaddr),'[^\|]+',1,2);
 return(v_cname);
exception 
 when no_data_found then return(null);
 when e_ip4_not_dotted then 
  raise_application_error(-20191,'IP not in x.y.x.w dotted format.');
end getcountryname;
-- ------------------------------------------------------------------------
function getcityname(p_ipaddr number) return varchar2
 -- Function takes an p_ipaddress in long format and returns the corresponding
 -- city name or NULL in case no match could be found.
 is
  v_city varchar2(60);  -- City name buffer
begin
 -- Check IP already in ULONG format
 if not checkip4long(p_ipaddr) then
  raise e_ip4_not_long;
 end if;
 v_city := regexp_substr(getalldata(p_ipaddr),'[^\|]+',1,4);
 return(v_city);
exception 
 when no_data_found then return(null);
 when e_ip4_not_long then 
  raise_application_error(-20190,'IP not in ULONG format.');
end getcityname;
-- ------------------------------------------------------------------------
function getcityname(p_ipaddr varchar2) return varchar2
 -- Function takes an p_ipaddress in dotted format and returns the corresponding
 -- city name or NULL in case no match could be found.
 is
  v_city varchar2(60);  -- City name buffer
  v_ip_long number;
begin
 -- Check IP already in dotted format
 if not checkip4dotted(p_ipaddr) then
  raise e_ip4_not_dotted;
 end if;
 -- Transform IP to long form.
 -- This is performance issue for query
 -- when selecting city data from complete
 -- database.
 v_ip_long := ip2long4(p_ipaddr);
 v_city := regexp_substr(getalldata(p_ipaddr),'[^\|]+',1,4);
 return(v_city);
exception 
 when no_data_found then return(null);
 when e_ip4_not_dotted then 
  raise_application_error(-20191,'IP not in x.y.x.w dotted format.');
end getcityname;
-- ------------------------------------------------------------------------
function getregionname(p_ipaddr number) return varchar2
 -- Function takes an p_ipaddress in long format and returns the corresponding
 -- region name (code) or NULL in case no match could be found.
 is
  v_region varchar2(60);  -- Region name buffer
begin
 -- Check IP already in ULONG format
 if not checkip4long(p_ipaddr) then
  raise e_ip4_not_long;
 end if;
 v_region := regexp_substr(getalldata(p_ipaddr),'[^\|]+',1,3);
 return(v_region);
exception 
 when no_data_found then return(null);
 when e_ip4_not_long then 
  raise_application_error(-20190,'IP not in ULONG format.');
end getregionname;
-- ------------------------------------------------------------------------
function getregionname(p_ipaddr varchar2) return varchar2
 -- Function takes an p_ipaddress in dotted format and returns the corresponding
 -- region name (code) or NULL in case no match could be found.
 is
  v_region varchar2(60);  -- Region name buffer
  v_ip_long number;
begin
 -- Check IP already in dotted format
 if not checkip4dotted(p_ipaddr) then
  raise e_ip4_not_dotted;
 end if;
 -- Transform IP to long form.
 -- This is performance issue for query
 -- when selecting city data from complete
 -- database.
 v_ip_long := ip2long4(p_ipaddr);
 v_region := regexp_substr(getalldata(p_ipaddr),'[^\|]+',1,3);
 return(v_region);
exception 
 when no_data_found then return(null);
 when e_ip4_not_dotted then 
  raise_application_error(-20191,'IP not in x.y.x.w dotted format.');
end getregionname;
-- ------------------------------------------------------------------------
function getpostalcode(p_ipaddr number) return varchar2
 -- Function takes an p_ipaddress in long format and returns the corresponding
 -- postal code or NULL in case no match could be found.
 is
  v_postalcode varchar2(60);  -- Postal code buffer
begin
 -- Check IP already in ULONG format
 if not checkip4long(p_ipaddr) then
  raise e_ip4_not_long;
 end if;
 v_postalcode := regexp_substr(getalldata(p_ipaddr),'[^\|]+',1,5);
 return(v_postalcode);
exception 
 when no_data_found then return(null);
 when e_ip4_not_long then 
  raise_application_error(-20190,'IP not in ULONG format.');
end getpostalcode;
-- ------------------------------------------------------------------------
function getpostalcode(p_ipaddr varchar2) return varchar2
 -- Function takes an p_ipaddress in dotted format and returns the corresponding
 -- postal code or NULL in case no match could be found.
 is
  v_postalcode varchar2(60);  -- Postal code buffer
  v_ip_long number;
begin
 -- Check IP already in dotted format
 if not checkip4dotted(p_ipaddr) then
  raise e_ip4_not_dotted;
 end if;
 -- Transform IP to long form.
 -- This is performance issue for query
 -- when selecting city data from complete
 -- database.
 v_ip_long := ip2long4(p_ipaddr);
 v_postalcode := regexp_substr(getalldata(p_ipaddr),'[^\|]+',1,5);
 return(v_postalcode);
exception 
 when no_data_found then return(null);
 when e_ip4_not_dotted then 
  raise_application_error(-20191,'IP not in x.y.x.w dotted format.');
end getpostalcode;
-- ------------------------------------------------------------------------
function getmetrocode(p_ipaddr number) return number
 -- Function takes an p_ipaddress in long format and returns the corresponding
 -- metro code or NULL in case no match could be found.
 is
  v_metrocode number;  -- Metro code buffer
begin
 -- Check IP already in ULONG format
 if not checkip4long(p_ipaddr) then
  raise e_ip4_not_long;
 end if;
 v_metrocode := regexp_substr(getalldata(p_ipaddr),'[^\|]+',1,8);
 return(v_metrocode);
exception 
 when no_data_found then return(null);
 when e_ip4_not_long then 
  raise_application_error(-20190,'IP not in ULONG format.');
end getmetrocode;
-- ------------------------------------------------------------------------
function getmetrocode(p_ipaddr varchar2) return number
 -- Function takes an p_ipaddress in dotted format and returns the corresponding
 -- metro code or NULL in case no match could be found.
 is
  v_metrocode number;  -- Metro code buffer
  v_ip_long number;
begin
 -- Check IP already in dotted format
 if not checkip4dotted(p_ipaddr) then
  raise e_ip4_not_dotted;
 end if;
 -- Transform IP to long form.
 -- This is performance issue for query
 -- when selecting city data from complete
 -- database.
 v_ip_long := ip2long4(p_ipaddr);
 v_metrocode := regexp_substr(getalldata(p_ipaddr),'[^\|]+',1,8);
 return(v_metrocode);
exception 
 when no_data_found then return(null);
 when e_ip4_not_dotted then 
  raise_application_error(-20191,'IP not in x.y.x.w dotted format.');
end getmetrocode;
-- ------------------------------------------------------------------------
function getareacode(p_ipaddr number) return number
 -- Function takes an p_ipaddress in long format and returns the corresponding
 -- area code or NULL in case no match could be found.
 is
  v_areacode number;  -- Metro code buffer
begin
 -- Check IP already in ULONG format
 if not checkip4long(p_ipaddr) then
  raise e_ip4_not_long;
 end if;
 v_areacode := regexp_substr(getalldata(p_ipaddr),'[^\|]+',1,9);
 return(v_areacode);
exception 
 when no_data_found then return(null);
 when e_ip4_not_long then 
  raise_application_error(-20190,'IP not in ULONG format.');
end getareacode;
-- ------------------------------------------------------------------------
function getareacode(p_ipaddr varchar2) return number
 -- Function takes an p_ipaddress in dotted format and returns the corresponding
 -- area code or NULL in case no match could be found.
 is
  v_areacode number;  -- Metro code buffer
  v_ip_long number;
begin
 -- Check IP already in dotted format
 if not checkip4dotted(p_ipaddr) then
  raise e_ip4_not_dotted;
 end if;
 -- Transform IP to long form.
 -- This is performance issue for query
 -- when selecting city data from complete
 -- database.
 v_ip_long := ip2long4(p_ipaddr);
 v_areacode := regexp_substr(getalldata(p_ipaddr),'[^\|]+',1,9);
 return(v_areacode);
exception 
 when no_data_found then return(null);
 when e_ip4_not_dotted then 
  raise_application_error(-20191,'IP not in x.y.x.w dotted format.');
end getareacode;
-- ------------------------------------------------------------------------
function getlatitude(p_ipaddr number) return number
 -- Function takes an p_ipaddress in long format and returns the corresponding
 -- latitude or NULL in case no match could be found.
 is
  v_latitude number;  -- Latitude buffer
begin
 -- Check IP already in ULONG format
 if not checkip4long(p_ipaddr) then
  raise e_ip4_not_long;
 end if;
 v_latitude := regexp_substr(getalldata(p_ipaddr),'[^\|]+',1,6);
 return(v_latitude);
exception 
 when no_data_found then return(null);
 when e_ip4_not_long then 
  raise_application_error(-20190,'IP not in ULONG format.');
end getlatitude;
-- ------------------------------------------------------------------------
function getlatitude(p_ipaddr varchar2) return number
 -- Function takes an p_ipaddress in dotted format and returns the corresponding
 -- latitude or NULL in case no match could be found.
 is
  v_latitude number;  -- Latitude buffer
  v_ip_long number;
begin
 -- Check IP already in dotted format
 if not checkip4dotted(p_ipaddr) then
  raise e_ip4_not_dotted;
 end if;
 -- Transform IP to long form.
 -- This is performance issue for query
 -- when selecting city data from complete
 -- database.
 v_ip_long := ip2long4(p_ipaddr);
 v_latitude := regexp_substr(getalldata(p_ipaddr),'[^\|]+',1,6);
 return(v_latitude);
exception 
 when no_data_found then return(null);
 when e_ip4_not_dotted then 
  raise_application_error(-20191,'IP not in x.y.x.w dotted format.');
end getlatitude;
-- ------------------------------------------------------------------------
function getlongitude(p_ipaddr number) return number
 -- Function takes an p_ipaddress in long format and returns the corresponding
 -- longitude or NULL in case no match could be found.
 is
  v_longitude number;  -- Longitude buffer
begin
 -- Check IP already in ULONG format
 if not checkip4long(p_ipaddr) then
  raise e_ip4_not_long;
 end if;
 v_longitude := regexp_substr(getalldata(p_ipaddr),'[^\|]+',1,7);
 return(v_longitude);
exception 
 when no_data_found then return(null);
 when e_ip4_not_long then 
  raise_application_error(-20190,'IP not in ULONG format.');
end getlongitude;
-- ------------------------------------------------------------------------
function getlongitude(p_ipaddr varchar2) return number
 -- Function takes an p_ipaddress in dotted format and returns the corresponding
 -- longitude or NULL in case no match could be found.
 is
  v_longitude number;  -- Latitude buffer
  v_ip_long number;
begin
 -- Check IP already in dotted format
 if not checkip4dotted(p_ipaddr) then
  raise e_ip4_not_dotted;
 end if;
 -- Transform IP to long form.
 -- This is performance issue for query
 -- when selecting city data from complete
 -- database.
 v_ip_long := ip2long4(p_ipaddr);
 v_longitude := regexp_substr(getalldata(p_ipaddr),'[^\|]+',1,7);
 return(v_longitude);
exception 
 when no_data_found then return(null);
 when e_ip4_not_dotted then 
  raise_application_error(-20191,'IP not in x.y.x.w dotted format.');
end getlongitude;
-- ------------------------------------------------------------------------
procedure show_flag_by_code(p_code in varchar2)
 -- Procedure show country flag by country code
is
 v_lob_loc blob; -- LOB buffer
 v_length  number; -- LOB length
 v_fname varchar2(100); -- File name buffer
begin
 -- Retreive the LOB locator into the PL/SQL locator variable
 begin
  select /*+ first_rows(1) */ image, dbms_lob.getlength(image), fname
  into v_lob_loc, v_length, v_fname
  from ip2city_country_icons
  where country = upper(p_code);
 exception
  when no_data_found then
   select /*+ first_rows(1) */ image, dbms_lob.getlength(image), fname
   into v_lob_loc, v_length, v_fname
   from ip2city_country_icons
   where country = 'UN';
 end;

 -- The mime header is sent first before sending the image content
 case upper(regexp_substr(v_fname,'[^\.]+',1,2))
  when 'JPG' then owa_util.mime_header('image/jpeg');
  when 'JPEG' then owa_util.mime_header('image/jpeg');
  when 'PNG' then owa_util.mime_header('image/png');
  when 'GIF' then owa_util.mime_header('image/gif');
  when 'BMP' then owa_util.mime_header('image/bmp');
  when 'TIF' then owa_util.mime_header('image/tiff');
 end case; -- CASE

 -- Read the LOB content in a loop and send it across to the browser
 -- set the size so the browser knows how much to download
 htp.p('Content-length: ' || v_length);
 -- The filename will be used by the browser if the users does a save as
 htp.p('Content-Disposition: filename="'|| regexp_substr(v_fname,'[^/]+',1,3) ||'"');
 -- Close the headers
 owa_util.http_header_close;
 -- Download the BLOB
 wpg_docload.download_file(v_lob_loc);

end show_flag_by_code;
-- ------------------------------------------------------------------------
end ip2city_api;
/

show errors
