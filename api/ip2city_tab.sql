
-- First of all drop tables

drop table ip2city_country_icons;
drop table ip2city_blocks;
drop table ip2city_location;

-- Master table with flags and country names

create table ip2city_country_icons
(id number constraint ip2city_cnt_ico_id_nn not null,
 country varchar2(10) constraint ip2city_country_icons_nn not null,
 name varchar2(100),
 fname varchar2(100),
 image blob) 
pctfree 0;

comment on table ip2city_country_icons is 'IP2CITY country codes with flags icons';

create index ip2city_cnt_icons_cnt_idx
on ip2city_country_icons(country);

create index ip2city_cnt_icons_name_idx
on ip2city_country_icons(name);

create index ip2city_cnt_icons_fname_idx
on ip2city_country_icons(fname);

-- Master-table with countfy codes

create table ip2city_location
(locid number constraint ip2city_locid_pk primary key,
 country varchar2(10) constraint ip2city_country_nn not null,
 region varchar2(60),
 city varchar2(60),
 postalCode varchar2(60),
 latitude number,
 longitude number,
 metroCode number,
 areaCode number
)
pctfree 10;

comment on table ip2city_location is 'IP2CITY Locations with country codes';

create index ip2city_country_idx
on ip2city_location(country) pctfree 0;

-- Main data table with IP blocks
create table ip2city_blocks
(startIPNum number,
 endIPNum number,
 locid number,
 constraint ip2city_blocks_locid_fk foreign key(locid)
            references ip2city_location(locid)
)
pctfree 10;

comment on table ip2city_blocks is 'IP2CITY IP ranges with locid foreign key';

create index ip2city_blocks_ip_range_idx
on ip2city_blocks(startIPNum,endIPNum);

create index ip2city_blocks_locid_fk_idx
on ip2city_blocks(locid);

-- Truncate tables
alter table ip2city_blocks disable constraint ip2city_blocks_locid_fk;
alter table ip2city_location disable constraint ip2city_locid_pk;
truncate table ip2city_blocks;
truncate table ip2city_location;
alter table ip2city_location enable constraint ip2city_locid_pk;
alter table ip2city_blocks enable constraint ip2city_blocks_locid_fk;
