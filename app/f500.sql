set define off
set verify off
set serveroutput on size 1000000
set feedback off
WHENEVER SQLERROR EXIT SQL.SQLCODE ROLLBACK
begin wwv_flow.g_import_in_progress := true; end; 
/
 
 
--application/set_environment
prompt  APPLICATION 500 - IP2CITY
--
-- Application Export:
--   Application:     500
--   Name:            IP2CITY
--   Date and Time:   00:07 Вторник Март 24, 2009
--   Exported By:     DEVELOPER
--   Flashback:       0
--   Export Type:     Application Export
--   Version: 3.2.0.00.27
 
-- Import:
--   Using application builder
--   or
--   Using SQL*Plus as the Oracle user APEX_030200 or as the owner (parsing schema) of the application.
 
-- Application Statistics:
--   Pages:                 3
--     Items:              10
--     Computations:        0
--     Validations:         0
--     Processes:           6
--     Regions:             9
--     Buttons:             0
--   Shared Components
--     Breadcrumbs:         1
--        Entries           2
--     Items:               1
--     Computations:        0
--     Processes:           0
--     Parent Tabs:         0
--     Tab Sets:            1
--        Tabs:             2
--     NavBars:             3
--     Lists:               0
--     Shortcuts:           0
--     Themes:              2
--     Templates:
--        Page:            24
--        List:            33
--        Report:          14
--        Label:           10
--        Region:          44
--     Messages:            0
--     Build Options:       0
 
 
--       AAAA       PPPPP   EEEEEE  XX      XX
--      AA  AA      PP  PP  EE       XX    XX
--     AA    AA     PP  PP  EE        XX  XX
--    AAAAAAAAAA    PPPPP   EEEE       XXXX
--   AA        AA   PP      EE        XX  XX
--  AA          AA  PP      EE       XX    XX
--  AA          AA  PP      EEEEEE  XX      XX
prompt  Set Credentials...
 
begin
 
  -- Assumes you are running the script connected to SQL*Plus as the Oracle user APEX_030200 or as the owner (parsing schema) of the application.
  wwv_flow_api.set_security_group_id(p_security_group_id=>1521616346520155);
 
end;
/

begin wwv_flow.g_import_in_progress := true; end;
/
begin 

select value into wwv_flow_api.g_nls_numeric_chars from nls_session_parameters where parameter='NLS_NUMERIC_CHARACTERS';

end;

/
begin execute immediate 'alter session set nls_numeric_characters=''.,''';

end;

/
begin wwv_flow.g_browser_language := 'ru'; end;
/
prompt  Check Compatibility...
 
begin
 
-- This date identifies the minimum version required to import this file.
wwv_flow_api.set_version(p_version_yyyy_mm_dd=>'2009.01.12');
 
end;
/

prompt  Set Application ID...
 
begin
 
   -- SET APPLICATION ID
   wwv_flow.g_flow_id := 500;
   wwv_flow_api.g_id_offset := 0;
null;
 
end;
/

--application/delete_application
 
begin
 
   -- Remove Application
wwv_flow_api.remove_flow(500);
 
end;
/

 
begin
 
wwv_flow_audit.remove_audit_trail(500);
null;
 
end;
/

--application/create_application
 
begin
 
wwv_flow_api.create_flow(
  p_id    => 500,
  p_display_id=> 500,
  p_owner => 'IP2CITY_OWN',
  p_name  => 'IP2CITY',
  p_alias => 'IP2CITY',
  p_page_view_logging => 'YES',
  p_default_page_template=> 1670927070970172 + wwv_flow_api.g_id_offset,
  p_printer_friendly_template=> 1671817437970173 + wwv_flow_api.g_id_offset,
  p_default_region_template=> 1678030065970179 + wwv_flow_api.g_id_offset,
  p_error_template    => 1670927070970172 + wwv_flow_api.g_id_offset,
  p_page_protection_enabled_y_n=> 'Y',
  p_checksum_salt_last_reset => '20090324000625',
  p_max_session_length_sec=> 14400,
  p_max_session_idle_sec=> 3600,
  p_home_link         => 'f?p=&APP_ID.:HOME:&SESSION.',
  p_flow_language     => 'ru',
  p_flow_language_derived_from=> 'BROWSER',
  p_date_format        => 'DD-MON-YYYY',
  p_flow_image_prefix => '/i/',
  p_documentation_banner=> '',
  p_authentication    => 'CUSTOM2',
  p_login_url         => 'f?p=&APP_ID.:LOGIN',
  p_logout_url        => 'wwv_flow_custom_auth_std.logout?p_this_flow=&APP_ID.&p_next_flow_page_sess=&APP_ID.:101',
  p_application_tab_set=> 1,
  p_logo_image => 'TEXT:<a href="f?p=&APP_ID.:HOME:&SESSION."><img src="#IMAGE_PREFIX#ip2city_logo.gif" bprder="0" alt="&APPLICATION_NAME." title="&APPLICATION_NAME."></a>',
  p_public_url_prefix => '',
  p_public_user       => 'APEX_PUBLIC_USER',
  p_dbauth_url_prefix => '',
  p_proxy_server      => '',
  p_cust_authentication_process=> '.'||to_char(1530524384551775 + wwv_flow_api.g_id_offset)||'.',
  p_cust_authentication_page=> '',
  p_custom_auth_login_url=> '',
  p_flow_version      => 'release 1.0',
  p_flow_status       => 'AVAILABLE_W_EDIT_LINK',
  p_flow_unavailable_text=> 'This application is currently unavailable at this time.',
  p_build_status      => 'RUN_AND_BUILD',
  p_exact_substitutions_only=> 'Y',
  p_vpd               => '',
  p_csv_encoding    => 'Y',
  p_theme_id => 18,
  p_default_label_template => 1688607321970189 + wwv_flow_api.g_id_offset,
  p_default_report_template => 1686427134970187 + wwv_flow_api.g_id_offset,
  p_default_list_template => 1684324402970185 + wwv_flow_api.g_id_offset,
  p_default_menu_template => 1688923655970189 + wwv_flow_api.g_id_offset,
  p_default_button_template => 1672711069970174 + wwv_flow_api.g_id_offset,
  p_default_chart_template => 1675009384970176 + wwv_flow_api.g_id_offset,
  p_default_form_template => 1675317107970177 + wwv_flow_api.g_id_offset,
  p_default_wizard_template => 1679516236970180 + wwv_flow_api.g_id_offset,
  p_default_tabform_template => 1678030065970179 + wwv_flow_api.g_id_offset,
  p_default_reportr_template   =>1678030065970179 + wwv_flow_api.g_id_offset,
  p_default_menur_template => 1674110407970176 + wwv_flow_api.g_id_offset,
  p_default_listr_template => 1678030065970179 + wwv_flow_api.g_id_offset,
  p_substitution_string_01 => 'APPLICATION_NAME',
  p_substitution_value_01  => 'IP2CITY',
  p_last_updated_by => 'DEVELOPER',
  p_last_upd_yyyymmddhh24miss=> '20090324000625',
  p_required_roles=> wwv_flow_utilities.string_to_table2(''));
 
 
end;
/

prompt  ...authorization schemes
--
 
begin
 
null;
 
end;
/

--application/shared_components/navigation/navigation_bar
prompt  ...navigation bar entries
--
 
begin
 
wwv_flow_api.create_icon_bar_item(
  p_id             => 1161801328978045 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_icon_sequence  => 50,
  p_icon_image     => '',
  p_icon_subtext   => 'Главная',
  p_icon_target    => 'f?p=&APP_ID.:HOME:&SESSION.::&DEBUG.::::',
  p_icon_image_alt => 'Главная',
  p_icon_height    => 32,
  p_icon_width     => 32,
  p_icon_height2   => 24,
  p_icon_width2    => 24,
  p_icon_bar_disp_cond      => ':APP_PAGE_ID <> 1 or :APP_PAGE_ALIAS <> ''HOME''',
  p_icon_bar_disp_cond_type => 'PLSQL_EXPRESSION',
  p_begins_on_new_line=> 'NO',
  p_cell_colspan      => 1,
  p_onclick=> '',
  p_icon_bar_comment=> '');
 
wwv_flow_api.create_icon_bar_item(
  p_id             => 1160002686751341 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_icon_sequence  => 100,
  p_icon_image     => '',
  p_icon_subtext   => 'Login',
  p_icon_target    => '&LOGIN_URL.',
  p_icon_image_alt => 'Login',
  p_icon_height    => 32,
  p_icon_width     => 32,
  p_icon_height2   => 24,
  p_icon_width2    => 24,
  p_icon_bar_disp_cond      => '',
  p_icon_bar_disp_cond_type => 'USER_IS_PUBLIC_USER',
  p_begins_on_new_line=> 'NO',
  p_cell_colspan      => 1,
  p_onclick=> '',
  p_icon_bar_comment=> '');
 
wwv_flow_api.create_icon_bar_item(
  p_id             => 1530803423551775 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_icon_sequence  => 200,
  p_icon_image     => '',
  p_icon_subtext   => 'Logout',
  p_icon_target    => '&LOGOUT_URL.',
  p_icon_image_alt => 'Logout',
  p_icon_height    => 32,
  p_icon_width     => 32,
  p_icon_height2   => 24,
  p_icon_width2    => 24,
  p_icon_bar_disp_cond      => '',
  p_icon_bar_disp_cond_type => 'USER_IS_NOT_PUBLIC_USER',
  p_begins_on_new_line=> 'NO',
  p_cell_colspan      => 1,
  p_onclick=> '',
  p_icon_bar_comment=> '');
 
 
end;
/

prompt  ...application processes
--
prompt  ...application items
--
--application/shared_components/logic/application_items/fsp_after_login_url
 
begin
 
wwv_flow_api.create_flow_item(
  p_id=> 1553227965568897 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'FSP_AFTER_LOGIN_URL',
  p_data_type=> 'VARCHAR',
  p_is_persistent=> 'Y',
  p_protection_level=> '',
  p_required_patch=> null + wwv_flow_api.g_id_offset,
  p_item_comment=> '');
 
null;
 
end;
/

prompt  ...application level computations
--
 
begin
 
null;
 
end;
/

prompt  ...Application Tabs
--
 
begin
 
--application/shared_components/navigation/tabs/standard/t_page_1
wwv_flow_api.create_tab (
  p_id=> 1532215799551793 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_tab_set=> 'TS1',
  p_tab_sequence=> 10,
  p_tab_name=> 'T_PAGE_1',
  p_tab_text => 'IP2CITY',
  p_tab_step => 1,
  p_tab_also_current_for_pages => '',
  p_tab_parent_tabset=>'',
  p_required_patch=>null + wwv_flow_api.g_id_offset,
  p_tab_comment  => '');
 
--application/shared_components/navigation/tabs/standard/t_tools
wwv_flow_api.create_tab (
  p_id=> 1700128750568044 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_tab_set=> 'TS1',
  p_tab_sequence=> 20,
  p_tab_name=> 'T_TOOLS',
  p_tab_text => 'Инструменты',
  p_tab_step => 2,
  p_tab_also_current_for_pages => '',
  p_tab_parent_tabset=>'',
  p_required_patch=>null + wwv_flow_api.g_id_offset,
  p_tab_comment  => '');
 
 
end;
/

prompt  ...Application Parent Tabs
--
 
begin
 
null;
 
end;
/

prompt  ...Shared Lists of values
--
prompt  ...Application Trees
--
--application/pages/page_groups
prompt  ...page groups
--
 
begin
 
null;
 
end;
/

--application/comments
prompt  ...comments: requires application express 2.2 or higher
--
 
--application/pages/page_00001
prompt  ...PAGE 1: Home
--
 
begin
 
declare
    h varchar2(32767) := null;
    ph varchar2(32767) := null;
begin
h:=h||'No help is available for this page.';

ph := null;
wwv_flow_api.create_page(
  p_id     => 1,
  p_flow_id=> wwv_flow.g_flow_id,
  p_tab_set=> 'TS1',
  p_name   => 'Home',
  p_alias  => 'HOME',
  p_step_title=> '&APPLICATION_NAME. - Главная',
  p_step_sub_title => 'Page 1',
  p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS',
  p_first_item=> 'NO_FIRST_ITEM',
  p_include_apex_css_js_yn=>'Y',
  p_autocomplete_on_off => 'ON',
  p_help_text => ' ',
  p_html_page_header => '',
  p_step_template => '',
  p_required_patch=> null + wwv_flow_api.g_id_offset,
  p_last_updated_by => 'DEVELOPER',
  p_last_upd_yyyymmddhh24miss => '20090323213424',
  p_page_is_public_y_n=> 'Y',
  p_protection_level=> 'N',
  p_page_comment  => '');
 
wwv_flow_api.set_page_help_text(p_flow_id=>wwv_flow.g_flow_id,p_flow_step_id=>1,p_text=>h);
end;
 
end;
/

declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'declare'||chr(10)||
' v_client_ip varchar2(255) := owa_util.get_cgi_env(''REMOTE_ADDR'');'||chr(10)||
' v_client_data varchar2(255);'||chr(10)||
' v_code varchar2(10);'||chr(10)||
' v_country varchar2(255);'||chr(10)||
' v_region varchar2(255);'||chr(10)||
' v_city varchar2(255);'||chr(10)||
'begin'||chr(10)||
' -- Get all geo data from database by client IP'||chr(10)||
' v_client_data := ip2city_api.getalldata(v_client_ip);'||chr(10)||
' -- Split geo data to main parts'||chr(10)||
' v_code := regexp_substr(v_client_data,''[^|]+'',1,1);'||chr(10)||
' v_c';

s:=s||'ountry := regexp_substr(v_client_data,''[^|]+'',1,2);'||chr(10)||
' v_region := regexp_substr(v_client_data,''[^|]+'',1,3);'||chr(10)||
' v_city := regexp_substr(v_client_data,''[^|]+'',1,4);'||chr(10)||
' htp.p(''Ваш IP: ''||''<b>''||v_client_ip||''</b>'');'||chr(10)||
' htp.br;'||chr(10)||
' if v_code <> ''-'' then'||chr(10)||
'  htp.br;'||chr(10)||
'  htp.p(''<img alt="''||v_code||''" title="''||v_code||''" src="#OWNER#.ip2city_api.show_flag_by_code?p_code=''||v_code||''"/>''||''&nbsp;&nbsp;''||v_country);'||chr(10)||
'';

s:=s||' end if;'||chr(10)||
' if v_region <> ''-'' then'||chr(10)||
'  htp.br;'||chr(10)||
'  htp.p(''Регион : ''||v_region);'||chr(10)||
' end if;'||chr(10)||
' if v_city <> ''-'' then'||chr(10)||
'  htp.br;'||chr(10)||
'  htp.p(''Город: ''||v_city);'||chr(10)||
' end if;'||chr(10)||
'end;';

wwv_flow_api.create_page_plug (
  p_id=> 1532308523551794 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 1,
  p_plug_name=> 'Данные клиента',
  p_region_name=>'',
  p_plug_template=> 1678030065970179+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 10,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'AFTER_SHOW_ITEMS',
  p_plug_source=> s,
  p_plug_source_type=> 'PLSQL_PROCEDURE',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'COLON_DELMITED_LIST',
  p_plug_query_row_count_max => 500,
  p_plug_display_condition_type => '',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 1532521437551796 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 1,
  p_plug_name=> 'Breadcrumbs',
  p_region_name=>'',
  p_plug_template=> 1674110407970176+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 1,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'REGION_POSITION_01',
  p_plug_source=> s,
  p_plug_source_type=> 'M'|| to_char(1531914683551785 + wwv_flow_api.g_id_offset),
  p_menu_template_id=> 1688923655970189+ wwv_flow_api.g_id_offset,
  p_plug_display_error_message=> 'Unable to show breadcrumb.',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'COLON_DELMITED_LIST',
  p_plug_query_row_count_max => 500,
  p_plug_display_condition_type => '',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 1690920775948389 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 1,
  p_plug_name=> 'Запрос адреса',
  p_region_name=>'',
  p_plug_template=> 0,
  p_plug_display_sequence=> 5,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'AFTER_SHOW_ITEMS',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_plug_display_error_message=> '#SQLERRM#',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows => 15,
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => '',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'declare'||chr(10)||
' v_qiery_ip varchar2(255) := htf.escape_sc(:P1_IP_QUERY);'||chr(10)||
' v_db_data varchar2(2000);'||chr(10)||
' v_code varchar2(10);'||chr(10)||
' v_country varchar2(255);'||chr(10)||
' v_region varchar2(255);'||chr(10)||
' v_city varchar2(255);'||chr(10)||
' v_postal_code varchar2(255);'||chr(10)||
' v_lat varchar2(255);'||chr(10)||
' v_long varchar2(255);'||chr(10)||
' v_metro_code varchar2(255);'||chr(10)||
' v_area_code varchar2(255);'||chr(10)||
'begin'||chr(10)||
' if ip2city_api.checkip4dotted(v_qiery_ip) then'||chr(10)||
'  -- Get all geo data fro';

s:=s||'m database by client IP'||chr(10)||
'  v_db_data := ip2city_api.getalldata(v_qiery_ip);'||chr(10)||
'  -- Split geo data to main parts'||chr(10)||
'  v_code := regexp_substr(v_db_data,''[^|]+'',1,1);'||chr(10)||
'  v_country := regexp_substr(v_db_data,''[^|]+'',1,2);'||chr(10)||
'  v_region := regexp_substr(v_db_data,''[^|]+'',1,3);'||chr(10)||
'  v_city := regexp_substr(v_db_data,''[^|]+'',1,4);'||chr(10)||
'  v_postal_code := regexp_substr(v_db_data,''[^|]+'',1,5);'||chr(10)||
'  v_lat := regexp_substr(v_db';

s:=s||'_data,''[^|]+'',1,6);'||chr(10)||
'  v_long := regexp_substr(v_db_data,''[^|]+'',1,7);'||chr(10)||
'  v_metro_code := regexp_substr(v_db_data,''[^|]+'',1,8);'||chr(10)||
'  v_area_code := regexp_substr(v_db_data,''[^|]+'',1,9);'||chr(10)||
'  htp.p(''IP-адрес: ''||''<b>''||v_qiery_ip||''</b>'');'||chr(10)||
'  htp.br;'||chr(10)||
'  if v_code <> ''-'' then'||chr(10)||
'   htp.br;'||chr(10)||
'   htp.p(''<img alt="''||v_code||''" title="''||v_code||''" src="#OWNER#.ip2city_api.show_flag_by_code?p_code=''||v_code||''"/>''||''';

s:=s||'&nbsp;&nbsp;''||v_country);'||chr(10)||
'  end if;'||chr(10)||
'  if v_region <> ''-'' then'||chr(10)||
'   htp.br;'||chr(10)||
'   htp.p(''Регион : ''||v_region);'||chr(10)||
'  end if;'||chr(10)||
'  if v_city <> ''-'' then'||chr(10)||
'   htp.br;'||chr(10)||
'   htp.p(''Город: ''||v_city);'||chr(10)||
'  end if;'||chr(10)||
'  htp.br;'||chr(10)||
'  if v_postal_code <> ''-'' then'||chr(10)||
'   htp.br;'||chr(10)||
'   htp.p(''Почтовый код: ''||v_postal_code);'||chr(10)||
'  end if;'||chr(10)||
'  if v_lat <> ''-'' then'||chr(10)||
'   htp.br;'||chr(10)||
'   htp.p(''Широта: ''||v_lat);'||chr(10)||
'  end if;'||chr(10)||
'  if v_long <> ''-'' then'||chr(10)||
'   htp.';

s:=s||'br;'||chr(10)||
'   htp.p(''Долгота: ''||v_long);'||chr(10)||
'  end if;'||chr(10)||
'  if v_metro_code <> ''-'' then'||chr(10)||
'   htp.br;'||chr(10)||
'   htp.p(''Код города: ''||v_metro_code);'||chr(10)||
'  end if;'||chr(10)||
'  if v_area_code <> ''-'' then'||chr(10)||
'   htp.br;'||chr(10)||
'   htp.p(''Код региона: ''||v_area_code);'||chr(10)||
'  end if;'||chr(10)||
' else'||chr(10)||
'  htp.p(''<b><font color="red">Введенный адрес не является адресом IPv4.</font></b>'');'||chr(10)||
' end if;'||chr(10)||
'end;';

wwv_flow_api.create_page_plug (
  p_id=> 1691731473998817 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 1,
  p_plug_name=> 'Результат поиска',
  p_region_name=>'',
  p_plug_template=> 1678316976970179+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 20,
  p_plug_display_column=> 2,
  p_plug_display_point=> 'AFTER_SHOW_ITEMS',
  p_plug_source=> s,
  p_plug_source_type=> 'PLSQL_PROCEDURE',
  p_translate_title=> 'Y',
  p_plug_display_error_message=> '#SQLERRM#',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows => 15,
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => 'ITEM_IS_NOT_NULL',
  p_plug_display_when_condition => 'P1_IP_QUERY',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
 
begin
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_branch(
  p_id=>1691621477959378 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 1,
  p_branch_action=> 'f?p=&FLOW_ID.:1:&SESSION.',
  p_branch_point=> 'AFTER_PROCESSING',
  p_branch_type=> 'REDIRECT_URL',
  p_branch_sequence=> 99,
  p_save_state_before_branch_yn=>'N',
  p_branch_comment=> '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
h := null;
h:=h||'Поле поиска должно содержать валидный IPv4-адрес в точечной нотации:<br /><br /><b>AAA.BBB.CCC.DDD</b><br /><br /><i>Например: </i><b>10.10.10.1</b>';

wwv_flow_api.create_page_item(
  p_id=>1691203937952981 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 1,
  p_name=>'P1_IP_QUERY',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 10,
  p_item_plug_id => 1690920775948389+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'IP-адрес',
  p_source_type=> 'STATIC',
  p_display_as=> 'TEXT_WITH_ENTER_SUBMIT',
  p_lov_columns=> 1,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 2000,
  p_cHeight=> 5,
  p_cAttributes=> 'nowrap="nowrap"',
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 1688805602970189+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_help_text   => h,
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>1691426100959376 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 1,
  p_name=>'P1_GO',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 20,
  p_item_plug_id => 1690920775948389+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default => 'Go',
  p_prompt=>'Найти',
  p_source=>'Go',
  p_source_type=> 'STATIC',
  p_display_as=> 'BUTTON',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> null,
  p_cMaxlength=> 2000,
  p_cHeight=> null,
  p_tag_attributes  => 'template:'||to_char(1672711069970174 + wwv_flow_api.g_id_offset),
  p_begin_on_new_line => 'NO',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_button_image_attr=> 'alt="Найти IP-адрес" title="Найти IP-адрес"',
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_is_persistent=> 'N',
  p_item_comment => '');
 
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 1
--
 
begin
 
null;
end;
null;
 
end;
/

 
--application/pages/page_00002
prompt  ...PAGE 2: Tools
--
 
begin
 
declare
    h varchar2(32767) := null;
    ph varchar2(32767) := null;
begin
h:=h||'No help is available for this page.';

ph := null;
wwv_flow_api.create_page(
  p_id     => 2,
  p_flow_id=> wwv_flow.g_flow_id,
  p_tab_set=> 'TS1',
  p_name   => 'Tools',
  p_step_title=> '&APPLICATION_NAME. - Инструменты',
  p_step_sub_title => 'Tools',
  p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS',
  p_first_item=> 'NO_FIRST_ITEM',
  p_include_apex_css_js_yn=>'Y',
  p_autocomplete_on_off => '',
  p_help_text => ' ',
  p_html_page_header => '',
  p_step_template => '',
  p_required_patch=> null + wwv_flow_api.g_id_offset,
  p_last_updated_by => 'DEVELOPER',
  p_last_upd_yyyymmddhh24miss => '20090324000625',
  p_page_is_public_y_n=> 'Y',
  p_protection_level=> 'N',
  p_page_comment  => '');
 
wwv_flow_api.set_page_help_text(p_flow_id=>wwv_flow.g_flow_id,p_flow_step_id=>2,p_text=>h);
end;
 
end;
/

declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'select /*+ first_rows */ "IP2CITY_LOCATION"."CITY" as "CITY",'||chr(10)||
'      ip2city_api.long2ip4("IP2CITY_BLOCKS"."STARTIPNUM") ||''-''||'||chr(10)||
'      ip2city_api.long2ip4("IP2CITY_BLOCKS"."ENDIPNUM") as "IP Range" '||chr(10)||
' from "IP2CITY_LOCATION" "IP2CITY_LOCATION",'||chr(10)||
'      "IP2CITY_BLOCKS" "IP2CITY_BLOCKS" '||chr(10)||
' where "IP2CITY_LOCATION"."LOCID"="IP2CITY_BLOCKS"."LOCID"'||chr(10)||
'   and "IP2CITY_LOCATION"."COUNTRY" = :P2_COUNTRY';

wwv_flow_api.create_report_region (
  p_id=> 1162303050107607 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 2,
  p_name=> 'Диапазоны адресов',
  p_region_name=>'',
  p_template=> 1678030065970179+ wwv_flow_api.g_id_offset,
  p_display_sequence=> 20,
  p_display_column=> 1,
  p_display_point=> 'AFTER_SHOW_ITEMS',
  p_source=> s,
  p_source_type=> 'SQL_QUERY',
  p_display_error_message=> '#SQLERRM#',
  p_display_when_condition=> ':P2_COUNTRY is not null and :P2_CITY is null',
  p_display_condition_type=> 'PLSQL_EXPRESSION',
  p_plug_caching=> 'NOT_CACHED',
  p_customized=> '0',
  p_translate_title=> 'Y',
  p_ajax_enabled=> 'Y',
  p_query_row_template=> 1686904779970188+ wwv_flow_api.g_id_offset,
  p_query_headings_type=> 'COLON_DELMITED_LIST',
  p_query_options=> 'DERIVED_REPORT_COLUMNS',
  p_query_break_cols=> '0',
  p_query_num_rows_type=> 'ROW_RANGES_IN_SELECT_LIST',
  p_pagination_display_position=> 'BOTTOM_RIGHT',
  p_csv_output=> 'Y',
  p_csv_output_link_text=> 'Выгрузить в Excel',
  p_sort_null=> 'F',
  p_query_asc_image=> 'arrow_down_gray_dark.gif',
  p_query_asc_image_attr=> 'width="13" height="12" alt=""',
  p_query_desc_image=> 'arrow_up_gray_dark.gif',
  p_query_desc_image_attr=> 'width="13" height="12" alt=""',
  p_plug_query_exp_filename=> 'country_city_ip_range',
  p_plug_query_exp_separator=> ';',
  p_plug_query_strip_html=> 'Y',
  p_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 1162918794107689 + wwv_flow_api.g_id_offset,
  p_region_id=> 1162303050107607 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 1,
  p_form_element_id=> null,
  p_column_alias=> 'CITY',
  p_column_display_sequence=> 1,
  p_column_heading=> 'Город',
  p_column_alignment=>'LEFT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 1163001077107689 + wwv_flow_api.g_id_offset,
  p_region_id=> 1162303050107607 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 2,
  p_form_element_id=> null,
  p_column_alias=> 'IP Range',
  p_column_display_sequence=> 2,
  p_column_heading=> 'Диапазон IP',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'LEFT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'WITHOUT_MODIFICATION',
  p_lov_show_nulls=> 'NO',
  p_column_width=> '50',
  p_pk_col_source=> s,
  p_lov_display_extra=> 'YES',
  p_include_in_export=> 'Y',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'select /*+ first_rows */ "IP2CITY_LOCATION"."CITY" as "CITY",'||chr(10)||
'      ip2city_api.long2ip4("IP2CITY_BLOCKS"."STARTIPNUM") ||''-''||'||chr(10)||
'      ip2city_api.long2ip4("IP2CITY_BLOCKS"."ENDIPNUM") as "IP Range" '||chr(10)||
' from "IP2CITY_LOCATION" "IP2CITY_LOCATION",'||chr(10)||
'      "IP2CITY_BLOCKS" "IP2CITY_BLOCKS" '||chr(10)||
' where "IP2CITY_LOCATION"."LOCID"="IP2CITY_BLOCKS"."LOCID"'||chr(10)||
'   and "IP2CITY_LOCATION"."COUNTRY" = :P2_COUNTRY'||chr(10)||
'   and';

s:=s||' "IP2CITY_LOCATION"."CITY" = :P2_CITY';

wwv_flow_api.create_report_region (
  p_id=> 1189531559674112 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 2,
  p_name=> 'Диапазоны адресов',
  p_region_name=>'',
  p_template=> 1678030065970179+ wwv_flow_api.g_id_offset,
  p_display_sequence=> 30,
  p_display_column=> 1,
  p_display_point=> 'AFTER_SHOW_ITEMS',
  p_source=> s,
  p_source_type=> 'SQL_QUERY',
  p_display_error_message=> '#SQLERRM#',
  p_display_when_condition=> ':P2_COUNTRY is not null and :P2_CITY is not null',
  p_display_condition_type=> 'PLSQL_EXPRESSION',
  p_plug_caching=> 'NOT_CACHED',
  p_customized=> '0',
  p_translate_title=> 'Y',
  p_ajax_enabled=> 'Y',
  p_query_row_template=> 1686904779970188+ wwv_flow_api.g_id_offset,
  p_query_headings_type=> 'COLON_DELMITED_LIST',
  p_query_options=> 'DERIVED_REPORT_COLUMNS',
  p_query_break_cols=> '0',
  p_query_num_rows_type=> 'ROW_RANGES_IN_SELECT_LIST',
  p_pagination_display_position=> 'BOTTOM_RIGHT',
  p_csv_output=> 'Y',
  p_csv_output_link_text=> 'Выгрузить в Excel',
  p_sort_null=> 'F',
  p_query_asc_image=> 'arrow_down_gray_dark.gif',
  p_query_asc_image_attr=> 'width="13" height="12" alt=""',
  p_query_desc_image=> 'arrow_up_gray_dark.gif',
  p_query_desc_image_attr=> 'width="13" height="12" alt=""',
  p_plug_query_exp_filename=> 'country_city_ip_range',
  p_plug_query_exp_separator=> ';',
  p_plug_query_strip_html=> 'Y',
  p_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 1189731256674117 + wwv_flow_api.g_id_offset,
  p_region_id=> 1189531559674112 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 1,
  p_form_element_id=> null,
  p_column_alias=> 'CITY',
  p_column_display_sequence=> 1,
  p_column_heading=> 'Город',
  p_column_alignment=>'LEFT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 1189824213674117 + wwv_flow_api.g_id_offset,
  p_region_id=> 1189531559674112 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 2,
  p_form_element_id=> null,
  p_column_alias=> 'IP Range',
  p_column_display_sequence=> 2,
  p_column_heading=> 'Диапазон IP',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'LEFT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'WITHOUT_MODIFICATION',
  p_lov_show_nulls=> 'NO',
  p_column_width=> '50',
  p_pk_col_source=> s,
  p_include_in_export=> 'Y',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 1190015067678806 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 2,
  p_plug_name=> 'Items region',
  p_region_name=>'',
  p_plug_template=> 0,
  p_plug_display_sequence=> 10,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'AFTER_SHOW_ITEMS',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_display_error_message=> '#SQLERRM#',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'COLON_DELMITED_LIST',
  p_plug_query_row_count_max => 500,
  p_plug_display_condition_type => '',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 1701121864568049 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 2,
  p_plug_name=> 'Tools',
  p_region_name=>'',
  p_plug_template=> 1674110407970176+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 1,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'REGION_POSITION_01',
  p_plug_source=> s,
  p_plug_source_type=> 'M'|| to_char(1531914683551785 + wwv_flow_api.g_id_offset),
  p_menu_template_id=> 1688923655970189+ wwv_flow_api.g_id_offset,
  p_plug_display_error_message=> '#SQLERRM#',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'COLON_DELMITED_LIST',
  p_plug_query_row_count_max => 500,
  p_plug_display_condition_type => '',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
 
begin
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_branch(
  p_id=>1702419245568058 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 2,
  p_branch_action=> 'f?p=&FLOW_ID.:2:&SESSION.',
  p_branch_point=> 'AFTER_PROCESSING',
  p_branch_type=> 'REDIRECT_URL',
  p_branch_sequence=> 99,
  p_save_state_before_branch_yn=>'N',
  p_branch_comment=> '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
h := null;
h:=h||'Выберите страну, для которой необходимо получить диапазоны IP-адресов.';

wwv_flow_api.create_page_item(
  p_id=>1163210631157088 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 2,
  p_name=>'P2_COUNTRY',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 10,
  p_item_plug_id => 1190015067678806+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Выберите страну',
  p_source_type=> 'STATIC',
  p_display_as=> 'POPUP_KEY_LOV',
  p_lov => 'select name d, country r'||chr(10)||
'  from ip2city_country_icons'||chr(10)||
' where name is not null'||chr(10)||
'   and name <> ''Unknown''',
  p_lov_columns=> 1,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 2000,
  p_cHeight=> 5,
  p_cAttributes=> 'nowrap="nowrap"',
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'LEFT',
  p_field_alignment  => 'LEFT',
  p_field_template => 1688607321970189+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_help_text   => h,
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>1164630202200552 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 2,
  p_name=>'P2_GO',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 30,
  p_item_plug_id => 1190015067678806+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default => 'Go',
  p_prompt=>'Найти',
  p_source=>'Go',
  p_source_type=> 'STATIC',
  p_display_as=> 'BUTTON',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> null,
  p_cMaxlength=> 2000,
  p_cHeight=> null,
  p_tag_attributes  => 'template:'||to_char(1672711069970174 + wwv_flow_api.g_id_offset),
  p_begin_on_new_line => 'NO',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_button_image_attr=> 'alt="Выбрать адреса заданного региона" title="Выбрать адреса заданного региона"',
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_is_persistent=> 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
h := null;
h:=h||'Выберите город выбранной страны, для которого необходимо получить диапазоны IP-адресов.';

wwv_flow_api.create_page_item(
  p_id=>1167532074286294 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 2,
  p_name=>'P2_CITY',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 40,
  p_item_plug_id => 1190015067678806+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Выберите город',
  p_source_type=> 'STATIC',
  p_display_as=> 'COMBOBOX_WITH_SUBMIT',
  p_lov => 'select city d, city r'||chr(10)||
'from IP2CITY_LOCATION'||chr(10)||
'where country = :P2_COUNTRY',
  p_lov_columns=> 1,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 2000,
  p_cHeight=> 5,
  p_cAttributes=> 'nowrap="nowrap"',
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'LEFT',
  p_field_alignment  => 'LEFT',
  p_display_when=>'P2_COUNTRY',
  p_display_when_type=>'ITEM_IS_NOT_NULL',
  p_field_template => 1688607321970189+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_help_text   => h,
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>1181926776502404 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 2,
  p_name=>'P2_COUNTRY_CLEAR',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 20,
  p_item_plug_id => 1190015067678806+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default => 'CLEAR_COUNTRY',
  p_prompt=>'Сброс',
  p_source=>'CLEAR_COUNTRY',
  p_source_type=> 'STATIC',
  p_display_as=> 'BUTTON',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> null,
  p_cMaxlength=> 2000,
  p_cHeight=> null,
  p_tag_attributes  => 'template:'||to_char(1672711069970174 + wwv_flow_api.g_id_offset),
  p_begin_on_new_line => 'NO',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_button_image_attr=> 'alt="Сбросить выбор страны" title="Сбросить выбор страны"',
  p_label_alignment  => 'LEFT',
  p_field_alignment  => 'LEFT',
  p_display_when=>'P2_COUNTRY',
  p_display_when_type=>'ITEM_IS_NOT_NULL',
  p_is_persistent=> 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>1185211848545383 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 2,
  p_name=>'P2_CITY_CLEAR',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 50,
  p_item_plug_id => 1190015067678806+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default => 'CLEAR_CITY',
  p_prompt=>'Сброс',
  p_source=>'CLEAR_CITY',
  p_source_type=> 'STATIC',
  p_display_as=> 'BUTTON',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> null,
  p_cMaxlength=> 2000,
  p_cHeight=> null,
  p_tag_attributes  => 'template:'||to_char(1672711069970174 + wwv_flow_api.g_id_offset),
  p_begin_on_new_line => 'NO',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_button_image_attr=> 'alt="Сбросить выбор города" title="Сбросить выбор города"',
  p_label_alignment  => 'LEFT',
  p_field_alignment  => 'LEFT',
  p_display_when=>'P2_CITY',
  p_display_when_type=>'ITEM_IS_NOT_NULL',
  p_is_persistent=> 'N',
  p_item_comment => '');
 
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||':P2_COUNTRY:='''';';

wwv_flow_api.create_page_process(
  p_id     => 1182115826508690 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 2,
  p_process_sequence=> 10,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'PLSQL',
  p_process_name=> 'Clear country select',
  p_process_sql_clob => p, 
  p_process_error_message=> '',
  p_process_when_button_id=>1181926776502404 + wwv_flow_api.g_id_offset,
  p_process_when=>'P2_COUNTRY',
  p_process_when_type=>'ITEM_IS_NOT_NULL',
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||':P2_CITY:='''';';

wwv_flow_api.create_page_process(
  p_id     => 1185623968548888 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 2,
  p_process_sequence=> 20,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'PLSQL',
  p_process_name=> 'Clear city select',
  p_process_sql_clob => p, 
  p_process_error_message=> '',
  p_process_when_button_id=>1185211848545383 + wwv_flow_api.g_id_offset,
  p_process_when=>'P2_COUNTRY',
  p_process_when_type=>'ITEM_IS_NOT_NULL',
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 2
--
 
begin
 
null;
end;
null;
 
end;
/

 
--application/pages/page_00101
prompt  ...PAGE 101: Login Page
--
 
begin
 
declare
    h varchar2(32767) := null;
    ph varchar2(32767) := null;
begin
h := null;
ph := null;
wwv_flow_api.create_page(
  p_id     => 101,
  p_flow_id=> wwv_flow.g_flow_id,
  p_tab_set=> '',
  p_name   => 'Login Page',
  p_alias  => 'LOGIN',
  p_step_title=> '&APPLICATION_NAME. - Вход',
  p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS',
  p_first_item=> 'AUTO_FIRST_ITEM',
  p_include_apex_css_js_yn=>'Y',
  p_autocomplete_on_off => 'ON',
  p_help_text => '',
  p_html_page_header => '',
  p_step_template => '',
  p_required_patch=> null + wwv_flow_api.g_id_offset,
  p_last_updated_by => 'DEVELOPER',
  p_last_upd_yyyymmddhh24miss => '20090323210729',
  p_page_is_public_y_n=> 'Y',
  p_protection_level=> 'N',
  p_page_comment  => 'This page was generated by the Login Page wizard');
 
end;
 
end;
/

declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 1664420079607529 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 101,
  p_plug_name=> 'Login Items',
  p_region_name=>'',
  p_plug_template=> 0,
  p_plug_display_sequence=> 10,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'AFTER_SHOW_ITEMS',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'COLON_DELMITED_LIST',
  p_plug_query_row_count_max => 500,
  p_plug_display_condition_type => '',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
 
begin
 
null;
 
end;
/

 
begin
 
null;
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>1664623513607530 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 101,
  p_name=>'P101_USERNAME',
  p_data_type=> '',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 10,
  p_item_plug_id => 1664420079607529+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Пользователь',
  p_source_type=> 'STATIC',
  p_display_as=> 'TEXT',
  p_lov_columns=> 1,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 20,
  p_cMaxlength=> 100,
  p_cHeight=> 1,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 1688503754970189+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>1664806070607530 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 101,
  p_name=>'P101_PASSWORD',
  p_data_type=> '',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 20,
  p_item_plug_id => 1664420079607529+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Пароль',
  p_source_type=> 'STATIC',
  p_display_as=> 'PASSWORD_WITH_SUBMIT_DNSS',
  p_lov_columns=> 1,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 20,
  p_cMaxlength=> 100,
  p_cHeight=> 1,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 1688503754970189+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_encrypt_session_state_yn=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>1665023308607531 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 101,
  p_name=>'P101_LOGIN',
  p_data_type=> '',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 30,
  p_item_plug_id => 1664420079607529+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> '',
  p_item_default => 'LOGIN',
  p_prompt=>'Login',
  p_source=>'LOGIN',
  p_source_type=> 'STATIC',
  p_display_as=> 'BUTTON',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> null,
  p_cMaxlength=> null,
  p_cHeight=> null,
  p_tag_attributes  => 'template:'||to_char(1672711069970174 + wwv_flow_api.g_id_offset),
  p_begin_on_new_line => 'NO',
  p_begin_on_new_field=> 'NO',
  p_colspan => 1,
  p_rowspan => 1,
  p_button_image_attr=> 'alt="Войти в приложение" title="Войти в приложение"',
  p_label_alignment  => 'LEFT',
  p_field_alignment  => 'LEFT',
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'begin'||chr(10)||
'owa_util.mime_header(''text/html'', FALSE);'||chr(10)||
'owa_cookie.send('||chr(10)||
'    name=>''LOGIN_USERNAME_COOKIE'','||chr(10)||
'    value=>lower(:P101_USERNAME));'||chr(10)||
'exception when others then null;'||chr(10)||
'end;';

wwv_flow_api.create_page_process(
  p_id     => 1665421515607531 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 101,
  p_process_sequence=> 10,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'PLSQL',
  p_process_name=> 'Set Username Cookie',
  p_process_sql_clob => p, 
  p_process_error_message=> '',
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'if lower(owa_util.get_cgi_env(''REQUEST_PROTOCOL'')) = ''https'''||chr(10)||
'then'||chr(10)||
' wwv_flow_custom_auth_std.login('||chr(10)||
'     P_UNAME       => :P101_USERNAME,'||chr(10)||
'     P_PASSWORD    => :P101_PASSWORD,'||chr(10)||
'     P_SESSION_ID  => v(''APP_SESSION''),'||chr(10)||
'     P_FLOW_PAGE   => :APP_ID||'':HOME'','||chr(10)||
'     P_USE_SECURE_COOKIE => TRUE);'||chr(10)||
'else'||chr(10)||
' wwv_flow_custom_auth_std.login('||chr(10)||
'     P_UNAME       => :P101_USERNAME,'||chr(10)||
'     P_PASSWORD    => :P101_PASSWO';

p:=p||'RD,'||chr(10)||
'     P_SESSION_ID  => v(''APP_SESSION''),'||chr(10)||
'     P_FLOW_PAGE   => :APP_ID||'':HOME'');'||chr(10)||
'end if;';

wwv_flow_api.create_page_process(
  p_id     => 1665224838607531 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 101,
  p_process_sequence=> 20,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'PLSQL',
  p_process_name=> 'Login',
  p_process_sql_clob => p, 
  p_process_error_message=> '',
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'101';

wwv_flow_api.create_page_process(
  p_id     => 1665612145607532 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 101,
  p_process_sequence=> 30,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'CLEAR_CACHE_FOR_PAGES',
  p_process_name=> 'Clear',
  p_process_sql_clob => p, 
  p_process_error_message=> '',
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'declare'||chr(10)||
'    v varchar2(255) := null;'||chr(10)||
'    c owa_cookie.cookie;'||chr(10)||
'begin'||chr(10)||
'   c := owa_cookie.get(''LOGIN_USERNAME_COOKIE'');'||chr(10)||
'   :P101_USERNAME := c.vals(1);'||chr(10)||
'exception when others then null;'||chr(10)||
'end;';

wwv_flow_api.create_page_process(
  p_id     => 1665806071607532 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 101,
  p_process_sequence=> 10,
  p_process_point=> 'BEFORE_HEADER',
  p_process_type=> 'PLSQL',
  p_process_name=> 'Get Username Cookie',
  p_process_sql_clob => p, 
  p_process_error_message=> '',
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 101
--
 
begin
 
null;
end;
null;
 
end;
/

prompt  ...lists
--
--application/shared_components/navigation/breadcrumbs
prompt  ...breadcrumbs
--
 
begin
 
wwv_flow_api.create_menu (
  p_id=> 1531914683551785 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> ' Breadcrumb');
 
wwv_flow_api.create_menu_option (
  p_id=>1532419757551794 + wwv_flow_api.g_id_offset,
  p_menu_id=>1531914683551785 + wwv_flow_api.g_id_offset,
  p_parent_id=>0,
  p_option_sequence=>10,
  p_short_name=>'ip2city',
  p_long_name=>'',
  p_link=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::',
  p_page_id=>1,
  p_also_current_for_pages=> '');
 
wwv_flow_api.create_menu_option (
  p_id=>1701525462568053 + wwv_flow_api.g_id_offset,
  p_menu_id=>1531914683551785 + wwv_flow_api.g_id_offset,
  p_parent_id=>1532419757551794 + wwv_flow_api.g_id_offset,
  p_option_sequence=>10,
  p_short_name=>'Инструменты',
  p_long_name=>'',
  p_link=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:::',
  p_page_id=>2,
  p_also_current_for_pages=> '');
 
null;
 
end;
/

prompt  ...page templates for application: 500
--
--application/shared_components/user_interface/templates/page/login
prompt  ......Page template 1613914506593353
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">'||chr(10)||
'<head>'||chr(10)||
'<title>#TITLE#</title>'||chr(10)||
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/theme_3_1.css" type="text/css" />'||chr(10)||
'<!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/ie.css" type="text/css" /><![endif]-->'||chr(10)||
'#HEAD#'||chr(10)||
'</head>'||chr(10)||
'<body #ONLOAD#>#FORM_OPEN#';

c2:=c2||'<table border="0" cellpadding="0" cellspacing="0" summary="" id="t20PageFooter" width="100%">'||chr(10)||
'<tr>'||chr(10)||
'<td id="t20Left" valign="top"><span id="t20UserPrompt">&APP_USER.</span><br /></td>'||chr(10)||
'<td id="t20Center" valign="top">#REGION_POSITION_05#</td>'||chr(10)||
'<td id="t20Right" valign="top"><span id="t20Customize">#CUSTOMIZE#</span><br /></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'<br class="t20Break"/>'||chr(10)||
'#FORM_CLOSE# '||chr(10)||
'</body>'||chr(10)||
'</html>';

c3:=c3||'<div id="t20PageHeader">'||chr(10)||
'<table border="0" cellpadding="0" cellspacing="0" summary="">'||chr(10)||
'<tr>'||chr(10)||
'<td id="t20Logo" valign="top">#LOGO#<br />#REGION_POSITION_06#</td>'||chr(10)||
'<td id="t20HeaderMiddle"  valign="top" width="100%">#REGION_POSITION_07#<br /></td>'||chr(10)||
'<td id="t20NavBar" valign="top">#NAVIGATION_BAR#<br />#REGION_POSITION_08#</td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'</div>'||chr(10)||
'<div id="t20BreadCrumbsLeft">#REGION_POSITION_01#</div';

c3:=c3||'>'||chr(10)||
'<table border="0" cellpadding="0" cellspacing="0" summary="" id="t20PageBody" height="70%" align="center" width="400">'||chr(10)||
'<td width="100%" valign="top" height="100%" id="t20ContentBody" align="center">'||chr(10)||
'<div id="t20Messages">#GLOBAL_NOTIFICATION##SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>'||chr(10)||
'<div id="t20ContentMiddle">#BOX_BODY##REGION_POSITION_02##REGION_POSITION_04#</div>'||chr(10)||
'</td>'||chr(10)||
'<td valign="top" wid';

c3:=c3||'th="200" id="t20ContentRight">#REGION_POSITION_03#<br /></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>';

wwv_flow_api.create_template(
  p_id=> 1613914506593353 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'Login',
  p_body_title=> '',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">'||chr(10)||
'<tr>'||chr(10)||
'<td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td><td class="tM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td></tr>'||chr(10)||
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</td><td class="R"></td></tr>'||chr(10)||
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>'||chr(10)||
'</table>',
  p_current_tab=> '',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">'||chr(10)||
'<tr>'||chr(10)||
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td>'||chr(10)||
'<td class="tM"></td>'||chr(10)||
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</td><td class="R"></td></tr>'||chr(10)||
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>'||chr(10)||
'</table>',
  p_navigation_bar=> '#BAR_BODY#',
  p_navbar_entry=> '<a href="#LINK#" class="t20NavBar">#TEXT#</a> |',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> ' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"',
  p_theme_id  => 20,
  p_theme_class_id => 6,
  p_translate_this_template => 'N',
  p_template_comment => '');
end;
 
null;
 
end;
/

--application/shared_components/user_interface/templates/page/no_tabs
prompt  ......Page template 1614118061593353
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">'||chr(10)||
'<head>'||chr(10)||
'<title>#TITLE#</title>'||chr(10)||
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/theme_3_1.css" type="text/css" />'||chr(10)||
'<!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/ie.css" type="text/css" /><![endif]-->'||chr(10)||
'#HEAD#'||chr(10)||
'</head>'||chr(10)||
'<body #ONLOAD#>#FORM_OPEN#';

c2:=c2||'<table border="0" cellpadding="0" cellspacing="0" summary="" id="t20PageFooter" width="100%">'||chr(10)||
'<tr>'||chr(10)||
'<td id="t20Left" valign="top"><span id="t20UserPrompt">&APP_USER.</span><br /></td>'||chr(10)||
'<td id="t20Center" valign="top">#REGION_POSITION_05#</td>'||chr(10)||
'<td id="t20Right" valign="top"><span id="t20Customize">#CUSTOMIZE#</span><br /></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'<br class="t20Break"/>'||chr(10)||
'#FORM_CLOSE# '||chr(10)||
'</body>'||chr(10)||
'</html>';

c3:=c3||'<div id="t20PageHeader">'||chr(10)||
'<table border="0" cellpadding="0" cellspacing="0" summary="">'||chr(10)||
'<tr>'||chr(10)||
'<td id="t20Logo" valign="top">#LOGO#<br />#REGION_POSITION_06#</td>'||chr(10)||
'<td id="t20HeaderMiddle"  valign="top" width="100%">#REGION_POSITION_07#<br /></td>'||chr(10)||
'<td id="t20NavBar" valign="top">#NAVIGATION_BAR#<br />#REGION_POSITION_08#</td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'</div>'||chr(10)||
'<div id="t20BreadCrumbsLeft">#REGION_POSITION_01#</div';

c3:=c3||'>'||chr(10)||
'<table border="0" cellpadding="0" cellspacing="0" summary="" id="t20PageBody"  width="100%" height="70%">'||chr(10)||
'<td width="100%" valign="top" height="100%" id="t20ContentBody">'||chr(10)||
'<div id="t20Messages">#GLOBAL_NOTIFICATION##SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>'||chr(10)||
'<div id="t20ContentMiddle">#BOX_BODY##REGION_POSITION_02##REGION_POSITION_04#</div>'||chr(10)||
'</td>'||chr(10)||
'<td valign="top" width="200" id="t20ContentRight';

c3:=c3||'">#REGION_POSITION_03#<br /></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>';

wwv_flow_api.create_template(
  p_id=> 1614118061593353 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'No Tabs',
  p_body_title=> '',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">'||chr(10)||
'<tr>'||chr(10)||
'<td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td><td class="tM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td></tr>'||chr(10)||
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</td><td class="R"></td></tr>'||chr(10)||
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>'||chr(10)||
'</table>',
  p_current_tab=> '',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">'||chr(10)||
'<tr>'||chr(10)||
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td>'||chr(10)||
'<td class="tM"></td>'||chr(10)||
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</td><td class="R"></td></tr>'||chr(10)||
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>'||chr(10)||
'</table>',
  p_navigation_bar=> '#BAR_BODY#',
  p_navbar_entry=> '<a href="#LINK#" class="t20NavBar">#TEXT#</a> |',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> ' summary="" cellpadding="0" border="0" cellspacing="0" align="left"',
  p_sidebar_def_reg_pos => 'REGION_POSITION_02',
  p_breadcrumb_def_reg_pos => 'REGION_POSITION_01',
  p_theme_id  => 20,
  p_theme_class_id => 3,
  p_translate_this_template => 'N',
  p_template_comment => '');
end;
 
null;
 
end;
/

--application/shared_components/user_interface/templates/page/no_tabs_with_sidebar
prompt  ......Page template 1614430061593353
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">'||chr(10)||
'<head>'||chr(10)||
'<title>#TITLE#</title>'||chr(10)||
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/theme_3_1.css" type="text/css" />'||chr(10)||
'<!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/ie.css" type="text/css" /><![endif]-->'||chr(10)||
'#HEAD#'||chr(10)||
'</head>'||chr(10)||
'<body #ONLOAD#>#FORM_OPEN#';

c2:=c2||'<table border="0" cellpadding="0" cellspacing="0" summary="" id="t20PageFooter" width="100%">'||chr(10)||
'<tr>'||chr(10)||
'<td id="t20Left" valign="top"><span id="t20UserPrompt">&APP_USER.</span><br /></td>'||chr(10)||
'<td id="t20Center" valign="top">#REGION_POSITION_05#</td>'||chr(10)||
'<td id="t20Right" valign="top"><span id="t20Customize">#CUSTOMIZE#</span><br /></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'<br class="t20Break"/>'||chr(10)||
'#FORM_CLOSE# '||chr(10)||
'</body>'||chr(10)||
'</html>';

c3:=c3||'<div id="t20PageHeader">'||chr(10)||
'<table border="0" cellpadding="0" cellspacing="0" summary="">'||chr(10)||
'<tr>'||chr(10)||
'<td id="t20Logo" valign="top">#LOGO#<br />#REGION_POSITION_06#</td>'||chr(10)||
'<td id="t20HeaderMiddle"  valign="top" width="100%">#REGION_POSITION_07#<br /></td>'||chr(10)||
'<td id="t20NavBar" valign="top">#NAVIGATION_BAR#<br />#REGION_POSITION_08#</td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'</div>'||chr(10)||
'<div id="t20BreadCrumbsLeft">#REGION_POSITION_01#</div';

c3:=c3||'>'||chr(10)||
'<table border="0" cellpadding="0" cellspacing="0" summary="" id="t20PageBody"  width="100%" height="70%">'||chr(10)||
'<td valign="top" width="200" id="t20ContentLeft">#REGION_POSITION_02#<br /></td>'||chr(10)||
'<td width="100%" valign="top" height="100%" id="t20ContentBody">'||chr(10)||
'<div id="t20Messages">#GLOBAL_NOTIFICATION##SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>'||chr(10)||
'<div id="t20ContentMiddle">#BOX_BODY##REGION_POSITION_04#';

c3:=c3||'</div>'||chr(10)||
'</td>'||chr(10)||
'<td valign="top" width="200" id="t20ContentRight">#REGION_POSITION_03#<br /></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>';

wwv_flow_api.create_template(
  p_id=> 1614430061593353 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'No Tabs with Sidebar',
  p_body_title=> '',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">'||chr(10)||
'<tr>'||chr(10)||
'<td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td><td class="tM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td></tr>'||chr(10)||
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</td><td class="R"></td></tr>'||chr(10)||
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>'||chr(10)||
'</table>',
  p_current_tab=> '',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">'||chr(10)||
'<tr>'||chr(10)||
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td>'||chr(10)||
'<td class="tM"></td>'||chr(10)||
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</td><td class="R"></td></tr>'||chr(10)||
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>'||chr(10)||
'</table>',
  p_navigation_bar=> '#BAR_BODY#',
  p_navbar_entry=> '<a href="#LINK#" class="t20NavBar">#TEXT#</a> |',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> ' summary="" cellpadding="0" border="0" cellspacing="0" align="left"',
  p_sidebar_def_reg_pos => 'REGION_POSITION_02',
  p_breadcrumb_def_reg_pos => 'REGION_POSITION_01',
  p_theme_id  => 20,
  p_theme_class_id => 17,
  p_translate_this_template => 'N',
  p_template_comment => '');
end;
 
null;
 
end;
/

--application/shared_components/user_interface/templates/page/one_level_tabs
prompt  ......Page template 1614709227593354
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">'||chr(10)||
'<head>'||chr(10)||
'<title>#TITLE#</title>'||chr(10)||
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/theme_3_1.css" type="text/css" />'||chr(10)||
'<!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/ie.css" type="text/css" /><![endif]-->'||chr(10)||
'#HEAD#'||chr(10)||
'</head>'||chr(10)||
'<body #ONLOAD#>#FORM_OPEN#';

c2:=c2||'<table border="0" cellpadding="0" cellspacing="0" summary="" id="t20PageFooter" width="100%">'||chr(10)||
'<tr>'||chr(10)||
'<td id="t20Left" valign="top"><span id="t20UserPrompt">&APP_USER.</span><br /></td>'||chr(10)||
'<td id="t20Center" valign="top">#REGION_POSITION_05#</td>'||chr(10)||
'<td id="t20Right" valign="top"><span id="t20Customize">#CUSTOMIZE#</span><br /></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'<br class="t20Break"/>'||chr(10)||
'#FORM_CLOSE# '||chr(10)||
'</body>'||chr(10)||
'</html>';

c3:=c3||'<div id="t20PageHeader">'||chr(10)||
'<table border="0" cellpadding="0" cellspacing="0" summary="">'||chr(10)||
'<tr>'||chr(10)||
'<td id="t20Logo" valign="top">#LOGO#<br />#REGION_POSITION_06#</td>'||chr(10)||
'<td id="t20HeaderMiddle"  valign="top" width="100%">#REGION_POSITION_07#<br /></td>'||chr(10)||
'<td id="t20NavBar" valign="top">#NAVIGATION_BAR#<br />#REGION_POSITION_08#</td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'<div id="t20Tabs" class="tablight">#TAB_CELLS#</div>'||chr(10)||
'</div>'||chr(10)||
'<';

c3:=c3||'div id="t20BreadCrumbsLeft">#REGION_POSITION_01#</div>'||chr(10)||
'<table border="0" cellpadding="0" cellspacing="0" summary="" id="t20PageBody"  width="100%" height="70%">'||chr(10)||
'<td width="100%" valign="top" id="t20ContentBody">'||chr(10)||
'<div id="t20Messages">#GLOBAL_NOTIFICATION##SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>'||chr(10)||
'<div id="t20ContentMiddle">#BOX_BODY##REGION_POSITION_02##REGION_POSITION_04#</div>'||chr(10)||
'</td>'||chr(10)||
'<td valig';

c3:=c3||'n="top" width="200" id="t20ContentRight">#REGION_POSITION_03#<br /></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>';

wwv_flow_api.create_template(
  p_id=> 1614709227593354 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'One Level Tabs',
  p_body_title=> '',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">'||chr(10)||
'<tr>'||chr(10)||
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td>'||chr(10)||
'<td class="tM"></td>'||chr(10)||
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</td><td class="R"></td></tr>'||chr(10)||
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>'||chr(10)||
'</table>',
  p_current_tab=> '<a href="#TAB_LINK#" class="t20CurrentTab">#TAB_LABEL#</a>',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '<a href="#TAB_LINK#">#TAB_LABEL#</a>',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">'||chr(10)||
'<tr>'||chr(10)||
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td>'||chr(10)||
'<td class="tM"></td>'||chr(10)||
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</td><td class="R"></td></tr>'||chr(10)||
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>'||chr(10)||
'</table>',
  p_navigation_bar=> '#BAR_BODY#',
  p_navbar_entry=> '<a href="#LINK#" class="t20NavBar">#TEXT#</a> |',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> ' summary="" cellpadding="0" border="0" cellspacing="5" align="left"',
  p_breadcrumb_def_reg_pos => 'REGION_POSITION_01',
  p_theme_id  => 20,
  p_theme_class_id => 1,
  p_translate_this_template => 'N',
  p_template_comment => '');
end;
 
null;
 
end;
/

--application/shared_components/user_interface/templates/page/one_level_tabs_custom_1
prompt  ......Page template 1615023620593354
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">'||chr(10)||
'<head>'||chr(10)||
'<title>#TITLE#</title>'||chr(10)||
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/theme_3_1.css" type="text/css" />'||chr(10)||
'<!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/ie.css" type="text/css" /><![endif]-->'||chr(10)||
'#HEAD#'||chr(10)||
'</head>'||chr(10)||
'<body #ONLOAD#>#FORM_OPEN#';

c2:=c2||'<table border="0" cellpadding="0" cellspacing="0" summary="" id="t20PageFooter" width="100%">'||chr(10)||
'<tr>'||chr(10)||
'<td id="t20Left" valign="top"><span id="t20UserPrompt">&APP_USER.</span><br /></td>'||chr(10)||
'<td id="t20Center" valign="top">#REGION_POSITION_05#</td>'||chr(10)||
'<td id="t20Right" valign="top"><span id="t20Customize">#CUSTOMIZE#</span><br /></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'<br class="t20Break"/>'||chr(10)||
'#FORM_CLOSE# '||chr(10)||
'</body>'||chr(10)||
'</html>';

c3:=c3||'<div id="t20PageHeader">'||chr(10)||
'<table border="0" cellpadding="0" cellspacing="0" summary="">'||chr(10)||
'<tr>'||chr(10)||
'<td id="t20Logo" valign="top">#LOGO#<br />#REGION_POSITION_06#</td>'||chr(10)||
'<td id="t20HeaderMiddle"  valign="top" width="100%">#REGION_POSITION_07#<br /></td>'||chr(10)||
'<td id="t20NavBar" valign="top">#NAVIGATION_BAR#<br />#REGION_POSITION_08#</td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'<table id="t20Tabs" border="0" cellpadding="0" cellspacing="0';

c3:=c3||'" summary=""><tr>#TAB_CELLS#</tr></table>'||chr(10)||
'</div>'||chr(10)||
'<div id="t20BreadCrumbsLeft">#REGION_POSITION_01#</div>'||chr(10)||
'<table border="0" cellpadding="0" cellspacing="0" summary="" id="t20PageBody"  width="100%" height="70%">'||chr(10)||
'<td width="100%" valign="top" id="t20ContentBody">'||chr(10)||
'<div id="t20Messages">#GLOBAL_NOTIFICATION##SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>'||chr(10)||
'<div id="t20ContentMiddle">#BOX_BODY##REGION_POSI';

c3:=c3||'TION_02##REGION_POSITION_04#</div>'||chr(10)||
'</td>'||chr(10)||
'<td valign="top" width="200" id="t20ContentRight">#REGION_POSITION_03#<br /></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>';

wwv_flow_api.create_template(
  p_id=> 1615023620593354 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'One Level Tabs (Custom 1)',
  p_body_title=> '',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">'||chr(10)||
'<tr>'||chr(10)||
'<td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td><td class="tM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td></tr>'||chr(10)||
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</td><td class="R"></td></tr>'||chr(10)||
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>'||chr(10)||
'</table>',
  p_current_tab=> '<td><img src="#IMAGE_PREFIX#themes/theme_20/topTabL.gif" /></td>'||chr(10)||
'<td class="t20CurrentTab"><a href="#TAB_LINK#">#TAB_LABEL#</a></td>'||chr(10)||
'<td><img src="#IMAGE_PREFIX#themes/theme_20/topTabR.gif" /></td>'||chr(10)||
'<td>&nbsp;</td>',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '<td><img src="#IMAGE_PREFIX#themes/theme_20/topDimTabL.gif" /></td>'||chr(10)||
'<td class="t20Tab"><a href="#TAB_LINK#">#TAB_LABEL#</a></td>'||chr(10)||
'<td><img src="#IMAGE_PREFIX#themes/theme_20/topDimTabR.gif" /></td>'||chr(10)||
'<td>&nbsp;</td>',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">'||chr(10)||
'<tr>'||chr(10)||
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td>'||chr(10)||
'<td class="tM"></td>'||chr(10)||
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</td><td class="R"></td></tr>'||chr(10)||
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>'||chr(10)||
'</table>',
  p_navigation_bar=> '#BAR_BODY#',
  p_navbar_entry=> '<a href="#LINK#" class="t20NavBar">#TEXT#</a> |',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> ' summary="" cellpadding="0" border="0" cellspacing="5" align="left"',
  p_breadcrumb_def_reg_pos => 'REGION_POSITION_01',
  p_theme_id  => 20,
  p_theme_class_id => 8,
  p_translate_this_template => 'N',
  p_template_comment => '');
end;
 
null;
 
end;
/

--application/shared_components/user_interface/templates/page/one_level_tabs_custom_5
prompt  ......Page template 1615307954593354
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">'||chr(10)||
'<head>'||chr(10)||
'<title>#TITLE#</title>'||chr(10)||
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/theme_3_1.css" type="text/css" />'||chr(10)||
'<!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/ie.css" type="text/css" /><![endif]-->'||chr(10)||
'#HEAD#'||chr(10)||
'</head>'||chr(10)||
'<body #ONLOAD#>#FORM_OPEN#';

c2:=c2||'<table border="0" cellpadding="0" cellspacing="0" summary="" id="t20PageFooter" width="100%">'||chr(10)||
'<tr>'||chr(10)||
'<td id="t20Left" valign="top"><span id="t20UserPrompt">&APP_USER.</span><br /></td>'||chr(10)||
'<td id="t20Center" valign="top">#REGION_POSITION_05#</td>'||chr(10)||
'<td id="t20Right" valign="top"><span id="t20Customize">#CUSTOMIZE#</span><br /></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'<br class="t20Break"/>'||chr(10)||
'#FORM_CLOSE# '||chr(10)||
'</body>'||chr(10)||
'</html>';

c3:=c3||'<div id="t20PageHeader">'||chr(10)||
'<table border="0" cellpadding="0" cellspacing="0" summary="">'||chr(10)||
'<tr>'||chr(10)||
'<td id="t20Logo" valign="top">#LOGO#<br />#REGION_POSITION_06#</td>'||chr(10)||
'<td id="t20HeaderMiddle"  valign="top" width="100%">#REGION_POSITION_07#<br /></td>'||chr(10)||
'<td id="t20NavBar" valign="top">#NAVIGATION_BAR#<br /></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'<div id="t20Tabs" class="tablight">#TAB_CELLS#</div>'||chr(10)||
'</div>'||chr(10)||
'#REGION_POSITION_08#'||chr(10)||
'';

c3:=c3||'<div id="t20BreadCrumbsLeft">#REGION_POSITION_01#</div>'||chr(10)||
'<table border="0" cellpadding="0" cellspacing="0" summary="" id="t20PageBody"  width="100%" height="70%">'||chr(10)||
'<td width="100%" valign="top" id="t20ContentBody">'||chr(10)||
'<div id="t20Messages">#GLOBAL_NOTIFICATION##SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>'||chr(10)||
'<div id="t20ContentMiddle">#BOX_BODY##REGION_POSITION_02##REGION_POSITION_04#</div>'||chr(10)||
'</td>'||chr(10)||
'<td vali';

c3:=c3||'gn="top" width="200" id="t20ContentRight">#REGION_POSITION_03#<br /></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>';

wwv_flow_api.create_template(
  p_id=> 1615307954593354 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'One Level Tabs (Custom 5)',
  p_body_title=> '',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">'||chr(10)||
'<tr>'||chr(10)||
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td>'||chr(10)||
'<td class="tM"></td>'||chr(10)||
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</td><td class="R"></td></tr>'||chr(10)||
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>'||chr(10)||
'</table>',
  p_current_tab=> '<a href="#TAB_LINK#" class="t20CurrentTab">#TAB_LABEL#</a>',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '<a href="#TAB_LINK#">#TAB_LABEL#</a>',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">'||chr(10)||
'<tr>'||chr(10)||
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td>'||chr(10)||
'<td class="tM"></td>'||chr(10)||
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</td><td class="R"></td></tr>'||chr(10)||
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>'||chr(10)||
'</table>',
  p_navigation_bar=> '#BAR_BODY#',
  p_navbar_entry=> '<a href="#LINK#" class="t20NavBar">#TEXT#</a> |',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> ' summary="" cellpadding="0" border="0" cellspacing="5" align="left"',
  p_breadcrumb_def_reg_pos => 'REGION_POSITION_01',
  p_theme_id  => 20,
  p_theme_class_id => 12,
  p_translate_this_template => 'N',
  p_template_comment => '');
end;
 
null;
 
end;
/

--application/shared_components/user_interface/templates/page/one_level_tabs_sidebar
prompt  ......Page template 1615622008593355
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">'||chr(10)||
'<head>'||chr(10)||
'<title>#TITLE#</title>'||chr(10)||
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/theme_3_1.css" type="text/css" />'||chr(10)||
'<!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/ie.css" type="text/css" /><![endif]-->'||chr(10)||
'#HEAD#'||chr(10)||
'</head>'||chr(10)||
'<body #ONLOAD#>#FORM_OPEN#';

c2:=c2||'<table border="0" cellpadding="0" cellspacing="0" summary="" id="t20PageFooter" width="100%">'||chr(10)||
'<tr>'||chr(10)||
'<td id="t20Left" valign="top"><span id="t20UserPrompt">&APP_USER.</span><br /></td>'||chr(10)||
'<td id="t20Center" valign="top">#REGION_POSITION_05#</td>'||chr(10)||
'<td id="t20Right" valign="top"><span id="t20Customize">#CUSTOMIZE#</span><br /></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'<br class="t20Break"/>'||chr(10)||
'#FORM_CLOSE# '||chr(10)||
'</body>'||chr(10)||
'</html>';

c3:=c3||'<div id="t20PageHeader">'||chr(10)||
'<table border="0" cellpadding="0" cellspacing="0" summary="">'||chr(10)||
'<tr>'||chr(10)||
'<td id="t20Logo" valign="top">#LOGO#<br />#REGION_POSITION_06#</td>'||chr(10)||
'<td id="t20HeaderMiddle"  valign="top" width="100%">#REGION_POSITION_07#<br /></td>'||chr(10)||
'<td id="t20NavBar" valign="top">#NAVIGATION_BAR#<br />#REGION_POSITION_08#</td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'<div id="t20Tabs" class="tablight">#TAB_CELLS#</div>'||chr(10)||
'</div>'||chr(10)||
'<';

c3:=c3||'div id="t20BreadCrumbsLeft">#REGION_POSITION_01#</div>'||chr(10)||
'<table border="0" cellpadding="0" cellspacing="0" summary="" id="t20PageBody"  width="100%" height="70%">'||chr(10)||
'<td valign="top" width="200" id="t20ContentLeft">#REGION_POSITION_02#<br /></td>'||chr(10)||
'<td width="100%" valign="top" id="t20ContentBody">'||chr(10)||
'<div id="t20Messages">#GLOBAL_NOTIFICATION##SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>'||chr(10)||
'<div id="t20Conten';

c3:=c3||'tMiddle">#BOX_BODY##REGION_POSITION_04#</div>'||chr(10)||
'</td>'||chr(10)||
'<td valign="top" width="200" id="t20ContentRight">#REGION_POSITION_03#<br /></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>';

wwv_flow_api.create_template(
  p_id=> 1615622008593355 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'One Level Tabs Sidebar',
  p_body_title=> '',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">'||chr(10)||
'<tr>'||chr(10)||
'<td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td><td class="tM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td></tr>'||chr(10)||
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</td><td class="R"></td></tr>'||chr(10)||
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>'||chr(10)||
'</table>',
  p_current_tab=> '<a href="#TAB_LINK#" class="t20CurrentTab">#TAB_LABEL#</a>'||chr(10)||
'',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '<a href="#TAB_LINK#">#TAB_LABEL#</a>',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">'||chr(10)||
'<tr>'||chr(10)||
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td>'||chr(10)||
'<td class="tM"></td>'||chr(10)||
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</td><td class="R"></td></tr>'||chr(10)||
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>'||chr(10)||
'</table>',
  p_navigation_bar=> '#BAR_BODY#',
  p_navbar_entry=> '<a href="#LINK#" class="t20NavBar">#TEXT#</a> |',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> ' summary="" cellpadding="0" border="0" cellspacing="5" align="left"',
  p_breadcrumb_def_reg_pos => 'REGION_POSITION_01',
  p_theme_id  => 20,
  p_theme_class_id => 16,
  p_translate_this_template => 'N',
  p_template_comment => '');
end;
 
null;
 
end;
/

--application/shared_components/user_interface/templates/page/one_level_tabs_sidebar_custom_2
prompt  ......Page template 1615925063593355
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">'||chr(10)||
'<head>'||chr(10)||
'<title>#TITLE#</title>'||chr(10)||
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/theme_3_1.css" type="text/css" />'||chr(10)||
'<!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/ie.css" type="text/css" /><![endif]-->'||chr(10)||
'#HEAD#'||chr(10)||
'</head>'||chr(10)||
'<body #ONLOAD#>#FORM_OPEN#';

c2:=c2||'<table border="0" cellpadding="0" cellspacing="0" summary="" id="t20PageFooter" width="100%">'||chr(10)||
'<tr>'||chr(10)||
'<td id="t20Left" valign="top"><span id="t20UserPrompt">&APP_USER.</span><br /></td>'||chr(10)||
'<td id="t20Center" valign="top">#REGION_POSITION_05#</td>'||chr(10)||
'<td id="t20Right" valign="top"><span id="t20Customize">#CUSTOMIZE#</span><br /></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'<br class="t20Break"/>'||chr(10)||
'#FORM_CLOSE# '||chr(10)||
'</body>'||chr(10)||
'</html>';

c3:=c3||'<div id="t20PageHeader">'||chr(10)||
'<table border="0" cellpadding="0" cellspacing="0" summary="">'||chr(10)||
'<tr>'||chr(10)||
'<td id="t20Logo" valign="top">#LOGO#<br />#REGION_POSITION_06#</td>'||chr(10)||
'<td id="t20HeaderMiddle"  valign="top" width="100%">#REGION_POSITION_07#<br /></td>'||chr(10)||
'<td id="t20NavBar" valign="top">#NAVIGATION_BAR#<br />#REGION_POSITION_08#</td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'<table id="t20Tabs" border="0" cellpadding="0" cellspacing="0';

c3:=c3||'" summary=""><tr>#TAB_CELLS#</tr></table>'||chr(10)||
'</div>'||chr(10)||
'<div id="t20BreadCrumbsLeft">#REGION_POSITION_01#</div>'||chr(10)||
'<table border="0" cellpadding="0" cellspacing="0" summary="" id="t20PageBody"  width="100%" height="70%">'||chr(10)||
'<td valign="top" width="200" id="t20ContentLeft">#REGION_POSITION_02#<br /></td>'||chr(10)||
'<td width="100%" valign="top" id="t20ContentBody">'||chr(10)||
'<div id="t20Messages">#GLOBAL_NOTIFICATION##SUCCESS_MESSA';

c3:=c3||'GE##NOTIFICATION_MESSAGE#</div>'||chr(10)||
'<div id="t20ContentMiddle">#BOX_BODY##REGION_POSITION_04#</div>'||chr(10)||
'</td>'||chr(10)||
'<td valign="top" width="200" id="t20ContentRight">#REGION_POSITION_03#<br /></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>';

wwv_flow_api.create_template(
  p_id=> 1615925063593355 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'One Level Tabs Sidebar  (Custom 2)',
  p_body_title=> '',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">'||chr(10)||
'<tr>'||chr(10)||
'<td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td><td class="tM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td></tr>'||chr(10)||
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</td><td class="R"></td></tr>'||chr(10)||
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>'||chr(10)||
'</table>',
  p_current_tab=> '<td><img src="#IMAGE_PREFIX#themes/theme_20/topTabL.gif" /></td>'||chr(10)||
'<td class="t20CurrentTab"><a href="#TAB_LINK#">#TAB_LABEL#</a></td>'||chr(10)||
'<td><img src="#IMAGE_PREFIX#themes/theme_20/topTabR.gif" /></td>'||chr(10)||
'<td>&nbsp;</td>',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '<td><img src="#IMAGE_PREFIX#themes/theme_20/topDimTabL.gif" /></td>'||chr(10)||
'<td class="t20Tab"><a href="#TAB_LINK#">#TAB_LABEL#</a></td>'||chr(10)||
'<td><img src="#IMAGE_PREFIX#themes/theme_20/topDimTabR.gif" /></td>'||chr(10)||
'<td>&nbsp;</td>',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">'||chr(10)||
'<tr>'||chr(10)||
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td>'||chr(10)||
'<td class="tM"></td>'||chr(10)||
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</td><td class="R"></td></tr>'||chr(10)||
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>'||chr(10)||
'</table>',
  p_navigation_bar=> '#BAR_BODY#',
  p_navbar_entry=> '<a href="#LINK#" class="t20NavBar">#TEXT#</a> |',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> ' summary="" cellpadding="0" border="0" cellspacing="5" align="left"',
  p_breadcrumb_def_reg_pos => 'REGION_POSITION_01',
  p_theme_id  => 20,
  p_theme_class_id => 9,
  p_translate_this_template => 'N',
  p_template_comment => '');
end;
 
null;
 
end;
/

--application/shared_components/user_interface/templates/page/one_level_tabs_sidebar_custom_6
prompt  ......Page template 1616207461593355
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">'||chr(10)||
'<head>'||chr(10)||
'<title>#TITLE#</title>'||chr(10)||
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/theme_3_1.css" type="text/css" />'||chr(10)||
'<!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/ie.css" type="text/css" /><![endif]-->'||chr(10)||
'#HEAD#'||chr(10)||
'</head>'||chr(10)||
'<body #ONLOAD#>#FORM_OPEN#';

c2:=c2||'<table border="0" cellpadding="0" cellspacing="0" summary="" id="t20PageFooter" width="100%">'||chr(10)||
'<tr>'||chr(10)||
'<td id="t20Left" valign="top"><span id="t20UserPrompt">&APP_USER.</span><br /></td>'||chr(10)||
'<td id="t20Center" valign="top">#REGION_POSITION_05#</td>'||chr(10)||
'<td id="t20Right" valign="top"><span id="t20Customize">#CUSTOMIZE#</span><br /></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'<br class="t20Break"/>'||chr(10)||
'#FORM_CLOSE# '||chr(10)||
'</body>'||chr(10)||
'</html>';

c3:=c3||'<div id="t20PageHeader">'||chr(10)||
'<table border="0" cellpadding="0" cellspacing="0" summary="">'||chr(10)||
'<tr>'||chr(10)||
'<td id="t20Logo" valign="top">#LOGO#<br />#REGION_POSITION_06#</td>'||chr(10)||
'<td id="t20HeaderMiddle"  valign="top" width="100%">#REGION_POSITION_07#<br /></td>'||chr(10)||
'<td id="t20NavBar" valign="top">#NAVIGATION_BAR#<br /></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'<div id="t20Tabs" class="tablight">#TAB_CELLS#</div>'||chr(10)||
'</div>'||chr(10)||
'#REGION_POSITION_08#'||chr(10)||
'';

c3:=c3||'<div id="t20BreadCrumbsLeft">#REGION_POSITION_01#</div>'||chr(10)||
'<table border="0" cellpadding="0" cellspacing="0" summary="" id="t20PageBody"  width="100%" height="70%">'||chr(10)||
'<td valign="top" width="200" id="t20ContentLeft">#REGION_POSITION_02#<br /></td>'||chr(10)||
'<td width="100%" valign="top" id="t20ContentBody">'||chr(10)||
'<div id="t20Messages">#GLOBAL_NOTIFICATION##SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>'||chr(10)||
'<div id="t20Conte';

c3:=c3||'ntMiddle">#BOX_BODY##REGION_POSITION_04#</div>'||chr(10)||
'</td>'||chr(10)||
'<td valign="top" width="200" id="t20ContentRight">#REGION_POSITION_03#<br /></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>';

wwv_flow_api.create_template(
  p_id=> 1616207461593355 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'One Level Tabs Sidebar (Custom 6)',
  p_body_title=> '',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">'||chr(10)||
'<tr>'||chr(10)||
'<td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td><td class="tM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td></tr>'||chr(10)||
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</td><td class="R"></td></tr>'||chr(10)||
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>'||chr(10)||
'</table>',
  p_current_tab=> '<a href="#TAB_LINK#" class="t20CurrentTab">#TAB_LABEL#</a>'||chr(10)||
'',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '<a href="#TAB_LINK#">#TAB_LABEL#</a>',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">'||chr(10)||
'<tr>'||chr(10)||
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td>'||chr(10)||
'<td class="tM"></td>'||chr(10)||
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</td><td class="R"></td></tr>'||chr(10)||
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>'||chr(10)||
'</table>',
  p_navigation_bar=> '#BAR_BODY#',
  p_navbar_entry=> '<a href="#LINK#" class="t20NavBar">#TEXT#</a> |',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> ' summary="" cellpadding="0" border="0" cellspacing="5" align="left"',
  p_breadcrumb_def_reg_pos => 'REGION_POSITION_01',
  p_theme_id  => 20,
  p_theme_class_id => 13,
  p_translate_this_template => 'N',
  p_template_comment => '');
end;
 
null;
 
end;
/

--application/shared_components/user_interface/templates/page/popup
prompt  ......Page template 1616532682593356
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">'||chr(10)||
'<head>'||chr(10)||
'<title>#TITLE#</title>'||chr(10)||
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/theme_3_1.css" type="text/css" />'||chr(10)||
'<!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/ie.css" type="text/css" /><![endif]-->'||chr(10)||
'#HEAD#'||chr(10)||
'</head>'||chr(10)||
'<body #ONLOAD#>#FORM_OPEN#';

c2:=c2||'#FORM_CLOSE#</body>'||chr(10)||
'</html>';

c3:=c3||'<table summary="" cellpadding="0" width="100%" cellspacing="0" border="0">'||chr(10)||
'<tr>'||chr(10)||
'<td valign="top">#LOGO##REGION_POSITION_06#</td>'||chr(10)||
'<td width="100%" valign="top">#REGION_POSITION_07#</td>'||chr(10)||
'<td valign="top">#REGION_POSITION_08#</td>'||chr(10)||
'</table>'||chr(10)||
'<table summary="" cellpadding="0" width="100%" cellspacing="0" border="0">'||chr(10)||
'<tr>'||chr(10)||
'<td width="100%" valign="top">'||chr(10)||
'<div style="border:1px solid black;">#SUCCESS_MESSAG';

c3:=c3||'E##NOTIFICATION_MESSAGE#</div>'||chr(10)||
'#BOX_BODY##REGION_POSITION_04#</td>'||chr(10)||
'<td valign="top">#REGION_POSITION_03#<br /></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'#REGION_POSITION_05#'||chr(10)||
'';

wwv_flow_api.create_template(
  p_id=> 1616532682593356 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'Popup',
  p_body_title=> '',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">'||chr(10)||
'<tr>'||chr(10)||
'<td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td><td class="tM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td></tr>'||chr(10)||
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</td><td class="R"></td></tr>'||chr(10)||
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>'||chr(10)||
'</table>',
  p_current_tab=> '',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">'||chr(10)||
'<tr>'||chr(10)||
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td>'||chr(10)||
'<td class="tM"></td>'||chr(10)||
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</td><td class="R"></td></tr>'||chr(10)||
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>'||chr(10)||
'</table>',
  p_navigation_bar=> '<div class="t20NavigationBar">#BAR_BODY#</div>',
  p_navbar_entry=> '<a href="#LINK#" class="t20NavigationBar">#TEXT#</a>',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> ' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"',
  p_theme_id  => 20,
  p_theme_class_id => 4,
  p_translate_this_template => 'N',
  p_template_comment => '');
end;
 
null;
 
end;
/

--application/shared_components/user_interface/templates/page/printer_friendly
prompt  ......Page template 1616801033593356
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">'||chr(10)||
'<head>'||chr(10)||
'<title>#TITLE#</title>'||chr(10)||
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/theme_3_1.css" type="text/css" />'||chr(10)||
'<!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/ie.css" type="text/css" /><![endif]-->'||chr(10)||
'#HEAD#'||chr(10)||
'</head>'||chr(10)||
'<body #ONLOAD#>#FORM_OPEN#';

c2:=c2||'<table border="0" cellpadding="0" cellspacing="0" summary="" id="t20PageFooter" width="100%">'||chr(10)||
'<tr>'||chr(10)||
'<td id="t20Left" valign="top"><span id="t20UserPrompt">&APP_USER.</span><br /></td>'||chr(10)||
'<td id="t20Center" valign="top">#REGION_POSITION_05#</td>'||chr(10)||
'<td id="t20Right" valign="top"><span id="t20Customize">#CUSTOMIZE#</span><br /></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'<br class="t20Break"/>'||chr(10)||
'#FORM_CLOSE# '||chr(10)||
'</body>'||chr(10)||
'</html>';

c3:=c3||'<table border="0" cellpadding="0" cellspacing="0" summary="" width="100%">'||chr(10)||
'<tr>'||chr(10)||
'<td id="t20Logo" valign="top">#LOGO#<br />#REGION_POSITION_06#</td>'||chr(10)||
'<td id="t20HeaderMiddle"  valign="top" width="100%">#REGION_POSITION_07#<br /></td>'||chr(10)||
'<td id="t20NavBar" valign="top">#REGION_POSITION_08#</td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'<table summary="" cellpadding="0" width="100%" cellspacing="0" border="0" height="70%">'||chr(10)||
'<tr>'||chr(10)||
'<t';

c3:=c3||'d width="100%" valign="top"><div class="t20messages">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>'||chr(10)||
'#BOX_BODY##REGION_POSITION_02##REGION_POSITION_04#</td>'||chr(10)||
'<td valign="top">#REGION_POSITION_03#<br /></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>';

wwv_flow_api.create_template(
  p_id=> 1616801033593356 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'Printer Friendly',
  p_body_title=> '',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">'||chr(10)||
'<tr>'||chr(10)||
'<td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td><td class="tM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td></tr>'||chr(10)||
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</td><td class="R"></td></tr>'||chr(10)||
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>'||chr(10)||
'</table>',
  p_current_tab=> '',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">'||chr(10)||
'<tr>'||chr(10)||
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td>'||chr(10)||
'<td class="tM"></td>'||chr(10)||
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</td><td class="R"></td></tr>'||chr(10)||
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>'||chr(10)||
'</table>',
  p_navigation_bar=> '<div class="t20NavigationBar">#BAR_BODY#</div>',
  p_navbar_entry=> '<a href="#LINK#" class="t20NavigationBar">#TEXT#</a>',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> ' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"',
  p_theme_id  => 20,
  p_theme_class_id => 5,
  p_translate_this_template => 'N',
  p_template_comment => '3');
end;
 
null;
 
end;
/

--application/shared_components/user_interface/templates/page/two_level_tabs
prompt  ......Page template 1617118734593357
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">'||chr(10)||
'<head>'||chr(10)||
'<title>#TITLE#</title>'||chr(10)||
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/theme_3_1.css" type="text/css" />'||chr(10)||
'<!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/ie.css" type="text/css" /><![endif]-->'||chr(10)||
'#HEAD#'||chr(10)||
'</head>'||chr(10)||
'<body #ONLOAD#>#FORM_OPEN#';

c2:=c2||'<table border="0" cellpadding="0" cellspacing="0" summary="" id="t20PageFooter" width="100%">'||chr(10)||
'<tr>'||chr(10)||
'<td id="t20Left" valign="top"><span id="t20UserPrompt">&APP_USER.</span><br /></td>'||chr(10)||
'<td id="t20Center" valign="top">#REGION_POSITION_05#</td>'||chr(10)||
'<td id="t20Right" valign="top"><span id="t20Customize">#CUSTOMIZE#</span><br /></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'<br class="t20Break"/>'||chr(10)||
'#FORM_CLOSE# '||chr(10)||
'</body>'||chr(10)||
'</html>';

c3:=c3||'<div id="t20PageHeader">'||chr(10)||
'<table border="0" cellpadding="0" cellspacing="0" summary="">'||chr(10)||
'<tr>'||chr(10)||
'<td id="t20Logo" valign="top">#LOGO#<br />#REGION_POSITION_06#</td>'||chr(10)||
'<td id="t20HeaderMiddle"  valign="top" width="100%">#REGION_POSITION_07#<br /></td>'||chr(10)||
'<td id="t20NavBar" valign="top">#NAVIGATION_BAR#<br />#REGION_POSITION_08#</td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'<div id="t20Tabs" class="tablight">#PARENT_TAB_CELLS#</div>'||chr(10)||
'<';

c3:=c3||'/div>'||chr(10)||
'<div id="t20tablist">#TAB_CELLS#</div>'||chr(10)||
'<div id="t20BreadCrumbsLeft">#REGION_POSITION_01#</div>'||chr(10)||
'<table border="0" cellpadding="0" cellspacing="0" summary="" id="t20PageBody"  width="100%" height="70%">'||chr(10)||
'<td width="100%" valign="top" id="t20ContentBody">'||chr(10)||
'<div id="t20Messages">#GLOBAL_NOTIFICATION##SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>'||chr(10)||
'<div id="t20ContentMiddle">#BOX_BODY##REGION_POSITION';

c3:=c3||'_02##REGION_POSITION_04#</div>'||chr(10)||
'</td>'||chr(10)||
'<td valign="top" width="200" id="t20ContentRight">#REGION_POSITION_03#<br /></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>';

wwv_flow_api.create_template(
  p_id=> 1617118734593357 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'Two Level Tabs',
  p_body_title=> '',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">'||chr(10)||
'<tr>'||chr(10)||
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td>'||chr(10)||
'<td class="tM"></td>'||chr(10)||
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</td><td class="R"></td></tr>'||chr(10)||
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>'||chr(10)||
'</table>',
  p_current_tab=> '<a href="#TAB_LINK#" class="current">#TAB_LABEL#</a>',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '<a href="#TAB_LINK#">#TAB_LABEL#</a>',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '<a href="#TAB_LINK#" class="t20CurrentTab">#TAB_LABEL#</a>',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '<a href="#TAB_LINK#">#TAB_LABEL#</a>',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">'||chr(10)||
'<tr>'||chr(10)||
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td>'||chr(10)||
'<td class="tM"></td>'||chr(10)||
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</td><td class="R"></td></tr>'||chr(10)||
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>'||chr(10)||
'</table>',
  p_navigation_bar=> '#BAR_BODY#',
  p_navbar_entry=> '<a href="#LINK#" class="t20NavBar">#TEXT#</a> |',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> ' summary="" cellpadding="0" border="0" cellspacing="5" align="left"',
  p_breadcrumb_def_reg_pos => 'REGION_POSITION_01',
  p_theme_id  => 20,
  p_theme_class_id => 2,
  p_translate_this_template => 'N',
  p_template_comment => '');
end;
 
null;
 
end;
/

--application/shared_components/user_interface/templates/page/two_level_tabs_custom_3
prompt  ......Page template 1617415687593357
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">'||chr(10)||
'<head>'||chr(10)||
'<title>#TITLE#</title>'||chr(10)||
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/theme_3_1.css" type="text/css" />'||chr(10)||
'<!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/ie.css" type="text/css" /><![endif]-->'||chr(10)||
'#HEAD#'||chr(10)||
'</head>'||chr(10)||
'<body #ONLOAD#>#FORM_OPEN#';

c2:=c2||'<table border="0" cellpadding="0" cellspacing="0" summary="" id="t20PageFooter" width="100%">'||chr(10)||
'<tr>'||chr(10)||
'<td id="t20Left" valign="top"><span id="t20UserPrompt">&APP_USER.</span><br /></td>'||chr(10)||
'<td id="t20Center" valign="top">#REGION_POSITION_05#</td>'||chr(10)||
'<td id="t20Right" valign="top"><span id="t20Customize">#CUSTOMIZE#</span><br /></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'<br class="t20Break"/>'||chr(10)||
'#FORM_CLOSE# '||chr(10)||
'</body>'||chr(10)||
'</html>';

c3:=c3||'<div id="t20PageHeader">'||chr(10)||
'<table border="0" cellpadding="0" cellspacing="0" summary="">'||chr(10)||
'<tr>'||chr(10)||
'<td id="t20Logo" valign="top">#LOGO#<br />#REGION_POSITION_06#</td>'||chr(10)||
'<td id="t20HeaderMiddle"  valign="top" width="100%">#REGION_POSITION_07#<br /></td>'||chr(10)||
'<td id="t20NavBar" valign="top">#NAVIGATION_BAR#<br />#REGION_POSITION_08#</td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'<table id="t20Tabs" border="0" cellpadding="0" cellspacing="0';

c3:=c3||'" summary=""><tr>#PARENT_TAB_CELLS#</tr></table>'||chr(10)||
'</div>'||chr(10)||
'<div id="t20ChildTabs">#TAB_CELLS#</div>'||chr(10)||
'<div style="background-color:none;">#REGION_POSITION_01#</div>'||chr(10)||
'<table border="0" cellpadding="0" cellspacing="0" summary="" id="t20PageBody"  width="100%" height="70%">'||chr(10)||
'<td valign="top" id="t20ContentBody">'||chr(10)||
'<div id="t20Messages">#GLOBAL_NOTIFICATION##SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>'||chr(10)||
'<div id';

c3:=c3||'="t20ContentMiddle">#BOX_BODY##REGION_POSITION_02##REGION_POSITION_04#</div>'||chr(10)||
'</td>'||chr(10)||
'<td valign="top" width="200" id="t20ContentRight">#REGION_POSITION_03#<br /></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>';

wwv_flow_api.create_template(
  p_id=> 1617415687593357 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'Two Level Tabs  (Custom 3)',
  p_body_title=> '',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">'||chr(10)||
'<tr>'||chr(10)||
'<td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td><td class="tM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td></tr>'||chr(10)||
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</td><td class="R"></td></tr>'||chr(10)||
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>'||chr(10)||
'</table>',
  p_current_tab=> '<a href="#TAB_LINK#" class="t20CurrentTab">#TAB_LABEL#</a>',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '<a href="#TAB_LINK#" class="t20Tab">#TAB_LABEL#</a>',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '<td><img src="#IMAGE_PREFIX#themes/theme_20/topTabL.gif" /></td>'||chr(10)||
'<td class="t20CurrentTab"><a href="#TAB_LINK#">#TAB_LABEL#</a></td>'||chr(10)||
'<td><img src="#IMAGE_PREFIX#themes/theme_20/topTabR.gif" /></td>'||chr(10)||
'<td>&nbsp;</td>',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '<td><img src="#IMAGE_PREFIX#themes/theme_20/topDimTabL.gif" /></td>'||chr(10)||
'<td class="t20Tab"><a href="#TAB_LINK#">#TAB_LABEL#</a></td>'||chr(10)||
'<td><img src="#IMAGE_PREFIX#themes/theme_20/topDimTabR.gif" /></td>'||chr(10)||
'<td>&nbsp;</td>',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">'||chr(10)||
'<tr>'||chr(10)||
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td>'||chr(10)||
'<td class="tM"></td>'||chr(10)||
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</td><td class="R"></td></tr>'||chr(10)||
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>'||chr(10)||
'</table>',
  p_navigation_bar=> '#BAR_BODY#',
  p_navbar_entry=> '<a href="#LINK#" class="t20NavBar">#TEXT#</a> |',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> ' summary="" cellpadding="0" border="0" cellspacing="5" align="left"',
  p_breadcrumb_def_reg_pos => 'REGION_POSITION_01',
  p_theme_id  => 20,
  p_theme_class_id => 10,
  p_translate_this_template => 'N',
  p_template_comment => '');
end;
 
null;
 
end;
/

--application/shared_components/user_interface/templates/page/two_level_tabs_with_sidebar
prompt  ......Page template 1617700313593358
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">'||chr(10)||
'<head>'||chr(10)||
'<title>#TITLE#</title>'||chr(10)||
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/theme_3_1.css" type="text/css" />'||chr(10)||
'<!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/ie.css" type="text/css" /><![endif]-->'||chr(10)||
'#HEAD#'||chr(10)||
'</head>'||chr(10)||
'<body #ONLOAD#>#FORM_OPEN#';

c2:=c2||'<table border="0" cellpadding="0" cellspacing="0" summary="" id="t20PageFooter" width="100%">'||chr(10)||
'<tr>'||chr(10)||
'<td id="t20Left" valign="top"><span id="t20UserPrompt">&APP_USER.</span><br /></td>'||chr(10)||
'<td id="t20Center" valign="top">#REGION_POSITION_05#</td>'||chr(10)||
'<td id="t20Right" valign="top"><span id="t20Customize">#CUSTOMIZE#</span><br /></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'<br class="t20Break"/>'||chr(10)||
'#FORM_CLOSE# '||chr(10)||
'</body>'||chr(10)||
'</html>';

c3:=c3||'<div id="t20PageHeader">'||chr(10)||
'<table border="0" cellpadding="0" cellspacing="0" summary="">'||chr(10)||
'<tr>'||chr(10)||
'<td id="t20Logo" valign="top">#LOGO#<br />#REGION_POSITION_06#</td>'||chr(10)||
'<td id="t20HeaderMiddle"  valign="top" width="100%">#REGION_POSITION_07#<br /></td>'||chr(10)||
'<td id="t20NavBar" valign="top">#NAVIGATION_BAR#<br />#REGION_POSITION_08#</td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'<div id="t20Tabs" class="tablight">#PARENT_TAB_CELLS#</div>'||chr(10)||
'<';

c3:=c3||'/div>'||chr(10)||
'<div id="t20tablist">#TAB_CELLS#</div>'||chr(10)||
'<div id="t20BreadCrumbsLeft">#REGION_POSITION_01#</div>'||chr(10)||
'<table border="0" cellpadding="0" cellspacing="0" summary="" id="t20PageBody"  width="100%" height="70%">'||chr(10)||
'<td valign="top" width="200" id="t20ContentLeft">#REGION_POSITION_02#<br /></td>'||chr(10)||
'<td width="100%" valign="top" id="t20ContentBody">'||chr(10)||
'<div id="t20Messages">#GLOBAL_NOTIFICATION##SUCCESS_MESSAGE##';

c3:=c3||'NOTIFICATION_MESSAGE#</div>'||chr(10)||
'<div id="t20ContentMiddle">#BOX_BODY##REGION_POSITION_04#</div>'||chr(10)||
'</td>'||chr(10)||
'<td valign="top" width="200" id="t20ContentRight">#REGION_POSITION_03#<br /></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>';

wwv_flow_api.create_template(
  p_id=> 1617700313593358 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'Two Level Tabs with Sidebar',
  p_body_title=> '',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">'||chr(10)||
'<tr>'||chr(10)||
'<td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td><td class="tM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td></tr>'||chr(10)||
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</td><td class="R"></td></tr>'||chr(10)||
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>'||chr(10)||
'</table>',
  p_current_tab=> '<a href="#TAB_LINK#" class="current">#TAB_LABEL#</a>'||chr(10)||
'',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '<a href="#TAB_LINK#">#TAB_LABEL#</a>',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '<a href="#TAB_LINK#" class="t20CurrentTab">#TAB_LABEL#</a>'||chr(10)||
'',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '<a href="#TAB_LINK#">#TAB_LABEL#</a>'||chr(10)||
'',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">'||chr(10)||
'<tr>'||chr(10)||
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td>'||chr(10)||
'<td class="tM"></td>'||chr(10)||
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</td><td class="R"></td></tr>'||chr(10)||
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>'||chr(10)||
'</table>',
  p_navigation_bar=> '#BAR_BODY#',
  p_navbar_entry=> '<a href="#LINK#" class="t20NavBar">#TEXT#</a> |',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> ' summary="" cellpadding="0" border="0" cellspacing="5" align="left"',
  p_breadcrumb_def_reg_pos => 'REGION_POSITION_01',
  p_theme_id  => 20,
  p_theme_class_id => 18,
  p_translate_this_template => 'N',
  p_template_comment => '');
end;
 
null;
 
end;
/

--application/shared_components/user_interface/templates/page/two_level_tabs_with_sidebar_custom_4
prompt  ......Page template 1618025435593358
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">'||chr(10)||
'<head>'||chr(10)||
'<title>#TITLE#</title>'||chr(10)||
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/theme_3_1.css" type="text/css" />'||chr(10)||
'<!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/ie.css" type="text/css" /><![endif]-->'||chr(10)||
'#HEAD#'||chr(10)||
'</head>'||chr(10)||
'<body #ONLOAD#>#FORM_OPEN#';

c2:=c2||'<table border="0" cellpadding="0" cellspacing="0" summary="" id="t20PageFooter" width="100%">'||chr(10)||
'<tr>'||chr(10)||
'<td id="t20Left" valign="top"><span id="t20UserPrompt">&APP_USER.</span><br /></td>'||chr(10)||
'<td id="t20Center" valign="top">#REGION_POSITION_05#</td>'||chr(10)||
'<td id="t20Right" valign="top"><span id="t20Customize">#CUSTOMIZE#</span><br /></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'<br class="t20Break"/>'||chr(10)||
'#FORM_CLOSE# '||chr(10)||
'</body>'||chr(10)||
'</html>';

c3:=c3||'<div id="t20PageHeader">'||chr(10)||
'<table border="0" cellpadding="0" cellspacing="0" summary="">'||chr(10)||
'<tr>'||chr(10)||
'<td id="t20Logo" valign="top">#LOGO#<br />#REGION_POSITION_06#</td>'||chr(10)||
'<td id="t20HeaderMiddle"  valign="top" width="100%">#REGION_POSITION_07#<br /></td>'||chr(10)||
'<td id="t20NavBar" valign="top">#NAVIGATION_BAR#<br />#REGION_POSITION_08#</td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'<table id="t20Tabs" border="0" cellpadding="0" cellspacing="0';

c3:=c3||'" summary=""><tr>#PARENT_TAB_CELLS#</tr></table>'||chr(10)||
'</div>'||chr(10)||
'<div id="t20ChildTabs">#TAB_CELLS#</div>'||chr(10)||
'<div style="background-color:none;">#REGION_POSITION_01#</div>'||chr(10)||
'<table border="0" cellpadding="0" cellspacing="0" summary="" id="t20PageBody"  width="100%" height="70%">'||chr(10)||
'<td valign="top" width="200" id="t20ContentLeft">#REGION_POSITION_02#<br /></td>'||chr(10)||
'<td valign="top" id="t20ContentBody">'||chr(10)||
'<div id="t20Mes';

c3:=c3||'sages">#GLOBAL_NOTIFICATION##SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>'||chr(10)||
'<div id="t20ContentMiddle">#BOX_BODY##REGION_POSITION_04#</div>'||chr(10)||
'</td>'||chr(10)||
'<td valign="top" width="200" id="t20ContentRight">#REGION_POSITION_03#<br /></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>';

wwv_flow_api.create_template(
  p_id=> 1618025435593358 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'Two Level Tabs with Sidebar  (Custom 4)',
  p_body_title=> '',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">'||chr(10)||
'<tr>'||chr(10)||
'<td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td><td class="tM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td></tr>'||chr(10)||
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</td><td class="R"></td></tr>'||chr(10)||
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>'||chr(10)||
'</table>',
  p_current_tab=> '<a href="#TAB_LINK#" class="t20CurrentTab">#TAB_LABEL#</a>',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '<a href="#TAB_LINK#" class="t20Tab">#TAB_LABEL#</a>',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '<td><img src="#IMAGE_PREFIX#themes/theme_20/topTabL.gif" /></td>'||chr(10)||
'<td class="t20CurrentTab"><a href="#TAB_LINK#">#TAB_LABEL#</a></td>'||chr(10)||
'<td><img src="#IMAGE_PREFIX#themes/theme_20/topTabR.gif" /></td>'||chr(10)||
'<td>&nbsp;</td>',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '<td><img src="#IMAGE_PREFIX#themes/theme_20/topDimTabL.gif" /></td>'||chr(10)||
'<td class="t20Tab"><a href="#TAB_LINK#">#TAB_LABEL#</a></td>'||chr(10)||
'<td><img src="#IMAGE_PREFIX#themes/theme_20/topDimTabR.gif" /></td>'||chr(10)||
'<td>&nbsp;</td>',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<table summary="" border="0" cellpadding="0" cellspacing="0" id="t20Notification">'||chr(10)||
'<tr>'||chr(10)||
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-L.gif" alt="" /></td>'||chr(10)||
'<td class="tM"></td>'||chr(10)||
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxTop-R.gif" alt="" /></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr><td class="L"></td><td width="100%"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''t20Notification'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</td><td class="R"></td></tr>'||chr(10)||
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-L.gif" alt="" /></td><td class="bM"></td><td><img src="#IMAGE_PREFIX#themes/theme_20/msgBoxBtm-R.gif" alt="" /></td></tr>'||chr(10)||
'</table>',
  p_navigation_bar=> '#BAR_BODY#',
  p_navbar_entry=> '<a href="#LINK#" class="t20NavBar">#TEXT#</a> |',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> ' summary="" cellpadding="0" border="0" cellspacing="5" align="left"',
  p_sidebar_def_reg_pos => 'REGION_POSITION_02',
  p_breadcrumb_def_reg_pos => 'REGION_POSITION_01',
  p_theme_id  => 20,
  p_theme_class_id => 11,
  p_translate_this_template => 'N',
  p_template_comment => '');
end;
 
null;
 
end;
/

--application/shared_components/user_interface/templates/page/login
prompt  ......Page template 1670108665970170
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">'||chr(10)||
'<head>'||chr(10)||
'<title>#TITLE#</title>'||chr(10)||
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_18/theme_3_1.css" type="text/css" />'||chr(10)||
'<!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_18/ie.css" type="text/css" /><![endif]-->'||chr(10)||
'#HEAD#'||chr(10)||
'</head>'||chr(10)||
'<body #ONLOAD#>#FORM_OPEN#';

c2:=c2||'#FORM_CLOSE#</body>'||chr(10)||
'</html>'||chr(10)||
'';

c3:=c3||'<div class="t18messages">#GLOBAL_NOTIFICATION##SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>'||chr(10)||
'<table align="center" border="0" cellpadding="0" cellspacing="0" summary="" class="t18Login">'||chr(10)||
'<tr>'||chr(10)||
'<td>#BOX_BODY##REGION_POSITION_02##REGION_POSITION_03##REGION_POSITION_04##REGION_POSITION_05##REGION_POSITION_06##REGION_POSITION_07##REGION_POSITION_08#</td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'';

wwv_flow_api.create_template(
  p_id=> 1670108665970170 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'Login',
  p_body_title=> '',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<div class="t18success" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</div>',
  p_current_tab=> '',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<div class="t18notification" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</div>',
  p_navigation_bar=> '<div id="t18NavigationBar">#BAR_BODY#</div>',
  p_navbar_entry=> '<a href="#LINK#" class="t18NavigationBar">#TEXT#</a> |',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> ' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"',
  p_theme_id  => 18,
  p_theme_class_id => 6,
  p_translate_this_template => 'N',
  p_template_comment => '');
end;
 
null;
 
end;
/

--application/shared_components/user_interface/templates/page/no_tabs
prompt  ......Page template 1670324653970171
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">'||chr(10)||
'<head>'||chr(10)||
'<title>#TITLE#</title>'||chr(10)||
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_18/theme_3_1.css" type="text/css" />'||chr(10)||
'<!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_18/ie.css" type="text/css" /><![endif]-->'||chr(10)||
'#HEAD#'||chr(10)||
'</head>'||chr(10)||
'<body #ONLOAD#>#FORM_OPEN#';

c2:=c2||'<br class="t18Break"/>'||chr(10)||
'#FORM_CLOSE# '||chr(10)||
'</body>'||chr(10)||
'</html>';

c3:=c3||'<table border="0" cellpadding="0" cellspacing="0" summary="" width="100%">'||chr(10)||
'<tr>'||chr(10)||
'<td id="t18Logo" valign="top">#LOGO#<br />#REGION_POSITION_06#</td>'||chr(10)||
'<td id="t18HeaderMiddle"  valign="top" width="100%">#REGION_POSITION_07#<br /></td>'||chr(10)||
'<td id="t18NavBar" valign="top">#NAVIGATION_BAR#<br />#REGION_POSITION_08#</td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'<table border="0" cellpadding="0" cellspacing="0" summary="" id="t18PageB';

c3:=c3||'ody"  width="80%" height="70%" align="center">'||chr(10)||
'<tr>'||chr(10)||
'<td valign="top" height="3"><img src="#IMAGE_PREFIX#themes/theme_18/page_tl.gif" alt="" /></td>'||chr(10)||
'<td class="t18TopMiddleFill"><img src="#IMAGE_PREFIX#themes/theme_18/page_tm.gif" alt="" /></td>'||chr(10)||
'<td valign="top" height="3"><img src="#IMAGE_PREFIX#themes/theme_18/page_tr.gif" alt="" /></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td class="t18PageLeft"><br /></td>'||chr(10)||
'<td valign="';

c3:=c3||'top">#REGION_POSITION_01#</td>'||chr(10)||
'<td class="t18PageRight" style="background:url(#IMAGE_PREFIX#themes/theme_18/page_r.gif) repeat-y;"><br /></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td valign="bottom" height="3"><img src="#IMAGE_PREFIX#themes/theme_18/page_bl.gif" alt="" /></td>'||chr(10)||
'<td class="t18BottomMiddleFill"><img src="#IMAGE_PREFIX#themes/theme_18/page_bm.gif" alt="" /></td>'||chr(10)||
'<td valign="bottom" height="3"><img src="#IMAGE';

c3:=c3||'_PREFIX#themes/theme_18/page_br.gif" alt="" /></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td valign="bottom" height="3" colspan="3" style="background-color:#EFF2F3;"><br /></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td valign="top" height="3"><img src="#IMAGE_PREFIX#themes/theme_18/page_tl.gif" alt="" /></td>'||chr(10)||
'<td class="t18TopMiddleFill"><img src="#IMAGE_PREFIX#themes/theme_18/page_tm.gif" alt="" /></td>'||chr(10)||
'<td valign="top" height="3"><img src="#IMAGE';

c3:=c3||'_PREFIX#themes/theme_18/page_tr.gif" alt="" /></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td class="t18PageLeft"><br /></td>'||chr(10)||
'<td valign="top" id="t18ContentBody" height="100%" width="100%">'||chr(10)||
'<div id="t18Messages">#GLOBAL_NOTIFICATION##SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>'||chr(10)||
'<div id="t18ContentMiddle" style="padding:5px;">#BOX_BODY##REGION_POSITION_02##REGION_POSITION_04#</div>'||chr(10)||
'</td>'||chr(10)||
'<td class="t18PageRight"><br /></td>';

c3:=c3||''||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td valign="bottom" height="3"><img src="#IMAGE_PREFIX#themes/theme_18/page_bl.gif" alt="" /></td>'||chr(10)||
'<td class="t18BottomMiddleFill"><img src="#IMAGE_PREFIX#themes/theme_18/page_bm.gif" alt="" /></td>'||chr(10)||
'<td valign="bottom" height="3"><img src="#IMAGE_PREFIX#themes/theme_18/page_br.gif" alt="" /></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td valign="bottom" height="3" colspan="3" style="background-color:#EFF2F3;"><b';

c3:=c3||'r /><br /></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td valign="top" height="3"><img src="#IMAGE_PREFIX#themes/theme_18/page_tl.gif" alt="" /></td>'||chr(10)||
'<td class="t18TopMiddleFill"><img src="#IMAGE_PREFIX#themes/theme_18/page_tm.gif" alt="" /></td>'||chr(10)||
'<td valign="top" height="3"><img src="#IMAGE_PREFIX#themes/theme_18/page_tr.gif" alt="" /></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td class="t18PageLeft"><br /></td>'||chr(10)||
'<td valign="top"><div>#REGION_POSITIO';

c3:=c3||'N_03#</div><div><table border="0" cellpadding="0" cellspacing="0" summary="" id="t18PageFooter" width="100%" style="clear:both">'||chr(10)||
'<tr>'||chr(10)||
'<td id="t18Left" valign="top"><span id="t18UserPrompt">&APP_USER.</span><br /></td>'||chr(10)||
'<td id="t18Center" valign="top">#REGION_POSITION_05#</td>'||chr(10)||
'<td id="t18Right" valign="top"><span id="t18Customize">#CUSTOMIZE#</span><br /></td>'||chr(10)||
'</tr>'||chr(10)||
'</table></div></td>'||chr(10)||
'<td class="t1';

c3:=c3||'8PageRight"><br /></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td valign="bottom" height="3"><img src="#IMAGE_PREFIX#themes/theme_18/page_bl.gif" alt="" /></td>'||chr(10)||
'<td class="t18BottomMiddleFill"><img src="#IMAGE_PREFIX#themes/theme_18/page_bm.gif" alt="" /></td>'||chr(10)||
'<td valign="bottom" height="3"><img src="#IMAGE_PREFIX#themes/theme_18/page_br.gif" alt="" /></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>';

wwv_flow_api.create_template(
  p_id=> 1670324653970171 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'No Tabs',
  p_body_title=> '',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<div class="t18success" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</div>',
  p_current_tab=> '',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<div class="t18notification" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</div>',
  p_navigation_bar=> '#BAR_BODY#',
  p_navbar_entry=> '<a href="#LINK#" class="t18NavBar">#TEXT#</a> |',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> ' summary="" cellpadding="0" border="0" cellspacing="0" align="left"',
  p_sidebar_def_reg_pos => 'REGION_POSITION_02',
  p_breadcrumb_def_reg_pos => 'REGION_POSITION_01',
  p_theme_id  => 18,
  p_theme_class_id => 3,
  p_translate_this_template => 'N',
  p_template_comment => '');
end;
 
null;
 
end;
/

--application/shared_components/user_interface/templates/page/no_tabs_with_sidebar
prompt  ......Page template 1670625455970172
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">'||chr(10)||
'<head>'||chr(10)||
'<title>#TITLE#</title>'||chr(10)||
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_18/theme_3_1.css" type="text/css" />'||chr(10)||
'<!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_18/ie.css" type="text/css" /><![endif]-->'||chr(10)||
'#HEAD#'||chr(10)||
'</head>'||chr(10)||
'<body #ONLOAD#>#FORM_OPEN#';

c2:=c2||'<br class="t18Break"/>'||chr(10)||
'#FORM_CLOSE# '||chr(10)||
'</body>'||chr(10)||
'</html>';

c3:=c3||'<table border="0" cellpadding="0" cellspacing="0" summary="" width="100%">'||chr(10)||
'<tr>'||chr(10)||
'<td id="t18Logo" valign="top">#LOGO#<br />#REGION_POSITION_06#</td>'||chr(10)||
'<td id="t18HeaderMiddle"  valign="top" width="100%">#REGION_POSITION_07#<br /></td>'||chr(10)||
'<td id="t18NavBar" valign="top">#NAVIGATION_BAR#<br />#REGION_POSITION_08#</td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'<table border="0" cellpadding="0" cellspacing="0" summary="" id="t18PageB';

c3:=c3||'ody"  width="80%" height="70%" align="center">'||chr(10)||
'<tr>'||chr(10)||
'<td valign="top" height="3"><img src="#IMAGE_PREFIX#themes/theme_18/page_tl.gif" alt="" /></td>'||chr(10)||
'<td class="t18TopMiddleFill"><img src="#IMAGE_PREFIX#themes/theme_18/page_tm.gif" alt="" /></td>'||chr(10)||
'<td valign="top" height="3"><img src="#IMAGE_PREFIX#themes/theme_18/page_tr.gif" alt="" /></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td class="t18PageLeft"><br /></td>'||chr(10)||
'<td valign="';

c3:=c3||'top">#REGION_POSITION_01#</td>'||chr(10)||
'<td class="t18PageRight" style="background:url(#IMAGE_PREFIX#themes/theme_18/page_r.gif) repeat-y;"><br /></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td valign="bottom" height="3"><img src="#IMAGE_PREFIX#themes/theme_18/page_bl.gif" alt="" /></td>'||chr(10)||
'<td class="t18BottomMiddleFill"><img src="#IMAGE_PREFIX#themes/theme_18/page_bm.gif" alt="" /></td>'||chr(10)||
'<td valign="bottom" height="3"><img src="#IMAGE';

c3:=c3||'_PREFIX#themes/theme_18/page_br.gif" alt="" /></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td valign="bottom" height="3" colspan="3" style="background-color:#EFF2F3;"><br /></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td valign="top" height="3"><img src="#IMAGE_PREFIX#themes/theme_18/page_tl.gif" alt="" /></td>'||chr(10)||
'<td class="t18TopMiddleFill"><img src="#IMAGE_PREFIX#themes/theme_18/page_tm.gif" alt="" /></td>'||chr(10)||
'<td valign="top" height="3"><img src="#IMAGE';

c3:=c3||'_PREFIX#themes/theme_18/page_tr.gif" alt="" /></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td class="t18PageLeft"><br /></td>'||chr(10)||
'<td valign="top" id="t18ContentBody" height="100%">'||chr(10)||
'<table summary="" border="0" cellpadding="0" cellspacing="0">'||chr(10)||
'<tr>'||chr(10)||
'<td valign="top">#REGION_POSITION_02#</td>'||chr(10)||
'<td valign="top" width="100%">'||chr(10)||
'<div id="t18Messages">#GLOBAL_NOTIFICATION##SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>'||chr(10)||
'<div id="t18Content';

c3:=c3||'Middle" style="padding:5px;">#BOX_BODY##REGION_POSITION_04#</div>'||chr(10)||
'</td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'</td>'||chr(10)||
'<td class="t18PageRight"><br /></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td valign="bottom" height="3"><img src="#IMAGE_PREFIX#themes/theme_18/page_bl.gif" alt="" /></td>'||chr(10)||
'<td class="t18BottomMiddleFill"><img src="#IMAGE_PREFIX#themes/theme_18/page_bm.gif" alt="" /></td>'||chr(10)||
'<td valign="bottom" height="3"><img src="#IMAGE_PREFIX#theme';

c3:=c3||'s/theme_18/page_br.gif" alt="" /></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td valign="bottom" height="3" colspan="3" style="background-color:#EFF2F3;"><br /><br /></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td valign="top" height="3"><img src="#IMAGE_PREFIX#themes/theme_18/page_tl.gif" alt="" /></td>'||chr(10)||
'<td class="t18TopMiddleFill"><img src="#IMAGE_PREFIX#themes/theme_18/page_tm.gif" alt="" /></td>'||chr(10)||
'<td valign="top" height="3"><img src="#IMAGE_PREFIX';

c3:=c3||'#themes/theme_18/page_tr.gif" alt="" /></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td class="t18PageLeft"><br /></td>'||chr(10)||
'<td valign="top"><div>#REGION_POSITION_03#</div><div><table border="0" cellpadding="0" cellspacing="0" summary="" id="t18PageFooter" width="100%" style="clear:both">'||chr(10)||
'<tr>'||chr(10)||
'<td id="t18Left" valign="top"><span id="t18UserPrompt">&APP_USER.</span><br /></td>'||chr(10)||
'<td id="t18Center" valign="top">#REGION_POSITION_05#<';

c3:=c3||'/td>'||chr(10)||
'<td id="t18Right" valign="top"><span id="t18Customize">#CUSTOMIZE#</span><br /></td>'||chr(10)||
'</tr>'||chr(10)||
'</table></div></td>'||chr(10)||
'<td class="t18PageRight"><br /></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td valign="bottom" height="3"><img src="#IMAGE_PREFIX#themes/theme_18/page_bl.gif" alt="" /></td>'||chr(10)||
'<td class="t18BottomMiddleFill"><img src="#IMAGE_PREFIX#themes/theme_18/page_bm.gif" alt="" /></td>'||chr(10)||
'<td valign="bottom" height="3"><img s';

c3:=c3||'rc="#IMAGE_PREFIX#themes/theme_18/page_br.gif" alt="" /></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>';

wwv_flow_api.create_template(
  p_id=> 1670625455970172 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'No Tabs with Sidebar',
  p_body_title=> '',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<div class="t18success" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</div>',
  p_current_tab=> '',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<div class="t18notification" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</div>',
  p_navigation_bar=> '#BAR_BODY#',
  p_navbar_entry=> '<a href="#LINK#" class="t18NavBar">#TEXT#</a> |',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> ' summary="" cellpadding="0" border="0" cellspacing="0" align="left"',
  p_sidebar_def_reg_pos => 'REGION_POSITION_02',
  p_breadcrumb_def_reg_pos => 'REGION_POSITION_01',
  p_theme_id  => 18,
  p_theme_class_id => 17,
  p_translate_this_template => 'N',
  p_template_comment => '');
end;
 
null;
 
end;
/

--application/shared_components/user_interface/templates/page/one_level_tabs
prompt  ......Page template 1670927070970172
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">'||chr(10)||
'<head>'||chr(10)||
'<title>#TITLE#</title>'||chr(10)||
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_18/theme_3_1.css" type="text/css" />'||chr(10)||
'<!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_18/ie.css" type="text/css" /><![endif]-->'||chr(10)||
'#HEAD#'||chr(10)||
'</head>'||chr(10)||
'<body #ONLOAD#>#FORM_OPEN#';

c2:=c2||'<br class="t18Break"/>'||chr(10)||
'#FORM_CLOSE# '||chr(10)||
'</body>'||chr(10)||
'</html>';

c3:=c3||'<table border="0" cellpadding="0" cellspacing="0" summary="" width="100%">'||chr(10)||
'<tr>'||chr(10)||
'<td id="t18Logo" valign="top">#LOGO#<br />#REGION_POSITION_06#</td>'||chr(10)||
'<td id="t18HeaderMiddle"  valign="top" width="100%">#REGION_POSITION_07#<br /></td>'||chr(10)||
'<td id="t18NavBar" valign="top">#NAVIGATION_BAR#<br />#REGION_POSITION_08#</td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'<div id="t18Tabs">#TAB_CELLS#</div>'||chr(10)||
'<table border="0" cellpadding="0" cel';

c3:=c3||'lspacing="0" summary="" id="t18PageBody"  width="80%" height="70%" align="center">'||chr(10)||
'<tr>'||chr(10)||
'<td valign="top" height="3"><img src="#IMAGE_PREFIX#themes/theme_18/page_tl.gif" alt="" /></td>'||chr(10)||
'<td class="t18TopMiddleFill"><img src="#IMAGE_PREFIX#themes/theme_18/page_tm.gif" alt="" /></td>'||chr(10)||
'<td valign="top" height="3"><img src="#IMAGE_PREFIX#themes/theme_18/page_tr.gif" alt="" /></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td class="t';

c3:=c3||'18PageLeft"><br /></td>'||chr(10)||
'<td valign="top">#REGION_POSITION_01#</td>'||chr(10)||
'<td class="t18PageRight"><br /></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td valign="bottom" height="3"><img src="#IMAGE_PREFIX#themes/theme_18/page_bl.gif" alt="" /></td>'||chr(10)||
'<td class="t18BottomMiddleFill"><img src="#IMAGE_PREFIX#themes/theme_18/page_bm.gif" alt="" /></td>'||chr(10)||
'<td valign="bottom" height="3"><img src="#IMAGE_PREFIX#themes/theme_18/page_br.gif" al';

c3:=c3||'t="" /></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td valign="bottom" height="3" colspan="3" style="background-color:#EFF2F3;"><br /></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td valign="top" height="3"><img src="#IMAGE_PREFIX#themes/theme_18/page_tl.gif" alt="" /></td>'||chr(10)||
'<td class="t18TopMiddleFill"><img src="#IMAGE_PREFIX#themes/theme_18/page_tm.gif" alt="" /></td>'||chr(10)||
'<td valign="top" height="3"><img src="#IMAGE_PREFIX#themes/theme_18/page_tr.gif" al';

c3:=c3||'t="" /></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td class="t18PageLeft"><br /></td>'||chr(10)||
'<td valign="top" id="t18ContentBody" height="100%" width="100%">'||chr(10)||
'<div id="t18Messages">#GLOBAL_NOTIFICATION##SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>'||chr(10)||
'<div id="t18ContentMiddle">#BOX_BODY##REGION_POSITION_02##REGION_POSITION_04#</div>'||chr(10)||
'</td>'||chr(10)||
'<td class="t18PageRight"><br /></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td valign="bottom" height="3"><img src="#IMAGE_';

c3:=c3||'PREFIX#themes/theme_18/page_bl.gif" alt="" /></td>'||chr(10)||
'<td class="t18BottomMiddleFill"><img src="#IMAGE_PREFIX#themes/theme_18/page_bm.gif" alt="" /></td>'||chr(10)||
'<td valign="bottom" height="3"><img src="#IMAGE_PREFIX#themes/theme_18/page_br.gif" alt="" /></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td valign="bottom" height="3" colspan="3" style="background-color:#EFF2F3;"><br /><br /></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td valign="top" height="3"><img ';

c3:=c3||'src="#IMAGE_PREFIX#themes/theme_18/page_tl.gif" alt="" /></td>'||chr(10)||
'<td class="t18TopMiddleFill"><img src="#IMAGE_PREFIX#themes/theme_18/page_tm.gif" alt="" /></td>'||chr(10)||
'<td valign="top" height="3"><img src="#IMAGE_PREFIX#themes/theme_18/page_tr.gif" alt="" /></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td class="t18PageLeft"><br /></td>'||chr(10)||
'<td valign="top"><div>#REGION_POSITION_03#</div><div><table border="0" cellpadding="0" cellspacin';

c3:=c3||'g="0" summary="" id="t18PageFooter" width="100%" style="clear:both">'||chr(10)||
'<tr>'||chr(10)||
'<td id="t18Left" valign="top"><span id="t18UserPrompt">&APP_USER.</span><br /></td>'||chr(10)||
'<td id="t18Center" valign="top">#REGION_POSITION_05#</td>'||chr(10)||
'<td id="t18Right" valign="top"><span id="t18Customize">#CUSTOMIZE#</span><br /></td>'||chr(10)||
'</tr>'||chr(10)||
'</table></div></td>'||chr(10)||
'<td class="t18PageRight"><br /></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td valign="bottom" heigh';

c3:=c3||'t="3"><img src="#IMAGE_PREFIX#themes/theme_18/page_bl.gif" alt="" /></td>'||chr(10)||
'<td class="t18BottomMiddleFill"><img src="#IMAGE_PREFIX#themes/theme_18/page_bm.gif" alt="" /></td>'||chr(10)||
'<td valign="bottom" height="3"><img src="#IMAGE_PREFIX#themes/theme_18/page_br.gif" alt="" /></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>';

wwv_flow_api.create_template(
  p_id=> 1670927070970172 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'One Level Tabs',
  p_body_title=> '',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<div class="t18success" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</div>',
  p_current_tab=> '<span class="t18CurrentTab">#TAB_LABEL#</span>',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '<a href="#TAB_LINK#" class="t18Tab">#TAB_LABEL#</a>',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<div class="t18notification" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</div>',
  p_navigation_bar=> '#BAR_BODY#',
  p_navbar_entry=> '<a href="#LINK#" class="t18NavBar">#TEXT#</a> |',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> ' summary="" cellpadding="0" border="0" cellspacing="5" align="left"',
  p_breadcrumb_def_reg_pos => 'REGION_POSITION_01',
  p_theme_id  => 18,
  p_theme_class_id => 1,
  p_template_comment => '');
end;
 
null;
 
end;
/

--application/shared_components/user_interface/templates/page/one_level_tabs_with_sidebar
prompt  ......Page template 1671222454970172
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">'||chr(10)||
'<head>'||chr(10)||
'<title>#TITLE#</title>'||chr(10)||
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_18/theme_3_1.css" type="text/css" />'||chr(10)||
'<!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_18/ie.css" type="text/css" /><![endif]-->'||chr(10)||
'#HEAD#'||chr(10)||
'</head>'||chr(10)||
'<body #ONLOAD#>#FORM_OPEN#';

c2:=c2||'<br class="t18Break"/>'||chr(10)||
'#FORM_CLOSE# '||chr(10)||
'</body>'||chr(10)||
'</html>';

c3:=c3||'<table border="0" cellpadding="0" cellspacing="0" summary="" width="100%">'||chr(10)||
'<tr>'||chr(10)||
'<td id="t18Logo" valign="top">#LOGO#<br />#REGION_POSITION_06#</td>'||chr(10)||
'<td id="t18HeaderMiddle"  valign="top" width="100%">#REGION_POSITION_07#<br /></td>'||chr(10)||
'<td id="t18NavBar" valign="top">#NAVIGATION_BAR#<br />#REGION_POSITION_08#</td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'<div id="t18Tabs">#TAB_CELLS#</div>'||chr(10)||
'<table border="0" cellpadding="0" cel';

c3:=c3||'lspacing="0" summary="" id="t18PageBody"  width="80%" height="70%" align="center">'||chr(10)||
'<tr>'||chr(10)||
'<td valign="top" height="3"><img src="#IMAGE_PREFIX#themes/theme_18/page_tl.gif" alt="" /></td>'||chr(10)||
'<td class="t18TopMiddleFill"><img src="#IMAGE_PREFIX#themes/theme_18/page_tm.gif" alt="" /></td>'||chr(10)||
'<td valign="top" height="3"><img src="#IMAGE_PREFIX#themes/theme_18/page_tr.gif" alt="" /></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td class="t';

c3:=c3||'18PageLeft"><br /></td>'||chr(10)||
'<td valign="top">#REGION_POSITION_01#</td>'||chr(10)||
'<td class="t18PageRight"><br /></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td valign="bottom" height="3"><img src="#IMAGE_PREFIX#themes/theme_18/page_bl.gif" alt="" /></td>'||chr(10)||
'<td class="t18BottomMiddleFill"><img src="#IMAGE_PREFIX#themes/theme_18/page_bm.gif" alt="" /></td>'||chr(10)||
'<td valign="bottom" height="3"><img src="#IMAGE_PREFIX#themes/theme_18/page_br.gif" al';

c3:=c3||'t="" /></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td valign="bottom" height="3" colspan="3" style="background-color:#EFF2F3;"><br /></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td valign="top" height="3"><img src="#IMAGE_PREFIX#themes/theme_18/page_tl.gif" alt="" /></td>'||chr(10)||
'<td class="t18TopMiddleFill"><img src="#IMAGE_PREFIX#themes/theme_18/page_tm.gif" alt="" /></td>'||chr(10)||
'<td valign="top" height="3"><img src="#IMAGE_PREFIX#themes/theme_18/page_tr.gif" al';

c3:=c3||'t="" /></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td class="t18PageLeft"><br /></td>'||chr(10)||
'<td valign="top" id="t18ContentBody" height="100%">'||chr(10)||
'<table summary="" border="0" cellpadding="0" cellspacing="0">'||chr(10)||
'<tr>'||chr(10)||
'<td valign="top">#REGION_POSITION_02#</td>'||chr(10)||
'<td valign="top" width="100%">'||chr(10)||
'<div id="t18Messages">#GLOBAL_NOTIFICATION##SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>'||chr(10)||
'<div id="t18ContentMiddle">#BOX_BODY##REGION_POSITION_04#<';

c3:=c3||'/div>'||chr(10)||
'</td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'</td>'||chr(10)||
'<td class="t18PageRight"><br /></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td valign="bottom" height="3"><img src="#IMAGE_PREFIX#themes/theme_18/page_bl.gif" alt="" /></td>'||chr(10)||
'<td class="t18BottomMiddleFill"><img src="#IMAGE_PREFIX#themes/theme_18/page_bm.gif" alt="" /></td>'||chr(10)||
'<td valign="bottom" height="3"><img src="#IMAGE_PREFIX#themes/theme_18/page_br.gif" alt="" /></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td valign';

c3:=c3||'="bottom" height="3" colspan="3" style="background-color:#EFF2F3;"><br /><br /></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td valign="top" height="3"><img src="#IMAGE_PREFIX#themes/theme_18/page_tl.gif" alt="" /></td>'||chr(10)||
'<td class="t18TopMiddleFill"><img src="#IMAGE_PREFIX#themes/theme_18/page_tm.gif" alt="" /></td>'||chr(10)||
'<td valign="top" height="3"><img src="#IMAGE_PREFIX#themes/theme_18/page_tr.gif" alt="" /></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td ';

c3:=c3||'class="t18PageLeft"><br /></td>'||chr(10)||
'<td valign="top"><div>#REGION_POSITION_03#</div><div><table border="0" cellpadding="0" cellspacing="0" summary="" id="t18PageFooter" width="100%" style="clear:both">'||chr(10)||
'<tr>'||chr(10)||
'<td id="t18Left" valign="top"><span id="t18UserPrompt">&APP_USER.</span><br /></td>'||chr(10)||
'<td id="t18Center" valign="top">#REGION_POSITION_05#</td>'||chr(10)||
'<td id="t18Right" valign="top"><span id="t18Customize">';

c3:=c3||'#CUSTOMIZE#</span><br /></td>'||chr(10)||
'</tr>'||chr(10)||
'</table></div></td>'||chr(10)||
'<td class="t18PageRight"><br /></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td valign="bottom" height="3"><img src="#IMAGE_PREFIX#themes/theme_18/page_bl.gif" alt="" /></td>'||chr(10)||
'<td class="t18BottomMiddleFill"><img src="#IMAGE_PREFIX#themes/theme_18/page_bm.gif" alt="" /></td>'||chr(10)||
'<td valign="bottom" height="3"><img src="#IMAGE_PREFIX#themes/theme_18/page_br.gif" alt="" /></td';

c3:=c3||'>'||chr(10)||
'</tr>'||chr(10)||
'</table>';

wwv_flow_api.create_template(
  p_id=> 1671222454970172 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'One Level Tabs with Sidebar',
  p_body_title=> '',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<div class="t18success" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</div>',
  p_current_tab=> '<span class="t18CurrentTab">#TAB_LABEL#</span>',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '<a href="#TAB_LINK#" class="t18Tab">#TAB_LABEL#</a>',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<div class="t18notification" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</div>',
  p_navigation_bar=> '#BAR_BODY#',
  p_navbar_entry=> '<a href="#LINK#" class="t18NavBar">#TEXT#</a> |',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> ' summary="" cellpadding="0" border="0" cellspacing="5" align="left"',
  p_sidebar_def_reg_pos => 'REGION_POSITION_02',
  p_breadcrumb_def_reg_pos => 'REGION_POSITION_01',
  p_theme_id  => 18,
  p_theme_class_id => 16,
  p_translate_this_template => 'N',
  p_template_comment => '');
end;
 
null;
 
end;
/

--application/shared_components/user_interface/templates/page/popup
prompt  ......Page template 1671509717970173
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">'||chr(10)||
'<head>'||chr(10)||
'<title>#TITLE#</title>'||chr(10)||
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_18/theme_3_1.css" type="text/css" />'||chr(10)||
'<!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_18/ie.css" type="text/css" /><![endif]-->'||chr(10)||
'#HEAD#'||chr(10)||
'</head>'||chr(10)||
'<body #ONLOAD#>#FORM_OPEN#';

c2:=c2||'#FORM_CLOSE#</body>'||chr(10)||
'</html>';

c3:=c3||'<table summary="" cellpadding="0" width="100%" cellspacing="0" border="0">'||chr(10)||
'<tr>'||chr(10)||
'<td valign="top">#LOGO##REGION_POSITION_06#</td>'||chr(10)||
'<td width="100%" valign="top">#REGION_POSITION_07#</td>'||chr(10)||
'<td valign="top">#REGION_POSITION_08#</td>'||chr(10)||
'</table>'||chr(10)||
'<table summary="" cellpadding="0" width="100%" cellspacing="0" border="0">'||chr(10)||
'<tr>'||chr(10)||
'<td width="100%" valign="top">'||chr(10)||
'<div style="border:1px solid black;">#SUCCESS_MESSAG';

c3:=c3||'E##NOTIFICATION_MESSAGE#</div>'||chr(10)||
'#BOX_BODY##REGION_POSITION_04#</td>'||chr(10)||
'<td valign="top">#REGION_POSITION_03#<br /></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'#REGION_POSITION_05#'||chr(10)||
'';

wwv_flow_api.create_template(
  p_id=> 1671509717970173 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'Popup',
  p_body_title=> '',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<div class="t18success" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</div>',
  p_current_tab=> '',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<div class="t18notification" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</div>',
  p_navigation_bar=> '<div class="t18NavigationBar">#BAR_BODY#</div>',
  p_navbar_entry=> '<a href="#LINK#" class="t18NavigationBar">#TEXT#</a>',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> ' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"',
  p_theme_id  => 18,
  p_theme_class_id => 4,
  p_translate_this_template => 'N',
  p_template_comment => '');
end;
 
null;
 
end;
/

--application/shared_components/user_interface/templates/page/printer_friendly
prompt  ......Page template 1671817437970173
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">'||chr(10)||
'<head>'||chr(10)||
'<title>#TITLE#</title>'||chr(10)||
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_18/theme_3_1.css" type="text/css" />'||chr(10)||
'<!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_18/ie.css" type="text/css" /><![endif]-->'||chr(10)||
'#HEAD#'||chr(10)||
'</head>'||chr(10)||
'<body #ONLOAD#>#FORM_OPEN#';

c2:=c2||'<table border="0" cellpadding="0" cellspacing="0" summary="" id="t18PageFooter" width="100%">'||chr(10)||
'<tr>'||chr(10)||
'<td id="t18Left" valign="top"><span id="t18UserPrompt">&APP_USER.</span><br /></td>'||chr(10)||
'<td id="t18Center" valign="top">#REGION_POSITION_05#</td>'||chr(10)||
'<td id="t18Right" valign="top"><span id="t18Customize">#CUSTOMIZE#</span><br /></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'<br class="t18Break"/>'||chr(10)||
'#FORM_CLOSE# '||chr(10)||
'</body>'||chr(10)||
'</html>';

c3:=c3||'<table border="0" cellpadding="0" cellspacing="0" summary="" width="100%">'||chr(10)||
'<tr>'||chr(10)||
'<td id="t18Logo" valign="top">#LOGO#<br />#REGION_POSITION_06#</td>'||chr(10)||
'<td id="t18HeaderMiddle"  valign="top" width="100%">#REGION_POSITION_07#<br /></td>'||chr(10)||
'<td id="t18NavBar" valign="top">#REGION_POSITION_08#</td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'<table summary="" cellpadding="0" width="100%" cellspacing="0" border="0" height="70%">'||chr(10)||
'<tr>'||chr(10)||
'<t';

c3:=c3||'d width="100%" valign="top"><div class="t18messages">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>'||chr(10)||
'#BOX_BODY##REGION_POSITION_02##REGION_POSITION_04#</td>'||chr(10)||
'<td valign="top">#REGION_POSITION_03#<br /></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>';

wwv_flow_api.create_template(
  p_id=> 1671817437970173 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'Printer Friendly',
  p_body_title=> '',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<div class="t18success" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</div>',
  p_current_tab=> '',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<div class="t18notification" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</div>',
  p_navigation_bar=> '<div class="t18NavigationBar">#BAR_BODY#</div>',
  p_navbar_entry=> '<a href="#LINK#" class="t18NavigationBar">#TEXT#</a>',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> ' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"',
  p_theme_id  => 18,
  p_theme_class_id => 5,
  p_translate_this_template => 'N',
  p_template_comment => '3');
end;
 
null;
 
end;
/

--application/shared_components/user_interface/templates/page/two_level_tabs
prompt  ......Page template 1672104840970173
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">'||chr(10)||
'<head>'||chr(10)||
'<title>#TITLE#</title>'||chr(10)||
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_18/theme_3_1.css" type="text/css" />'||chr(10)||
'<!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_18/ie.css" type="text/css" /><![endif]-->'||chr(10)||
'#HEAD#'||chr(10)||
'</head>'||chr(10)||
'<body #ONLOAD#>#FORM_OPEN#';

c2:=c2||'<br class="t18Break"/>'||chr(10)||
'#FORM_CLOSE# '||chr(10)||
'</body>'||chr(10)||
'</html>';

c3:=c3||'<table border="0" cellpadding="0" cellspacing="0" summary="" width="100%">'||chr(10)||
'<tr>'||chr(10)||
'<td id="t18Logo" valign="top">#LOGO#<br />#REGION_POSITION_06#</td>'||chr(10)||
'<td id="t18HeaderMiddle"  valign="top" width="100%">#REGION_POSITION_07#<br /></td>'||chr(10)||
'<td id="t18NavBar" valign="top">#NAVIGATION_BAR#<br />#REGION_POSITION_08#</td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'<div id="t18Tabs">#PARENT_TAB_CELLS#</div>'||chr(10)||
'<div id="t18Tabs2">#TAB_CELLS#';

c3:=c3||'</div>'||chr(10)||
'<table border="0" cellpadding="0" cellspacing="0" summary="" id="t18PageBody"  width="80%" height="70%" align="center">'||chr(10)||
'<tr>'||chr(10)||
'<td valign="top" height="3"><img src="#IMAGE_PREFIX#themes/theme_18/page_tl.gif" alt="" /></td>'||chr(10)||
'<td class="t18TopMiddleFill"><img src="#IMAGE_PREFIX#themes/theme_18/page_tm.gif" alt="" /></td>'||chr(10)||
'<td valign="top" height="3"><img src="#IMAGE_PREFIX#themes/theme_18/page_tr';

c3:=c3||'.gif" alt="" /></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td class="t18PageLeft"><br /></td>'||chr(10)||
'<td valign="top">#REGION_POSITION_01#</td>'||chr(10)||
'<td class="t18PageRight" style="background:url(#IMAGE_PREFIX#themes/theme_18/page_r.gif) repeat-y;"><br /></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td valign="bottom" height="3"><img src="#IMAGE_PREFIX#themes/theme_18/page_bl.gif" alt="" /></td>'||chr(10)||
'<td class="t18BottomMiddleFill"><img src="#IMAGE_PREFIX#themes/them';

c3:=c3||'e_18/page_bm.gif" alt="" /></td>'||chr(10)||
'<td valign="bottom" height="3"><img src="#IMAGE_PREFIX#themes/theme_18/page_br.gif" alt="" /></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td valign="bottom" height="3" colspan="3" style="background-color:#EFF2F3;"><br /></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td valign="top" height="3"><img src="#IMAGE_PREFIX#themes/theme_18/page_tl.gif" alt="" /></td>'||chr(10)||
'<td class="t18TopMiddleFill"><img src="#IMAGE_PREFIX#themes/t';

c3:=c3||'heme_18/page_tm.gif" alt="" /></td>'||chr(10)||
'<td valign="top" height="3"><img src="#IMAGE_PREFIX#themes/theme_18/page_tr.gif" alt="" /></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td class="t18PageLeft"><br /></td>'||chr(10)||
'<td valign="top" id="t18ContentBody" height="100%" width="100%">'||chr(10)||
'<div id="t18Messages">#GLOBAL_NOTIFICATION##SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>'||chr(10)||
'<div id="t18ContentMiddle" style="padding:5px;">#BOX_BODY##REGION_P';

c3:=c3||'OSITION_02##REGION_POSITION_04#</div>'||chr(10)||
'</td>'||chr(10)||
'<td class="t18PageRight"><br /></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td valign="bottom" height="3"><img src="#IMAGE_PREFIX#themes/theme_18/page_bl.gif" alt="" /></td>'||chr(10)||
'<td class="t18BottomMiddleFill"><img src="#IMAGE_PREFIX#themes/theme_18/page_bm.gif" alt="" /></td>'||chr(10)||
'<td valign="bottom" height="3"><img src="#IMAGE_PREFIX#themes/theme_18/page_br.gif" alt="" /></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>';

c3:=c3||''||chr(10)||
'<td valign="bottom" height="3" colspan="3" style="background-color:#EFF2F3;"><br /><br /></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td valign="top" height="3"><img src="#IMAGE_PREFIX#themes/theme_18/page_tl.gif" alt="" /></td>'||chr(10)||
'<td class="t18TopMiddleFill"><img src="#IMAGE_PREFIX#themes/theme_18/page_tm.gif" alt="" /></td>'||chr(10)||
'<td valign="top" height="3"><img src="#IMAGE_PREFIX#themes/theme_18/page_tr.gif" alt="" /></td>'||chr(10)||
'</tr';

c3:=c3||'>'||chr(10)||
'<tr>'||chr(10)||
'<td class="t18PageLeft"><br /></td>'||chr(10)||
'<td valign="top"><div>#REGION_POSITION_03#</div><div><table border="0" cellpadding="0" cellspacing="0" summary="" id="t18PageFooter" width="100%" style="clear:both">'||chr(10)||
'<tr>'||chr(10)||
'<td id="t18Left" valign="top"><span id="t18UserPrompt">&APP_USER.</span><br /></td>'||chr(10)||
'<td id="t18Center" valign="top">#REGION_POSITION_05#</td>'||chr(10)||
'<td id="t18Right" valign="top"><span id="t18';

c3:=c3||'Customize">#CUSTOMIZE#</span><br /></td>'||chr(10)||
'</tr>'||chr(10)||
'</table></div></td>'||chr(10)||
'<td class="t18PageRight"><br /></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td valign="bottom" height="3"><img src="#IMAGE_PREFIX#themes/theme_18/page_bl.gif" alt="" /></td>'||chr(10)||
'<td class="t18BottomMiddleFill"><img src="#IMAGE_PREFIX#themes/theme_18/page_bm.gif" alt="" /></td>'||chr(10)||
'<td valign="bottom" height="3"><img src="#IMAGE_PREFIX#themes/theme_18/page_br.gif" al';

c3:=c3||'t="" /></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'';

wwv_flow_api.create_template(
  p_id=> 1672104840970173 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'Two Level Tabs',
  p_body_title=> '',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<div class="t18success" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</div>',
  p_current_tab=> '<span class="t18CurrentTab">#TAB_LABEL#</span>',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '<a href="#TAB_LINK#" class="t18Tab">#TAB_LABEL#</a>',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '<span class="t18CurrentTab">#TAB_LABEL#</span>',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '<a href="#TAB_LINK#" class="t18Tab">#TAB_LABEL#</a>',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<div class="t18notification" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</div>',
  p_navigation_bar=> '#BAR_BODY#',
  p_navbar_entry=> '<a href="#LINK#" class="t18NavBar">#TEXT#</a> |',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> ' summary="" cellpadding="0" border="0" cellspacing="5" align="left"',
  p_breadcrumb_def_reg_pos => 'REGION_POSITION_01',
  p_theme_id  => 18,
  p_theme_class_id => 2,
  p_translate_this_template => 'N',
  p_template_comment => '8');
end;
 
null;
 
end;
/

--application/shared_components/user_interface/templates/page/two_level_tabs_with_sidebar
prompt  ......Page template 1672413413970173
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">'||chr(10)||
'<head>'||chr(10)||
'<title>#TITLE#</title>'||chr(10)||
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_18/theme_3_1.css" type="text/css" />'||chr(10)||
'<!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_18/ie.css" type="text/css" /><![endif]-->'||chr(10)||
'#HEAD#'||chr(10)||
'</head>'||chr(10)||
'<body #ONLOAD#>#FORM_OPEN#';

c2:=c2||'<br class="t18Break"/>'||chr(10)||
'#FORM_CLOSE# '||chr(10)||
'</body>'||chr(10)||
'</html>';

c3:=c3||'<table border="0" cellpadding="0" cellspacing="0" summary="" width="100%">'||chr(10)||
'<tr>'||chr(10)||
'<td id="t18Logo" valign="top">#LOGO#<br />#REGION_POSITION_06#</td>'||chr(10)||
'<td id="t18HeaderMiddle"  valign="top" width="100%">#REGION_POSITION_07#<br /></td>'||chr(10)||
'<td id="t18NavBar" valign="top">#NAVIGATION_BAR#<br />#REGION_POSITION_08#</td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'<div id="t18Tabs">#PARENT_TAB_CELLS#</div>'||chr(10)||
'<div id="t18Tabs2">#TAB_CELLS#';

c3:=c3||'</div>'||chr(10)||
'<table border="0" cellpadding="0" cellspacing="0" summary="" id="t18PageBody"  width="80%" height="70%" align="center">'||chr(10)||
'<tr>'||chr(10)||
'<td valign="top" height="3"><img src="#IMAGE_PREFIX#themes/theme_18/page_tl.gif" alt="" /></td>'||chr(10)||
'<td class="t18TopMiddleFill"><img src="#IMAGE_PREFIX#themes/theme_18/page_tm.gif" alt="" /></td>'||chr(10)||
'<td valign="top" height="3"><img src="#IMAGE_PREFIX#themes/theme_18/page_tr';

c3:=c3||'.gif" alt="" /></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td class="t18PageLeft"><br /></td>'||chr(10)||
'<td valign="top">#REGION_POSITION_01#</td>'||chr(10)||
'<td class="t18PageRight" style="background:url(#IMAGE_PREFIX#themes/theme_18/page_r.gif) repeat-y;"><br /></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td valign="bottom" height="3"><img src="#IMAGE_PREFIX#themes/theme_18/page_bl.gif" alt="" /></td>'||chr(10)||
'<td class="t18BottomMiddleFill"><img src="#IMAGE_PREFIX#themes/them';

c3:=c3||'e_18/page_bm.gif" alt="" /></td>'||chr(10)||
'<td valign="bottom" height="3"><img src="#IMAGE_PREFIX#themes/theme_18/page_br.gif" alt="" /></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td valign="bottom" height="3" colspan="3" style="background-color:#EFF2F3;"><br /></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td valign="top" height="3"><img src="#IMAGE_PREFIX#themes/theme_18/page_tl.gif" alt="" /></td>'||chr(10)||
'<td class="t18TopMiddleFill"><img src="#IMAGE_PREFIX#themes/t';

c3:=c3||'heme_18/page_tm.gif" alt="" /></td>'||chr(10)||
'<td valign="top" height="3"><img src="#IMAGE_PREFIX#themes/theme_18/page_tr.gif" alt="" /></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td class="t18PageLeft"><br /></td>'||chr(10)||
'<td valign="top" id="t18ContentBody" height="100%">'||chr(10)||
'<table summary="" border="0" cellpadding="0" cellspacing="0">'||chr(10)||
'<tr>'||chr(10)||
'<td valign="top">#REGION_POSITION_02#</td>'||chr(10)||
'<td valign="top" width="100%">'||chr(10)||
'<div id="t18Messages">#GLOBA';

c3:=c3||'L_NOTIFICATION##SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>'||chr(10)||
'<div id="t18ContentMiddle">#BOX_BODY##REGION_POSITION_04#</div>'||chr(10)||
'</td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'</td>'||chr(10)||
'<td class="t18PageRight"><br /></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td valign="bottom" height="3"><img src="#IMAGE_PREFIX#themes/theme_18/page_bl.gif" alt="" /></td>'||chr(10)||
'<td class="t18BottomMiddleFill"><img src="#IMAGE_PREFIX#themes/theme_18/page_bm.gif" alt="" /></td>'||chr(10)||
'<';

c3:=c3||'td valign="bottom" height="3"><img src="#IMAGE_PREFIX#themes/theme_18/page_br.gif" alt="" /></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td valign="bottom" height="3" colspan="3" style="background-color:#EFF2F3;"><br /><br /></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td valign="top" height="3"><img src="#IMAGE_PREFIX#themes/theme_18/page_tl.gif" alt="" /></td>'||chr(10)||
'<td class="t18TopMiddleFill"><img src="#IMAGE_PREFIX#themes/theme_18/page_tm.gif" alt="" ';

c3:=c3||'/></td>'||chr(10)||
'<td valign="top" height="3"><img src="#IMAGE_PREFIX#themes/theme_18/page_tr.gif" alt="" /></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td class="t18PageLeft"><br /></td>'||chr(10)||
'<td valign="top"><div>#REGION_POSITION_03#</div><div><table border="0" cellpadding="0" cellspacing="0" summary="" id="t18PageFooter" width="100%" style="clear:both">'||chr(10)||
'<tr>'||chr(10)||
'<td id="t18Left" valign="top"><span id="t18UserPrompt">&APP_USER.</span><br />';

c3:=c3||'</td>'||chr(10)||
'<td id="t18Center" valign="top">#REGION_POSITION_05#</td>'||chr(10)||
'<td id="t18Right" valign="top"><span id="t18Customize">#CUSTOMIZE#</span><br /></td>'||chr(10)||
'</tr>'||chr(10)||
'</table></div></td>'||chr(10)||
'<td class="t18PageRight"><br /></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td valign="bottom" height="3"><img src="#IMAGE_PREFIX#themes/theme_18/page_bl.gif" alt="" /></td>'||chr(10)||
'<td class="t18BottomMiddleFill"><img src="#IMAGE_PREFIX#themes/theme_18/page_b';

c3:=c3||'m.gif" alt="" /></td>'||chr(10)||
'<td valign="bottom" height="3"><img src="#IMAGE_PREFIX#themes/theme_18/page_br.gif" alt="" /></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'';

wwv_flow_api.create_template(
  p_id=> 1672413413970173 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'Two Level Tabs with Sidebar',
  p_body_title=> '',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<div class="t18success" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</div>',
  p_current_tab=> '<span class="t18CurrentTab">#TAB_LABEL#</span>',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '<a href="#TAB_LINK#" class="t18Tab">#TAB_LABEL#</a>',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '<span class="t18CurrentTab">#TAB_LABEL#</span>',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '<a href="#TAB_LINK#" class="t18Tab">#TAB_LABEL#</a>',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<div class="t18notification" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</div>',
  p_navigation_bar=> '#BAR_BODY#',
  p_navbar_entry=> '<a href="#LINK#" class="t18NavBar">#TEXT#</a> |',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> ' summary="" cellpadding="0" border="0" cellspacing="5" align="left"',
  p_sidebar_def_reg_pos => 'REGION_POSITION_02',
  p_breadcrumb_def_reg_pos => 'REGION_POSITION_01',
  p_theme_id  => 18,
  p_theme_class_id => 18,
  p_translate_this_template => 'N',
  p_template_comment => '');
end;
 
null;
 
end;
/

prompt  ...button templates
--
--application/shared_components/user_interface/templates/button/button
prompt  ......Button Template 1618309193593358
declare
  t varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
t:=t||'<a href="#LINK#" class="t20Button">#LABEL#</a>';

wwv_flow_api.create_button_templates (
  p_id=>1618309193593358 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_template=>t,
  p_template_name=> 'Button',
  p_translate_this_template => 'N',
  p_theme_id  => 20,
  p_theme_class_id => 1,
  p_template_comment       => 'Standard Button');
end;
/
--application/shared_components/user_interface/templates/button/button_alternative_1
prompt  ......Button Template 1618501005593358
declare
  t varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
t:=t||'<a href="#LINK#" class="t20Button2">#LABEL#</a>';

wwv_flow_api.create_button_templates (
  p_id=>1618501005593358 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_template=>t,
  p_template_name=> 'Button, Alternative 1',
  p_translate_this_template => 'N',
  p_theme_id  => 20,
  p_theme_class_id => 4,
  p_template_comment       => 'XP Square FFFFFF');
end;
/
--application/shared_components/user_interface/templates/button/button_alternative_2
prompt  ......Button Template 1618724357593359
declare
  t varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
t:=t||'<a href="#LINK#" class="t20Button">#LABEL#</a>';

wwv_flow_api.create_button_templates (
  p_id=>1618724357593359 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_template=>t,
  p_template_name=> 'Button, Alternative 2',
  p_translate_this_template => 'N',
  p_theme_id  => 20,
  p_theme_class_id => 5,
  p_template_comment       => 'Standard Button');
end;
/
--application/shared_components/user_interface/templates/button/button_alternative_3
prompt  ......Button Template 1618929515593359
declare
  t varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
t:=t||'<a href="#LINK#" class="t20Button">#LABEL#</a>';

wwv_flow_api.create_button_templates (
  p_id=>1618929515593359 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_template=>t,
  p_template_name=> 'Button, Alternative 3',
  p_translate_this_template => 'N',
  p_theme_id  => 20,
  p_theme_class_id => 2,
  p_template_comment       => 'Standard Button');
end;
/
--application/shared_components/user_interface/templates/button/button
prompt  ......Button Template 1672711069970174
declare
  t varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
t:=t||'<table class="t18Button" cellspacing="0" cellpadding="0" border="0"  summary="">'||chr(10)||
'<tr #BUTTON_ATTRIBUTES#>'||chr(10)||
'<td class="t18L"><img src="#IMAGE_PREFIX#themes/theme_18/button_l.gif" alt="" width="11" height="18" /></td>'||chr(10)||
'<td class="t18C"><a href="#LINK#">#LABEL#</a></td>'||chr(10)||
'<td class="t18R"><img src="#IMAGE_PREFIX#themes/theme_18/button_r.gif" alt="" width="11" height="18" /></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>&nbsp;';

wwv_flow_api.create_button_templates (
  p_id=>1672711069970174 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_template=>t,
  p_template_name=> 'Button',
  p_theme_id  => 18,
  p_theme_class_id => 1,
  p_template_comment       => '');
end;
/
--application/shared_components/user_interface/templates/button/button_alternative_1
prompt  ......Button Template 1672907916970174
declare
  t varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
t:=t||'<table class="t18ButtonAlternative1" cellspacing="0" cellpadding="0" border="0"  summary="">'||chr(10)||
'<tr>'||chr(10)||
'<td class="t18L"><img src="#IMAGE_PREFIX#themes/theme_18/button_alt1_l.gif" alt="" width="11" height="18" /></td>'||chr(10)||
'<td class="t18C"><a href="#LINK#">#LABEL#</a></td>'||chr(10)||
'<td class="t18R"><img src="#IMAGE_PREFIX#themes/theme_18/button_alt1_r.gif" alt="" width="11" height="18" /></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>&nbsp;';

wwv_flow_api.create_button_templates (
  p_id=>1672907916970174 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_template=>t,
  p_template_name=> 'Button, Alternative 1',
  p_translate_this_template => 'N',
  p_theme_id  => 18,
  p_theme_class_id => 4,
  p_template_comment       => '');
end;
/
--application/shared_components/user_interface/templates/button/button_alternative_2
prompt  ......Button Template 1673108477970175
declare
  t varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
t:=t||'<table class="t18ButtonAlternative2" cellspacing="0" cellpadding="0" border="0"  summary="">'||chr(10)||
'<tr>'||chr(10)||
'<td class="t18L"><img src="#IMAGE_PREFIX#themes/theme_18/button_alt2_l.gif" alt="" width="11" height="18" /></td>'||chr(10)||
'<td class="t18C"><a href="#LINK#">#LABEL#</a></td>'||chr(10)||
'<td class="t18R"><img src="#IMAGE_PREFIX#themes/theme_18/button_alt2_r.gif" alt="" width="11" height="18" /></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>&nbsp;';

wwv_flow_api.create_button_templates (
  p_id=>1673108477970175 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_template=>t,
  p_template_name=> 'Button, Alternative 2',
  p_translate_this_template => 'N',
  p_theme_id  => 18,
  p_theme_class_id => 5,
  p_template_comment       => '');
end;
/
--application/shared_components/user_interface/templates/button/button_alternative_3
prompt  ......Button Template 1673301080970175
declare
  t varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
t:=t||'<table class="t18ButtonAlternative3" cellspacing="0" cellpadding="0" border="0"  summary="">'||chr(10)||
'<tr>'||chr(10)||
'<td class="t18L"><img src="#IMAGE_PREFIX#themes/theme_18/button_alt3_l.gif" alt="" width="11" height="18" /></td>'||chr(10)||
'<td class="t18C"><a href="#LINK#">#LABEL#</a></td>'||chr(10)||
'<td class="t18R"><img src="#IMAGE_PREFIX#themes/theme_18/button_alt3_r.gif" alt="" width="11" height="18" /></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>&nbsp;';

wwv_flow_api.create_button_templates (
  p_id=>1673301080970175 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_template=>t,
  p_template_name=> 'Button, Alternative 3',
  p_translate_this_template => 'N',
  p_theme_id  => 18,
  p_theme_class_id => 2,
  p_template_comment       => '');
end;
/
---------------------------------------
prompt  ...region templates
--
--application/shared_components/user_interface/templates/region/borderless_region
prompt  ......region template 1619112913593359
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table class="t20Region t20Borderless" id="#REGION_STATIC_ID#" border="0" cellpadding="0" cellspacing="0" summary="" #REGION_ATTRIBUTES#>'||chr(10)||
'<thead><tr><th class="t20RegionHeader" id="#REGION_STATIC_ID#_header">#TITLE#</th></tr></thead>'||chr(10)||
'<tbody id="#REGION_STATIC_ID#_body">'||chr(10)||
'<tr><td class="t20ButtonHolder">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td></tr>'||chr(10)||
'<tr>';

t:=t||'<td class="t20RegionBody">#BODY#</td></tr>'||chr(10)||
'</tbody>'||chr(10)||
'</table>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 1619112913593359 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Borderless Region',
  p_plug_table_bgcolor     => '#f7f7e7',
  p_theme_id  => 20,
  p_theme_class_id => 7,
  p_plug_heading_bgcolor => '#f7f7e7',
  p_plug_font_size => '-1',
  p_translate_this_template => 'N',
  p_template_comment       => 'Red Theme');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 1619112913593359 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/bracketed_region
prompt  ......region template 1619429095593359
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table class="t20Region t20Bracketed" id="#REGION_STATIC_ID#" border="0" cellpadding="0" cellspacing="0" summary="" #REGION_ATTRIBUTES#>'||chr(10)||
'<thead><tr><th class="t20RegionHeader" id="#REGION_STATIC_ID#_header">#TITLE#</th></tr></thead>'||chr(10)||
'<tbody id="#REGION_STATIC_ID#_body">'||chr(10)||
'<tr><td class="t20ButtonHolder">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td></tr>'||chr(10)||
'<tr><';

t:=t||'td class="t20RegionBody">#BODY#</td></tr>'||chr(10)||
'</tbody>'||chr(10)||
'</table>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 1619429095593359 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Bracketed Region',
  p_plug_table_bgcolor     => '#ffffff',
  p_theme_id  => 20,
  p_theme_class_id => 18,
  p_plug_heading_bgcolor => '#ffffff',
  p_plug_font_size => '-1',
  p_translate_this_template => 'N',
  p_template_comment       => 'Red Theme');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 1619429095593359 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/breadcrumb_region
prompt  ......region template 1619700636593359
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<div id="#REGION_STATIC_ID#" class="t20Breadcrumbs" #REGION_ATTRIBUTES#>#BODY#</div>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 1619700636593359 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Breadcrumb Region',
  p_plug_table_bgcolor     => '',
  p_theme_id  => 20,
  p_theme_class_id => 6,
  p_plug_heading_bgcolor => '',
  p_plug_font_size => '',
  p_translate_this_template => 'N',
  p_template_comment       => '');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 1619700636593359 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/button_region_with_title
prompt  ......region template 1620001784593360
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table class="t20Region t20ButtonRegionwithTitle" id="#REGION_STATIC_ID#" border="0" cellpadding="0" cellspacing="0" summary="" #REGION_ATTRIBUTES#>'||chr(10)||
'<thead><tr><th class="t20RegionHeader" id="#REGION_STATIC_ID#_header">#TITLE#</th></tr></thead>'||chr(10)||
'<tbody id="#REGION_STATIC_ID#_body">'||chr(10)||
'<tr><td class="t20ButtonHolder">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td';

t:=t||'></tr>'||chr(10)||
'</tbody>'||chr(10)||
'</table>#BODY#';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 1620001784593360 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Button Region with Title',
  p_plug_table_bgcolor     => '',
  p_theme_id  => 20,
  p_theme_class_id => 4,
  p_plug_heading_bgcolor => '',
  p_plug_font_size => '',
  p_translate_this_template => 'N',
  p_template_comment       => '');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 1620001784593360 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/button_region_without_title
prompt  ......region template 1620320790593360
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table class="t20Region t20ButtonRegionwithoutTitle" id="#REGION_STATIC_ID#" border="0" cellpadding="0" cellspacing="0" summary="" #REGION_ATTRIBUTES#>'||chr(10)||
'<tbody id="#REGION_STATIC_ID#_body">'||chr(10)||
'<tr><td class="t20ButtonHolder">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td></tr>'||chr(10)||
'</tbody>'||chr(10)||
'</table>#BODY#';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 1620320790593360 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Button Region without Title',
  p_plug_table_bgcolor     => '#ffffff',
  p_theme_id  => 20,
  p_theme_class_id => 17,
  p_plug_heading_bgcolor => '#ffffff',
  p_plug_font_size => '-1',
  p_translate_this_template => 'N',
  p_template_comment       => 'Red Theme');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 1620320790593360 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/chart_region
prompt  ......region template 1620615241593360
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table class="t20Region t20ChartRegion" id="#REGION_STATIC_ID#" border="0" cellpadding="0" cellspacing="0" summary="" #REGION_ATTRIBUTES#>'||chr(10)||
'<thead><tr><th class="t20RegionHeader" id="#REGION_STATIC_ID#_header">#TITLE#</th></tr></thead>'||chr(10)||
'<tbody id="#REGION_STATIC_ID#_body">'||chr(10)||
'<tr><td class="t20ButtonHolder">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td></tr>'||chr(10)||
'<tr';

t:=t||'><td class="t20RegionBody">#BODY#</td></tr>'||chr(10)||
'</tbody>'||chr(10)||
'</table>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 1620615241593360 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Chart Region',
  p_plug_table_bgcolor     => '#ffffff',
  p_theme_id  => 20,
  p_theme_class_id => 30,
  p_plug_heading_bgcolor => '#ffffff',
  p_plug_font_size => '-1',
  p_translate_this_template => 'N',
  p_template_comment       => '');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 1620615241593360 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/form_region
prompt  ......region template 1620919809593360
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table class="t20Region t20FormRegion" id="#REGION_STATIC_ID#" border="0" cellpadding="0" cellspacing="0" summary="" #REGION_ATTRIBUTES#>'||chr(10)||
'<thead><tr><th class="t20RegionHeader" id="#REGION_STATIC_ID#_header">#TITLE#</th></tr></thead>'||chr(10)||
'<tbody id="#REGION_STATIC_ID#_body">'||chr(10)||
'<tr><td class="t20ButtonHolder">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td></tr>'||chr(10)||
'<tr>';

t:=t||'<td class="t20RegionBody">#BODY#</td></tr>'||chr(10)||
'</tbody>'||chr(10)||
'</table>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 1620919809593360 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Form Region',
  p_plug_table_bgcolor     => '#f7f7e7',
  p_theme_id  => 20,
  p_theme_class_id => 8,
  p_plug_heading_bgcolor => '#f7f7e7',
  p_plug_font_size => '-1',
  p_translate_this_template => 'N',
  p_template_comment       => 'Red Theme');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 1620919809593360 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/hide_and_show_region
prompt  ......region template 1621219099593361
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table class="t20Region t20HideShow" id="#REGION_STATIC_ID#" border="0" cellpadding="0" cellspacing="0" summary="" #REGION_ATTRIBUTES#>'||chr(10)||
'<thead><tr><th class="t20RegionHeader" id="#REGION_STATIC_ID#_header"><img src="#IMAGE_PREFIX#themes/theme_20/collapse_plus.gif" onclick="htmldb_ToggleWithImage(this,''#REGION_STATIC_ID#_body'')" class="pb" alt="" />#TITLE#</th></tr></thead>'||chr(10)||
'<tbody id="#REGION_STATI';

t:=t||'C_ID#_body" style="display:none;">'||chr(10)||
'<tr><td class="t20ButtonHolder">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td></tr>'||chr(10)||
'<tr><td class="t20RegionBody">#BODY#</td></tr>'||chr(10)||
'</tbody>'||chr(10)||
'</table>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 1621219099593361 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Hide and Show Region',
  p_plug_table_bgcolor     => '#ffffff',
  p_theme_id  => 20,
  p_theme_class_id => 1,
  p_plug_heading_bgcolor => '#ffffff',
  p_plug_font_size => '-1',
  p_translate_this_template => 'N',
  p_template_comment       => '');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 1621219099593361 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/list_region_with_icon_chart
prompt  ......region template 1621507372593361
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table class="t20Region t20ListRegionwithIcon" id="#REGION_STATIC_ID#" border="0" cellpadding="0" cellspacing="0" summary="" #REGION_ATTRIBUTES#>'||chr(10)||
'<thead><tr><th class="t20RegionHeader" id="#REGION_STATIC_ID#_header">#TITLE#</th></tr></thead>'||chr(10)||
'<tbody id="#REGION_STATIC_ID#_body">'||chr(10)||
'<tr><td class="t20ButtonHolder">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td></';

t:=t||'tr>'||chr(10)||
'<tr><td class="t20RegionBody">#BODY#</td></tr>'||chr(10)||
'</tbody>'||chr(10)||
'</table>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 1621507372593361 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'List Region with Icon (Chart)',
  p_plug_table_bgcolor     => '#ffffff',
  p_theme_id  => 20,
  p_theme_class_id => 29,
  p_plug_heading_bgcolor => '#ffffff',
  p_plug_font_size => '-1',
  p_translate_this_template => 'N',
  p_template_comment       => 'Red Theme');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 1621507372593361 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/navigation_region
prompt  ......region template 1621827047593361
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<div class="t20Region t20NavRegion" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||chr(10)||
'<div class="t20RegionHeader" id="#REGION_STATIC_ID#_header">#TITLE#</div>'||chr(10)||
'<div id="#REGION_STATIC_ID#_body" class="t20RegionBody">#BODY#</div>'||chr(10)||
'</div>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 1621827047593361 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Navigation Region',
  p_plug_table_bgcolor     => '',
  p_theme_id  => 20,
  p_theme_class_id => 5,
  p_plug_heading_bgcolor => '',
  p_plug_font_size => '',
  p_translate_this_template => 'N',
  p_template_comment       => '');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 1621827047593361 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/navigation_region_alternative_1
prompt  ......region template 1622112988593361
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<div class="t20Region t20NavRegionAlt" id="#REGION_STATIC_ID#"#REGION_ATTRIBUTES#><div class="t20RegionHeader" id="#REGION_STATIC_ID#_header">#TITLE#</div><div id="#REGION_STATIC_ID#_body" class="t20RegionBody">#BODY#</div></div>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 1622112988593361 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Navigation Region, Alternative 1',
  p_plug_table_bgcolor     => '',
  p_theme_id  => 20,
  p_theme_class_id => 16,
  p_plug_heading_bgcolor => '',
  p_plug_font_size => '',
  p_translate_this_template => 'N',
  p_template_comment       => '');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 1622112988593361 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/region_without_buttons_and_title
prompt  ......region template 1622404644593362
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table class="t20Region t20RegionwithoutButtonsandTitle" id="#REGION_STATIC_ID#" border="0" cellpadding="0" cellspacing="0" summary="" #REGION_ATTRIBUTES#>'||chr(10)||
'<tbody id="#REGION_STATIC_ID#_body">'||chr(10)||
'<tr><td class="t20RegionBody">#BODY#</td></tr>'||chr(10)||
'</tbody>'||chr(10)||
'</table>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 1622404644593362 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Region without Buttons and Title',
  p_plug_table_bgcolor     => '',
  p_theme_id  => 20,
  p_theme_class_id => 19,
  p_plug_heading_bgcolor => '',
  p_plug_font_size => '',
  p_translate_this_template => 'N',
  p_template_comment       => '');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 1622404644593362 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/region_without_title
prompt  ......region template 1622716439593362
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table class="t20Region t20RegionwithoutTitle" id="#REGION_STATIC_ID#" border="0" cellpadding="0" cellspacing="0" summary="" #REGION_ATTRIBUTES#>'||chr(10)||
'<tbody id="#REGION_STATIC_ID#_body">'||chr(10)||
'<tr><td class="t20ButtonHolder">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td></tr>'||chr(10)||
'<tr><td class="t20RegionBody">#BODY#</td></tr>'||chr(10)||
'</tbody>'||chr(10)||
'</table>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 1622716439593362 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Region without Title',
  p_plug_table_bgcolor     => '',
  p_theme_id  => 20,
  p_theme_class_id => 11,
  p_plug_heading_bgcolor => '',
  p_plug_font_size => '',
  p_translate_this_template => 'N',
  p_template_comment       => '');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 1622716439593362 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/report_filter_single_row
prompt  ......region template 1623013525593362
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table class="apex_finderbar" cellpadding="0" cellspacing="0" border="0" summary="" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||chr(10)||
'<tbody>'||chr(10)||
'<tr>'||chr(10)||
'<td class="apex_finderbar_left_top" valign="top"><img src="#IMAGE_PREFIX#1px_trans.gif" width="10" height="8" alt=""  class="spacer" alt="" /></td>'||chr(10)||
'<td class="apex_finderbar_middle" rowspan="3" valign="middle"><img src="#IMAGE_PREFIX#htmldb/builder/builder_f';

t:=t||'ind.png" /></td>'||chr(10)||
'<td class="apex_finderbar_middle" rowspan="3" valign="middle" style="">#BODY#</td>'||chr(10)||
'<td class="apex_finderbar_left" rowspan="3" width="10"><br /></td>'||chr(10)||
'<td class="apex_finderbar_buttons" rowspan="3" valign="middle" nowrap="nowrap"><span class="apex_close">#CLOSE#</span><span>#EDIT##CHANGE##DELETE##CREATE##CREATE2##COPY##PREVIOUS##NEXT##EXPAND##HELP#</span></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr><td class="';

t:=t||'apex_finderbar_left_middle"><br /></td></tr>'||chr(10)||
'<tr>'||chr(10)||
'<td class="apex_finderbar_left_bottom" valign="bottom"><img src="#IMAGE_PREFIX#1px_trans.gif" width="10" height="8"  class="spacer" alt="" /></td>'||chr(10)||
'</tr>'||chr(10)||
'</tbody>'||chr(10)||
'</table>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 1623013525593362 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Report Filter - Single Row',
  p_plug_table_bgcolor     => '',
  p_theme_id  => 20,
  p_theme_class_id => 31,
  p_plug_heading_bgcolor => '',
  p_plug_font_size => '',
  p_translate_this_template => 'N',
  p_template_comment       => '');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 1623013525593362 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/report_list
prompt  ......region template 1623326146593362
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table class="t20Region t20ReportList" id="#REGION_STATIC_ID#" border="0" cellpadding="0" cellspacing="0" summary="" #REGION_ATTRIBUTES#>'||chr(10)||
'<thead><tr><th class="t20RegionHeader" id="#REGION_STATIC_ID#_header">#TITLE#</th></tr></thead>'||chr(10)||
'<tbody id="#REGION_STATIC_ID#_body">'||chr(10)||
'<tr><td class="t20ButtonHolder">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td></tr>'||chr(10)||
'<tr>';

t:=t||'<td class="t20RegionBody">#BODY#</td></tr>'||chr(10)||
'</tbody>'||chr(10)||
'</table>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 1623326146593362 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Report List',
  p_plug_table_bgcolor     => '#ffffff',
  p_theme_id  => 20,
  p_theme_class_id => 29,
  p_plug_heading_bgcolor => '#ffffff',
  p_plug_font_size => '-1',
  p_translate_this_template => 'N',
  p_template_comment       => 'Red Theme');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 1623326146593362 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/reports_region
prompt  ......region template 1623611542593362
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table class="t20Region t20ReportRegion" id="#REGION_STATIC_ID#" border="0" cellpadding="0" cellspacing="0" summary="" #REGION_ATTRIBUTES#>'||chr(10)||
'<thead><tr><th class="t20RegionHeader" id="#REGION_STATIC_ID#_header">#TITLE#</th></tr></thead>'||chr(10)||
'<tbody id="#REGION_STATIC_ID#_body">'||chr(10)||
'<tr><td class="t20ButtonHolder">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td></tr>'||chr(10)||
'<t';

t:=t||'r><td class="t20RegionBody">#BODY#</td></tr>'||chr(10)||
'</tbody>'||chr(10)||
'</table>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 1623611542593362 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Reports Region',
  p_plug_table_bgcolor     => '#ffffff',
  p_theme_id  => 20,
  p_theme_class_id => 9,
  p_plug_heading_bgcolor => '#ffffff',
  p_plug_font_size => '-1',
  p_translate_this_template => 'N',
  p_template_comment       => '');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 1623611542593362 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/reports_region_100_width
prompt  ......region template 1623922903593363
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table class="t20Region t20ReportsRegion100" id="#REGION_STATIC_ID#" border="0" cellpadding="0" cellspacing="0" summary="" #REGION_ATTRIBUTES#>'||chr(10)||
'<thead><tr><th class="t20RegionHeader" id="#REGION_STATIC_ID#_header">#TITLE#</th></tr></thead>'||chr(10)||
'<tbody id="#REGION_STATIC_ID#_body">'||chr(10)||
'<tr><td class="t20ButtonHolder">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td></tr';

t:=t||'>'||chr(10)||
'<tr><td class="t20RegionBody">#BODY#</td></tr>'||chr(10)||
'</tbody>'||chr(10)||
'</table>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 1623922903593363 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Reports Region 100% Width',
  p_plug_table_bgcolor     => '#ffffff',
  p_theme_id  => 20,
  p_theme_class_id => 13,
  p_plug_heading_bgcolor => '#ffffff',
  p_plug_font_size => '-1',
  p_translate_this_template => 'N',
  p_template_comment       => 'Red Theme');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 1623922903593363 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/reports_region_alternative_1
prompt  ......region template 1624232669593363
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table class="t20Region t20ReportsRegionAlt" id="#REGION_STATIC_ID#" border="0" cellpadding="0" cellspacing="0" summary="" #REGION_ATTRIBUTES#>'||chr(10)||
'<thead><tr><th class="t20RegionHeader" id="#REGION_STATIC_ID#_header">#TITLE#</th></tr></thead>'||chr(10)||
'<tbody id="#REGION_STATIC_ID#_body">'||chr(10)||
'<tr><td class="t20ButtonHolder">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td></tr';

t:=t||'>'||chr(10)||
'<tr><td class="t20RegionBody">#BODY#</td></tr>'||chr(10)||
'</tbody>'||chr(10)||
'</table>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 1624232669593363 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Reports Region, Alternative 1',
  p_plug_table_bgcolor     => '#ffffff',
  p_theme_id  => 20,
  p_theme_class_id => 10,
  p_plug_heading_bgcolor => '#ffffff',
  p_plug_font_size => '-1',
  p_translate_this_template => 'N',
  p_template_comment       => '');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 1624232669593363 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/sidebar_region
prompt  ......region template 1624512290593363
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table class="t20Region t20SidebarRegion" id="#REGION_STATIC_ID#" border="0" cellpadding="0" cellspacing="0" summary="" #REGION_ATTRIBUTES#>'||chr(10)||
'<thead><tr><th class="t20RegionHeader" id="#REGION_STATIC_ID#_header">#TITLE#</th></tr></thead>'||chr(10)||
'<tbody id="#REGION_STATIC_ID#_body">'||chr(10)||
'<tr><td class="t20RegionBody">#BODY#</td></tr>'||chr(10)||
'</tbody>'||chr(10)||
'</table>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 1624512290593363 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Sidebar Region',
  p_plug_table_bgcolor     => '#f7f7e7',
  p_theme_id  => 20,
  p_theme_class_id => 2,
  p_plug_heading_bgcolor => '#f7f7e7',
  p_plug_font_size => '-1',
  p_translate_this_template => 'N',
  p_template_comment       => '');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 1624512290593363 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/sidebar_region_alternative_1
prompt  ......region template 1624815268593363
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table class="t20Region t20SidebarRegionAlt" id="#REGION_STATIC_ID#" border="0" cellpadding="0" cellspacing="0" summary="" #REGION_ATTRIBUTES#>'||chr(10)||
'<thead><tr><th class="t20RegionHeader" id="#REGION_STATIC_ID#_header">#TITLE#</th></tr></thead>'||chr(10)||
'<tbody id="#REGION_STATIC_ID#_body">'||chr(10)||
'<tr><td class="t20RegionBody">#BODY#</td></tr>'||chr(10)||
'</tbody>'||chr(10)||
'</table>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 1624815268593363 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Sidebar Region, Alternative 1',
  p_plug_table_bgcolor     => '#f7f7e7',
  p_theme_id  => 20,
  p_theme_class_id => 3,
  p_plug_heading_bgcolor => '#f7f7e7',
  p_plug_font_size => '-1',
  p_translate_this_template => 'N',
  p_template_comment       => '');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 1624815268593363 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/wizard_region
prompt  ......region template 1625108279593364
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table class="t20Region t20WizardRegion" id="#REGION_STATIC_ID#" border="0" cellpadding="0" cellspacing="0" summary="" #REGION_ATTRIBUTES#>'||chr(10)||
'<thead><tr><th class="t20RegionHeader" id="#REGION_STATIC_ID#_header">#TITLE#</th></tr></thead>'||chr(10)||
'<tbody id="#REGION_STATIC_ID#_body">'||chr(10)||
'<tr><td class="t20ButtonHolder">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td></tr>'||chr(10)||
'<t';

t:=t||'r><td class="t20RegionBody">#BODY#</td></tr>'||chr(10)||
'</tbody>'||chr(10)||
'</table>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 1625108279593364 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Wizard Region',
  p_plug_table_bgcolor     => '',
  p_theme_id  => 20,
  p_theme_class_id => 12,
  p_plug_heading_bgcolor => '',
  p_plug_font_size => '',
  p_translate_this_template => 'N',
  p_template_comment       => '');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 1625108279593364 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/wizard_region_with_icon
prompt  ......region template 1625401665593364
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table class="t20Region t20WizardRegionIcon" id="#REGION_STATIC_ID#" border="0" cellpadding="0" cellspacing="0" summary="" #REGION_ATTRIBUTES#>'||chr(10)||
'<thead><tr><th class="t20RegionHeader" id="#REGION_STATIC_ID#_header">#TITLE#</th></tr></thead>'||chr(10)||
'<tbody id="#REGION_STATIC_ID#_body">'||chr(10)||
'<tr><td class="t20ButtonHolder">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td></tr';

t:=t||'>'||chr(10)||
'<tr><td class="t20RegionBody">#BODY#</td></tr>'||chr(10)||
'</tbody>'||chr(10)||
'</table>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 1625401665593364 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Wizard Region with Icon',
  p_plug_table_bgcolor     => '',
  p_theme_id  => 20,
  p_theme_class_id => 20,
  p_plug_heading_bgcolor => '',
  p_plug_font_size => '',
  p_translate_this_template => 'N',
  p_template_comment       => '');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 1625401665593364 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/borderless_region
prompt  ......region template 1673509311970175
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table class="t18Region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# border="0" cellpadding="0" cellspacing="0" summary="" style="border:none;">'||chr(10)||
'<tbody class="borderless">'||chr(10)||
'<tr><th class="t18RegionHeader">#TITLE#</th>'||chr(10)||
'<th class="t18ButtonHolderHeader" width="100%">#CLOSE#&nbsp;&nbsp;#PREVIOUS##NEXT#&nbsp;#DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</th>'||chr(10)||
'</tr>'||chr(10)||
'<tr><td class="t18Region';

t:=t||'Body">#BODY#</td></tr>'||chr(10)||
'</tbody>'||chr(10)||
'</table>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 1673509311970175 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Borderless Region',
  p_plug_table_bgcolor     => '#f7f7e7',
  p_theme_id  => 18,
  p_theme_class_id => 7,
  p_plug_heading_bgcolor => '#f7f7e7',
  p_plug_font_size => '-1',
  p_translate_this_template => 'N',
  p_template_comment       => 'Red Theme');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 1673509311970175 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/bracketed_region
prompt  ......region template 1673808876970175
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table class="t18Region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# border="0" cellpadding="0" cellspacing="0" summary="" style="border:none;">'||chr(10)||
'<tbody class="bracket">'||chr(10)||
'<tr><th class="t18RegionHeader">#TITLE#</th></tr>'||chr(10)||
'<tr><td class="t18ButtonHolder">#CLOSE#&nbsp;&nbsp;#PREVIOUS##NEXT#&nbsp;#DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td></tr>'||chr(10)||
'<tr><td class="t18RegionBody">#BODY#</';

t:=t||'td></tr>'||chr(10)||
'<tr><td class="t18Bracket">&nbsp;</td></tr>'||chr(10)||
'</tbody>'||chr(10)||
'</table>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 1673808876970175 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Bracketed Region',
  p_plug_table_bgcolor     => '#ffffff',
  p_theme_id  => 18,
  p_theme_class_id => 18,
  p_plug_heading_bgcolor => '#ffffff',
  p_plug_font_size => '-1',
  p_translate_this_template => 'N',
  p_template_comment       => 'Red Theme');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 1673808876970175 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/breadcrumb_region
prompt  ......region template 1674110407970176
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<div class="t18Breadcrumbs">#BODY#</div>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 1674110407970176 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Breadcrumb Region',
  p_plug_table_bgcolor     => '',
  p_theme_id  => 18,
  p_theme_class_id => 6,
  p_plug_heading_bgcolor => '',
  p_plug_font_size => '',
  p_translate_this_template => 'N',
  p_template_comment       => '<table cellpadding="0" border="0" cellspacing="0" width="100%"><tr>'||chr(10)||
'<td><img src="#IMAGE_PREFIX#themes/theme_18/cap_left.gif" /></td>'||chr(10)||
'<td id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="t18Breadcrumbs" width="100%">#BODY#</td>'||chr(10)||
'<td><img src="#IMAGE_PREFIX#themes/theme_18/cap_right.gif" /></td>'||chr(10)||
'</tr></table>');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 1674110407970176 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/button_region_with_title
prompt  ......region template 1674430820970176
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table class="t18Region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# border="0" cellpadding="0" cellspacing="0" summary=""><tbody class="buttonregionwithtitle"><tr><th class="t18RegionHeader">#TITLE#</th><th class="t18ButtonHolderHeader">#CLOSE#&nbsp;&nbsp;#PREVIOUS##NEXT#&nbsp;#DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td>'||chr(10)||
'</tr><tr><td class="t18RegionBody" colspan="2">#BODY#</t';

t:=t||'d></tr></tbody></table>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 1674430820970176 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Button Region with Title',
  p_plug_table_bgcolor     => '',
  p_theme_id  => 18,
  p_theme_class_id => 4,
  p_plug_heading_bgcolor => '',
  p_plug_font_size => '',
  p_translate_this_template => 'N',
  p_template_comment       => '');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 1674430820970176 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/button_region_without_title
prompt  ......region template 1674700649970176
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table class="t18Region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# border="0" cellpadding="0" cellspacing="0" summary="">'||chr(10)||
'<tbody class="buttonregionwithouttitle">'||chr(10)||
'<tr>'||chr(10)||
'<th class="t18ButtonHolderHeader" width="100%">#CLOSE#&nbsp;&nbsp;#PREVIOUS##NEXT#&nbsp;#DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</th>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td class="t18RegionBody">#BODY#</td>'||chr(10)||
'</tr>'||chr(10)||
'</tbody>'||chr(10)||
'</table>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 1674700649970176 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Button Region without Title',
  p_plug_table_bgcolor     => '#ffffff',
  p_theme_id  => 18,
  p_theme_class_id => 17,
  p_plug_heading_bgcolor => '#ffffff',
  p_plug_font_size => '-1',
  p_translate_this_template => 'N',
  p_template_comment       => 'Red Theme');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 1674700649970176 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/chart_region
prompt  ......region template 1675009384970176
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table class="t18Region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# border="0" cellpadding="0" cellspacing="0" summary="">'||chr(10)||
'<tbody class="Chart">'||chr(10)||
'<tr><th class="t18RegionHeader">#TITLE#</th>'||chr(10)||
'<th class="t18ButtonHolderHeader">#CLOSE#&nbsp;&nbsp;#PREVIOUS##NEXT#&nbsp;#DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</th>'||chr(10)||
'</tr>'||chr(10)||
'<tr><td class="t18RegionBody" colspan="2">#BODY#</td></tr>'||chr(10)||
'</tb';

t:=t||'ody>'||chr(10)||
'</table>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 1675009384970176 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Chart Region',
  p_plug_table_bgcolor     => '#ffffff',
  p_theme_id  => 18,
  p_theme_class_id => 30,
  p_plug_heading_bgcolor => '#ffffff',
  p_plug_font_size => '-1',
  p_translate_this_template => 'N',
  p_template_comment       => '');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 1675009384970176 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/form_region
prompt  ......region template 1675317107970177
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table class="t18Region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# border="0" cellpadding="0" cellspacing="0" summary="">'||chr(10)||
'<tbody class="form">'||chr(10)||
'<tr><th class="t18RegionHeader">#TITLE#</th>'||chr(10)||
'<th class="t18ButtonHolderHeader" width="100%">#CLOSE#&nbsp;&nbsp;#PREVIOUS##NEXT#&nbsp;#DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</th>'||chr(10)||
'</tr>'||chr(10)||
'<tr><td class="t18RegionBody" colspan="2">#BODY#</t';

t:=t||'d></tr>'||chr(10)||
'</tbody>'||chr(10)||
'</table>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 1675317107970177 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Form Region',
  p_plug_table_bgcolor     => '#f7f7e7',
  p_theme_id  => 18,
  p_theme_class_id => 8,
  p_plug_heading_bgcolor => '#f7f7e7',
  p_plug_font_size => '-1',
  p_translate_this_template => 'N',
  p_template_comment       => 'Red Theme');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 1675317107970177 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/hide_and_show_region
prompt  ......region template 1675606015970177
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table class="t18Region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# border="0" cellpadding="0" cellspacing="0" summary="">'||chr(10)||
'<tbody class="hideshow">'||chr(10)||
'<tr><th class="t18RegionHeader"><img src="#IMAGE_PREFIX#themes/theme_18/collapse_plus.gif" onclick="htmldb_ToggleWithImage(this,''#REGION_ID#body'')" class="pb" alt="" />#TITLE#</th></tr>'||chr(10)||
'</tbody>'||chr(10)||
'<tbody id="#REGION_ID#body" style="display:none;" class=';

t:=t||'"hideshowcontent">'||chr(10)||
'<tr><td class="t18ButtonHolder">#CLOSE#&nbsp;&nbsp;#PREVIOUS##NEXT#&nbsp;#DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td></tr>'||chr(10)||
'<tr><td class="t18RegionBody">#BODY#</td></tr>'||chr(10)||
'</tbody>'||chr(10)||
'</table>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 1675606015970177 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Hide and Show Region',
  p_plug_table_bgcolor     => '#ffffff',
  p_theme_id  => 18,
  p_theme_class_id => 1,
  p_plug_heading_bgcolor => '#ffffff',
  p_plug_font_size => '-1',
  p_translate_this_template => 'N',
  p_template_comment       => '');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 1675606015970177 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/list_region_with_icon_chart
prompt  ......region template 1675901419970177
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table class="t18Region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# border="0" cellpadding="0" cellspacing="0" summary="">'||chr(10)||
'<tbody class="listregionwithicon">'||chr(10)||
'<tr><th class="t18RegionHeader">#TITLE#</th></tr>'||chr(10)||
'<tr><td class="t18ButtonHolder">#CLOSE#&nbsp;&nbsp;#PREVIOUS##NEXT#&nbsp;#DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td></tr>'||chr(10)||
'<tr class="ChartIcon"><td class="t18RegionBody">';

t:=t||'#BODY#</td></tr>'||chr(10)||
'</tbody>'||chr(10)||
'</table>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 1675901419970177 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'List Region with Icon (Chart)',
  p_plug_table_bgcolor     => '#ffffff',
  p_theme_id  => 18,
  p_theme_class_id => 29,
  p_plug_heading_bgcolor => '#ffffff',
  p_plug_font_size => '-1',
  p_translate_this_template => 'N',
  p_template_comment       => 'Red Theme');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 1675901419970177 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/navigation_region
prompt  ......region template 1676212610970177
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table cellpadding="0" border="0" cellspacing="0" summary="" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="NavigationRegion">'||chr(10)||
'<tr>'||chr(10)||
'<td valign="top" height="3"><img src="#IMAGE_PREFIX#themes/theme_18/w_page_tl.gif" alt="" /></td>'||chr(10)||
'<td class="t18TopMiddleFill"><img src="#IMAGE_PREFIX#themes/theme_18/page_tm.gif" alt="" /></td>'||chr(10)||
'<td valign="top" height="3"><img src="#IMAGE_PREFIX#themes/theme_18/w';

t:=t||'_page_tr.gif" alt="" /></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td style="background:url(#IMAGE_PREFIX#themes/theme_18/page_l.gif) repeat-y;"><br /></td>'||chr(10)||
'<td valign="top" id="t18ContentBody">#BODY#<br /></td>'||chr(10)||
'<td style="background:url(#IMAGE_PREFIX#themes/theme_18/page_r.gif) repeat-y;"><br /></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td valign="bottom" height="3"><img src="#IMAGE_PREFIX#themes/theme_18/w_page_bl.gif" alt="" /></td>'||chr(10)||
'<td class="';

t:=t||'t18BottomMiddleFill"><img src="#IMAGE_PREFIX#themes/theme_18/page_bm.gif" alt="" /></td>'||chr(10)||
'<td valign="bottom" height="3"><img src="#IMAGE_PREFIX#themes/theme_18/w_page_br.gif" alt="" /></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 1676212610970177 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Navigation Region',
  p_plug_table_bgcolor     => '',
  p_theme_id  => 18,
  p_theme_class_id => 5,
  p_plug_heading_bgcolor => '',
  p_plug_font_size => '',
  p_translate_this_template => 'N',
  p_template_comment       => '');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 1676212610970177 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/navigation_region_alternative_1
prompt  ......region template 1676501601970178
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<div class="t18Region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# align="left" width="200"><div class="NavigationRegionAlternative1"><h2>#TITLE#</h2><div class="t18RegionBody">#BODY#</div></div></div>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 1676501601970178 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Navigation Region, Alternative 1',
  p_plug_table_bgcolor     => '',
  p_theme_id  => 18,
  p_theme_class_id => 16,
  p_plug_heading_bgcolor => '',
  p_plug_font_size => '',
  p_translate_this_template => 'N',
  p_template_comment       => '');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 1676501601970178 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/region_without_buttons_and_title
prompt  ......region template 1676819775970178
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table class="t18Region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# border="0" cellpadding="0" cellspacing="0" summary=""><tbody class="regionwithoutbuttonsandtitle"><tr><td class="t18RegionBody">#BODY#</td></tr></tbody></table>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 1676819775970178 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Region without Buttons and Title',
  p_plug_table_bgcolor     => '',
  p_theme_id  => 18,
  p_theme_class_id => 19,
  p_plug_heading_bgcolor => '',
  p_plug_font_size => '',
  p_translate_this_template => 'N',
  p_template_comment       => '');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 1676819775970178 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/region_without_title
prompt  ......region template 1677117861970178
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table class="t18Region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# border="0" cellpadding="0" cellspacing="0" summary=""><tbody class="regionwithouttitle"><tr><td class="t18ButtonHolder">#CLOSE#&nbsp;&nbsp;#PREVIOUS##NEXT#&nbsp;#DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td>'||chr(10)||
'</tr><tr><td class="t18RegionBody">#BODY#</td></tr></tbody></table>'||chr(10)||
'';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 1677117861970178 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Region without Title',
  p_plug_table_bgcolor     => '',
  p_theme_id  => 18,
  p_theme_class_id => 11,
  p_plug_heading_bgcolor => '',
  p_plug_font_size => '',
  p_translate_this_template => 'N',
  p_template_comment       => '');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 1677117861970178 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/report_filter_single_row
prompt  ......region template 1677400464970178
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table class="apex_finderbar" cellpadding="0" cellspacing="0" border="0" summary="" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||chr(10)||
'<tbody>'||chr(10)||
'<tr>'||chr(10)||
'<td class="apex_finderbar_left_top" valign="top"><img src="#IMAGE_PREFIX#1px_trans.gif" width="10" height="8" alt=""  class="spacer" alt="" /></td>'||chr(10)||
'<td class="apex_finderbar_middle" rowspan="3" valign="middle"><img src="#IMAGE_PREFIX#htmldb/builder/builder_f';

t:=t||'ind.png" /></td>'||chr(10)||
'<td class="apex_finderbar_middle" rowspan="3" valign="middle" style="">#BODY#</td>'||chr(10)||
'<td class="apex_finderbar_left" rowspan="3" width="10"><br /></td>'||chr(10)||
'<td class="apex_finderbar_buttons" rowspan="3" valign="middle" nowrap="nowrap"><span class="apex_close">#CLOSE#</span><span>#EDIT##CHANGE##DELETE##CREATE##CREATE2##COPY##PREVIOUS##NEXT##EXPAND##HELP#</span></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr><td class="';

t:=t||'apex_finderbar_left_middle"><br /></td></tr>'||chr(10)||
'<tr>'||chr(10)||
'<td class="apex_finderbar_left_bottom" valign="bottom"><img src="#IMAGE_PREFIX#1px_trans.gif" width="10" height="8"  class="spacer" alt="" /></td>'||chr(10)||
'</tr>'||chr(10)||
'</tbody>'||chr(10)||
'</table>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 1677400464970178 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Report Filter - Single Row',
  p_plug_table_bgcolor     => '',
  p_theme_id  => 18,
  p_theme_class_id => 31,
  p_plug_heading_bgcolor => '',
  p_plug_font_size => '',
  p_translate_this_template => 'N',
  p_template_comment       => '');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 1677400464970178 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/report_list
prompt  ......region template 1677730058970179
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table class="t18Region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# border="0" cellpadding="0" cellspacing="0" summary=""><tbody class="listregionwithicon"><tr><th class="t18RegionHeader">#TITLE#</th></tr><tr><td class="t18ButtonHolder">#CLOSE#&nbsp;&nbsp;#PREVIOUS##NEXT#&nbsp;#DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td></tr>'||chr(10)||
'<tr class="ReportIcon"><td class="t18RegionBody">#B';

t:=t||'ODY#</td></tr>'||chr(10)||
'</tbody>'||chr(10)||
'</table>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 1677730058970179 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Report List',
  p_plug_table_bgcolor     => '#ffffff',
  p_theme_id  => 18,
  p_theme_class_id => 29,
  p_plug_heading_bgcolor => '#ffffff',
  p_plug_font_size => '-1',
  p_translate_this_template => 'N',
  p_template_comment       => 'Red Theme');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 1677730058970179 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/reports_region
prompt  ......region template 1678030065970179
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table class="t18Region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# border="0" cellpadding="0" cellspacing="0" summary="" width="97%" style="border:none;">'||chr(10)||
'<tbody class="ReportsRegion">'||chr(10)||
'<tr>'||chr(10)||
'<th class="t18RegionHeader">#TITLE#</th>'||chr(10)||
'<th class="t18ButtonHolderHeader" width="100%">#CLOSE#&nbsp;&nbsp;#PREVIOUS##NEXT#&nbsp;#DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</th>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td';

t:=t||' class="t18RegionBody" colspan="2">#BODY#</td>'||chr(10)||
'</tr>'||chr(10)||
'</tbody>'||chr(10)||
'</table>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 1678030065970179 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Reports Region',
  p_plug_table_bgcolor     => '#ffffff',
  p_theme_id  => 18,
  p_theme_class_id => 9,
  p_plug_heading_bgcolor => '#ffffff',
  p_plug_font_size => '-1',
  p_translate_this_template => 'N',
  p_template_comment       => 'Red Theme');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 1678030065970179 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/reports_region_100_width
prompt  ......region template 1678316976970179
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table class="t18Region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# border="0" cellpadding="0" cellspacing="0" summary="" width="97%" style="border:none;">'||chr(10)||
'<tbody class="ReportsRegion100Width">'||chr(10)||
'<tr>'||chr(10)||
'<th class="t18RegionHeader">#TITLE#</th>'||chr(10)||
'<th class="t18ButtonHolderHeader" width="100%">#CLOSE#&nbsp;&nbsp;#PREVIOUS##NEXT#&nbsp;#DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</th>'||chr(10)||
'</tr>'||chr(10)||
'';

t:=t||'<tr>'||chr(10)||
'<td class="t18RegionBody" colspan="2">#BODY#</td>'||chr(10)||
'</tr>'||chr(10)||
'</tbody>'||chr(10)||
'</table>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 1678316976970179 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Reports Region 100% Width',
  p_plug_table_bgcolor     => '#ffffff',
  p_theme_id  => 18,
  p_theme_class_id => 13,
  p_plug_heading_bgcolor => '#ffffff',
  p_plug_font_size => '-1',
  p_translate_this_template => 'N',
  p_template_comment       => 'Red Theme');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 1678316976970179 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/reports_region_alternative_1
prompt  ......region template 1678621431970179
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table cellpadding="0" border="0" cellspacing="0" summary="" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="ReportsRegionAlternative1">'||chr(10)||
'<tr>'||chr(10)||
'<td><br /></td>'||chr(10)||
'<th class="t18RegionHeader">#TITLE#</th>'||chr(10)||
'<td><br /></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td valign="top" height="3"><img src="#IMAGE_PREFIX#themes/theme_18/w_page_tl.gif" alt="" /></td>'||chr(10)||
'<td class="t18TopMiddleFill"><img src="#IMAGE_PREFIX#themes/theme_18/page';

t:=t||'_tm.gif" alt="" /></td>'||chr(10)||
'<td valign="top" height="3"><img src="#IMAGE_PREFIX#themes/theme_18/w_page_tr.gif" alt="" /></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td class="t18PageLeft"><br /></td>'||chr(10)||
'<td valign="top" id="t18ContentBody"><div class="t18ButtonHolder">#CLOSE#&nbsp;&nbsp;#PREVIOUS##NEXT#&nbsp;#DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>#BODY#<br /></td>'||chr(10)||
'<td class="t18PageRight"><br /></td>'||chr(10)||
'</tr';

t:=t||'>'||chr(10)||
'<tr>'||chr(10)||
'<td valign="bottom" height="3"><img src="#IMAGE_PREFIX#themes/theme_18/w_page_bl.gif" alt="" /></td>'||chr(10)||
'<td class="t18BottomMiddleFill"><img src="#IMAGE_PREFIX#themes/theme_18/page_bm.gif" alt="" /></td>'||chr(10)||
'<td valign="bottom" height="3"><img src="#IMAGE_PREFIX#themes/theme_18/w_page_br.gif" alt="" /></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 1678621431970179 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Reports Region, Alternative 1',
  p_plug_table_bgcolor     => '#ffffff',
  p_theme_id  => 18,
  p_theme_class_id => 10,
  p_plug_heading_bgcolor => '#ffffff',
  p_plug_font_size => '-1',
  p_translate_this_template => 'N',
  p_template_comment       => '');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 1678621431970179 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/sidebar_region
prompt  ......region template 1678903954970180
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<div class="SidebarRegion" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# align="left" width="200"><h2>#TITLE#</h2><div class="t18RegionBody">#BODY#</div></div>'||chr(10)||
'';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 1678903954970180 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Sidebar Region',
  p_plug_table_bgcolor     => '#f7f7e7',
  p_theme_id  => 18,
  p_theme_class_id => 2,
  p_plug_heading_bgcolor => '#f7f7e7',
  p_plug_font_size => '-1',
  p_translate_this_template => 'N',
  p_template_comment       => '');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 1678903954970180 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/sidebar_region_alternative_1
prompt  ......region template 1679232312970180
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<div class="SidebarRegionAlternative1" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# align="left" width="200"><h2>#TITLE#</h2><div class="t18RegionBody">#BODY#</div></div>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 1679232312970180 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Sidebar Region, Alternative 1',
  p_plug_table_bgcolor     => '#f7f7e7',
  p_theme_id  => 18,
  p_theme_class_id => 3,
  p_plug_heading_bgcolor => '#f7f7e7',
  p_plug_font_size => '-1',
  p_translate_this_template => 'N',
  p_template_comment       => '');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 1679232312970180 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/wizard_region
prompt  ......region template 1679516236970180
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table class="t18Region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# border="0" cellpadding="0" cellspacing="0" summary="">'||chr(10)||
'<tbody class="wizard">'||chr(10)||
'<tr><th class="t18RegionHeader">#TITLE#</th><th class="t18ButtonHolderHeader">#CLOSE#&nbsp;&nbsp;#PREVIOUS##NEXT#&nbsp;#DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</th></tr>'||chr(10)||
'<tr><td class="t18RegionBody" colspan="2">#BODY#</td></tr>'||chr(10)||
'</tbo';

t:=t||'dy>'||chr(10)||
'</table>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 1679516236970180 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Wizard Region',
  p_plug_table_bgcolor     => '',
  p_theme_id  => 18,
  p_theme_class_id => 12,
  p_plug_heading_bgcolor => '',
  p_plug_font_size => '',
  p_translate_this_template => 'N',
  p_template_comment       => '');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 1679516236970180 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/wizard_region_with_icon
prompt  ......region template 1679823750970180
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table class="t18Region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# border="0" cellpadding="0" cellspacing="0" summary="">'||chr(10)||
'<tbody class="wizard">'||chr(10)||
'<tr><th class="t18RegionHeader">#TITLE#</th><th class="t18ButtonHolderHeader">#CLOSE#&nbsp;&nbsp;#PREVIOUS##NEXT#&nbsp;#DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</th></tr>'||chr(10)||
'<tr><td class="t18RegionBody" colspan="2">#BODY#</td></tr>'||chr(10)||
'</tbo';

t:=t||'dy>'||chr(10)||
'</table>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 1679823750970180 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Wizard Region with Icon',
  p_plug_table_bgcolor     => '',
  p_theme_id  => 18,
  p_theme_class_id => 20,
  p_plug_heading_bgcolor => '',
  p_plug_font_size => '',
  p_translate_this_template => 'N',
  p_template_comment       => '');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 1679823750970180 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

prompt  ...List Templates
--
--application/shared_components/user_interface/templates/list/button_list
prompt  ......list template 1625712817593364
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<a href="#LINK#" class="t20Button t20current">#TEXT#</a>';

t2:=t2||'<a href="#LINK#" class="t20Button">#TEXT#</a>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>1625712817593364 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Button List',
  p_theme_id  => 20,
  p_theme_class_id => 6,
  p_list_template_before_rows=>'<div class="t20ButtonList">',
  p_list_template_after_rows=>'</div>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/hierarchical_expanded
prompt  ......list template 1626016653593364
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<li><a href="#LINK#">#TEXT#</a></li>';

t2:=t2||'<li><a href="#LINK#">#TEXT#</a></li>';

t3:=t3||'<li><a href="#LINK#">#TEXT#</a></li>';

t4:=t4||'<li><a href="#LINK#">#TEXT#</a></li>';

t5:=t5||'<li><a href="#LINK#">#TEXT#</a></li>';

t6:=t6||'<li><a href="#LINK#">#TEXT#</a></li>';

t7:=t7||'<li><a href="#LINK#">#TEXT#</a></li>';

t8:=t8||'<li><a href="#LINK#">#TEXT#</a></li>';

wwv_flow_api.create_list_template (
  p_id=>1626016653593364 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Hierarchical Expanded',
  p_theme_id  => 20,
  p_theme_class_id => 23,
  p_list_template_before_rows=>'<ul class="htmlTree">',
  p_list_template_after_rows=>'</ul><br style="clear:both;"/><br style="clear:both;"/>',
  p_before_sub_list=>'<ul id="#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#">',
  p_after_sub_list=>'</ul>',
  p_sub_list_item_current=> t3,
  p_sub_list_item_noncurrent=> t4,
  p_item_templ_curr_w_child=> t5,
  p_item_templ_noncurr_w_child=> t6,
  p_sub_templ_curr_w_child=> t7,
  p_sub_templ_noncurr_w_child=> t8,
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/hierarchical_expanding
prompt  ......list template 1626315219593365
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<li><img src="#IMAGE_PREFIX#themes/theme_13/node.gif" align="middle" alt="" /><a href="#LINK#">#TEXT#</a></li>';

t2:=t2||'<li><img src="#IMAGE_PREFIX#themes/theme_13/node.gif" align="middle"  alt="" /><a href="#LINK#">#TEXT#</a></li>';

t3:=t3||'<li><img src="#IMAGE_PREFIX#themes/theme_13/node.gif" align="middle"  alt="" /><a href="#LINK#">#TEXT#</a></li>';

t4:=t4||'<li><img src="#IMAGE_PREFIX#themes/theme_13/node.gif"  align="middle" alt="" /><a href="#LINK#">#TEXT#</a></li>';

t5:=t5||'<li><img src="#IMAGE_PREFIX#themes/theme_13/plus.gif" align="middle"  onclick="htmldb_ToggleWithImage(this,''#LIST_ITEM_ID#'')" class="pseudoButtonInactive" /><a href="#LINK#">#TEXT#</a></li>';

t6:=t6||'<li><img src="#IMAGE_PREFIX#themes/theme_13/plus.gif" align="middle"  onclick="htmldb_ToggleWithImage(this,''#LIST_ITEM_ID#'')" class="pseudoButtonInactive" /><a href="#LINK#">#TEXT#</a></li>';

t7:=t7||'<li><img src="#IMAGE_PREFIX#themes/theme_13/plus.gif" onclick="htmldb_ToggleWithImage(this,''#LIST_ITEM_ID#'')" align="middle" class="pseudoButtonInactive" /><a href="#LINK#">#TEXT#</a></li>';

t8:=t8||'<li><img src="#IMAGE_PREFIX#themes/theme_13/plus.gif" onclick="htmldb_ToggleWithImage(this,''#LIST_ITEM_ID#'')" align="middle" class="pseudoButtonInactive" /><a href="#LINK#">#TEXT#</a></li>';

wwv_flow_api.create_list_template (
  p_id=>1626315219593365 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Hierarchical Expanding',
  p_theme_id  => 20,
  p_theme_class_id => 22,
  p_list_template_before_rows=>'<ul class="dhtmlTree">',
  p_list_template_after_rows=>'</ul><br style="clear:both;"/><br style="clear:both;"/>',
  p_before_sub_list=>'<ul id="#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#" style="display:none;" class="dhtmlTree">',
  p_after_sub_list=>'</ul>',
  p_sub_list_item_current=> t3,
  p_sub_list_item_noncurrent=> t4,
  p_item_templ_curr_w_child=> t5,
  p_item_templ_noncurr_w_child=> t6,
  p_sub_templ_curr_w_child=> t7,
  p_sub_templ_noncurr_w_child=> t8,
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/horizontal_images_with_label_list
prompt  ......list template 1626609074593365
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<td class="t20current"><img src="#IMAGE_PREFIX##IMAGE#" border="0" #IMAGE_ATTR#/><br />#TEXT#</td>';

t2:=t2||'<td><a href="#LINK#"><img src="#IMAGE_PREFIX##IMAGE#" border="0" #IMAGE_ATTR#/></a><br /><a href="#LINK#">#TEXT#</a></td>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>1626609074593365 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Horizontal Images with Label List',
  p_theme_id  => 20,
  p_theme_class_id => 4,
  p_list_template_before_rows=>'<table class="t20HorizontalImageswithLabelList" cellpadding="0" border="0" cellspacing="0" summary=""><tr>',
  p_list_template_after_rows=>'</tr></table>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/horizontal_links_list
prompt  ......list template 1626910233593365
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<a href="#LINK#" class="t20current">#TEXT#</a>';

t2:=t2||'<a href="#LINK#">#TEXT#</a>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>1626910233593365 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Horizontal Links List',
  p_theme_id  => 20,
  p_theme_class_id => 3,
  p_list_template_before_rows=>'<div class="t20HorizontalLinksList">',
  p_list_template_after_rows=>'</div>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/pull_down_menu
prompt  ......list template 1627228469593366
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<li class="dhtmlMenuItem"><a href="#LINK#">#TEXT#</a></li>';

t2:=t2||'<li class="dhtmlMenuItem"><a href="#LINK#">#TEXT#</a></li>';

t3:=t3||'<li class="dhtmlMenuSep2"><img src="#IMAGE_PREFIX#themes/theme_13/1px_trans.gif"  width="1" height="1" alt="" class="dhtmlMenuSep2" /></li>';

t4:=t4||'<li><a href="#LINK#" class="dhtmlSubMenuN" onmouseover="dhtml_CloseAllSubMenusL(this)">#TEXT#</a></li>';

t5:=t5||'<li class="dhtmlMenuItem1"><a href="#LINK#">#TEXT#</a><img src="#IMAGE_PREFIX#themes/theme_13/menu_small.gif" alt="Expand" onclick="app_AppMenuMultiOpenBottom2(this,''#LIST_ITEM_ID#'',false)" /></li>';

t6:=t6||'<li class="dhtmlMenuItem1"><a href="#LINK#">#TEXT#</a><img src="#IMAGE_PREFIX#themes/theme_13/menu_small.gif" alt="Expand" onclick="app_AppMenuMultiOpenBottom2(this,''#LIST_ITEM_ID#'',false)" /></li>';

t7:=t7||'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" /></a></li>';

t8:=t8||'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" /></a></li>';

wwv_flow_api.create_list_template (
  p_id=>1627228469593366 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Pull Down Menu',
  p_theme_id  => 20,
  p_theme_class_id => 20,
  p_list_template_before_rows=>'<ul class="dhtmlMenuLG2">',
  p_list_template_after_rows=>'</ul><br style="clear:both;"/><br style="clear:both;"/>',
  p_before_sub_list=>'<ul id="#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#" class="dhtmlSubMenu2" style="display:none;">',
  p_after_sub_list=>'</ul>',
  p_sub_list_item_current=> t3,
  p_sub_list_item_noncurrent=> t4,
  p_item_templ_curr_w_child=> t5,
  p_item_templ_noncurr_w_child=> t6,
  p_sub_templ_curr_w_child=> t7,
  p_sub_templ_noncurr_w_child=> t8,
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/pull_down_menu_with_image
prompt  ......list template 1627528552593366
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<div class="dhtmlMenuItem"><a href="#LINK#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# /></a><img src="#IMAGE_PREFIX#menu/drop_down.png" width="20" height="128" alt="" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a></div>';

t2:=t2||'<div class="dhtmlMenuItem"><a href="#LINK#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# /></a><img src="#IMAGE_PREFIX#menu/drop_down.png" width="20" height="128" alt=""  /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a></div>';

t3:=t3||'<li class="dhtmlMenuSep"><img src="#IMAGE_PREFIX#themes/theme_13/1px_trans.gif"  width="1" height="1" alt=""  class="dhtmlMenuSep" /></li>';

t4:=t4||'<li><a href="#LINK#" class="dhtmlSubMenuN" onmouseover="dhtml_CloseAllSubMenusL(this)">#TEXT#</a></li>';

t5:=t5||'<div class="dhtmlMenuItem"><a href="#LINK#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# /></a><img src="#IMAGE_PREFIX#menu/drop_down.png" width="20" height="128" alt=""  class="dhtmlMenu" onclick="app_AppMenuMultiOpenBottom(this,''#LIST_ITEM_ID#'',false)" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a></div>';

t6:=t6||'<div class="dhtmlMenuItem"><a href="#LINK#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# /></a><img src="#IMAGE_PREFIX#menu/drop_down.png" width="20" height="128" alt=""  class="dhtmlMenu" onclick="app_AppMenuMultiOpenBottom(this,''#LIST_ITEM_ID#'',false)" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a></div>';

t7:=t7||'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" /></a></li>';

t8:=t8||'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" /></a></li>';

wwv_flow_api.create_list_template (
  p_id=>1627528552593366 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Pull Down Menu with Image',
  p_theme_id  => 20,
  p_theme_class_id => 21,
  p_list_template_before_rows=>'<div class="dhtmlMenuLG">',
  p_list_template_after_rows=>'</div><br style="clear:both;"/><br style="clear:both;"/>',
  p_before_sub_list=>'<ul id="#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#" class="dhtmlSubMenu2" style="display:none;"><li class="dhtmlSubMenuP" onmouseover="dhtml_CloseAllSubMenusL(this)">#PARENT_TEXT#</li>',
  p_after_sub_list=>'</ul>',
  p_sub_list_item_current=> t3,
  p_sub_list_item_noncurrent=> t4,
  p_item_templ_curr_w_child=> t5,
  p_item_templ_noncurr_w_child=> t6,
  p_sub_templ_curr_w_child=> t7,
  p_sub_templ_noncurr_w_child=> t8,
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/pull_down_menu_with_image_custom_1
prompt  ......list template 1627816528593366
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<div class="dhtmlMenuItem"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/generic_list.gif" #IMAGE_ATTR# /></a><img src="#IMAGE_PREFIX#themes/generic_nochild.gif" width="22" height="75" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a></div>';

t2:=t2||'<div class="dhtmlMenuItem"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/generic_list.gif" #IMAGE_ATTR# /></a><img src="#IMAGE_PREFIX#themes/generic_nochild.gif" width="22" height="75" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a></div>';

t3:=t3||'<li class="dhtmlMenuSep"><img src="#IMAGE_PREFIX#themes/theme_13/1px_trans.gif"  width="1" height="1" alt=""  class="dhtmlMenuSep" /></li>';

t4:=t4||'<li><a href="#LINK#" class="dhtmlSubMenuN" onmouseover="dhtml_CloseAllSubMenusL(this)">#TEXT#</a></li>';

t5:=t5||'<div class="dhtmlMenuItem"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/generic_list.gif" #IMAGE_ATTR# /></a><img src="#IMAGE_PREFIX#themes/generic_open.gif" width="22" height="75" class="dhtmlMenu" onclick="app_AppMenuMultiOpenBottom(this,''#LIST_ITEM_ID#'',false)" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a></div>';

t6:=t6||'<div class="dhtmlMenuItem"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/generic_list.gif" #IMAGE_ATTR# /></a><img src="#IMAGE_PREFIX#themes/generic_open.gif" width="22" height="75" class="dhtmlMenu" onclick="app_AppMenuMultiOpenBottom(this,''#LIST_ITEM_ID#'',false)" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a></div>';

t7:=t7||'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" /></a></li>';

t8:=t8||'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" /></a></li>';

wwv_flow_api.create_list_template (
  p_id=>1627816528593366 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Pull Down Menu with Image (Custom 1)',
  p_theme_id  => 20,
  p_theme_class_id => 9,
  p_list_template_before_rows=>'<div class="dhtmlMenuLG">',
  p_list_template_after_rows=>'</div><br style="clear:both;"/><br style="clear:both;"/>',
  p_before_sub_list=>'<ul id="#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#" class="dhtmlSubMenu2" style="display:none;"><li class="dhtmlSubMenuP" onmouseover="dhtml_CloseAllSubMenusL(this)">#PARENT_TEXT#</li>',
  p_after_sub_list=>'</ul>',
  p_sub_list_item_current=> t3,
  p_sub_list_item_noncurrent=> t4,
  p_item_templ_curr_w_child=> t5,
  p_item_templ_noncurr_w_child=> t6,
  p_sub_templ_curr_w_child=> t7,
  p_sub_templ_noncurr_w_child=> t8,
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/tab_list_custom_3
prompt  ......list template 1628128733593366
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<a href="#LINK#" class="current">#TEXT#</a>';

t2:=t2||'<a href="#LINK#">#TEXT#</a>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>1628128733593366 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Tab List (Custom 3)',
  p_theme_id  => 20,
  p_theme_class_id => 11,
  p_list_template_before_rows=>'<div id="t20tablist">',
  p_list_template_after_rows=>'</div>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'This list matches the child tabs on the Two Level Tab templates.'||chr(10)||
'Use in region position 8 of One Level Tabs (Custom 5) and/or One Level Tabs Sidebar (Custom 6).');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/tabbed_navigation_list
prompt  ......list template 1628426500593367
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<td><img src="#IMAGE_PREFIX#themes/theme_20/topTabL.gif" /></td>'||chr(10)||
'<td class="t20CurrentTab"><a href="#LINK#">#TEXT#</a></td>'||chr(10)||
'<td><img src="#IMAGE_PREFIX#themes/theme_20/topTabR.gif" /></td>'||chr(10)||
'<td>&nbsp;</td>';

t2:=t2||'<td><img src="#IMAGE_PREFIX#themes/theme_20/topDimTabL.gif" /></td>'||chr(10)||
'<td class="t20Tab"><a href="#LINK#">#TEXT#</a></td>'||chr(10)||
'<td><img src="#IMAGE_PREFIX#themes/theme_20/topDimTabR.gif" /></td>'||chr(10)||
'<td>&nbsp;</td>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>1628426500593367 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Tabbed Navigation List',
  p_theme_id  => 20,
  p_theme_class_id => 7,
  p_list_template_before_rows=>'<table class="t20Tabs t20TabbedNavigationList" border="0" cellpadding="0" cellspacing="0" summary=""><tr>',
  p_list_template_after_rows=>'</tr></table>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/vertical_images_list
prompt  ......list template 1628705377593367
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<tr><td class="t20current"><a href="#LINK#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# />#TEXT#</a></td></tr>';

t2:=t2||'<tr><td><a href="#LINK#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# />#TEXT#</a></td></tr>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>1628705377593367 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Vertical Images List',
  p_theme_id  => 20,
  p_theme_class_id => 5,
  p_list_template_before_rows=>'<table border="0" cellpadding="0" cellspacing="0" summary="" class="t20VerticalImagesList">',
  p_list_template_after_rows=>'</table>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/vertical_images_list_custom_2
prompt  ......list template 1629022052593368
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<tr><td align="left"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# /></td><td align="left"><a href="#LINK#">#TEXT#</a></td></tr>'||chr(10)||
'';

t2:=t2||'<tr><td align="left"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# /></td><td align="left"><a href="#LINK#">#TEXT#</a></td></tr>'||chr(10)||
'';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>1629022052593368 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Vertical Images List (Custom 2)',
  p_theme_id  => 20,
  p_theme_class_id => 10,
  p_list_template_before_rows=>'<table border="0" cellpadding="0" cellspacing="5" summary="" >',
  p_list_template_after_rows=>'</table>'||chr(10)||
'',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/vertical_ordered_list
prompt  ......list template 1629326992593368
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<li class="t20current"><a href="#LINK#">#TEXT#</a></li>';

t2:=t2||'<li><a href="#LINK#">#TEXT#</a></li>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>1629326992593368 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Vertical Ordered List',
  p_theme_id  => 20,
  p_theme_class_id => 2,
  p_list_template_before_rows=>'<ol class="t20VerticalOrderedList">',
  p_list_template_after_rows=>'</ol>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/vertical_sidebar_list
prompt  ......list template 1629627908593368
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<a href="#LINK#" class="current">#TEXT#</a>';

t2:=t2||'<a href="#LINK#">#TEXT#</a>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>1629627908593368 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Vertical Sidebar List',
  p_theme_id  => 20,
  p_theme_class_id => 19,
  p_list_template_before_rows=>'<div class="t20VerticalSidebarList">',
  p_list_template_after_rows=>'</div>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/vertical_unordered_links_without_bullets
prompt  ......list template 1629932702593368
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<li class="t20current"><a href="#LINK#">#TEXT#</a></li>';

t2:=t2||'<li><a href="#LINK#">#TEXT#</a></li>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>1629932702593368 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Vertical Unordered Links without Bullets',
  p_theme_id  => 20,
  p_theme_class_id => 18,
  p_list_template_before_rows=>'<ul class="t20VerticalUnorderedLinkswithoutBullets">',
  p_list_template_after_rows=>'</ul>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/vertical_unordered_list_with_bullets
prompt  ......list template 1630204059593368
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<li class="t20current"><a href="#LINK#">#TEXT#</a></li>';

t2:=t2||'<li><a href="#LINK#">#TEXT#</a></li>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>1630204059593368 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Vertical Unordered List with Bullets',
  p_theme_id  => 20,
  p_theme_class_id => 1,
  p_list_template_before_rows=>'<ul class="t20VerticalUnorderedListwithBullets">',
  p_list_template_after_rows=>'</ul>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/wizard_progress_list
prompt  ......list template 1630528566593369
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<div class="t20current">#TEXT#</div>';

t2:=t2||'<div>#TEXT#</div>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>1630528566593369 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Wizard Progress List',
  p_theme_id  => 20,
  p_theme_class_id => 17,
  p_list_template_before_rows=>'<div class="t20WizardProgressList">',
  p_list_template_after_rows=>'<center>&DONE.</center>'||chr(10)||
'</div>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/button_list
prompt  ......list template 1680128464970180
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<table class="t18Button" cellspacing="0" cellpadding="0" border="0"  summary="">'||chr(10)||
'<tr>'||chr(10)||
'<td class="t18L"><img src="#IMAGE_PREFIX#themes/theme_18/button_l.gif" alt="" /></td>'||chr(10)||
'<td class="t18C"><a href="#LINK#">#TEXT#</a></td>'||chr(10)||
'<td class="t18R"><img src="#IMAGE_PREFIX#themes/theme_18/button_r.gif" alt="" /></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>&nbsp;'||chr(10)||
'';

t2:=t2||'<table class="t18ButtonAlternative1" cellspacing="0" cellpadding="0" border="0"  summary="">'||chr(10)||
'<tr>'||chr(10)||
'<td class="t18L"><img src="#IMAGE_PREFIX#themes/theme_18/button_alt1_l.gif" alt="" /></td>'||chr(10)||
'<td class="t18C"><a href="#LINK#">#TEXT#</a></td>'||chr(10)||
'<td class="t18R"><img src="#IMAGE_PREFIX#themes/theme_18/button_alt1_r.gif" alt="" /></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>&nbsp;';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>1680128464970180 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Button List',
  p_theme_id  => 18,
  p_theme_class_id => 6,
  p_list_template_before_rows=>' ',
  p_list_template_after_rows=>' ',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/dhtml_menu_with_sublist
prompt  ......list template 1680432136970181
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<li class="dhtmlMenuItem"><a href="#LINK#">#TEXT#</a></li>';

t2:=t2||'<li class="dhtmlMenuItem"><a href="#LINK#">#TEXT#</a></li>';

t3:=t3||'<li class="dhtmlMenuSep2"><img src="#IMAGE_PREFIX#themes/theme_13/1px_trans.gif"  width="1" height="1" alt="" class="dhtmlMenuSep2" /></li>';

t4:=t4||'<li><a href="#LINK#" class="dhtmlSubMenuN" onmouseover="dhtml_CloseAllSubMenusL(this)">#TEXT#</a></li>';

t5:=t5||'<li class="dhtmlMenuItem1"><a href="#LINK#">#TEXT#</a><img src="#IMAGE_PREFIX#themes/theme_13/menu_small.gif" alt="Expand" onclick="app_AppMenuMultiOpenBottom2(this,''#LIST_ITEM_ID#'',false)" /></li>';

t6:=t6||'<li class="dhtmlMenuItem1"><a href="#LINK#">#TEXT#</a><img src="#IMAGE_PREFIX#themes/theme_13/menu_small.gif" alt="Expand" onclick="app_AppMenuMultiOpenBottom2(this,''#LIST_ITEM_ID#'',false)" /></li>';

t7:=t7||'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" /></a></li>';

t8:=t8||'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" /></a></li>';

wwv_flow_api.create_list_template (
  p_id=>1680432136970181 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'DHTML Menu with Sublist',
  p_theme_id  => 18,
  p_theme_class_id => 20,
  p_list_template_before_rows=>'<ul class="dhtmlMenuLG2">',
  p_list_template_after_rows=>'</ul><br style="clear:both;"/><br style="clear:both;"/>',
  p_before_sub_list=>'<ul id="#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#" class="dhtmlSubMenu2" style="display:none;">',
  p_after_sub_list=>'</ul>',
  p_sub_list_item_current=> t3,
  p_sub_list_item_noncurrent=> t4,
  p_item_templ_curr_w_child=> t5,
  p_item_templ_noncurr_w_child=> t6,
  p_sub_templ_curr_w_child=> t7,
  p_sub_templ_noncurr_w_child=> t8,
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/dhtml_tree
prompt  ......list template 1680700298970181
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<li><img src="#IMAGE_PREFIX#themes/theme_13/node.gif" align="middle" alt="" /><a href="#LINK#">#TEXT#</a></li>';

t2:=t2||'<li><img src="#IMAGE_PREFIX#themes/theme_13/node.gif" align="middle"  alt="" /><a href="#LINK#">#TEXT#</a></li>';

t3:=t3||'<li><img src="#IMAGE_PREFIX#themes/theme_13/node.gif" align="middle"  alt="" /><a href="#LINK#">#TEXT#</a></li>';

t4:=t4||'<li><img src="#IMAGE_PREFIX#themes/theme_13/node.gif"  align="middle" alt="" /><a href="#LINK#">#TEXT#</a></li>';

t5:=t5||'<li><img src="#IMAGE_PREFIX#themes/theme_13/plus.gif" align="middle"  onclick="htmldb_ToggleWithImage(this,''#LIST_ITEM_ID#'')" class="pseudoButtonInactive" /><a href="#LINK#">#TEXT#</a></li>';

t6:=t6||'<li><img src="#IMAGE_PREFIX#themes/theme_13/plus.gif" align="middle"  onclick="htmldb_ToggleWithImage(this,''#LIST_ITEM_ID#'')" class="pseudoButtonInactive" /><a href="#LINK#">#TEXT#</a></li>';

t7:=t7||'<li><img src="#IMAGE_PREFIX#themes/theme_13/plus.gif" onclick="htmldb_ToggleWithImage(this,''#LIST_ITEM_ID#'')" align="middle" class="pseudoButtonInactive" /><a href="#LINK#">#TEXT#</a></li>';

t8:=t8||'<li><img src="#IMAGE_PREFIX#themes/theme_13/plus.gif" onclick="htmldb_ToggleWithImage(this,''#LIST_ITEM_ID#'')" align="middle" class="pseudoButtonInactive" /><a href="#LINK#">#TEXT#</a></li>';

wwv_flow_api.create_list_template (
  p_id=>1680700298970181 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'DHTML Tree',
  p_theme_id  => 18,
  p_theme_class_id => 22,
  p_list_template_before_rows=>'<ul class="dhtmlTree">',
  p_list_template_after_rows=>'</ul><br style="clear:both;"/><br style="clear:both;"/>',
  p_before_sub_list=>'<ul id="#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#" style="display:none;" class="dhtmlTree">',
  p_after_sub_list=>'</ul>',
  p_sub_list_item_current=> t3,
  p_sub_list_item_noncurrent=> t4,
  p_item_templ_curr_w_child=> t5,
  p_item_templ_noncurr_w_child=> t6,
  p_sub_templ_curr_w_child=> t7,
  p_sub_templ_noncurr_w_child=> t8,
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/horizontal_images_with_label_list
prompt  ......list template 1681022741970182
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<td class="t18current"><img src="#IMAGE_PREFIX##IMAGE#" border="0" #IMAGE_ATTR#/><br />#TEXT#</td>';

t2:=t2||'<td><a href="#LINK#"><img src="#IMAGE_PREFIX##IMAGE#" border="0" #IMAGE_ATTR#/></a><br /><a href="#LINK#">#TEXT#</a></td>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>1681022741970182 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Horizontal Images with Label List',
  p_theme_id  => 18,
  p_theme_class_id => 4,
  p_list_template_before_rows=>'<table class="t18HorizontalImageswithLabelList" cellpadding="0" border="0" cellspacing="0" summary=""><tr>',
  p_list_template_after_rows=>'</tr></table>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/horizontal_links_list
prompt  ......list template 1681309340970182
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<a href="#LINK#" class="t18current">#TEXT#</a>';

t2:=t2||'<a href="#LINK#">#TEXT#</a>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>1681309340970182 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Horizontal Links List',
  p_theme_id  => 18,
  p_theme_class_id => 3,
  p_list_template_before_rows=>'<div class="t18HorizontalLinksList">',
  p_list_template_after_rows=>'</div>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/pull_down_menu_with_image
prompt  ......list template 1681621987970182
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<div class="dhtmlMenuItem"><a href="#LINK#"><img src="#IMAGE_PREFIX#menu/brush_bx_128x128.png" #IMAGE_ATTR# /></a><img src="#IMAGE_PREFIX#menu/drop_down_nochild.png" width="20" height="128" alt="" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a></div>';

t2:=t2||'<div class="dhtmlMenuItem"><a href="#LINK#"><img src="#IMAGE_PREFIX#menu/brush_bx_128x128.png" #IMAGE_ATTR# /></a><img src="#IMAGE_PREFIX#menu/drop_down_nochild.png" width="20" height="128" alt=""  /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a></div>';

t3:=t3||'<li class="dhtmlMenuSep"><img src="#IMAGE_PREFIX#themes/theme_13/1px_trans.gif"  width="1" height="1" alt=""  class="dhtmlMenuSep" /></li>';

t4:=t4||'<li><a href="#LINK#" class="dhtmlSubMenuN" onmouseover="dhtml_CloseAllSubMenusL(this)">#TEXT#</a></li>';

t5:=t5||'<div class="dhtmlMenuItem"><a href="#LINK#"><img src="#IMAGE_PREFIX#menu/brush_bx_128x128.png" #IMAGE_ATTR# /></a><img src="#IMAGE_PREFIX#menu/drop_down.png" width="20" height="128" alt=""  class="dhtmlMenu" onclick="app_AppMenuMultiOpenBottom(this,''#LIST_ITEM_ID#'',false)" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a></div>';

t6:=t6||'<div class="dhtmlMenuItem"><a href="#LINK#"><img src="#IMAGE_PREFIX#menu/brush_bx_128x128.png" #IMAGE_ATTR# /></a><img src="#IMAGE_PREFIX#menu/drop_down.png" width="20" height="128" alt=""  class="dhtmlMenu" onclick="app_AppMenuMultiOpenBottom(this,''#LIST_ITEM_ID#'',false)" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a></div>';

t7:=t7||'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" /></a></li>';

t8:=t8||'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" /></a></li>';

wwv_flow_api.create_list_template (
  p_id=>1681621987970182 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Pull Down Menu with Image',
  p_theme_id  => 18,
  p_theme_class_id => 21,
  p_list_template_before_rows=>'<div class="dhtmlMenuLG">',
  p_list_template_after_rows=>'</div><br style="clear:both;"/><br style="clear:both;"/>',
  p_before_sub_list=>'<ul id="#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#" class="dhtmlSubMenu2" style="display:none;"><li class="dhtmlSubMenuP" onmouseover="dhtml_CloseAllSubMenusL(this)">#PARENT_TEXT#</li>',
  p_after_sub_list=>'</ul>',
  p_sub_list_item_current=> t3,
  p_sub_list_item_noncurrent=> t4,
  p_item_templ_curr_w_child=> t5,
  p_item_templ_noncurr_w_child=> t6,
  p_sub_templ_curr_w_child=> t7,
  p_sub_templ_noncurr_w_child=> t8,
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/pull_down_menu_with_image_custom_1
prompt  ......list template 1681911866970183
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<div class="dhtmlMenuItem"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/generic_list.gif" #IMAGE_ATTR# /></a><img src="#IMAGE_PREFIX#themes/generic_nochild.gif" width="22" height="75" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a></div>';

t2:=t2||'<div class="dhtmlMenuItem"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/generic_list.gif" #IMAGE_ATTR# /></a><img src="#IMAGE_PREFIX#themes/generic_nochild.gif" width="22" height="75" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a></div>';

t3:=t3||'<li class="dhtmlMenuSep"><img src="#IMAGE_PREFIX#themes/theme_13/1px_trans.gif"  width="1" height="1" alt=""  class="dhtmlMenuSep" /></li>';

t4:=t4||'<li><a href="#LINK#" class="dhtmlSubMenuN" onmouseover="dhtml_CloseAllSubMenusL(this)">#TEXT#</a></li>';

t5:=t5||'<div class="dhtmlMenuItem"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/generic_list.gif" #IMAGE_ATTR# /></a><img src="#IMAGE_PREFIX#themes/generic_open.gif" width="22" height="75" class="dhtmlMenu" onclick="app_AppMenuMultiOpenBottom(this,''#LIST_ITEM_ID#'',false)" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a></div>';

t6:=t6||'<div class="dhtmlMenuItem"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/generic_list.gif" #IMAGE_ATTR# /></a><img src="#IMAGE_PREFIX#themes/generic_open.gif" width="22" height="75" class="dhtmlMenu" onclick="app_AppMenuMultiOpenBottom(this,''#LIST_ITEM_ID#'',false)" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a></div>';

t7:=t7||'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" /></a></li>';

t8:=t8||'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" /></a></li>';

wwv_flow_api.create_list_template (
  p_id=>1681911866970183 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Pull Down Menu with Image (Custom 1)',
  p_theme_id  => 18,
  p_theme_class_id => 9,
  p_list_template_before_rows=>'<div class="dhtmlMenuLG">',
  p_list_template_after_rows=>'</div><br style="clear:both;"/><br style="clear:both;"/>',
  p_before_sub_list=>'<ul id="#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#" class="dhtmlSubMenu2" style="display:none;"><li class="dhtmlSubMenuP" onmouseover="dhtml_CloseAllSubMenusL(this)">#PARENT_TEXT#</li>',
  p_after_sub_list=>'</ul>',
  p_sub_list_item_current=> t3,
  p_sub_list_item_noncurrent=> t4,
  p_item_templ_curr_w_child=> t5,
  p_item_templ_noncurr_w_child=> t6,
  p_sub_templ_curr_w_child=> t7,
  p_sub_templ_noncurr_w_child=> t8,
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/tabbed_navigation_list
prompt  ......list template 1682227807970183
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<td valign="bottom" class="t18SepL"><img src="#IMAGE_PREFIX#themes/theme_18/tab_list_left_cap.gif" /></td>'||chr(10)||
'<td class="t18CurrentListTab"><a class="t18CurrentListTab" href="#LINK#">#TEXT#</a></td>'||chr(10)||
'<td valign="bottom" class="t18SepR"><img src="#IMAGE_PREFIX#themes/theme_18/tab_list_right_cap.gif" /></td>';

t2:=t2||'<td><a href="#LINK#">#TEXT#</a></td>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>1682227807970183 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Tabbed Navigation List',
  p_theme_id  => 18,
  p_theme_class_id => 7,
  p_list_template_before_rows=>'<table cellpadding="0" border="0" cellspacing="0"  summary="" width="100%" class="t18TabbedNavigationList"><tbody><tr><td class="t18LeftTabList">&nbsp;&nbsp;&nbsp;&nbsp;</td>',
  p_list_template_after_rows=>'<td class="t18EndCap" width="100%">&nbsp;</td></tr></tbody></table>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/tree_list
prompt  ......list template 1682513240970183
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<li><a href="#LINK#">#TEXT#</a></li>';

t2:=t2||'<li><a href="#LINK#">#TEXT#</a></li>';

t3:=t3||'<li><a href="#LINK#">#TEXT#</a></li>';

t4:=t4||'<li><a href="#LINK#">#TEXT#</a></li>';

t5:=t5||'<li><a href="#LINK#">#TEXT#</a></li>';

t6:=t6||'<li><a href="#LINK#">#TEXT#</a></li>';

t7:=t7||'<li><a href="#LINK#">#TEXT#</a></li>';

t8:=t8||'<li><a href="#LINK#">#TEXT#</a></li>';

wwv_flow_api.create_list_template (
  p_id=>1682513240970183 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Tree List',
  p_theme_id  => 18,
  p_theme_class_id => 23,
  p_list_template_before_rows=>'<ul class="htmlTree">',
  p_list_template_after_rows=>'</ul><br style="clear:both;"/><br style="clear:both;"/>',
  p_before_sub_list=>'<ul id="#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#">',
  p_after_sub_list=>'</ul>',
  p_sub_list_item_current=> t3,
  p_sub_list_item_noncurrent=> t4,
  p_item_templ_curr_w_child=> t5,
  p_item_templ_noncurr_w_child=> t6,
  p_sub_templ_curr_w_child=> t7,
  p_sub_templ_noncurr_w_child=> t8,
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/vertical_images_list
prompt  ......list template 1682818002970183
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<tr><td class="t18current"><a href="#LINK#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# />#TEXT#</a></td></tr>';

t2:=t2||'<tr><td><a href="#LINK#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# />#TEXT#</a></td></tr>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>1682818002970183 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Vertical Images List',
  p_theme_id  => 18,
  p_theme_class_id => 5,
  p_list_template_before_rows=>'<table border="0" cellpadding="0" cellspacing="0" summary="" class="t18VerticalImagesList">',
  p_list_template_after_rows=>'</table>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/vertical_images_list_custom_2
prompt  ......list template 1683126551970184
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<tr><td align="left"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# /></td><td align="left"><a href="#LINK#">#TEXT#</a></td></tr>'||chr(10)||
'';

t2:=t2||'<tr><td align="left"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# /></td><td align="left"><a href="#LINK#">#TEXT#</a></td></tr>'||chr(10)||
'';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>1683126551970184 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Vertical Images List (Custom 2)',
  p_theme_id  => 18,
  p_theme_class_id => 10,
  p_list_template_before_rows=>'<table border="0" cellpadding="0" cellspacing="5" summary="" >',
  p_list_template_after_rows=>'</table>'||chr(10)||
'',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/vertical_ordered_list
prompt  ......list template 1683423004970184
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<li class="t18current"><a href="#LINK#">#TEXT#</a></li>';

t2:=t2||'<li><a href="#LINK#">#TEXT#</a></li>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>1683423004970184 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Vertical Ordered List',
  p_theme_id  => 18,
  p_theme_class_id => 2,
  p_list_template_before_rows=>'<ol class="t18VerticalOrderedList">',
  p_list_template_after_rows=>'</ol>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/vertical_sidebar_list
prompt  ......list template 1683726529970184
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<a href="#LINK#" class="current">#TEXT#</a>';

t2:=t2||'<a href="#LINK#">#TEXT#</a>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>1683726529970184 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Vertical Sidebar List',
  p_theme_id  => 18,
  p_theme_class_id => 19,
  p_list_template_before_rows=>'<div class="t18VerticalSidebarList">',
  p_list_template_after_rows=>'</div>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/vertical_unordered_links_without_bullets
prompt  ......list template 1684000422970184
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<li class="t18current"><a href="#LINK#">#TEXT#</a></li>';

t2:=t2||'<li><a href="#LINK#">#TEXT#</a></li>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>1684000422970184 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Vertical Unordered Links without Bullets',
  p_theme_id  => 18,
  p_theme_class_id => 18,
  p_list_template_before_rows=>'<ul class="t18VerticalUnorderedLinkswithoutBullets">',
  p_list_template_after_rows=>'</ul>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/vertical_unordered_list_with_bullets
prompt  ......list template 1684324402970185
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<li class="t18current"><a href="#LINK#">#TEXT#</a></li>';

t2:=t2||'<li><a href="#LINK#">#TEXT#</a></li>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>1684324402970185 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Vertical Unordered List with Bullets',
  p_theme_id  => 18,
  p_theme_class_id => 1,
  p_list_template_before_rows=>'<ul class="t18VerticalUnorderedListwithBullets">',
  p_list_template_after_rows=>'</ul>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/wizard_progress_list
prompt  ......list template 1684616546970185
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<div class="t18current">#TEXT#</div>';

t2:=t2||'<div>#TEXT#</div>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>1684616546970185 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Wizard Progress List',
  p_theme_id  => 18,
  p_theme_class_id => 17,
  p_list_template_before_rows=>'<div class="t18WizardProgressList">',
  p_list_template_after_rows=>'<center>&DONE.</center>'||chr(10)||
'</div>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

prompt  ...report templates
--
--application/shared_components/user_interface/templates/report/borderless
prompt  ......report template 1630817334593369
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<td headers="#COLUMN_HEADER_NAME#" #ALIGNMENT# class="t20data">#COLUMN_VALUE#</td>';

c2 := null;
c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 1630817334593369 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'Borderless',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<table cellpadding="0" border="0" cellspacing="0" summary="" class="t20Report" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">#TOP_PAGINATION#'||chr(10)||
'<tr><td><table class="t20Borderless t20Report" cellpadding="0" border="0" cellspacing="0" summary="">',
  p_row_template_after_rows =>'</table><div class="t20CVS">#EXTERNAL_LINK##CSV_LINK#</div></td></tr>#PAGINATION#</table>'||chr(10)||
'',
  p_row_template_table_attr =>'OMIT',
  p_row_template_type =>'GENERIC_COLUMNS',
  p_column_heading_template=>'<th class="t20ReportHeader"#ALIGNMENT# id="#COLUMN_HEADER_NAME#">#COLUMN_HEADER#</th>',
  p_row_template_display_cond1=>'0',
  p_row_template_display_cond2=>'0',
  p_row_template_display_cond3=>'0',
  p_row_template_display_cond4=>'0',
  p_next_page_template=>'<a href="#LINK#" class="t20pagination">#PAGINATION_NEXT# &gt;</a>',
  p_previous_page_template=>'<a href="#LINK#" class="t20pagination">&lt;#PAGINATION_PREVIOUS#</a>',
  p_next_set_template=>'<a href="#LINK#" class="t20pagination">#PAGINATION_NEXT_SET#&gt;&gt;</a>',
  p_previous_set_template=>'<a href="#LINK#" class="t20pagination">&lt;&lt;#PAGINATION_PREVIOUS_SET#</a>',
  p_row_style_checked=>'#CCCCCC',
  p_theme_id  => 20,
  p_theme_class_id => 1,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

 
begin
 
begin
wwv_flow_api.create_row_template_patch (
  p_id => 1630817334593369 + wwv_flow_api.g_id_offset,
  p_row_template_before_first =>'<tr #HIGHLIGHT_ROW#>',
  p_row_template_after_last =>'</tr>');
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/report/horizontal_border
prompt  ......report template 1631317703593370
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<td headers="#COLUMN_HEADER_NAME#" #ALIGNMENT# class="t20data">#COLUMN_VALUE#</td>';

c2 := null;
c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 1631317703593370 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'Horizontal Border',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<table cellpadding="0" border="0" cellspacing="0" summary="" class="t20Report" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">#TOP_PAGINATION#'||chr(10)||
'<tr><td><table class="t20HorizontalBorder t20Report" border="0" cellpadding="0" cellspacing="0" summary="">',
  p_row_template_after_rows =>'</table><div class="t20CVS">#EXTERNAL_LINK##CSV_LINK#</div></td></tr>#PAGINATION#</table>',
  p_row_template_table_attr =>'OMIT',
  p_row_template_type =>'GENERIC_COLUMNS',
  p_column_heading_template=>'<th class="t20ReportHeader"  id="#COLUMN_HEADER_NAME#" #ALIGNMENT#>#COLUMN_HEADER#</th>',
  p_row_template_display_cond1=>'0',
  p_row_template_display_cond2=>'0',
  p_row_template_display_cond3=>'0',
  p_row_template_display_cond4=>'0',
  p_next_page_template=>'<a href="#LINK#" class="t20pagination">#PAGINATION_NEXT# &gt;</a>',
  p_previous_page_template=>'<a href="#LINK#" class="t20pagination">&lt;#PAGINATION_PREVIOUS#</a>',
  p_next_set_template=>'<a href="#LINK#" class="t20pagination">#PAGINATION_NEXT_SET#&gt;&gt;</a>',
  p_previous_set_template=>'<a href="#LINK#" class="t20pagination">&lt;&lt;#PAGINATION_PREVIOUS_SET#</a>',
  p_row_style_checked=>'#CCCCCC',
  p_theme_id  => 20,
  p_theme_class_id => 2,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

 
begin
 
begin
wwv_flow_api.create_row_template_patch (
  p_id => 1631317703593370 + wwv_flow_api.g_id_offset,
  p_row_template_before_first =>'<tr #HIGHLIGHT_ROW#>',
  p_row_template_after_last =>'</tr>');
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/report/one_column_unordered_list
prompt  ......report template 1631830021593370
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'#COLUMN_VALUE#';

c2 := null;
c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 1631830021593370 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'One Column Unordered List',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<table border="0" cellpadding="0" cellspacing="0" summary="" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">'||chr(10)||
'#TOP_PAGINATION#<tr><td><ul class="t20OneColumnUnorderedList">',
  p_row_template_after_rows =>'</ul><div class="t20CVS">#EXTERNAL_LINK##CSV_LINK#</div></td></tr>#PAGINATION#</table>',
  p_row_template_table_attr =>'OMIT',
  p_row_template_type =>'GENERIC_COLUMNS',
  p_column_heading_template=>'',
  p_row_template_display_cond1=>'0',
  p_row_template_display_cond2=>'0',
  p_row_template_display_cond3=>'0',
  p_row_template_display_cond4=>'0',
  p_next_page_template=>'<a href="#LINK#" class="t20pagination">#PAGINATION_NEXT# &gt;</a>',
  p_previous_page_template=>'<a href="#LINK#" class="t20pagination">&lt;#PAGINATION_PREVIOUS#</a>',
  p_next_set_template=>'<a href="#LINK#" class="t20pagination">#PAGINATION_NEXT_SET#&gt;&gt;</a>',
  p_previous_set_template=>'<a href="#LINK#" class="t20pagination">&lt;&lt;#PAGINATION_PREVIOUS_SET#</a>',
  p_theme_id  => 20,
  p_theme_class_id => 3,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

 
begin
 
begin
wwv_flow_api.create_row_template_patch (
  p_id => 1631830021593370 + wwv_flow_api.g_id_offset,
  p_row_template_before_first =>'<li>',
  p_row_template_after_last =>'</li>');
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/report/standard
prompt  ......report template 1632301498593370
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<td #ALIGNMENT# headers="#COLUMN_HEADER#" class="t20data">#COLUMN_VALUE#</td>';

c2 := null;
c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 1632301498593370 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'Standard',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<table cellpadding="0" border="0" cellspacing="0" summary="" class="t20Report" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">#TOP_PAGINATION#'||chr(10)||
'<tr><td><table cellpadding="0" border="0" cellspacing="0" summary="" class="t20Report t20Standard">',
  p_row_template_after_rows =>'</table><div class="t20CVS">#CSV_LINK#</div></td></tr>#PAGINATION#</table>',
  p_row_template_table_attr =>'OMIT',
  p_row_template_type =>'GENERIC_COLUMNS',
  p_column_heading_template=>'<th class="t20ReportHeader"#ALIGNMENT# id="#COLUMN_HEADER_NAME#">#COLUMN_HEADER#</th>',
  p_row_template_display_cond1=>'0',
  p_row_template_display_cond2=>'0',
  p_row_template_display_cond3=>'0',
  p_row_template_display_cond4=>'0',
  p_next_page_template=>'<a href="#LINK#" class="t20pagination">#PAGINATION_NEXT# &gt;</a>',
  p_previous_page_template=>'<a href="#LINK#" class="t20pagination">&lt;#PAGINATION_PREVIOUS#</a>',
  p_next_set_template=>'<a href="#LINK#" class="t20pagination">#PAGINATION_NEXT_SET#&gt;&gt;</a>',
  p_previous_set_template=>'<a href="#LINK#" class="t20pagination">&lt;&lt;#PAGINATION_PREVIOUS_SET#</a>',
  p_theme_id  => 20,
  p_theme_class_id => 4,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

 
begin
 
begin
wwv_flow_api.create_row_template_patch (
  p_id => 1632301498593370 + wwv_flow_api.g_id_offset,
  p_row_template_before_first =>'<tr #HIGHLIGHT_ROW#>',
  p_row_template_after_last =>'</tr>');
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/report/standard_ppr
prompt  ......report template 1632814645593371
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<td #ALIGNMENT# headers="#COLUMN_HEADER#" class="t20data">#COLUMN_VALUE#</td>';

c2 := null;
c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 1632814645593371 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'Standard (PPR)',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<div id="report#REGION_ID#"><htmldb:#REGION_ID#><table cellpadding="0" border="0" cellspacing="0" summary="" class="t20Report" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">#TOP_PAGINATION#'||chr(10)||
'<tr><td><table cellpadding="0" border="0" cellspacing="0" summary="" class="t20Standard t20Report">',
  p_row_template_after_rows =>'</table><div class="t20CVS">#EXTERNAL_LINK##CSV_LINK#</div></td></tr>#PAGINATION#</table><script language=JavaScript type=text/javascript>'||chr(10)||
'<!--'||chr(10)||
'init_htmlPPRReport(''#REGION_ID#'');'||chr(10)||
''||chr(10)||
'//-->'||chr(10)||
'</script>'||chr(10)||
'</htmldb:#REGION_ID#>'||chr(10)||
'</div>',
  p_row_template_table_attr =>'OMIT',
  p_row_template_type =>'GENERIC_COLUMNS',
  p_column_heading_template=>'<th class="t20ReportHeader"#ALIGNMENT# id="#COLUMN_HEADER_NAME#">#COLUMN_HEADER#</th>',
  p_row_template_display_cond1=>'0',
  p_row_template_display_cond2=>'0',
  p_row_template_display_cond3=>'0',
  p_row_template_display_cond4=>'0',
  p_next_page_template=>'<a href="javascript:html_PPR_Report_Page(this,''#REGION_ID#'',''#LINK#'')" class="t20pagination">#PAGINATION_NEXT# &gt;</a>',
  p_previous_page_template=>'<a href="javascript:html_PPR_Report_Page(this,''#REGION_ID#'',''#LINK#'')" class="t20pagination">&lt;#PAGINATION_PREVIOUS#</a>',
  p_next_set_template=>'<a href="javascript:html_PPR_Report_Page(this,''#REGION_ID#'',''#LINK#'')" class="t20pagination">#PAGINATION_NEXT_SET#&gt;&gt;</a>',
  p_previous_set_template=>'<a href="javascript:html_PPR_Report_Page(this,''#REGION_ID#'',''#LINK#'')" class="t20pagination">&lt;&lt;#PAGINATION_PREVIOUS_SET#</a>',
  p_row_style_checked=>'#CCCCCC',
  p_theme_id  => 20,
  p_theme_class_id => 7,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

 
begin
 
begin
wwv_flow_api.create_row_template_patch (
  p_id => 1632814645593371 + wwv_flow_api.g_id_offset,
  p_row_template_before_first =>'<tr #HIGHLIGHT_ROW#>',
  p_row_template_after_last =>'</tr>');
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/report/standard_alternating_row_colors
prompt  ......report template 1633303185593371
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<td headers="#COLUMN_HEADER_NAME#" #ALIGNMENT# class="t20data">#COLUMN_VALUE#</td>';

c2:=c2||'<td headers="#COLUMN_HEADER_NAME#" #ALIGNMENT# class="t20dataalt">#COLUMN_VALUE#</td>';

c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 1633303185593371 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'Standard, Alternating Row Colors',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<table border="0" cellpadding="0" cellspacing="0" summary="" class="t20Report" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">#TOP_PAGINATION#'||chr(10)||
'<tr><td><table border="0" cellpadding="0" cellspacing="0" summary="" class="t20StandardAlternatingRowColors t20Report">',
  p_row_template_after_rows =>'</table><div class="t20CVS">#EXTERNAL_LINK##CSV_LINK#</div></td></tr>#PAGINATION#</table>',
  p_row_template_table_attr =>'OMIT',
  p_row_template_type =>'GENERIC_COLUMNS',
  p_column_heading_template=>'<th class="t20ReportHeader"#ALIGNMENT# id="#COLUMN_HEADER_NAME#">#COLUMN_HEADER#</th>',
  p_row_template_display_cond1=>'ODD_ROW_NUMBERS',
  p_row_template_display_cond2=>'NOT_CONDITIONAL',
  p_row_template_display_cond3=>'NOT_CONDITIONAL',
  p_row_template_display_cond4=>'ODD_ROW_NUMBERS',
  p_next_page_template=>'<a href="#LINK#" class="t20pagination">#PAGINATION_NEXT# &gt;</a>',
  p_previous_page_template=>'<a href="#LINK#" class="t20pagination">&lt;#PAGINATION_PREVIOUS#</a>',
  p_next_set_template=>'<a href="#LINK#" class="t20pagination">#PAGINATION_NEXT_SET#&gt;&gt;</a>',
  p_previous_set_template=>'<a href="#LINK#" class="t20pagination">&lt;&lt;#PAGINATION_PREVIOUS_SET#</a>',
  p_row_style_checked=>'#CCCCCC',
  p_theme_id  => 20,
  p_theme_class_id => 5,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

 
begin
 
begin
wwv_flow_api.create_row_template_patch (
  p_id => 1633303185593371 + wwv_flow_api.g_id_offset,
  p_row_template_before_first =>'<tr #HIGHLIGHT_ROW#>',
  p_row_template_after_last =>'</tr>');
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/report/value_attribute_pairs
prompt  ......report template 1633812686593372
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<tr>'||chr(10)||
'<th class="t20ReportHeader">#COLUMN_HEADER#</th>'||chr(10)||
'<td class="t20data">#COLUMN_VALUE#</td>'||chr(10)||
'</tr>';

c2 := null;
c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 1633812686593372 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'Value Attribute Pairs',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<table cellpadding="0" cellspacing="0" border="0" summary=""#REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">#TOP_PAGINATION#<tr><td><table cellpadding="0" cellspacing="0" border="0" summary="" class="t20ValueAttributePairs">',
  p_row_template_after_rows =>'</table><div class="t20CVS">#EXTERNAL_LINK##CSV_LINK#</div></td></tr>#PAGINATION#</table>',
  p_row_template_table_attr =>'OMIT',
  p_row_template_type =>'GENERIC_COLUMNS',
  p_column_heading_template=>'',
  p_row_template_display_cond1=>'0',
  p_row_template_display_cond2=>'0',
  p_row_template_display_cond3=>'0',
  p_row_template_display_cond4=>'0',
  p_next_page_template=>'<a href="#LINK#" class="t20pagination">#PAGINATION_NEXT# &gt;</a>',
  p_previous_page_template=>'<a href="#LINK#" class="t20pagination">&lt;#PAGINATION_PREVIOUS#</a>',
  p_next_set_template=>'<a href="#LINK#" class="t20pagination">#PAGINATION_NEXT_SET#&gt;&gt;</a>',
  p_previous_set_template=>'<a href="#LINK#" class="t20pagination">&lt;&lt;#PAGINATION_PREVIOUS_SET#</a>',
  p_theme_id  => 20,
  p_theme_class_id => 6,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

 
begin
 
begin
wwv_flow_api.create_row_template_patch (
  p_id => 1633812686593372 + wwv_flow_api.g_id_offset,
  p_row_template_before_first =>'',
  p_row_template_after_last =>'<tr><td colspan="2" class="t20seperate"><br /></td></tr>');
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/report/borderless
prompt  ......report template 1684924920970186
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<td headers="#COLUMN_HEADER_NAME#" #ALIGNMENT# class="t18data">#COLUMN_VALUE#</td>';

c2 := null;
c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 1684924920970186 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'Borderless',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<table cellpadding="0" border="0" cellspacing="0" summary="" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">#TOP_PAGINATION#'||chr(10)||
'<tr><td><table class="t18Borderless" cellpadding="0" border="0" cellspacing="0" summary="">',
  p_row_template_after_rows =>'</table><div class="t18CVS">#EXTERNAL_LINK##CSV_LINK#</div></td></tr>#PAGINATION#</table>'||chr(10)||
'',
  p_row_template_table_attr =>'OMIT',
  p_row_template_type =>'GENERIC_COLUMNS',
  p_column_heading_template=>'<th class="t18ReportHeader"#ALIGNMENT# id="#COLUMN_HEADER_NAME#">#COLUMN_HEADER#</th>',
  p_row_template_display_cond1=>'0',
  p_row_template_display_cond2=>'0',
  p_row_template_display_cond3=>'0',
  p_row_template_display_cond4=>'0',
  p_next_page_template=>'<a href="#LINK#" class="t18pagination">#PAGINATION_NEXT# &gt;</a>',
  p_previous_page_template=>'<a href="#LINK#" class="t18pagination">&lt;#PAGINATION_PREVIOUS#</a>',
  p_next_set_template=>'<a href="#LINK#" class="t18pagination">#PAGINATION_NEXT_SET#&gt;&gt;</a>',
  p_previous_set_template=>'<a href="#LINK#" class="t18pagination">&lt;&lt;#PAGINATION_PREVIOUS_SET#</a>',
  p_row_style_checked=>'#CCCCCC',
  p_theme_id  => 18,
  p_theme_class_id => 1,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

 
begin
 
begin
wwv_flow_api.create_row_template_patch (
  p_id => 1684924920970186 + wwv_flow_api.g_id_offset,
  p_row_template_before_first =>'<tr #HIGHLIGHT_ROW#>',
  p_row_template_after_last =>'</tr>');
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/report/horizontal_border
prompt  ......report template 1685410480970186
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<td headers="#COLUMN_HEADER_NAME#" #ALIGNMENT# class="t18data">#COLUMN_VALUE#</td>';

c2 := null;
c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 1685410480970186 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'Horizontal Border',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<table cellpadding="0" border="0" cellspacing="0" summary="" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">#TOP_PAGINATION#'||chr(10)||
'<tr><td><table class="t18HorizontalBorder" border="0" cellpadding="0" cellspacing="0" summary="">',
  p_row_template_after_rows =>'</table><div class="t18CVS">#EXTERNAL_LINK##CSV_LINK#</div></td></tr>#PAGINATION#</table>',
  p_row_template_table_attr =>'OMIT',
  p_row_template_type =>'GENERIC_COLUMNS',
  p_column_heading_template=>'<th class="t18ReportHeader"  id="#COLUMN_HEADER_NAME#" #ALIGNMENT#>#COLUMN_HEADER#</th>',
  p_row_template_display_cond1=>'0',
  p_row_template_display_cond2=>'0',
  p_row_template_display_cond3=>'0',
  p_row_template_display_cond4=>'0',
  p_next_page_template=>'<a href="#LINK#" class="t18pagination">#PAGINATION_NEXT# &gt;</a>',
  p_previous_page_template=>'<a href="#LINK#" class="t18pagination">&lt;#PAGINATION_PREVIOUS#</a>',
  p_next_set_template=>'<a href="#LINK#" class="t18pagination">#PAGINATION_NEXT_SET#&gt;&gt;</a>',
  p_previous_set_template=>'<a href="#LINK#" class="t18pagination">&lt;&lt;#PAGINATION_PREVIOUS_SET#</a>',
  p_row_style_checked=>'#CCCCCC',
  p_theme_id  => 18,
  p_theme_class_id => 2,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

 
begin
 
begin
wwv_flow_api.create_row_template_patch (
  p_id => 1685410480970186 + wwv_flow_api.g_id_offset,
  p_row_template_before_first =>'<tr #HIGHLIGHT_ROW#>',
  p_row_template_after_last =>'</tr>');
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/report/one_column_unordered_list
prompt  ......report template 1685931804970187
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'#COLUMN_VALUE#';

c2 := null;
c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 1685931804970187 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'One Column Unordered List',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<table border="0" cellpadding="0" cellspacing="0" summary="" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">#TOP_PAGINATION#<tr><td><ul class="t18OneColumnUnorderedList">',
  p_row_template_after_rows =>'</ul><div class="t18CVS">#EXTERNAL_LINK##CSV_LINK#</div></td></tr>#PAGINATION#</table>',
  p_row_template_table_attr =>'OMIT',
  p_row_template_type =>'GENERIC_COLUMNS',
  p_column_heading_template=>'',
  p_row_template_display_cond1=>'0',
  p_row_template_display_cond2=>'0',
  p_row_template_display_cond3=>'0',
  p_row_template_display_cond4=>'0',
  p_next_page_template=>'<a href="#LINK#" class="t18pagination">#PAGINATION_NEXT# &gt;</a>',
  p_previous_page_template=>'<a href="#LINK#" class="t18pagination">&lt;#PAGINATION_PREVIOUS#</a>',
  p_next_set_template=>'<a href="#LINK#" class="t18pagination">#PAGINATION_NEXT_SET#&gt;&gt;</a>',
  p_previous_set_template=>'<a href="#LINK#" class="t18pagination">&lt;&lt;#PAGINATION_PREVIOUS_SET#</a>',
  p_theme_id  => 18,
  p_theme_class_id => 3,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

 
begin
 
begin
wwv_flow_api.create_row_template_patch (
  p_id => 1685931804970187 + wwv_flow_api.g_id_offset,
  p_row_template_before_first =>'<li>',
  p_row_template_after_last =>'</li>');
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/report/standard
prompt  ......report template 1686427134970187
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<td #ALIGNMENT# headers="#COLUMN_HEADER#" class="t18data">#COLUMN_VALUE#</td>';

c2 := null;
c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 1686427134970187 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'Standard',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<table cellpadding="0" border="0" cellspacing="0" summary="" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">#TOP_PAGINATION#'||chr(10)||
'<tr><td><table cellpadding="0" border="0" cellspacing="0" summary="" class="t18Standard">',
  p_row_template_after_rows =>'</table><div class="t18CVS">#EXTERNAL_LINK##CSV_LINK#</div></td></tr>#PAGINATION#</table>',
  p_row_template_table_attr =>'OMIT',
  p_row_template_type =>'GENERIC_COLUMNS',
  p_column_heading_template=>'<th class="t18ReportHeader"#ALIGNMENT# id="#COLUMN_HEADER_NAME#">#COLUMN_HEADER#</th>',
  p_row_template_display_cond1=>'0',
  p_row_template_display_cond2=>'0',
  p_row_template_display_cond3=>'0',
  p_row_template_display_cond4=>'0',
  p_next_page_template=>'<a href="#LINK#" class="t18pagination">#PAGINATION_NEXT# &gt;</a>',
  p_previous_page_template=>'<a href="#LINK#" class="t18pagination">&lt;#PAGINATION_PREVIOUS#</a>',
  p_next_set_template=>'<a href="#LINK#" class="t18pagination">#PAGINATION_NEXT_SET#&gt;&gt;</a>',
  p_previous_set_template=>'<a href="#LINK#" class="t18pagination">&lt;&lt;#PAGINATION_PREVIOUS_SET#</a>',
  p_row_style_checked=>'#CCCCCC',
  p_theme_id  => 18,
  p_theme_class_id => 4,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

 
begin
 
begin
wwv_flow_api.create_row_template_patch (
  p_id => 1686427134970187 + wwv_flow_api.g_id_offset,
  p_row_template_before_first =>'<tr #HIGHLIGHT_ROW#>',
  p_row_template_after_last =>'</tr>');
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/report/standard_ppr
prompt  ......report template 1686904779970188
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<td #ALIGNMENT# headers="#COLUMN_HEADER#" class="t18data">#COLUMN_VALUE#</td>';

c2 := null;
c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 1686904779970188 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'Standard (PPR)',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<div id="report#REGION_ID#"><htmldb:#REGION_ID#><table cellpadding="0" border="0" cellspacing="0" summary="">#TOP_PAGINATION#'||chr(10)||
'<tr><td><table cellpadding="0" border="0" cellspacing="0" summary="" class="t18Standard">',
  p_row_template_after_rows =>'</table><div class="t18CVS">#EXTERNAL_LINK##CSV_LINK#</div></td></tr>#PAGINATION#</table><script language=JavaScript type=text/javascript>'||chr(10)||
'<!--'||chr(10)||
'init_htmlPPRReport(''#REGION_ID#'');'||chr(10)||
''||chr(10)||
'//-->'||chr(10)||
'</script>'||chr(10)||
'</htmldb:#REGION_ID#>'||chr(10)||
'</div>',
  p_row_template_table_attr =>'OMIT',
  p_row_template_type =>'GENERIC_COLUMNS',
  p_column_heading_template=>'<th class="t18ReportHeader"#ALIGNMENT# id="#COLUMN_HEADER_NAME#">#COLUMN_HEADER#</th>',
  p_row_template_display_cond1=>'0',
  p_row_template_display_cond2=>'0',
  p_row_template_display_cond3=>'0',
  p_row_template_display_cond4=>'0',
  p_next_page_template=>'<a href="javascript:html_PPR_Report_Page(this,''#REGION_ID#'',''#LINK#'')" class="t18pagination">#PAGINATION_NEXT# &gt;</a>',
  p_previous_page_template=>'<a href="javascript:html_PPR_Report_Page(this,''#REGION_ID#'',''#LINK#'')" class="t18pagination">&lt;#PAGINATION_PREVIOUS#</a>',
  p_next_set_template=>'<a href="javascript:html_PPR_Report_Page(this,''#REGION_ID#'',''#LINK#'')" class="t18pagination">#PAGINATION_NEXT_SET#&gt;&gt;</a>',
  p_previous_set_template=>'<a href="javascript:html_PPR_Report_Page(this,''#REGION_ID#'',''#LINK#'')" class="t18pagination">&lt;&lt;#PAGINATION_PREVIOUS_SET#</a>',
  p_row_style_checked=>'#CCCCCC',
  p_theme_id  => 18,
  p_theme_class_id => 7,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

 
begin
 
begin
wwv_flow_api.create_row_template_patch (
  p_id => 1686904779970188 + wwv_flow_api.g_id_offset,
  p_row_template_before_first =>'<tr #HIGHLIGHT_ROW#>',
  p_row_template_after_last =>'</tr>');
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/report/standard_alternating_row_colors
prompt  ......report template 1687417726970188
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<td headers="#COLUMN_HEADER_NAME#" #ALIGNMENT# class="t18data">#COLUMN_VALUE#</td>';

c2:=c2||'<td headers="#COLUMN_HEADER_NAME#" #ALIGNMENT# class="t18dataalt">#COLUMN_VALUE#</td>';

c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 1687417726970188 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'Standard, Alternating Row Colors',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<table border="0" cellpadding="0" cellspacing="0" summary="" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">#TOP_PAGINATION#'||chr(10)||
'<tr><td><table border="0" cellpadding="0" cellspacing="0" summary="" class="t18StandardAlternatingRowColors">',
  p_row_template_after_rows =>'</table><div class="t18CVS">#EXTERNAL_LINK##CSV_LINK#</div></td></tr>#PAGINATION#</table>',
  p_row_template_table_attr =>'OMIT',
  p_row_template_type =>'GENERIC_COLUMNS',
  p_column_heading_template=>'<th class="t18ReportHeader"#ALIGNMENT# id="#COLUMN_HEADER_NAME#">#COLUMN_HEADER#</th>',
  p_row_template_display_cond1=>'ODD_ROW_NUMBERS',
  p_row_template_display_cond2=>'NOT_CONDITIONAL',
  p_row_template_display_cond3=>'NOT_CONDITIONAL',
  p_row_template_display_cond4=>'ODD_ROW_NUMBERS',
  p_next_page_template=>'<a href="#LINK#" class="t18pagination">#PAGINATION_NEXT# &gt;</a>',
  p_previous_page_template=>'<a href="#LINK#" class="t18pagination">&lt;#PAGINATION_PREVIOUS#</a>',
  p_next_set_template=>'<a href="#LINK#" class="t18pagination">#PAGINATION_NEXT_SET#&gt;&gt;</a>',
  p_previous_set_template=>'<a href="#LINK#" class="t18pagination">&lt;&lt;#PAGINATION_PREVIOUS_SET#</a>',
  p_row_style_checked=>'#CCCCCC',
  p_theme_id  => 18,
  p_theme_class_id => 5,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

 
begin
 
begin
wwv_flow_api.create_row_template_patch (
  p_id => 1687417726970188 + wwv_flow_api.g_id_offset,
  p_row_template_before_first =>'<tr #HIGHLIGHT_ROW#>',
  p_row_template_after_last =>'</tr>');
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/report/value_attribute_pairs
prompt  ......report template 1687922135970189
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<tr>'||chr(10)||
'<th class="t18ReportHeader">#COLUMN_HEADER#</th>'||chr(10)||
'<td class="t18data">#COLUMN_VALUE#</td>'||chr(10)||
'</tr>';

c2 := null;
c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 1687922135970189 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'Value Attribute Pairs',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<table cellpadding="0" cellspacing="0" border="0" summary="" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">#TOP_PAGINATION#<tr>'||chr(10)||
'<td><table cellpadding="0" cellspacing="0" border="0" summary="" class="t18ValueAttributePairs">',
  p_row_template_after_rows =>'</table><div class="t18CVS">#EXTERNAL_LINK##CSV_LINK#</div></td></tr>#PAGINATION#</table>',
  p_row_template_table_attr =>'OMIT',
  p_row_template_type =>'GENERIC_COLUMNS',
  p_column_heading_template=>'',
  p_row_template_display_cond1=>'0',
  p_row_template_display_cond2=>'0',
  p_row_template_display_cond3=>'0',
  p_row_template_display_cond4=>'0',
  p_next_page_template=>'<a href="#LINK#" class="t18pagination">#PAGINATION_NEXT# &gt;</a>',
  p_previous_page_template=>'<a href="#LINK#" class="t18pagination">&lt;#PAGINATION_PREVIOUS#</a>',
  p_next_set_template=>'<a href="#LINK#" class="t18pagination">#PAGINATION_NEXT_SET#&gt;&gt;</a>',
  p_previous_set_template=>'<a href="#LINK#" class="t18pagination">&lt;&lt;#PAGINATION_PREVIOUS_SET#</a>',
  p_theme_id  => 18,
  p_theme_class_id => 6,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

 
begin
 
begin
wwv_flow_api.create_row_template_patch (
  p_id => 1687922135970189 + wwv_flow_api.g_id_offset,
  p_row_template_before_first =>'',
  p_row_template_after_last =>'<tr><td colspan="2" class="t18seperate"><hr /></td></tr>');
exception when others then null;
end;
null;
 
end;
/

prompt  ...label templates
--
--application/shared_components/user_interface/templates/label/no_label
prompt  ......label template 1634330835593372
 
begin
 
begin
wwv_flow_api.create_field_template (
  p_id=> 1634330835593372 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_template_name=>'No Label',
  p_template_body1=>'<span class="t20NoLabel">',
  p_template_body2=>'</span>',
  p_on_error_before_label=>'<div class="t20InlineError">',
  p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>',
  p_theme_id  => 20,
  p_theme_class_id => 13,
  p_translate_this_template=> 'N',
  p_template_comment=> '');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/label/optional_label
prompt  ......label template 1634404750593372
 
begin
 
begin
wwv_flow_api.create_field_template (
  p_id=> 1634404750593372 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_template_name=>'Optional Label',
  p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" tabindex="999"><span class="t20OptionalLabel">',
  p_template_body2=>'</span></label>',
  p_on_error_before_label=>'<div class="t20InlineError">',
  p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>',
  p_theme_id  => 20,
  p_theme_class_id => 3,
  p_translate_this_template=> 'N',
  p_template_comment=> '');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/label/optional_label_with_help
prompt  ......label template 1634521808593372
 
begin
 
begin
wwv_flow_api.create_field_template (
  p_id=> 1634521808593372 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_template_name=>'Optional Label with Help',
  p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" tabindex="999"><a class="t20OptionalLabelwithHelp" href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'')" tabindex="999">',
  p_template_body2=>'</a></label>',
  p_on_error_before_label=>'<div class="t20InlineError">',
  p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>',
  p_theme_id  => 20,
  p_theme_class_id => 1,
  p_translate_this_template=> 'N',
  p_template_comment=> '');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/label/required_label
prompt  ......label template 1634622139593372
 
begin
 
begin
wwv_flow_api.create_field_template (
  p_id=> 1634622139593372 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_template_name=>'Required Label',
  p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" tabindex="999"><span class="t20Req">*</span><span class="t20RequiredLabel">',
  p_template_body2=>'</span></label>',
  p_on_error_before_label=>'<div class="t20InlineError">',
  p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>',
  p_theme_id  => 20,
  p_theme_class_id => 4,
  p_translate_this_template=> 'N',
  p_template_comment=> '');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/label/required_label_with_help
prompt  ......label template 1634700720593372
 
begin
 
begin
wwv_flow_api.create_field_template (
  p_id=> 1634700720593372 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_template_name=>'Required Label with Help',
  p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" tabindex="999"><span class="t20Req">*</span><a class="t20RequiredLabelwithHelp" href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'')" tabindex="999">',
  p_template_body2=>'</a></label>',
  p_on_error_before_label=>'<div class="t20InlineError">',
  p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>',
  p_theme_id  => 20,
  p_theme_class_id => 2,
  p_translate_this_template=> 'N',
  p_template_comment=> '');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/label/no_label
prompt  ......label template 1688422478970189
 
begin
 
begin
wwv_flow_api.create_field_template (
  p_id=> 1688422478970189 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_template_name=>'No Label',
  p_template_body1=>'<span class="t18NoLabel">',
  p_template_body2=>'</span>',
  p_on_error_before_label=>'<div class="t18InlineError">',
  p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>',
  p_theme_id  => 18,
  p_theme_class_id => 13,
  p_translate_this_template=> 'N',
  p_template_comment=> '');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/label/optional_label
prompt  ......label template 1688503754970189
 
begin
 
begin
wwv_flow_api.create_field_template (
  p_id=> 1688503754970189 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_template_name=>'Optional Label',
  p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" tabindex="999"><span class="t18OptionalLabel">',
  p_template_body2=>'</span></label>',
  p_on_error_before_label=>'<div class="t18InlineError">',
  p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>',
  p_theme_id  => 18,
  p_theme_class_id => 3,
  p_translate_this_template=> 'N',
  p_template_comment=> '');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/label/optional_label_with_help
prompt  ......label template 1688607321970189
 
begin
 
begin
wwv_flow_api.create_field_template (
  p_id=> 1688607321970189 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_template_name=>'Optional Label with Help',
  p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" tabindex="999"><a class="t18OptionalLabelwithHelp" href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'')" tabindex="999">',
  p_template_body2=>'</a></label>',
  p_on_error_before_label=>'<div class="t18InlineError">',
  p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>',
  p_theme_id  => 18,
  p_theme_class_id => 1,
  p_translate_this_template=> 'N',
  p_template_comment=> '');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/label/required_label
prompt  ......label template 1688705919970189
 
begin
 
begin
wwv_flow_api.create_field_template (
  p_id=> 1688705919970189 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_template_name=>'Required Label',
  p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" tabindex="999"><span class="t18RequiredLabel">',
  p_template_body2=>'</span></label>',
  p_on_error_before_label=>'<div class="t18InlineError">',
  p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>',
  p_theme_id  => 18,
  p_theme_class_id => 4,
  p_translate_this_template=> 'N',
  p_template_comment=> '');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/label/required_label_with_help
prompt  ......label template 1688805602970189
 
begin
 
begin
wwv_flow_api.create_field_template (
  p_id=> 1688805602970189 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_template_name=>'Required Label with Help',
  p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" tabindex="999"><a class="t18RequiredLabelwithHelp" href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'')" tabindex="999">',
  p_template_body2=>'</a></label>',
  p_on_error_before_label=>'<div class="t18InlineError">',
  p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>',
  p_theme_id  => 18,
  p_theme_class_id => 2,
  p_translate_this_template=> 'N',
  p_template_comment=> '');
end;
null;
 
end;
/

prompt  ...breadcrumb templates
--
--application/shared_components/user_interface/templates/breadcrumb/breadcrumb_menu
prompt  ......template 1634823390593372
 
begin
 
begin
wwv_flow_api.create_menu_template (
  p_id=> 1634823390593372 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=>'Breadcrumb Menu',
  p_before_first=>'',
  p_current_page_option=>'<a href="#LINK#" class="t20Current">#NAME#</a>',
  p_non_current_page_option=>'<a href="#LINK#">#NAME#</a>',
  p_menu_link_attributes=>'',
  p_between_levels=>'<b>&gt;</b>',
  p_after_last=>'',
  p_max_levels=>12,
  p_start_with_node=>'PARENT_TO_LEAF',
  p_theme_id  => 20,
  p_theme_class_id => 1,
  p_translate_this_template => 'N',
  p_template_comments=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/breadcrumb/hierarchical_menu
prompt  ......template 1634924606593373
 
begin
 
begin
wwv_flow_api.create_menu_template (
  p_id=> 1634924606593373 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=>'Hierarchical Menu',
  p_before_first=>'<ul class="t20HierarchicalMenu">',
  p_current_page_option=>'<li class="t20current"><a href="#LINK#">#NAME#</a></li>',
  p_non_current_page_option=>'<li><a href="#LINK#">#NAME#</a></li>',
  p_menu_link_attributes=>'',
  p_between_levels=>'',
  p_after_last=>'</ul>',
  p_max_levels=>11,
  p_start_with_node=>'CHILD_MENU',
  p_theme_id  => 20,
  p_theme_class_id => 2,
  p_translate_this_template => 'N',
  p_template_comments=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/breadcrumb/breadcrumb_menu
prompt  ......template 1688923655970189
 
begin
 
begin
wwv_flow_api.create_menu_template (
  p_id=> 1688923655970189 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=>'Breadcrumb Menu',
  p_before_first=>'',
  p_current_page_option=>'<a href="#LINK#" class="t18BreadC">#NAME#</a>',
  p_non_current_page_option=>'<a href="#LINK#" class="t18Bread">#NAME#</a>',
  p_menu_link_attributes=>'',
  p_between_levels=>'<b>&gt;</b>',
  p_after_last=>'<br />',
  p_max_levels=>12,
  p_start_with_node=>'PARENT_TO_LEAF',
  p_theme_id  => 18,
  p_theme_class_id => 1,
  p_translate_this_template => 'N',
  p_template_comments=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/breadcrumb/hierarchical_menu
prompt  ......template 1689032316970189
 
begin
 
begin
wwv_flow_api.create_menu_template (
  p_id=> 1689032316970189 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=>'Hierarchical Menu',
  p_before_first=>'<ul class="t18HierarchicalMenu">',
  p_current_page_option=>'<li class="t18current"><a href="#LINK#">#NAME#</a></li>',
  p_non_current_page_option=>'<li><a href="#LINK#">#NAME#</a></li>',
  p_menu_link_attributes=>'',
  p_between_levels=>'',
  p_after_last=>'</ul>',
  p_max_levels=>11,
  p_start_with_node=>'CHILD_MENU',
  p_theme_id  => 18,
  p_theme_class_id => 2,
  p_translate_this_template => 'N',
  p_template_comments=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/popuplov
prompt  ...popup list of values templates
--
prompt  ......template 1635628171593373
 
begin
 
begin
wwv_flow_api.create_popup_lov_template (
  p_id=> 1635628171593373 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_popup_icon=>'#IMAGE_PREFIX#lov_16x16.gif',
  p_popup_icon_attr=>'width="16" height="16" alt="Popup Lov"',
  p_popup_icon2=>'',
  p_popup_icon_attr2=>'',
  p_page_name=>'winlov',
  p_page_title=>'Search Dialog',
  p_page_html_head=>'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_20/theme_3_1.css" type="text/css">'||chr(10)||
'',
  p_page_body_attr=>'onload="first_field()" style="background-color:#FFFFFF;margin:0;"',
  p_before_field_text=>'<div class="t20PopupHead">',
  p_page_heading_text=>'',
  p_page_footer_text =>'',
  p_filter_width     =>'20',
  p_filter_max_width =>'100',
  p_filter_text_attr =>'',
  p_find_button_text =>'Search',
  p_find_button_image=>'',
  p_find_button_attr =>'',
  p_close_button_text=>'Close',
  p_close_button_image=>'',
  p_close_button_attr=>'',
  p_next_button_text =>'Next >',
  p_next_button_image=>'',
  p_next_button_attr =>'',
  p_prev_button_text =>'< Previous',
  p_prev_button_image=>'',
  p_prev_button_attr =>'',
  p_after_field_text=>'</div>',
  p_scrollbars=>'1',
  p_resizable=>'1',
  p_width =>'400',
  p_height=>'450',
  p_result_row_x_of_y=>'<br /><div style="padding:2px; font-size:8pt;">Row(s) #FIRST_ROW# - #LAST_ROW#</div>',
  p_result_rows_per_pg=>500,
  p_before_result_set=>'<div class="t20PopupBody">',
  p_theme_id  => 20,
  p_theme_class_id => 1,
  p_translate_this_template => 'N',
  p_after_result_set   =>'</div>');
end;
null;
 
end;
/

prompt  ......template 1689728195970190
 
begin
 
begin
wwv_flow_api.create_popup_lov_template (
  p_id=> 1689728195970190 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_popup_icon=>'#IMAGE_PREFIX#list_gray.gif',
  p_popup_icon_attr=>'width="13" height="13" alt="Popup Lov"',
  p_popup_icon2=>'',
  p_popup_icon_attr2=>'',
  p_page_name=>'winlov',
  p_page_title=>'Search Dialog',
  p_page_html_head=>'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_18/theme_3_1.css" type="text/css">'||chr(10)||
'',
  p_page_body_attr=>'onload="first_field()" style="background-color:#FFFFFF;margin:0;"',
  p_before_field_text=>'<div class="t18PopupHead">',
  p_page_heading_text=>'',
  p_page_footer_text =>'',
  p_filter_width     =>'20',
  p_filter_max_width =>'100',
  p_filter_text_attr =>'',
  p_find_button_text =>'Search',
  p_find_button_image=>'',
  p_find_button_attr =>'',
  p_close_button_text=>'Close',
  p_close_button_image=>'',
  p_close_button_attr=>'',
  p_next_button_text =>'Next >',
  p_next_button_image=>'',
  p_next_button_attr =>'',
  p_prev_button_text =>'< Previous',
  p_prev_button_image=>'',
  p_prev_button_attr =>'',
  p_after_field_text=>'</div>',
  p_scrollbars=>'1',
  p_resizable=>'1',
  p_width =>'400',
  p_height=>'450',
  p_result_row_x_of_y=>'<br /><div style="padding:2px; font-size:8pt;">Row(s) #FIRST_ROW# - #LAST_ROW#</div>',
  p_result_rows_per_pg=>500,
  p_before_result_set=>'<div class="t18PopupBody">',
  p_theme_id  => 18,
  p_theme_class_id => 1,
  p_translate_this_template => 'N',
  p_after_result_set   =>'</div>');
end;
null;
 
end;
/

prompt  ...calendar templates
--
--application/shared_components/user_interface/templates/calendar/calendar
prompt  ......template 1635013992593373
 
begin
 
begin
wwv_flow_api.create_calendar_template(
  p_id=> 1635013992593373 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_cal_template_name=>'Calendar',
  p_translate_this_template=> 'N',
  p_day_of_week_format=> '<th class="t20DayOfWeek">#IDAY#</th>',
  p_month_title_format=> '<table cellspacing="0" cellpadding="0" border="0" summary="" class="t20CalendarAlternative1Holder"> '||chr(10)||
' <tr>'||chr(10)||
'   <td class="t20MonthTitle">#IMONTH# #YYYY#</td>'||chr(10)||
' </tr>'||chr(10)||
' <tr>'||chr(10)||
' <td class="t20MonthBody">',
  p_month_open_format=> '<table border="0" cellpadding="0" cellspacing="0" summary="0" class="t20CalendarAlternative1">',
  p_month_close_format=> '</table></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'',
  p_day_title_format=> '<div class="t20DayTitle">#DD#</div><br />',
  p_day_open_format=> '<td class="t20Day" valign="top">',
  p_day_close_format=> '</td>',
  p_today_open_format=> '<td valign="top" class="t20Today">',
  p_weekend_title_format=> '<div class="t20WeekendDayTitle">#DD#</div><br />',
  p_weekend_open_format => '<td valign="top" class="t20WeekendDay">',
  p_weekend_close_format => '</td>',
  p_nonday_title_format => '<div class="t20NonDayTitle">#DD#</div><br />',
  p_nonday_open_format => '<td class="t20NonDay" valign="top">',
  p_nonday_close_format => '</td>',
  p_week_title_format => '',
  p_week_open_format => '<tr>',
  p_week_close_format => '</tr> ',
  p_daily_title_format => '<th width="14%" class="calheader">#IDAY#</th>',
  p_daily_open_format => '<tr>',
  p_daily_close_format => '</tr>',
  p_weekly_title_format => '',
  p_weekly_day_of_week_format => '',
  p_weekly_month_open_format => '',
  p_weekly_month_close_format => '',
  p_weekly_day_title_format => '',
  p_weekly_day_open_format => '',
  p_weekly_day_close_format => '',
  p_weekly_today_open_format => '',
  p_weekly_weekend_title_format => '',
  p_weekly_weekend_open_format => '',
  p_weekly_weekend_close_format => '',
  p_weekly_time_open_format => '',
  p_weekly_time_close_format => '',
  p_weekly_time_title_format => '',
  p_weekly_hour_open_format => '',
  p_weekly_hour_close_format => '',
  p_daily_day_of_week_format => '',
  p_daily_month_title_format => '',
  p_daily_month_open_format => '',
  p_daily_month_close_format => '',
  p_daily_day_title_format => '',
  p_daily_day_open_format => '',
  p_daily_day_close_format => '',
  p_daily_today_open_format => '',
  p_daily_time_open_format => '',
  p_daily_time_close_format => '',
  p_daily_time_title_format => '',
  p_daily_hour_open_format => '',
  p_daily_hour_close_format => '',
  p_theme_id  => 20,
  p_theme_class_id => 1,
  p_reference_id=> null);
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/calendar/calendar_alternative_1
prompt  ......template 1635221037593373
 
begin
 
begin
wwv_flow_api.create_calendar_template(
  p_id=> 1635221037593373 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_cal_template_name=>'Calendar, Alternative 1',
  p_translate_this_template=> 'N',
  p_day_of_week_format=> '<th class="t20DayOfWeek">#IDAY#</th>',
  p_month_title_format=> '<table cellspacing="0" cellpadding="0" border="0" summary="" class="t20CalendarHolder"> '||chr(10)||
' <tr>'||chr(10)||
'   <td class="t20MonthTitle">#IMONTH# #YYYY#</td>'||chr(10)||
' </tr>'||chr(10)||
' <tr>'||chr(10)||
' <td class="t20MonthBody">',
  p_month_open_format=> '<table border="0" cellpadding="0" cellspacing="0" summary="0" class="t20Calendar">',
  p_month_close_format=> '</table></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'',
  p_day_title_format=> '<div class="t20DayTitle">#DD#</div><br />',
  p_day_open_format=> '<td class="t20Day" valign="top">',
  p_day_close_format=> '</td>',
  p_today_open_format=> '<td valign="top" class="t20Today">',
  p_weekend_title_format=> '<div class="t20WeekendDayTitle">#DD#</div><br />',
  p_weekend_open_format => '<td valign="top" class="t20WeekendDay">',
  p_weekend_close_format => '</td>',
  p_nonday_title_format => '<div class="t20NonDayTitle">#DD#</div><br />',
  p_nonday_open_format => '<td class="t20NonDay" valign="top">',
  p_nonday_close_format => '</td>',
  p_week_title_format => '',
  p_week_open_format => '<tr>',
  p_week_close_format => '</tr> ',
  p_daily_title_format => '<th width="14%" class="calheader">#IDAY#</th>',
  p_daily_open_format => '<tr>',
  p_daily_close_format => '</tr>',
  p_weekly_title_format => '',
  p_weekly_day_of_week_format => '',
  p_weekly_month_open_format => '',
  p_weekly_month_close_format => '',
  p_weekly_day_title_format => '',
  p_weekly_day_open_format => '',
  p_weekly_day_close_format => '',
  p_weekly_today_open_format => '',
  p_weekly_weekend_title_format => '',
  p_weekly_weekend_open_format => '',
  p_weekly_weekend_close_format => '',
  p_weekly_time_open_format => '',
  p_weekly_time_close_format => '',
  p_weekly_time_title_format => '',
  p_weekly_hour_open_format => '',
  p_weekly_hour_close_format => '',
  p_daily_day_of_week_format => '',
  p_daily_month_title_format => '',
  p_daily_month_open_format => '',
  p_daily_month_close_format => '',
  p_daily_day_title_format => '',
  p_daily_day_open_format => '',
  p_daily_day_close_format => '',
  p_daily_today_open_format => '',
  p_daily_time_open_format => '',
  p_daily_time_close_format => '',
  p_daily_time_title_format => '',
  p_daily_hour_open_format => '',
  p_daily_hour_close_format => '',
  p_theme_id  => 20,
  p_theme_class_id => 2,
  p_reference_id=> null);
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/calendar/small_calender
prompt  ......template 1635413056593373
 
begin
 
begin
wwv_flow_api.create_calendar_template(
  p_id=> 1635413056593373 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_cal_template_name=>'Small Calender',
  p_translate_this_template=> 'N',
  p_day_of_week_format=> '',
  p_month_title_format=> '<table cellspacing="0" cellpadding="0" border="0" summary="" class="t20SmallCalenderHolder"> '||chr(10)||
' <tr>'||chr(10)||
'   <td class="t20MonthTitle">#IMONTH# #YYYY#</td>'||chr(10)||
' </tr>'||chr(10)||
' <tr>'||chr(10)||
' <td class="t20MonthBody">',
  p_month_open_format=> '<table border="0" cellpadding="0" cellspacing="0" summary="0" class="t20SmallCalender">',
  p_month_close_format=> '</table></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'',
  p_day_title_format=> '<div class="t20DayTitle">#DD#</div>',
  p_day_open_format=> '<td class="t20Day" valign="top">',
  p_day_close_format=> '</td>',
  p_today_open_format=> '<td valign="top" class="t20Today">',
  p_weekend_title_format=> '<div class="t20WeekendDayTitle">#DD#</div>',
  p_weekend_open_format => '<td valign="top" class="t20WeekendDay">',
  p_weekend_close_format => '</td>',
  p_nonday_title_format => '<div class="t20NonDayTitle">#DD#</div>',
  p_nonday_open_format => '<td class="t20NonDay" valign="top">',
  p_nonday_close_format => '</td>',
  p_week_title_format => '',
  p_week_open_format => '<tr>',
  p_week_close_format => '</tr> ',
  p_daily_title_format => '<th width="14%" class="calheader">#IDAY#</th>',
  p_daily_open_format => '<tr>',
  p_daily_close_format => '</tr>',
  p_weekly_title_format => '',
  p_weekly_day_of_week_format => '',
  p_weekly_month_open_format => '',
  p_weekly_month_close_format => '',
  p_weekly_day_title_format => '',
  p_weekly_day_open_format => '',
  p_weekly_day_close_format => '',
  p_weekly_today_open_format => '',
  p_weekly_weekend_title_format => '',
  p_weekly_weekend_open_format => '',
  p_weekly_weekend_close_format => '',
  p_weekly_time_open_format => '',
  p_weekly_time_close_format => '',
  p_weekly_time_title_format => '',
  p_weekly_hour_open_format => '',
  p_weekly_hour_close_format => '',
  p_daily_day_of_week_format => '',
  p_daily_month_title_format => '',
  p_daily_month_open_format => '',
  p_daily_month_close_format => '',
  p_daily_day_title_format => '',
  p_daily_day_open_format => '',
  p_daily_day_close_format => '',
  p_daily_today_open_format => '',
  p_daily_time_open_format => '',
  p_daily_time_close_format => '',
  p_daily_time_title_format => '',
  p_daily_hour_open_format => '',
  p_daily_hour_close_format => '',
  p_theme_id  => 20,
  p_theme_class_id => 3,
  p_reference_id=> null);
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/calendar/calendar
prompt  ......template 1689102261970190
 
begin
 
begin
wwv_flow_api.create_calendar_template(
  p_id=> 1689102261970190 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_cal_template_name=>'Calendar',
  p_translate_this_template=> 'N',
  p_day_of_week_format=> '<th class="t18DayOfWeek">#IDAY#</th>',
  p_month_title_format=> '<table cellspacing="0" cellpadding="0" border="0" summary="" class="t18CalendarHolder"> '||chr(10)||
' <tr>'||chr(10)||
'   <td class="t18MonthTitle">#IMONTH# #YYYY#</td>'||chr(10)||
' </tr>'||chr(10)||
' <tr>'||chr(10)||
' <td class="t18MonthBody">',
  p_month_open_format=> '<table border="0" cellpadding="0" cellspacing="0" summary="0" class="t18Calendar">',
  p_month_close_format=> '</table></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'',
  p_day_title_format=> '<div class="t18DayTitle">#DD#</div>',
  p_day_open_format=> '<td class="t18Day" valign="top">',
  p_day_close_format=> '</td>',
  p_today_open_format=> '<td valign="top" class="t18Today">',
  p_weekend_title_format=> '<div class="t18WeekendDayTitle">#DD#</div>',
  p_weekend_open_format => '<td valign="top" class="t18WeekendDay">',
  p_weekend_close_format => '</td>',
  p_nonday_title_format => '<div class="t18NonDayTitle">#DD#</div>',
  p_nonday_open_format => '<td class="t18NonDay" valign="top">',
  p_nonday_close_format => '</td>',
  p_week_title_format => '',
  p_week_open_format => '<tr>',
  p_week_close_format => '</tr> ',
  p_daily_title_format => '<th width="14%" class="calheader">#IDAY#</th>',
  p_daily_open_format => '<tr>',
  p_daily_close_format => '</tr>',
  p_weekly_title_format => '<table cellspacing="0" cellpadding="0" border="0" summary="" class="t18WeekCalendarHolder">'||chr(10)||
'<tr>'||chr(10)||
'<td class="t18MonthTitle" id="test">#WTITLE#</td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td>',
  p_weekly_day_of_week_format => '<th class="t18DayOfWeek">#IDAY#<br>#MM#/#DD#</th>',
  p_weekly_month_open_format => '<table border="0" cellpadding="0" cellspacing="0" summary="0" class="t18WeekCalendar">',
  p_weekly_month_close_format => '</table></td></tr></table>',
  p_weekly_day_title_format => '',
  p_weekly_day_open_format => '<td class="t18Day" valign="top">',
  p_weekly_day_close_format => '<br /></td>',
  p_weekly_today_open_format => '<td class="t18Today" valign="top">',
  p_weekly_weekend_title_format => '',
  p_weekly_weekend_open_format => '<td valign="top" class="t18NonDay">',
  p_weekly_weekend_close_format => '<br /></td>',
  p_weekly_time_open_format => '<th class="t18Hour">',
  p_weekly_time_close_format => '<br /></th>',
  p_weekly_time_title_format => '#TIME#',
  p_weekly_hour_open_format => '<tr>',
  p_weekly_hour_close_format => '</tr>',
  p_daily_day_of_week_format => '<th class="t18DayOfWeek">#IDAY# #DD#/#MM#</th>',
  p_daily_month_title_format => '<table cellspacing="0" cellpadding="0" border="0" summary="" class="t18DayCalendarHolder"> <tr> <td class="t18MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>'||chr(10)||
'',
  p_daily_month_open_format => '<table border="0" cellpadding="2" cellspacing="0" summary="0" class="t18DayCalendar">',
  p_daily_month_close_format => '</table></td> </tr> </table>',
  p_daily_day_title_format => '',
  p_daily_day_open_format => '<td valign="top" class="t18Day">',
  p_daily_day_close_format => '<br /></td>',
  p_daily_today_open_format => '<td valign="top" class="t18Today">',
  p_daily_time_open_format => '<th class="t18Hour">',
  p_daily_time_close_format => '<br /></th>',
  p_daily_time_title_format => '#TIME#',
  p_daily_hour_open_format => '<tr>',
  p_daily_hour_close_format => '</tr>',
  p_theme_id  => 18,
  p_theme_class_id => 1,
  p_reference_id=> null);
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/calendar/calendar_alternative_1
prompt  ......template 1689314348970190
 
begin
 
begin
wwv_flow_api.create_calendar_template(
  p_id=> 1689314348970190 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_cal_template_name=>'Calendar, Alternative 1',
  p_translate_this_template=> 'N',
  p_day_of_week_format=> '<th class="t18DayOfWeek">#IDAY#</th>',
  p_month_title_format=> '<table cellspacing="0" cellpadding="0" border="0" summary="" class="t18CalendarAlternative1Holder"> '||chr(10)||
' <tr>'||chr(10)||
'   <td class="t18MonthTitle">#IMONTH# #YYYY#</td>'||chr(10)||
' </tr>'||chr(10)||
' <tr>'||chr(10)||
' <td class="t18MonthBody">',
  p_month_open_format=> '<table border="0" cellpadding="0" cellspacing="0" summary="0" class="t18CalendarAlternative1">',
  p_month_close_format=> '</table></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'',
  p_day_title_format=> '<div class="t18DayTitle">#DD#</div>',
  p_day_open_format=> '<td class="t18Day" valign="top">',
  p_day_close_format=> '</td>',
  p_today_open_format=> '<td valign="top" class="t18Today">',
  p_weekend_title_format=> '<div class="t18WeekendDayTitle">#DD#</div>',
  p_weekend_open_format => '<td valign="top" class="t18WeekendDay">',
  p_weekend_close_format => '</td>',
  p_nonday_title_format => '<div class="t18NonDayTitle">#DD#</div>',
  p_nonday_open_format => '<td class="t18NonDay" valign="top">',
  p_nonday_close_format => '</td>',
  p_week_title_format => '',
  p_week_open_format => '<tr>',
  p_week_close_format => '</tr> ',
  p_daily_title_format => '<th width="14%" class="calheader">#IDAY#</th>',
  p_daily_open_format => '<tr>',
  p_daily_close_format => '</tr>',
  p_weekly_title_format => '<table cellspacing="0" cellpadding="0" border="0" summary="" class="t18WeekCalendarAlternative1Holder">'||chr(10)||
'<tr>'||chr(10)||
'<td class="t18MonthTitle" id="test">#WTITLE#</td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td>',
  p_weekly_day_of_week_format => '<th class="t18DayOfWeek">#IDAY#<br>#MM#/#DD#</th>',
  p_weekly_month_open_format => '<table border="0" cellpadding="0" cellspacing="0" summary="0" class="t18WeekCalendarAlternative1">',
  p_weekly_month_close_format => '</table></td></tr></table>',
  p_weekly_day_title_format => '',
  p_weekly_day_open_format => '<td class="t18Day" valign="top">',
  p_weekly_day_close_format => '<br /></td>',
  p_weekly_today_open_format => '<td class="t18Today" valign="top">',
  p_weekly_weekend_title_format => '',
  p_weekly_weekend_open_format => '<td valign="top" class="t18NonDay">',
  p_weekly_weekend_close_format => '<br /></td>',
  p_weekly_time_open_format => '<th class="t18Hour">',
  p_weekly_time_close_format => '<br /></th>',
  p_weekly_time_title_format => '#TIME#',
  p_weekly_hour_open_format => '<tr>',
  p_weekly_hour_close_format => '</tr>',
  p_daily_day_of_week_format => '<th class="t18DayOfWeek">#IDAY# #DD#/#MM#</th>',
  p_daily_month_title_format => '<table cellspacing="0" cellpadding="0" border="0" summary="" class="t18DayCalendarAlternative1Holder"> <tr><td class="t18MonthTitle">#IMONTH# #DD#, #YYYY#</td></tr><tr><td>'||chr(10)||
'',
  p_daily_month_open_format => '<table border="0" cellpadding="2" cellspacing="0" summary="0" class="t18DayCalendarAlternative1">',
  p_daily_month_close_format => '</table></td> </tr> </table>',
  p_daily_day_title_format => '',
  p_daily_day_open_format => '<td valign="top" class="t18Day">',
  p_daily_day_close_format => '<br /></td>',
  p_daily_today_open_format => '<td valign="top" class="t18Today">',
  p_daily_time_open_format => '<th class="t18Hour">',
  p_daily_time_close_format => '<br /></th>',
  p_daily_time_title_format => '#TIME#',
  p_daily_hour_open_format => '<tr>',
  p_daily_hour_close_format => '</tr>',
  p_theme_id  => 18,
  p_theme_class_id => 2,
  p_reference_id=> null);
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/calendar/small_calendar
prompt  ......template 1689525708970190
 
begin
 
begin
wwv_flow_api.create_calendar_template(
  p_id=> 1689525708970190 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_cal_template_name=>'Small Calendar',
  p_translate_this_template=> 'N',
  p_day_of_week_format=> '',
  p_month_title_format=> '<table cellspacing="0" cellpadding="0" border="0" summary="" class="t18SmallCalenderHolder"> '||chr(10)||
' <tr>'||chr(10)||
'   <td class="t18MonthTitle">#IMONTH# #YYYY#</td>'||chr(10)||
' </tr>'||chr(10)||
' <tr>'||chr(10)||
' <td class="t18MonthBody">',
  p_month_open_format=> '<table border="0" cellpadding="0" cellspacing="0" summary="0" class="t18SmallCalender">',
  p_month_close_format=> '</table></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'',
  p_day_title_format=> '<div class="t18DayTitle">#DD#</div>',
  p_day_open_format=> '<td class="t18Day" valign="top">',
  p_day_close_format=> '</td>',
  p_today_open_format=> '<td valign="top" class="t18Today">',
  p_weekend_title_format=> '<div class="t18WeekendDayTitle">#DD#</div>',
  p_weekend_open_format => '<td valign="top" class="t18WeekendDay">',
  p_weekend_close_format => '</td>',
  p_nonday_title_format => '<div class="t18NonDayTitle">#DD#</div>',
  p_nonday_open_format => '<td class="t18NonDay" valign="top">',
  p_nonday_close_format => '</td>',
  p_week_title_format => '',
  p_week_open_format => '<tr>',
  p_week_close_format => '</tr> ',
  p_daily_title_format => '<th width="14%" class="calheader">#IDAY#</th>',
  p_daily_open_format => '<tr>',
  p_daily_close_format => '</tr>',
  p_weekly_title_format => '<table cellspacing="0" cellpadding="0" border="0" summary="" class="t18SmallWeekCalendarHolder">'||chr(10)||
'<tr>'||chr(10)||
'<td class="t18MonthTitle" id="test">#WTITLE#</td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td>',
  p_weekly_day_of_week_format => '<th class="t18DayOfWeek">#IDAY#<br />#MM#/#DD#</th>',
  p_weekly_month_open_format => '<table border="0" cellpadding="0" cellspacing="0" summary="0" class="t18SmallWeekCalendar">',
  p_weekly_month_close_format => '</table></td></tr></table>',
  p_weekly_day_title_format => '',
  p_weekly_day_open_format => '<td class="t18Day" valign="top">',
  p_weekly_day_close_format => '<br /></td>',
  p_weekly_today_open_format => '<td class="t18Today" valign="top">',
  p_weekly_weekend_title_format => '',
  p_weekly_weekend_open_format => '<td valign="top" class="t18NonDay">',
  p_weekly_weekend_close_format => '<br /></td>',
  p_weekly_time_open_format => '<th class="t18Hour">',
  p_weekly_time_close_format => '<br /></th>',
  p_weekly_time_title_format => '#TIME#',
  p_weekly_hour_open_format => '<tr>',
  p_weekly_hour_close_format => '</tr>',
  p_daily_day_of_week_format => '<th class="t18DayOfWeek">#IDAY# #DD#/#MM#</th>',
  p_daily_month_title_format => '<table cellspacing="0" cellpadding="0" border="0" summary="" class="t18SmallDayCalendarHolder"> <tr> <td class="t18MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr><tr><td>'||chr(10)||
'',
  p_daily_month_open_format => '<table border="0" cellpadding="2" cellspacing="0" summary="0" class="t18SmallDayCalendar">',
  p_daily_month_close_format => '</table></td></tr></table>',
  p_daily_day_title_format => '',
  p_daily_day_open_format => '<td valign="top" class="t18Day">',
  p_daily_day_close_format => '<br /></td>',
  p_daily_today_open_format => '<td valign="top" class="t18Today">',
  p_daily_time_open_format => '<th class="t18Hour">',
  p_daily_time_close_format => '<br /></th>',
  p_daily_time_title_format => '#TIME#',
  p_daily_hour_open_format => '<tr>',
  p_daily_hour_close_format => '</tr>',
  p_theme_id  => 18,
  p_theme_class_id => 3,
  p_reference_id=> null);
end;
null;
 
end;
/

prompt  ...application themes
--
--application/shared_components/user_interface/themes/modern_blue
prompt  ......theme 1635802500593373
begin
wwv_flow_api.create_theme (
  p_id =>1635802500593373 + wwv_flow_api.g_id_offset,
  p_flow_id =>wwv_flow.g_flow_id,
  p_theme_id  => 20,
  p_theme_name=>'Modern Blue',
  p_default_page_template=>1614709227593354 + wwv_flow_api.g_id_offset,
  p_error_template=>1614709227593354 + wwv_flow_api.g_id_offset,
  p_printer_friendly_template=>1616801033593356 + wwv_flow_api.g_id_offset,
  p_breadcrumb_display_point=>'REGION_POSITION_01',
  p_sidebar_display_point=>'',
  p_login_template=>1613914506593353 + wwv_flow_api.g_id_offset,
  p_default_button_template=>1618309193593358 + wwv_flow_api.g_id_offset,
  p_default_region_template=>1623611542593362 + wwv_flow_api.g_id_offset,
  p_default_chart_template =>1620615241593360 + wwv_flow_api.g_id_offset,
  p_default_form_template  =>1620919809593360 + wwv_flow_api.g_id_offset,
  p_default_reportr_template   =>1623611542593362 + wwv_flow_api.g_id_offset,
  p_default_tabform_template=>1623611542593362 + wwv_flow_api.g_id_offset,
  p_default_wizard_template=>1625108279593364 + wwv_flow_api.g_id_offset,
  p_default_menur_template=>1619700636593359 + wwv_flow_api.g_id_offset,
  p_default_listr_template=>1623611542593362 + wwv_flow_api.g_id_offset,
  p_default_report_template   =>1632301498593370 + wwv_flow_api.g_id_offset,
  p_default_label_template=>1634521808593372 + wwv_flow_api.g_id_offset,
  p_default_menu_template=>1634823390593372 + wwv_flow_api.g_id_offset,
  p_default_calendar_template=>1635013992593373 + wwv_flow_api.g_id_offset,
  p_default_list_template=>1630204059593368 + wwv_flow_api.g_id_offset,
  p_default_option_label=>1634521808593372 + wwv_flow_api.g_id_offset,
  p_default_required_label=>1634700720593372 + wwv_flow_api.g_id_offset);
end;
/
 
--application/shared_components/user_interface/themes/simple
prompt  ......theme 1689930594970190
begin
wwv_flow_api.create_theme (
  p_id =>1689930594970190 + wwv_flow_api.g_id_offset,
  p_flow_id =>wwv_flow.g_flow_id,
  p_theme_id  => 18,
  p_theme_name=>'Simple',
  p_default_page_template=>1670927070970172 + wwv_flow_api.g_id_offset,
  p_error_template=>1670927070970172 + wwv_flow_api.g_id_offset,
  p_printer_friendly_template=>1671817437970173 + wwv_flow_api.g_id_offset,
  p_breadcrumb_display_point=>'REGION_POSITION_01',
  p_sidebar_display_point=>'REGION_POSITION_02',
  p_login_template=>1670108665970170 + wwv_flow_api.g_id_offset,
  p_default_button_template=>1672711069970174 + wwv_flow_api.g_id_offset,
  p_default_region_template=>1678030065970179 + wwv_flow_api.g_id_offset,
  p_default_chart_template =>1675009384970176 + wwv_flow_api.g_id_offset,
  p_default_form_template  =>1675317107970177 + wwv_flow_api.g_id_offset,
  p_default_reportr_template   =>1678030065970179 + wwv_flow_api.g_id_offset,
  p_default_tabform_template=>1678030065970179 + wwv_flow_api.g_id_offset,
  p_default_wizard_template=>1679516236970180 + wwv_flow_api.g_id_offset,
  p_default_menur_template=>1674110407970176 + wwv_flow_api.g_id_offset,
  p_default_listr_template=>1678030065970179 + wwv_flow_api.g_id_offset,
  p_default_report_template   =>1686427134970187 + wwv_flow_api.g_id_offset,
  p_default_label_template=>1688607321970189 + wwv_flow_api.g_id_offset,
  p_default_menu_template=>1688923655970189 + wwv_flow_api.g_id_offset,
  p_default_calendar_template=>1689525708970190 + wwv_flow_api.g_id_offset,
  p_default_list_template=>1684324402970185 + wwv_flow_api.g_id_offset,
  p_default_option_label=>1688607321970189 + wwv_flow_api.g_id_offset,
  p_default_required_label=>1688805602970189 + wwv_flow_api.g_id_offset);
end;
/
 
prompt  ...build options used by application 500
--
 
begin
 
null;
 
end;
/

--application/shared_components/globalization/messages
prompt  ...messages used by application: 500
--
--application/shared_components/globalization/dyntranslations
prompt  ...dynamic translations used by application: 500
--
--application/shared_components/globalization/language
prompt  ...Language Maps for Application 500
--
 
begin
 
null;
 
end;
/

prompt  ...Shortcuts
--
prompt  ...web services (9iR2 or better)
--
prompt  ...shared queries
--
prompt  ...report layouts
--
prompt  ...authentication schemes
--
--application/shared_components/security/authentication/application_express
prompt  ......scheme 1530524384551775
 
begin
 
declare
  s1 varchar2(32767) := null;
  s2 varchar2(32767) := null;
  s3 varchar2(32767) := null;
  s4 varchar2(32767) := null;
  s5 varchar2(32767) := null;
begin
s1 := null;
s2 := null;
s3 := null;
s4:=s4||'-BUILTIN-';

s5 := null;
wwv_flow_api.create_auth_setup (
  p_id=> 1530524384551775 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'Application Express',
  p_description=>'Use internal Application Express account credentials and login page in this application.',
  p_page_sentry_function=> s1,
  p_sess_verify_function=> s2,
  p_pre_auth_process=> s3,
  p_auth_function=> s4,
  p_post_auth_process=> s5,
  p_invalid_session_page=>'101',
  p_invalid_session_url=>'',
  p_cookie_name=>'IP2CITY',
  p_cookie_path=>'',
  p_cookie_domain=>'',
  p_use_secure_cookie_yn=>'N',
  p_ldap_host=>'',
  p_ldap_port=>'',
  p_ldap_string=>'',
  p_attribute_01=>'',
  p_attribute_02=>'wwv_flow_custom_auth_std.logout?p_this_flow=&APP_ID.&p_next_flow_page_sess=&APP_ID.:101',
  p_attribute_03=>'',
  p_attribute_04=>'IP2CITY',
  p_attribute_05=>'',
  p_attribute_06=>'',
  p_attribute_07=>'',
  p_attribute_08=>'',
  p_required_patch=>'');
end;
null;
 
end;
/

--application/shared_components/security/authentication/database
prompt  ......scheme 1530614501551775
 
begin
 
declare
  s1 varchar2(32767) := null;
  s2 varchar2(32767) := null;
  s3 varchar2(32767) := null;
  s4 varchar2(32767) := null;
  s5 varchar2(32767) := null;
begin
s1:=s1||'-DATABASE-';

s2 := null;
s3 := null;
s4 := null;
s5 := null;
wwv_flow_api.create_auth_setup (
  p_id=> 1530614501551775 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'DATABASE',
  p_description=>'Use database authentication (user identified by DAD).',
  p_page_sentry_function=> s1,
  p_sess_verify_function=> s2,
  p_pre_auth_process=> s3,
  p_auth_function=> s4,
  p_post_auth_process=> s5,
  p_invalid_session_page=>'',
  p_invalid_session_url=>'',
  p_cookie_name=>'',
  p_cookie_path=>'',
  p_cookie_domain=>'',
  p_use_secure_cookie_yn=>'',
  p_ldap_host=>'',
  p_ldap_port=>'',
  p_ldap_string=>'',
  p_attribute_01=>'',
  p_attribute_02=>'',
  p_attribute_03=>'',
  p_attribute_04=>'',
  p_attribute_05=>'',
  p_attribute_06=>'',
  p_attribute_07=>'',
  p_attribute_08=>'',
  p_required_patch=>'');
end;
null;
 
end;
/

--application/shared_components/security/authentication/database_account
prompt  ......scheme 1530716319551775
 
begin
 
declare
  s1 varchar2(32767) := null;
  s2 varchar2(32767) := null;
  s3 varchar2(32767) := null;
  s4 varchar2(32767) := null;
  s5 varchar2(32767) := null;
begin
s1 := null;
s2 := null;
s3 := null;
s4:=s4||'return false; end;--';

s5 := null;
wwv_flow_api.create_auth_setup (
  p_id=> 1530716319551775 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'DATABASE ACCOUNT',
  p_description=>'Use database account credentials.',
  p_page_sentry_function=> s1,
  p_sess_verify_function=> s2,
  p_pre_auth_process=> s3,
  p_auth_function=> s4,
  p_post_auth_process=> s5,
  p_invalid_session_page=>'101',
  p_invalid_session_url=>'',
  p_cookie_name=>'',
  p_cookie_path=>'',
  p_cookie_domain=>'',
  p_use_secure_cookie_yn=>'',
  p_ldap_host=>'',
  p_ldap_port=>'',
  p_ldap_string=>'',
  p_attribute_01=>'',
  p_attribute_02=>'wwv_flow_custom_auth_std.logout?p_this_flow=&APP_ID.&amp;p_next_flow_page_sess=&APP_ID.:1',
  p_attribute_03=>'',
  p_attribute_04=>'',
  p_attribute_05=>'',
  p_attribute_06=>'',
  p_attribute_07=>'',
  p_attribute_08=>'',
  p_required_patch=>'');
end;
null;
 
end;
/

--application/end_environment
commit;
commit;
begin 
execute immediate 'alter session set nls_numeric_characters='''||wwv_flow_api.g_nls_numeric_chars||'''';
end;
/
set verify on
set feedback on
prompt  ...done
