-------------------------------------------------------------------------------
-- PROJECT_NAME: IP2CITY                                                     --
-- RELEASE_VERSION: 1.0.0.0                                                  --
-- RELEASE_STATUS: Release                                                   --
--                                                                           --
-- REQUIRED_ORACLE_VERSION: 10.2.0.x                                         --
-- MINIMUM_ORACLE_VERSION: 10.1.x.x                                          --
-- MAXIMUM_ORACLE_VERSION: 11.x.x.x                                          --
-- PLATFORM_IDENTIFICATION: Generic                                          --
--                                                                           --
-- IDENTIFICATION: ip2city_api.sql                                           --
-- DESCRIPTION: IP2CITY API main routines.                                   --
--              For using in applications and interface.                     --
-- ------------------------------------------------------------------------- --
-- Package table of contents, syntax and components descriptions:            --
-- ------------------------------------------------------------------------- --
--                                                                           --
--                                                                           --
-- INTERNAL_FILE_VERSION: 0.0.0.2                                            --
--                                                                           --
-- COPYRIGHT: Yuri Voinov (C) 2009                                           --
--                                                                           --
-- MODIFICATIONS:                                                            --
-- 01.03.2009 -Bug with round IPv4 ULONG to dotted conversion in function    --
--             long2ip4 fixed.                                               --
-- 30.01.2009 -Initial code written.                                         --
-------------------------------------------------------------------------------

create or replace package ip2city_api is
 -- Address checking API
 function checkip4long(p_ipaddr number) return boolean;
 function checkip4dotted(p_ipaddr varchar2) return boolean;
 -- IPv4 format conversion functions
 function ip2long4(p_ipaddr varchar2) return number;
 function long2ip4(p_ipaddr number) return varchar2;
 -- Basic country data functions
 function getcc(p_ipaddr number) return varchar2;
 function getcc(p_ipaddr varchar2) return varchar2;
 function getcountryname(p_ipaddr number) return varchar2;
 function getcountryname(p_ipaddr varchar2) return varchar2;
 -- Detailed separate city data functions
 function getcityname(p_ipaddr number) return varchar2;
 function getcityname(p_ipaddr varchar2) return varchar2;
 function getregionname(p_ipaddr number) return varchar2;
 function getregionname(p_ipaddr varchar2) return varchar2;
 function getpostalcode(p_ipaddr number) return varchar2;
 function getpostalcode(p_ipaddr varchar2) return varchar2;
 function getmetrocode(p_ipaddr number) return number;
 function getmetrocode(p_ipaddr varchar2) return number;
 function getareacode(p_ipaddr number) return number;
 function getareacode(p_ipaddr varchar2) return number;
 function getlatitude(p_ipaddr varchar2) return number;
 function getlongitude(p_ipaddr varchar2) return number;
 -- Complete avaliable data extraction
 function getalldata(p_ipaddr number) return varchar2;
 function getalldata(p_ipaddr varchar2) return varchar2;
 -- Show flag by country code
 procedure show_flag_by_code(p_code in varchar2);
end ip2city_api;
/

show errors

grant execute on ip2city_api to public;
