set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_050000 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2013.01.01'
,p_release=>'5.0.1.00.06'
,p_default_workspace_id=>4000574606018657
,p_default_application_id=>115
,p_default_owner=>'APEX_REPORTING'
);
end;
/
prompt --application/set_environment
 
prompt APPLICATION 115 - UILayout - UT example application
--
-- Application Export:
--   Application:     115
--   Name:            UILayout - UT example application
--   Date and Time:   22:22 Monday February 1, 2016
--   Exported By:     ADMIN
--   Flashback:       0
--   Export Type:     Application Export
--   Version:         5.0.1.00.06
--   Instance ID:     61924714123165
--

-- Application Statistics:
--   Pages:                      8
--     Items:                    2
--     Processes:                4
--     Regions:                 15
--     Buttons:                  4
--     Dynamic Actions:         10
--   Shared Components:
--     Logic:
--       Processes:              1
--     Navigation:
--       Lists:                  2
--       Breadcrumbs:            1
--         Entries:              6
--     Security:
--       Authentication:         2
--     User Interface:
--       Themes:                 1
--       Templates:
--         Page:                 9
--         Region:              13
--         Label:                5
--         List:                11
--         Popup LOV:            1
--         Calendar:             1
--         Breadcrumb:           1
--         Button:               3
--         Report:               9
--       Plug-ins:               1
--     Globalization:
--     Reports:
--   Supporting Objects:  Included

prompt --application/delete_application
begin
wwv_flow_api.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/ui_types
begin
null;
end;
/
prompt --application/create_application
begin
wwv_flow_api.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_display_id=>nvl(wwv_flow_application_install.get_application_id,115)
,p_owner=>nvl(wwv_flow_application_install.get_schema,'APEX_REPORTING')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'UILayout - UT example application')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'115')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'5B79205E21EED4708FD7C21698BE2451568C904A3883032996D490088B772040'
,p_bookmark_checksum_function=>'SH1'
,p_compatibility_mode=>'5.0'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_api.id(26327661281162199)
,p_application_tab_set=>0
,p_logo_image=>'TEXT:LayoutPlugin'
,p_proxy_server=> nvl(wwv_flow_application_install.get_proxy,'')
,p_flow_version=>'release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable at this time.'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20160201222051'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_ui_type_name => null
);
end;
/
prompt --application/shared_components/navigation/lists
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(26282769424157875)
,p_name=>'Desktop Navigation Menu'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(26326593885159245)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Navigation bar only'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-outdent'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'1,3'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(26432560890744128)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Resizer bar custom visualization'
,p_list_item_link_target=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-dashboard'
,p_parent_list_item_id=>wwv_flow_api.id(26326593885159245)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'3'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(26329056608323768)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Navigation and left bar'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-align-left'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'2'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(26440011423796753)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'navigation, left and right bar'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-align-center'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(26440341350799628)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Right bar'
,p_list_item_link_target=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-align-right'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(26461540068009235)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'UILayout dynamic interaction'
,p_list_item_link_target=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-bolt'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'6'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(26325015269159048)
,p_name=>'Desktop Navigation Bar'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(26325289283159088)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Log Out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_current_for_pages=>'&LOGOUT_URL.'
);
end;
/
prompt --application/shared_components/files
begin
null;
end;
/
prompt --application/plugin_settings
begin
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(26282453142157867)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(26282514777157875)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_CSS_CALENDAR'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(26282606215157875)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attribute_01=>'Y'
,p_attribute_03=>'N'
);
end;
/
prompt --application/shared_components/security/authorizations
begin
null;
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
end;
/
prompt --application/shared_components/logic/application_processes
begin
wwv_flow_api.create_flow_process(
 p_id=>wwv_flow_api.id(26429234890709735)
,p_process_sequence=>1
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'DATA_COLLECTION'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'begin',
' -- http://www.oracle.com/global/de/community/tipps/collections/index.html',
' if not apex_collection.collection_exists(''DATA_COLLECTION'') then ',
' apex_collection.create_collection(''DATA_COLLECTION'');',
' apex_collection.add_member(',
'    p_collection_name => ''DATA_COLLECTION'',',
'    p_c001 =>            ''1'',',
'    p_c002 =>            ''APEX & SQL: THE Reporting Solution'',',
'    p_c003 =>            ''Grundsätzlich soll mit der Präsentation aufgezeigt werden, welche Möglichkeiten APEX als BI-Lösung eröffnet. Die Anwendungsentwicklung für BI-Lösungen mittels APEX ist nicht nur für gänzlich neue Systemlandschaften denkbar s'
||'ondern auch in bereits bestehenden Data Warehouse Konzepten, sogar als Ergänzung zu sonstigen BI-Tools, sinnvoll.'',',
'    p_c004 =>            ''2015'',',
'    p_c005 =>            ''https://apex.oracle.com/pls/apex/f?p=55360:1''',
'  );',
'',
' apex_collection.add_member(',
'    p_collection_name => ''DATA_COLLECTION'',',
'    p_c001 =>            ''2'',',
'    p_c002 =>            ''Plug-Ins maßgerecht verwenden'',',
'    p_c003 =>            ''Wann macht ein Plugin Sinn und bringt einen Mehrwert für meine Applikation? Diese Frage wird aus Sicht von Aufwand, Kosten, Usability, Visualisierung, Komplexität und Wartung in dieser Beispielanwendung näher erläutert.  .'',',
'    p_c004 =>            ''2015'',',
'    p_c005 =>            ''https://apex.oracle.com/pls/apex/f?p=80307:1''',
'  );',
'',
' apex_collection.add_member(',
'    p_collection_name => ''DATA_COLLECTION'',',
'    p_c001 =>            ''3'',',
'    p_c002 =>            ''RaphaelJS - Interaktion mit Grafiken innerhalb von APEX'',',
'    p_c003 =>            ''Die Beispielanwendung zum DOAG Vortrag 2014. Eine Einführung in RaphaelJS und dessen Nutzung innerhalb von APEX.'',',
'    p_c004 =>            ''2014'',',
'    p_c005 =>            ''https://apex.oracle.com/pls/apex/f?p=78451''',
'  );',
'',
' apex_collection.add_member(',
'    p_collection_name => ''DATA_COLLECTION'',',
'    p_c001 =>            ''5'',',
'    p_c002 =>            ''Cookie Applikation'',',
'    p_c003 =>            ''Wie verwenden Sie Cookies in einer APEX Anwendung? Diese Anwendung zeigt was zu tun ist.'',',
'    p_c004 =>            ''2014'',',
'    p_c005 =>            ''https://apex.oracle.com/pls/apex/f?p=155555:''',
'  );',
'  ',
' apex_collection.add_member(',
'    p_collection_name => ''DATA_COLLECTION'',',
'    p_c001 =>            ''6'',',
'    p_c002 =>            ''Navigationsbeispiele '',',
'    p_c003 =>            ''Die verschiedenen Navigationsmöglichkeiten in einer Anwendung präsentiert.'',',
'    p_c004 =>            ''2013'',',
'    p_c005 =>            ''http://apex.oracle.com/pls/apex/f?p=66001:1 ''',
'  );',
'',
' apex_collection.add_member(',
'    p_collection_name => ''DATA_COLLECTION'',',
'    p_c001 =>            ''7'',',
'    p_c002 =>            ''Pivot Beispiele'',',
'    p_c003 =>            ''Verschiedene Pivot Lösungen auf Basis von SQL und Javascript in einer Anwendung'',',
'    p_c004 =>            ''2012'',',
'    p_c005 =>            ''http://apex.oracle.com/pls/apex/f?p=65580''',
'  );',
'',
' apex_collection.add_member(',
'    p_collection_name => ''DATA_COLLECTION'',',
'    p_c001 =>            ''8'',',
'    p_c002 =>            ''Logbuch - Die Plugin App'',',
'    p_c003 =>            ''Die besten APEX Plugins in einer Business Anwendung'',',
'    p_c004 =>            ''2011'',',
'    p_c005 =>            ''http://apex.oracle.com/pls/apex/f?p=65600''',
'  );',
' end if;',
'end;'))
);
end;
/
prompt --application/shared_components/logic/application_items
begin
null;
end;
/
prompt --application/shared_components/logic/application_computations
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/standard
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
null;
end;
/
prompt --application/shared_components/user_interface/lovs
begin
null;
end;
/
prompt --application/shared_components/navigation/trees
begin
null;
end;
/
prompt --application/pages/page_groups
begin
null;
end;
/
prompt --application/comments
begin
null;
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_api.create_menu(
 p_id=>wwv_flow_api.id(26326422754159229)
,p_name=>' Breadcrumb'
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(26326819928159252)
,p_parent_id=>0
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.'
,p_page_id=>1
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(26436744912744147)
,p_parent_id=>wwv_flow_api.id(26326819928159252)
,p_short_name=>'UILayout - Bar visualization'
,p_link=>'f?p=&APP_ID.:3:&SESSION.'
,p_page_id=>3
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(26451917366856135)
,p_short_name=>'UILayout with the navigation, left and right bar'
,p_link=>'f?p=&APP_ID.:4:&SESSION.'
,p_page_id=>4
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(26457536880864306)
,p_short_name=>'UILayout with the right bar'
,p_link=>'f?p=&APP_ID.:5:&SESSION.'
,p_page_id=>5
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(26465483913009238)
,p_short_name=>'UILayout dynamic interaction'
,p_link=>'f?p=&APP_ID.:6:&SESSION.'
,p_page_id=>6
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(26489131508197118)
,p_short_name=>'UILayout Video'
,p_link=>'f?p=&APP_ID.:7:&SESSION.'
,p_page_id=>7
);
end;
/
prompt --application/shared_components/user_interface/templates/page
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(26282876002157902)
,p_theme_id=>42
,p_name=>'Left Side Column'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.leftSideCol();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--showLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-side" id="t_Body_side">',
'      #REGION_POSITION_02#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'        <footer class="t-Footer">',
'          #APP_VERSION#',
'          #CUSTOMIZE#',
'          #SCREEN_READER_TOGGLE#',
'          #REGION_POSITION_05#',
'        </footer>',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525196570560608698
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(26282952927157955)
,p_page_template_id=>wwv_flow_api.id(26282876002157902)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(26283041532157955)
,p_page_template_id=>wwv_flow_api.id(26282876002157902)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(26283131339157955)
,p_page_template_id=>wwv_flow_api.id(26282876002157902)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(26283275639157955)
,p_page_template_id=>wwv_flow_api.id(26282876002157902)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(26283318390157955)
,p_page_template_id=>wwv_flow_api.id(26282876002157902)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(26283454372157955)
,p_page_template_id=>wwv_flow_api.id(26282876002157902)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(26283580755157955)
,p_page_template_id=>wwv_flow_api.id(26282876002157902)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(26283676215157955)
,p_page_template_id=>wwv_flow_api.id(26282876002157902)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(26283777561158016)
,p_theme_id=>42
,p_name=>'Left and Right Side Columns'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.bothSideCols();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--showLeft no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-side" id="t_Body_side">',
'      #REGION_POSITION_02#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        #APP_VERSION#',
'        #CUSTOMIZE#',
'        #SCREEN_READER_TOGGLE#',
'        #REGION_POSITION_05#',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525203692562657055
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(26283831038158035)
,p_page_template_id=>wwv_flow_api.id(26283777561158016)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(26283955416158035)
,p_page_template_id=>wwv_flow_api.id(26283777561158016)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(26284051113158035)
,p_page_template_id=>wwv_flow_api.id(26283777561158016)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>3
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(26284188089158035)
,p_page_template_id=>wwv_flow_api.id(26283777561158016)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>3
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(26284277910158035)
,p_page_template_id=>wwv_flow_api.id(26283777561158016)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(26284381193158035)
,p_page_template_id=>wwv_flow_api.id(26283777561158016)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(26284435648158035)
,p_page_template_id=>wwv_flow_api.id(26283777561158016)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(26284527731158035)
,p_page_template_id=>wwv_flow_api.id(26283777561158016)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(26284613695158035)
,p_page_template_id=>wwv_flow_api.id(26283777561158016)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(26284733130158035)
,p_theme_id=>42
,p_name=>'Login'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.appLogin();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="html-login no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="html-login no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="html-login no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="html-login no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="html-login no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody--login no-anim #PAGE_CSS_CLASSES#" #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #REGION_POSITION_01#',
'  #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'  <div class="t-Body-wrap">',
'    <div class="t-Body-col t-Body-col--main">',
'      <div class="t-Login-container">',
'      #BODY#',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>6
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2099711150063350616
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(26284807502158042)
,p_page_template_id=>wwv_flow_api.id(26284733130158035)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(26284925336158042)
,p_page_template_id=>wwv_flow_api.id(26284733130158035)
,p_name=>'Body Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(26285056003158043)
,p_theme_id=>42
,p_name=>'Master Detail'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.masterDetail();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--masterDetail t-PageBody--hideLeft no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-info" id="t_Body_info">',
'        #REGION_POSITION_02#',
'      </div>',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        #APP_VERSION#',
'        #CUSTOMIZE#',
'        #SCREEN_READER_TOGGLE#',
'        #REGION_POSITION_05#',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>1996914646461572319
,p_translate_this_template=>'N'
);
end;
/
begin
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(26285138051158074)
,p_page_template_id=>wwv_flow_api.id(26285056003158043)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(26285236632158074)
,p_page_template_id=>wwv_flow_api.id(26285056003158043)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(26285383015158074)
,p_page_template_id=>wwv_flow_api.id(26285056003158043)
,p_name=>'Master Detail'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(26285417930158074)
,p_page_template_id=>wwv_flow_api.id(26285056003158043)
,p_name=>'Right Side Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(26285550623158074)
,p_page_template_id=>wwv_flow_api.id(26285056003158043)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(26285699100158074)
,p_page_template_id=>wwv_flow_api.id(26285056003158043)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(26285740835158074)
,p_page_template_id=>wwv_flow_api.id(26285056003158043)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(26285869884158074)
,p_page_template_id=>wwv_flow_api.id(26285056003158043)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(26285988091158074)
,p_page_template_id=>wwv_flow_api.id(26285056003158043)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(26286018853158074)
,p_theme_id=>42
,p_name=>'Minimal (No Navigation)'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#  ',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES# t-PageBody--noNav" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'</header>',
'    '))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  <div class="t-Body-main">',
'      <div class="t-Body-title" id="t_Body_title">',
'        #REGION_POSITION_01#',
'      </div>',
'      <div class="t-Body-content" id="t_Body_content">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-contentInner">',
'          #BODY#',
'        </div>',
'        <footer class="t-Footer">',
'          #APP_VERSION#',
'          #CUSTOMIZE#',
'          #SCREEN_READER_TOGGLE#',
'          #REGION_POSITION_05#',
'        </footer>',
'      </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>4
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2977628563533209425
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(26286167942158096)
,p_page_template_id=>wwv_flow_api.id(26286018853158074)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(26286200862158096)
,p_page_template_id=>wwv_flow_api.id(26286018853158074)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(26286337532158096)
,p_page_template_id=>wwv_flow_api.id(26286018853158074)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(26286498997158097)
,p_page_template_id=>wwv_flow_api.id(26286018853158074)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(26286582005158097)
,p_page_template_id=>wwv_flow_api.id(26286018853158074)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(26286669645158097)
,p_page_template_id=>wwv_flow_api.id(26286018853158074)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(26286763483158097)
,p_page_template_id=>wwv_flow_api.id(26286018853158074)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(26286864319158097)
,p_theme_id=>42
,p_name=>'Modal Dialog'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.modalDialog();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-Dialog-page #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Dialog-wrapper">',
'    <div class="t-Dialog-header">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Dialog-body">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      #BODY#',
'    </div>',
'    <div class="t-Dialog-footer">',
'      #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'500'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_css_classes=>'t-Dialog--standard'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2098960803539086924
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(26286900252158097)
,p_page_template_id=>wwv_flow_api.id(26286864319158097)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(26287090429158097)
,p_page_template_id=>wwv_flow_api.id(26286864319158097)
,p_name=>'Dialog Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(26287101915158097)
,p_page_template_id=>wwv_flow_api.id(26286864319158097)
,p_name=>'Dialog Footer'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(26287222156158097)
,p_theme_id=>42
,p_name=>'Right Side Column'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.rightSideCol();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        #APP_VERSION#',
'        #CUSTOMIZE#',
'        #SCREEN_READER_TOGGLE#',
'        #REGION_POSITION_05#',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525200116240651575
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(26287345605158116)
,p_page_template_id=>wwv_flow_api.id(26287222156158097)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(26287443197158116)
,p_page_template_id=>wwv_flow_api.id(26287222156158097)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(26287556771158116)
,p_page_template_id=>wwv_flow_api.id(26287222156158097)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(26287697443158116)
,p_page_template_id=>wwv_flow_api.id(26287222156158097)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(26287728454158116)
,p_page_template_id=>wwv_flow_api.id(26287222156158097)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(26287807575158116)
,p_page_template_id=>wwv_flow_api.id(26287222156158097)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(26287982699158116)
,p_page_template_id=>wwv_flow_api.id(26287222156158097)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(26288045284158116)
,p_page_template_id=>wwv_flow_api.id(26287222156158097)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(26288170421158130)
,p_theme_id=>42
,p_name=>'Standard'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#  ',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>',
'    '))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'      <div class="t-Body-title" id="t_Body_title">',
'        #REGION_POSITION_01#',
'      </div>',
'      <div class="t-Body-content" id="t_Body_content">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-contentInner">',
'          #BODY#',
'        </div>',
'        <footer class="t-Footer">',
'          #APP_VERSION#',
'          #CUSTOMIZE#',
'          #SCREEN_READER_TOGGLE#',
'          #REGION_POSITION_05#',
'        </footer>',
'      </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>1
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>4070909157481059304
,p_translate_this_template=>'N'
);
end;
/
begin
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(26288232516158149)
,p_page_template_id=>wwv_flow_api.id(26288170421158130)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(26288398679158149)
,p_page_template_id=>wwv_flow_api.id(26288170421158130)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(26288422051158155)
,p_page_template_id=>wwv_flow_api.id(26288170421158130)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(26288571334158155)
,p_page_template_id=>wwv_flow_api.id(26288170421158130)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(26288629116158155)
,p_page_template_id=>wwv_flow_api.id(26288170421158130)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(26288790806158155)
,p_page_template_id=>wwv_flow_api.id(26288170421158130)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(26288853697158155)
,p_page_template_id=>wwv_flow_api.id(26288170421158130)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>false
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(26288925846158155)
,p_theme_id=>42
,p_name=>'Wizard Modal Dialog'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.wizardModal();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-Dialog-page #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Wizard t-Wizard--modal">',
'    <div class=" t-Wizard-steps">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Wizard-body">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      #BODY#',
'    </div>',
'    <div class="t-Wizard-footer">',
'      #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'480'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_css_classes=>'t-Dialog--wizard'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2120348229686426515
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(26289096447158162)
,p_page_template_id=>wwv_flow_api.id(26288925846158155)
,p_name=>'Wizard Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(26289184557158162)
,p_page_template_id=>wwv_flow_api.id(26288925846158155)
,p_name=>'Wizard Progress Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(26289224263158162)
,p_page_template_id=>wwv_flow_api.id(26288925846158155)
,p_name=>'Wizard Buttons'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/button
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(26319817154158714)
,p_template_name=>'Icon'
,p_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL#" aria-label="#LABEL#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"><'
||'/span></button>'
,p_hot_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL#" aria-label="#LABEL#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-h'
||'idden="true"></span></button>'
,p_reference_id=>2347660919680321258
,p_translate_this_template=>'N'
,p_theme_class_id=>5
,p_theme_id=>42
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(26319945408158728)
,p_template_name=>'Text'
,p_template=>'<button onclick="#JAVASCRIPT#" class="t-Button #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_hot_template=>'<button onclick="#JAVASCRIPT#" class="t-Button t-Button--hot #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_reference_id=>4070916158035059322
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>42
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(26320018776158729)
,p_template_name=>'Text with Icon'
,p_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-label">#LABEL#'
||'</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_hot_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-'
||'label">#LABEL#</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_reference_id=>2081382742158699622
,p_translate_this_template=>'N'
,p_theme_class_id=>4
,p_preset_template_options=>'t-Button--iconRight'
,p_theme_id=>42
);
end;
/
prompt --application/shared_components/user_interface/templates/region
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(26289378941158176)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'      </div>',
'      <div class="t-Alert-body">',
'        #BODY#',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">#PREVIOUS##CLOSE##CREATE##NEXT#</div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Alert'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>21
,p_preset_template_options=>'t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--warning'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2039236646100190748
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(26289441641158196)
,p_plug_template_id=>wwv_flow_api.id(26289378941158176)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(26290828672158316)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#"> ',
'#PREVIOUS##BODY##SUB_REGIONS##NEXT#',
'</div>'))
,p_page_plug_template_name=>'Blank with Attributes'
,p_theme_id=>42
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>4499993862448380551
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(26290923113158322)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-ButtonRegion t-Form--floatLeft #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
'  <div class="t-ButtonRegion-wrap">',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##DELETE##CLOSE#</div></div>',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--content">',
'      <h2 class="t-ButtonRegion-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'      #BODY#',
'      <div class="t-ButtonRegion-buttons">#CHANGE#</div>',
'    </div>',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Buttons Container'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>17
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2124982336649579661
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(26291064375158322)
,p_plug_template_id=>wwv_flow_api.id(26290923113158322)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(26291116534158322)
,p_plug_template_id=>wwv_flow_api.id(26290923113158322)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(26291860610158329)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Region t-Region--carousel #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#<span class="js-maximizeButtonContainer"></span></div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #BODY#',
'   <div class="t-Region-carouselRegions">',
'     #SUB_REGIONS#',
'   </div>',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'    <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'   </div>',
' </div>',
'</div>'))
,p_sub_plug_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div data-label="#SUB_REGION_TITLE#" id="SR_#SUB_REGION_ID#">',
'  #SUB_REGION#',
'</div>'))
,p_page_plug_template_name=>'Carousel Container'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>5
,p_default_template_options=>'t-Region--showCarouselControls'
,p_preset_template_options=>'t-Region--hiddenOverflow'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2865840475322558786
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(26291953637158335)
,p_plug_template_id=>wwv_flow_api.id(26291860610158329)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(26292021252158335)
,p_plug_template_id=>wwv_flow_api.id(26291860610158329)
,p_name=>'Slides'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(26295205058158343)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Region t-Region--hideShow #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems  t-Region-headerItems--controls">',
'    <button class="t-Button t-Button--icon t-Button--hideShow" type="button"></button>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#EDIT#</div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#CLOSE#</div>',
'    <div class="t-Region-buttons-right">#CREATE#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #COPY#',
'     #BODY#',
'     #SUB_REGIONS#',
'     #CHANGE#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
' </div>',
'</div>'))
,p_page_plug_template_name=>'Collapsible'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>1
,p_preset_template_options=>'is-expanded:t-Region--scrollBody'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2662888092628347716
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(26295345647158368)
,p_plug_template_id=>wwv_flow_api.id(26295205058158343)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(26295447558158368)
,p_plug_template_id=>wwv_flow_api.id(26295205058158343)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(26297376798158413)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-HeroRegion #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-HeroRegion-wrap">',
'    <div class="t-HeroRegion-col t-HeroRegion-col--left"><span class="t-HeroRegion-icon t-Icon #ICON_CSS_CLASSES#"></span></div>',
'    <div class="t-HeroRegion-col t-HeroRegion-col--content">',
'      <h2 class="t-HeroRegion-title">#TITLE#</h2>',
'      #BODY#',
'    </div>',
'    <div class="t-HeroRegion-col t-HeroRegion-col--right"><div class="t-HeroRegion-form">#SUB_REGIONS#</div><div class="t-HeroRegion-buttons">#NEXT#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Hero'
,p_theme_id=>42
,p_theme_class_id=>22
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2672571031438297268
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(26297414485158413)
,p_plug_template_id=>wwv_flow_api.id(26297376798158413)
,p_name=>'Region Body'
,p_placeholder=>'#BODY#'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(26297593835158413)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#_parent">',
'<div id="#REGION_STATIC_ID#"  class="t-DialogRegion #REGION_CSS_CLASSES# js-regionDialog" #REGION_ATTRIBUTES# style="display:none" title="#TITLE#">',
'  <div class="t-DialogRegion-body js-regionDialog-body">',
'#BODY#',
'  </div>',
'  <div class="t-DialogRegion-buttons js-regionDialog-buttons">',
'     <div class="t-ButtonRegion t-ButtonRegion--dialogRegion">',
'       <div class="t-ButtonRegion-wrap">',
'         <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##DELETE##CLOSE#</div></div>',
'         <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'       </div>',
'     </div>',
'  </div>',
'</div>',
'</div>'))
,p_page_plug_template_name=>'Inline Dialog'
,p_theme_id=>42
,p_theme_class_id=>24
,p_default_template_options=>'js-modal:js-draggable:js-resizable'
,p_preset_template_options=>'js-dialog-size600x400'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2671226943886536762
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(26297682736158431)
,p_plug_template_id=>wwv_flow_api.id(26297593835158413)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(26298462485158431)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="t-IRR-region #REGION_CSS_CLASSES#" role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
'  <h2 class="u-VisuallyHidden" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'#PREVIOUS##BODY##SUB_REGIONS##NEXT#',
'</div>'))
,p_page_plug_template_name=>'Interactive Report'
,p_theme_id=>42
,p_theme_class_id=>9
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2099079838218790610
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(26298761756158438)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Login-region t-Form--stretchInputs t-Form--labelsAbove #REGION_CSS_CLASSES#" id="#REGION_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
'  <div class="t-Login-header">',
'    <span class="t-Login-logo #ICON_CSS_CLASSES#"></span>',
'    <h1 class="t-Login-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h1>',
'  </div>',
'  <div class="t-Login-body">',
'    #BODY#',
'  </div>',
'  <div class="t-Login-buttons">',
'    #NEXT#',
'  </div>',
'  <div class="t-Login-links">',
'    #EDIT##CREATE#',
'  </div>',
'  #SUB_REGIONS#',
'</div>'))
,p_page_plug_template_name=>'Login'
,p_theme_id=>42
,p_theme_class_id=>23
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2672711194551076376
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(26298884488158438)
,p_plug_template_id=>wwv_flow_api.id(26298761756158438)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(26298915463158438)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Region #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#<span class="js-maximizeButtonContainer"></span></div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #BODY#',
'     #SUB_REGIONS#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'    <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'   </div>',
' </div>',
'</div>',
''))
,p_page_plug_template_name=>'Standard'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>8
,p_preset_template_options=>'t-Region--scrollBody'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>4070912133526059312
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(26299060349158444)
,p_plug_template_id=>wwv_flow_api.id(26298915463158438)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(26299148845158444)
,p_plug_template_id=>wwv_flow_api.id(26298915463158438)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(26301015916158471)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-TabsRegion #REGION_CSS_CLASSES#" #REGION_ATTRIBUTES# id="#REGION_STATIC_ID#">',
'  #BODY#',
'  <div class="t-TabsRegion-items">',
'    #SUB_REGIONS#',
'  </div>',
'</div>'))
,p_sub_plug_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div data-label="#SUB_REGION_TITLE#" id="SR_#SUB_REGION_ID#">',
'  #SUB_REGION#',
'</div>'))
,p_page_plug_template_name=>'Tabs Container'
,p_theme_id=>42
,p_theme_class_id=>5
,p_preset_template_options=>'t-TabsRegion-mod--simple'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3221725015618492759
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(26301126885158471)
,p_plug_template_id=>wwv_flow_api.id(26301015916158471)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(26301233431158471)
,p_plug_template_id=>wwv_flow_api.id(26301015916158471)
,p_name=>'Tabs'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(26302281213158471)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="t-BreadcrumbRegion #REGION_CSS_CLASSES#"> ',
'  <div class="t-BreadcrumbRegion-body">',
'    <div class="t-BreadcrumbRegion-breadcrumb">',
'      #BODY#',
'    </div>',
'    <div class="t-BreadcrumbRegion-title">',
'      <h1 class="t-BreadcrumbRegion-titleText">#TITLE#</h1>',
'    </div>',
'  </div>',
'  <div class="t-BreadcrumbRegion-buttons">#PREVIOUS##CLOSE##DELETE##HELP##CHANGE##EDIT##COPY##CREATE##NEXT#</div>',
'</div>'))
,p_page_plug_template_name=>'Title Bar'
,p_theme_id=>42
,p_theme_class_id=>6
,p_default_template_options=>'t-BreadcrumbRegion--showBreadcrumb'
,p_preset_template_options=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2530016523834132090
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(26302769183158478)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Wizard #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-Wizard-header">',
'    <h1 class="t-Wizard-title">#TITLE#</h1>',
'    <div class="u-Table t-Wizard-controls">',
'      <div class="u-Table-fit t-Wizard-buttons">#PREVIOUS##CLOSE#</div>',
'      <div class="u-Table-fill t-Wizard-steps">',
'        #BODY#',
'      </div>',
'      <div class="u-Table-fit t-Wizard-buttons">#NEXT#</div>',
'    </div>',
'  </div>',
'  <div class="t-Wizard-body">',
'    #SUB_REGIONS#',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Wizard Container'
,p_theme_id=>42
,p_theme_class_id=>8
,p_preset_template_options=>'t-Wizard--hideStepsXSmall'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2117602213152591491
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(26302886786158494)
,p_plug_template_id=>wwv_flow_api.id(26302769183158478)
,p_name=>'Wizard Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(26311188293158587)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item #A02#">',
'  <span class="t-BadgeList-label">#TEXT#</span>',
'  <span class="t-BadgeList-value"><a href="#LINK#" #A03#>#A01#</a></span>',
'</li>',
''))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item #A02#">',
'  <span class="t-BadgeList-label">#TEXT#</span>',
'  <span class="t-BadgeList-value"><a href="#LINK#" #A03#>#A01#</a></span>',
'</li>',
''))
,p_list_template_name=>'Badge List'
,p_theme_id=>42
,p_theme_class_id=>3
,p_default_template_options=>'t-BadgeList--responsive'
,p_preset_template_options=>'t-BadgeList--large:t-BadgeList--fixed'
,p_list_template_before_rows=>'<ul class="t-BadgeList t-BadgeList--circular #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Value'
,p_a02_label=>'List item CSS Classes'
,p_a03_label=>'Link Attributes'
,p_reference_id=>2062482847268086664
,p_list_template_comment=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'A01: Large Number',
'A02: List Item Classes',
'A03: Link Attributes'))
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(26312812954158606)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #A04#">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap">',
'      <div class="t-Card-icon"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#TEXT#</h3></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #A04#">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap">',
'      <div class="t-Card-icon"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#TEXT#</h3></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_name=>'Cards'
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Cards--3cols:t-Cards--featured'
,p_list_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Description'
,p_a02_label=>'Secondary Information'
,p_a03_label=>'Initials'
,p_a04_label=>'List Item CSS Classes'
,p_reference_id=>2885322685880632508
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(26314992873158606)
,p_list_template_current=>'<li class="t-LinksList-item is-current #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-b'
||'adge">#A01#</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#'
||'</span></a></li>'
,p_list_template_name=>'Links List'
,p_theme_id=>42
,p_theme_class_id=>18
,p_list_template_before_rows=>'<ul class="t-LinksList #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<ul class="t-LinksList-list">'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li class="t-LinksList-item is-current #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-b'
||'adge">#A01#</span></a></li>'
,p_sub_list_item_noncurrent=>'<li class="t-LinksList-item#A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#<'
||'/span></a></li>'
,p_item_templ_curr_w_child=>'<li class="t-LinksList-item is-current is-expanded #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t'
||'-LinksList-badge">#A01#</span></a>#SUB_LISTS#</li>'
,p_item_templ_noncurr_w_child=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#'
||'</span></a></li>'
,p_a01_label=>'Badge Value'
,p_a02_label=>'Link Attributes'
,p_a03_label=>'List Item CSS Classes'
,p_reference_id=>4070914341144059318
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(26315789133158621)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item is-active #A04#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap" #A03#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon"><span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#TEXT#</h3>',
'            <p class="t-MediaList-desc">#A01#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#A02#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item  #A04#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap" #A03#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon"><span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#TEXT#</h3>',
'            <p class="t-MediaList-desc">#A01#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#A02#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_list_template_name=>'Media List'
,p_theme_id=>42
,p_theme_class_id=>5
,p_default_template_options=>'t-MediaList--showDesc:t-MediaList--showIcons'
,p_list_template_before_rows=>'<ul class="t-MediaList #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Description'
,p_a02_label=>'Badge Value'
,p_a03_label=>'Link Attributes'
,p_a04_label=>'List Item CSS Classes'
,p_reference_id=>2066548068783481421
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(26316659018158627)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Menu Bar'
,p_javascript_code_onload=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menubar", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  if ( apex.actions ) {',
'    apex.actions.addFromMarkup( e );',
'  } else {',
'    apex.debug.warn("Include actions.js to support menu shortcuts");',
'  }',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  iconType: ''fa'',',
'  slide: e.hasClass("js-slide"),',
'  menubar: true,',
'  menubarOverflow: true',
'});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-showSubMenuIcons'
,p_list_template_before_rows=>'<div class="t-MenuBar #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_menubar"><ul style="display:none">'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_reference_id=>2008709236185638887
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(26317122791158633)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_name=>'Menu Popup'
,p_javascript_code_onload=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menu", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  if ( apex.actions ) {',
'    apex.actions.addFromMarkup( e );',
'  } else {',
'    apex.debug.warn("Include actions.js to support menu shortcuts");',
'  }',
'}',
'e.menu({ slide: e.hasClass("js-slide")});',
''))
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>'<div id="#PARENT_STATIC_ID#_menu" class="#COMPONENT_CSS_CLASSES#" style="display:none;"><ul>'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'Data ID'
,p_a02_label=>'Disabled (True/False)'
,p_a03_label=>'Hidden (True/False)'
,p_a04_label=>'Title Attribute'
,p_a05_label=>'Shortcut'
,p_reference_id=>3492264004432431646
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(26317286585158639)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#" role="button">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#" role="button">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_name=>'Navigation Bar'
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>'<ul class="t-NavigationBar #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<div class="t-NavigationBar-menu" style="display: none" id="menu_#PARENT_LIST_ITEM_ID#"><ul>'
,p_after_sub_list=>'</ul></div></li>'
,p_sub_list_item_current=>'<li data-current="true" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-current="false" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar js-menuButton" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow"></span>',
'  </button>'))
,p_item_templ_noncurr_w_child=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar js-menuButton" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow"></span>',
'  </button>'))
,p_sub_templ_curr_w_child=>'<li data-current="true" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_templ_noncurr_w_child=>'<li data-current="false" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_a01_label=>'Badge Value'
,p_a02_label=>'List  Item CSS Classes'
,p_reference_id=>2846096252961119197
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(26317378626158646)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Side Navigation Menu'
,p_javascript_file_urls=>'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.treeView#MIN#.js?v=#APEX_VERSION#'
,p_javascript_code_onload=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'$(''body'').addClass(''t-PageBody--leftNav'');',
''))
,p_theme_id=>42
,p_theme_class_id=>19
,p_list_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-nav" id="t_Body_nav" role="navigation" aria-label="&APP_TITLE!ATTR.">',
'<div class="t-TreeNav #COMPONENT_CSS_CLASSES#" id="t_TreeNav" data-id="#PARENT_STATIC_ID#_tree" aria-label="&APP_TITLE!ATTR."><ul style="display:none">'))
,p_list_template_after_rows=>'</ul></div></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Disabled True/False'
,p_a04_label=>'Title'
,p_reference_id=>2466292414354694776
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(26317426668158646)
,p_list_template_current=>'<li class="t-Tabs-item is-active"><a href="#LINK#" class="t-Tabs-link"><span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Tabs-label">#TEXT#</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-Tabs-item"><a href="#LINK#" class="t-Tabs-link"><span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Tabs-label">#TEXT#</span></a></li>'
,p_list_template_name=>'Tabs'
,p_theme_id=>42
,p_theme_class_id=>7
,p_list_template_before_rows=>'<ul class="t-Tabs #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_reference_id=>3288206686691809997
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(26318391932158667)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Top Navigation Menu'
,p_javascript_code_onload=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menubar", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  if ( apex.actions ) {',
'    apex.actions.addFromMarkup( e );',
'  } else {',
'    apex.debug.warn("Include actions.js to support menu shortcuts");',
'  }',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  slide: e.hasClass("js-slide"),',
'  menubar: true,',
'  menubarOverflow: true',
'});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-tabLike'
,p_list_template_before_rows=>'<div class="t-Header-nav-list #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_menubar"><ul style="display:none">'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Disabled True / False'
,p_a03_label=>'Hide'
,p_a04_label=>'Title Attribute'
,p_a05_label=>'Shortcut Key'
,p_reference_id=>2525307901300239072
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(26318810246158674)
,p_list_template_current=>'<li class="t-WizardSteps-step is-active" id="#LIST_ITEM_ID#"><div class="t-WizardSteps-wrap"><span class="t-WizardSteps-marker"></span><span class="t-WizardSteps-label">#TEXT# <span class="t-WizardSteps-labelState"></span></span></div></li>'
,p_list_template_noncurrent=>'<li class="t-WizardSteps-step" id="#LIST_ITEM_ID#"><div class="t-WizardSteps-wrap"><span class="t-WizardSteps-marker"><span class="t-Icon a-Icon icon-check"></span></span><span class="t-WizardSteps-label">#TEXT# <span class="t-WizardSteps-labelState"'
||'></span></span></div></li>'
,p_list_template_name=>'Wizard Progress'
,p_javascript_code_onload=>'apex.theme.initWizardProgressBar();'
,p_theme_id=>42
,p_theme_class_id=>17
,p_preset_template_options=>'t-WizardSteps--displayLabels'
,p_list_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<h2 class="u-VisuallyHidden">#CURRENT_PROGRESS#</h2>',
'<ul class="t-WizardSteps #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'))
,p_list_template_after_rows=>'</ul>'
,p_reference_id=>2008702338707394488
);
end;
/
prompt --application/shared_components/user_interface/templates/report
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(26303372175158509)
,p_row_template_name=>'Alerts'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--horizontal t-Alert--colorBG t-Alert--defaultIcons t-Alert--#ALERT_TYPE#" role="alert">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title">#ALERT_TITLE#</h2>',
'      </div>',
'      <div class="t-Alert-body">',
'        #ALERT_DESC#',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      #ALERT_ACTION#',
'    </div>',
'  </div>',
'</div>'))
,p_row_template_before_rows=>'<div class="t-Alerts">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</div>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>14
,p_reference_id=>2881456138952347027
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(26303401432158530)
,p_row_template_name=>'Badge List'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item">',
'  <span class="t-BadgeList-label">#COLUMN_HEADER#</span>',
'  <span class="t-BadgeList-value">#COLUMN_VALUE#</span>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-BadgeList t-BadgeList--circular #COMPONENT_CSS_CLASSES#">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_default_template_options=>'t-BadgeList--responsive'
,p_preset_template_options=>'t-BadgeList--large:t-BadgeList--fixed'
,p_reference_id=>2103197159775914759
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(26305176910158556)
,p_row_template_name=>'Cards'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #CARD_MODIFIERS#">',
'  <div class="t-Card">',
'    <a href="#CARD_LINK#" class="t-Card-wrap">',
'      <div class="t-Card-icon"><span class="t-Icon #CARD_ICON#"><span class="t-Card-initials" role="presentation">#CARD_INITIALS#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#CARD_TITLE#</h3></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#CARD_TEXT#</div>',
'        <div class="t-Card-info">#CARD_SUBTEXT#</div>',
'      </div>',
'    </a>',
'  </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_cards">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Cards--3cols:t-Cards--featured'
,p_reference_id=>2973535649510699732
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(26307278202158557)
,p_row_template_name=>'Comments'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Comments-item #COMMENT_MODIFIERS#">',
'    <div class="t-Comments-icon a-MediaBlock-graphic">',
'        <div class="t-Comments-userIcon #ICON_MODIFIER#" aria-hidden="true">#USER_ICON#</div>',
'    </div>',
'    <div class="t-Comments-body a-MediaBlock-content">',
'        <div class="t-Comments-info">',
'            #USER_NAME# &middot; <span class="t-Comments-date">#COMMENT_DATE#</span> <span class="t-Comments-actions">#ACTIONS#</span>',
'        </div>',
'        <div class="t-Comments-comment">',
'            #COMMENT_TEXT##ATTRIBUTE_1##ATTRIBUTE_2##ATTRIBUTE_3##ATTRIBUTE_4#',
'        </div>',
'    </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-Comments #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_report">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>',
''))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Comments--chat'
,p_reference_id=>2611722012730764232
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(26307680927158564)
,p_row_template_name=>'Search Results'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition1=>':LABEL_02 is null'
,p_row_template2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition2=>':LABEL_03 is null'
,p_row_template3=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'      <span class="t-SearchResults-misc">#LABEL_03#: #VALUE_03#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition3=>':LABEL_04 is null'
,p_row_template4=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'      <span class="t-SearchResults-misc">#LABEL_03#: #VALUE_03#</span>',
'      <span class="t-SearchResults-misc">#LABEL_04#: #VALUE_04#</span>',
'    </div>',
'  </li>'))
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-SearchResults #COMPONENT_CSS_CLASSES#">',
'<ul class="t-SearchResults-list">'))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>',
'</div>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'NOT_CONDITIONAL'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070913431524059316
,p_translate_this_template=>'N'
,p_row_template_comment=>' (SELECT link_text, link_target, detail1, detail2, last_modified)'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(26307763810158571)
,p_row_template_name=>'Standard'
,p_row_template1=>'<td class="t-Report-cell" #ALIGNMENT# headers="#COLUMN_HEADER_NAME#">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Report #COMPONENT_CSS_CLASSES#" id="report_#REGION_STATIC_ID#" #REPORT_ATTRIBUTES#>',
'  <div class="t-Report-wrap">',
'    <table class="t-Report-pagination" role="presentation">#TOP_PAGINATION#</table>',
'    <div class="t-Report-tableWrap">',
'    <table class="t-Report-report" summary="#REGION_TITLE#">'))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'      </tbody>',
'    </table>',
'    </div>',
'    <div class="t-Report-links">#EXTERNAL_LINK##CSV_LINK#</div>',
'    <table class="t-Report-pagination t-Report-pagination--bottom" role="presentation">#PAGINATION#</table>',
'  </div>',
'</div>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_before_column_heading=>'<thead>'
,p_column_heading_template=>'<th class="t-Report-colHead" #ALIGNMENT# id="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>'
,p_after_column_heading=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</thead>',
'<tbody>'))
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Report--altRowsDefault:t-Report--rowHighlight'
,p_reference_id=>2537207537838287671
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(26307763810158571)
,p_row_template_before_first=>'<tr>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(26309049993158571)
,p_row_template_name=>'Timeline'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Timeline-item #EVENT_MODIFIERS#" #EVENT_ATTRIBUTES#>',
'  <div class="t-Timeline-wrap">',
'    <div class="t-Timeline-user">',
'      <div class="t-Timeline-avatar #USER_COLOR#">',
'        #USER_AVATAR#',
'      </div>',
'      <div class="t-Timeline-userinfo">',
'        <span class="t-Timeline-username">#USER_NAME#</span>',
'        <span class="t-Timeline-date">#EVENT_DATE#</span>',
'      </div>',
'    </div>',
'    <div class="t-Timeline-content">',
'      <div class="t-Timeline-typeWrap">',
'        <div class="t-Timeline-type #EVENT_STATUS#">',
'          <span class="t-Icon #EVENT_ICON#"></span>',
'          <span class="t-Timeline-typename">#EVENT_TYPE#</span>',
'        </div>',
'      </div>',
'      <div class="t-Timeline-body">',
'        <h3 class="t-Timeline-title">#EVENT_TITLE#</h3>',
'        <p class="t-Timeline-desc">#EVENT_DESC#</p>',
'      </div>',
'    </div>',
'  </div>',
'</li>'))
,p_row_template_condition1=>':EVENT_LINK is null'
,p_row_template2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Timeline-item #EVENT_MODIFIERS#" #EVENT_ATTRIBUTES#>',
'  <a href="#EVENT_LINK#" class="t-Timeline-wrap">',
'    <div class="t-Timeline-user">',
'      <div class="t-Timeline-avatar #USER_COLOR#">',
'        #USER_AVATAR#',
'      </div>',
'      <div class="t-Timeline-userinfo">',
'        <span class="t-Timeline-username">#USER_NAME#</span>',
'        <span class="t-Timeline-date">#EVENT_DATE#</span>',
'      </div>',
'    </div>',
'    <div class="t-Timeline-content">',
'      <div class="t-Timeline-typeWrap">',
'        <div class="t-Timeline-type #EVENT_STATUS#">',
'          <span class="t-Icon #EVENT_ICON#"></span>',
'          <span class="t-Timeline-typename">#EVENT_TYPE#</span>',
'        </div>',
'      </div>',
'      <div class="t-Timeline-body">',
'        <h3 class="t-Timeline-title">#EVENT_TITLE#</h3>',
'        <p class="t-Timeline-desc">#EVENT_DESC#</p>',
'      </div>',
'    </div>',
'  </a>',
'</li>'))
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-Timeline #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_timeline">',
''))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_reference_id=>1513373588340069864
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(26309286724158584)
,p_row_template_name=>'Value Attribute Pairs - Column'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<dt class="t-AVPList-label">',
'  #COLUMN_HEADER#',
'</dt>',
'<dd class="t-AVPList-value">',
'  #COLUMN_VALUE#',
'</dd>'))
,p_row_template_before_rows=>'<dl class="t-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES#>'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</dl>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_preset_template_options=>'t-AVPList--leftAligned'
,p_reference_id=>2099068636272681754
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(26310291855158585)
,p_row_template_name=>'Value Attribute Pairs - Row'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<dt class="t-AVPList-label">',
'  #1#',
'</dt>',
'<dd class="t-AVPList-value">',
'  #2#',
'</dd>'))
,p_row_template_before_rows=>'<dl class="t-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</dl>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-AVPList--leftAligned'
,p_reference_id=>2099068321678681753
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(26319316608158680)
,p_template_name=>'Hidden'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer t-Form-labelContainer--hiddenLabel col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label u-VisuallyHidden">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--hiddenLabel rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#">'
,p_after_element=>'#HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>13
,p_reference_id=>2039339104148359505
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(26319440092158708)
,p_template_name=>'Optional'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</label>',
'</div>',
''))
,p_before_item=>'<div class="t-Form-fieldContainer rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#">'
,p_after_element=>'#HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>2317154212072806530
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(26319587380158708)
,p_template_name=>'Optional - Above'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</label>#HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer">'
,p_after_element=>'#ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>3030114864004968404
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(26319673467158708)
,p_template_name=>'Required'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label><span class="t-Form-required"><span class="a-Icon icon-asterisk"></span></span>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#">'
,p_after_element=>'#HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>2525313812251712801
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(26319772514158708)
,p_template_name=>'Required - Above'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label><span class="t-Form-required"><span class="a-Icon icon-asterisk"></span></span> #HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer">'
,p_after_element=>'#ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>3030115129444970113
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/breadcrumb
begin
wwv_flow_api.create_menu_template(
 p_id=>wwv_flow_api.id(26320400424158741)
,p_name=>'Breadcrumb'
,p_before_first=>'<ul class="t-Breadcrumb #COMPONENT_CSS_CLASSES#">'
,p_current_page_option=>'<li class="t-Breadcrumb-item is-active"><span class="t-Breadcrumb-label">#NAME#</span></li>'
,p_non_current_page_option=>'<li class="t-Breadcrumb-item"><a href="#LINK#" class="t-Breadcrumb-label">#NAME#</a></li>'
,p_after_last=>'</ul>'
,p_max_levels=>6
,p_start_with_node=>'PARENT_TO_LEAF'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070916542570059325
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
wwv_flow_api.create_popup_lov_template(
 p_id=>wwv_flow_api.id(26320686000158781)
,p_page_name=>'winlov'
,p_page_title=>'Search Dialog'
,p_page_html_head=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html lang="&BROWSER_LANGUAGE.">',
'<head>',
'<title>#TITLE#</title>',
'#APEX_CSS#',
'#THEME_CSS#',
'#THEME_STYLE_CSS#',
'#FAVICONS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'<meta name="viewport" content="width=device-width,initial-scale=1.0" />',
'</head>'))
,p_page_body_attr=>'onload="first_field()" class="t-Page t-Page--popupLOV"'
,p_before_field_text=>'<div class="t-PopupLOV-actions t-Form--large">'
,p_filter_width=>'20'
,p_filter_max_width=>'100'
,p_filter_text_attr=>'class="t-Form-field t-Form-searchField"'
,p_find_button_text=>'Search'
,p_find_button_attr=>'class="t-Button t-Button--hot t-Button--padLeft"'
,p_close_button_text=>'Close'
,p_close_button_attr=>'class="t-Button u-pullRight"'
,p_next_button_text=>'Next &gt;'
,p_next_button_attr=>'class="t-Button t-PopupLOV-button"'
,p_prev_button_text=>'&lt; Previous'
,p_prev_button_attr=>'class="t-Button t-PopupLOV-button"'
,p_after_field_text=>'</div>'
,p_scrollbars=>'1'
,p_resizable=>'1'
,p_width=>'380'
,p_height=>'380'
,p_result_row_x_of_y=>'<div class="t-PopupLOV-pagination">Row(s) #FIRST_ROW# - #LAST_ROW#</div>'
,p_result_rows_per_pg=>100
,p_before_result_set=>'<div class="t-PopupLOV-links">'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>2885398517835871876
,p_translate_this_template=>'N'
,p_after_result_set=>'</div>'
);
end;
/
prompt --application/shared_components/user_interface/templates/calendar
begin
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(26320539926158754)
,p_cal_template_name=>'Calendar'
,p_day_of_week_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<th id="#DY#" scope="col" class="t-ClassicCalendar-dayColumn">',
'  <span class="visible-md visible-lg">#IDAY#</span>',
'  <span class="hidden-md hidden-lg">#IDY#</span>',
'</th>'))
,p_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #YYYY#</h1>'))
,p_month_open_format=>'<table class="t-ClassicCalendar-calendar" cellpadding="0" cellspacing="0" border="0" summary="#IMONTH# #YYYY#">'
,p_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'</div>',
''))
,p_day_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_weekend_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_nonday_open_format=>'<td class="t-ClassicCalendar-day is-inactive" headers="#DY#">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_daily_title_format=>'<table cellspacing="0" cellpadding="0" border="0" summary="" class="t1DayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>'
,p_daily_open_format=>'<tr>'
,p_daily_close_format=>'</tr>'
,p_weekly_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--weekly">',
'<h1 class="t-ClassicCalendar-title">#WTITLE#</h1>'))
,p_weekly_day_of_week_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<th scope="col" class="t-ClassicCalendar-dayColumn" id="#DY#">',
'  <span class="visible-md visible-lg">#DD# #IDAY#</span>',
'  <span class="hidden-md hidden-lg">#DD# #IDY#</span>',
'</th>'))
,p_weekly_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="t-ClassicCalendar-calendar">'
,p_weekly_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_weekly_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_day_close_format=>'</div></td>'
,p_weekly_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_weekend_close_format=>'</div></td>'
,p_weekly_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol">'
,p_weekly_time_close_format=>'</th>'
,p_weekly_time_title_format=>'#TIME#'
,p_weekly_hour_open_format=>'<tr>'
,p_weekly_hour_close_format=>'</tr>'
,p_daily_day_of_week_format=>'<th scope="col" id="#DY#" class="t-ClassicCalendar-dayColumn">#IDAY#</th>'
,p_daily_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--daily">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #DD#, #YYYY#</h1>'))
,p_daily_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL#" class="t-ClassicCalendar-calendar">'
,p_daily_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_daily_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_daily_day_close_format=>'</div></td>'
,p_daily_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_daily_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol" id="#TIME#">'
,p_daily_time_close_format=>'</th>'
,p_daily_time_title_format=>'#TIME#'
,p_daily_hour_open_format=>'<tr>'
,p_daily_hour_close_format=>'</tr>'
,p_cust_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="uCal">',
'<h1 class="uMonth">#IMONTH# <span>#YYYY#</span></h1>'))
,p_cust_day_of_week_format=>'<th scope="col" class="uCalDayCol" id="#DY#">#IDAY#</th>'
,p_cust_month_open_format=>'<table class="uCal" cellpadding="0" cellspacing="0" border="0" summary="#IMONTH# #YYYY#">'
,p_cust_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'<div class="uCalFooter"></div>',
'</div>',
''))
,p_cust_week_open_format=>'<tr>'
,p_cust_week_close_format=>'</tr> '
,p_cust_day_title_format=>'<span class="uDayTitle">#DD#</span>'
,p_cust_day_open_format=>'<td class="uDay" headers="#DY#"><div class="uDayData">'
,p_cust_day_close_format=>'</td>'
,p_cust_today_open_format=>'<td class="uDay today" headers="#DY#">'
,p_cust_nonday_title_format=>'<span class="uDayTitle">#DD#</span>'
,p_cust_nonday_open_format=>'<td class="uDay nonday" headers="#DY#">'
,p_cust_nonday_close_format=>'</td>'
,p_cust_weekend_title_format=>'<span class="uDayTitle weekendday">#DD#</span>'
,p_cust_weekend_open_format=>'<td class="uDay" headers="#DY#">'
,p_cust_weekend_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="uDayData">#DATA#</span>',
'</td>'))
,p_cust_hour_open_format=>'<tr>'
,p_cust_hour_close_format=>'</tr>'
,p_cust_time_title_format=>'#TIME#'
,p_cust_time_open_format=>'<th scope="row" class="uCalHour" id="#TIME#">'
,p_cust_time_close_format=>'</th>'
,p_cust_wk_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="uCal uCalWeekly">',
'<h1 class="uMonth">#WTITLE#</h1>'))
,p_cust_wk_day_of_week_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<th scope="col" class="uCalDayCol" id="#DY#">',
'  <span class="visible-desktop">#DD# #IDAY#</span>',
'  <span class="hidden-desktop">#DD# <em>#IDY#</em></span>',
'</th>'))
,p_cust_wk_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="uCal">'
,p_cust_wk_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'<div class="uCalFooter"></div>',
'</div>'))
,p_cust_wk_week_open_format=>'<tr>'
,p_cust_wk_week_close_format=>'</tr> '
,p_cust_wk_day_title_format=>'<span class="uDayTitle">#DD#</span>'
,p_cust_wk_day_open_format=>'<td class="uDay" headers="#DY#"><div class="uDayData">'
,p_cust_wk_day_close_format=>'</div></td>'
,p_cust_wk_today_open_format=>'<td class="uDay today" headers="#DY#"><div class="uDayData">'
,p_cust_wk_weekend_open_format=>'<td class="uDay weekend" headers="#DY#"><div class="uDayData">'
,p_cust_wk_weekend_close_format=>'</div></td>'
,p_agenda_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--list">',
'  <div class="t-ClassicCalendar-title">#IMONTH# #YYYY#</div>',
'  <ul class="t-ClassicCalendar-list">',
'    #DAYS#',
'  </ul>',
'</div>'))
,p_agenda_past_day_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-past">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_today_day_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-today">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_future_day_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-future">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_past_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-past">#DATA#</li>'
,p_agenda_today_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-today">#DATA#</li>'
,p_agenda_future_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-future">#DATA#</li>'
,p_month_data_format=>'#DAYS#'
,p_month_data_entry_format=>'<span class="t-ClassicCalendar-event">#DATA#</span>'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070916747979059326
);
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(26321037903158873)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(26288170421158130)
,p_default_dialog_template=>wwv_flow_api.id(26286864319158097)
,p_error_template=>wwv_flow_api.id(26284733130158035)
,p_printer_friendly_template=>wwv_flow_api.id(26288170421158130)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(26284733130158035)
,p_default_button_template=>wwv_flow_api.id(26319945408158728)
,p_default_region_template=>wwv_flow_api.id(26298915463158438)
,p_default_chart_template=>wwv_flow_api.id(26298915463158438)
,p_default_form_template=>wwv_flow_api.id(26298915463158438)
,p_default_reportr_template=>wwv_flow_api.id(26298915463158438)
,p_default_tabform_template=>wwv_flow_api.id(26298915463158438)
,p_default_wizard_template=>wwv_flow_api.id(26298915463158438)
,p_default_menur_template=>wwv_flow_api.id(26302281213158471)
,p_default_listr_template=>wwv_flow_api.id(26298915463158438)
,p_default_irr_template=>wwv_flow_api.id(26298462485158431)
,p_default_report_template=>wwv_flow_api.id(26307763810158571)
,p_default_label_template=>wwv_flow_api.id(26319440092158708)
,p_default_menu_template=>wwv_flow_api.id(26320400424158741)
,p_default_calendar_template=>wwv_flow_api.id(26320539926158754)
,p_default_list_template=>wwv_flow_api.id(26314992873158606)
,p_default_nav_list_template=>wwv_flow_api.id(26318391932158667)
,p_default_top_nav_list_temp=>wwv_flow_api.id(26318391932158667)
,p_default_side_nav_list_temp=>wwv_flow_api.id(26317378626158646)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_api.id(26290923113158322)
,p_default_dialogr_template=>wwv_flow_api.id(26290828672158316)
,p_default_option_label=>wwv_flow_api.id(26319440092158708)
,p_default_required_label=>wwv_flow_api.id(26319673467158708)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_default_navbar_list_template=>wwv_flow_api.id(26317286585158639)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#IMAGE_PREFIX#themes/theme_42/1.0/')
,p_files_version=>62
,p_icon_library=>'FONTAWESOME'
,p_javascript_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.regionDisplaySelector#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyTableHeader#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#tooltipManager#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/hammer/2.0.3/hammer#MIN#.js?v=#APEX_VERSION#',
'#THEME_IMAGES#js/modernizr-custom#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#plugins/com.oracle.apex.carousel/1.0/com.oracle.apex.carousel#MIN#.js?v=#APEX_VERSION#',
'#THEME_IMAGES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_IMAGES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(26320724654158807)
,p_theme_id=>42
,p_name=>'Vista'
,p_css_file_urls=>'#THEME_IMAGES#css/Vista#MIN#.css?v=#APEX_VERSION#'
,p_is_current=>false
,p_theme_roller_read_only=>true
,p_reference_id=>4007676303523989775
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(26320825077158833)
,p_theme_id=>42
,p_name=>'Vita'
,p_is_current=>true
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>2719875314571594493
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(26320920070158833)
,p_theme_id=>42
,p_name=>'Vita - Slate'
,p_is_current=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Slate.less'
,p_theme_roller_config=>'{"customCSS":"","vars":{"@g_Accent-BG":"#505f6d","@g_Accent-OG":"#ececec","@g_Body-Title-BG":"#dee1e4","@l_Link-Base":"#337ac0","@g_Body-BG":"#f5f5f5"}}'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Slate#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>3291983347983194966
);
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
null;
end;
/
prompt --application/shared_components/user_interface/theme_display_points
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(26289623096158278)
,p_theme_id=>42
,p_name=>'ALERT_TYPE'
,p_display_name=>'Alert Type'
,p_display_sequence=>3
,p_template_types=>'REGION'
,p_help_text=>'Sets the type of alert which can be used to determine the icon, icon color, and the background color.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(26289813652158306)
,p_theme_id=>42
,p_name=>'ALERT_ICONS'
,p_display_name=>'Alert Icons'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Sets how icons are handled for the Alert Region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(26290084278158306)
,p_theme_id=>42
,p_name=>'ALERT_DISPLAY'
,p_display_name=>'Alert Display'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the layout of the Alert Region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(26291273798158328)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>40
,p_template_types=>'REGION'
,p_help_text=>'Determines how the region is styled. Use the "Remove Borders" template option to remove the region''s borders and shadows.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(26291476426158328)
,p_theme_id=>42
,p_name=>'BODY_PADDING'
,p_display_name=>'Body Padding'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the Region Body padding for the region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(26292157680158341)
,p_theme_id=>42
,p_name=>'TIMER'
,p_display_name=>'Timer'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Sets the timer for when to automatically navigate to the next region within the Carousel Region.'
,p_null_text=>'No Timer'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(26292547913158342)
,p_theme_id=>42
,p_name=>'BODY_HEIGHT'
,p_display_name=>'Body Height'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_help_text=>'Sets the Region Body height. You can also specify a custom height by modifying the Region''s CSS Classes and using the height helper classes "i-hXXX" where XXX is any increment of 10 from 100 to 800.'
,p_null_text=>'Auto - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(26293192594158342)
,p_theme_id=>42
,p_name=>'ACCENT'
,p_display_name=>'Accent'
,p_display_sequence=>30
,p_template_types=>'REGION'
,p_help_text=>'Set the Region''s accent. This accent corresponds to a Theme-Rollable color and sets the background of the Region''s Header.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(26293719761158342)
,p_theme_id=>42
,p_name=>'HEADER'
,p_display_name=>'Header'
,p_display_sequence=>20
,p_template_types=>'REGION'
,p_help_text=>'Determines the display of the Region Header which also contains the Region Title.'
,p_null_text=>'Visible - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(26293988122158342)
,p_theme_id=>42
,p_name=>'BODY_OVERFLOW'
,p_display_name=>'Body Overflow'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Determines the scroll behavior when the region contents are larger than their container.'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(26294844553158343)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the animation when navigating within the Carousel Region.'
,p_null_text=>'Fade'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(26296467350158385)
,p_theme_id=>42
,p_name=>'DEFAULT_STATE'
,p_display_name=>'Default State'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the default state of the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(26297851960158431)
,p_theme_id=>42
,p_name=>'DIALOG_SIZE'
,p_display_name=>'Dialog Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(26301353547158471)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(26301575637158471)
,p_theme_id=>42
,p_name=>'TAB_STYLE'
,p_display_name=>'Tab Style'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(26301941171158471)
,p_theme_id=>42
,p_name=>'TABS_SIZE'
,p_display_name=>'Tabs Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(26302380697158471)
,p_theme_id=>42
,p_name=>'REGION_TITLE'
,p_display_name=>'Region Title'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the source of the Title Bar region''s title.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(26302903192158494)
,p_theme_id=>42
,p_name=>'HIDE_STEPS_FOR'
,p_display_name=>'Hide Steps For'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(26303573783158530)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(26303772486158536)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Determines the layout of Cards in the report.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(26305391385158557)
,p_theme_id=>42
,p_name=>'BODY_TEXT'
,p_display_name=>'Body Text'
,p_display_sequence=>40
,p_template_types=>'REPORT'
,p_help_text=>'Determines the amount of text to display for the Card body.'
,p_null_text=>'Auto'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(26306013017158557)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Controls the style and design of the cards in the report.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(26306365097158557)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Controls how to handle icons in the report.'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(26307067201158557)
,p_theme_id=>42
,p_name=>'COLOR_ACCENTS'
,p_display_name=>'Color Accents'
,p_display_sequence=>50
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(26307380025158564)
,p_theme_id=>42
,p_name=>'COMMENTS_STYLE'
,p_display_name=>'Comments Style'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Determines the style in which comments are displayed.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(26307852173158571)
,p_theme_id=>42
,p_name=>'ALTERNATING_ROWS'
,p_display_name=>'Alternating Rows'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Shades alternate rows in the report with slightly different background colors.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(26308137085158571)
,p_theme_id=>42
,p_name=>'ROW_HIGHLIGHTING'
,p_display_name=>'Row Highlighting'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Determines whether you want the row to be highlighted on hover.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(26308359482158571)
,p_theme_id=>42
,p_name=>'REPORT_BORDER'
,p_display_name=>'Report Border'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Controls the display of the Report''s borders.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(26309381680158585)
,p_theme_id=>42
,p_name=>'LABEL_WIDTH'
,p_display_name=>'Label Width'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(26311282364158592)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(26312026546158606)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>70
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(26313062756158606)
,p_theme_id=>42
,p_name=>'BODY_TEXT'
,p_display_name=>'Body Text'
,p_display_sequence=>40
,p_template_types=>'LIST'
,p_null_text=>'Auto'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(26313733400158606)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(26314079232158606)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(26314755966158606)
,p_theme_id=>42
,p_name=>'COLOR_ACCENTS'
,p_display_name=>'Color Accents'
,p_display_sequence=>50
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(26315414405158606)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(26317877179158667)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(26318915138158674)
,p_theme_id=>42
,p_name=>'LABEL_DISPLAY'
,p_display_name=>'Label Display'
,p_display_sequence=>50
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(26320115842158729)
,p_theme_id=>42
,p_name=>'ICON_POSITION'
,p_display_name=>'Icon Position'
,p_display_sequence=>50
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the position of the icon relative to the label.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(26321165926159036)
,p_theme_id=>42
,p_name=>'TYPE'
,p_display_name=>'Type'
,p_display_sequence=>20
,p_template_types=>'BUTTON'
,p_null_text=>'Normal'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(26321397774159047)
,p_theme_id=>42
,p_name=>'SPACING_LEFT'
,p_display_name=>'Spacing Left'
,p_display_sequence=>70
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the left of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(26321517875159047)
,p_theme_id=>42
,p_name=>'SPACING_RIGHT'
,p_display_name=>'Spacing Right'
,p_display_sequence=>80
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the right of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(26321700481159047)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the size of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(26321935154159047)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>30
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the style of the button. Use the "Simple" option for secondary actions or sets of buttons. Use the "Remove UI Decoration" option to make the button appear as text.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(26322386454159047)
,p_theme_id=>42
,p_name=>'BUTTON_SET'
,p_display_name=>'Button Set'
,p_display_sequence=>40
,p_template_types=>'BUTTON'
,p_help_text=>'Enables you to group many buttons together into a pill. You can use this option to specify where the button is within this set. Set the option to Default if this button is not part of a button set.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(26323072442159047)
,p_theme_id=>42
,p_name=>'WIDTH'
,p_display_name=>'Width'
,p_display_sequence=>60
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the width of the button.'
,p_null_text=>'Auto - Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(26323487969159047)
,p_theme_id=>42
,p_name=>'LABEL_POSITION'
,p_display_name=>'Label Position'
,p_display_sequence=>140
,p_template_types=>'REGION'
,p_help_text=>'Sets the position of the label relative to the form item.'
,p_null_text=>'Inline - Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(26323648837159047)
,p_theme_id=>42
,p_name=>'ITEM_SIZE'
,p_display_name=>'Item Size'
,p_display_sequence=>110
,p_template_types=>'REGION'
,p_help_text=>'Sets the size of the form items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(26323841059159047)
,p_theme_id=>42
,p_name=>'LABEL_ALIGNMENT'
,p_display_name=>'Label Alignment'
,p_display_sequence=>130
,p_template_types=>'REGION'
,p_help_text=>'Set the label text alignment for items within this region.'
,p_null_text=>'Right'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(26324054456159047)
,p_theme_id=>42
,p_name=>'ITEM_PADDING'
,p_display_name=>'Item Padding'
,p_display_sequence=>100
,p_template_types=>'REGION'
,p_help_text=>'Sets the padding around items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(26324305558159047)
,p_theme_id=>42
,p_name=>'ITEM_WIDTH'
,p_display_name=>'Item Width'
,p_display_sequence=>120
,p_template_types=>'REGION'
,p_help_text=>'Sets the width of the form items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(26324634355159047)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'FIELD'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
end;
/
prompt --application/shared_components/user_interface/template_options
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26289517033158238)
,p_theme_id=>42
,p_name=>'COLOREDBACKGROUND'
,p_display_name=>'Highlight Background'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(26289378941158176)
,p_css_classes=>'t-Alert--colorBG'
,p_template_types=>'REGION'
,p_help_text=>'Set alert background color to that of the alert type (warning, success, etc.)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26289726394158293)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(26289378941158176)
,p_css_classes=>'t-Alert--danger'
,p_group_id=>wwv_flow_api.id(26289623096158278)
,p_template_types=>'REGION'
,p_help_text=>'Show an error or danger alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26289913888158306)
,p_theme_id=>42
,p_name=>'HIDE_ICONS'
,p_display_name=>'Hide Icons'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(26289378941158176)
,p_css_classes=>'t-Alert--noIcon'
,p_group_id=>wwv_flow_api.id(26289813652158306)
,p_template_types=>'REGION'
,p_help_text=>'Hides alert icons'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26290144719158306)
,p_theme_id=>42
,p_name=>'HORIZONTAL'
,p_display_name=>'Horizontal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(26289378941158176)
,p_css_classes=>'t-Alert--horizontal'
,p_group_id=>wwv_flow_api.id(26290084278158306)
,p_template_types=>'REGION'
,p_help_text=>'Show horizontal alert with buttons to the right.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26290211413158306)
,p_theme_id=>42
,p_name=>'INFORMATION'
,p_display_name=>'Information'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(26289378941158176)
,p_css_classes=>'t-Alert--info'
,p_group_id=>wwv_flow_api.id(26289623096158278)
,p_template_types=>'REGION'
,p_help_text=>'Show informational alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26290394787158306)
,p_theme_id=>42
,p_name=>'SHOW_CUSTOM_ICONS'
,p_display_name=>'Show Custom Icons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(26289378941158176)
,p_css_classes=>'t-Alert--customIcons'
,p_group_id=>wwv_flow_api.id(26289813652158306)
,p_template_types=>'REGION'
,p_help_text=>'Set custom icons by modifying the Alert Region''s Icon CSS Classes property.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26290423873158315)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(26289378941158176)
,p_css_classes=>'t-Alert--success'
,p_group_id=>wwv_flow_api.id(26289623096158278)
,p_template_types=>'REGION'
,p_help_text=>'Show success alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26290534895158316)
,p_theme_id=>42
,p_name=>'USEDEFAULTICONS'
,p_display_name=>'Show Default Icons'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(26289378941158176)
,p_css_classes=>'t-Alert--defaultIcons'
,p_group_id=>wwv_flow_api.id(26289813652158306)
,p_template_types=>'REGION'
,p_help_text=>'Uses default icons for alert types.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26290627843158316)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(26289378941158176)
,p_css_classes=>'t-Alert--warning'
,p_group_id=>wwv_flow_api.id(26289623096158278)
,p_template_types=>'REGION'
,p_help_text=>'Show a warning alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26290758724158316)
,p_theme_id=>42
,p_name=>'WIZARD'
,p_display_name=>'Wizard'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(26289378941158176)
,p_css_classes=>'t-Alert--wizard'
,p_group_id=>wwv_flow_api.id(26290084278158306)
,p_template_types=>'REGION'
,p_help_text=>'Show the alert in a wizard style region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26291366817158328)
,p_theme_id=>42
,p_name=>'BORDERLESS'
,p_display_name=>'Borderless'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(26290923113158322)
,p_css_classes=>'t-ButtonRegion--noBorder'
,p_group_id=>wwv_flow_api.id(26291273798158328)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26291580974158329)
,p_theme_id=>42
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>3
,p_region_template_id=>wwv_flow_api.id(26290923113158322)
,p_css_classes=>'t-ButtonRegion--noPadding'
,p_group_id=>wwv_flow_api.id(26291476426158328)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26291630443158329)
,p_theme_id=>42
,p_name=>'REMOVEUIDECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>4
,p_region_template_id=>wwv_flow_api.id(26290923113158322)
,p_css_classes=>'t-ButtonRegion--noUI'
,p_group_id=>wwv_flow_api.id(26291273798158328)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26291743707158329)
,p_theme_id=>42
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>5
,p_region_template_id=>wwv_flow_api.id(26290923113158322)
,p_css_classes=>'t-ButtonRegion--slimPadding'
,p_group_id=>wwv_flow_api.id(26291476426158328)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26292223529158341)
,p_theme_id=>42
,p_name=>'10_SECONDS'
,p_display_name=>'10 Seconds'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(26291860610158329)
,p_css_classes=>'js-cycle10s'
,p_group_id=>wwv_flow_api.id(26292157680158341)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26292339528158341)
,p_theme_id=>42
,p_name=>'15_SECONDS'
,p_display_name=>'15 Seconds'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(26291860610158329)
,p_css_classes=>'js-cycle15s'
,p_group_id=>wwv_flow_api.id(26292157680158341)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26292426242158341)
,p_theme_id=>42
,p_name=>'20_SECONDS'
,p_display_name=>'20 Seconds'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(26291860610158329)
,p_css_classes=>'js-cycle20s'
,p_group_id=>wwv_flow_api.id(26292157680158341)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26292609024158342)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(26291860610158329)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(26292547913158342)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26292788223158342)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(26291860610158329)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(26292547913158342)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26292882130158342)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(26291860610158329)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(26292547913158342)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26292949468158342)
,p_theme_id=>42
,p_name=>'5_SECONDS'
,p_display_name=>'5 Seconds'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(26291860610158329)
,p_css_classes=>'js-cycle5s'
,p_group_id=>wwv_flow_api.id(26292157680158341)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26293095280158342)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(26291860610158329)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(26292547913158342)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26293275470158342)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(26291860610158329)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(26293192594158342)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26293357337158342)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(26291860610158329)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(26293192594158342)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26293456614158342)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(26291860610158329)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(26293192594158342)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26293522048158342)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(26291860610158329)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(26293192594158342)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26293690507158342)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(26291860610158329)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(26293192594158342)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26293868995158342)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(26291860610158329)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_api.id(26293719761158342)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26294013980158342)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(26291860610158329)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(26293988122158342)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26294157458158342)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(26291860610158329)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(26293719761158342)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26294261772158343)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(26291860610158329)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26294343071158343)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(26291860610158329)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(26291273798158328)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26294470651158343)
,p_theme_id=>42
,p_name=>'REMEMBER_CAROUSEL_SLIDE'
,p_display_name=>'Remember Carousel Slide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(26291860610158329)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26294569997158343)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(26291860610158329)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(26293988122158342)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26294607864158343)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(26291860610158329)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26294762405158343)
,p_theme_id=>42
,p_name=>'SHOW_NEXT_AND_PREVIOUS_BUTTONS'
,p_display_name=>'Show Next and Previous Buttons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(26291860610158329)
,p_css_classes=>'t-Region--showCarouselControls'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26294955148158343)
,p_theme_id=>42
,p_name=>'SLIDE'
,p_display_name=>'Slide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(26291860610158329)
,p_css_classes=>'t-Region--carouselSlide'
,p_group_id=>wwv_flow_api.id(26294844553158343)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26295021235158343)
,p_theme_id=>42
,p_name=>'SPIN'
,p_display_name=>'Spin'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(26291860610158329)
,p_css_classes=>'t-Region--carouselSpin'
,p_group_id=>wwv_flow_api.id(26294844553158343)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26295180879158343)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(26291860610158329)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(26291273798158328)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26295532163158370)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(26295205058158343)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(26292547913158342)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26295657451158370)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(26295205058158343)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(26292547913158342)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26295769911158379)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(26295205058158343)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(26292547913158342)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 480px.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26295831618158379)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(26295205058158343)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(26292547913158342)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 640px.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26295999148158379)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(26295205058158343)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(26293192594158342)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26296097755158379)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(26295205058158343)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(26293192594158342)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26296119969158379)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(26295205058158343)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(26293192594158342)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26296281976158385)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(26295205058158343)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(26293192594158342)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26296388130158385)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(26295205058158343)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(26293192594158342)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26296575159158385)
,p_theme_id=>42
,p_name=>'COLLAPSED'
,p_display_name=>'Collapsed'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(26295205058158343)
,p_css_classes=>'is-collapsed'
,p_group_id=>wwv_flow_api.id(26296467350158385)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26296611687158385)
,p_theme_id=>42
,p_name=>'EXPANDED'
,p_display_name=>'Expanded'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(26295205058158343)
,p_css_classes=>'is-expanded'
,p_group_id=>wwv_flow_api.id(26296467350158385)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26296771456158407)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(26295205058158343)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(26293988122158342)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26296885232158407)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(26295205058158343)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26296980700158407)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(26295205058158343)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(26291273798158328)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26297089730158407)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(26295205058158343)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_api.id(26291273798158328)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26297168653158413)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(26295205058158343)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(26293988122158342)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26297236262158413)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(26295205058158343)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(26291273798158328)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26297712123158431)
,p_theme_id=>42
,p_name=>'DRAGGABLE'
,p_display_name=>'Draggable'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(26297593835158413)
,p_css_classes=>'js-draggable'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26297948511158431)
,p_theme_id=>42
,p_name=>'LARGE_720X480'
,p_display_name=>'Large (720x480)'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(26297593835158413)
,p_css_classes=>'js-dialog-size720x480'
,p_group_id=>wwv_flow_api.id(26297851960158431)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26298092372158431)
,p_theme_id=>42
,p_name=>'MEDIUM_600X400'
,p_display_name=>'Medium (600x400)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(26297593835158413)
,p_css_classes=>'js-dialog-size600x400'
,p_group_id=>wwv_flow_api.id(26297851960158431)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26298159195158431)
,p_theme_id=>42
,p_name=>'MODAL'
,p_display_name=>'Modal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(26297593835158413)
,p_css_classes=>'js-modal'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26298263480158431)
,p_theme_id=>42
,p_name=>'RESIZABLE'
,p_display_name=>'Resizable'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(26297593835158413)
,p_css_classes=>'js-resizable'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26298321965158431)
,p_theme_id=>42
,p_name=>'SMALL_480X320'
,p_display_name=>'Small (480x320)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(26297593835158413)
,p_css_classes=>'js-dialog-size480x320'
,p_group_id=>wwv_flow_api.id(26297851960158431)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26298536365158438)
,p_theme_id=>42
,p_name=>'REMOVEBORDERS'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(26298462485158431)
,p_css_classes=>'t-IRR-region--noBorders'
,p_template_types=>'REGION'
,p_help_text=>'Removes borders around the Interactive Report'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26298650888158438)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(26298462485158431)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Interactive Reports toolbar to maximize the report. Clicking this button will toggle the maximize state and stretch the report to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26299298368158457)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(26298915463158438)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(26292547913158342)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26299327044158457)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(26298915463158438)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(26292547913158342)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26299481613158457)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(26298915463158438)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(26292547913158342)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26299506547158457)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(26298915463158438)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(26292547913158342)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26299622310158457)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(26298915463158438)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(26293192594158342)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26299726424158470)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(26298915463158438)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(26293192594158342)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26299833393158470)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(26298915463158438)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(26293192594158342)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26299979837158470)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(26298915463158438)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(26293192594158342)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26300033321158471)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(26298915463158438)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(26293192594158342)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26300109450158471)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(26298915463158438)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_api.id(26293719761158342)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26300287253158471)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(26298915463158438)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(26293988122158342)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26300330687158471)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(26298915463158438)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(26293719761158342)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26300487189158471)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(26298915463158438)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26300553614158471)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(26298915463158438)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(26291273798158328)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26300675867158471)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(26298915463158438)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_api.id(26291273798158328)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26300713643158471)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(26298915463158438)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(26293988122158342)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26300811550158471)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(26298915463158438)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26300997230158471)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(26298915463158438)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(26291273798158328)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26301425239158471)
,p_theme_id=>42
,p_name=>'FILL_TAB_LABELS'
,p_display_name=>'Fill Tab Labels'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(26301015916158471)
,p_css_classes=>'t-TabsRegion-mod--fillLabels'
,p_group_id=>wwv_flow_api.id(26301353547158471)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26301684749158471)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(26301015916158471)
,p_css_classes=>'t-TabsRegion-mod--pill'
,p_group_id=>wwv_flow_api.id(26301575637158471)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26301751690158471)
,p_theme_id=>42
,p_name=>'REMEMBER_ACTIVE_TAB'
,p_display_name=>'Remember Active Tab'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(26301015916158471)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26301834108158471)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(26301015916158471)
,p_css_classes=>'t-TabsRegion-mod--simple'
,p_group_id=>wwv_flow_api.id(26301575637158471)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26302010263158471)
,p_theme_id=>42
,p_name=>'TABSLARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(26301015916158471)
,p_css_classes=>'t-TabsRegion-mod--large'
,p_group_id=>wwv_flow_api.id(26301941171158471)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26302154666158471)
,p_theme_id=>42
,p_name=>'TABS_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(26301015916158471)
,p_css_classes=>'t-TabsRegion-mod--small'
,p_group_id=>wwv_flow_api.id(26301941171158471)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26302449699158478)
,p_theme_id=>42
,p_name=>'GET_TITLE_FROM_BREADCRUMB'
,p_display_name=>'Use Current Breadcrumb Entry'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(26302281213158471)
,p_css_classes=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_group_id=>wwv_flow_api.id(26302380697158471)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26302594494158478)
,p_theme_id=>42
,p_name=>'HIDE_BREADCRUMB'
,p_display_name=>'Show Breadcrumbs'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(26302281213158471)
,p_css_classes=>'t-BreadcrumbRegion--showBreadcrumb'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26302696320158478)
,p_theme_id=>42
,p_name=>'REGION_HEADER_VISIBLE'
,p_display_name=>'Use Region Title'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(26302281213158471)
,p_css_classes=>'t-BreadcrumbRegion--useRegionTitle'
,p_group_id=>wwv_flow_api.id(26302380697158471)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26303024085158494)
,p_theme_id=>42
,p_name=>'HIDESMALLSCREENS'
,p_display_name=>'Small Screens (Tablet)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(26302769183158478)
,p_css_classes=>'t-Wizard--hideStepsSmall'
,p_group_id=>wwv_flow_api.id(26302903192158494)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26303112153158494)
,p_theme_id=>42
,p_name=>'HIDEXSMALLSCREENS'
,p_display_name=>'X Small Screens (Mobile)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(26302769183158478)
,p_css_classes=>'t-Wizard--hideStepsXSmall'
,p_group_id=>wwv_flow_api.id(26302903192158494)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26303257974158494)
,p_theme_id=>42
,p_name=>'SHOW_TITLE'
,p_display_name=>'Show Title'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(26302769183158478)
,p_css_classes=>'t-Wizard--showTitle'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26303695886158530)
,p_theme_id=>42
,p_name=>'128PX'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(26303401432158530)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(26303573783158530)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26303838249158536)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(26303401432158530)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(26303772486158536)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26303943025158536)
,p_theme_id=>42
,p_name=>'32PX'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(26303401432158530)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(26303573783158530)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26304003053158536)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(26303401432158530)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(26303772486158536)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26304132857158536)
,p_theme_id=>42
,p_name=>'48PX'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(26303401432158530)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(26303573783158530)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26304203708158536)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(26303401432158530)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(26303772486158536)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26304308902158536)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(26303401432158530)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(26303772486158536)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26304462136158536)
,p_theme_id=>42
,p_name=>'64PX'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(26303401432158530)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(26303573783158530)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26304513256158536)
,p_theme_id=>42
,p_name=>'96PX'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(26303401432158530)
,p_css_classes=>'t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(26303573783158530)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26304642734158536)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(26303401432158530)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(26303772486158536)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26304714878158543)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_report_template_id=>wwv_flow_api.id(26303401432158530)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(26303772486158536)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26304827671158543)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(26303401432158530)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(26303772486158536)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26304960817158556)
,p_theme_id=>42
,p_name=>'RESPONSIVE'
,p_display_name=>'Responsive'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(26303401432158530)
,p_css_classes=>'t-BadgeList--responsive'
,p_template_types=>'REPORT'
,p_help_text=>'Automatically resize badges to smaller sizes as screen becomes smaller.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26305000877158556)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(26303401432158530)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(26303772486158536)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26305238923158557)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>15
,p_report_template_id=>wwv_flow_api.id(26305176910158556)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(26303772486158536)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26305481838158557)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(26305176910158556)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(26305391385158557)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26305535785158557)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(26305176910158556)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(26303772486158536)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26305671125158557)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(26305176910158556)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(26305391385158557)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26305739507158557)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(26305176910158556)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(26303772486158536)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26305869768158557)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(26305176910158556)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(26305391385158557)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26305951718158557)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(26305176910158556)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(26303772486158536)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26306181220158557)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(26305176910158556)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(26306013017158557)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26306253692158557)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(26305176910158556)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(26306013017158557)
,p_template_types=>'REPORT'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26306462885158557)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(26305176910158556)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(26306365097158557)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26306596082158557)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(26305176910158556)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(26306365097158557)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26306612071158557)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(26305176910158556)
,p_css_classes=>'t-Cards--featured'
,p_group_id=>wwv_flow_api.id(26306013017158557)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26306740633158557)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(26305176910158556)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(26303772486158536)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26306862276158557)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(26305176910158556)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(26305391385158557)
,p_template_types=>'REPORT'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26306972203158557)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(26305176910158556)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(26303772486158536)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26307169057158557)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Use Theme Colors'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(26305176910158556)
,p_css_classes=>'t-Cards--colorize'
,p_group_id=>wwv_flow_api.id(26307067201158557)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26307425987158564)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(26307278202158557)
,p_css_classes=>'t-Comments--basic'
,p_group_id=>wwv_flow_api.id(26307380025158564)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26307516836158564)
,p_theme_id=>42
,p_name=>'SPEECH_BUBBLES'
,p_display_name=>'Speech Bubbles'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(26307278202158557)
,p_css_classes=>'t-Comments--chat'
,p_group_id=>wwv_flow_api.id(26307380025158564)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26307927930158571)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(26307763810158571)
,p_css_classes=>'t-Report--staticRowColors'
,p_group_id=>wwv_flow_api.id(26307852173158571)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26308043697158571)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(26307763810158571)
,p_css_classes=>'t-Report--altRowsDefault'
,p_group_id=>wwv_flow_api.id(26307852173158571)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26308265009158571)
,p_theme_id=>42
,p_name=>'ENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(26307763810158571)
,p_css_classes=>'t-Report--rowHighlight'
,p_group_id=>wwv_flow_api.id(26308137085158571)
,p_template_types=>'REPORT'
,p_help_text=>'Enable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26308440340158571)
,p_theme_id=>42
,p_name=>'HORIZONTALBORDERS'
,p_display_name=>'Horizontal Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(26307763810158571)
,p_css_classes=>'t-Report--horizontalBorders'
,p_group_id=>wwv_flow_api.id(26308359482158571)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26308549343158571)
,p_theme_id=>42
,p_name=>'REMOVEALLBORDERS'
,p_display_name=>'No Borders'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(26307763810158571)
,p_css_classes=>'t-Report--noBorders'
,p_group_id=>wwv_flow_api.id(26308359482158571)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26308609781158571)
,p_theme_id=>42
,p_name=>'REMOVEOUTERBORDERS'
,p_display_name=>'No Outer Borders'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(26307763810158571)
,p_css_classes=>'t-Report--inline'
,p_group_id=>wwv_flow_api.id(26308359482158571)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26308755339158571)
,p_theme_id=>42
,p_name=>'ROWHIGHLIGHTDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(26307763810158571)
,p_css_classes=>'t-Report--rowHighlightOff'
,p_group_id=>wwv_flow_api.id(26308137085158571)
,p_template_types=>'REPORT'
,p_help_text=>'Disable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26308874621158571)
,p_theme_id=>42
,p_name=>'STRETCHREPORT'
,p_display_name=>'Stretch Report'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(26307763810158571)
,p_css_classes=>'t-Report--stretch'
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26308973568158571)
,p_theme_id=>42
,p_name=>'VERTICALBORDERS'
,p_display_name=>'Vertical Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(26307763810158571)
,p_css_classes=>'t-Report--verticalBorders'
,p_group_id=>wwv_flow_api.id(26308359482158571)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26309187686158571)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(26309049993158571)
,p_css_classes=>'t-Timeline--compact'
,p_group_id=>wwv_flow_api.id(26306013017158557)
,p_template_types=>'REPORT'
,p_help_text=>'Displays a compact video of timeline with smaller font-sizes and fewer columns.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26309419110158585)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(26309286724158584)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(26309381680158585)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26309542170158585)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(26309286724158584)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(26309381680158585)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26309633390158585)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(26309286724158584)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(26309381680158585)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26309763368158585)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(26309286724158584)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(26303772486158536)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26309844943158585)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(26309286724158584)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(26303772486158536)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26309992457158585)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(26309286724158584)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(26309381680158585)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26310095134158585)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(26309286724158584)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(26309381680158585)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26310121789158585)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(26309286724158584)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(26309381680158585)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26310383066158585)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(26310291855158585)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(26309381680158585)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26310441146158585)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(26310291855158585)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(26309381680158585)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26310594837158585)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(26310291855158585)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(26309381680158585)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26310637472158585)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(26310291855158585)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(26303772486158536)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26310785700158585)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(26310291855158585)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(26303772486158536)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26310837909158585)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(26310291855158585)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(26309381680158585)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26310949137158585)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(26310291855158585)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(26309381680158585)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26311061194158585)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(26310291855158585)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(26309381680158585)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26311358235158592)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(26311188293158587)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(26311282364158592)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26311418319158592)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(26311188293158587)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(26311282364158592)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26311542071158592)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(26311188293158587)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(26311282364158592)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in 4 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26311656765158592)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(26311188293158587)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(26311282364158592)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 5 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26311711246158592)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(26311188293158587)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(26311282364158592)
,p_template_types=>'LIST'
,p_help_text=>'Span badges horizontally'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26311825943158598)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_list_template_id=>wwv_flow_api.id(26311188293158587)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(26311282364158592)
,p_template_types=>'LIST'
,p_help_text=>'Use flexbox to arrange items'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26311918068158606)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_api.id(26311188293158587)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(26311282364158592)
,p_template_types=>'LIST'
,p_help_text=>'Float badges to left'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26312135098158606)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(26311188293158587)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(26312026546158606)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26312242324158606)
,p_theme_id=>42
,p_name=>'MEDIUM'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(26311188293158587)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(26312026546158606)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26312319160158606)
,p_theme_id=>42
,p_name=>'RESPONSIVE'
,p_display_name=>'Responsive'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(26311188293158587)
,p_css_classes=>'t-BadgeList--responsive'
,p_template_types=>'LIST'
,p_help_text=>'Automatically resize badges to smaller sizes as screen becomes smaller.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26312470018158606)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(26311188293158587)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(26312026546158606)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26312564576158606)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(26311188293158587)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(26311282364158592)
,p_template_types=>'LIST'
,p_help_text=>'Stack badges on top of each other'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26312618124158606)
,p_theme_id=>42
,p_name=>'XLARGE'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(26311188293158587)
,p_css_classes=>'.t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(26312026546158606)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26312759602158606)
,p_theme_id=>42
,p_name=>'XXLARGE'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(26311188293158587)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(26312026546158606)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26312932352158606)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(26312812954158606)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(26311282364158592)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26313167064158606)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(26312812954158606)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(26313062756158606)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26313239434158606)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(26312812954158606)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(26311282364158592)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26313355182158606)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(26312812954158606)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(26313062756158606)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26313499206158606)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(26312812954158606)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(26311282364158592)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26313594612158606)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(26312812954158606)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(26313062756158606)
,p_template_types=>'LIST'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26313664788158606)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(26312812954158606)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(26311282364158592)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26313854392158606)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(26312812954158606)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(26313733400158606)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26313940529158606)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(26312812954158606)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(26313733400158606)
,p_template_types=>'LIST'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26314134449158606)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(26312812954158606)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(26314079232158606)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26314239508158606)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(26312812954158606)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(26314079232158606)
,p_template_types=>'LIST'
,p_help_text=>'Initials come from List Attribute 3'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26314367039158606)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(26312812954158606)
,p_css_classes=>'t-Cards--featured'
,p_group_id=>wwv_flow_api.id(26313733400158606)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26314404835158606)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(26312812954158606)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(26311282364158592)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26314506622158606)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(26312812954158606)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(26313062756158606)
,p_template_types=>'LIST'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26314664044158606)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_api.id(26312812954158606)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(26311282364158592)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26314841191158606)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Use Theme Colors'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(26312812954158606)
,p_css_classes=>'t-Cards--colorize'
,p_group_id=>wwv_flow_api.id(26314755966158606)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26315074822158606)
,p_theme_id=>42
,p_name=>'ACTIONS'
,p_display_name=>'Actions'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(26314992873158606)
,p_css_classes=>'t-LinksList--actions'
,p_group_id=>wwv_flow_api.id(26313733400158606)
,p_template_types=>'LIST'
,p_help_text=>'Render as actions to be placed on the right side column.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26315148752158606)
,p_theme_id=>42
,p_name=>'DISABLETEXTWRAPPING'
,p_display_name=>'Disable Text Wrapping'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(26314992873158606)
,p_css_classes=>'t-LinksList--nowrap'
,p_template_types=>'LIST'
,p_help_text=>'Do not allow link text to wrap to new lines. Truncate with ellipsis.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26315270259158606)
,p_theme_id=>42
,p_name=>'SHOWBADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(26314992873158606)
,p_css_classes=>'t-LinksList--showBadge'
,p_template_types=>'LIST'
,p_help_text=>'Show badge to right of link (requires Attribute 1 to be populated)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26315324648158606)
,p_theme_id=>42
,p_name=>'SHOWGOTOARROW'
,p_display_name=>'Show Right Arrow'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(26314992873158606)
,p_css_classes=>'t-LinksList--showArrow'
,p_template_types=>'LIST'
,p_help_text=>'Show arrow to the right of link'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26315544923158607)
,p_theme_id=>42
,p_name=>'SHOWICONS'
,p_display_name=>'For All Items'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(26314992873158606)
,p_css_classes=>'t-LinksList--showIcons'
,p_group_id=>wwv_flow_api.id(26315414405158606)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26315619696158621)
,p_theme_id=>42
,p_name=>'SHOWTOPICONS'
,p_display_name=>'For Top Level Items Only'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(26314992873158606)
,p_css_classes=>'t-LinksList--showTopIcons'
,p_group_id=>wwv_flow_api.id(26315414405158606)
,p_template_types=>'LIST'
,p_help_text=>'This will show icons for top level items of the list only. It will not show icons for sub lists.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26315896800158627)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(26315789133158621)
,p_css_classes=>'t-MediaList--cols t-MediaList--2cols'
,p_group_id=>wwv_flow_api.id(26311282364158592)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26315997853158627)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(26315789133158621)
,p_css_classes=>'t-MediaList--cols t-MediaList--3cols'
,p_group_id=>wwv_flow_api.id(26311282364158592)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26316009485158627)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(26315789133158621)
,p_css_classes=>'t-MediaList--cols t-MediaList--4cols'
,p_group_id=>wwv_flow_api.id(26311282364158592)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26316111127158627)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(26315789133158621)
,p_css_classes=>'t-MediaList--cols t-MediaList--5cols'
,p_group_id=>wwv_flow_api.id(26311282364158592)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26316299885158627)
,p_theme_id=>42
,p_name=>'SHOW_BADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(26315789133158621)
,p_css_classes=>'t-MediaList--showBadges'
,p_template_types=>'LIST'
,p_help_text=>'Show a badge (Attribute 2) to the right of the list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26316383456158627)
,p_theme_id=>42
,p_name=>'SHOW_DESCRIPTION'
,p_display_name=>'Show Description'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(26315789133158621)
,p_css_classes=>'t-MediaList--showDesc'
,p_template_types=>'LIST'
,p_help_text=>'Shows the description (Attribute 1) for each list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26316484381158627)
,p_theme_id=>42
,p_name=>'SHOW_ICONS'
,p_display_name=>'Show Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(26315789133158621)
,p_css_classes=>'t-MediaList--showIcons'
,p_template_types=>'LIST'
,p_help_text=>'Shows an icon for each list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26316500117158627)
,p_theme_id=>42
,p_name=>'SPANHORIZONTAL'
,p_display_name=>'Span Horizontal'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(26315789133158621)
,p_css_classes=>'t-MediaList--horizontal'
,p_group_id=>wwv_flow_api.id(26311282364158592)
,p_template_types=>'LIST'
,p_help_text=>'Show all list items in one horizontal row.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26316723713158627)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(26316659018158627)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26316855751158633)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(26316659018158627)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26316934101158633)
,p_theme_id=>42
,p_name=>'ENABLE_SLIDE_ANIMATION'
,p_display_name=>'Enable Slide Animation'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(26316659018158627)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26317082018158633)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(26316659018158627)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26317545727158652)
,p_theme_id=>42
,p_name=>'ABOVE_LABEL'
,p_display_name=>'Above Label'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(26317426668158646)
,p_css_classes=>'t-Tabs--iconsAbove'
,p_group_id=>wwv_flow_api.id(26314079232158606)
,p_template_types=>'LIST'
,p_help_text=>'Places icons above tab label.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26317680997158652)
,p_theme_id=>42
,p_name=>'FILL_LABELS'
,p_display_name=>'Fill Labels'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(26317426668158646)
,p_css_classes=>'t-Tabs--fillLabels'
,p_group_id=>wwv_flow_api.id(26311282364158592)
,p_template_types=>'LIST'
,p_help_text=>'Stretch tabs to fill to the width of the tabs container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26317721505158667)
,p_theme_id=>42
,p_name=>'INLINE_WITH_LABEL'
,p_display_name=>'Inline with Label'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(26317426668158646)
,p_css_classes=>'t-Tabs--inlineIcons'
,p_group_id=>wwv_flow_api.id(26314079232158606)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26317926220158667)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(26317426668158646)
,p_css_classes=>'t-Tabs--large'
,p_group_id=>wwv_flow_api.id(26317877179158667)
,p_template_types=>'LIST'
,p_help_text=>'Increases font size and white space around tab items.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26318068703158667)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(26317426668158646)
,p_css_classes=>'t-Tabs--pill'
,p_group_id=>wwv_flow_api.id(26313733400158606)
,p_template_types=>'LIST'
,p_help_text=>'Displays tabs in a pill container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26318120786158667)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(26317426668158646)
,p_css_classes=>'t-Tabs--simple'
,p_group_id=>wwv_flow_api.id(26313733400158606)
,p_template_types=>'LIST'
,p_help_text=>'A very simplistic tab UI.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26318228483158667)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>5
,p_list_template_id=>wwv_flow_api.id(26317426668158646)
,p_css_classes=>'t-Tabs--small'
,p_group_id=>wwv_flow_api.id(26317877179158667)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26318414856158667)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(26318391932158667)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26318595962158667)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(26318391932158667)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26318683077158667)
,p_theme_id=>42
,p_name=>'ENABLE_SLIDE_ANIMATION'
,p_display_name=>'Enable Slide Animation'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(26318391932158667)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26318720341158674)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(26318391932158667)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26319034963158674)
,p_theme_id=>42
,p_name=>'ALLSTEPS'
,p_display_name=>'All Steps'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(26318810246158674)
,p_css_classes=>'t-WizardSteps--displayLabels'
,p_group_id=>wwv_flow_api.id(26318915138158674)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26319156639158674)
,p_theme_id=>42
,p_name=>'CURRENTSTEPONLY'
,p_display_name=>'Current Step Only'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(26318810246158674)
,p_css_classes=>'t-WizardSteps--displayCurrentLabelOnly'
,p_group_id=>wwv_flow_api.id(26318915138158674)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26319248621158674)
,p_theme_id=>42
,p_name=>'HIDELABELS'
,p_display_name=>'Hide Labels'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(26318810246158674)
,p_css_classes=>'t-WizardSteps--hideLabels'
,p_group_id=>wwv_flow_api.id(26318915138158674)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26320287031158729)
,p_theme_id=>42
,p_name=>'LEFTICON'
,p_display_name=>'Left'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_api.id(26320018776158729)
,p_css_classes=>'t-Button--iconLeft'
,p_group_id=>wwv_flow_api.id(26320115842158729)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26320382825158741)
,p_theme_id=>42
,p_name=>'RIGHTICON'
,p_display_name=>'Right'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_api.id(26320018776158729)
,p_css_classes=>'t-Button--iconRight'
,p_group_id=>wwv_flow_api.id(26320115842158729)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26321294070159040)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>30
,p_css_classes=>'t-Button--danger'
,p_group_id=>wwv_flow_api.id(26321165926159036)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26321425077159047)
,p_theme_id=>42
,p_name=>'LARGELEFTMARGIN'
,p_display_name=>'Large Left Margin'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapLeft'
,p_group_id=>wwv_flow_api.id(26321397774159047)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26321648631159047)
,p_theme_id=>42
,p_name=>'LARGERIGHTMARGIN'
,p_display_name=>'Large Right Margin'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapRight'
,p_group_id=>wwv_flow_api.id(26321517875159047)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26321868454159047)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--large'
,p_group_id=>wwv_flow_api.id(26321700481159047)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26322017360159047)
,p_theme_id=>42
,p_name=>'NOUI'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>20
,p_css_classes=>'t-Button--noUI'
,p_group_id=>wwv_flow_api.id(26321935154159047)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26322100708159047)
,p_theme_id=>42
,p_name=>'SMALLLEFTMARGIN'
,p_display_name=>'Small Left Margin'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padLeft'
,p_group_id=>wwv_flow_api.id(26321397774159047)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26322254361159047)
,p_theme_id=>42
,p_name=>'SMALLRIGHTMARGIN'
,p_display_name=>'Small Right Margin'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padRight'
,p_group_id=>wwv_flow_api.id(26321517875159047)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26322440718159047)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Inner Button'
,p_display_sequence=>20
,p_css_classes=>'t-Button--pill'
,p_group_id=>wwv_flow_api.id(26322386454159047)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26322548438159047)
,p_theme_id=>42
,p_name=>'PILLEND'
,p_display_name=>'Last Button'
,p_display_sequence=>30
,p_css_classes=>'t-Button--pillEnd'
,p_group_id=>wwv_flow_api.id(26322386454159047)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26322620608159047)
,p_theme_id=>42
,p_name=>'PILLSTART'
,p_display_name=>'First Button'
,p_display_sequence=>10
,p_css_classes=>'t-Button--pillStart'
,p_group_id=>wwv_flow_api.id(26322386454159047)
,p_template_types=>'BUTTON'
,p_help_text=>'Use this for the start of a pill button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26322723887159047)
,p_theme_id=>42
,p_name=>'PRIMARY'
,p_display_name=>'Primary'
,p_display_sequence=>10
,p_css_classes=>'t-Button--primary'
,p_group_id=>wwv_flow_api.id(26321165926159036)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26322804393159047)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_css_classes=>'t-Button--simple'
,p_group_id=>wwv_flow_api.id(26321935154159047)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26322960926159047)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--small'
,p_group_id=>wwv_flow_api.id(26321700481159047)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26323114605159047)
,p_theme_id=>42
,p_name=>'STRETCH'
,p_display_name=>'Stretch'
,p_display_sequence=>10
,p_css_classes=>'t-Button--stretch'
,p_group_id=>wwv_flow_api.id(26323072442159047)
,p_template_types=>'BUTTON'
,p_help_text=>'Stretches button to fill container'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26323206917159047)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_css_classes=>'t-Button--success'
,p_group_id=>wwv_flow_api.id(26321165926159036)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26323313383159047)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>20
,p_css_classes=>'t-Button--warning'
,p_group_id=>wwv_flow_api.id(26321165926159036)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26323506026159047)
,p_theme_id=>42
,p_name=>'SHOWFORMLABELSABOVE'
,p_display_name=>'Show Form Labels Above'
,p_display_sequence=>10
,p_css_classes=>'t-Form--labelsAbove'
,p_group_id=>wwv_flow_api.id(26323487969159047)
,p_template_types=>'REGION'
,p_help_text=>'Show form labels above input fields.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26323725755159047)
,p_theme_id=>42
,p_name=>'FORMSIZELARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form--large'
,p_group_id=>wwv_flow_api.id(26323648837159047)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26323967950159047)
,p_theme_id=>42
,p_name=>'FORMLEFTLABELS'
,p_display_name=>'Left'
,p_display_sequence=>20
,p_css_classes=>'t-Form--leftLabels'
,p_group_id=>wwv_flow_api.id(26323841059159047)
,p_template_types=>'REGION'
,p_help_text=>'Align form labels to left.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26324179059159047)
,p_theme_id=>42
,p_name=>'FORMREMOVEPADDING'
,p_display_name=>'Remove Padding'
,p_display_sequence=>20
,p_css_classes=>'t-Form--noPadding'
,p_group_id=>wwv_flow_api.id(26324054456159047)
,p_template_types=>'REGION'
,p_help_text=>'Removes padding between items.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26324240272159047)
,p_theme_id=>42
,p_name=>'FORMSLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>10
,p_css_classes=>'t-Form--slimPadding'
,p_group_id=>wwv_flow_api.id(26324054456159047)
,p_template_types=>'REGION'
,p_help_text=>'Reduces form item padding to 4px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26324415310159047)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_FIELDS'
,p_display_name=>'Stretch Form Fields'
,p_display_sequence=>10
,p_css_classes=>'t-Form--stretchInputs'
,p_group_id=>wwv_flow_api.id(26324305558159047)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26324539968159047)
,p_theme_id=>42
,p_name=>'FORMSIZEXLARGE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form--xlarge'
,p_group_id=>wwv_flow_api.id(26323648837159047)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26324708377159048)
,p_theme_id=>42
,p_name=>'LARGE_FIELD'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--large'
,p_group_id=>wwv_flow_api.id(26324634355159047)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26324818201159048)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_ITEM'
,p_display_name=>'Stretch Form Item'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--stretchInputs'
,p_template_types=>'FIELD'
,p_help_text=>'Stretches the form item to fill its container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26324996175159048)
,p_theme_id=>42
,p_name=>'X_LARGE_SIZE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form-fieldContainer--xlarge'
,p_group_id=>wwv_flow_api.id(26324634355159047)
,p_template_types=>'FIELD'
);
end;
/
prompt --application/shared_components/logic/build_options
begin
null;
end;
/
prompt --application/shared_components/globalization/language
begin
null;
end;
/
prompt --application/shared_components/globalization/translations
begin
null;
end;
/
prompt --application/shared_components/globalization/messages
begin
null;
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/user_interface/shortcuts
begin
null;
end;
/
prompt --application/shared_components/security/authentications
begin
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(26325375821159110)
,p_name=>'Application Express Authentication'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(26327661281162199)
,p_name=>'NoAuth'
,p_scheme_type=>'NATIVE_DAD'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
end;
/
prompt --application/ui_types
begin
null;
end;
/
prompt --application/shared_components/plugins/dynamic_action/com_aaw_uilayout_ut
begin
wwv_flow_api.create_plugin(
 p_id=>wwv_flow_api.id(17184698754901636852)
,p_plugin_type=>'DYNAMIC ACTION'
,p_name=>'COM.AAW.UILAYOUT_UT'
,p_display_name=>'UILayout - UT'
,p_category=>'INIT'
,p_supported_ui_types=>'DESKTOP:JQM_SMARTPHONE'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('DYNAMIC ACTION','COM.AAW.UILAYOUT_UT'),'')
,p_plsql_code=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'-- Developed by Tobias Arnhold - http://apex-at-work.blogspot.com/',
'-- tobias-arnhold@hotmail.de',
'FUNCTION render_uilayout (p_dynamic_action IN apex_plugin.t_dynamic_action, p_plugin IN apex_plugin.t_plugin)',
'  RETURN apex_plugin.t_dynamic_action_render_result',
'AS',
'  -- Return variable',
'  v_result                      apex_plugin.t_dynamic_action_render_result;',
'',
'  -- Save plugin-parameter in local variables',
'  v_west_panel_exist          apex_application_page_regions.attribute_13%type := p_dynamic_action.attribute_13;',
'  v_west_panel_width          apex_application_page_regions.attribute_01%type := p_dynamic_action.attribute_01;',
'  v_west_panel_max_width      apex_application_page_regions.attribute_02%type := p_dynamic_action.attribute_02;',
'  v_west_panel_resizer_width  apex_application_page_regions.attribute_07%type := p_dynamic_action.attribute_07;',
'  v_west_panel_class_number   varchar2(1);',
'  ',
'  v_east_panel_exist         apex_application_page_regions.attribute_03%type := p_dynamic_action.attribute_03;',
'  v_east_panel_width         apex_application_page_regions.attribute_04%type := p_dynamic_action.attribute_04;',
'  v_east_panel_max_width     apex_application_page_regions.attribute_05%type := p_dynamic_action.attribute_05;',
'  v_east_panel_resizer_width apex_application_page_regions.attribute_08%type := p_dynamic_action.attribute_08;',
'  ',
'  v_west_in_panel_exist          apex_application_page_regions.attribute_09%type := p_dynamic_action.attribute_09;',
'  v_west_in_panel_width          apex_application_page_regions.attribute_10%type := p_dynamic_action.attribute_10;',
'  v_west_in_panel_max_width      apex_application_page_regions.attribute_11%type := p_dynamic_action.attribute_11;',
'  v_west_in_panel_resizer_width  apex_application_page_regions.attribute_12%type := p_dynamic_action.attribute_12;',
'  ',
'  v_resizer_color_src         apex_application_page_regions.attribute_06%type := p_dynamic_action.attribute_06;',
'  v_resizer_color             apex_application_page_regions.attribute_14%type := p_dynamic_action.attribute_14;',
'  v_resizer_bar_color         varchar2(7);',
'  v_resizer_toggler_color     varchar2(7);',
'  v_show_resizer_moving_color apex_application_page_regions.attribute_15%type := p_dynamic_action.attribute_15;',
'',
'  ',
'  -- Variables for javascript parts',
'  completeCode varchar2(15000);',
'  varConf      varchar2(1000);',
'  domConf      varchar2(1000);',
'  layoutConf   varchar2(7000);',
'  layoutFix    varchar2(4000);',
'  checkDTB     varchar2(500);',
'',
'begin',
'',
'/* Debug */',
'  IF APEX_APPLICATION.g_debug THEN',
'    apex_plugin_util.debug_dynamic_action (p_plugin => p_plugin, p_dynamic_action => p_dynamic_action);',
'  END IF;',
'  ',
'/* Set resizer color */',
'  if v_resizer_color_src = ''CUSTOM'' then',
'    v_resizer_bar_color     := substr(v_resizer_color,1,instr(v_resizer_color,'','')-1);',
'    v_resizer_toggler_color := substr(v_resizer_color,instr(v_resizer_color,'','')+1);',
'    if substr(v_resizer_bar_color,1,1) != ''#'' or substr(v_resizer_toggler_color,1,1) != ''#'' then',
'      v_resizer_bar_color     := ''#DDDDDD'';',
'      v_resizer_toggler_color := ''#BBBBBB'';',
'    end if;  ',
'  end if;',
'  ',
'  if v_west_in_panel_exist = ''Y'' then',
'    v_west_panel_class_number := ''1'';',
'  else',
'    v_west_panel_class_number := ''0'';',
'  end if;',
'',
'/* Configure West Panel */',
'  if v_west_panel_exist = ''N'' then ',
'    v_west_panel_width := 200;',
'    v_west_panel_max_width := 200;',
'    v_west_panel_resizer_width := 0;',
'  end if;',
'  ',
'/* Add file: UILayout css */',
'  apex_css.add_file (p_name => ''jquery.layout'', p_directory => p_plugin.file_prefix, p_version => null);',
'  ',
'',
'/* Load JavaScript Libraries */',
'  apex_javascript.add_library (p_name => ''jquery.layout'', p_directory => p_plugin.file_prefix, p_version => null);',
'  apex_javascript.add_library (p_name => ''jquery.mylayout'', p_directory => p_plugin.file_prefix, p_version => null);',
'   ',
'',
'/* Function declaration */',
'  completeCode := ''function initUILayout(){''||chr(10);',
'  ',
'',
'/* Check if elements are defined by plugin */',
'   /* div variables */',
'   varConf := varConf || ''var delay = (function(){;''||chr(10);',
'   varConf := varConf || ''   var timer = 0;;''||chr(10);',
'   varConf := varConf || ''   return function(callback, ms){;''||chr(10);',
'   varConf := varConf || ''     clearTimeout (timer);;''||chr(10);',
'   varConf := varConf || ''     timer = setTimeout(callback, ms);;''||chr(10);',
'   varConf := varConf || ''   };;''||chr(10);',
'   varConf := varConf || '' })();;''||chr(10);',
'   ',
'   varConf := varConf || ''var divNorth = ''''<div id="uil-north" class="ui-layout-north"></div>'''';''||chr(10);',
'   varConf := varConf || ''var divWest = ''''<div id="uil-west" class="ui-layout-west"></div>'''';''||chr(10);',
'   if v_east_panel_exist = ''Y'' then',
'   varConf := varConf || ''var divEast = ''''<div id="uil-east" class="ui-layout-east"></div>'''';''||chr(10);',
'   end if;',
'   varConf := varConf || ''var divCenter = ''''<div id="uil-center" class="ui-layout-center"></div>'''';''||chr(10);',
'   ',
'   if v_east_panel_exist = ''Y'' then',
'   varConf := varConf || ''var divEast = ''''<div id="uil-east" class="ui-layout-east"></div>'''';''||chr(10);',
'   varConf := varConf || ''$("#wwvFlowForm").append(divNorth+divEast+divWest+divCenter);''||chr(10);',
'   else',
'   varConf := varConf || ''$("#wwvFlowForm").append(divNorth+divWest+divCenter);''||chr(10);',
'   end if;',
'   ',
'   if v_west_in_panel_exist = ''Y'' then',
'   varConf := varConf || ''var divWestInner = ''''<div id="uil-west-inner" class="ui-layout-west"></div>'''';''||chr(10); ',
'   varConf := varConf || ''var divCenterInner = ''''<div id="uil-center-inner" class="ui-layout-center"></div>'''';''||chr(10);',
'   varConf := varConf || ''$("#uil-center").append(divCenterInner+divWestInner);''||chr(10);',
'   end if;',
'',
'   /* Set north */',
'   domConf :=            ''var ulNorth = ".t-Header";''||chr(10);',
'   domConf := domConf || ''$(ulNorth).appendTo($("#uil-north"));''||chr(10);',
'',
'   /* Set west */',
'   domConf := domConf || ''var ulWest = ".t-Body-nav";''||chr(10);',
'   domConf := domConf || ''$(ulWest).appendTo($("#uil-west"));''||chr(10);',
'   ',
'   /* Set east */',
'   if v_east_panel_exist = ''Y'' then',
'   domConf := domConf || ''var ulEast = ".t-Body-actions";''||chr(10);',
'   domConf := domConf || ''$(ulEast).appendTo($("#uil-east"));''||chr(10);',
'   end if;',
'   ',
'   if v_west_in_panel_exist = ''Y'' then',
'   /* Set west */',
'   domConf := domConf || ''var ulWestInner = ".t-Body-side";''||chr(10);',
'   domConf := domConf || ''$(ulWestInner).appendTo($("#uil-west-inner"));''||chr(10);   ',
'   /* Set center */',
'   domConf := domConf || ''var ulCenter = ".t-Body";''||chr(10);',
'   domConf := domConf || ''$(ulCenter).appendTo($("#uil-center-inner"));''||chr(10);     ',
'   else   ',
'   /* Set center */',
'   domConf := domConf || ''var ulCenter = ".t-Body";''||chr(10);',
'   domConf := domConf || ''$(ulCenter).appendTo($("#uil-center"));''||chr(10);  ',
'   end if;',
' ',
'  ',
'  /* Initializae UILayout , North, West, East */',
'  layoutConf := ''myLayout = $("#wwvFlowForm").layout({'' || chr(10);',
'',
'  /* North */',
'  layoutConf := layoutConf || '' north__spacing_closed: 0''||chr(10);',
'  layoutConf := layoutConf || '',north__spacing_open:   0''||chr(10); ',
'  layoutConf := layoutConf || '',north__disableClosable:   true''||chr(10); ',
'  layoutConf := layoutConf || '',north__disableResizable:   true''||chr(10); ',
'  layoutConf := layoutConf || '',north__size:   40''||chr(10); ',
'  /* West */  ',
'  layoutConf := layoutConf || '',west__spacing_closed:  ''||v_west_panel_resizer_width||chr(10);',
'  layoutConf := layoutConf || '',west__spacing_open:    ''||v_west_panel_resizer_width||chr(10); ',
'  layoutConf := layoutConf || '',west__minSize:   40''||chr(10); ',
'  layoutConf := layoutConf || '',west__maxSize:   ''||v_west_panel_max_width||chr(10); ',
'  layoutConf := layoutConf || '',west__size:   ''||v_west_panel_width||chr(10);',
'  layoutConf := layoutConf || '',west__togglerLength_open: 0'';',
'  layoutConf := layoutConf || '',west__togglerLength_closed: 0'';',
'  layoutConf := layoutConf || '',west__resizerDblClickToggle: false'';',
'  /* East */',
'  if v_east_panel_exist = ''Y'' then',
'  layoutConf := layoutConf || '',east__spacing_closed: ''||v_east_panel_resizer_width||chr(10);',
'  layoutConf := layoutConf || '',east__spacing_open:    ''||v_east_panel_resizer_width||chr(10); ',
'  layoutConf := layoutConf || '',east__maxSize:   ''||v_east_panel_max_width||chr(10); ',
'  layoutConf := layoutConf || '',east__size:   ''||v_east_panel_width||chr(10); ',
'  layoutConf := layoutConf || '',east__resizerDblClickToggle: false'';',
'  end if;',
'  /* Automatic resize of apex regions */',
'  layoutConf := layoutConf || '',onresize_end: function () {''||chr(10);',
'  layoutConf := layoutConf || ''  $(''''#t_Body_actions'''').css(''''width'''',$(''''#uil-east'''').css(''''width''''));''||chr(10);',
'  layoutConf := layoutConf || ''  $(''''#t_Body_nav'''').css(''''width'''',$(''''#uil-west'''').css(''''width''''));''||chr(10);',
'  layoutConf := layoutConf || ''  return true; // false = Cancel''||chr(10);',
'  layoutConf := layoutConf || '' }''||chr(10);',
'  layoutConf := layoutConf || ''});''||chr(10);',
'  ',
'  /* Initializae Inner Layout , Inner West */',
'  if v_west_in_panel_exist = ''Y'' then',
'  layoutConf := layoutConf || ''innerLayout = $("#uil-center.ui-layout-center").layout({ ''||chr(10);',
'  layoutConf := layoutConf || '' west__spacing_closed:  ''||v_west_in_panel_resizer_width||chr(10);',
'  layoutConf := layoutConf || '',west__spacing_open:    ''||v_west_in_panel_resizer_width||chr(10); ',
'  layoutConf := layoutConf || '',west__minSize:   0''||chr(10); ',
'  layoutConf := layoutConf || '',west__maxSize:   ''||v_west_in_panel_max_width||chr(10); ',
'  layoutConf := layoutConf || '',west__size:   ''||v_west_in_panel_width||chr(10); ',
'  layoutConf := layoutConf || '',west__resizerDblClickToggle: false'';',
'  /* Automatic resize of apex regions */',
'  layoutConf := layoutConf || '',onresize_end: function () {''||chr(10);',
'  layoutConf := layoutConf || ''        $(''''#t_Body_side'''').css(''''width'''',$(''''#uil-west-inner'''').css(''''width''''));''||chr(10);',
'  layoutConf := layoutConf || ''        return false; // false = Cancel''||chr(10);',
'  layoutConf := layoutConf || ''    }''||chr(10);',
'  layoutConf := layoutConf || ''});''||chr(10);',
'  end if;',
'',
'/* Automatische Breitenanpassung der inneren Elemente bei Initialisierung */',
'  layoutConf := layoutConf || ''$(''''#t_Body_nav'''').css(''''width'''',$(''''#uil-west'''').css(''''width''''));''||chr(10); ',
'  if v_east_panel_exist = ''Y'' then',
'  layoutConf := layoutConf || ''$(''''#t_Body_actions'''').css(''''width'''',$(''''#uil-east'''').css(''''width''''));''||chr(10);',
'  end if;',
'  if v_west_in_panel_exist = ''Y'' then',
'  layoutConf := layoutConf || ''$(''''#t_Body_side'''').css(''''width'''',$(''''#uil-west-inner'''').css(''''width''''));''||chr(10);',
'  end if;',
'',
'/* Default Styles setzen */',
'  layoutConf := layoutConf || ''$( "<style>"+ '' || chr(10);',
'  layoutConf := layoutConf || ''  ".t-Body-title {position: unset; margin-left: 0px !important;}"+ '' || chr(10);',
'  layoutConf := layoutConf || ''  ".t-PageBody.js-rightExpanded.t-PageBody--hideLeft .t-Body-main { margin-right: 0px; }"+ '' || chr(10);',
'  layoutConf := layoutConf || ''  ".t-PageBody.js-rightExpanded.t-PageBody--showLeft .t-Body-main { margin-right: 0px !important; }"+ '' || chr(10);',
'  layoutConf := layoutConf || ''  ".apex-side-nav.js-navExpanded.t-PageBody--showLeft .t-Body-content {  margin-left: 0px !important; }"+ '' || chr(10);',
'  layoutConf := layoutConf || ''  ".apex-side-nav.js-navExpanded .t-Body-content, .apex-side-nav.js-navExpanded .t-Body-side, .apex-side-nav.js-navExpanded .t-Body-title { transform: translate3d(0px, 0px, 0px) !important; }"+ '' || chr(10);',
'  layoutConf := layoutConf || ''  ".t-Body-main .t-Body-content {margin-left: 0px !important; margin-right: 0px !important; margin-top: 0px !important;}"+ '' || chr(10);',
'  layoutConf := layoutConf || ''  ".t-Body-side { position: unset !important;}"+ '' || chr(10);',
'  layoutConf := layoutConf || ''  ".t-PageBody.js-rightExpanded.t-PageBody--showLeft .t-Body-content, .t-PageBody.js-rightExpanded.t-PageBody--showLeft .t-Body-side, .t-PageBody.js-rightExpanded.t-PageBody--showLeft .t-Body-title {transform: translate'
||'3d(0px, 0px, 0px) !important;}"+ '' || chr(10);',
'  layoutConf := layoutConf || ''  ".t-PageBody.js-rightExpanded .t-Body-main, .t-PageBody.js-rightExpanded .t-Body-nav { transform: translate3d(0px, 0px, 0px) !important; }"+ '' || chr(10);',
'  layoutConf := layoutConf || ''  ".apex-side-nav.js-navExpanded .t-Body-main {transform: translate3d(0px, 0px, 0px) !important;}"+ '' || chr(10);',
'  layoutConf := layoutConf || ''  ".t-PageBody.js-rightCollapsed .t-Body-actions { transform: translate3d(0px, 0px, 0px) !important; }"+ '' || chr(10);',
'  --layoutConf := layoutConf || ''  ".js-navCollapsed .t-TreeNav .a-TreeView-node--topLevel > .a-TreeView-content .a-TreeView-label { opacity: 1 !important;}"+ '' || chr(10);',
'  if v_show_resizer_moving_color = ''N'' then',
'    if    v_resizer_color_src = ''DEFAULT'' then',
'    layoutConf := layoutConf || ''  ".ui-layout-resizer-open-hover,	.ui-layout-resizer-dragging, .ui-layout-resizer-dragging-limit, .ui-layout-resizer-closed-hover  { background: #DDDDDD !important; }"+ '' || chr(10);',
'    layoutConf := layoutConf || ''  ".ui-layout-toggler-hover	{ background: #BBBBBB !important; }"+ '' || chr(10);',
'    elsif v_resizer_color_src = ''UT'' then',
'    layoutConf := layoutConf || ''  ".ui-layout-resizer-open-hover,	.ui-layout-resizer-dragging, .ui-layout-resizer-dragging-limit, .ui-layout-resizer-closed-hover  { background: "+$(''''.t-Header-branding'''').css(''''backgroundColor'''')+" !important; }"+ '''
||' || chr(10);',
'    layoutConf := layoutConf || ''  ".ui-layout-toggler-hover { background: "+$(''''.t-Body-nav'''').css(''''backgroundColor'''')+" !important; }"+ '' || chr(10);',
'    elsif v_resizer_color_src = ''CUSTOM'' then',
'    layoutConf := layoutConf || ''  ".ui-layout-resizer-open-hover,	.ui-layout-resizer-dragging, .ui-layout-resizer-dragging-limit, .ui-layout-resizer-closed-hover { background: ''||v_resizer_bar_color||'' !important; }"+ '' || chr(10);',
'    layoutConf := layoutConf || ''  ".ui-layout-toggler-hover { background: ''||v_resizer_toggler_color||'' !important; }"+ '' || chr(10);',
'    end if;',
'  end if;',
'  layoutConf := layoutConf || ''  "</style>"  '' || chr(10);  ',
'  layoutConf := layoutConf || '').appendTo( "body" );'' || chr(10);',
'  -- Test',
'  layoutConf := layoutConf || ''$(".t-Body-content, .t-Body-main").css("marginTop","0");'' || chr(10);',
'',
'  ',
'/* Groessenanpassung bei Initialisierung */',
'  -- Handygroesse',
'  layoutConf := layoutConf || '' if ($(window).width() < 470) {'' || chr(10);',
'  layoutConf := layoutConf || ''    myLayout.hide( "west" );'' || chr(10);',
'  if v_east_panel_exist = ''Y'' then',
'  layoutConf := layoutConf || ''    myLayout.hide( "east" );'' || chr(10);',
'  end if;',
'  if v_west_in_panel_exist = ''Y'' then',
'  layoutConf := layoutConf || ''    innerLayout.hide( "west" );'' || chr(10);',
'  end if;',
'  layoutConf := layoutConf || '' }'' || chr(10);',
'  -- Tabletgroesse',
'  layoutConf := layoutConf || '' else if ($(window).width() > 470 && $(window).width() < 1000) {'' || chr(10);',
'  layoutConf := layoutConf || ''    if ($("#t_Button_navControl").hasClass("is-active") == false) {'' || chr(10); -- && $("#uil-west").width() > 41)',
'  layoutConf := layoutConf || ''      myLayout.sizePane( "west", "40");'' || chr(10);',
'  layoutConf := layoutConf || ''      $(".ui-layout-resizer-west").eq(''||v_west_panel_class_number||'').css( "pointer-events", "none");'' || chr(10);',
'  layoutConf := layoutConf || ''    } else if ($("#t_Button_navControl").hasClass("is-active") == true) {'' || chr(10);',
'  layoutConf := layoutConf || ''      $("#t_Button_navControl").click();'' || chr(10);',
'  layoutConf := layoutConf || ''      myLayout.sizePane( "west", "40");'' || chr(10);',
'  layoutConf := layoutConf || ''      $(".ui-layout-resizer-west").eq(''||v_west_panel_class_number||'').css( "pointer-events", "none");'' || chr(10);',
'  layoutConf := layoutConf || ''    } else {'' || chr(10);',
'  layoutConf := layoutConf || ''      myLayout.sizePane( "west", "40");'' || chr(10);',
'  layoutConf := layoutConf || ''      $(".ui-layout-resizer-west").eq(''||v_west_panel_class_number||'').css( "pointer-events", "none");'' || chr(10);',
'  layoutConf := layoutConf || ''    }'' || chr(10);',
'  if v_east_panel_exist = ''Y'' then',
'  layoutConf := layoutConf || ''    myLayout.close( "east");'' || chr(10);',
'  end if;',
'  if v_west_in_panel_exist = ''Y'' then',
'  layoutConf := layoutConf || ''    innerLayout.close( "west");'' || chr(10);',
'  end if;',
'  layoutConf := layoutConf || '' } else {'' || chr(10);',
'  layoutConf := layoutConf || ''    if ($("#t_Button_navControl").hasClass("is-active") == false ) { myLayout.sizePane( "west", "40"); $(".ui-layout-resizer-west").eq(''||v_west_panel_class_number||'').css( "pointer-events", "none");}'' || chr(10); --$("'
||'#t_Button_navControl").click();',
'  layoutConf := layoutConf || '' }'' || chr(10);',
'',
'',
'  ',
'/* Set LayoutFix: Move all UILayout classes into wwvFlowForm*/',
'   --layoutFix  :=  ''$(".ui-layout-south,.ui-layout-east,.ui-layout-north,.ui-layout-west,.ui-layout-center,.ui-layout-resizer").appendTo("#wwvFlowForm"); ''||chr(10); ',
'   if v_resizer_color_src = ''UT'' then',
'   layoutFix  := layoutFix || ''$( "<style>"+ '' || chr(10);',
'   layoutFix  := layoutFix || ''  ".ui-layout-resizer {border-color: "+$(''''.t-Body-nav'''').css(''''backgroundColor'''')+"; background-color : "+$(''''.t-Header-branding'''').css(''''backgroundColor'''')+"}"+ '' || chr(10);',
'   layoutFix  := layoutFix || ''  ".ui-layout-toggler {border: 0; background-color : "+$(''''.t-Body-nav'''').css(''''backgroundColor'''')+"}"+ '' || chr(10);',
'   layoutFix  := layoutFix || ''  "</style>"  '' || chr(10);',
'   layoutFix  := layoutFix || '').appendTo( "body" );'' || chr(10);',
'   elsif v_resizer_color_src = ''CUSTOM'' then',
'   layoutFix  := layoutFix || ''$( "<style>"+ '' || chr(10);',
'   layoutFix  := layoutFix || ''  ".ui-layout-resizer {border: 0; background-color: ''||v_resizer_bar_color||''}"+ '' || chr(10);',
'   layoutFix  := layoutFix || ''  ".ui-layout-toggler {border: 0; background-color : ''||v_resizer_toggler_color||''}"+ '' || chr(10);',
'   layoutFix  := layoutFix || ''  "</style>"  '' || chr(10);',
'   layoutFix  := layoutFix || '').appendTo( "body" );'' || chr(10);',
'   end if;',
'   ',
'   /* Steuerung des UT Button für die Navigation */',
'   layoutFix  := layoutFix || ''$("#t_Button_navControl").click(function(){'' || chr(10);',
'   layoutFix  := layoutFix || ''  if ($(this).hasClass("is-active") == true && $(window).width() > 470) {'' || chr(10); ',
'   layoutFix  := layoutFix || ''    myLayout.open( "west");'' || chr(10);',
'   layoutFix  := layoutFix || ''    myLayout.sizePane( "west", "''||v_west_panel_width||''");'' || chr(10);',
'   layoutFix  := layoutFix || ''    $(".ui-layout-resizer-west").css( "pointer-events", "auto");'' || chr(10);',
'   layoutFix  := layoutFix || ''  } else if ($(this).hasClass("is-active") == true && $(window).width() <= 470) {'' || chr(10); ',
'   layoutFix  := layoutFix || ''    myLayout.open( "west");'' || chr(10);',
'   layoutFix  := layoutFix || ''    myLayout.sizePane( "west", "''||v_west_panel_width||''");'' || chr(10);',
'   layoutFix  := layoutFix || ''    $(".t-Body-main").css("marginTop","0");'' || chr(10);',
'   layoutFix  := layoutFix || ''    $(".ui-layout-resizer-west").css( "pointer-events", "auto");'' || chr(10);',
'   layoutFix  := layoutFix || ''  } else if ($(this).hasClass("is-active") == false && $(window).width() <= 470) {'' || chr(10); ',
'   layoutFix  := layoutFix || ''    $(".ui-layout-resizer-west").css( "pointer-events", "auto");'' || chr(10);',
'   layoutFix  := layoutFix || ''    myLayout.hide( "west");'' || chr(10);',
'   layoutFix  := layoutFix || ''    $(".t-Body-main").css("marginTop","0");'' || chr(10);',
'   layoutFix  := layoutFix || ''  } else {'' || chr(10);',
'   layoutFix  := layoutFix || ''    myLayout.sizePane( "west", "40");'' || chr(10);',
'   layoutFix  := layoutFix || ''    $(".ui-layout-resizer-west").eq(''||v_west_panel_class_number||'').css( "pointer-events", "none");'' || chr(10);',
'   layoutFix  := layoutFix || ''  }'' || chr(10);',
'   layoutFix  := layoutFix || ''});'' || chr(10);',
'   ',
'   /* Responsive Layout reaction */',
' ',
'   layoutFix  := layoutFix || ''$(window).resize(function() {'' || chr(10);',
'   layoutFix  := layoutFix || ''delay(function(){'' || chr(10);',
'   -- Handy Groesse',
'   layoutFix  := layoutFix || '' if ($(window).width() < 470) {'' || chr(10);',
'   layoutFix  := layoutFix || ''    myLayout.hide( "west" );'' || chr(10);',
'   if v_west_in_panel_exist = ''Y'' then',
'   layoutFix  := layoutFix || ''    innerLayout.hide( "west" );'' || chr(10);',
'   end if;',
'   if v_east_panel_exist = ''Y'' then',
'   layoutFix  := layoutFix || ''    myLayout.hide( "east" );'' || chr(10);',
'   end if;',
'   layoutFix  := layoutFix || ''    $(".t-Body-main").css("marginTop","0");'' || chr(10);',
'   layoutFix  := layoutFix || '' }'' || chr(10);',
'   -- Tablet Groesse',
'   layoutFix  := layoutFix || '' else if ($(window).width() > 470 && $(window).width() < 1000) {'' || chr(10); ',
'   layoutFix  := layoutFix || ''    myLayout.show( "west");'' || chr(10);',
'   layoutFix  := layoutFix || ''    if ($("#t_Button_navControl").hasClass("is-active") == true) {'' || chr(10);',
'   layoutFix  := layoutFix || ''      myLayout.sizePane( "west", "''||v_west_panel_width||''");'' || chr(10);',
'   layoutFix  := layoutFix || ''      $(".ui-layout-resizer-west").css( "pointer-events", "auto");'' || chr(10);',
'   layoutFix  := layoutFix || ''    } else {'' || chr(10);',
'   layoutFix  := layoutFix || ''      myLayout.sizePane( "west", "40");'' || chr(10);',
'   layoutFix  := layoutFix || ''      $(".ui-layout-resizer-west").eq(''||v_west_panel_class_number||'').css( "pointer-events", "none");'' || chr(10);',
'   layoutFix  := layoutFix || ''    }'' || chr(10); ',
'   if v_west_in_panel_exist = ''Y'' then',
'   layoutFix := layoutFix || ''     innerLayout.open( "west" );'' || chr(10);',
'   layoutFix := layoutFix || ''     innerLayout.close( "west" );'' || chr(10);',
'   end if;',
'   if v_east_panel_exist = ''Y'' then',
'   layoutFix := layoutFix || ''     myLayout.open( "east" );'' || chr(10);',
'   layoutFix  := layoutFix || ''    myLayout.close( "east" , false);'' || chr(10);',
'  -- layoutFix  := layoutFix || ''    alert($("#uil-west").width() + " Status: " + $("#t_Button_navControl").hasClass("is-active"));'' || chr(10);',
'   layoutFix  := layoutFix || ''    if ($("#t_Button_navControl").hasClass("is-active") == false && $("#uil-west").width() > 41) {$("#t_Button_navControl").click(); }'' || chr(10); ',
'   end if;',
'   layoutFix  := layoutFix || '' }'' || chr(10);',
'   -- Normaler Bildschirm',
'   layoutFix  := layoutFix || '' else {'' || chr(10);',
'   layoutFix  := layoutFix || ''    myLayout.open( "west" );'' || chr(10);',
'   layoutFix  := layoutFix || ''    myLayout.sizePane( "west", "''||v_west_panel_width||''");'' || chr(10);',
'   layoutFix  := layoutFix || ''    $(".ui-layout-resizer-west").css( "pointer-events", "auto");'' || chr(10);',
'   layoutFix  := layoutFix || ''    if ($("#t_Button_navControl").hasClass("is-active") == false) {$("#t_Button_navControl").click(); }'' || chr(10); ',
'   if v_west_in_panel_exist = ''Y'' then',
'   layoutFix := layoutFix || ''     innerLayout.open( "west" );'' || chr(10);',
'   layoutFix  := layoutFix || ''    innerLayout.sizePane( "west", "''||v_west_in_panel_width||''");'' || chr(10);',
'   end if;',
'   layoutFix  := layoutFix || ''    if ($("#t_Button_rightControlButton").hasClass("is-active") == false) {$("#t_Button_rightControlButton").click(); }'' || chr(10); ',
'   if v_east_panel_exist = ''Y'' then',
'   layoutFix  := layoutFix || ''    myLayout.open( "east" );'' || chr(10);',
'   layoutFix  := layoutFix || ''    myLayout.sizePane( "east", "''||v_east_panel_width||''");'' || chr(10);',
'   end if;',
'   layoutFix  := layoutFix || '' }'' || chr(10);',
'   layoutFix  := layoutFix || ''}, 200);'' || chr(10);',
'   layoutFix  := layoutFix || ''});'' || chr(10);',
'   ',
'',
'			  ',
'/* Set APEX developer toolbar */',
'   checkDTB  := ''if ($("#apexDevToolbar").length != 0){$("#apexDevToolbar").css("zIndex","3999");} ''||chr(10); ',
'',
'/* Finish Code */',
'  completeCode := completeCode || varConf || domConf || layoutConf || layoutFix || checkDTB || ''}'';',
'  ',
'  apex_javascript.add_inline_code (',
'                                   p_code => completeCode,',
'                                   p_key  => ''initUILayout''',
'                                   );',
'  v_result.javascript_function := ''initUILayout'';',
'  return v_result;',
'end render_uilayout;'))
,p_render_function=>'render_uilayout'
,p_substitute_attributes=>true
,p_subscribe_plugin_settings=>true
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>',
'	UILayout for Universal Theme (UT) plugin is made to make the UT more customizable. <br>',
'        You can setup the width of the different UT areas on start and change it dynamically during the runtime.<br>',
'        Please refer to the documentation for more details.</p>',
'<p>',
'	Developed by Tobias Arnhold - http://apex-at-work.com/<br />',
'	EMail: tobias-arnhold@hotmail.de</p>',
'<p>, Mahmoud',
'	Based on the following jQuery Plugin: http://layout.jquery-dev.net/ (1.4.4)</p>',
'<p>',
'	License: This plug-in is dual-licensed under the GPL and MIT licenses.</p>',
'<p>',
'	Thanks to all testers supporting me in creating this plugin: Jeffrey, Jürgen and Mahmoud.</p>'))
,p_version_identifier=>'2.0.14'
,p_about_url=>'http://apex-at-work.com/'
,p_files_version=>7
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(17184699041788661452)
,p_plugin_id=>wwv_flow_api.id(17184698754901636852)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>11
,p_prompt=>'Navigation panel width'
,p_attribute_type=>'NUMBER'
,p_is_required=>true
,p_default_value=>'300'
,p_display_length=>10
,p_max_length=>4
,p_unit=>'px'
,p_supported_ui_types=>'DESKTOP'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(26383205705765457)
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_help_text=>'Defines the maximum width in px of the navigation panel (also called as left or west panel). Only a number value is allowed.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(17184699555294665338)
,p_plugin_id=>wwv_flow_api.id(17184698754901636852)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>12
,p_prompt=>'Navigation panel max width'
,p_attribute_type=>'NUMBER'
,p_is_required=>true
,p_default_value=>'300'
,p_display_length=>10
,p_max_length=>4
,p_unit=>'px'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(26383205705765457)
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_help_text=>'Defines the maximum width of the navigation panel.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(17184700064298667959)
,p_plugin_id=>wwv_flow_api.id(17184698754901636852)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>20
,p_prompt=>'Integrate right panel'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_is_translatable=>false
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'Defines if the right panel can be moved around or not.<br> ',
'Be aware that if you have an active right panel but you disable it inside the plugin then you will experience some ugly CSS bugs. In that case active the “Integrate right panel” option and set the “Right panel resizer width” to 0.'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(17184700538802670076)
,p_plugin_id=>wwv_flow_api.id(17184698754901636852)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>21
,p_prompt=>'Right panel width'
,p_attribute_type=>'NUMBER'
,p_is_required=>false
,p_default_value=>'250'
,p_display_length=>10
,p_max_length=>4
,p_unit=>'px'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(17184700064298667959)
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_help_text=>'Defines the with of the panel in px. Only a number value is allowed.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(17184701046074672141)
,p_plugin_id=>wwv_flow_api.id(17184698754901636852)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>22
,p_prompt=>'Right panel max width'
,p_attribute_type=>'NUMBER'
,p_is_required=>true
,p_default_value=>'250'
,p_display_length=>10
,p_max_length=>4
,p_unit=>'px'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(17184700064298667959)
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_help_text=>'Defines the maximum with of the panel in px. Only a number value is allowed.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(17170658258358343905)
,p_plugin_id=>wwv_flow_api.id(17184698754901636852)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>60
,p_prompt=>'Resizer color'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'DEFAULT'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'Defines which color template should be used.<br>',
'1. Default:			Grey<br>',
'2. Universal Theme (UT):	Colors of the UT configuration<br>',
'3. Custom:			Define your own colors<br>'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(79045734000616285)
,p_plugin_attribute_id=>wwv_flow_api.id(17170658258358343905)
,p_display_sequence=>10
,p_display_value=>'Default (Grey)'
,p_return_value=>'DEFAULT'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(79046209525617776)
,p_plugin_attribute_id=>wwv_flow_api.id(17170658258358343905)
,p_display_sequence=>20
,p_display_value=>'Universal Theme Style'
,p_return_value=>'UT'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(79046606751618649)
,p_plugin_attribute_id=>wwv_flow_api.id(17170658258358343905)
,p_display_sequence=>30
,p_display_value=>'Custom'
,p_return_value=>'CUSTOM'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(17170668540833361368)
,p_plugin_id=>wwv_flow_api.id(17184698754901636852)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>7
,p_display_sequence=>14
,p_prompt=>'Navigation panel resizer width'
,p_attribute_type=>'NUMBER'
,p_is_required=>true
,p_default_value=>'10'
,p_display_length=>5
,p_max_length=>2
,p_unit=>'px'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(26383205705765457)
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_help_text=>'Defines the width of the resizer bar in px. Only a number value is allowed.'
);
end;
/
begin
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(17163612634674434636)
,p_plugin_id=>wwv_flow_api.id(17184698754901636852)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>8
,p_display_sequence=>23
,p_prompt=>'Right panel resizer width'
,p_attribute_type=>'NUMBER'
,p_is_required=>true
,p_default_value=>'10'
,p_display_length=>5
,p_max_length=>2
,p_unit=>'px'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(17184700064298667959)
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_help_text=>'Defines the width of the resizer bar in px. Only a number value is allowed.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(26361329635476719)
,p_plugin_id=>wwv_flow_api.id(17184698754901636852)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>9
,p_display_sequence=>30
,p_prompt=>'Integrate left panel'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_is_translatable=>false
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'Defines if the left panel can be moved around or not. <br>',
'Be aware that if you have an active left panel but you disable it inside the plugin then you will experience some ugly CSS bugs. In that case active the “Integrate left panel” option and set the “Left panel resizer width” to 0.'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(26362662154486466)
,p_plugin_id=>wwv_flow_api.id(17184698754901636852)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>10
,p_display_sequence=>31
,p_prompt=>'Left panel width'
,p_attribute_type=>'NUMBER'
,p_is_required=>false
,p_default_value=>'100'
,p_display_length=>10
,p_max_length=>4
,p_unit=>'px'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(26361329635476719)
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_help_text=>'Defines the with of the panel in px. Only a number value is allowed.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(26363962964491046)
,p_plugin_id=>wwv_flow_api.id(17184698754901636852)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>11
,p_display_sequence=>32
,p_prompt=>'Left panel max width'
,p_attribute_type=>'NUMBER'
,p_is_required=>false
,p_default_value=>'100'
,p_display_length=>10
,p_max_length=>4
,p_unit=>'px'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(26361329635476719)
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_help_text=>'Defines the maximum with of the panel in px. Only a number value is allowed.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(26367679744503492)
,p_plugin_id=>wwv_flow_api.id(17184698754901636852)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>12
,p_display_sequence=>33
,p_prompt=>'Left panel resizer width'
,p_attribute_type=>'NUMBER'
,p_is_required=>false
,p_default_value=>'10'
,p_display_length=>5
,p_max_length=>2
,p_unit=>'px'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(26361329635476719)
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_help_text=>'Defines the width of the resizer bar in px. Only a number value is allowed.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(26383205705765457)
,p_plugin_id=>wwv_flow_api.id(17184698754901636852)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>13
,p_display_sequence=>10
,p_prompt=>'Integrate navigation panel'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'Y'
,p_is_translatable=>false
,p_help_text=>'Defines if the navigation panel can be moved around or not.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(26398006110784823)
,p_plugin_id=>wwv_flow_api.id(17184698754901636852)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>14
,p_display_sequence=>140
,p_prompt=>'Custom resizer color and toggler color'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_default_value=>'#2578CF,#19528E'
,p_display_length=>10
,p_max_length=>15
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(17170658258358343905)
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'CUSTOM'
,p_text_case=>'UPPER'
,p_examples=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#2578CF,#19528E',
'#DDDDDD,#CCCCCC'))
,p_help_text=>'Set up to two comma separated custom colors for the resizer bar and the toggler button.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(26399197103791529)
,p_plugin_id=>wwv_flow_api.id(17184698754901636852)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>15
,p_display_sequence=>150
,p_prompt=>'Show resizer moving color'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'Y'
,p_is_translatable=>false
,p_help_text=>'Defines if some highlighted colors should be displayed when you move or hover the resizer bar or button.'
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A0D0A202A2044656661756C74204C61796F7574205468656D650D0A202A0D0A202A204372656174656420666F72206A71756572792E6C61796F7574200D0A202A0D0A202A20436F70797269676874202863292032303130200D0A202A202020466162';
wwv_flow_api.g_varchar2_table(2) := '72697A696F2042616C6C69616E6F2028687474703A2F2F7777772E66616272697A696F62616C6C69616E6F2E6E6574290D0A202A2020204B6576696E2044616C6D616E2028687474703A2F2F616C6C70726F2E6E6574290D0A202A202020546F62696173';
wwv_flow_api.g_varchar2_table(3) := '2041726E686F6C642028687474703A2F2F617065782D61742D776F726B2E636F6D290D0A202A0D0A202A204475616C206C6963656E73656420756E646572207468652047504C2028687474703A2F2F7777772E676E752E6F72672F6C6963656E7365732F';
wwv_flow_api.g_varchar2_table(4) := '67706C2E68746D6C290D0A202A20616E64204D49542028687474703A2F2F7777772E6F70656E736F757263652E6F72672F6C6963656E7365732F6D69742D6C6963656E73652E70687029206C6963656E7365732E0D0A202A0D0A202A204C617374205570';
wwv_flow_api.g_varchar2_table(5) := '64617465643A20323031362D30312D32340D0A202A204E4F54453A20466F72206265737420636F646520726561646162696C6974792C20766965772074686973207769746820612066697865642D737061636520666F6E7420616E642074616273206571';
wwv_flow_api.g_varchar2_table(6) := '75616C20746F20342D63686172730D0A202A2F0D0A0D0A2F2A0D0A202A0944454641554C5420464F4E540D0A202A094A75737420746F206D616B652064656D6F2D7061676573206C6F6F6B20626574746572202D206E6F742061637475616C6C79207265';
wwv_flow_api.g_varchar2_table(7) := '6C6576616E7420746F204C61796F7574210D0A202A2F0D0A626F6479207B0D0A09666F6E742D66616D696C793A2047656E6576612C20417269616C2C2048656C7665746963612C2073616E732D73657269663B0D0A09666F6E742D73697A653A20202031';
wwv_flow_api.g_varchar2_table(8) := '3030253B0D0A092A666F6E742D73697A653A20203830253B0D0A7D0D0A0D0A2F2A0D0A202A0950414E4553202620434F4E54454E542D444956730D0A202A2F0D0A2E75692D6C61796F75742D70616E65207B202F2A20616C6C202770616E657327202A2F';
wwv_flow_api.g_varchar2_table(9) := '0D0A096261636B67726F756E643A09234646463B200D0A09626F726465723A09096E6F6E653B0D0A096F766572666C6F773A096175746F3B0D0A092F2A20444F204E4F5420616464207363726F6C6C696E6720286F722070616464696E672920746F2027';
wwv_flow_api.g_varchar2_table(10) := '70616E65732720746861742068617665206120636F6E74656E742D6469762C0D0A092020206F746865727769736520796F75206D61792067657420646F75626C652D7363726F6C6C62617273202D206F6E207468652070616E6520414E44206F6E207468';
wwv_flow_api.g_varchar2_table(11) := '6520636F6E74656E742D6469760D0A092020202D207573652075692D6C61796F75742D7772617070657220636C6173732069662070616E6520686173206120636F6E74656E742D6469760D0A092020202D207573652075692D6C61796F75742D636F6E74';
wwv_flow_api.g_varchar2_table(12) := '61696E65722069662070616E652068617320616E20696E6E65722D6C61796F75740D0A092A2F0D0A097D0D0A092F2A20287363726F6C6C696E672920636F6E74656E742D64697620696E736964652070616E6520616C6C6F777320666F72206669786564';
wwv_flow_api.g_varchar2_table(13) := '2068656164657228732920616E642F6F7220666F6F746572287329202A2F0D0A092E75692D6C61796F75742D636F6E74656E74207B0D0A090970616464696E673A09313070783B0D0A0909706F736974696F6E3A0972656C61746976653B202F2A20636F';
wwv_flow_api.g_varchar2_table(14) := '6E7461696E20666C6F61746564206F7220706F736974696F6E656420656C656D656E7473202A2F0D0A09096F766572666C6F773A096175746F3B202F2A20616464207363726F6C6C696E6720746F20636F6E74656E742D646976202A2F0D0A097D0D0A0D';
wwv_flow_api.g_varchar2_table(15) := '0A2F2A0D0A202A095554494C49545920434C41535345530D0A202A094D75737420636F6D652041465445522070616E652D636C6173732061626F766520736F2077696C6C206F766572726964650D0A202A09546865736520636C61737365732061726520';
wwv_flow_api.g_varchar2_table(16) := '4E4F54206175746F2D67656E65726174656420616E6420617265204E4F542075736564206279204C61796F75740D0A202A2F0D0A2E6C61796F75742D6368696C642D636F6E7461696E65722C0D0A2E6C61796F75742D636F6E74656E742D636F6E746169';
wwv_flow_api.g_varchar2_table(17) := '6E6572207B0D0A0970616464696E673A09303B0D0A096F766572666C6F773A0968696464656E3B0D0A7D0D0A2E6C61796F75742D6368696C642D636F6E7461696E6572207B0D0A09626F726465723A0909303B202F2A2072656D6F766520626F72646572';
wwv_flow_api.g_varchar2_table(18) := '206265636175736520696E6E65722D6C61796F75742D70616E65732070726F6261626C79206861766520626F7264657273202A2F0D0A7D0D0A2E6C61796F75742D7363726F6C6C207B0D0A096F766572666C6F773A096175746F3B0D0A7D0D0A2E6C6179';
wwv_flow_api.g_varchar2_table(19) := '6F75742D68696465207B0D0A09646973706C61793A096E6F6E653B0D0A7D0D0A0D0A2F2A0D0A202A09524553495A45522D424152530D0A202A2F0D0A2E75692D6C61796F75742D726573697A6572097B202F2A20616C6C2027726573697A65722D626172';
wwv_flow_api.g_varchar2_table(20) := '7327202A2F0D0A096261636B67726F756E643A0909234444443B0D0A09626F726465723A09090931707820736F6C696420234242423B0D0A09626F726465722D77696474683A09303B0D0A097D0D0A092E75692D6C61796F75742D726573697A65722D64';
wwv_flow_api.g_varchar2_table(21) := '726167207B09092F2A205245414C20726573697A6572207768696C6520726573697A6520696E2070726F6772657373202A2F0D0A097D0D0A092E75692D6C61796F75742D726573697A65722D686F766572097B092F2A206166666563747320626F746820';
wwv_flow_api.g_varchar2_table(22) := '6F70656E20616E6420636C6F73656420737461746573202A2F0D0A097D0D0A092F2A204E4F54453A204974206C6F6F6B732062657374207768656E2027686F7665722720616E6420276472616767696E6727206172652073657420746F20746865207361';
wwv_flow_api.g_varchar2_table(23) := '6D6520636F6C6F722C0D0A09096F746865727769736520636F6C6F7220736869667473207768696C65206472616767696E67207768656E206261722063616E2774206B6565702075702077697468206D6F757365202A2F0D0A092E75692D6C61796F7574';
wwv_flow_api.g_varchar2_table(24) := '2D726573697A65722D6F70656E2D686F766572202C092F2A20686F7665722D636F6C6F7220746F2027726573697A6527202A2F0D0A092E75692D6C61796F75742D726573697A65722D6472616767696E67207B092F2A20726573697A657220626567696E';
wwv_flow_api.g_varchar2_table(25) := '6720276472616767696E6727202A2F0D0A09096261636B67726F756E643A20234334453141342021696D706F7274616E743B0D0A097D0D0A092E75692D6C61796F75742D726573697A65722D6472616767696E67207B092F2A20434C4F4E454420726573';
wwv_flow_api.g_varchar2_table(26) := '697A6572206265696E672064726167676564202A2F0D0A0909626F726465723A20092031707820736F6C696420234242422021696D706F7274616E743B0D0A097D0D0A092E75692D6C61796F75742D726573697A65722D6E6F7274682D6472616767696E';
wwv_flow_api.g_varchar2_table(27) := '672C0D0A092E75692D6C61796F75742D726573697A65722D736F7574682D6472616767696E67207B0D0A0909626F726465722D77696474683A0931707820303B0D0A097D0D0A092E75692D6C61796F75742D726573697A65722D776573742D6472616767';
wwv_flow_api.g_varchar2_table(28) := '696E672C0D0A092E75692D6C61796F75742D726573697A65722D656173742D6472616767696E67207B0D0A0909626F726465722D77696474683A0930203170783B0D0A097D0D0A092F2A204E4F54453A20416464206120276472616767696E672D6C696D';
wwv_flow_api.g_varchar2_table(29) := '69742720636F6C6F7220746F2070726F766964652076697375616C20666565646261636B207768656E20726573697A65722068697473206D696E2F6D61782073697A65206C696D697473202A2F0D0A092E75692D6C61796F75742D726573697A65722D64';
wwv_flow_api.g_varchar2_table(30) := '72616767696E672D6C696D6974207B092F2A20434C4F4E454420726573697A6572206174206D696E206F72206D61782073697A652D6C696D6974202A2F0D0A09096261636B67726F756E643A20234531413441342021696D706F7274616E743B202F2A20';
wwv_flow_api.g_varchar2_table(31) := '726564202A2F0D0A097D0D0A0D0A092E75692D6C61796F75742D726573697A65722D636C6F7365642D686F766572097B202F2A20686F7665722D636F6C6F7220746F2027736C696465206F70656E27202A2F0D0A09096261636B67726F756E643A202345';
wwv_flow_api.g_varchar2_table(32) := '42443541412021696D706F7274616E743B0D0A097D0D0A092E75692D6C61796F75742D726573697A65722D736C6964696E67207B092F2A20726573697A6572207768656E2070616E652069732027736C6964206F70656E27202A2F0D0A09096F70616369';
wwv_flow_api.g_varchar2_table(33) := '74793A202E31303B202F2A2073686F77206F6E6C79206120736C6967687420736861646F77202A2F0D0A090966696C7465723A2020616C706861286F7061636974793D3130293B0D0A09097D0D0A09092E75692D6C61796F75742D726573697A65722D73';
wwv_flow_api.g_varchar2_table(34) := '6C6964696E672D686F766572207B092F2A20736C6964696E6720726573697A6572202D20686F766572202A2F0D0A0909096F7061636974793A20312E30303B202F2A206F6E2D686F7665722C2073686F772074686520726573697A65722D626172206E6F';
wwv_flow_api.g_varchar2_table(35) := '726D616C6C79202A2F0D0A09090966696C7465723A2020616C706861286F7061636974793D313030293B0D0A09097D0D0A09092F2A20736C6964696E6720726573697A6572202D2061646420276F7574736964652D626F726465722720746F2072657369';
wwv_flow_api.g_varchar2_table(36) := '7A6572206F6E2D686F766572200D0A0909202A20746869732073616D706C6520696C6C757374726174657320686F7720746F207461726765742073706563696669632070616E657320616E6420737461746573202A2F0D0A09092E75692D6C61796F7574';
wwv_flow_api.g_varchar2_table(37) := '2D726573697A65722D6E6F7274682D736C6964696E672D686F766572097B20626F726465722D626F74746F6D2D77696474683A093170783B207D0D0A09092E75692D6C61796F75742D726573697A65722D736F7574682D736C6964696E672D686F766572';
wwv_flow_api.g_varchar2_table(38) := '097B20626F726465722D746F702D77696474683A09093170783B207D0D0A09092E75692D6C61796F75742D726573697A65722D776573742D736C6964696E672D686F766572097B20626F726465722D72696768742D77696474683A093170783B207D0D0A';
wwv_flow_api.g_varchar2_table(39) := '09092E75692D6C61796F75742D726573697A65722D656173742D736C6964696E672D686F766572097B20626F726465722D6C6566742D77696474683A093170783B207D0D0A0D0A2F2A0D0A202A09544F47474C45522D425554544F4E530D0A202A2F0D0A';
wwv_flow_api.g_varchar2_table(40) := '2E75692D6C61796F75742D746F67676C6572207B0D0A09626F726465723A2031707820736F6C696420234242423B202F2A206D617463682070616E652D626F72646572202A2F0D0A096261636B67726F756E642D636F6C6F723A20234242423B0D0A097D';
wwv_flow_api.g_varchar2_table(41) := '0D0A092E75692D6C61796F75742D726573697A65722D686F766572202E75692D6C61796F75742D746F67676C6572207B0D0A09096F7061636974793A202E36302021696D706F7274616E743B0D0A090966696C7465723A2020616C706861286F70616369';
wwv_flow_api.g_varchar2_table(42) := '74793D3630292021696D706F7274616E743B0D0A097D0D0A092E75692D6C61796F75742D746F67676C65722D686F766572202C202F2A206E656564207768656E204E4F5420726573697A61626C65202A2F0D0A092E75692D6C61796F75742D726573697A';
wwv_flow_api.g_varchar2_table(43) := '65722D686F766572202E75692D6C61796F75742D746F67676C65722D686F766572207B202F2A206E656564207370656369666963697479207768656E20495320726573697A61626C65202A2F0D0A09096261636B67726F756E642D636F6C6F723A202346';
wwv_flow_api.g_varchar2_table(44) := '43362021696D706F7274616E743B0D0A09096F7061636974793A20312E30302021696D706F7274616E743B0D0A090966696C7465723A2020616C706861286F7061636974793D313030292021696D706F7274616E743B0D0A097D0D0A092E75692D6C6179';
wwv_flow_api.g_varchar2_table(45) := '6F75742D746F67676C65722D6E6F727468202C0D0A092E75692D6C61796F75742D746F67676C65722D736F757468207B0D0A0909626F726465722D77696474683A2030203170783B202F2A206C6566742F726967687420626F7264657273202A2F0D0A09';
wwv_flow_api.g_varchar2_table(46) := '7D0D0A092E75692D6C61796F75742D746F67676C65722D77657374202C0D0A092E75692D6C61796F75742D746F67676C65722D65617374207B0D0A0909626F726465722D77696474683A2031707820303B202F2A20746F702F626F74746F6D20626F7264';
wwv_flow_api.g_varchar2_table(47) := '657273202A2F0D0A097D0D0A092F2A20686964652074686520746F67676C65722D627574746F6E207768656E207468652070616E652069732027736C6964206F70656E27202A2F0D0A092E75692D6C61796F75742D726573697A65722D736C6964696E67';
wwv_flow_api.g_varchar2_table(48) := '20202E75692D6C61796F75742D746F67676C6572207B0D0A0909646973706C61793A206E6F6E653B0D0A097D0D0A092F2A0D0A09202A097374796C652074686520746578742077652070757420494E534944452074686520746F67676C6572730D0A0920';
wwv_flow_api.g_varchar2_table(49) := '2A2F0D0A092E75692D6C61796F75742D746F67676C6572202E636F6E74656E74207B0D0A0909636F6C6F723A090909233636363B0D0A0909666F6E742D73697A653A0909313270783B0D0A0909666F6E742D7765696768743A09626F6C643B0D0A090977';
wwv_flow_api.g_varchar2_table(50) := '696474683A090909313030253B0D0A090970616464696E672D626F74746F6D3A09302E333565783B202F2A20746F2027766572746963616C6C792063656E74657227207465787420696E7369646520746578742D7370616E202A2F0D0A097D0D0A0D0A2F';
wwv_flow_api.g_varchar2_table(51) := '2A0D0A202A0950414E452D4D41534B530D0A202A097468657365207374796C65732061726520686172642D636F646564206F6E206D61736B20656C656D732C206275742061726520616C736F200D0A202A09696E636C7564656420686572652061732021';
wwv_flow_api.g_varchar2_table(52) := '696D706F7274616E7420746F20656E737572652077696C6C206F766572726964657320616E792067656E65726963207374796C65730D0A202A2F0D0A2E75692D6C61796F75742D6D61736B207B0D0A09626F726465723A09096E6F6E652021696D706F72';
wwv_flow_api.g_varchar2_table(53) := '74616E743B0D0A0970616464696E673A09302021696D706F7274616E743B0D0A096D617267696E3A0909302021696D706F7274616E743B0D0A096F766572666C6F773A0968696464656E2021696D706F7274616E743B0D0A09706F736974696F6E3A0961';
wwv_flow_api.g_varchar2_table(54) := '62736F6C7574652021696D706F7274616E743B0D0A096F7061636974793A09302021696D706F7274616E743B0D0A0966696C7465723A0909416C706861284F7061636974793D223022292021696D706F7274616E743B0D0A7D0D0A2E75692D6C61796F75';
wwv_flow_api.g_varchar2_table(55) := '742D6D61736B2D696E736964652D70616E65207B202F2A206D61736B7320616C7761797320696E736964652070616E6520455843455054207768656E2070616E6520697320616E20696672616D65202A2F0D0A09746F703A0909302021696D706F727461';
wwv_flow_api.g_varchar2_table(56) := '6E743B0D0A096C6566743A0909302021696D706F7274616E743B0D0A0977696474683A0909313030252021696D706F7274616E743B0D0A096865696768743A0909313030252021696D706F7274616E743B0D0A7D0D0A6469762E75692D6C61796F75742D';
wwv_flow_api.g_varchar2_table(57) := '6D61736B207B7D09092F2A207374616E64617264206D61736B20666F7220696672616D6573202A2F0D0A696672616D652E75692D6C61796F75742D6D61736B207B7D092F2A206578747261206D61736B20666F72206F626A656374732F6170706C657473';
wwv_flow_api.g_varchar2_table(58) := '202A2F0D0A0D0A2F2A0D0A202A0944656661756C74207072696E74696E67207374796C65730D0A202A2F0D0A406D65646961207072696E74207B0D0A092F2A0D0A09202A09556E6C65737320796F752077616E7420746F207072696E7420746865206C61';
wwv_flow_api.g_varchar2_table(59) := '796F75742061732069742061707065617273206F6E73637265656E2C0D0A09202A0974686573652068746D6C2F626F6479207374796C657320617265206E656564656420746F20616C6C6F772074686520636F6E74656E7420746F2027666C6F77270D0A';
wwv_flow_api.g_varchar2_table(60) := '09202A2F0D0A0968746D6C207B0D0A09096865696768743A09096175746F2021696D706F7274616E743B0D0A09096F766572666C6F773A0976697369626C652021696D706F7274616E743B0D0A097D0D0A09626F64792E75692D6C61796F75742D636F6E';
wwv_flow_api.g_varchar2_table(61) := '7461696E6572207B0D0A0909706F736974696F6E3A097374617469632021696D706F7274616E743B0D0A0909746F703A09096175746F2021696D706F7274616E743B0D0A0909626F74746F6D3A09096175746F2021696D706F7274616E743B0D0A09096C';
wwv_flow_api.g_varchar2_table(62) := '6566743A09096175746F2021696D706F7274616E743B0D0A090972696768743A09096175746F2021696D706F7274616E743B0D0A09092F2A206F6E6C79204945362068617320636F6E7461696E6572207769647468202620686569676874207365742062';
wwv_flow_api.g_varchar2_table(63) := '79204C61796F7574202A2F0D0A09095F77696474683A09096175746F2021696D706F7274616E743B0D0A09095F6865696768743A096175746F2021696D706F7274616E743B0D0A097D0D0A092E75692D6C61796F75742D726573697A65722C202E75692D';
wwv_flow_api.g_varchar2_table(64) := '6C61796F75742D746F67676C6572207B0D0A0909646973706C61793A096E6F6E652021696D706F7274616E743B0D0A097D0D0A092F2A0D0A09202A0944656661756C742070616E65207072696E74207374796C65732064697361626C657320706F736974';
wwv_flow_api.g_varchar2_table(65) := '696F6E696E672C20626F726465727320616E64206261636B67726F756E64732E0D0A09202A09596F752063616E206D6F64696679207468657365207374796C657320686F7765766572206974207375697420796F7572206E656564732E0D0A09202A2F0D';
wwv_flow_api.g_varchar2_table(66) := '0A092E75692D6C61796F75742D70616E65207B0D0A0909626F726465723A09096E6F6E652021696D706F7274616E743B0D0A09096261636B67726F756E643A09207472616E73706172656E742021696D706F7274616E743B0D0A0909706F736974696F6E';
wwv_flow_api.g_varchar2_table(67) := '3A0972656C61746976652021696D706F7274616E743B0D0A0909746F703A09096175746F2021696D706F7274616E743B0D0A0909626F74746F6D3A09096175746F2021696D706F7274616E743B0D0A09096C6566743A09096175746F2021696D706F7274';
wwv_flow_api.g_varchar2_table(68) := '616E743B0D0A090972696768743A09096175746F2021696D706F7274616E743B0D0A090977696474683A09096175746F2021696D706F7274616E743B0D0A09096865696768743A09096175746F2021696D706F7274616E743B0D0A09096F766572666C6F';
wwv_flow_api.g_varchar2_table(69) := '773A0976697369626C652021696D706F7274616E743B0D0A097D0D0A7D';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(26377514052578799)
,p_plugin_id=>wwv_flow_api.id(17184698754901636852)
,p_file_name=>'jquery.layout.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '766172206D794C61796F75743B0A76617220696E6E65724C61796F75743B';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(26481080396097184)
,p_plugin_id=>wwv_flow_api.id(17184698754901636852)
,p_file_name=>'jquery.mylayout.js'
,p_mime_type=>'application/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A2A0D0A202A204070726573657276650D0A202A206A71756572792E6C61796F757420312E342E340D0A202A2024446174653A20323031342D31312D32392030383A30303A303020285361742C203239204E6F76656D62657220323031342920240D0A';
wwv_flow_api.g_varchar2_table(2) := '202A20245265763A20312E3034303420240D0A202A0D0A202A20436F70797269676874202863292032303134204B6576696E2044616C6D616E2028687474703A2F2F6A71756572792D6465762E636F6D290D0A202A204261736564206F6E20776F726B20';
wwv_flow_api.g_varchar2_table(3) := '62792046616272697A696F2042616C6C69616E6F2028687474703A2F2F7777772E66616272697A696F62616C6C69616E6F2E6E6574290D0A202A0D0A202A204475616C206C6963656E73656420756E646572207468652047504C2028687474703A2F2F77';
wwv_flow_api.g_varchar2_table(4) := '77772E676E752E6F72672F6C6963656E7365732F67706C2E68746D6C290D0A202A20616E64204D49542028687474703A2F2F7777772E6F70656E736F757263652E6F72672F6C6963656E7365732F6D69742D6C6963656E73652E70687029206C6963656E';
wwv_flow_api.g_varchar2_table(5) := '7365732E0D0A202A0D0A202A205345453A20687474703A2F2F6C61796F75742E6A71756572792D6465762E636F6D2F4C4943454E53452E7478740D0A202A0D0A202A204368616E67656C6F673A20687474703A2F2F6C61796F75742E6A71756572792D64';
wwv_flow_api.g_varchar2_table(6) := '65762E636F6D2F6368616E67656C6F672E63666D0D0A202A0D0A202A20446F63733A20687474703A2F2F6C61796F75742E6A71756572792D6465762E636F6D2F646F63756D656E746174696F6E2E68746D6C0D0A202A20546970733A20687474703A2F2F';
wwv_flow_api.g_varchar2_table(7) := '6C61796F75742E6A71756572792D6465762E636F6D2F746970732E68746D6C0D0A202A2048656C703A20687474703A2F2F67726F7570732E676F6F676C652E636F6D2F67726F75702F6A71756572792D75692D6C61796F75740D0A202A2F0D0A0D0A2F2A';
wwv_flow_api.g_varchar2_table(8) := '204A617661446F6320496E666F3A20687474703A2F2F636F64652E676F6F676C652E636F6D2F636C6F737572652F636F6D70696C65722F646F63732F6A732D666F722D636F6D70696C65722E68746D6C0D0A202A207B214F626A6563747D096E6F6E2D6E';
wwv_flow_api.g_varchar2_table(9) := '756C6C61626C65207479706520286E65766572204E554C4C290D0A202A207B3F737472696E677D096E756C6C61626C6520747970652028736F6D6574696D6573204E554C4C29202D2064656661756C7420666F72207B4F626A6563747D0D0A202A207B6E';
wwv_flow_api.g_varchar2_table(10) := '756D6265723D7D096F7074696F6E616C20706172616D657465720D0A202A207B2A7D090909414C4C2074797065730D0A202A2F0D0A2F2A09544F444F20666F72206A5120322E78200D0A202A09636865636B20242E666E2E64697361626C6553656C6563';
wwv_flow_api.g_varchar2_table(11) := '74696F6E202D207468697320697320696E206A517565727920554920312E392E780D0A202A2F0D0A0D0A2F2F204E4F54453A20466F72206265737420726561646162696C6974792C2076696577207769746820612066697865642D776964746820666F6E';
wwv_flow_api.g_varchar2_table(12) := '7420616E64207461627320657175616C20746F20342D63686172730D0A0D0A3B2866756E6374696F6E20282429207B0D0A0D0A2F2F20616C696173204D617468206D6574686F6473202D20757365642061206C6F74210D0A766172096D696E09093D204D';
wwv_flow_api.g_varchar2_table(13) := '6174682E6D696E0D0A2C096D617809093D204D6174682E6D61780D0A2C09726F756E64093D204D6174682E666C6F6F720D0A0D0A2C096973537472093D202066756E6374696F6E20287629207B2072657475726E20242E74797065287629203D3D3D2022';
wwv_flow_api.g_varchar2_table(14) := '737472696E67223B207D0D0A0D0A092F2A2A0D0A09202A2040706172616D207B214F626A6563747D090909496E7374616E63650D0A09202A2040706172616D207B41727261792E3C737472696E673E7D09615F666E0D0A09202A2F0D0A2C0972756E506C';
wwv_flow_api.g_varchar2_table(15) := '7567696E43616C6C6261636B73203D2066756E6374696F6E2028496E7374616E63652C20615F666E29207B0D0A090969662028242E6973417272617928615F666E29290D0A090909666F72202876617220693D302C20633D615F666E2E6C656E6774683B';
wwv_flow_api.g_varchar2_table(16) := '20693C633B20692B2B29207B0D0A0909090976617220666E203D20615F666E5B695D3B0D0A09090909747279207B0D0A090909090969662028697353747228666E2929202F2F20276E616D6527206F6620612066756E6374696F6E0D0A09090909090966';
wwv_flow_api.g_varchar2_table(17) := '6E203D206576616C28666E293B0D0A090909090969662028242E697346756E6374696F6E28666E29290D0A0909090909096728666E292820496E7374616E636520293B0D0A090909097D2063617463682028657829207B7D0D0A0909097D0D0A09096675';
wwv_flow_api.g_varchar2_table(18) := '6E6374696F6E206720286629207B2072657475726E20663B207D3B202F2F20636F6D70696C6572206861636B0D0A097D0D0A3B0D0A0D0A2F2A0D0A202A0947454E4552494320242E6C61796F7574204D4554484F4453202D207573656420627920616C6C';
wwv_flow_api.g_varchar2_table(19) := '206C61796F7574730D0A202A2F0D0A242E6C61796F7574203D207B0D0A0D0A0976657273696F6E3A0922312E342E34220D0A2C097265766973696F6E3A09312E30343034202F2F2065673A2076657220312E342E34203D2072657620312E30343034202D';
wwv_flow_api.g_varchar2_table(20) := '206D616A6F72286E2B292E6D696E6F72286E6E292B7061746368286E6E2B290D0A0D0A092F2F20242E6C61796F75742E62726F77736572205245504C4143455320242E62726F777365720D0A2C0962726F777365723A097B7D202F2F207365742062656C';
wwv_flow_api.g_varchar2_table(21) := '6F770D0A0D0A092F2F202A505245444546494E45442A204546464543545320262044454641554C5453200D0A092F2F204D555354206C697374206566666563742068657265202D204F52204D5553542073657420616E20667853657474696E6773206F70';
wwv_flow_api.g_varchar2_table(22) := '74696F6E202863616E20626520616E20656D70747920686173683A207B7D290D0A2C09656666656374733A207B0D0A0D0A092F2F0950616E65204F70656E2F436C6F736520416E696D6174696F6E730D0A0909736C6964653A207B0D0A090909616C6C3A';
wwv_flow_api.g_varchar2_table(23) := '097B206475726174696F6E3A2020226661737422097D202F2F2065673A206475726174696F6E3A20313030302C20656173696E673A2022656173654F7574426F756E6365220D0A09092C096E6F7274683A097B20646972656374696F6E3A202275702209';
wwv_flow_api.g_varchar2_table(24) := '7D0D0A09092C09736F7574683A097B20646972656374696F6E3A2022646F776E22097D0D0A09092C09656173743A097B20646972656374696F6E3A20227269676874227D0D0A09092C09776573743A097B20646972656374696F6E3A20226C6566742209';
wwv_flow_api.g_varchar2_table(25) := '7D0D0A09097D0D0A092C0964726F703A207B0D0A090909616C6C3A097B206475726174696F6E3A202022736C6F7722097D0D0A09092C096E6F7274683A097B20646972656374696F6E3A2022757022097D0D0A09092C09736F7574683A097B2064697265';
wwv_flow_api.g_varchar2_table(26) := '6374696F6E3A2022646F776E22097D0D0A09092C09656173743A097B20646972656374696F6E3A20227269676874227D0D0A09092C09776573743A097B20646972656374696F6E3A20226C65667422097D0D0A09097D0D0A092C097363616C653A207B0D';
wwv_flow_api.g_varchar2_table(27) := '0A090909616C6C3A097B206475726174696F6E3A09226661737422097D0D0A09097D0D0A092F2F09746865736520617265206E6F74207265636F6D6D656E6465642C206275742063616E20626520757365640D0A092C09626C696E643A09097B7D0D0A09';
wwv_flow_api.g_varchar2_table(28) := '2C09636C69703A09097B7D0D0A092C096578706C6F64653A097B7D0D0A092C09666164653A09097B7D0D0A092C09666F6C643A09097B7D0D0A092C09707566663A09097B7D0D0A0D0A092F2F0950616E6520526573697A6520416E696D6174696F6E730D';
wwv_flow_api.g_varchar2_table(29) := '0A092C0973697A653A207B0D0A090909616C6C3A097B20656173696E673A09227377696E6722097D0D0A09097D0D0A097D0D0A0D0A092F2F20494E5445524E414C20434F4E4649472044415441202D20444F204E4F54204348414E47452054484953210D';
wwv_flow_api.g_varchar2_table(30) := '0A2C09636F6E6669673A207B0D0A09096F7074696F6E526F6F744B6579733A0922656666656374732C70616E65732C6E6F7274682C736F7574682C776573742C656173742C63656E746572222E73706C697428222C22290D0A092C09616C6C50616E6573';
wwv_flow_api.g_varchar2_table(31) := '3A0909226E6F7274682C736F7574682C776573742C656173742C63656E746572222E73706C697428222C22290D0A092C09626F7264657250616E65733A09226E6F7274682C736F7574682C776573742C65617374222E73706C697428222C22290D0A092C';
wwv_flow_api.g_varchar2_table(32) := '096F70706F73697465456467653A207B0D0A0909096E6F7274683A0922736F757468220D0A09092C09736F7574683A09226E6F727468220D0A09092C09656173743A20092277657374220D0A09092C09776573743A20092265617374220D0A09097D0D0A';
wwv_flow_api.g_varchar2_table(33) := '092F2F096F666673637265656E20646174610D0A092C096F666673637265656E4353533A097B206C6566743A20222D39393939397078222C2072696768743A20226175746F22207D202F2F207573656420627920686964652F636C6F7365206966207573';
wwv_flow_api.g_varchar2_table(34) := '654F666673637265656E436C6F73653D747275650D0A092C096F666673637265656E52657365743A09226F666673637265656E526573657422202F2F206B6579207573656420666F7220646174610D0A092F2F09435353207573656420696E206D756C74';
wwv_flow_api.g_varchar2_table(35) := '69706C6520706C616365730D0A092C0968696464656E3A09097B207669736962696C6974793A202268696464656E22207D0D0A092C0976697369626C653A097B207669736962696C6974793A202276697369626C6522207D0D0A092F2F096C61796F7574';
wwv_flow_api.g_varchar2_table(36) := '20656C656D656E742073657474696E67730D0A092C09726573697A6572733A207B0D0A0909096373735265713A207B0D0A09090909706F736974696F6E3A2009226162736F6C757465220D0A0909092C0970616464696E673A2009300D0A0909092C096D';
wwv_flow_api.g_varchar2_table(37) := '617267696E3A2009300D0A0909092C09666F6E7453697A653A0922317078220D0A0909092C0974657874416C69676E3A09226C65667422092F2F20746F20636F756E7465722D616374202263656E7465722220616C69676E6D656E74210D0A0909092C09';
wwv_flow_api.g_varchar2_table(38) := '6F766572666C6F773A20092268696464656E22202F2F2070726576656E7420746F67676C65722D627574746F6E2066726F6D206F766572666C6F77696E670D0A0909092F2F0953454520242E6C61796F75742E64656661756C74732E7A496E6465786573';
wwv_flow_api.g_varchar2_table(39) := '2E726573697A65725F6E6F726D616C0D0A0909097D0D0A09092C0963737344656D6F3A207B202F2F2044454D4F20435353202D206170706C6965642069663A206F7074696F6E732E50414E452E6170706C7944656D6F5374796C65733D747275650D0A09';
wwv_flow_api.g_varchar2_table(40) := '0909096261636B67726F756E643A202223444444220D0A0909092C09626F726465723A0909226E6F6E65220D0A0909097D0D0A09097D0D0A092C09746F67676C6572733A207B0D0A0909096373735265713A207B0D0A09090909706F736974696F6E3A20';
wwv_flow_api.g_varchar2_table(41) := '09226162736F6C757465220D0A0909092C09646973706C61793A200922626C6F636B220D0A0909092C0970616464696E673A2009300D0A0909092C096D617267696E3A2009300D0A0909092C096F766572666C6F773A092268696464656E220D0A090909';
wwv_flow_api.g_varchar2_table(42) := '2C0974657874416C69676E3A092263656E746572220D0A0909092C09666F6E7453697A653A0922317078220D0A0909092C09637572736F723A200922706F696E746572220D0A0909092C097A496E6465783A2009310D0A0909097D0D0A09092C09637373';
wwv_flow_api.g_varchar2_table(43) := '44656D6F3A207B202F2F2044454D4F20435353202D206170706C6965642069663A206F7074696F6E732E50414E452E6170706C7944656D6F5374796C65733D747275650D0A090909096261636B67726F756E643A202223414141220D0A0909097D0D0A09';
wwv_flow_api.g_varchar2_table(44) := '097D0D0A092C09636F6E74656E743A207B0D0A0909096373735265713A207B0D0A09090909706F736974696F6E3A092272656C617469766522202F2A20636F6E7461696E20666C6F61746564206F7220706F736974696F6E656420656C656D656E747320';
wwv_flow_api.g_varchar2_table(45) := '2A2F0D0A0909097D0D0A09092C0963737344656D6F3A207B202F2F2044454D4F20435353202D206170706C6965642069663A206F7074696F6E732E50414E452E6170706C7944656D6F5374796C65733D747275650D0A090909096F766572666C6F773A09';
wwv_flow_api.g_varchar2_table(46) := '226175746F220D0A0909092C0970616464696E673A092231307078220D0A0909097D0D0A09092C0963737344656D6F50616E653A207B202F2F2044454D4F20435353202D2052454D4F5645207363726F6C6C696E672066726F6D202770616E6527207768';
wwv_flow_api.g_varchar2_table(47) := '656E20697420686173206120636F6E74656E742D6469760D0A090909096F766572666C6F773A092268696464656E220D0A0909092C0970616464696E673A09300D0A0909097D0D0A09097D0D0A092C0970616E65733A207B202F2F2064656661756C7473';
wwv_flow_api.g_varchar2_table(48) := '20666F7220414C4C2070616E6573202D206F76657272696464656E20627920277065722D70616E652073657474696E6773272062656C6F770D0A0909096373735265713A207B0D0A09090909706F736974696F6E3A2009226162736F6C757465220D0A09';
wwv_flow_api.g_varchar2_table(49) := '09092C096D617267696E3A0909300D0A0909092F2F09242E6C61796F75742E64656661756C74732E7A496E64657865732E70616E655F6E6F726D616C0D0A0909097D0D0A09092C0963737344656D6F3A207B202F2F2044454D4F20435353202D20617070';
wwv_flow_api.g_varchar2_table(50) := '6C6965642069663A206F7074696F6E732E50414E452E6170706C7944656D6F5374796C65733D747275650D0A0909090970616464696E673A092231307078220D0A0909092C096261636B67726F756E643A092223464646220D0A0909092C09626F726465';
wwv_flow_api.g_varchar2_table(51) := '723A09092231707820736F6C69642023424242220D0A0909092C096F766572666C6F773A09226175746F220D0A0909097D0D0A09097D0D0A092C096E6F7274683A207B0D0A090909736964653A09090922746F70220D0A09092C0973697A65547970653A';
wwv_flow_api.g_varchar2_table(52) := '090922486569676874220D0A09092C096469723A09090922686F727A220D0A09092C096373735265713A207B0D0A09090909746F703A200909300D0A0909092C09626F74746F6D3A2009226175746F220D0A0909092C096C6566743A200909300D0A0909';
wwv_flow_api.g_varchar2_table(53) := '092C0972696768743A200909300D0A0909092C0977696474683A200909226175746F220D0A0909092F2F096865696768743A200944594E414D49430D0A0909097D0D0A09097D0D0A092C09736F7574683A207B0D0A090909736964653A09090922626F74';
wwv_flow_api.g_varchar2_table(54) := '746F6D220D0A09092C0973697A65547970653A090922486569676874220D0A09092C096469723A09090922686F727A220D0A09092C096373735265713A207B0D0A09090909746F703A200909226175746F220D0A0909092C09626F74746F6D3A2009300D';
wwv_flow_api.g_varchar2_table(55) := '0A0909092C096C6566743A200909300D0A0909092C0972696768743A200909300D0A0909092C0977696474683A200909226175746F220D0A0909092F2F096865696768743A200944594E414D49430D0A0909097D0D0A09097D0D0A092C09656173743A20';
wwv_flow_api.g_varchar2_table(56) := '7B0D0A090909736964653A090909227269676874220D0A09092C0973697A65547970653A0909225769647468220D0A09092C096469723A0909092276657274220D0A09092C096373735265713A207B0D0A090909096C6566743A200909226175746F220D';
wwv_flow_api.g_varchar2_table(57) := '0A0909092C0972696768743A200909300D0A0909092C09746F703A200909226175746F22202F2F2044594E414D49430D0A0909092C09626F74746F6D3A2009226175746F22202F2F2044594E414D49430D0A0909092C096865696768743A200922617574';
wwv_flow_api.g_varchar2_table(58) := '6F220D0A0909092F2F0977696474683A20090944594E414D49430D0A0909097D0D0A09097D0D0A092C09776573743A207B0D0A090909736964653A090909226C656674220D0A09092C0973697A65547970653A0909225769647468220D0A09092C096469';
wwv_flow_api.g_varchar2_table(59) := '723A0909092276657274220D0A09092C096373735265713A207B0D0A090909096C6566743A200909300D0A0909092C0972696768743A200909226175746F220D0A0909092C09746F703A200909226175746F22202F2F2044594E414D49430D0A0909092C';
wwv_flow_api.g_varchar2_table(60) := '09626F74746F6D3A2009226175746F22202F2F2044594E414D49430D0A0909092C096865696768743A2009226175746F220D0A0909092F2F0977696474683A20090944594E414D49430D0A0909097D0D0A09097D0D0A092C0963656E7465723A207B0D0A';
wwv_flow_api.g_varchar2_table(61) := '0909096469723A0909092263656E746572220D0A09092C096373735265713A207B0D0A090909096C6566743A200909226175746F22202F2F2044594E414D49430D0A0909092C0972696768743A200909226175746F22202F2F2044594E414D49430D0A09';
wwv_flow_api.g_varchar2_table(62) := '09092C09746F703A200909226175746F22202F2F2044594E414D49430D0A0909092C09626F74746F6D3A2009226175746F22202F2F2044594E414D49430D0A0909092C096865696768743A2009226175746F220D0A0909092C0977696474683A20090922';
wwv_flow_api.g_varchar2_table(63) := '6175746F220D0A0909097D0D0A09097D0D0A097D0D0A0D0A092F2F2043414C4C4241434B2046554E4354494F4E204E414D455350414345202D207573656420746F2073746F7265207265757361626C652063616C6C6261636B2066756E6374696F6E730D';
wwv_flow_api.g_varchar2_table(64) := '0A2C0963616C6C6261636B733A207B7D0D0A0D0A2C09676574506172656E7450616E65456C656D3A2066756E6374696F6E2028656C29207B0D0A09092F2F206D757374207061737320656974686572206120636F6E7461696E6572206F722070616E6520';
wwv_flow_api.g_varchar2_table(65) := '656C656D656E740D0A09097661722024656C203D202428656C290D0A09092C096C61796F7574203D2024656C2E6461746128226C61796F75742229207C7C2024656C2E646174612822706172656E744C61796F757422293B0D0A0909696620286C61796F';
wwv_flow_api.g_varchar2_table(66) := '757429207B0D0A0909097661722024636F6E74203D206C61796F75742E636F6E7461696E65723B0D0A0909092F2F20736565206966207468697320636F6E7461696E6572206973206469726563746C792D6E657374656420696E7369646520616E206F75';
wwv_flow_api.g_varchar2_table(67) := '7465722D70616E650D0A0909096966202824636F6E742E6461746128226C61796F757450616E652229292072657475726E2024636F6E743B0D0A090909766172202470616E65203D2024636F6E742E636C6F7365737428222E222B20242E6C61796F7574';
wwv_flow_api.g_varchar2_table(68) := '2E64656661756C74732E70616E65732E70616E65436C617373293B0D0A0909092F2F20696620612070616E652077617320666F756E642C2072657475726E2069740D0A090909696620282470616E652E6461746128226C61796F757450616E6522292920';
wwv_flow_api.g_varchar2_table(69) := '72657475726E202470616E653B0D0A09097D0D0A090972657475726E206E756C6C3B0D0A097D0D0A0D0A2C09676574506172656E7450616E65496E7374616E63653A2066756E6374696F6E2028656C29207B0D0A09092F2F206D75737420706173732065';
wwv_flow_api.g_varchar2_table(70) := '6974686572206120636F6E7461696E6572206F722070616E6520656C656D656E740D0A0909766172202470616E65203D20242E6C61796F75742E676574506172656E7450616E65456C656D28656C293B0D0A090972657475726E202470616E65203F2024';
wwv_flow_api.g_varchar2_table(71) := '70616E652E6461746128226C61796F757450616E652229203A206E756C6C3B0D0A097D0D0A0D0A2C09676574506172656E744C61796F7574496E7374616E63653A2066756E6374696F6E2028656C29207B0D0A09092F2F206D7573742070617373206569';
wwv_flow_api.g_varchar2_table(72) := '74686572206120636F6E7461696E6572206F722070616E6520656C656D656E740D0A0909766172202470616E65203D20242E6C61796F75742E676574506172656E7450616E65456C656D28656C293B0D0A090972657475726E202470616E65203F202470';
wwv_flow_api.g_varchar2_table(73) := '616E652E646174612822706172656E744C61796F75742229203A206E756C6C3B0D0A097D0D0A0D0A2C096765744576656E744F626A6563743A2066756E6374696F6E202865767429207B0D0A090972657475726E20747970656F6620657674203D3D3D20';
wwv_flow_api.g_varchar2_table(74) := '226F626A65637422202626206576742E73746F7050726F7061676174696F6E203F20657674203A206E756C6C3B0D0A097D0D0A2C09706172736550616E654E616D653A2066756E6374696F6E20286576745F6F725F70616E6529207B0D0A090976617220';
wwv_flow_api.g_varchar2_table(75) := '657674203D20242E6C61796F75742E6765744576656E744F626A65637428206576745F6F725F70616E6520290D0A09092C0970616E65203D206576745F6F725F70616E653B0D0A09096966202865767429207B0D0A0909092F2F20414C57415953207374';
wwv_flow_api.g_varchar2_table(76) := '6F702070726F7061676174696F6E206F66206576656E74732074726967676572656420696E204C61796F7574210D0A0909096576742E73746F7050726F7061676174696F6E28293B0D0A09090970616E65203D20242874686973292E6461746128226C61';
wwv_flow_api.g_varchar2_table(77) := '796F75744564676522293B0D0A09097D0D0A09096966202870616E6520262620212F5E28776573747C656173747C6E6F7274687C736F7574687C63656E74657229242F2E746573742870616E652929207B0D0A090909242E6C61796F75742E6D73672827';
wwv_flow_api.g_varchar2_table(78) := '4C41594F5554204552524F52202D20496E76616C69642070616E652D6E616D653A2022272B2070616E65202B272227293B0D0A09090970616E65203D20226572726F72223B0D0A09097D0D0A090972657475726E2070616E653B0D0A097D0D0A0D0A0D0A';
wwv_flow_api.g_varchar2_table(79) := '092F2F204C41594F55542D504C5547494E20524547495354524154494F4E0D0A092F2F206D6F726520706C7567696E732063616E206164646564206265796F6E6420746869732064656661756C74206C6973740D0A2C09706C7567696E733A207B0D0A09';
wwv_flow_api.g_varchar2_table(80) := '09647261676761626C653A09092121242E666E2E647261676761626C65202F2F20726573697A696E670D0A092C09656666656374733A207B0D0A090909636F72653A09092121242E6566666563747309092F2F20616E696D696D6174696F6E7320287370';
wwv_flow_api.g_varchar2_table(81) := '65636966696320656666656374732074657374656420627920696E69744F7074696F6E73290D0A09092C09736C6964653A0909242E656666656374732026262028242E656666656374732E736C696465207C7C2028242E656666656374732E6566666563';
wwv_flow_api.g_varchar2_table(82) := '7420262620242E656666656374732E6566666563742E736C6964652929202F2F2064656661756C74206566666563740D0A09097D0D0A097D0D0A0D0A2F2F09617272617973206F6620706C7567696E206F72206F74686572206D6574686F647320746F20';
wwv_flow_api.g_varchar2_table(83) := '62652074726967676572656420666F72206576656E747320696E202A65616368206C61796F75742A202D2077696C6C206265207061737365642027496E7374616E6365270D0A2C096F6E4372656174653A095B5D092F2F2072756E73207768656E206C61';
wwv_flow_api.g_varchar2_table(84) := '796F7574206973206A757374207374617274696E6720746F2062652063726561746564202D207269676874206166746572206F7074696F6E7320617265207365740D0A2C096F6E4C6F61643A09095B5D092F2F2072756E73206166746572206C61796F75';
wwv_flow_api.g_varchar2_table(85) := '7420636F6E7461696E657220616E6420676C6F62616C206576656E747320696E69742C20627574206265666F726520696E697450616E65732069732063616C6C65640D0A2C096F6E52656164793A095B5D092F2F2072756E7320616674657220696E6974';
wwv_flow_api.g_varchar2_table(86) := '69616C697A6174696F6E202A636F6D706C657465732A202D2069652C20616674657220696E697450616E657320636F6D706C65746573207375636365737366756C6C790D0A2C096F6E44657374726F793A095B5D092F2F2072756E73206166746572206C';
wwv_flow_api.g_varchar2_table(87) := '61796F75742069732064657374726F7965640D0A2C096F6E556E6C6F61643A095B5D092F2F2072756E73206166746572206C61796F75742069732064657374726F796564204F52207768656E207061676520756E6C6F6164730D0A2C0961667465724F70';
wwv_flow_api.g_varchar2_table(88) := '656E3A095B5D092F2F2072756E732061667465722073657441734F70656E282920636F6D706C657465730D0A2C096166746572436C6F73653A095B5D092F2F2072756E73206166746572207365744173436C6F736564282920636F6D706C657465730D0A';
wwv_flow_api.g_varchar2_table(89) := '0D0A092F2A0D0A09202A0947454E45524943205554494C495459204D4554484F44530D0A09202A2F0D0A0D0A092F2F2063616C63756C61746520616E642072657475726E20746865207363726F6C6C6261722077696474682C20617320616E20696E7465';
wwv_flow_api.g_varchar2_table(90) := '6765720D0A2C097363726F6C6C62617257696474683A090966756E6374696F6E202829207B2072657475726E2077696E646F772E7363726F6C6C626172576964746820207C7C20242E6C61796F75742E6765745363726F6C6C62617253697A6528277769';
wwv_flow_api.g_varchar2_table(91) := '64746827293B207D0D0A2C097363726F6C6C6261724865696768743A0966756E6374696F6E202829207B2072657475726E2077696E646F772E7363726F6C6C626172486569676874207C7C20242E6C61796F75742E6765745363726F6C6C62617253697A';
wwv_flow_api.g_varchar2_table(92) := '65282768656967687427293B207D0D0A2C096765745363726F6C6C62617253697A653A0966756E6374696F6E202864696D29207B0D0A0909766172202463093D202428273C646976207374796C653D22706F736974696F6E3A206162736F6C7574653B20';
wwv_flow_api.g_varchar2_table(93) := '746F703A202D313030303070783B206C6566743A202D313030303070783B2077696474683A2031303070783B206865696768743A2031303070783B20626F726465723A20303B206F766572666C6F773A207363726F6C6C3B223E3C2F6469763E27292E61';
wwv_flow_api.g_varchar2_table(94) := '7070656E64546F2822626F647922290D0A09092C0964093D207B2077696474683A2024632E6F757465725769647468202D2024635B305D2E636C69656E7457696474682C206865696768743A20313030202D2024635B305D2E636C69656E744865696768';
wwv_flow_api.g_varchar2_table(95) := '74207D3B0D0A090924632E72656D6F766528293B0D0A090977696E646F772E7363726F6C6C6261725769647468093D20642E77696474683B0D0A090977696E646F772E7363726F6C6C626172486569676874093D20642E6865696768743B0D0A09097265';
wwv_flow_api.g_varchar2_table(96) := '7475726E2064696D2E6D61746368282F5E2877696474687C68656967687429242F29203F20645B64696D5D203A20643B0D0A097D0D0A0D0A0D0A2C0964697361626C655465787453656C656374696F6E3A2066756E6374696F6E202829207B0D0A090976';
wwv_flow_api.g_varchar2_table(97) := '6172202464093D202428646F63756D656E74290D0A09092C0973093D20277465787453656C656374696F6E44697361626C6564270D0A09092C0978093D20277465787453656C656374696F6E496E697469616C697A6564270D0A09093B0D0A0909696620';
wwv_flow_api.g_varchar2_table(98) := '28242E666E2E64697361626C6553656C656374696F6E29207B0D0A090909696620282124642E6461746128782929202F2F20646F63756D656E74206861736E2774206265656E20696E697469616C697A6564207965740D0A0909090924642E6F6E28276D';
wwv_flow_api.g_varchar2_table(99) := '6F7573657570272C20242E6C61796F75742E656E61626C655465787453656C656374696F6E20292E6461746128782C2074727565293B0D0A090909696620282124642E64617461287329290D0A0909090924642E64697361626C6553656C656374696F6E';
wwv_flow_api.g_varchar2_table(100) := '28292E6461746128732C2074727565293B0D0A09097D0D0A097D0D0A2C09656E61626C655465787453656C656374696F6E3A2066756E6374696F6E202829207B0D0A0909766172202464093D202428646F63756D656E74290D0A09092C0973093D202774';
wwv_flow_api.g_varchar2_table(101) := '65787453656C656374696F6E44697361626C6564273B0D0A090969662028242E666E2E656E61626C6553656C656374696F6E2026262024642E64617461287329290D0A09090924642E656E61626C6553656C656374696F6E28292E6461746128732C2066';
wwv_flow_api.g_varchar2_table(102) := '616C7365293B0D0A097D0D0A0D0A0D0A092F2A2A0D0A09202A2052657475726E73206861736820636F6E7461696E65722027646973706C61792720616E6420277669736962696C697479270D0A09202A0D0A09202A204073656509242E73776170282920';
wwv_flow_api.g_varchar2_table(103) := '2D207377617073204353532C2072756E732063616C6C6261636B2C20726573657473204353530D0A09202A2040706172616D20207B214F626A6563747D09092445090909096A517565727920656C656D656E740D0A09202A2040706172616D20207B626F';
wwv_flow_api.g_varchar2_table(104) := '6F6C65616E3D7D095B666F7263653D66616C73655D0952756E206576656E20696620646973706C617920213D206E6F6E650D0A09202A204072657475726E207B214F626A6563747D09090909090952657475726E732063757272656E74207374796C6520';
wwv_flow_api.g_varchar2_table(105) := '70726F70732C206966206170706C696361626C650D0A09202A2F0D0A2C0973686F77496E76697369626C793A2066756E6374696F6E202824452C20666F72636529207B0D0A09096966202824452026262024452E6C656E6774682026262028666F726365';
wwv_flow_api.g_varchar2_table(106) := '207C7C2024452E6373732822646973706C61792229203D3D3D20226E6F6E65222929207B202F2F206F6E6C79206966206E6F74202A616C72656164792068696464656E2A0D0A0909097661722073203D2024455B305D2E7374796C650D0A090909092F2F';
wwv_flow_api.g_varchar2_table(107) := '2073617665204F4E4C592074686520277374796C65272070726F7073206265636175736520746861742069732077686174207765206D75737420726573746F72650D0A0909092C09435353203D207B20646973706C61793A20732E646973706C6179207C';
wwv_flow_api.g_varchar2_table(108) := '7C2027272C207669736962696C6974793A20732E7669736962696C697479207C7C202727207D3B0D0A0909092F2F2073686F7720656C656D656E742027696E76697369626C792720736F2063616E206265206D656173757265640D0A09090924452E6373';
wwv_flow_api.g_varchar2_table(109) := '73287B20646973706C61793A2022626C6F636B222C207669736962696C6974793A202268696464656E22207D293B0D0A09090972657475726E204353533B0D0A09097D0D0A090972657475726E207B7D3B0D0A097D0D0A0D0A092F2A2A0D0A09202A2052';
wwv_flow_api.g_varchar2_table(110) := '657475726E73206461746120666F722073657474696E672073697A65206F6620616E20656C656D656E742028636F6E7461696E6572206F7220612070616E65292E0D0A09202A0D0A09202A204073656520205F63726561746528292C206F6E57696E646F';
wwv_flow_api.g_varchar2_table(111) := '77526573697A65282920666F7220636F6E7461696E65722C20706C7573206F746865727320666F722070616E650D0A09202A204072657475726E204A534F4E202052657475726E7320612068617368206F6620616C6C2064696D656E73696F6E733A2074';
wwv_flow_api.g_varchar2_table(112) := '6F702C20626F74746F6D2C206C6566742C2072696768742C206F7574657257696474682C20696E6E65724865696768742C206574630D0A09202A2F0D0A2C09676574456C656D656E7444696D656E73696F6E733A2066756E6374696F6E202824452C2069';
wwv_flow_api.g_varchar2_table(113) := '6E73657429207B0D0A09097661720D0A09092F2F0964696D656E73696F6E732068617368202D20737461727420776974682063757272656E742064617461204946207061737365640D0A09090964093D207B206373733A207B7D2C20696E7365743A207B';
wwv_flow_api.g_varchar2_table(114) := '7D207D0D0A09092C0978093D20642E6373730909092F2F2043535320686173680D0A09092C0969093D207B20626F74746F6D3A2030207D092F2F2054454D5020696E736574732028626F74746F6D203D20636F6D706C696572206861636B290D0A09092C';
wwv_flow_api.g_varchar2_table(115) := '094E093D20242E6C61796F75742E6373734E756D0D0A09092C0952093D204D6174682E726F756E640D0A09092C096F6666203D2024452E6F666673657428290D0A09092C09622C20702C2065690909092F2F2054454D5020626F726465722C2070616464';
wwv_flow_api.g_varchar2_table(116) := '696E670D0A09093B0D0A0909642E6F66667365744C656674203D206F66662E6C6566743B0D0A0909642E6F6666736574546F7020203D206F66662E746F703B0D0A0D0A09096966202821696E7365742920696E736574203D207B7D3B202F2F2073696D70';
wwv_flow_api.g_varchar2_table(117) := '6C696679206C6F6769632062656C6F770D0A0D0A0909242E6561636828224C6566742C52696768742C546F702C426F74746F6D222E73706C697428222C22292C2066756E6374696F6E20286964782C206529207B202F2F2065203D20656467650D0A0909';
wwv_flow_api.g_varchar2_table(118) := '0962203D20785B22626F7264657222202B20655D203D20242E6C61796F75742E626F7264657257696474682824452C2065293B0D0A09090970203D20785B2270616464696E67222B20655D203D20242E6C61796F75742E6373734E756D2824452C202270';
wwv_flow_api.g_varchar2_table(119) := '616464696E67222B65293B0D0A0909096569203D20652E746F4C6F7765724361736528293B0D0A090909642E696E7365745B65695D203D20696E7365745B65695D203E3D2030203F20696E7365745B65695D203A20703B202F2F20616E79206D69737369';
wwv_flow_api.g_varchar2_table(120) := '6E6720696E736574582076616C7565203D2070616464696E67580D0A090909695B65695D203D20642E696E7365745B65695D202B20623B202F2F20746F74616C206F6666736574206F6620636F6E74656E742066726F6D206F7574657220736964650D0A';
wwv_flow_api.g_varchar2_table(121) := '09097D293B0D0A0D0A0909782E776964746809093D20522824452E77696474682829293B0D0A0909782E686569676874093D20522824452E6865696768742829293B0D0A0909782E746F7009093D204E2824452C22746F70222C74727565293B0D0A0909';
wwv_flow_api.g_varchar2_table(122) := '782E626F74746F6D093D204E2824452C22626F74746F6D222C74727565293B0D0A0909782E6C65667409093D204E2824452C226C656674222C74727565293B0D0A0909782E726967687409093D204E2824452C227269676874222C74727565293B0D0A0D';
wwv_flow_api.g_varchar2_table(123) := '0A0909642E6F757465725769647468093D20522824452E6F7574657257696474682829293B0D0A0909642E6F75746572486569676874093D20522824452E6F757465724865696768742829293B0D0A09092F2F2063616C6320746865205452554520696E';
wwv_flow_api.g_varchar2_table(124) := '6E65722D64696D656E73696F6E732C206576656E20696E20717569726B732D6D6F6465210D0A0909642E696E6E65725769647468093D206D617828302C20642E6F75746572576964746820202D20692E6C656674202D20692E7269676874293B0D0A0909';
wwv_flow_api.g_varchar2_table(125) := '642E696E6E6572486569676874093D206D617828302C20642E6F75746572486569676874202D20692E746F7020202D20692E626F74746F6D293B0D0A09092F2F206C61796F757457696474682F486569676874206973207573656420696E2063616C6373';
wwv_flow_api.g_varchar2_table(126) := '20666F72206D616E75616C20726573697A696E670D0A09092F2F206C61796F7574572F48206F6E6C7920646966666572732066726F6D20696E6E6572572F48207768656E20696E20717569726B732D6D6F6465202D207468656E206973206C696B65206F';
wwv_flow_api.g_varchar2_table(127) := '75746572572F480D0A0909642E6C61796F75745769647468093D20522824452E696E6E657257696474682829293B0D0A0909642E6C61796F7574486569676874093D20522824452E696E6E65724865696768742829293B0D0A0D0A09092F2F6966202824';
wwv_flow_api.g_varchar2_table(128) := '452E70726F7028277461674E616D652729203D3D3D2027424F44592729207B206465627567446174612820642C2024452E70726F7028277461674E616D65272920293B207D202F2F2044454255470D0A0D0A09092F2F642E76697369626C65093D202445';
wwv_flow_api.g_varchar2_table(129) := '2E697328223A76697369626C6522293B2F2F20262620782E7769647468203E203020262620782E686569676874203E20303B0D0A0D0A090972657475726E20643B0D0A097D0D0A0D0A2C09676574456C656D656E745374796C65733A2066756E6374696F';
wwv_flow_api.g_varchar2_table(130) := '6E202824452C206C69737429207B0D0A09097661720D0A090909435353093D207B7D0D0A09092C097374796C65093D2024455B305D2E7374796C650D0A09092C0970726F7073093D206C6973742E73706C697428222C22290D0A09092C09736964657309';
wwv_flow_api.g_varchar2_table(131) := '3D2022546F702C426F74746F6D2C4C6566742C5269676874222E73706C697428222C22290D0A09092C096174747273093D2022436F6C6F722C5374796C652C5769647468222E73706C697428222C22290D0A09092C09702C20732C20612C20692C206A2C';
wwv_flow_api.g_varchar2_table(132) := '206B0D0A09093B0D0A0909666F722028693D303B2069203C2070726F70732E6C656E6774683B20692B2B29207B0D0A09090970203D2070726F70735B695D3B0D0A09090969662028702E6D61746368282F28626F726465727C70616464696E677C6D6172';
wwv_flow_api.g_varchar2_table(133) := '67696E29242F29290D0A09090909666F7220286A3D303B206A203C20343B206A2B2B29207B0D0A090909090973203D2073696465735B6A5D3B0D0A09090909096966202870203D3D3D2022626F7264657222290D0A090909090909666F7220286B3D303B';
wwv_flow_api.g_varchar2_table(134) := '206B203C20333B206B2B2B29207B0D0A0909090909090961203D2061747472735B6B5D3B0D0A090909090909094353535B702B732B615D203D207374796C655B702B732B615D3B0D0A0909090909097D0D0A0909090909656C73650D0A09090909090943';
wwv_flow_api.g_varchar2_table(135) := '53535B702B735D203D207374796C655B702B735D3B0D0A090909097D0D0A090909656C73650D0A090909094353535B705D203D207374796C655B705D3B0D0A09097D3B0D0A090972657475726E204353530D0A097D0D0A0D0A092F2A2A0D0A09202A2052';
wwv_flow_api.g_varchar2_table(136) := '657475726E2074686520696E6E6572576964746820666F72207468652063757272656E742062726F777365722F646F63747970650D0A09202A0D0A09202A20407365652020696E697450616E657328292C2073697A654D696450616E657328292C20696E';
wwv_flow_api.g_varchar2_table(137) := '697448616E646C657328292C2073697A6548616E646C657328290D0A09202A2040706172616D20207B41727261792E3C4F626A6563743E7D09244520204D75737420706173732061206A5175657279206F626A656374202D20666972737420656C656D65';
wwv_flow_api.g_varchar2_table(138) := '6E742069732070726F6365737365640D0A09202A2040706172616D20207B6E756D6265723D7D0909096F75746572576964746820286F7074696F6E616C292043616E207061737320612077696474682C20616C6C6F77696E672063616C63756C6174696F';
wwv_flow_api.g_varchar2_table(139) := '6E73204245464F524520656C656D656E7420697320726573697A65640D0A09202A204072657475726E207B6E756D6265727D09090952657475726E732074686520696E6E65725769647468206F662074686520656C656D20627920737562747261637469';
wwv_flow_api.g_varchar2_table(140) := '6E672070616464696E6720616E6420626F72646572730D0A09202A2F0D0A2C0963737357696474683A2066756E6374696F6E202824452C206F75746572576964746829207B0D0A09092F2F2061202763616C63756C6174656427206F7574657248656967';
wwv_flow_api.g_varchar2_table(141) := '68742063616E2062652070617373656420736F20626F726465727320616E642F6F722070616464696E67206172652072656D6F766564206966206E65656465640D0A0909696620286F757465725769647468203C3D2030292072657475726E20303B0D0A';
wwv_flow_api.g_varchar2_table(142) := '0D0A0909766172206C62093D20242E6C61796F75742E62726F777365720D0A09092C096273093D20216C622E626F784D6F64656C203F2022626F726465722D626F7822203A206C622E626F7853697A696E67203F2024452E6373732822626F7853697A69';
wwv_flow_api.g_varchar2_table(143) := '6E672229203A2022636F6E74656E742D626F78220D0A09092C0962093D20242E6C61796F75742E626F7264657257696474680D0A09092C096E093D20242E6C61796F75742E6373734E756D0D0A09092C0957093D206F7574657257696474680D0A09093B';
wwv_flow_api.g_varchar2_table(144) := '0D0A09092F2F20737472697020626F7264657220616E642F6F722070616464696E672066726F6D206F75746572576964746820746F20676574204353532057696474680D0A090969662028627320213D3D2022626F726465722D626F7822290D0A090909';
wwv_flow_api.g_varchar2_table(145) := '57202D3D2028622824452C20224C6566742229202B20622824452C202252696768742229293B0D0A0909696620286273203D3D3D2022636F6E74656E742D626F7822290D0A09090957202D3D20286E2824452C202270616464696E674C6566742229202B';
wwv_flow_api.g_varchar2_table(146) := '206E2824452C202270616464696E6752696768742229293B0D0A090972657475726E206D617828302C57293B0D0A097D0D0A0D0A092F2A2A0D0A09202A2052657475726E2074686520696E6E657248656967687420666F72207468652063757272656E74';
wwv_flow_api.g_varchar2_table(147) := '2062726F777365722F646F63747970650D0A09202A0D0A09202A20407365652020696E697450616E657328292C2073697A654D696450616E657328292C20696E697448616E646C657328292C2073697A6548616E646C657328290D0A09202A2040706172';
wwv_flow_api.g_varchar2_table(148) := '616D20207B41727261792E3C4F626A6563743E7D09244520204D75737420706173732061206A5175657279206F626A656374202D20666972737420656C656D656E742069732070726F6365737365640D0A09202A2040706172616D20207B6E756D626572';
wwv_flow_api.g_varchar2_table(149) := '3D7D0909096F757465724865696768742020286F7074696F6E616C292043616E207061737320612077696474682C20616C6C6F77696E672063616C63756C6174696F6E73204245464F524520656C656D656E7420697320726573697A65640D0A09202A20';
wwv_flow_api.g_varchar2_table(150) := '4072657475726E207B6E756D6265727D09090952657475726E732074686520696E6E6572486569676874206F662074686520656C656D206279207375627472616374696E672070616464696E6720616E6420626F72646572730D0A09202A2F0D0A2C0963';
wwv_flow_api.g_varchar2_table(151) := '73734865696768743A2066756E6374696F6E202824452C206F7574657248656967687429207B0D0A09092F2F2061202763616C63756C6174656427206F757465724865696768742063616E2062652070617373656420736F20626F726465727320616E64';
wwv_flow_api.g_varchar2_table(152) := '2F6F722070616464696E67206172652072656D6F766564206966206E65656465640D0A0909696620286F75746572486569676874203C3D2030292072657475726E20303B0D0A0D0A0909766172206C62093D20242E6C61796F75742E62726F777365720D';
wwv_flow_api.g_varchar2_table(153) := '0A09092C096273093D20216C622E626F784D6F64656C203F2022626F726465722D626F7822203A206C622E626F7853697A696E67203F2024452E6373732822626F7853697A696E672229203A2022636F6E74656E742D626F78220D0A09092C0962093D20';
wwv_flow_api.g_varchar2_table(154) := '242E6C61796F75742E626F7264657257696474680D0A09092C096E093D20242E6C61796F75742E6373734E756D0D0A09092C0948093D206F757465724865696768740D0A09093B0D0A09092F2F20737472697020626F7264657220616E642F6F72207061';
wwv_flow_api.g_varchar2_table(155) := '6464696E672066726F6D206F7574657248656967687420746F2067657420435353204865696768740D0A090969662028627320213D3D2022626F726465722D626F7822290D0A09090948202D3D2028622824452C2022546F702229202B20622824452C20';
wwv_flow_api.g_varchar2_table(156) := '22426F74746F6D2229293B0D0A0909696620286273203D3D3D2022636F6E74656E742D626F7822290D0A09090948202D3D20286E2824452C202270616464696E67546F702229202B206E2824452C202270616464696E67426F74746F6D2229293B0D0A09';
wwv_flow_api.g_varchar2_table(157) := '0972657475726E206D617828302C48293B0D0A097D0D0A0D0A092F2A2A0D0A09202A2052657475726E7320746865202763757272656E7420435353206E756D657269632076616C75652720666F722061204353532070726F7065727479202D2030206966';
wwv_flow_api.g_varchar2_table(158) := '2070726F706572747920646F6573206E6F742065786973740D0A09202A0D0A09202A2040736565202043616C6C6564206279206D616E79206D6574686F64730D0A09202A2040706172616D207B41727261792E3C4F626A6563743E7D0924450909090909';
wwv_flow_api.g_varchar2_table(159) := '4D75737420706173732061206A5175657279206F626A656374202D20666972737420656C656D656E742069732070726F6365737365640D0A09202A2040706172616D207B737472696E677D09090970726F7009090909546865206E616D65206F66207468';
wwv_flow_api.g_varchar2_table(160) := '65204353532070726F70657274792C2065673A20746F702C2077696474682C206574632E0D0A09202A2040706172616D207B626F6F6C65616E3D7D0909095B616C6C6F774175746F3D66616C73655D0974727565203D2072657475726E20276175746F27';
wwv_flow_api.g_varchar2_table(161) := '20696620746861742069732076616C75653B2066616C7365203D2072657475726E20300D0A09202A204072657475726E207B28737472696E677C6E756D626572297D090909090909557375616C6C79207573656420746F2067657420616E20696E746567';
wwv_flow_api.g_varchar2_table(162) := '65722076616C756520666F7220706F736974696F6E2028746F702C206C65667429206F722073697A6520286865696768742C207769647468290D0A09202A2F0D0A2C096373734E756D3A2066756E6374696F6E202824452C2070726F702C20616C6C6F77';
wwv_flow_api.g_varchar2_table(163) := '4175746F29207B0D0A0909696620282124452E6A717565727929202445203D2024282445293B0D0A090976617220435353203D20242E6C61796F75742E73686F77496E76697369626C79282445290D0A09092C0970093D20242E6373732824455B305D2C';
wwv_flow_api.g_varchar2_table(164) := '2070726F702C2074727565290D0A09092C0976093D20616C6C6F774175746F20262620703D3D226175746F22203F2070203A204D6174682E726F756E64287061727365466C6F6174287029207C7C2030293B0D0A090924452E637373282043535320293B';
wwv_flow_api.g_varchar2_table(165) := '202F2F2052455345540D0A090972657475726E20763B0D0A097D0D0A0D0A2C09626F7264657257696474683A2066756E6374696F6E2028656C2C207369646529207B0D0A090969662028656C2E6A71756572792920656C203D20656C5B305D3B0D0A0909';
wwv_flow_api.g_varchar2_table(166) := '7661722062203D2022626F72646572222B20736964652E73756273747228302C31292E746F5570706572436173652829202B20736964652E7375627374722831293B202F2F206C656674203D3E204C6566740D0A090972657475726E20242E6373732865';
wwv_flow_api.g_varchar2_table(167) := '6C2C20622B225374796C65222C207472756529203D3D3D20226E6F6E6522203F2030203A204D6174682E726F756E64287061727365466C6F617428242E63737328656C2C20622B225769647468222C20747275652929207C7C2030293B0D0A097D0D0A0D';
wwv_flow_api.g_varchar2_table(168) := '0A092F2A2A0D0A09202A204D6F7573652D747261636B696E67207574696C697479202D20465554555245205245464552454E43450D0A09202A0D0A09202A20696E69743A20696620282177696E646F772E6D6F75736529207B0D0A09202A09090977696E';
wwv_flow_api.g_varchar2_table(169) := '646F772E6D6F757365203D207B20783A20302C20793A2030207D3B0D0A09202A0909092428646F63756D656E74292E6D6F7573656D6F76652820242E6C61796F75742E747261636B4D6F75736520293B0D0A09202A09097D0D0A09202A0D0A09202A2040';
wwv_flow_api.g_varchar2_table(170) := '706172616D207B4F626A6563747D09096576740D0A09202A0D0A2C09747261636B4D6F7573653A2066756E6374696F6E202865767429207B0D0A090977696E646F772E6D6F757365203D207B20783A206576742E636C69656E74582C20793A206576742E';
wwv_flow_api.g_varchar2_table(171) := '636C69656E7459207D3B0D0A097D0D0A092A2F0D0A0D0A092F2A2A0D0A09202A20535542524F5554494E4520666F722070726576656E745072656D6174757265536C696465436C6F7365206F7074696F6E0D0A09202A0D0A09202A2040706172616D207B';
wwv_flow_api.g_varchar2_table(172) := '4F626A6563747D09096576740D0A09202A2040706172616D207B4F626A6563743D7D0909656C0D0A09202A2F0D0A2C0969734D6F7573654F766572456C656D3A2066756E6374696F6E20286576742C20656C29207B0D0A09097661720D0A090909244509';
wwv_flow_api.g_varchar2_table(173) := '3D202428656C207C7C2074686973290D0A09092C0964093D2024452E6F666673657428290D0A09092C0954093D20642E746F700D0A09092C094C093D20642E6C6566740D0A09092C0952093D204C202B2024452E6F75746572576964746828290D0A0909';
wwv_flow_api.g_varchar2_table(174) := '2C0942093D2054202B2024452E6F7574657248656967687428290D0A09092C0978093D206576742E7061676558092F2F206576742E636C69656E7458203F0D0A09092C0979093D206576742E7061676559092F2F206576742E636C69656E7459203F0D0A';
wwv_flow_api.g_varchar2_table(175) := '09093B0D0A09092F2F20696620582026205920617265203C20302C2070726F6261626C79206D65616E73206973206F76657220616E206F70656E2053454C4543540D0A090972657475726E2028242E6C61796F75742E62726F777365722E6D7369652026';
wwv_flow_api.g_varchar2_table(176) := '262078203C20302026262079203C203029207C7C20282878203E3D204C2026262078203C3D205229202626202879203E3D20542026262079203C3D204229293B0D0A097D0D0A0D0A092F2A2A0D0A09202A204D6573736167652F4C6F6767696E67205574';
wwv_flow_api.g_varchar2_table(177) := '696C6974790D0A09202A0D0A09202A20406578616D706C6520242E6C61796F75742E6D736728224D79206D65737361676522293B090909092F2F206C6F6720746578740D0A09202A20406578616D706C6520242E6C61796F75742E6D736728224D79206D';
wwv_flow_api.g_varchar2_table(178) := '657373616765222C2074727565293B09092F2F20616C65727420746578740D0A09202A20406578616D706C6520242E6C61796F75742E6D7367287B20666F6F3A202262617222207D2C20225469746C6522293B092F2F206C6F6720686173682D64617461';
wwv_flow_api.g_varchar2_table(179) := '2C207769746820637573746F6D207469746C650D0A09202A20406578616D706C6520242E6C61796F75742E6D7367287B20666F6F3A202262617222207D2C20747275652C20225469746C65222C207B20736F72743A2066616C7365207D293B202D4F522D';
wwv_flow_api.g_varchar2_table(180) := '0D0A09202A20406578616D706C6520242E6C61796F75742E6D7367287B20666F6F3A202262617222207D2C20225469746C65222C207B20736F72743A2066616C73652C20646973706C61793A2074727565207D293B202F2F20616C65727420686173682D';
wwv_flow_api.g_varchar2_table(181) := '646174610D0A09202A0D0A09202A2040706172616D207B284F626A6563747C737472696E67297D090909696E666F090909537472696E67206D657373616765204F5220486173682F41727261790D0A09202A2040706172616D207B28426F6F6C65616E7C';
wwv_flow_api.g_varchar2_table(182) := '737472696E677C4F626A656374293D7D095B706F7075703D66616C73655D0954727565206D65616E7320616C6572742D626F78202D2063616E20626520736B69707065640D0A09202A2040706172616D207B284F626A6563747C737472696E67293D7D09';
wwv_flow_api.g_varchar2_table(183) := '09095B64656275675469746C653D22225D095469746C6520666F7220486173682064617461202D2063616E20626520736B69707065640D0A09202A2040706172616D207B4F626A6563743D7D09090909095B64656275674F7074735D0909457874726120';
wwv_flow_api.g_varchar2_table(184) := '6F7074696F6E7320666F72206465627567206F75747075740D0A09202A2F0D0A2C096D73673A2066756E6374696F6E2028696E666F2C20706F7075702C2064656275675469746C652C2064656275674F70747329207B0D0A090969662028242E6973506C';
wwv_flow_api.g_varchar2_table(185) := '61696E4F626A65637428696E666F292026262077696E646F772E64656275674461746129207B0D0A09090969662028747970656F6620706F707570203D3D3D2022737472696E672229207B0D0A0909090964656275674F707473093D2064656275675469';
wwv_flow_api.g_varchar2_table(186) := '746C653B0D0A0909090964656275675469746C65093D20706F7075703B0D0A0909097D0D0A090909656C73652069662028747970656F662064656275675469746C65203D3D3D20226F626A6563742229207B0D0A0909090964656275674F707473093D20';
wwv_flow_api.g_varchar2_table(187) := '64656275675469746C653B0D0A0909090964656275675469746C65093D206E756C6C3B0D0A0909097D0D0A0909097661722074203D2064656275675469746C65207C7C20226C6F6728203C6F626A6563743E2029220D0A0909092C096F203D20242E6578';
wwv_flow_api.g_varchar2_table(188) := '74656E64287B20736F72743A2066616C73652C2072657475726E48544D4C3A2066616C73652C20646973706C61793A2066616C7365207D2C2064656275674F707473293B0D0A09090969662028706F707570203D3D3D2074727565207C7C206F2E646973';
wwv_flow_api.g_varchar2_table(189) := '706C6179290D0A090909096465627567446174612820696E666F2C20742C206F20293B0D0A090909656C7365206966202877696E646F772E636F6E736F6C65290D0A09090909636F6E736F6C652E6C6F67286465627567446174612820696E666F2C2074';
wwv_flow_api.g_varchar2_table(190) := '2C206F2029293B0D0A09097D0D0A0909656C73652069662028706F707570290D0A090909616C65727428696E666F293B0D0A0909656C7365206966202877696E646F772E636F6E736F6C65290D0A090909636F6E736F6C652E6C6F6728696E666F293B0D';
wwv_flow_api.g_varchar2_table(191) := '0A0909656C7365207B0D0A090909766172206964093D2022236C61796F75744C6F67676572220D0A0909092C09246C203D2024286964293B0D0A0909096966202821246C2E6C656E677468290D0A09090909246C203D206372656174654C6F6728293B0D';
wwv_flow_api.g_varchar2_table(192) := '0A090909246C2E6368696C6472656E2822756C22292E617070656E6428273C6C69207374796C653D2270616464696E673A2034707820313070783B206D617267696E3A20303B20626F726465722D746F703A2031707820736F6C696420234343433B223E';
wwv_flow_api.g_varchar2_table(193) := '272B20696E666F2E7265706C616365282F5C3C2F672C22266C743B22292E7265706C616365282F5C3E2F672C222667743B2229202B273C2F6C693E27293B0D0A09097D0D0A0D0A090966756E6374696F6E206372656174654C6F67202829207B0D0A0909';
wwv_flow_api.g_varchar2_table(194) := '0976617220706F73203D20242E737570706F72742E6669786564506F736974696F6E203F2027666978656427203A20276162736F6C757465270D0A0909092C092465203D202428273C6469762069643D226C61796F75744C6F6767657222207374796C65';
wwv_flow_api.g_varchar2_table(195) := '3D22706F736974696F6E3A20272B20706F73202B273B20746F703A203570783B207A2D696E6465783A203939393939393B206D61782D77696474683A203235253B206F766572666C6F773A2068696464656E3B20626F726465723A2031707820736F6C69';
wwv_flow_api.g_varchar2_table(196) := '6420233030303B20626F726465722D7261646975733A203570783B206261636B67726F756E643A20234642464246423B20626F782D736861646F773A2030203270782031307078207267626128302C302C302C302E33293B223E270D0A090909092B0927';
wwv_flow_api.g_varchar2_table(197) := '3C646976207374796C653D22666F6E742D73697A653A20313370783B20666F6E742D7765696768743A20626F6C643B2070616464696E673A2035707820313070783B206261636B67726F756E643A20234636463646363B20626F726465722D7261646975';
wwv_flow_api.g_varchar2_table(198) := '733A2035707820357078203020303B20637572736F723A206D6F76653B223E270D0A090909092B09273C7370616E207374796C653D22666C6F61743A2072696768743B2070616464696E672D6C6566743A203770783B20637572736F723A20706F696E74';
wwv_flow_api.g_varchar2_table(199) := '65723B22207469746C653D2252656D6F766520436F6E736F6C6522206F6E636C69636B3D22242874686973292E636C6F73657374285C27236C61796F75744C6F676765725C27292E72656D6F76652829223E583C2F7370616E3E4C61796F757420636F6E';
wwv_flow_api.g_varchar2_table(200) := '736F6C652E6C6F673C2F6469763E270D0A090909092B09273C756C207374796C653D22666F6E742D73697A653A20313370783B20666F6E742D7765696768743A206E6F6E653B206C6973742D7374796C653A206E6F6E653B206D617267696E3A20303B20';
wwv_flow_api.g_varchar2_table(201) := '70616464696E673A20302030203270783B223E3C2F756C3E270D0A090909092B20273C2F6469763E270D0A09090909292E617070656E64546F2822626F647922293B0D0A09090924652E63737328276C656674272C20242877696E646F77292E77696474';
wwv_flow_api.g_varchar2_table(202) := '682829202D2024652E6F7574657257696474682829202D2035290D0A09090969662028242E75692E647261676761626C65292024652E647261676761626C65287B2068616E646C653A20273A66697273742D6368696C6427207D293B0D0A090909726574';
wwv_flow_api.g_varchar2_table(203) := '75726E2024653B0D0A09097D3B0D0A097D0D0A0D0A7D3B0D0A0D0A0D0A2F2A0D0A202A09242E6C61796F75742E62726F77736572205245504C414345532072656D6F76656420242E62726F777365722C207769746820657874726120646174610D0A202A';
wwv_flow_api.g_varchar2_table(204) := '0950617273696E6720636F6465206865726520616461707465642066726F6D206A517565727920312E3820242E62726F7773650D0A202A2F0D0A2866756E6374696F6E28297B0D0A097661722075203D206E6176696761746F722E757365724167656E74';
wwv_flow_api.g_varchar2_table(205) := '2E746F4C6F7765724361736528290D0A092C096D203D202F286368726F6D65295B205C2F5D285B5C772E5D2B292F2E6578656328207520290D0A09097C7C092F287765626B6974295B205C2F5D285B5C772E5D2B292F2E6578656328207520290D0A0909';
wwv_flow_api.g_varchar2_table(206) := '7C7C092F286F7065726129283F3A2E2A76657273696F6E7C295B205C2F5D285B5C772E5D2B292F2E6578656328207520290D0A09097C7C092F286D7369652920285B5C772E5D2B292F2E6578656328207520290D0A09097C7C09752E696E6465784F6628';
wwv_flow_api.g_varchar2_table(207) := '22636F6D70617469626C652229203C2030202626202F286D6F7A696C6C6129283F3A2E2A3F2072763A285B5C772E5D2B297C292F2E6578656328207520290D0A09097C7C095B5D0D0A092C0962203D206D5B315D207C7C2022220D0A092C0976203D206D';
wwv_flow_api.g_varchar2_table(208) := '5B325D207C7C20300D0A092C096965203D2062203D3D3D20226D736965220D0A092C09636D203D20646F63756D656E742E636F6D7061744D6F64650D0A092C092473203D20242E737570706F72740D0A092C096273203D2024732E626F7853697A696E67';
wwv_flow_api.g_varchar2_table(209) := '20213D3D20756E646566696E6564203F2024732E626F7853697A696E67203A2024732E626F7853697A696E6752656C6961626C650D0A092C09626D203D20216965207C7C2021636D207C7C20636D203D3D3D202243535331436F6D70617422207C7C2024';
wwv_flow_api.g_varchar2_table(210) := '732E626F784D6F64656C207C7C2066616C73650D0A092C096C62203D20242E6C61796F75742E62726F77736572203D207B0D0A09090976657273696F6E3A09760D0A09092C097361666172693A090962203D3D3D20227765626B697422092F2F20776562';
wwv_flow_api.g_varchar2_table(211) := '6B697420284E4F54206368726F6D6529203D207361666172690D0A09092C097765626B69743A090962203D3D3D20226368726F6D6522092F2F206368726F6D65203D207765626B69740D0A09092C096D7369653A090969650D0A09092C0969734945363A';
wwv_flow_api.g_varchar2_table(212) := '090969652026262076203D3D20360D0A0909092F2F204F4E4C59204945207265766572747320746F206F6C6420626F782D6D6F64656C202D204E6F7465207468617420636F6D7061744D6F6465207761732064657072656361746564206173206F662049';
wwv_flow_api.g_varchar2_table(213) := '45380D0A09092C09626F784D6F64656C3A09626D0D0A09092C09626F7853697A696E673A09212128747970656F66206273203D3D3D202266756E6374696F6E22203F2062732829203A206273290D0A09097D3B0D0A093B0D0A09696620286229206C625B';
wwv_flow_api.g_varchar2_table(214) := '625D203D20747275653B202F2F207365742043555252454E542062726F777365720D0A092F2A094F4C442076657273696F6E73206F66206A5175657279206F6E6C792073657420242E737570706F72742E626F784D6F64656C2061667465722070616765';
wwv_flow_api.g_varchar2_table(215) := '206973206C6F616465640D0A09202A09736F20696620746869732069732049452C2075736520737570706F72742E626F784D6F64656C20746F207465737420666F7220717569726B732D6D6F646520284F4E4C59204945206368616E67657320626F784D';
wwv_flow_api.g_varchar2_table(216) := '6F64656C29202A2F0D0A096966202821626D2026262021636D2920242866756E6374696F6E28297B206C622E626F784D6F64656C203D2024732E626F784D6F64656C3B207D293B0D0A7D2928293B0D0A0D0A0D0A2F2F2044454641554C54204F5054494F';
wwv_flow_api.g_varchar2_table(217) := '4E530D0A242E6C61796F75742E64656661756C7473203D207B0D0A2F2A0D0A202A094C41594F55542026204C41594F55542D434F4E5441494E4552204F5054494F4E530D0A202A092D206E6F6E65206F66207468657365206F7074696F6E732061726520';
wwv_flow_api.g_varchar2_table(218) := '6170706C696361626C6520746F20696E646976696475616C2070616E65730D0A202A2F0D0A096E616D653A09090909090922220909092F2F204E6F742072657175697265642C206275742075736566756C20666F7220627574746F6E7320616E64207573';
wwv_flow_api.g_varchar2_table(219) := '656420666F72207468652073746174652D636F6F6B69650D0A2C09636F6E7461696E6572436C6173733A090909092275692D6C61796F75742D636F6E7461696E657222202F2F206C61796F75742D636F6E7461696E657220656C656D656E740D0A2C0969';
wwv_flow_api.g_varchar2_table(220) := '6E7365743A0909090909096E756C6C09092F2F20637573746F6D20636F6E7461696E65722D696E7365742076616C75657320286F766572726964652070616464696E67290D0A2C097363726F6C6C546F426F6F6B6D61726B4F6E4C6F61643A0909747275';
wwv_flow_api.g_varchar2_table(221) := '6509092F2F206166746572206372656174696E672061206C61796F75742C207363726F6C6C20746F20626F6F6B6D61726B20696E2055524C20282E2E2E2F706167652E68746D236D79426F6F6B6D61726B290D0A2C09726573697A655769746857696E64';
wwv_flow_api.g_varchar2_table(222) := '6F773A0909097472756509092F2F2062696E6420746869734C61796F75742E726573697A65416C6C282920746F207468652077696E646F772E726573697A65206576656E740D0A2C09726573697A655769746857696E646F7744656C61793A0909323030';
wwv_flow_api.g_varchar2_table(223) := '0909092F2F2064656C61792063616C6C696E6720726573697A65416C6C2062656361757365206D616B65732077696E646F7720726573697A696E672076657279206A65726B790D0A2C09726573697A655769746857696E646F774D617844656C61793A09';
wwv_flow_api.g_varchar2_table(224) := '300909092F2F2030203D206E6F6E65202D20666F72636520726573697A65206576657279205858206D73207768696C652077696E646F77206973206265696E6720726573697A65640D0A2C096D61736B50616E65734561726C793A0909090966616C7365';
wwv_flow_api.g_varchar2_table(225) := '09092F2F2074727565203D206372656174652070616E652D6D61736B73206F6E20726573697A65722E6D6F757365446F776E20696E7374656164206F662077616974696E6720666F7220726573697A65722E6472616773746172740D0A2C096F6E726573';
wwv_flow_api.g_varchar2_table(226) := '697A65616C6C5F73746172743A0909096E756C6C09092F2F2043414C4C4241434B207768656E20726573697A65416C6C282920535441525453092D204E4F542070616E652D73706563696669630D0A2C096F6E726573697A65616C6C5F656E643A090909';
wwv_flow_api.g_varchar2_table(227) := '6E756C6C09092F2F2043414C4C4241434B207768656E20726573697A65416C6C282920454E4453092D204E4F542070616E652D73706563696669630D0A2C096F6E6C6F61645F73746172743A090909096E756C6C09092F2F2043414C4C4241434B207768';
wwv_flow_api.g_varchar2_table(228) := '656E204C61796F757420696E697473202D206166746572206F7074696F6E7320696E697469616C697A65642C20627574206265666F726520656C656D656E74730D0A2C096F6E6C6F61645F656E643A09090909096E756C6C09092F2F2043414C4C424143';
wwv_flow_api.g_varchar2_table(229) := '4B207768656E204C61796F757420696E697473202D2061667465722045564552595448494E4720686173206265656E20696E697469616C697A65640D0A2C096F6E756E6C6F61645F73746172743A090909096E756C6C09092F2F2043414C4C4241434B20';
wwv_flow_api.g_varchar2_table(230) := '7768656E204C61796F75742069732064657374726F796564204F52206F6E57696E646F77556E6C6F61640D0A2C096F6E756E6C6F61645F656E643A090909096E756C6C09092F2F2043414C4C4241434B207768656E204C61796F75742069732064657374';
wwv_flow_api.g_varchar2_table(231) := '726F796564204F52206F6E57696E646F77556E6C6F61640D0A2C09696E697450616E65733A09090909097472756509092F2F2066616C7365203D20444F204E4F5420696E697469616C697A65207468652070616E6573206F6E4C6F6164202D2077696C6C';
wwv_flow_api.g_varchar2_table(232) := '20696E6974206C617465720D0A2C0973686F774572726F724D657373616765733A0909097472756509092F2F20656E61626C657320666174616C206572726F72206D6573736167657320746F207761726E20646576656C6F70657273206F6620636F6D6D';
wwv_flow_api.g_varchar2_table(233) := '6F6E206572726F72730D0A2C0973686F7744656275674D657373616765733A09090966616C736509092F2F20646973706C617920636F6E736F6C652D616E642D616C657274206465627567206D736773202D2049462074686973204C61796F7574207665';
wwv_flow_api.g_varchar2_table(234) := '7273696F6E205F6861735F20646562756767696E6720636F6465210D0A2F2F094368616E67696E672074686973207A496E6465782076616C75652077696C6C206361757365206F74686572207A496E6465782076616C75657320746F206175746F6D6174';
wwv_flow_api.g_varchar2_table(235) := '6963616C6C79206368616E67650D0A2C097A496E6465783A0909090909096E756C6C09092F2F207468652050414E45207A496E646578202D20726573697A65727320616E64206D61736B732077696C6C206265202B310D0A2F2F09444F204E4F54204348';
wwv_flow_api.g_varchar2_table(236) := '414E474520746865207A496E6465782076616C7565732062656C6F7720756E6C65737320796F7520636C6561726C7920756E6465727374616E642074686569722072656C6174696F6E73686970730D0A2C097A496E64657865733A207B09090909090909';
wwv_flow_api.g_varchar2_table(237) := '092F2F20736574205F64656661756C745F207A2D696E6465782076616C75657320686572652E2E2E0D0A090970616E655F6E6F726D616C3A090909300909092F2F206E6F726D616C207A2D696E64657820666F722070616E65730D0A092C09636F6E7465';
wwv_flow_api.g_varchar2_table(238) := '6E745F6D61736B3A090909310909092F2F206170706C69656420746F206F7665726C617973207573656420746F206D61736B20636F6E74656E7420494E534944452070616E657320647572696E6720726573697A696E670D0A092C09726573697A65725F';
wwv_flow_api.g_varchar2_table(239) := '6E6F726D616C3A090909320909092F2F206E6F726D616C207A2D696E64657820666F7220726573697A65722D626172730D0A092C0970616E655F736C6964696E673A0909093130300909092F2F206170706C69656420746F202A424F54482A2074686520';
wwv_flow_api.g_varchar2_table(240) := '70616E6520616E642069747320726573697A6572207768656E20612070616E652069732027736C6964206F70656E270D0A092C0970616E655F616E696D6174653A0909093130303009092F2F206170706C69656420746F207468652070616E6520776865';
wwv_flow_api.g_varchar2_table(241) := '6E206265696E6720616E696D61746564202D206E6F74206170706C69656420746F2074686520726573697A65720D0A092C09726573697A65725F647261673A090909313030303009092F2F206170706C69656420746F2074686520434C4F4E4544207265';
wwv_flow_api.g_varchar2_table(242) := '73697A65722D626172207768656E206265696E67202764726167676564270D0A097D0D0A2C096572726F72733A207B0D0A090970616E653A09090909092270616E652209092F2F206465736372697074696F6E206F6620226C61796F75742070616E6520';
wwv_flow_api.g_varchar2_table(243) := '656C656D656E7422202D2075736564206F6E6C7920696E206572726F72206D657373616765730D0A092C0973656C6563746F723A090909092273656C6563746F7222092F2F206465736372697074696F6E206F6620226A51756572792D73656C6563746F';
wwv_flow_api.g_varchar2_table(244) := '7222202D2075736564206F6E6C7920696E206572726F72206D657373616765730D0A092C09616464427574746F6E4572726F723A090909224572726F7220416464696E6720427574746F6E5C6E496E76616C696420220D0A092C09636F6E7461696E6572';
wwv_flow_api.g_varchar2_table(245) := '4D697373696E673A0909225549204C61796F757420496E697469616C697A6174696F6E204572726F725C6E54686520737065636966696564206C61796F75742D636F6E7461696E657220646F6573206E6F742065786973742E220D0A092C0963656E7465';
wwv_flow_api.g_varchar2_table(246) := '7250616E654D697373696E673A0909225549204C61796F757420496E697469616C697A6174696F6E204572726F725C6E5468652063656E7465722D70616E6520656C656D656E7420646F6573206E6F742065786973742E5C6E5468652063656E7465722D';
wwv_flow_api.g_varchar2_table(247) := '70616E65206973206120726571756972656420656C656D656E742E220D0A092C096E6F436F6E7461696E65724865696768743A0909225549204C61796F757420496E697469616C697A6174696F6E205761726E696E675C6E546865206C61796F75742D63';
wwv_flow_api.g_varchar2_table(248) := '6F6E7461696E6572205C22434F4E5441494E45525C2220686173206E6F206865696768742E5C6E5468657265666F726520746865206C61796F757420697320302D68656967687420616E642068656E63652027696E76697369626C652721220D0A092C09';
wwv_flow_api.g_varchar2_table(249) := '63616C6C6261636B4572726F723A090909225549204C61796F75742043616C6C6261636B204572726F725C6E546865204556454E542063616C6C6261636B206973206E6F7420612076616C69642066756E6374696F6E2E220D0A097D0D0A2F2A0D0A202A';
wwv_flow_api.g_varchar2_table(250) := '0950414E452044454641554C542053455454494E47530D0A202A092D2073657474696E677320756E64657220746865202770616E657327206B6579206265636F6D65207468652064656661756C742073657474696E677320666F72202A616C6C2070616E';
wwv_flow_api.g_varchar2_table(251) := '65732A0D0A202A092D20414C4C2070616E652D6F7074696F6E732063616E20616C736F20626520736574207370656369666963616C6C7920666F7220656163682070616E65732C2077686963682077696C6C206F76657272696465207468657365202764';
wwv_flow_api.g_varchar2_table(252) := '656661756C742076616C756573270D0A202A2F0D0A2C0970616E65733A207B202F2F2064656661756C74206F7074696F6E7320666F722027616C6C2070616E657327202D2077696C6C206265206F76657272696464656E20627920277065722D70616E65';
wwv_flow_api.g_varchar2_table(253) := '2073657474696E6773270D0A09096170706C7944656D6F5374796C65733A20090966616C736509092F2F204E4F54453A2072656E616D65642066726F6D206170706C7944656661756C745374796C657320666F7220636C61726974790D0A092C09636C6F';
wwv_flow_api.g_varchar2_table(254) := '7361626C653A090909097472756509092F2F2070616E652063616E206F70656E202620636C6F73650D0A092C09726573697A61626C653A090909097472756509092F2F207768656E206F70656E2C2070616E652063616E20626520726573697A6564200D';
wwv_flow_api.g_varchar2_table(255) := '0A092C09736C696461626C653A090909097472756509092F2F207768656E20636C6F7365642C2070616E652063616E2027736C696465206F70656E27206F766572206F746865722070616E6573202D20636C6F736573206F6E206D6F7573652D6F75740D';
wwv_flow_api.g_varchar2_table(256) := '0A092C09696E6974436C6F7365643A0909090966616C736509092F2F2074727565203D20696E69742070616E652061732027636C6F736564270D0A092C09696E697448696464656E3A2009090966616C73652009092F2F2074727565203D20696E697420';
wwv_flow_api.g_varchar2_table(257) := '70616E65206173202768696464656E27202D206E6F20726573697A65722D6261722F73706163696E670D0A092F2F0953454C4543544F52530D0A092F2F2C0970616E6553656C6563746F723A09090922220909092F2F204D5553542062652070616E652D';
wwv_flow_api.g_varchar2_table(258) := '7370656369666963202D206A51756572792073656C6563746F7220666F722070616E650D0A092C09636F6E74656E7453656C6563746F723A0909222E75692D6C61796F75742D636F6E74656E7422202F2F20494E4E4552206469762F656C656D656E7420';
wwv_flow_api.g_varchar2_table(259) := '746F206175746F2D73697A6520736F206F6E6C79206974207363726F6C6C732C206E6F742074686520656E746972652070616E65210D0A092C09636F6E74656E7449676E6F726553656C6563746F723A09222E75692D6C61796F75742D69676E6F726522';
wwv_flow_api.g_varchar2_table(260) := '092F2F20656C656D656E7428732920746F202769676E6F726527207768656E206D6561737572696E672027636F6E74656E74270D0A092C0966696E644E6573746564436F6E74656E743A090966616C736509092F2F2074727565203D2024502E66696E64';
wwv_flow_api.g_varchar2_table(261) := '28636F6E74656E7453656C6563746F72292C2066616C7365203D2024502E6368696C6472656E28636F6E74656E7453656C6563746F72290D0A092F2F0947454E4552494320524F4F542D434C4153534553202D20666F72206175746F2D67656E65726174';
wwv_flow_api.g_varchar2_table(262) := '656420636C6173734E616D65730D0A092C0970616E65436C6173733A090909092275692D6C61796F75742D70616E6522092F2F204C61796F75742050616E650D0A092C09726573697A6572436C6173733A0909092275692D6C61796F75742D726573697A';
wwv_flow_api.g_varchar2_table(263) := '657222092F2F20526573697A6572204261720D0A092C09746F67676C6572436C6173733A0909092275692D6C61796F75742D746F67676C657222092F2F20546F67676C657220427574746F6E0D0A092C09627574746F6E436C6173733A0909092275692D';
wwv_flow_api.g_varchar2_table(264) := '6C61796F75742D627574746F6E22092F2F20435553544F4D20427574746F6E73092D2065673A20275B75692D6C61796F75742D627574746F6E5D2D746F67676C652F2D6F70656E2F2D636C6F73652F2D70696E270D0A092F2F09454C454D454E54205349';
wwv_flow_api.g_varchar2_table(265) := '5A4520262053504143494E470D0A092F2F2C0973697A653A09090909093130300909092F2F204D5553542062652070616E652D7370656369666963202D696E697469616C2073697A65206F662070616E650D0A092C096D696E53697A653A090909093009';
wwv_flow_api.g_varchar2_table(266) := '09092F2F207768656E206D616E75616C6C7920726573697A696E6720612070616E650D0A092C096D617853697A653A09090909300909092F2F20646974746F2C2030203D206E6F206C696D69740D0A092C0973706163696E675F6F70656E3A0909093609';
wwv_flow_api.g_varchar2_table(267) := '09092F2F207370616365206265747765656E2070616E6520616E642061646A6163656E742070616E6573202D207768656E2070616E6520697320276F70656E270D0A092C0973706163696E675F636C6F7365643A090909360909092F2F20646974746F20';
wwv_flow_api.g_varchar2_table(268) := '2D207768656E2070616E652069732027636C6F736564270D0A092C09746F67676C65724C656E6774685F6F70656E3A090935300909092F2F204C656E677468203D205749445448206F6620746F67676C657220627574746F6E206F6E206E6F7274682F73';
wwv_flow_api.g_varchar2_table(269) := '6F757468207369646573202D20484549474854206F6E20656173742F776573742073696465730D0A092C09746F67676C65724C656E6774685F636C6F7365643A200935300909092F2F2031303025204F52202D31206D65616E73202766756C6C20686569';
wwv_flow_api.g_varchar2_table(270) := '6768742F7769647468206F6620726573697A65722062617227202D2030206D65616E73202768696464656E270D0A092C09746F67676C6572416C69676E5F6F70656E3A09092263656E74657222092F2F20746F702F6C6566742C20626F74746F6D2F7269';
wwv_flow_api.g_varchar2_table(271) := '6768742C2063656E7465722C204F522E2E2E0D0A092C09746F67676C6572416C69676E5F636C6F7365643A092263656E74657222092F2F2031203D3E206E6E203D206F66667365742066726F6D20746F702F6C6566742C202D31203D3E202D6E6E203D3D';
wwv_flow_api.g_varchar2_table(272) := '206F66667365742066726F6D20626F74746F6D2F72696768740D0A092C09746F67676C6572436F6E74656E745F6F70656E3A0922220909092F2F2074657874206F722048544D4C20746F2070757420494E534944452074686520746F67676C65720D0A09';
wwv_flow_api.g_varchar2_table(273) := '2C09746F67676C6572436F6E74656E745F636C6F7365643A0922220909092F2F20646974746F0D0A092F2F09524553495A494E47204F5054494F4E530D0A092C09726573697A657244626C436C69636B546F67676C653A097472756509092F2F200D0A09';
wwv_flow_api.g_varchar2_table(274) := '2C096175746F526573697A653A090909097472756509092F2F2049462073697A6520697320276175746F27206F7220612070657263656E746167652C207468656E20726563616C632027706978656C2073697A6527207768656E6576657220746865206C';
wwv_flow_api.g_varchar2_table(275) := '61796F757420726573697A65730D0A092C096175746F52656F70656E3A090909097472756509092F2F20494620612070616E6520776173206175746F2D636C6F7365642064756520746F206E6F526F6F6D2C2072656F70656E206974207768656E207468';
wwv_flow_api.g_varchar2_table(276) := '65726520697320726F6F6D3F2046616C7365203D206C6561766520697420636C6F7365640D0A092C09726573697A6572447261674F7061636974793A0909310909092F2F206F7074696F6E20666F722075692E647261676761626C650D0A092F2F2C0972';
wwv_flow_api.g_varchar2_table(277) := '6573697A6572437572736F723A09090922220909092F2F204D5553542062652070616E652D7370656369666963202D20637572736F72207768656E206F76657220726573697A65722D6261720D0A092C096D61736B436F6E74656E74733A09090966616C';
wwv_flow_api.g_varchar2_table(278) := '736509092F2F2074727565203D20616464204449562D6D61736B206F7665722D6F722D696E7369646520746869732070616E6520736F2063616E20276472616727206F76657220494652414D45530D0A092C096D61736B4F626A656374733A0909096661';
wwv_flow_api.g_varchar2_table(279) := '6C736509092F2F2074727565203D2061646420494652414D452D6D61736B206F7665722D6F722D696E7369646520746869732070616E6520746F20636F766572206F626A656374732F6170706C657473202D20636F6E74656E742D6D61736B2077696C6C';
wwv_flow_api.g_varchar2_table(280) := '206F7665726C61792074686973206D61736B0D0A092C096D61736B5A696E6465783A090909096E756C6C09092F2F2077696C6C206F76657272696465207A496E64657865732E636F6E74656E745F6D61736B20696620737065636966696564202D206E6F';
wwv_flow_api.g_varchar2_table(281) := '74206170706C696361626C6520746F20696672616D652D70616E65730D0A092C09726573697A696E67477269643A09090966616C736509092F2F20677269642073697A6520746861742074686520726573697A6572732077696C6C20736E61702D746F20';
wwv_flow_api.g_varchar2_table(282) := '647572696E6720726573697A696E672C2065673A205B32302C32305D0D0A092C096C69766550616E65526573697A696E673A090966616C736509092F2F2074727565203D204C49564520526573697A696E6720617320726573697A657220697320647261';
wwv_flow_api.g_varchar2_table(283) := '676765640D0A092C096C697665436F6E74656E74526573697A696E673A0966616C736509092F2F2074727565203D2072652D6D656173757265206865616465722F666F6F746572206865696768747320617320726573697A657220697320647261676765';
wwv_flow_api.g_varchar2_table(284) := '640D0A092C096C697665526573697A696E67546F6C6572616E63653A09310909092F2F20686F77206D616E79207078206368616E6765206265666F72652070616E6520726573697A65732C20746F20636F6E74726F6C20706572666F726D616E63650D0A';
wwv_flow_api.g_varchar2_table(285) := '092F2F09534C4944494E47204F5054494F4E530D0A092C09736C69646572437572736F723A09090922706F696E74657222092F2F20637572736F72207768656E20726573697A65722D6261722077696C6C20747269676765722027736C6964696E67270D';
wwv_flow_api.g_varchar2_table(286) := '0A092C09736C696465547269676765725F6F70656E3A090922636C69636B2209092F2F20636C69636B2C2064626C636C69636B2C206D6F757365656E7465720D0A092C09736C696465547269676765725F636C6F73653A0909226D6F7573656C65617665';
wwv_flow_api.g_varchar2_table(287) := '222F2F20636C69636B2C206D6F7573656C656176650D0A092C09736C69646544656C61795F6F70656E3A09093330300909092F2F206170706C696573206F6E6C7920666F72206D6F757365656E746572206576656E74202D2030203D20696E7374616E74';
wwv_flow_api.g_varchar2_table(288) := '206F70656E0D0A092C09736C69646544656C61795F636C6F73653A09093330300909092F2F206170706C696573206F6E6C7920666F72206D6F7573656C65617665206576656E7420283330306D7320697320746865206D696E696D756D21290D0A092C09';
wwv_flow_api.g_varchar2_table(289) := '68696465546F67676C65724F6E536C6964653A090966616C736509092F2F207768656E2070616E6520697320736C69642D6F70656E2C2073686F756C642074686520746F67676C65722073686F773F0D0A092C0970726576656E74517569636B536C6964';
wwv_flow_api.g_varchar2_table(290) := '65436C6F73653A09242E6C61796F75742E62726F777365722E7765626B6974202F2F204368726F6D6520747269676765727320736C696465436C6F736564206173206974206973206F70656E696E670D0A092C0970726576656E745072656D6174757265';
wwv_flow_api.g_varchar2_table(291) := '536C696465436C6F73653A2066616C7365092F2F2068616E646C6520696E636F7272656374206D6F7573656C6561766520747269676765722C206C696B65207768656E206F76657220612053454C4543542D6C69737420696E2049450D0A092F2F095041';
wwv_flow_api.g_varchar2_table(292) := '4E452D535045434946494320544950532026204D455353414745530D0A092C09746970733A207B0D0A0909094F70656E3A09090909224F70656E2209092F2F2065673A20224F70656E2050616E65220D0A09092C09436C6F73653A0909090922436C6F73';
wwv_flow_api.g_varchar2_table(293) := '65220D0A09092C09526573697A653A0909090922526573697A65220D0A09092C09536C6964653A0909090922536C696465204F70656E220D0A09092C0950696E3A090909092250696E220D0A09092C09556E70696E3A0909090922556E2D50696E220D0A';
wwv_flow_api.g_varchar2_table(294) := '09092C096E6F526F6F6D546F4F70656E3A0909224E6F7420656E6F75676820726F6F6D20746F2073686F7720746869732070616E656C2E22092F2F20616C657274206966207573657220747269657320746F206F70656E20612070616E65207468617420';
wwv_flow_api.g_varchar2_table(295) := '63616E6E6F740D0A09092C096D696E53697A655761726E696E673A09092250616E656C20686173207265616368656420697473206D696E696D756D2073697A6522092F2F20646973706C61797320696E2062726F77736572207374617475736261720D0A';
wwv_flow_api.g_varchar2_table(296) := '09092C096D617853697A655761726E696E673A09092250616E656C20686173207265616368656420697473206D6178696D756D2073697A6522092F2F20646974746F0D0A09097D0D0A092F2F09484F542D4B4559532026204D4953430D0A092C0973686F';
wwv_flow_api.g_varchar2_table(297) := '774F766572666C6F774F6E486F7665723A0966616C736509092F2F2077696C6C2062696E6420616C6C6F774F766572666C6F772829207574696C69747920746F2070616E652E6F6E4D6F7573654F7665720D0A092C09656E61626C65437572736F72486F';
wwv_flow_api.g_varchar2_table(298) := '746B65793A09097472756509092F2F20656E61626C65642027637572736F722720686F746B6579730D0A092F2F2C09637573746F6D486F746B65793A09090922220909092F2F204D5553542062652070616E652D7370656369666963202D204549544845';
wwv_flow_api.g_varchar2_table(299) := '5220612063686172436F6465204F522061206368617261637465720D0A092C09637573746F6D486F746B65794D6F6469666965723A092253484946542209092F2F2065697468657220275348494654272C20274354524C27206F7220274354524C2B5348';
wwv_flow_api.g_varchar2_table(300) := '49465427202D204E4F542027414C54270D0A092F2F0950414E4520414E494D4154494F4E0D0A092F2F094E4F54453A2066785373735F6F70656E2C2066785373735F636C6F736520262066785373735F73697A65206F7074696F6E73202865673A206678';
wwv_flow_api.g_varchar2_table(301) := '4E616D655F6F70656E2920617265206175746F2D67656E657261746564206966206E6F74207061737365640D0A092C0966784E616D653A090909090922736C6964652220092F2F2028276E6F6E6527206F7220626C616E6B292C20736C6964652C206472';
wwv_flow_api.g_varchar2_table(302) := '6F702C207363616C65202D2D206F6E6C792072656C6576616E7420746F20276F70656E2720262027636C6F7365272C204E4F54202773697A65270D0A092C09667853706565643A090909096E756C6C09092F2F20736C6F772C206E6F726D616C2C206661';
wwv_flow_api.g_varchar2_table(303) := '73742C203230302C206E6E6E202D206966207061737365642C2077696C6C204F5645525249444520667853657474696E67732E6475726174696F6E0D0A092C09667853657474696E67733A090909097B7D0909092F2F2063616E20626520706173736564';
wwv_flow_api.g_varchar2_table(304) := '2C2065673A207B20656173696E673A2022656173654F7574426F756E6365222C206475726174696F6E3A2031353030207D0D0A092C0966784F7061636974794669783A0909097472756509092F2F20747269657320746F20666978206F70616369747920';
wwv_flow_api.g_varchar2_table(305) := '696E20494520746F20726573746F726520616E74692D616C696173696E6720616674657220616E696D6174696F6E0D0A092C09616E696D61746550616E6553697A696E673A090966616C736509092F2F2074727565203D20616E696D6174652072657369';
wwv_flow_api.g_varchar2_table(306) := '7A696E67206166746572206472616767696E6720726573697A65722D626172204F522073697A6550616E6528292069732063616C6C65640D0A092F2A20204E4F54453A20416374696F6E2D7370656369666963204658206F7074696F6E73206172652061';
wwv_flow_api.g_varchar2_table(307) := '75746F2D67656E6572617465642066726F6D20746865206F7074696F6E732061626F7665206966206E6F74207370656369666963616C6C79207365743A0D0A090966784E616D655F6F70656E3A09090922736C6964652209092F2F20274F70656E272070';
wwv_flow_api.g_varchar2_table(308) := '616E6520616E696D6174696F6E0D0A0909666E4E616D655F636C6F73653A09090922736C6964652209092F2F2027436C6F7365272070616E6520616E696D6174696F6E0D0A090966784E616D655F73697A653A09090922736C6964652209092F2F202753';
wwv_flow_api.g_varchar2_table(309) := '697A65272070616E6520616E696D6174696F6E202D207768656E20616E696D61746550616E6553697A696E67203D20747275650D0A0909667853706565645F6F70656E3A0909096E756C6C0D0A0909667853706565645F636C6F73653A0909096E756C6C';
wwv_flow_api.g_varchar2_table(310) := '0D0A0909667853706565645F73697A653A0909096E756C6C0D0A0909667853657474696E67735F6F70656E3A09097B7D0D0A0909667853657474696E67735F636C6F73653A09097B7D0D0A0909667853657474696E67735F73697A653A09097B7D0D0A09';
wwv_flow_api.g_varchar2_table(311) := '2A2F0D0A092F2F094348494C442F4E4553544544204C41594F5554530D0A092C096368696C6472656E3A090909096E756C6C09092F2F204C61796F75742D6F7074696F6E7320666F72206E65737465642F6368696C64206C61796F7574202D206576656E';
wwv_flow_api.g_varchar2_table(312) := '207B7D2069732076616C6964206173206F7074696F6E730D0A092C09636F6E7461696E657253656C6563746F723A090927270909092F2F206966206368696C64206973204E4F5420276469726563746C79206E6573746564272C20612073656C6563746F';
wwv_flow_api.g_varchar2_table(313) := '7220746F2066696E642069742F7468656D202863616E2068617665206D6F7265207468616E206F6E65206368696C64206C61796F757421290D0A092C09696E69744368696C6472656E3A0909097472756509092F2F2074727565203D206368696C64206C';
wwv_flow_api.g_varchar2_table(314) := '61796F75742077696C6C206265206372656174656420617320736F6F6E206173205F746869735F206C61796F757420636F6D706C6574657320696E697469616C697A6174696F6E0D0A092C0964657374726F794368696C6472656E3A0909747275650909';
wwv_flow_api.g_varchar2_table(315) := '2F2F2074727565203D2064657374726F79206368696C642D6C61796F757420696620746869732070616E652069732064657374726F7965640D0A092C09726573697A654368696C6472656E3A0909097472756509092F2F2074727565203D207472696767';
wwv_flow_api.g_varchar2_table(316) := '6572206368696C642D6C61796F75742E726573697A65416C6C2829207768656E20746869732070616E6520697320726573697A65640D0A092F2F094556454E542054524947474552494E470D0A092C09747269676765724576656E74734F6E4C6F61643A';
wwv_flow_api.g_varchar2_table(317) := '0966616C736509092F2F2074727565203D2074726967676572206F6E6F70656E204F52206F6E636C6F73652063616C6C6261636B73207768656E206C61796F757420696E697469616C697A65730D0A092C09747269676765724576656E7473447572696E';
wwv_flow_api.g_varchar2_table(318) := '674C697665526573697A653A2074727565092F2F2074727565203D2074726967676572206F6E726573697A652063616C6C6261636B2052455045415445444C59206966206C69766550616E65526573697A696E673D3D747275650D0A092F2F0950414E45';
wwv_flow_api.g_varchar2_table(319) := '2043414C4C4241434B530D0A092C096F6E73686F775F73746172743A0909096E756C6C09092F2F2043414C4C4241434B207768656E2070616E652053544152545320746F2053686F77092D204245464F5245206F6E6F70656E2F6F6E686964655F737461';
wwv_flow_api.g_varchar2_table(320) := '72740D0A092C096F6E73686F775F656E643A090909096E756C6C09092F2F2043414C4C4241434B207768656E2070616E6520454E4453206265696E672053686F776E092D20414654455220206F6E6F70656E2F6F6E686964655F656E640D0A092C096F6E';
wwv_flow_api.g_varchar2_table(321) := '686964655F73746172743A0909096E756C6C09092F2F2043414C4C4241434B207768656E2070616E652053544152545320746F20436C6F7365092D204245464F5245206F6E636C6F73655F73746172740D0A092C096F6E686964655F656E643A09090909';
wwv_flow_api.g_varchar2_table(322) := '6E756C6C09092F2F2043414C4C4241434B207768656E2070616E6520454E4453206265696E6720436C6F736564092D20414654455220206F6E636C6F73655F656E640D0A092C096F6E6F70656E5F73746172743A0909096E756C6C09092F2F2043414C4C';
wwv_flow_api.g_varchar2_table(323) := '4241434B207768656E2070616E652053544152545320746F204F70656E0D0A092C096F6E6F70656E5F656E643A090909096E756C6C09092F2F2043414C4C4241434B207768656E2070616E6520454E4453206265696E67204F70656E65640D0A092C096F';
wwv_flow_api.g_varchar2_table(324) := '6E636C6F73655F73746172743A0909096E756C6C09092F2F2043414C4C4241434B207768656E2070616E652053544152545320746F20436C6F73650D0A092C096F6E636C6F73655F656E643A0909096E756C6C09092F2F2043414C4C4241434B20776865';
wwv_flow_api.g_varchar2_table(325) := '6E2070616E6520454E4453206265696E6720436C6F7365640D0A092C096F6E726573697A655F73746172743A0909096E756C6C09092F2F2043414C4C4241434B207768656E2070616E6520535441525453206265696E6720526573697A6564202A2A2A46';
wwv_flow_api.g_varchar2_table(326) := '4F5220414E5920524541534F4E2A2A2A0D0A092C096F6E726573697A655F656E643A0909096E756C6C09092F2F2043414C4C4241434B207768656E2070616E6520454E4453206265696E6720526573697A6564202A2A2A464F5220414E5920524541534F';
wwv_flow_api.g_varchar2_table(327) := '4E2A2A2A0D0A092C096F6E73697A65636F6E74656E745F73746172743A096E756C6C09092F2F2043414C4C4241434B207768656E2073697A696E67206F6620636F6E74656E742D656C656D656E74205354415254530D0A092C096F6E73697A65636F6E74';
wwv_flow_api.g_varchar2_table(328) := '656E745F656E643A09096E756C6C09092F2F2043414C4C4241434B207768656E2073697A696E67206F6620636F6E74656E742D656C656D656E7420454E44530D0A092C096F6E737761705F73746172743A0909096E756C6C09092F2F2043414C4C424143';
wwv_flow_api.g_varchar2_table(329) := '4B207768656E2070616E652053544152545320746F20537761700D0A092C096F6E737761705F656E643A090909096E756C6C09092F2F2043414C4C4241434B207768656E2070616E6520454E4453206265696E6720537761707065640D0A092C096F6E64';
wwv_flow_api.g_varchar2_table(330) := '7261675F73746172743A0909096E756C6C09092F2F2043414C4C4241434B207768656E2070616E6520535441525453206265696E67202A2A2A4D414E55414C4C592A2A2A20526573697A65640D0A092C096F6E647261675F656E643A090909096E756C6C';
wwv_flow_api.g_varchar2_table(331) := '09092F2F2043414C4C4241434B207768656E2070616E6520454E4453206265696E67202A2A2A4D414E55414C4C592A2A2A20526573697A65640D0A097D0D0A2F2A0D0A202A0950414E452D53504543494649432053455454494E47530D0A202A092D206F';
wwv_flow_api.g_varchar2_table(332) := '7074696F6E73206C69737465642062656C6F77204D55535420626520737065636966696564207065722D70616E65202D20746865792043414E4E4F542062652073657420756E646572202770616E6573270D0A202A092D20616C6C206F7074696F6E7320';
wwv_flow_api.g_varchar2_table(333) := '756E64657220746865202770616E657327206B65792063616E20616C736F20626520736574207370656369666963616C6C7920666F7220616E792070616E650D0A202A092D206D6F7374206F7074696F6E7320756E64657220746865202770616E657327';
wwv_flow_api.g_varchar2_table(334) := '206B6579206170706C79206F6E6C7920746F2027626F726465722D70616E657327202D204E4F5420746865207468652063656E7465722D70616E650D0A202A2F0D0A2C096E6F7274683A207B0D0A090970616E6553656C6563746F723A090909222E7569';
wwv_flow_api.g_varchar2_table(335) := '2D6C61796F75742D6E6F727468220D0A092C0973697A653A0909090909226175746F2209092F2F2065673A20226175746F222C2022333025222C202E33302C203230300D0A092C09726573697A6572437572736F723A090909226E2D726573697A652209';
wwv_flow_api.g_varchar2_table(336) := '2F2F20637573746F6D203D2075726C286D79437572736F722E637572290D0A092C09637573746F6D486F746B65793A09090922220909092F2F2045495448455220612063686172436F64652028343329204F522061206368617261637465722028226F22';
wwv_flow_api.g_varchar2_table(337) := '290D0A097D0D0A2C09736F7574683A207B0D0A090970616E6553656C6563746F723A090909222E75692D6C61796F75742D736F757468220D0A092C0973697A653A0909090909226175746F220D0A092C09726573697A6572437572736F723A0909092273';
wwv_flow_api.g_varchar2_table(338) := '2D726573697A65220D0A092C09637573746F6D486F746B65793A09090922220D0A097D0D0A2C09656173743A207B0D0A090970616E6553656C6563746F723A090909222E75692D6C61796F75742D65617374220D0A092C0973697A653A09090909093230';
wwv_flow_api.g_varchar2_table(339) := '300D0A092C09726573697A6572437572736F723A09090922652D726573697A65220D0A092C09637573746F6D486F746B65793A09090922220D0A097D0D0A2C09776573743A207B0D0A090970616E6553656C6563746F723A090909222E75692D6C61796F';
wwv_flow_api.g_varchar2_table(340) := '75742D77657374220D0A092C0973697A653A09090909093230300D0A092C09726573697A6572437572736F723A09090922772D726573697A65220D0A092C09637573746F6D486F746B65793A09090922220D0A097D0D0A2C0963656E7465723A207B0D0A';
wwv_flow_api.g_varchar2_table(341) := '090970616E6553656C6563746F723A090909222E75692D6C61796F75742D63656E746572220D0A092C096D696E57696474683A09090909300D0A092C096D696E4865696768743A09090909300D0A097D0D0A7D3B0D0A0D0A242E6C61796F75742E6F7074';
wwv_flow_api.g_varchar2_table(342) := '696F6E734D6170203D207B0D0A092F2F206C61796F75742F676C6F62616C206F7074696F6E73202D204E4F542070616E652D6F7074696F6E730D0A096C61796F75743A2028226E616D652C696E7374616E63654B65792C73746174654D616E6167656D65';
wwv_flow_api.g_varchar2_table(343) := '6E742C656666656374732C696E7365742C7A496E64657865732C6572726F72732C220D0A092B09227A496E6465782C7363726F6C6C546F426F6F6B6D61726B4F6E4C6F61642C73686F774572726F724D657373616765732C6D61736B50616E6573456172';
wwv_flow_api.g_varchar2_table(344) := '6C792C220D0A092B09226F75747365742C726573697A655769746857696E646F772C726573697A655769746857696E646F7744656C61792C726573697A655769746857696E646F774D617844656C61792C220D0A092B09226F6E726573697A65616C6C2C';
wwv_flow_api.g_varchar2_table(345) := '6F6E726573697A65616C6C5F73746172742C6F6E726573697A65616C6C5F656E642C6F6E6C6F61642C6F6E6C6F61645F73746172742C6F6E6C6F61645F656E642C6F6E756E6C6F61642C6F6E756E6C6F61645F73746172742C6F6E756E6C6F61645F656E';
wwv_flow_api.g_varchar2_table(346) := '6422292E73706C697428222C22290D0A2F2F09626F7264657250616E65733A205B20414C4C206F7074696F6E73207468617420617265204E4F542073706563696669656420617320276C61796F757427205D0D0A092F2F2064656661756C742E70616E65';
wwv_flow_api.g_varchar2_table(347) := '73206F7074696F6E732074686174206170706C7920746F207468652063656E7465722D70616E6520286D6F7374206F7074696F6E73206170706C79205F6F6E6C795F20746F20626F726465722D70616E6573290D0A2C0963656E7465723A20282270616E';
wwv_flow_api.g_varchar2_table(348) := '65436C6173732C636F6E74656E7453656C6563746F722C636F6E74656E7449676E6F726553656C6563746F722C66696E644E6573746564436F6E74656E742C6170706C7944656D6F5374796C65732C747269676765724576656E74734F6E4C6F61642C22';
wwv_flow_api.g_varchar2_table(349) := '0D0A092B092273686F774F766572666C6F774F6E486F7665722C6D61736B436F6E74656E74732C6D61736B4F626A656374732C6C697665436F6E74656E74526573697A696E672C220D0A092B0922636F6E7461696E657253656C6563746F722C6368696C';
wwv_flow_api.g_varchar2_table(350) := '6472656E2C696E69744368696C6472656E2C726573697A654368696C6472656E2C64657374726F794368696C6472656E2C220D0A092B09226F6E726573697A652C6F6E726573697A655F73746172742C6F6E726573697A655F656E642C6F6E73697A6563';
wwv_flow_api.g_varchar2_table(351) := '6F6E74656E742C6F6E73697A65636F6E74656E745F73746172742C6F6E73697A65636F6E74656E745F656E6422292E73706C697428222C22290D0A092F2F206F7074696F6E732074686174204D555354206265207370656369666963616C6C7920736574';
wwv_flow_api.g_varchar2_table(352) := '20277065722D70616E6527202D2043414E4E4F542073657420696E207468652070616E6573202864656661756C747329206B65790D0A2C096E6F44656661756C743A20282270616E6553656C6563746F722C726573697A6572437572736F722C63757374';
wwv_flow_api.g_varchar2_table(353) := '6F6D486F746B657922292E73706C697428222C22290D0A7D3B0D0A0D0A2F2A2A0D0A202A2050726F636573736573206F7074696F6E732070617373656420696E20636F6E766572747320666C61742D666F726D6174206461746120696E746F207375626B';
wwv_flow_api.g_varchar2_table(354) := '657920284A534F4E2920666F726D61740D0A202A20496E20666C61742D666F726D61742C207375626B65797320617265205F63757272656E746C795F207365706172617465642077697468203220756E64657273636F7265732C206C696B65206E6F7274';
wwv_flow_api.g_varchar2_table(355) := '685F5F6F70744E616D650D0A202A20506C7567696E73206D617920616C736F2063616C6C2074686973206D6574686F6420736F20746865792063616E207472616E73666F726D207468656972206F776E20646174610D0A202A0D0A202A2040706172616D';
wwv_flow_api.g_varchar2_table(356) := '20207B214F626A6563747D0968617368090909446174612F6F7074696F6E73207061737365642062792075736572202D206D617920626520612073696E676C65206C6576656C206F72206E6573746564206C6576656C730D0A202A2040706172616D2020';
wwv_flow_api.g_varchar2_table(357) := '7B626F6F6C65616E3D7D095B6164644B6579733D66616C73655D0953686F756C6420746865207072696D617279206C61796F75742E6F7074696F6E73206B657973206265206164646564206966207468657920646F206E6F742065786973743F0D0A202A';
wwv_flow_api.g_varchar2_table(358) := '204072657475726E207B4F626A6563747D09090909090952657475726E732068617368206F66206D696E57696474682026206D696E4865696768740D0A202A2F0D0A242E6C61796F75742E7472616E73666F726D44617461203D2066756E6374696F6E20';
wwv_flow_api.g_varchar2_table(359) := '28686173682C206164644B65797329207B0D0A09766172096A736F6E203D206164644B657973203F207B2070616E65733A207B7D2C2063656E7465723A207B7D207D203A207B7D202F2F20696E69742072657475726E206F626A6563740D0A092C096272';
wwv_flow_api.g_varchar2_table(360) := '616E63682C206F70744B65792C206B6579732C206B65792C2076616C2C20692C20633B0D0A0D0A0969662028747970656F66206861736820213D3D20226F626A65637422292072657475726E206A736F6E3B202F2F206E6F206F7074696F6E7320706173';
wwv_flow_api.g_varchar2_table(361) := '7365640D0A0D0A092F2F20636F6E7665727420616C6C2027666C61742D6B6579732720746F20277375622D6B65792720666F726D61740D0A09666F7220286F70744B657920696E206861736829207B0D0A09096272616E6368093D206A736F6E3B0D0A09';
wwv_flow_api.g_varchar2_table(362) := '0976616C09093D20686173685B206F70744B6579205D3B0D0A09096B657973093D206F70744B65792E73706C697428225F5F22293B202F2F2065673A20776573745F5F73697A65206F72206E6F7274685F5F667853657474696E67735F5F647572617469';
wwv_flow_api.g_varchar2_table(363) := '6F6E0D0A09096309093D206B6579732E6C656E677468202D20313B0D0A09092F2F20636F6E7665727420756E64657273636F72652D64656C696D6974656420746F207375626B6579730D0A0909666F722028693D303B2069203C3D20633B20692B2B2920';
wwv_flow_api.g_varchar2_table(364) := '7B0D0A0909096B6579203D206B6579735B695D3B0D0A0909096966202869203D3D3D206329207B092F2F206C617374206B6579203D2076616C75650D0A0909090969662028242E6973506C61696E4F626A656374282076616C2029290D0A090909090962';
wwv_flow_api.g_varchar2_table(365) := '72616E63685B6B65795D203D20242E6C61796F75742E7472616E73666F726D44617461282076616C20293B202F2F20524543555253450D0A09090909656C73650D0A09090909096272616E63685B6B65795D203D2076616C3B0D0A0909097D0D0A090909';
wwv_flow_api.g_varchar2_table(366) := '656C7365207B0D0A0909090969662028216272616E63685B6B65795D290D0A09090909096272616E63685B6B65795D203D207B7D3B202F2F2063726561746520746865207375626B65790D0A090909092F2F207265637572736520746F207375622D6B65';
wwv_flow_api.g_varchar2_table(367) := '7920666F72206E657874206C6F6F70202D206966206E6F7420646F6E650D0A090909096272616E6368203D206272616E63685B6B65795D3B0D0A0909097D0D0A09097D0D0A097D0D0A0972657475726E206A736F6E3B0D0A7D3B0D0A0D0A2F2F20494E54';
wwv_flow_api.g_varchar2_table(368) := '45524E414C20434F4E4649472044415441202D20444F204E4F54204348414E47452054484953210D0A242E6C61796F75742E6261636B77617264436F6D7061746962696C697479203D207B0D0A092F2F206461746120757365642062792072656E616D65';
wwv_flow_api.g_varchar2_table(369) := '4F6C644F7074696F6E7328290D0A096D61703A207B0D0A092F2F094F4C44204F7074696F6E204E616D653A0909094E4557204F7074696F6E204E616D650D0A09096170706C7944656661756C745374796C65733A090909226170706C7944656D6F537479';
wwv_flow_api.g_varchar2_table(370) := '6C6573220D0A092F2F094348494C442F4E4553544544204C41594F5554530D0A092C096368696C644F7074696F6E733A09090909226368696C6472656E220D0A092C09696E69744368696C644C61796F75743A09090922696E69744368696C6472656E22';
wwv_flow_api.g_varchar2_table(371) := '0D0A092C0964657374726F794368696C644C61796F75743A0909092264657374726F794368696C6472656E220D0A092C09726573697A654368696C644C61796F75743A09090922726573697A654368696C6472656E220D0A092C09726573697A654E6573';
wwv_flow_api.g_varchar2_table(372) := '7465644C61796F75743A09090922726573697A654368696C6472656E220D0A092F2F094D495343204F7074696F6E730D0A092C09726573697A655768696C654472616767696E673A0909226C69766550616E65526573697A696E67220D0A092C09726573';
wwv_flow_api.g_varchar2_table(373) := '697A65436F6E74656E745768696C654472616767696E673A09226C697665436F6E74656E74526573697A696E67220D0A092C09747269676765724576656E74735768696C654472616767696E673A0922747269676765724576656E7473447572696E674C';
wwv_flow_api.g_varchar2_table(374) := '697665526573697A65220D0A092C096D61736B496672616D65734F6E526573697A653A0909226D61736B436F6E74656E7473220D0A092F2F095354415445204D414E4147454D454E540D0A092C097573655374617465436F6F6B69653A09090909227374';
wwv_flow_api.g_varchar2_table(375) := '6174654D616E6167656D656E742E656E61626C6564220D0A092C0922636F6F6B69652E6175746F4C6F6164223A0909092273746174654D616E6167656D656E742E6175746F4C6F6164220D0A092C0922636F6F6B69652E6175746F53617665223A090909';
wwv_flow_api.g_varchar2_table(376) := '2273746174654D616E6167656D656E742E6175746F53617665220D0A092C0922636F6F6B69652E6B657973223A090909092273746174654D616E6167656D656E742E73746174654B657973220D0A092C0922636F6F6B69652E6E616D65223A0909090922';
wwv_flow_api.g_varchar2_table(377) := '73746174654D616E6167656D656E742E636F6F6B69652E6E616D65220D0A092C0922636F6F6B69652E646F6D61696E223A0909092273746174654D616E6167656D656E742E636F6F6B69652E646F6D61696E220D0A092C0922636F6F6B69652E70617468';
wwv_flow_api.g_varchar2_table(378) := '223A090909092273746174654D616E6167656D656E742E636F6F6B69652E70617468220D0A092C0922636F6F6B69652E65787069726573223A0909092273746174654D616E6167656D656E742E636F6F6B69652E65787069726573220D0A092C0922636F';
wwv_flow_api.g_varchar2_table(379) := '6F6B69652E736563757265223A0909092273746174654D616E6167656D656E742E636F6F6B69652E736563757265220D0A092F2F094F4C44204C616E6775616765206F7074696F6E730D0A092C096E6F526F6F6D546F4F70656E5469703A090909227469';
wwv_flow_api.g_varchar2_table(380) := '70732E6E6F526F6F6D546F4F70656E220D0A092C09746F67676C65725469705F6F70656E3A09090922746970732E436C6F736522092F2F206F70656E2020203D20436C6F73650D0A092C09746F67676C65725469705F636C6F7365643A09090922746970';
wwv_flow_api.g_varchar2_table(381) := '732E4F70656E2209092F2F20636C6F736564203D204F70656E0D0A092C09726573697A65725469703A090909090922746970732E526573697A65220D0A092C09736C696465725469703A090909090922746970732E536C696465220D0A097D0D0A0D0A2F';
wwv_flow_api.g_varchar2_table(382) := '2A2A0D0A2A2040706172616D207B4F626A6563747D096F7074730D0A2A2F0D0A2C0972656E616D654F7074696F6E733A2066756E6374696F6E20286F70747329207B0D0A0909766172206D6170203D20242E6C61796F75742E6261636B77617264436F6D';
wwv_flow_api.g_varchar2_table(383) := '7061746962696C6974792E6D61700D0A09092C096F6C64446174612C206E6577446174612C2076616C75650D0A09093B0D0A0909666F722028766172206974656D5061746820696E206D617029207B0D0A0909096F6C6444617461093D20676574427261';
wwv_flow_api.g_varchar2_table(384) := '6E636828206974656D5061746820293B0D0A09090976616C7565093D206F6C64446174612E6272616E63685B206F6C64446174612E6B6579205D3B0D0A0909096966202876616C756520213D3D20756E646566696E656429207B0D0A090909096E657744';
wwv_flow_api.g_varchar2_table(385) := '617461203D206765744272616E636828206D61705B6974656D506174685D2C207472756520293B0D0A090909096E6577446174612E6272616E63685B206E6577446174612E6B6579205D203D2076616C75653B0D0A0909090964656C657465206F6C6444';
wwv_flow_api.g_varchar2_table(386) := '6174612E6272616E63685B206F6C64446174612E6B6579205D3B0D0A0909097D0D0A09097D0D0A0D0A09092F2A2A0D0A0909202A2040706172616D207B737472696E677D09706174680D0A0909202A2040706172616D207B626F6F6C65616E3D7D095B63';
wwv_flow_api.g_varchar2_table(387) := '72656174653D66616C73655D09437265617465207061746820696620646F6573206E6F742065786973740D0A0909202A2F0D0A090966756E6374696F6E206765744272616E63682028706174682C2063726561746529207B0D0A0909097661722061203D';
wwv_flow_api.g_varchar2_table(388) := '20706174682E73706C697428222E2229202F2F2073706C6974206B65797320696E746F2061727261790D0A0909092C0963203D20612E6C656E677468202D20310D0A0909092C0944203D207B206272616E63683A206F7074732C206B65793A20615B635D';
wwv_flow_api.g_varchar2_table(389) := '207D202F2F20696E6974206272616E636820617420746F70202620736574206B657920286C617374206974656D290D0A0909092C0969203D20302C206B2C20756E6465663B0D0A090909666F7220283B20693C633B20692B2B29207B202F2F20736B6970';
wwv_flow_api.g_varchar2_table(390) := '20746865206C617374206B6579202864617461290D0A090909096B203D20615B695D3B0D0A0909090969662028442E6272616E63685B206B205D203D3D20756E646566696E656429207B202F2F206368696C642D6B657920646F6573206E6F7420657869';
wwv_flow_api.g_varchar2_table(391) := '73740D0A09090909096966202863726561746529207B0D0A090909090909442E6272616E6368203D20442E6272616E63685B206B205D203D207B7D3B202F2F20637265617465206368696C642D6272616E63680D0A09090909097D0D0A0909090909656C';
wwv_flow_api.g_varchar2_table(392) := '7365202F2F2063616E277420676F20616E7920666172746865720D0A090909090909442E6272616E6368203D207B7D3B202F2F206272616E636820697320756E646566696E65640D0A090909097D0D0A09090909656C73650D0A0909090909442E627261';
wwv_flow_api.g_varchar2_table(393) := '6E6368203D20442E6272616E63685B206B205D3B202F2F20676574206368696C642D6272616E63680D0A0909097D0D0A09090972657475726E20443B0D0A09097D3B0D0A097D0D0A0D0A2F2A2A0D0A2A2040706172616D207B4F626A6563747D096F7074';
wwv_flow_api.g_varchar2_table(394) := '730D0A2A2F0D0A2C0972656E616D65416C6C4F7074696F6E733A2066756E6374696F6E20286F70747329207B0D0A09097661722072656E203D20242E6C61796F75742E6261636B77617264436F6D7061746962696C6974792E72656E616D654F7074696F';
wwv_flow_api.g_varchar2_table(395) := '6E733B0D0A09092F2F2072656E616D6520726F6F7420286C61796F757429206F7074696F6E730D0A090972656E28206F70747320293B0D0A09092F2F2072656E616D65202764656661756C74732720746F202770616E6573270D0A0909696620286F7074';
wwv_flow_api.g_varchar2_table(396) := '732E64656661756C747329207B0D0A09090969662028747970656F66206F7074732E70616E657320213D3D20226F626A65637422290D0A090909096F7074732E70616E6573203D207B7D3B0D0A090909242E657874656E6428747275652C206F7074732E';
wwv_flow_api.g_varchar2_table(397) := '70616E65732C206F7074732E64656661756C7473293B0D0A09090964656C657465206F7074732E64656661756C74733B0D0A09097D0D0A09092F2F2072656E616D65206F7074696F6E7320696E2074686520746865206F7074696F6E732E70616E657320';
wwv_flow_api.g_varchar2_table(398) := '6B65790D0A0909696620286F7074732E70616E6573292072656E28206F7074732E70616E657320293B0D0A09092F2F2072656E616D65206F7074696F6E7320696E73696465202A656163682070616E65206B65792A2C2065673A206F7074696F6E732E77';
wwv_flow_api.g_varchar2_table(399) := '6573740D0A0909242E6561636828242E6C61796F75742E636F6E6669672E616C6C50616E65732C2066756E6374696F6E2028692C2070616E6529207B0D0A090909696620286F7074735B70616E655D292072656E28206F7074735B70616E655D20293B0D';
wwv_flow_api.g_varchar2_table(400) := '0A09097D293B090D0A090972657475726E206F7074733B0D0A097D0D0A7D3B0D0A0D0A0D0A0D0A0D0A2F2A093D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D';
wwv_flow_api.g_varchar2_table(401) := '3D3D3D3D0D0A202A09424547494E205749444745543A2024282073656C6563746F7220292E6C61796F757428207B6F7074696F6E737D20293B0D0A202A093D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D';
wwv_flow_api.g_varchar2_table(402) := '3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D0D0A202A2F0D0A242E666E2E6C61796F7574203D2066756E6374696F6E20286F70747329207B0D0A097661720D0A0D0A092F2F206C6F63616C20616C696173657320746F20676C6F62616C206461';
wwv_flow_api.g_varchar2_table(403) := '74610D0A0962726F77736572093D20242E6C61796F75742E62726F777365720D0A2C095F6309093D20242E6C61796F75742E636F6E6669670D0A0D0A092F2F206C6F63616C20616C696173657320746F2075746C697479206D6574686F64730D0A2C0963';
wwv_flow_api.g_varchar2_table(404) := '737357093D20242E6C61796F75742E63737357696474680D0A2C0963737348093D20242E6C61796F75742E6373734865696768740D0A2C09656C44696D73093D20242E6C61796F75742E676574456C656D656E7444696D656E73696F6E730D0A2C097374';
wwv_flow_api.g_varchar2_table(405) := '796C6573093D20242E6C61796F75742E676574456C656D656E745374796C65730D0A2C096576744F626A093D20242E6C61796F75742E6765744576656E744F626A6563740D0A2C0965767450616E65093D20242E6C61796F75742E706172736550616E65';
wwv_flow_api.g_varchar2_table(406) := '4E616D650D0A0D0A2F2A2A0D0A202A206F7074696F6E73202D20706F70756C6174656420627920696E69744F7074696F6E7328290D0A202A2F0D0A2C096F7074696F6E73203D20242E657874656E6428747275652C207B7D2C20242E6C61796F75742E64';
wwv_flow_api.g_varchar2_table(407) := '656661756C7473290D0A2C0965666665637473093D206F7074696F6E732E65666665637473203D20242E657874656E6428747275652C207B7D2C20242E6C61796F75742E65666665637473290D0A0D0A2F2A2A0D0A202A206C61796F75742D7374617465';
wwv_flow_api.g_varchar2_table(408) := '206F626A6563740D0A202A2F0D0A2C097374617465203D207B0D0A09092F2F2067656E657261746520756E6971756520494420746F2075736520666F72206576656E742E6E616D65737061636520736F2063616E20756E62696E64206F6E6C7920657665';
wwv_flow_api.g_varchar2_table(409) := '6E7473206164646564206279202774686973206C61796F7574270D0A090969643A09090909226C61796F7574222B20242E6E6F772829092F2F20636F6465207573657320616C6961733A207349440D0A092C09696E697469616C697A65643A0966616C73';
wwv_flow_api.g_varchar2_table(410) := '650D0A092C0970616E65526573697A696E673A0966616C73650D0A092C0970616E6573536C6964696E673A097B7D0D0A092C09636F6E7461696E65723A097B20092F2F206C69737420616C6C206B657973207265666572656E63656420696E20636F6465';
wwv_flow_api.g_varchar2_table(411) := '20746F2061766F696420636F6D70696C6572206572726F72206D7367730D0A090909696E6E657257696474683A0909300D0A09092C09696E6E65724865696768743A09300D0A09092C096F7574657257696474683A0909300D0A09092C096F7574657248';
wwv_flow_api.g_varchar2_table(412) := '65696768743A09300D0A09092C096C61796F757457696474683A09300D0A09092C096C61796F75744865696768743A09300D0A09097D0D0A092C096E6F7274683A09097B206368696C644964783A2030207D0D0A092C09736F7574683A09097B20636869';
wwv_flow_api.g_varchar2_table(413) := '6C644964783A2030207D0D0A092C09656173743A09097B206368696C644964783A2030207D0D0A092C09776573743A09097B206368696C644964783A2030207D0D0A092C0963656E7465723A09097B206368696C644964783A2030207D0D0A097D0D0A0D';
wwv_flow_api.g_varchar2_table(414) := '0A2F2A2A0D0A202A20706172656E742F6368696C642D6C61796F757420706F696E746572730D0A202A2F0D0A2F2F2C09686173506172656E744C61796F7574093D2066616C7365092D20657869737473204F4E4C5920696E7369646520496E7374616E63';
wwv_flow_api.g_varchar2_table(415) := '6520736F2063616E206265207365742065787465726E616C6C790D0A2C096368696C6472656E203D207B0D0A09096E6F7274683A09096E756C6C0D0A092C09736F7574683A09096E756C6C0D0A092C09656173743A09096E756C6C0D0A092C0977657374';
wwv_flow_api.g_varchar2_table(416) := '3A09096E756C6C0D0A092C0963656E7465723A09096E756C6C0D0A097D0D0A0D0A2F2A0D0A202A202323232323232323232323232323232323232323232323232323230D0A202A2020494E5445524E414C2048454C5045522046554E4354494F4E530D0A';
wwv_flow_api.g_varchar2_table(417) := '202A202323232323232323232323232323232323232323232323232323230D0A202A2F0D0A0D0A092F2A2A0D0A09202A204D616E6167657320616C6C20696E7465726E616C2074696D6572730D0A09202A2F0D0A2C0974696D6572203D207B0D0A090964';
wwv_flow_api.g_varchar2_table(418) := '6174613A097B7D0D0A092C097365743A0966756E6374696F6E2028732C20666E2C206D7329207B2074696D65722E636C6561722873293B2074696D65722E646174615B735D203D2073657454696D656F757428666E2C206D73293B207D0D0A092C09636C';
wwv_flow_api.g_varchar2_table(419) := '6561723A0966756E6374696F6E20287329207B2076617220743D74696D65722E646174613B2069662028745B735D29207B636C65617254696D656F757428745B735D293B2064656C65746520745B735D3B7D207D0D0A097D0D0A0D0A092F2A2A0D0A0920';
wwv_flow_api.g_varchar2_table(420) := '2A20416C657274206F7220636F6E736F6C652E6C6F672061206D657373616765202D204946206F7074696F6E20697320656E61626C65642E0D0A09202A0D0A09202A2040706172616D207B28737472696E677C214F626A656374297D096D736709090909';
wwv_flow_api.g_varchar2_table(421) := '4D65737361676520286F722064656275672D646174612920746F20646973706C61790D0A09202A2040706172616D207B626F6F6C65616E3D7D0909095B706F7075703D66616C73655D09547275652062792064656661756C742C206D65616E732027616C';
wwv_flow_api.g_varchar2_table(422) := '657274272C2066616C7365206D65616E732075736520636F6E736F6C652E6C6F670D0A09202A2040706172616D207B626F6F6C65616E3D7D0909095B64656275673D66616C73655D0954727565206D65616E732069732061207769646765742064656275';
wwv_flow_api.g_varchar2_table(423) := '6767696E67206D6573736167650D0A09202A2F0D0A2C095F6C6F67203D2066756E6374696F6E20286D73672C20706F7075702C20646562756729207B0D0A0909766172206F203D206F7074696F6E733B0D0A090969662028286F2E73686F774572726F72';
wwv_flow_api.g_varchar2_table(424) := '4D657373616765732026262021646562756729207C7C20286465627567202626206F2E73686F7744656275674D6573736167657329290D0A090909242E6C61796F75742E6D736728206F2E6E616D65202B27202F20272B206D73672C2028706F70757020';
wwv_flow_api.g_varchar2_table(425) := '213D3D2066616C73652920293B0D0A090972657475726E2066616C73653B0D0A097D0D0A0D0A092F2A2A0D0A09202A20457865637574657320612043616C6C6261636B2066756E6374696F6E20616674657220612074726967676572206576656E742C20';
wwv_flow_api.g_varchar2_table(426) := '6C696B6520726573697A652C206F70656E206F7220636C6F73650D0A09202A0D0A09202A2040706172616D207B737472696E677D090909096576744E616D6509090909094E616D65206F6620746865206C61796F75742063616C6C6261636B2C20656720';
wwv_flow_api.g_varchar2_table(427) := '226F6E726573697A655F7374617274220D0A09202A2040706172616D207B28737472696E677C626F6F6C65616E293D7D095B70616E653D22225D090909095468697320697320706173736564206F6E6C7920736F2077652063616E207061737320746865';
wwv_flow_api.g_varchar2_table(428) := '202770616E65206F626A6563742720746F207468652063616C6C6261636B0D0A09202A2040706172616D207B28737472696E677C626F6F6C65616E293D7D095B736B6970426F756E644576656E74733D66616C73655D0954727565203D20646F206E6F74';
wwv_flow_api.g_varchar2_table(429) := '2072756E206576656E747320626F756E6420746F2074686520656C656D656E7473202D206F6E6C79207468652063616C6C6261636B732073657420696E206F7074696F6E730D0A09202A2F0D0A2C095F72756E43616C6C6261636B73203D2066756E6374';
wwv_flow_api.g_varchar2_table(430) := '696F6E20286576744E616D652C2070616E652C20736B6970426F756E644576656E747329207B0D0A09097661720968617350616E65093D2070616E652026262069735374722870616E65290D0A09092C097309093D2068617350616E65203F2073746174';
wwv_flow_api.g_varchar2_table(431) := '655B70616E655D203A2073746174650D0A09092C096F09093D2068617350616E65203F206F7074696F6E735B70616E655D203A206F7074696F6E730D0A09092C096C4E616D65093D206F7074696F6E732E6E616D650D0A0909092F2F206E616D6573206C';
wwv_flow_api.g_varchar2_table(432) := '696B65206F6E6F70656E20616E64206F6E6F70656E5F656E642073657061726174652061726520696E7465726368616E676561626C6520696E206F7074696F6E732E2E2E0D0A09092C096C6E6709093D206576744E616D65202B20286576744E616D652E';
wwv_flow_api.g_varchar2_table(433) := '6D61746368282F5F2F29203F202222203A20225F656E6422290D0A09092C0973687274093D206C6E672E6D61746368282F5F656E64242F29203F206C6E672E73756273747228302C206C6E672E6C656E677468202D203429203A2022220D0A09092C0966';
wwv_flow_api.g_varchar2_table(434) := '6E09093D206F5B6C6E675D207C7C206F5B736872745D0D0A09092C0972657456616C093D20224E4322202F2F204E43203D204E6F2043616C6C6261636B0D0A09092C0961726773093D205B5D0D0A09092C09245009093D2068617350616E65203F202450';
wwv_flow_api.g_varchar2_table(435) := '735B70616E655D203A20300D0A09093B0D0A09096966202868617350616E652026262021245029202F2F20612070616E65206973207370656369666965642C2062757420646F6573206E6F74206578697374210D0A09090972657475726E207265745661';
wwv_flow_api.g_varchar2_table(436) := '6C3B0D0A090969662028202168617350616E6520262620242E747970652870616E6529203D3D3D2022626F6F6C65616E222029207B0D0A090909736B6970426F756E644576656E7473203D2070616E653B202F2F20616C6C6F772070616E652070617261';
wwv_flow_api.g_varchar2_table(437) := '6D20746F20626520736B697070656420666F72204C61796F75742063616C6C6261636B0D0A09090970616E65203D2022223B0D0A09097D0D0A0D0A09092F2F2066697273742074726967676572207468652063616C6C6261636B2073657420696E207468';
wwv_flow_api.g_varchar2_table(438) := '65206F7074696F6E730D0A090969662028666E29207B0D0A090909747279207B0D0A090909092F2F20636F6E766572742066756E6374696F6E206E616D652028737472696E672920746F2066756E6374696F6E206F626A6563740D0A0909090969662028';
wwv_flow_api.g_varchar2_table(439) := '69735374722820666E202929207B0D0A090909090969662028666E2E6D61746368282F2C2F2929207B0D0A0909090909092F2F2066756E6374696F6E206E616D652063616E6E6F7420636F6E7461696E206120636F6D6D612C200D0A0909090909092F2F';
wwv_flow_api.g_varchar2_table(440) := '20736F206D75737420626520612066756E6374696F6E206E616D6520414E44206120706172616D6574657220746F20706173730D0A09090909090961726773203D20666E2E73706C697428222C22290D0A0909090909092C09666E203D206576616C2861';
wwv_flow_api.g_varchar2_table(441) := '7267735B305D293B0D0A09090909097D0D0A0909090909656C7365202F2F206A75737420746865206E616D65206F6620616E2065787465726E616C2066756E6374696F6E3F0D0A090909090909666E203D206576616C28666E293B0D0A090909097D0D0A';
wwv_flow_api.g_varchar2_table(442) := '090909092F2F2065786563757465207468652063616C6C6261636B2C206966206578697374730D0A0909090969662028242E697346756E6374696F6E2820666E202929207B0D0A090909090969662028617267732E6C656E677468290D0A090909090909';
wwv_flow_api.g_varchar2_table(443) := '72657456616C203D206728666E2928617267735B315D293B202F2F20706173732074686520617267756D656E74207061727365642066726F6D20276C697374270D0A0909090909656C736520696620282068617350616E6520290D0A0909090909092F2F';
wwv_flow_api.g_varchar2_table(444) := '207061737320646174613A2070616E652D6E616D652C2070616E652D656C656D656E742C2070616E652D73746174652C2070616E652D6F7074696F6E732C20616E64206C61796F75742D6E616D650D0A09090909090972657456616C203D206728666E29';
wwv_flow_api.g_varchar2_table(445) := '282070616E652C202450735B70616E655D2C20732C206F2C206C4E616D6520293B0D0A0909090909656C7365202F2F206D7573742062652061206C61796F75742F636F6E7461696E65722063616C6C6261636B202D2070617373207375697461626C6520';
wwv_flow_api.g_varchar2_table(446) := '696E666F0D0A09090909090972657456616C203D206728666E292820496E7374616E63652C20732C206F2C206C4E616D6520293B0D0A090909097D0D0A0909097D0D0A09090963617463682028657829207B0D0A090909095F6C6F6728206F7074696F6E';
wwv_flow_api.g_varchar2_table(447) := '732E6572726F72732E63616C6C6261636B4572726F722E7265706C616365282F4556454E542F2C20242E7472696D282870616E65207C7C20222229202B2220222B206C6E6729292C2066616C736520293B0D0A0909090969662028242E74797065286578';
wwv_flow_api.g_varchar2_table(448) := '29203D3D3D2022737472696E672220262620737472696E672E6C656E677468290D0A09090909095F6C6F672822457863657074696F6E3A2020222B2065782C2066616C736520293B0D0A0909097D0D0A09097D0D0A0D0A09092F2F207472696767657220';
wwv_flow_api.g_varchar2_table(449) := '6164646974696F6E616C206576656E747320626F756E64206469726563746C7920746F207468652070616E650D0A09096966202821736B6970426F756E644576656E74732026262072657456616C20213D3D2066616C736529207B0D0A09090969662028';
wwv_flow_api.g_varchar2_table(450) := '2068617350616E652029207B202F2F2050414E45206576656E74732063616E20626520626F756E6420746F20656163682070616E652D656C656D656E74730D0A090909096F093D206F7074696F6E735B70616E655D3B0D0A0909090973093D2073746174';
wwv_flow_api.g_varchar2_table(451) := '655B70616E655D3B0D0A0909090924502E7472696767657248616E646C657228226C61796F757470616E65222B206C6E672C205B2070616E652C2024502C20732C206F2C206C4E616D65205D293B0D0A090909096966202873687274290D0A0909090909';
wwv_flow_api.g_varchar2_table(452) := '24502E7472696767657248616E646C657228226C61796F757470616E65222B20736872742C205B2070616E652C2024502C20732C206F2C206C4E616D65205D293B0D0A0909097D0D0A090909656C7365207B202F2F204C41594F5554206576656E747320';
wwv_flow_api.g_varchar2_table(453) := '63616E20626520626F756E6420746F2074686520636F6E7461696E65722D656C656D656E740D0A09090909244E2E7472696767657248616E646C657228226C61796F7574222B206C6E672C205B20496E7374616E63652C20732C206F2C206C4E616D6520';
wwv_flow_api.g_varchar2_table(454) := '5D293B0D0A090909096966202873687274290D0A0909090909244E2E7472696767657248616E646C657228226C61796F7574222B20736872742C205B20496E7374616E63652C20732C206F2C206C4E616D65205D293B0D0A0909097D0D0A09097D0D0A0D';
wwv_flow_api.g_varchar2_table(455) := '0A09092F2F20414C5741595320726573697A654368696C6472656E20616674657220616E206F6E726573697A655F656E64206576656E74202D206576656E20647572696E6720696E697469616C697A6174696F6E0D0A09092F2F2049474E4F5245206F6E';
wwv_flow_api.g_varchar2_table(456) := '73697A65636F6E74656E745F656E64206576656E74206265636175736520636175736573206368696C642D6C61796F75747320746F20726573697A652054574943450D0A09096966202868617350616E65202626206576744E616D65203D3D3D20226F6E';
wwv_flow_api.g_varchar2_table(457) := '726573697A655F656E642229202F2F204241443A207C7C206576744E616D65203D3D3D20226F6E73697A65636F6E74656E745F656E64220D0A090909726573697A654368696C6472656E2870616E652B22222C2074727565293B202F2F20636F6D70696C';
wwv_flow_api.g_varchar2_table(458) := '6572206861636B202D666F72636520737472696E670D0A0D0A090972657475726E2072657456616C3B0D0A0D0A090966756E6374696F6E206720286629207B2072657475726E20663B207D3B202F2F20636F6D70696C6572206861636B0D0A097D0D0A0D';
wwv_flow_api.g_varchar2_table(459) := '0A0D0A092F2A2A0D0A09202A206375726520696672616D6520646973706C61792069737375657320696E2049452026206F746865722062726F77736572730D0A09202A2F0D0A2C095F666978496672616D65203D2066756E6374696F6E202870616E6529';
wwv_flow_api.g_varchar2_table(460) := '207B0D0A09096966202862726F777365722E6D6F7A696C6C61292072657475726E3B202F2F20736B69702046697265466F78202D206974206175746F2D72656672657368657320696672616D6573206F6E53686F770D0A0909766172202450203D202450';
wwv_flow_api.g_varchar2_table(461) := '735B70616E655D3B0D0A09092F2F20696620746865202770616E652720697320616E20696672616D652C20646F2069740D0A09096966202873746174655B70616E655D2E7461674E616D65203D3D3D2022494652414D4522290D0A09090924502E637373';
wwv_flow_api.g_varchar2_table(462) := '285F632E68696464656E292E637373285F632E76697369626C65293B200D0A0909656C7365202F2F20646974746F20666F7220616E7920696672616D657320494E53494445207468652070616E650D0A09090924502E66696E642827494652414D452729';
wwv_flow_api.g_varchar2_table(463) := '2E637373285F632E68696464656E292E637373285F632E76697369626C65293B0D0A097D0D0A0D0A092F2A2A0D0A09202A2040706172616D20207B737472696E677D090970616E65090943616E20616363657074204F4E4C592061202770616E65272028';
wwv_flow_api.g_varchar2_table(464) := '656173742C20776573742C20657463290D0A09202A2040706172616D20207B6E756D6265723D7D09096F7574657253697A6509286F7074696F6E616C292043616E207061737320612077696474682C20616C6C6F77696E672063616C63756C6174696F6E';
wwv_flow_api.g_varchar2_table(465) := '73204245464F524520656C656D656E7420697320726573697A65640D0A09202A204072657475726E207B6E756D6265727D090952657475726E732074686520696E6E65724865696768742F5769647468206F6620656C206279207375627472616374696E';
wwv_flow_api.g_varchar2_table(466) := '672070616464696E6720616E6420626F72646572730D0A09202A2F0D0A2C0963737353697A65203D2066756E6374696F6E202870616E652C206F7574657253697A6529207B0D0A090976617220666E203D205F635B70616E655D2E6469723D3D22686F72';
wwv_flow_api.g_varchar2_table(467) := '7A22203F2063737348203A20637373573B0D0A090972657475726E20666E282450735B70616E655D2C206F7574657253697A65293B0D0A097D0D0A0D0A092F2A2A0D0A09202A2040706172616D20207B737472696E677D090970616E65090943616E2061';
wwv_flow_api.g_varchar2_table(468) := '6363657074204F4E4C592061202770616E65272028656173742C20776573742C20657463290D0A09202A204072657475726E207B4F626A6563747D090952657475726E732068617368206F66206D696E57696474682026206D696E4865696768740D0A09';
wwv_flow_api.g_varchar2_table(469) := '202A2F0D0A2C096373734D696E44696D73203D2066756E6374696F6E202870616E6529207B0D0A09092F2F206D696E57696474682F486569676874206D65616E73204353532077696474682F686569676874203D203170780D0A0909766172092450093D';
wwv_flow_api.g_varchar2_table(470) := '202450735B70616E655D0D0A09092C09646972093D205F635B70616E655D2E6469720D0A09092C0964093D207B0D0A090909096D696E57696474683A0931303031202D20637373572824502C2031303030290D0A0909092C096D696E4865696768743A09';
wwv_flow_api.g_varchar2_table(471) := '31303031202D20637373482824502C2031303030290D0A0909097D0D0A09093B0D0A090969662028646972203D3D3D2022686F727A222920642E6D696E53697A65203D20642E6D696E4865696768743B0D0A090969662028646972203D3D3D2022766572';
wwv_flow_api.g_varchar2_table(472) := '74222920642E6D696E53697A65203D20642E6D696E57696474683B0D0A090972657475726E20643B0D0A097D0D0A0D0A092F2F20544F444F3A20736565206966207468657365206D6574686F64732063616E206265206D616465206D6F72652075736566';
wwv_flow_api.g_varchar2_table(473) := '756C2E2E2E0D0A092F2F20544F444F3A202A6D617962652A2072657475726E20637373572F482066726F6D20746865736520736F2063616C6C65722063616E20757365207468697320696E666F0D0A0D0A092F2A2A0D0A09202A2040706172616D207B28';
wwv_flow_api.g_varchar2_table(474) := '737472696E677C214F626A656374297D0909656C0D0A09202A2040706172616D207B6E756D6265723D7D090909096F7574657257696474680D0A09202A2040706172616D207B626F6F6C65616E3D7D090909095B6175746F486964653D66616C73655D0D';
wwv_flow_api.g_varchar2_table(475) := '0A09202A2F0D0A2C097365744F757465725769647468203D2066756E6374696F6E2028656C2C206F7574657257696474682C206175746F4869646529207B0D0A0909766172202445203D20656C2C20773B0D0A090969662028697353747228656C292920';
wwv_flow_api.g_varchar2_table(476) := '2445203D202450735B656C5D3B202F2F20776573740D0A0909656C7365206966202821656C2E6A717565727929202445203D202428656C293B0D0A090977203D20637373572824452C206F757465725769647468293B0D0A090924452E637373287B2077';
wwv_flow_api.g_varchar2_table(477) := '696474683A2077207D293B0D0A09096966202877203E203029207B0D0A090909696620286175746F486964652026262024452E6461746128276175746F48696464656E27292026262024452E696E6E65724865696768742829203E203029207B0D0A0909';
wwv_flow_api.g_varchar2_table(478) := '090924452E73686F7728292E6461746128276175746F48696464656E272C2066616C7365293B0D0A09090909696620282162726F777365722E6D6F7A696C6C6129202F2F2046697265466F782072656672657368657320696672616D6573202D20494520';
wwv_flow_api.g_varchar2_table(479) := '646F6573206E6F740D0A09090909092F2F206D616B652068696464656E2C207468656E2076697369626C6520746F2027726566726573682720646973706C617920616674657220616E696D6174696F6E0D0A090909090924452E637373285F632E686964';
wwv_flow_api.g_varchar2_table(480) := '64656E292E637373285F632E76697369626C65293B0D0A0909097D0D0A09097D0D0A0909656C736520696620286175746F48696465202626202124452E6461746128276175746F48696464656E2729290D0A09090924452E6869646528292E6461746128';
wwv_flow_api.g_varchar2_table(481) := '276175746F48696464656E272C2074727565293B0D0A097D0D0A0D0A092F2A2A0D0A09202A2040706172616D207B28737472696E677C214F626A656374297D0909656C0D0A09202A2040706172616D207B6E756D6265723D7D090909096F757465724865';
wwv_flow_api.g_varchar2_table(482) := '696768740D0A09202A2040706172616D207B626F6F6C65616E3D7D090909095B6175746F486964653D66616C73655D0D0A09202A2F0D0A2C097365744F75746572486569676874203D2066756E6374696F6E2028656C2C206F757465724865696768742C';
wwv_flow_api.g_varchar2_table(483) := '206175746F4869646529207B0D0A0909766172202445203D20656C2C20683B0D0A090969662028697353747228656C2929202445203D202450735B656C5D3B202F2F20776573740D0A0909656C7365206966202821656C2E6A717565727929202445203D';
wwv_flow_api.g_varchar2_table(484) := '202428656C293B0D0A090968203D20637373482824452C206F75746572486569676874293B0D0A090924452E637373287B206865696768743A20682C207669736962696C6974793A202276697369626C6522207D293B202F2F206D617920686176652062';
wwv_flow_api.g_varchar2_table(485) := '65656E202768696464656E272062792073697A65436F6E74656E740D0A09096966202868203E20302026262024452E696E6E657257696474682829203E203029207B0D0A090909696620286175746F486964652026262024452E6461746128276175746F';
wwv_flow_api.g_varchar2_table(486) := '48696464656E272929207B0D0A0909090924452E73686F7728292E6461746128276175746F48696464656E272C2066616C7365293B0D0A09090909696620282162726F777365722E6D6F7A696C6C6129202F2F2046697265466F78207265667265736865';
wwv_flow_api.g_varchar2_table(487) := '7320696672616D6573202D20494520646F6573206E6F740D0A090909090924452E637373285F632E68696464656E292E637373285F632E76697369626C65293B0D0A0909097D0D0A09097D0D0A0909656C736520696620286175746F4869646520262620';
wwv_flow_api.g_varchar2_table(488) := '2124452E6461746128276175746F48696464656E2729290D0A09090924452E6869646528292E6461746128276175746F48696464656E272C2074727565293B0D0A097D0D0A0D0A0D0A092F2A2A0D0A09202A20436F6E766572747320616E79202773697A';
wwv_flow_api.g_varchar2_table(489) := '652720706172616D7320746F206120706978656C2F696E74656765722073697A652C206966206E6F7420616C72656164790D0A09202A20496620276175746F27206F72206120646563696D616C2F70657263656E74616765206973207061737365642061';
wwv_flow_api.g_varchar2_table(490) := '73202773697A65272C206120706978656C2D73697A652069732063616C63756C617465640D0A09202A0D0A092F2A2A0D0A09202A2040706172616D20207B737472696E677D0909090970616E650D0A09202A2040706172616D20207B28737472696E677C';
wwv_flow_api.g_varchar2_table(491) := '6E756D626572293D7D0973697A650D0A09202A2040706172616D20207B737472696E673D7D090909095B6469725D0D0A09202A204072657475726E207B6E756D6265727D0D0A09202A2F0D0A2C095F706172736553697A65203D2066756E6374696F6E20';
wwv_flow_api.g_varchar2_table(492) := '2870616E652C2073697A652C2064697229207B0D0A090969662028216469722920646972203D205F635B70616E655D2E6469723B0D0A0D0A09096966202869735374722873697A65292026262073697A652E6D61746368282F252F29290D0A0909097369';
wwv_flow_api.g_varchar2_table(493) := '7A65203D202873697A65203D3D3D2027313030252729203F202D31203A207061727365496E742873697A652C20313029202F203130303B202F2F20636F6E76657274202520746F20646563696D616C0D0A0D0A09096966202873697A65203D3D3D203029';
wwv_flow_api.g_varchar2_table(494) := '0D0A09090972657475726E20303B0D0A0909656C7365206966202873697A65203E3D2031290D0A09090972657475726E207061727365496E742873697A652C203130293B0D0A0D0A0909766172206F203D206F7074696F6E732C20617661696C203D2030';
wwv_flow_api.g_varchar2_table(495) := '3B0D0A0909696620286469723D3D22686F727A2229202F2F206E6F727468206F7220736F757468206F722063656E7465722E6D696E4865696768740D0A090909617661696C203D2073432E696E6E6572486569676874202D20282450732E6E6F72746820';
wwv_flow_api.g_varchar2_table(496) := '3F206F2E6E6F7274682E73706163696E675F6F70656E203A203029202D20282450732E736F757468203F206F2E736F7574682E73706163696E675F6F70656E203A2030293B0D0A0909656C736520696620286469723D3D22766572742229202F2F206561';
wwv_flow_api.g_varchar2_table(497) := '7374206F722077657374206F722063656E7465722E6D696E57696474680D0A090909617661696C203D2073432E696E6E65725769647468202D20282450732E77657374203F206F2E776573742E73706163696E675F6F70656E203A203029202D20282450';
wwv_flow_api.g_varchar2_table(498) := '732E65617374203F206F2E656173742E73706163696E675F6F70656E203A2030293B0D0A0D0A09096966202873697A65203D3D3D202D3129202F2F202D31203D3D20313030250D0A09090972657475726E20617661696C3B0D0A0909656C736520696620';
wwv_flow_api.g_varchar2_table(499) := '2873697A65203E203029202F2F2070657263656E746167652C2065673A202E32350D0A09090972657475726E20726F756E6428617661696C202A2073697A65293B0D0A0909656C7365206966202870616E653D3D2263656E74657222290D0A0909097265';
wwv_flow_api.g_varchar2_table(500) := '7475726E20303B0D0A0909656C7365207B202F2F2073697A65203C2030207C7C2073697A653D3D276175746F27207C7C2073697A653D3D4D697373696E67207C7C2073697A653D3D496E76616C69640D0A0909092F2F206175746F2D73697A6520746865';
wwv_flow_api.g_varchar2_table(501) := '2070616E650D0A0909097661720964696D093D2028646972203D3D3D2022686F727A22203F202268656967687422203A2022776964746822290D0A0909092C092450093D202450735B70616E655D0D0A0909092C092443093D2064696D203D3D3D202768';
wwv_flow_api.g_varchar2_table(502) := '656967687427203F202443735B70616E655D203A2066616C73650D0A0909092C09766973093D20242E6C61796F75742E73686F77496E76697369626C7928245029202F2F2073686F772070616E6520696E76697369626C792069662068696464656E0D0A';
wwv_flow_api.g_varchar2_table(503) := '0909092C09737A50093D2024502E6373732864696D29202F2F20534156452063757272656E742070616E652073697A650D0A0909092C09737A43093D202443203F2024432E6373732864696D29203A2030202F2F20534156452063757272656E7420636F';
wwv_flow_api.g_varchar2_table(504) := '6E74656E742073697A650D0A0909093B0D0A09090924502E6373732864696D2C20226175746F22293B0D0A090909696620282443292024432E6373732864696D2C20226175746F22293B0D0A09090973697A65203D202864696D203D3D3D202268656967';
wwv_flow_api.g_varchar2_table(505) := '68742229203F2024502E6F757465724865696768742829203A2024502E6F75746572576964746828293B202F2F204D4541535552450D0A09090924502E6373732864696D2C20737A50292E63737328766973293B202F2F2052455345542073697A652026';
wwv_flow_api.g_varchar2_table(506) := '207669736962696C6974790D0A090909696620282443292024432E6373732864696D2C20737A43293B0D0A09090972657475726E2073697A653B0D0A09097D0D0A097D0D0A0D0A092F2A2A0D0A09202A2043616C63756C617465732063757272656E7420';
wwv_flow_api.g_varchar2_table(507) := '2773697A652720286F757465722D7769647468206F72206F757465722D68656967687429206F66206120626F726465722D70616E65202D206F7074696F6E616C6C792077697468202770616E652D73706163696E67272061646465640D0A09202A0D0A09';
wwv_flow_api.g_varchar2_table(508) := '202A2040706172616D20207B28737472696E677C214F626A656374297D0970616E650D0A09202A2040706172616D20207B626F6F6C65616E3D7D0909095B696E636C53706163653D66616C73655D0D0A09202A204072657475726E207B6E756D6265727D';
wwv_flow_api.g_varchar2_table(509) := '0909090952657475726E732045495448455220576964746820666F7220656173742F776573742070616E6573204F522048656967687420666F72206E6F7274682F736F7574682070616E65730D0A09202A2F0D0A2C0967657450616E6553697A65203D20';
wwv_flow_api.g_varchar2_table(510) := '66756E6374696F6E202870616E652C20696E636C537061636529207B0D0A0909766172200D0A0909092450093D202450735B70616E655D0D0A09092C096F093D206F7074696F6E735B70616E655D0D0A09092C0973093D2073746174655B70616E655D0D';
wwv_flow_api.g_varchar2_table(511) := '0A09092C096F5370093D2028696E636C5370616365203F206F2E73706163696E675F6F70656E203A2030290D0A09092C09635370093D2028696E636C5370616365203F206F2E73706163696E675F636C6F736564203A2030290D0A09093B0D0A09096966';
wwv_flow_api.g_varchar2_table(512) := '2028212450207C7C20732E697348696464656E290D0A09090972657475726E20303B0D0A0909656C73652069662028732E6973436C6F736564207C7C2028732E6973536C6964696E6720262620696E636C537061636529290D0A09090972657475726E20';
wwv_flow_api.g_varchar2_table(513) := '6353703B0D0A0909656C736520696620285F635B70616E655D2E646972203D3D3D2022686F727A22290D0A09090972657475726E2024502E6F757465724865696768742829202B206F53703B0D0A0909656C7365202F2F20646972203D3D3D2022766572';
wwv_flow_api.g_varchar2_table(514) := '74220D0A09090972657475726E2024502E6F7574657257696474682829202B206F53703B0D0A097D0D0A0D0A092F2A2A0D0A09202A2043616C63756C617465206D696E2F6D61782070616E652064696D656E73696F6E7320616E64206C696D6974732066';
wwv_flow_api.g_varchar2_table(515) := '6F7220726573697A696E670D0A09202A0D0A09202A2040706172616D20207B737472696E677D090970616E650D0A09202A2040706172616D20207B626F6F6C65616E3D7D095B736C6964653D66616C73655D0D0A09202A2F0D0A2C0973657453697A654C';
wwv_flow_api.g_varchar2_table(516) := '696D697473203D2066756E6374696F6E202870616E652C20736C69646529207B0D0A090969662028216973496E697469616C697A65642829292072657475726E3B0D0A0909766172200D0A0909096F090909093D206F7074696F6E735B70616E655D0D0A';
wwv_flow_api.g_varchar2_table(517) := '09092C0973090909093D2073746174655B70616E655D0D0A09092C0963090909093D205F635B70616E655D0D0A09092C09646972090909093D20632E6469720D0A09092C09747970650909093D20632E73697A65547970652E746F4C6F77657243617365';
wwv_flow_api.g_varchar2_table(518) := '28290D0A09092C096973536C6964696E6709093D2028736C69646520213D20756E646566696E6564203F20736C696465203A20732E6973536C6964696E6729202F2F206F6E6C79206F70656E2829207061737365732027736C6964652720706172616D0D';
wwv_flow_api.g_varchar2_table(519) := '0A09092C092450090909093D202450735B70616E655D0D0A09092C0970616E6553706163696E6709093D206F2E73706163696E675F6F70656E0D0A09092F2F096D656173757265207468652070616E65206F6E20746865202A6F70706F73697465207369';
wwv_flow_api.g_varchar2_table(520) := '64652A2066726F6D20746869732070616E650D0A09092C09616C7450616E650909093D205F632E6F70706F73697465456467655B70616E655D0D0A09092C09616C74530909093D2073746174655B616C7450616E655D0D0A09092C0924616C7450090909';
wwv_flow_api.g_varchar2_table(521) := '3D202450735B616C7450616E655D0D0A09092C09616C7450616E6553697A6509093D20282124616C7450207C7C20616C74532E697356697369626C653D3D3D66616C7365207C7C20616C74532E6973536C6964696E67203F2030203A20286469723D3D22';
wwv_flow_api.g_varchar2_table(522) := '686F727A22203F2024616C74502E6F757465724865696768742829203A2024616C74502E6F757465725769647468282929290D0A09092C09616C7450616E6553706163696E67093D2028282124616C7450207C7C20616C74532E697348696464656E203F';
wwv_flow_api.g_varchar2_table(523) := '2030203A206F7074696F6E735B616C7450616E655D5B20616C74532E6973436C6F73656420213D3D2066616C7365203F202273706163696E675F636C6F73656422203A202273706163696E675F6F70656E22205D29207C7C2030290D0A09092F2F096C69';
wwv_flow_api.g_varchar2_table(524) := '6D697453697A652070726576656E747320746869732070616E652066726F6D20276F7665726C617070696E6727206F70706F736974652070616E650D0A09092C09636F6E7461696E657253697A65093D20286469723D3D22686F727A22203F2073432E69';
wwv_flow_api.g_varchar2_table(525) := '6E6E6572486569676874203A2073432E696E6E65725769647468290D0A09092C096D696E43656E74657244696D73093D206373734D696E44696D73282263656E74657222290D0A09092C096D696E43656E74657253697A65093D206469723D3D22686F72';
wwv_flow_api.g_varchar2_table(526) := '7A22203F206D6178286F7074696F6E732E63656E7465722E6D696E4865696768742C206D696E43656E74657244696D732E6D696E48656967687429203A206D6178286F7074696F6E732E63656E7465722E6D696E57696474682C206D696E43656E746572';
wwv_flow_api.g_varchar2_table(527) := '44696D732E6D696E5769647468290D0A09092F2F0969662070616E652069732027736C6964696E67272C207468656E2069676E6F72652063656E74657220616E6420616C742D70616E652073697A6573202D206265636175736520276F7665726C617973';
wwv_flow_api.g_varchar2_table(528) := '27207468656D0D0A09092C096C696D697453697A6509093D2028636F6E7461696E657253697A65202D2070616E6553706163696E67202D20286973536C6964696E67203F2030203A20285F706172736553697A65282263656E746572222C206D696E4365';
wwv_flow_api.g_varchar2_table(529) := '6E74657253697A652C2064697229202B20616C7450616E6553697A65202B20616C7450616E6553706163696E672929290D0A09092C096D696E53697A650909093D20732E6D696E53697A65203D206D617828205F706172736553697A652870616E652C20';
wwv_flow_api.g_varchar2_table(530) := '6F2E6D696E53697A65292C206373734D696E44696D732870616E65292E6D696E53697A6520290D0A09092C096D617853697A650909093D20732E6D617853697A65203D206D696E2820286F2E6D617853697A65203F205F706172736553697A652870616E';
wwv_flow_api.g_varchar2_table(531) := '652C206F2E6D617853697A6529203A20313030303030292C206C696D697453697A6520290D0A09092C0972090909093D20732E726573697A6572506F736974696F6E203D207B7D202F2F207573656420746F2073657420726573697A696E67206C696D69';
wwv_flow_api.g_varchar2_table(532) := '74730D0A09092C09746F70090909093D2073432E696E7365742E746F700D0A09092C096C6566740909093D2073432E696E7365742E6C6566740D0A09092C0957090909093D2073432E696E6E657257696474680D0A09092C0948090909093D2073432E69';
wwv_flow_api.g_varchar2_table(533) := '6E6E65724865696768740D0A09092C097257090909093D206F2E73706163696E675F6F70656E202F2F20737562747261637420726573697A65722D776964746820746F2067657420746F702F6C65667420706F736974696F6E20666F7220736F7574682F';
wwv_flow_api.g_varchar2_table(534) := '656173740D0A09093B0D0A0909737769746368202870616E6529207B0D0A0909096361736520226E6F727468223A09722E6D696E203D20746F70202B206D696E53697A653B0D0A09090909090909722E6D6178203D20746F70202B206D617853697A653B';
wwv_flow_api.g_varchar2_table(535) := '0D0A09090909090909627265616B3B0D0A09090963617365202277657374223A09722E6D696E203D206C656674202B206D696E53697A653B0D0A09090909090909722E6D6178203D206C656674202B206D617853697A653B0D0A09090909090909627265';
wwv_flow_api.g_varchar2_table(536) := '616B3B0D0A090909636173652022736F757468223A09722E6D696E203D20746F70202B2048202D206D617853697A65202D2072573B0D0A09090909090909722E6D6178203D20746F70202B2048202D206D696E53697A65202D2072573B0D0A0909090909';
wwv_flow_api.g_varchar2_table(537) := '0909627265616B3B0D0A09090963617365202265617374223A09722E6D696E203D206C656674202B2057202D206D617853697A65202D2072573B0D0A09090909090909722E6D6178203D206C656674202B2057202D206D696E53697A65202D2072573B0D';
wwv_flow_api.g_varchar2_table(538) := '0A09090909090909627265616B3B0D0A09097D3B0D0A097D0D0A0D0A092F2A2A0D0A09202A2052657475726E73206461746120666F722073657474696E67207468652073697A652F706F736974696F6E206F662063656E7465722070616E652E20416C73';
wwv_flow_api.g_varchar2_table(539) := '6F207573656420746F207365742048656967687420666F7220656173742F776573742070616E65730D0A09202A0D0A09202A204072657475726E204A534F4E202052657475726E7320612068617368206F6620616C6C2064696D656E73696F6E733A2074';
wwv_flow_api.g_varchar2_table(540) := '6F702C20626F74746F6D2C206C6566742C2072696768742C20286F757465722920776964746820616E6420286F7574657229206865696768740D0A09202A2F0D0A2C0963616C634E657743656E74657250616E6544696D73203D2066756E6374696F6E20';
wwv_flow_api.g_varchar2_table(541) := '2829207B0D0A09097661722064203D207B0D0A090909746F703A0967657450616E6553697A6528226E6F727468222C207472756529202F2F2074727565203D20696E636C756465202773706163696E67272076616C756520666F722070616E650D0A0909';
wwv_flow_api.g_varchar2_table(542) := '2C09626F74746F6D3A0967657450616E6553697A652822736F757468222C2074727565290D0A09092C096C6566743A0967657450616E6553697A65282277657374222C2074727565290D0A09092C0972696768743A0967657450616E6553697A65282265';
wwv_flow_api.g_varchar2_table(543) := '617374222C2074727565290D0A09092C0977696474683A09300D0A09092C096865696768743A09300D0A09097D3B0D0A0D0A09092F2F204E4F54453A207343203D2073746174652E636F6E7461696E65720D0A09092F2F2063616C632063656E7465722D';
wwv_flow_api.g_varchar2_table(544) := '70616E65206F757465722064696D656E73696F6E730D0A0909642E776964746809093D2073432E696E6E65725769647468202D20642E6C656674202D20642E72696768743B20202F2F206F7574657257696474680D0A0909642E686569676874093D2073';
wwv_flow_api.g_varchar2_table(545) := '432E696E6E6572486569676874202D20642E626F74746F6D202D20642E746F703B202F2F206F757465724865696768740D0A09092F2F20616464207468652027636F6E7461696E657220626F726465722F70616464696E672720746F206765742066696E';
wwv_flow_api.g_varchar2_table(546) := '616C20706F736974696F6E732072656C617469766520746F2074686520636F6E7461696E65720D0A0909642E746F7009092B3D2073432E696E7365742E746F703B0D0A0909642E626F74746F6D092B3D2073432E696E7365742E626F74746F6D3B0D0A09';
wwv_flow_api.g_varchar2_table(547) := '09642E6C65667409092B3D2073432E696E7365742E6C6566743B0D0A0909642E726967687409092B3D2073432E696E7365742E72696768743B0D0A0D0A090972657475726E20643B0D0A097D0D0A0D0A0D0A092F2A2A0D0A09202A2040706172616D207B';
wwv_flow_api.g_varchar2_table(548) := '214F626A6563747D0909656C0D0A09202A2040706172616D207B626F6F6C65616E3D7D09095B616C6C5374617465733D66616C73655D0D0A09202A2F0D0A2C09676574486F766572436C6173736573203D2066756E6374696F6E2028656C2C20616C6C53';
wwv_flow_api.g_varchar2_table(549) := '746174657329207B0D0A09097661720D0A09090924456C09093D202428656C290D0A09092C0974797065093D2024456C2E6461746128226C61796F7574526F6C6522290D0A09092C0970616E65093D2024456C2E6461746128226C61796F757445646765';
wwv_flow_api.g_varchar2_table(550) := '22290D0A09092C096F09093D206F7074696F6E735B70616E655D0D0A09092C09726F6F74093D206F5B74797065202B22436C617373225D0D0A09092C095F70616E65093D20222D222B2070616E65202F2F2065673A20222D77657374220D0A09092C095F';
wwv_flow_api.g_varchar2_table(551) := '6F70656E093D20222D6F70656E220D0A09092C095F636C6F736564093D20222D636C6F736564220D0A09092C095F736C696465093D20222D736C6964696E67220D0A09092C095F686F766572093D20222D686F7665722022202F2F204E4F544520746865';
wwv_flow_api.g_varchar2_table(552) := '20747261696C696E672073706163650D0A09092C095F7374617465093D2024456C2E686173436C61737328726F6F742B5F636C6F73656429203F205F636C6F736564203A205F6F70656E0D0A09092C095F616C74093D205F7374617465203D3D3D205F63';
wwv_flow_api.g_varchar2_table(553) := '6C6F736564203F205F6F70656E203A205F636C6F7365640D0A09092C09636C6173736573203D2028726F6F742B5F686F76657229202B2028726F6F742B5F70616E652B5F686F76657229202B2028726F6F742B5F73746174652B5F686F76657229202B20';
wwv_flow_api.g_varchar2_table(554) := '28726F6F742B5F70616E652B5F73746174652B5F686F766572290D0A09093B0D0A090969662028616C6C53746174657329202F2F207768656E202772656D6F76696E672720636C61737365732C20616C736F2072656D6F766520616C7465726E6174652D';
wwv_flow_api.g_varchar2_table(555) := '737461746520636C61737365730D0A090909636C6173736573202B3D2028726F6F742B5F616C742B5F686F76657229202B2028726F6F742B5F70616E652B5F616C742B5F686F766572293B0D0A0D0A090969662028747970653D3D22726573697A657222';
wwv_flow_api.g_varchar2_table(556) := '2026262024456C2E686173436C61737328726F6F742B5F736C69646529290D0A090909636C6173736573202B3D2028726F6F742B5F736C6964652B5F686F76657229202B2028726F6F742B5F70616E652B5F736C6964652B5F686F766572293B0D0A0D0A';
wwv_flow_api.g_varchar2_table(557) := '090972657475726E20242E7472696D28636C6173736573293B0D0A097D0D0A2C09616464486F766572093D2066756E6374696F6E20286576742C20656C29207B0D0A0909766172202445203D202428656C207C7C2074686973293B0D0A09096966202865';
wwv_flow_api.g_varchar2_table(558) := '76742026262024452E6461746128226C61796F7574526F6C652229203D3D3D2022746F67676C657222290D0A0909096576742E73746F7050726F7061676174696F6E28293B202F2F2070726576656E742074726967676572696E672027736C6964652720';
wwv_flow_api.g_varchar2_table(559) := '6F6E20526573697A65722D6261720D0A090924452E616464436C6173732820676574486F766572436C61737365732824452920293B0D0A097D0D0A2C0972656D6F7665486F766572093D2066756E6374696F6E20286576742C20656C29207B0D0A090976';
wwv_flow_api.g_varchar2_table(560) := '6172202445203D202428656C207C7C2074686973293B0D0A090924452E72656D6F7665436C6173732820676574486F766572436C61737365732824452C20747275652920293B0D0A097D0D0A0D0A2C096F6E526573697A6572456E746572093D2066756E';
wwv_flow_api.g_varchar2_table(561) := '6374696F6E202865767429207B202F2F20414C534F2063616C6C656420627920746F67676C65722E6D6F757365656E7465720D0A09097661722070616E65093D20242874686973292E6461746128226C61796F75744564676522290D0A09092C09730909';
wwv_flow_api.g_varchar2_table(562) := '3D2073746174655B70616E655D0D0A09092C09246409093D202428646F63756D656E74290D0A09093B0D0A09092F2F2069676E6F726520636C6F7365642D70616E657320616E64206D6F757365206D6F76696E67206261636B202620666F727468206F76';
wwv_flow_api.g_varchar2_table(563) := '657220726573697A6572210D0A09092F2F20616C736F2069676E6F726520696620414E592070616E652069732063757272656E746C7920726573697A696E670D0A09096966202820732E6973526573697A696E67207C7C2073746174652E70616E655265';
wwv_flow_api.g_varchar2_table(564) := '73697A696E6720292072657475726E3B0D0A0D0A0909696620286F7074696F6E732E6D61736B50616E65734561726C79290D0A09090973686F774D61736B73282070616E652C207B20726573697A696E673A2074727565207D293B0D0A097D0D0A2C096F';
wwv_flow_api.g_varchar2_table(565) := '6E526573697A65724C65617665093D2066756E6374696F6E20286576742C20656C29207B0D0A0909766172096509093D20656C207C7C2074686973202F2F20656C206973206F6E6C7920706173736564207768656E2063616C6C65642062792074686520';
wwv_flow_api.g_varchar2_table(566) := '74696D65720D0A09092C0970616E65093D20242865292E6461746128226C61796F75744564676522290D0A09092C096E616D65093D2070616E65202B22526573697A65724C65617665220D0A09092C09246409093D202428646F63756D656E74290D0A09';
wwv_flow_api.g_varchar2_table(567) := '093B0D0A090974696D65722E636C6561722870616E652B225F6F70656E536C6964657222293B202F2F2063616E63656C20736C6964654F70656E2074696D65722C206966207365740D0A090974696D65722E636C656172286E616D65293B202F2F206361';
wwv_flow_api.g_varchar2_table(568) := '6E63656C20656E61626C6553656C656374696F6E2074696D6572202D206D61792072652F7365742062656C6F770D0A09092F2F2074686973206D6574686F642063616C6C7320697473656C66206F6E20612074696D65722062656361757365206974206E';
wwv_flow_api.g_varchar2_table(569) := '6565647320746F20616C6C6F770D0A09092F2F20656E6F7567682074696D6520666F72206472616767696E6720746F206B69636B2D696E20616E642073657420746865206973526573697A696E6720666C61670D0A09092F2F206472616767696E672068';
wwv_flow_api.g_varchar2_table(570) := '61732061203130306D732064656C6179207365742C20736F20746869732064656C6179206D757374206265203E3130300D0A09096966202821656C29202F2F203173742063616C6C202D206D6F7573656C65617665206576656E740D0A09090974696D65';
wwv_flow_api.g_varchar2_table(571) := '722E736574286E616D652C2066756E6374696F6E28297B206F6E526573697A65724C65617665286576742C2065293B207D2C20323030293B0D0A09092F2F206966207573657220697320726573697A696E672C206472616753746F702077696C6C207265';
wwv_flow_api.g_varchar2_table(572) := '7365742065766572797468696E672C20736F20736B697020697420686572650D0A0909656C736520696620286F7074696F6E732E6D61736B50616E65734561726C79202626202173746174652E70616E65526573697A696E6729202F2F20326E64206361';
wwv_flow_api.g_varchar2_table(573) := '6C6C202D2062792074696D65720D0A090909686964654D61736B7328293B0D0A097D0D0A0D0A2F2A0D0A202A202323232323232323232323232323232323232323232323232323230D0A202A202020494E495449414C495A4154494F4E204D4554484F44';
wwv_flow_api.g_varchar2_table(574) := '530D0A202A202323232323232323232323232323232323232323232323232323230D0A202A2F0D0A0D0A092F2A2A0D0A09202A20496E697469616C697A6520746865206C61796F7574202D2063616C6C6564206175746F6D61746963616C6C7920776865';
wwv_flow_api.g_varchar2_table(575) := '6E6576657220616E20696E7374616E6365206F66206C61796F757420697320637265617465640D0A09202A0D0A09202A204073656520206E6F6E65202D20747269676765726564206F6E496E69740D0A09202A204072657475726E20206D697865640974';
wwv_flow_api.g_varchar2_table(576) := '727565203D2066756C6C7920696E697469616C697A6564207C2066616C7365203D2070616E6573206E6F7420696E697469616C697A6564202879657429207C202763616E63656C27203D2061626F72740D0A09202A2F0D0A2C095F637265617465203D20';
wwv_flow_api.g_varchar2_table(577) := '66756E6374696F6E202829207B0D0A09092F2F20696E697469616C697A6520636F6E6669672F6F7074696F6E730D0A0909696E69744F7074696F6E7328293B0D0A0909766172206F203D206F7074696F6E730D0A09092C0973203D2073746174653B0D0A';
wwv_flow_api.g_varchar2_table(578) := '0D0A09092F2F2054454D5020737461746520736F206973496E697469616C697A65642072657475726E73207472756520647572696E6720696E69742070726F636573730D0A0909732E6372656174696E674C61796F7574203D20747275653B0D0A0D0A09';
wwv_flow_api.g_varchar2_table(579) := '092F2F20696E697420706C7567696E7320666F722074686973206C61796F75742C2069662074686572652061726520616E79202865673A2073746174654D616E6167656D656E74290D0A090972756E506C7567696E43616C6C6261636B732820496E7374';
wwv_flow_api.g_varchar2_table(580) := '616E63652C20242E6C61796F75742E6F6E43726561746520293B0D0A0D0A09092F2F206F7074696F6E7320262073746174652068617665206265656E20696E697469616C697A65642C20736F206E6F772072756E206265666F72654C6F61642063616C6C';
wwv_flow_api.g_varchar2_table(581) := '6261636B0D0A09092F2F206F6E6C6F61642077696C6C2043414E43454C206C61796F7574206372656174696F6E2069662069742072657475726E732066616C73650D0A09096966202866616C7365203D3D3D205F72756E43616C6C6261636B7328226F6E';
wwv_flow_api.g_varchar2_table(582) := '6C6F61645F73746172742229290D0A09090972657475726E202763616E63656C273B0D0A0D0A09092F2F20696E697469616C697A652074686520636F6E7461696E657220656C656D656E740D0A09095F696E6974436F6E7461696E657228293B0D0A0D0A';
wwv_flow_api.g_varchar2_table(583) := '09092F2F2062696E6420686F746B65792066756E6374696F6E202D206B6579446F776E202D2069662072657175697265640D0A0909696E6974486F746B65797328293B0D0A0D0A09092F2F2062696E642077696E646F772E6F6E756E6C6F61640D0A0909';
wwv_flow_api.g_varchar2_table(584) := '242877696E646F77292E62696E642822756E6C6F61642E222B207349442C20756E6C6F6164293B0D0A0D0A09092F2F20696E697420706C7567696E7320666F722074686973206C61796F75742C2069662074686572652061726520616E79202865673A20';
wwv_flow_api.g_varchar2_table(585) := '637573746F6D427574746F6E73290D0A090972756E506C7567696E43616C6C6261636B732820496E7374616E63652C20242E6C61796F75742E6F6E4C6F616420293B0D0A0D0A09092F2F206966206C61796F757420656C656D656E747320617265206869';
wwv_flow_api.g_varchar2_table(586) := '6464656E2C207468656E206C61796F75742057494C4C204E4F5420636F6D706C65746520696E697469616C697A6174696F6E210D0A09092F2F20696E69744C61796F7574456C656D656E74732077696C6C2073657420696E697469616C697A65643D7472';
wwv_flow_api.g_varchar2_table(587) := '756520616E642072756E20746865206F6E6C6F61642063616C6C6261636B204946207375636365737366756C0D0A0909696620286F2E696E697450616E657329205F696E69744C61796F7574456C656D656E747328293B0D0A0D0A090964656C65746520';
wwv_flow_api.g_varchar2_table(588) := '732E6372656174696E674C61796F75743B0D0A0D0A090972657475726E2073746174652E696E697469616C697A65643B0D0A097D0D0A0D0A092F2A2A0D0A09202A20496E697469616C697A6520746865206C61796F7574204946206E6F7420616C726561';
wwv_flow_api.g_varchar2_table(589) := '64790D0A09202A0D0A09202A20407365652020416C6C206D6574686F647320696E20496E7374616E63652072756E207468697320746573740D0A09202A204072657475726E2020626F6F6C65616E0974727565203D206C61796F7574456C656D656E7473';
wwv_flow_api.g_varchar2_table(590) := '2068617665206265656E20696E697469616C697A6564207C2066616C7365203D2070616E657320617265206E6F7420696E697469616C697A65642028796574290D0A09202A2F0D0A2C096973496E697469616C697A6564203D2066756E6374696F6E2028';
wwv_flow_api.g_varchar2_table(591) := '29207B0D0A09096966202873746174652E696E697469616C697A6564207C7C2073746174652E6372656174696E674C61796F7574292072657475726E20747275653B092F2F20616C726561647920696E697469616C697A65640D0A0909656C7365207265';
wwv_flow_api.g_varchar2_table(592) := '7475726E205F696E69744C61796F7574456C656D656E747328293B092F2F2074727920746F20696E69742070616E6573204E4F570D0A097D0D0A0D0A092F2A2A0D0A09202A20496E697469616C697A6520746865206C61796F7574202D2063616C6C6564';
wwv_flow_api.g_varchar2_table(593) := '206175746F6D61746963616C6C79207768656E6576657220616E20696E7374616E6365206F66206C61796F757420697320637265617465640D0A09202A0D0A09202A204073656520205F63726561746528292026206973496E697469616C697A65640D0A';
wwv_flow_api.g_varchar2_table(594) := '09202A2040706172616D207B626F6F6C65616E3D7D09095B72657472793D66616C73655D092F2F20696E646963617465732074686973206973206120326E64207472790D0A09202A204072657475726E2020416E206F626A65637420706F696E74657220';
wwv_flow_api.g_varchar2_table(595) := '746F2074686520696E7374616E636520637265617465640D0A09202A2F0D0A2C095F696E69744C61796F7574456C656D656E7473203D2066756E6374696F6E2028726574727929207B0D0A09092F2F20696E697469616C697A6520636F6E6669672F6F70';
wwv_flow_api.g_varchar2_table(596) := '74696F6E730D0A0909766172206F203D206F7074696F6E733B0D0A09092F2F2043414E4E4F5420696E69742070616E657320696E7369646520612068696464656E20636F6E7461696E6572210D0A09096966202821244E2E697328223A76697369626C65';
wwv_flow_api.g_varchar2_table(597) := '222929207B0D0A0909092F2F2068616E646C65204368726F6D652062756720776865726520706F7075702077696E646F772027686173206E6F20686569676874270D0A0909092F2F206966206C61796F757420697320424F445920656C656D656E742C20';
wwv_flow_api.g_varchar2_table(598) := '74727920616761696E20696E2035306D730D0A0909092F2F205345453A20687474703A2F2F6C61796F75742E6A71756572792D6465762E636F6D2F73616D706C65732F746573745F706F7075705F77696E646F772E68746D6C0D0A090909696620282021';
wwv_flow_api.g_varchar2_table(599) := '72657472792026262062726F777365722E7765626B697420262620244E5B305D2E7461674E616D65203D3D3D2022424F44592220290D0A0909090973657454696D656F75742866756E6374696F6E28297B205F696E69744C61796F7574456C656D656E74';
wwv_flow_api.g_varchar2_table(600) := '732874727565293B207D2C203530293B0D0A09090972657475726E2066616C73653B0D0A09097D0D0A0D0A09092F2F20612063656E7465722070616E652069732072657175697265642C20736F206D616B652073757265206974206578697374730D0A09';
wwv_flow_api.g_varchar2_table(601) := '09696620282167657450616E65282263656E74657222292E6C656E67746829207B0D0A09090972657475726E205F6C6F6728206F2E6572726F72732E63656E74657250616E654D697373696E6720293B0D0A09097D0D0A0D0A09092F2F2054454D502073';
wwv_flow_api.g_varchar2_table(602) := '7461746520736F206973496E697469616C697A65642072657475726E73207472756520647572696E6720696E69742070726F636573730D0A090973746174652E6372656174696E674C61796F7574203D20747275653B0D0A0D0A09092F2F207570646174';
wwv_flow_api.g_varchar2_table(603) := '6520436F6E7461696E65722064696D730D0A0909242E657874656E642873432C20656C44696D732820244E2C206F2E696E7365742029293B202F2F2070617373696E6720696E736574206D65616E7320444F204E4F5420696E636C75646520696E736574';
wwv_flow_api.g_varchar2_table(604) := '582076616C7565730D0A0D0A09092F2F20696E697469616C697A6520616C6C206C61796F757420656C656D656E74730D0A0909696E697450616E657328293B092F2F2073697A65202620706F736974696F6E2070616E6573202D2063616C6C7320696E69';
wwv_flow_api.g_varchar2_table(605) := '7448616E646C65732829202D2077686963682063616C6C7320696E6974526573697A61626C6528290D0A0D0A0909696620286F2E7363726F6C6C546F426F6F6B6D61726B4F6E4C6F616429207B0D0A090909766172206C203D2073656C662E6C6F636174';
wwv_flow_api.g_varchar2_table(606) := '696F6E3B0D0A090909696620286C2E6861736829206C2E7265706C61636528206C2E6861736820293B202F2F207363726F6C6C546F20426F6F6B6D61726B0D0A09097D0D0A0D0A09092F2F20636865636B20746F207365652069662074686973206C6179';
wwv_flow_api.g_varchar2_table(607) := '6F757420276E65737465642720696E7369646520612070616E650D0A090969662028496E7374616E63652E686173506172656E744C61796F7574290D0A0909096F2E726573697A655769746857696E646F77203D2066616C73653B0D0A09092F2F206269';
wwv_flow_api.g_varchar2_table(608) := '6E6420726573697A65416C6C282920666F72202774686973206C61796F757420696E7374616E63652720746F2077696E646F772E726573697A65206576656E740D0A0909656C736520696620286F2E726573697A655769746857696E646F77290D0A0909';
wwv_flow_api.g_varchar2_table(609) := '09242877696E646F77292E62696E642822726573697A652E222B207349442C2077696E646F77526573697A65293B0D0A0D0A090964656C6574652073746174652E6372656174696E674C61796F75743B0D0A090973746174652E696E697469616C697A65';
wwv_flow_api.g_varchar2_table(610) := '64203D20747275653B0D0A0D0A09092F2F20696E697420706C7567696E7320666F722074686973206C61796F75742C2069662074686572652061726520616E790D0A090972756E506C7567696E43616C6C6261636B732820496E7374616E63652C20242E';
wwv_flow_api.g_varchar2_table(611) := '6C61796F75742E6F6E526561647920293B0D0A0D0A09092F2F206E6F772072756E20746865206F6E6C6F61642063616C6C6261636B2C206966206578697374730D0A09095F72756E43616C6C6261636B7328226F6E6C6F61645F656E6422293B0D0A0D0A';
wwv_flow_api.g_varchar2_table(612) := '090972657475726E20747275653B202F2F20656C656D656E747320696E697469616C697A6564207375636365737366756C6C790D0A097D0D0A0D0A092F2A2A0D0A09202A20496E697469616C697A65206E6573746564206C61796F75747320666F722061';
wwv_flow_api.g_varchar2_table(613) := '2073706563696669632070616E65202D2063616E206F7074696F6E616C6C792070617373206C61796F75742D6F7074696F6E730D0A09202A0D0A09202A2040706172616D207B28737472696E677C4F626A656374297D096576745F6F725F70616E650954';
wwv_flow_api.g_varchar2_table(614) := '68652070616E65206265696E67206F70656E65642C2069653A206E6F7274682C20736F7574682C20656173742C206F7220776573740D0A09202A2040706172616D207B4F626A6563743D7D0909095B6F7074735D09094C61796F75742D6F7074696F6E73';
wwv_flow_api.g_varchar2_table(615) := '202D206966207061737365642C2077696C6C204F5645525252494445206F7074696F6E735B70616E655D2E6368696C6472656E0D0A09202A204072657475726E2020416E206F626A65637420706F696E74657220746F20746865206C61796F757420696E';
wwv_flow_api.g_varchar2_table(616) := '7374616E63652063726561746564202D206F72206E756C6C0D0A09202A2F0D0A2C096372656174654368696C6472656E203D2066756E6374696F6E20286576745F6F725F70616E652C206F70747329207B0D0A09097661720970616E65203D2065767450';
wwv_flow_api.g_varchar2_table(617) := '616E652E63616C6C28746869732C206576745F6F725F70616E65290D0A09092C092450093D202450735B70616E655D0D0A09093B0D0A090969662028212450292072657475726E3B0D0A0909766172092443093D202443735B70616E655D0D0A09092C09';
wwv_flow_api.g_varchar2_table(618) := '73093D2073746174655B70616E655D0D0A09092C096F093D206F7074696F6E735B70616E655D0D0A09092C09736D093D206F7074696F6E732E73746174654D616E6167656D656E74207C7C207B7D0D0A09092C09636F73203D206F707473203F20286F2E';
wwv_flow_api.g_varchar2_table(619) := '6368696C6472656E203D206F70747329203A206F2E6368696C6472656E0D0A09093B0D0A09096966202820242E6973506C61696E4F626A6563742820636F73202920290D0A090909636F73203D205B20636F73205D3B202F2F20636F6E76657274206120';
wwv_flow_api.g_varchar2_table(620) := '6861736820746F206120312D656C656D2061727261790D0A0909656C7365206966202821636F73207C7C2021242E697341727261792820636F732029290D0A09090972657475726E3B0D0A0D0A0909242E656163682820636F732C2066756E6374696F6E';
wwv_flow_api.g_varchar2_table(621) := '20286964782C20636F29207B0D0A090909696620282021242E6973506C61696E4F626A6563742820636F202920292072657475726E3B0D0A0D0A0909092F2F2064657465726D696E6520776869636820656C656D656E7420697320737570706F73656420';
wwv_flow_api.g_varchar2_table(622) := '746F2062652074686520276368696C6420636F6E7461696E6572270D0A0909092F2F2069662070616E652068617320612027636F6E7461696E657253656C6563746F7227204F5220612027636F6E74656E742D646976272C207573652074686F73652069';
wwv_flow_api.g_varchar2_table(623) := '6E7374656164206F66207468652070616E650D0A0909097661722024636F6E7461696E657273203D20636F2E636F6E7461696E657253656C6563746F72203F2024502E66696E642820636F2E636F6E7461696E657253656C6563746F722029203A202824';
wwv_flow_api.g_varchar2_table(624) := '43207C7C202450293B0D0A0D0A09090924636F6E7461696E6572732E656163682866756E6374696F6E28297B0D0A090909097661722024636F6E74093D20242874686973290D0A090909092C096368696C64093D2024636F6E742E6461746128226C6179';
wwv_flow_api.g_varchar2_table(625) := '6F75742229202F2F097365652069662061206368696C642D6C61796F757420414C524541445920657869737473206F6E207468697320656C656D656E740D0A090909093B0D0A090909092F2F206966206E6F206C61796F7574206578697374732C206275';
wwv_flow_api.g_varchar2_table(626) := '74206368696C6472656E20617265207365742C2074727920746F2063726561746520746865206C61796F7574206E6F770D0A0909090969662028216368696C6429207B0D0A09090909092F2F20544F444F3A207365652061626F7574206D6F76696E6720';
wwv_flow_api.g_varchar2_table(627) := '7468697320746F207468652073746174654D616E6167656D656E7420706C7567696E2C2061732061206D6574686F640D0A09090909092F2F20736574206120756E69717565206368696C642D696E7374616E6365206B657920666F722074686973206C61';
wwv_flow_api.g_varchar2_table(628) := '796F75742C206966206E6F7420616C7265616479207365740D0A0909090909736574496E7374616E63654B6579287B20636F6E7461696E65723A2024636F6E742C206F7074696F6E733A20636F207D2C207320293B0D0A09090909092F2F204966205448';
wwv_flow_api.g_varchar2_table(629) := '4953206C61796F7574206861732061206861736820696E2073746174654D616E6167656D656E742E6175746F4C6F61642C0D0A09090909092F2F207468656E2073656520696620697420616C736F20636F6E7461696E732073746174652D646174612066';
wwv_flow_api.g_varchar2_table(630) := '6F722074686973206368696C642D6C61796F75740D0A09090909092F2F20496620736F2C20636F7079207468652073746174654461746120746F206368696C642E6F7074696F6E732E73746174654D616E6167656D656E742E6175746F4C6F61640D0A09';
wwv_flow_api.g_varchar2_table(631) := '090909096966202820736D2E696E636C7564654368696C6472656E2026262073746174652E7374617465446174615B70616E655D2029207B0D0A0909090909092F2F0954484953206C61796F757427732073746174652077617320636163686564207768';
wwv_flow_api.g_varchar2_table(632) := '656E2069747320737461746520776173206C6F616465640D0A0909090909097661720970616E654368696C6472656E203D2073746174652E7374617465446174615B70616E655D2E6368696C6472656E207C7C207B7D0D0A0909090909092C096368696C';
wwv_flow_api.g_varchar2_table(633) := '645374617465093D2070616E654368696C6472656E5B20636F2E696E7374616E63654B6579205D0D0A0909090909092C09636F5F736D09093D20636F2E73746174654D616E6167656D656E74207C7C2028636F2E73746174654D616E6167656D656E7420';
wwv_flow_api.g_varchar2_table(634) := '3D207B206175746F4C6F61643A2074727565207D290D0A0909090909093B0D0A0909090909092F2F20434F5059207468652073746174654461746120696E746F20746865206175746F4C6F6164206B65790D0A0909090909096966202820636F5F736D2E';
wwv_flow_api.g_varchar2_table(635) := '6175746F4C6F6164203D3D3D2074727565202626206368696C6453746174652029207B0D0A09090909090909636F5F736D2E6175746F536176650909093D2066616C73653B202F2F2064697361626C65206175746F536176652062656361757365207361';
wwv_flow_api.g_varchar2_table(636) := '76696E672068616E646C656420627920706172656E742D6C61796F75740D0A09090909090909636F5F736D2E696E636C7564654368696C6472656E093D20747275653B20202F2F2063617363616465206F7074696F6E202D20464F52204E4F570D0A0909';
wwv_flow_api.g_varchar2_table(637) := '0909090909636F5F736D2E6175746F4C6F6164203D20242E657874656E6428747275652C207B7D2C206368696C645374617465293B202F2F20434F5059207468652073746174652D686173680D0A0909090909097D0D0A09090909097D0D0A0D0A090909';
wwv_flow_api.g_varchar2_table(638) := '09092F2F2063726561746520746865206C61796F75740D0A09090909096368696C64203D2024636F6E742E6C61796F75742820636F20293B0D0A0D0A09090909092F2F206966207375636365737366756C2C2075706461746520646174610D0A09090909';
wwv_flow_api.g_varchar2_table(639) := '09696620286368696C6429207B0D0A0909090909092F2F2061646420746865206368696C6420616E642075706461746520616C6C206C61796F75742D706F696E746572730D0A0909090909092F2F204D4159206861766520616C7265616479206265656E';
wwv_flow_api.g_varchar2_table(640) := '20646F6E65206279206368696C642D6C61796F75742063616C6C696E6720706172656E742E726566726573684368696C6472656E28290D0A090909090909726566726573684368696C6472656E282070616E652C206368696C6420293B0D0A0909090909';
wwv_flow_api.g_varchar2_table(641) := '7D0D0A090909097D0D0A0909097D293B0D0A09097D293B0D0A097D0D0A0D0A2C09736574496E7374616E63654B6579203D2066756E6374696F6E20286368696C642C20706172656E7450616E65537461746529207B0D0A09092F2F206372656174652061';
wwv_flow_api.g_varchar2_table(642) := '206E616D6564206B657920666F722075736520696E20737461746520616E6420696E7374616E6365206272616E636865730D0A0909766172092463093D206368696C642E636F6E7461696E65720D0A09092C096F093D206368696C642E6F7074696F6E73';
wwv_flow_api.g_varchar2_table(643) := '0D0A09092C09736D093D206F2E73746174654D616E6167656D656E740D0A09092C096B6579093D206F2E696E7374616E63654B6579207C7C2024632E6461746128226C61796F7574496E7374616E63654B657922290D0A09093B0D0A090969662028216B';
wwv_flow_api.g_varchar2_table(644) := '657929206B6579203D2028736D20262620736D2E636F6F6B6965203F20736D2E636F6F6B69652E6E616D65203A20272729207C7C206F2E6E616D653B202F2F206C6F6F6B20666F722061206E616D652F6B65790D0A090969662028216B657929206B6579';
wwv_flow_api.g_varchar2_table(645) := '203D20226C61796F7574222B20282B2B706172656E7450616E6553746174652E6368696C64496478293B092F2F206966206E6F206E616D652F6B657920666F756E642C2067656E6572617465206F6E650D0A0909656C7365206B6579203D206B65792E72';
wwv_flow_api.g_varchar2_table(646) := '65706C616365282F5B5E5C772D5D2F67692C20275F27292E7265706C616365282F5F7B322C7D2F672C20275F27293B09202F2F20656E737572652069732076616C696420617320612068617368206B65790D0A09096F2E696E7374616E63654B6579203D';
wwv_flow_api.g_varchar2_table(647) := '206B65793B0D0A090924632E6461746128226C61796F7574496E7374616E63654B6579222C206B6579293B202F2F2075736566756C206966206C61796F75742069732064657374726F79656420616E64207468656E207265637265617465640D0A090972';
wwv_flow_api.g_varchar2_table(648) := '657475726E206B65793B0D0A097D0D0A0D0A092F2A2A0D0A09202A2040706172616D207B737472696E677D090970616E6509095468652070616E65206265696E67206F70656E65642C2069653A206E6F7274682C20736F7574682C20656173742C206F72';
wwv_flow_api.g_varchar2_table(649) := '20776573740D0A09202A2040706172616D207B4F626A6563743D7D09096E65774368696C64094E6577206368696C642D6C61796F757420496E7374616E636520746F2061646420746F20746869732070616E650D0A09202A2F0D0A2C0972656672657368';
wwv_flow_api.g_varchar2_table(650) := '4368696C6472656E203D2066756E6374696F6E202870616E652C206E65774368696C6429207B0D0A0909766172092450093D202450735B70616E655D0D0A09092C097043093D206368696C6472656E5B70616E655D0D0A09092C0973093D207374617465';
wwv_flow_api.g_varchar2_table(651) := '5B70616E655D0D0A09092C096F0D0A09093B0D0A09092F2F20636865636B20666F722064657374726F7928296564206C61796F75747320616E642075706461746520746865206368696C6420706F696E746572732026206172726179730D0A0909696620';
wwv_flow_api.g_varchar2_table(652) := '28242E6973506C61696E4F626A65637428207043202929207B0D0A090909242E65616368282070432C2066756E6374696F6E20286B65792C206368696C6429207B0D0A09090909696620286368696C642E64657374726F796564292064656C6574652070';
wwv_flow_api.g_varchar2_table(653) := '435B6B65795D0D0A0909097D293B0D0A0909092F2F206966206E6F206D6F7265206368696C6472656E2C2072656D6F766520746865206368696C6472656E20686173680D0A09090969662028242E6973456D7074794F626A656374282070432029290D0A';
wwv_flow_api.g_varchar2_table(654) := '090909097043203D206368696C6472656E5B70616E655D203D206E756C6C3B202F2F20636C656172206368696C6472656E20686173680D0A09097D0D0A0D0A09092F2F207365652069662074686572652069732061206469726563746C792D6E65737465';
wwv_flow_api.g_varchar2_table(655) := '64206C61796F757420696E7369646520746869732070616E650D0A09092F2F2069662074686572652069732C207468656E2074686572652063616E206265206F6E6C79204F4E45206368696C642D6C61796F75742C20736F20636865636B20746861742E';
wwv_flow_api.g_varchar2_table(656) := '2E2E0D0A090969662028216E65774368696C642026262021704329207B0D0A0909096E65774368696C64203D2024502E6461746128226C61796F757422293B0D0A09097D0D0A0D0A09092F2F2069662061206E65774368696C6420696E7374616E636520';
wwv_flow_api.g_varchar2_table(657) := '776173207061737365642C2061646420697420746F206368696C6472656E5B70616E655D0D0A0909696620286E65774368696C6429207B0D0A0909092F2F20757064617465206368696C642E73746174650D0A0909096E65774368696C642E6861735061';
wwv_flow_api.g_varchar2_table(658) := '72656E744C61796F7574203D20747275653B202F2F2073657420706172656E742D666C616720696E206368696C640D0A0909092F2F20696E7374616E63654B65792069732061206B65792D6E616D65207573656420696E20626F74682073746174652061';
wwv_flow_api.g_varchar2_table(659) := '6E64206368696C6472656E0D0A0909096F203D206E65774368696C642E6F7074696F6E733B0D0A0909092F2F20736574206120756E69717565206368696C642D696E7374616E6365206B657920666F722074686973206C61796F75742C206966206E6F74';
wwv_flow_api.g_varchar2_table(660) := '20616C7265616479207365740D0A090909736574496E7374616E63654B657928206E65774368696C642C207320293B0D0A0909092F2F2061646420706F696E74657220746F2070616E652E6368696C6472656E20686173680D0A09090969662028217043';
wwv_flow_api.g_varchar2_table(661) := '29207043203D206368696C6472656E5B70616E655D203D207B7D3B202F2F2063726561746520616E20656D707479206368696C6472656E20686173680D0A09090970435B206F2E696E7374616E63654B6579205D203D206E65774368696C642E636F6E74';
wwv_flow_api.g_varchar2_table(662) := '61696E65722E6461746128226C61796F757422293B202F2F20616464206368696C644C61796F757420696E7374616E63650D0A09097D0D0A0D0A09092F2F20414C574159532072656672657368207468652070616E652E6368696C6472656E20616C6961';
wwv_flow_api.g_varchar2_table(663) := '732C206576656E206966206E756C6C0D0A0909496E7374616E63655B70616E655D2E6368696C6472656E203D206368696C6472656E5B70616E655D3B0D0A0D0A09092F2F206966206E65774368696C6420776173204E4F5420706173736564202D207365';
wwv_flow_api.g_varchar2_table(664) := '652069662074686572652069732061206368696C64206C61796F7574204E4F570D0A090969662028216E65774368696C6429207B0D0A0909096372656174654368696C6472656E2870616E65293B202F2F204D4159206372656174652061206368696C64';
wwv_flow_api.g_varchar2_table(665) := '20616E642072652D63616C6C2074686973206D6574686F640D0A09097D0D0A097D0D0A0D0A2C0977696E646F77526573697A65203D2066756E6374696F6E202829207B0D0A0909766172096F203D206F7074696F6E730D0A09092C0964656C6179203D20';
wwv_flow_api.g_varchar2_table(666) := '4E756D626572286F2E726573697A655769746857696E646F7744656C6179293B0D0A09096966202864656C6179203C203130292064656C6179203D203130303B202F2F204D555354206861766520612064656C6179210D0A09092F2F20726573697A696E';
wwv_flow_api.g_varchar2_table(667) := '67207573657320612064656C61792D6C6F6F7020626563617573652074686520726573697A65206576656E74206669726573207265706561746C79202D2065786365707420696E2046462C206275742064656C617920616E797761790D0A090974696D65';
wwv_flow_api.g_varchar2_table(668) := '722E636C656172282277696E526573697A6522293B202F2F20696620616C72656164792072756E6E696E670D0A090974696D65722E736574282277696E526573697A65222C2066756E6374696F6E28297B0D0A09090974696D65722E636C656172282277';
wwv_flow_api.g_varchar2_table(669) := '696E526573697A6522293B0D0A09090974696D65722E636C656172282277696E526573697A65526570656174657222293B0D0A0909097661722064696D73203D20656C44696D732820244E2C206F2E696E73657420293B0D0A0909092F2F206F6E6C7920';
wwv_flow_api.g_varchar2_table(670) := '7472696767657220726573697A65416C6C282920696620636F6E7461696E657220686173206368616E6765642073697A650D0A0909096966202864696D732E696E6E6572576964746820213D3D2073432E696E6E65725769647468207C7C2064696D732E';
wwv_flow_api.g_varchar2_table(671) := '696E6E657248656967687420213D3D2073432E696E6E6572486569676874290D0A09090909726573697A65416C6C28293B0D0A09097D2C2064656C6179293B0D0A09092F2F20414C534F207365742066697865642D64656C61792074696D65722C206966';
wwv_flow_api.g_varchar2_table(672) := '206E6F7420616C72656164792072756E6E696E670D0A0909696620282174696D65722E646174615B2277696E526573697A655265706561746572225D292073657457696E646F77526573697A65526570656174657228293B0D0A097D0D0A0D0A2C097365';
wwv_flow_api.g_varchar2_table(673) := '7457696E646F77526573697A655265706561746572203D2066756E6374696F6E202829207B0D0A09097661722064656C6179203D204E756D626572286F7074696F6E732E726573697A655769746857696E646F774D617844656C6179293B0D0A09096966';
wwv_flow_api.g_varchar2_table(674) := '202864656C6179203E2030290D0A09090974696D65722E736574282277696E526573697A655265706561746572222C2066756E6374696F6E28297B2073657457696E646F77526573697A65526570656174657228293B20726573697A65416C6C28293B20';
wwv_flow_api.g_varchar2_table(675) := '7D2C2064656C6179293B0D0A097D0D0A0D0A2C09756E6C6F6164203D2066756E6374696F6E202829207B0D0A0909766172206F203D206F7074696F6E733B0D0A0D0A09095F72756E43616C6C6261636B7328226F6E756E6C6F61645F737461727422293B';
wwv_flow_api.g_varchar2_table(676) := '0D0A0D0A09092F2F207472696767657220706C7567696E2063616C6C616261636B7320666F722074686973206C61796F7574202865673A2073746174654D616E6167656D656E74290D0A090972756E506C7567696E43616C6C6261636B732820496E7374';
wwv_flow_api.g_varchar2_table(677) := '616E63652C20242E6C61796F75742E6F6E556E6C6F616420293B0D0A0D0A09095F72756E43616C6C6261636B7328226F6E756E6C6F61645F656E6422293B0D0A097D0D0A0D0A092F2A2A0D0A09202A2056616C696461746520616E6420696E697469616C';
wwv_flow_api.g_varchar2_table(678) := '697A6520636F6E7461696E65722043535320616E64206576656E74730D0A09202A0D0A09202A204073656520205F63726561746528290D0A09202A2F0D0A2C095F696E6974436F6E7461696E6572203D2066756E6374696F6E202829207B0D0A09097661';
wwv_flow_api.g_varchar2_table(679) := '720D0A0909094E09093D20244E5B305D090D0A09092C09244809093D2024282268746D6C22290D0A09092C0974616709093D2073432E7461674E616D65203D204E2E7461674E616D650D0A09092C09696409093D2073432E6964203D204E2E69640D0A09';
wwv_flow_api.g_varchar2_table(680) := '092C09636C7309093D2073432E636C6173734E616D65203D204E2E636C6173734E616D650D0A09092C096F09093D206F7074696F6E730D0A09092C096E616D65093D206F2E6E616D650D0A09092C0970726F7073093D2022706F736974696F6E2C6D6172';
wwv_flow_api.g_varchar2_table(681) := '67696E2C70616464696E672C626F72646572220D0A09092C0963737309093D20226C61796F7574435353220D0A09092C0943535309093D207B7D0D0A09092C0968696409093D202268696464656E22202F2F20757365642041204C4F54210D0A09092F2F';
wwv_flow_api.g_varchar2_table(682) := '09736565206966207468697320636F6E7461696E65722069732061202770616E652720696E7369646520616E206F757465722D6C61796F75740D0A09092C09706172656E74093D20244E2E646174612822706172656E744C61796F75742229092F2F2070';
wwv_flow_api.g_varchar2_table(683) := '6172656E742D6C61796F757420496E7374616E63650D0A09092C0970616E65093D20244E2E6461746128226C61796F757445646765222909092F2F2070616E652D6E616D6520696E20706172656E742D6C61796F75740D0A09092C0969734368696C6409';
wwv_flow_api.g_varchar2_table(684) := '3D20706172656E742026262070616E650D0A09092C096E756D09093D20242E6C61796F75742E6373734E756D0D0A09092C0924706172656E742C206E0D0A09093B0D0A09092F2F207343203D2073746174652E636F6E7461696E65720D0A090973432E73';
wwv_flow_api.g_varchar2_table(685) := '656C6563746F72203D20244E2E73656C6563746F722E73706C697428222E736C69636522295B305D3B0D0A090973432E72656609093D20286F2E6E616D65203F206F2E6E616D65202B27206C61796F7574202F2027203A20272729202B20746167202B20';
wwv_flow_api.g_varchar2_table(686) := '286964203F202223222B6964203A20636C73203F20272E5B272B636C732B275D27203A202727293B202F2F207573656420696E206D657373616765730D0A090973432E6973426F6479093D2028746167203D3D3D2022424F445922293B0D0A0D0A09092F';
wwv_flow_api.g_varchar2_table(687) := '2F2074727920746F2066696E64206120706172656E742D6C61796F75740D0A0909696620282169734368696C64202626202173432E6973426F647929207B0D0A09090924706172656E74203D20244E2E636C6F7365737428222E222B20242E6C61796F75';
wwv_flow_api.g_varchar2_table(688) := '742E64656661756C74732E70616E65732E70616E65436C617373293B0D0A090909706172656E74093D2024706172656E742E646174612822706172656E744C61796F757422293B0D0A09090970616E65093D2024706172656E742E6461746128226C6179';
wwv_flow_api.g_varchar2_table(689) := '6F75744564676522293B0D0A09090969734368696C64093D20706172656E742026262070616E653B0D0A09097D0D0A0D0A0909244E092E64617461287B0D0A090909096C61796F75743A20496E7374616E63650D0A0909092C096C61796F7574436F6E74';
wwv_flow_api.g_varchar2_table(690) := '61696E65723A20734944202F2F20464C414720746F20696E64696361746520746869732069732061206C61796F75742D636F6E7461696E6572202D20636F6E7461696E7320756E6971756520696E7465726E616C2049440D0A0909097D290D0A0909092E';
wwv_flow_api.g_varchar2_table(691) := '616464436C617373286F2E636F6E7461696E6572436C617373290D0A09093B0D0A0909766172206C61796F75744D6574686F6473203D207B0D0A09090964657374726F793A0927270D0A09092C09696E697450616E65733A0927270D0A09092C09726573';
wwv_flow_api.g_varchar2_table(692) := '697A65416C6C3A0927726573697A65416C6C270D0A09092C09726573697A653A090927726573697A65416C6C270D0A09097D3B0D0A09092F2F206C6F6F70206861736820616E642062696E6420616C6C206D6574686F6473202D20696E636C756465206C';
wwv_flow_api.g_varchar2_table(693) := '61796F75744944206E616D6573706163696E670D0A0909666F7220286E616D6520696E206C61796F75744D6574686F647329207B0D0A090909244E2E62696E6428226C61796F7574222B206E616D652E746F4C6F776572436173652829202B222E222B20';
wwv_flow_api.g_varchar2_table(694) := '7349442C20496E7374616E63655B206C61796F75744D6574686F64735B6E616D655D207C7C206E616D65205D293B0D0A09097D0D0A0D0A09092F2F206966207468697320636F6E7461696E657220697320616E6F74686572206C61796F75742773202770';
wwv_flow_api.g_varchar2_table(695) := '616E65272C207468656E20736574206368696C642F706172656E7420706F696E746572730D0A09096966202869734368696C6429207B0D0A0909092F2F2075706461746520706172656E7420666C61670D0A090909496E7374616E63652E686173506172';
wwv_flow_api.g_varchar2_table(696) := '656E744C61796F7574203D20747275653B0D0A0909092F2F2073657420706F696E7465727320746F2054484953206368696C642D6C61796F75742028496E7374616E63652920696E20706172656E742D6C61796F75740D0A090909706172656E742E7265';
wwv_flow_api.g_varchar2_table(697) := '66726573684368696C6472656E282070616E652C20496E7374616E636520293B0D0A09097D0D0A0D0A09092F2F2053415645206F726967696E616C20636F6E7461696E65722043535320666F722075736520696E2064657374726F7928290D0A09096966';
wwv_flow_api.g_varchar2_table(698) := '202821244E2E64617461286373732929207B0D0A0909092F2F2068616E646C652070726F7073206C696B65206F766572666C6F7720646966666572656E7420666F7220424F445920262048544D4C202D20686173202773797374656D2064656661756C74';
wwv_flow_api.g_varchar2_table(699) := '272076616C7565730D0A0909096966202873432E6973426F647929207B0D0A090909092F2F2053415645203C424F44593E204353530D0A09090909244E2E64617461286373732C20242E657874656E6428207374796C657328244E2C2070726F7073292C';
wwv_flow_api.g_varchar2_table(700) := '207B0D0A09090909096865696768743A0909244E2E637373282268656967687422290D0A090909092C096F766572666C6F773A09244E2E63737328226F766572666C6F7722290D0A090909092C096F766572666C6F77583A09244E2E63737328226F7665';
wwv_flow_api.g_varchar2_table(701) := '72666C6F775822290D0A090909092C096F766572666C6F77593A09244E2E63737328226F766572666C6F775922290D0A090909097D29293B0D0A090909092F2F20414C534F2053415645203C48544D4C3E204353530D0A0909090924482E646174612863';
wwv_flow_api.g_varchar2_table(702) := '73732C20242E657874656E6428207374796C65732824482C202770616464696E6727292C207B0D0A09090909096865696768743A0909226175746F22202F2F20464620776F756C642072657475726E20612066697865642070782D73697A65210D0A0909';
wwv_flow_api.g_varchar2_table(703) := '09092C096F766572666C6F773A0924482E63737328226F766572666C6F7722290D0A090909092C096F766572666C6F77583A0924482E63737328226F766572666C6F775822290D0A090909092C096F766572666C6F77593A0924482E63737328226F7665';
wwv_flow_api.g_varchar2_table(704) := '72666C6F775922290D0A090909097D29293B0D0A0909097D0D0A090909656C7365202F2F2068616E646C652070726F7073206E6F726D616C6C7920666F72206E6F6E2D626F647920656C656D656E74730D0A09090909244E2E64617461286373732C2073';
wwv_flow_api.g_varchar2_table(705) := '74796C657328244E2C2070726F70732B222C746F702C626F74746F6D2C6C6566742C72696768742C77696474682C6865696768742C6F766572666C6F772C6F766572666C6F77582C6F766572666C6F7759222920293B0D0A09097D0D0A0D0A0909747279';
wwv_flow_api.g_varchar2_table(706) := '207B0D0A0909092F2F20636F6D6D6F6E20636F6E7461696E6572204353530D0A090909435353203D207B0D0A090909096F766572666C6F773A096869640D0A0909092C096F766572666C6F77583A096869640D0A0909092C096F766572666C6F77593A09';
wwv_flow_api.g_varchar2_table(707) := '6869640D0A0909097D3B0D0A090909244E2E637373282043535320293B0D0A0D0A090909696620286F2E696E7365742026262021242E6973506C61696E4F626A656374286F2E696E7365742929207B0D0A090909092F2F2063616E207370656369667920';
wwv_flow_api.g_varchar2_table(708) := '612073696E676C65206E756D62657220666F7220657175616C206F757473657420616C6C2D61726F756E640D0A090909096E203D207061727365496E74286F2E696E7365742C20313029207C7C20300D0A090909096F2E696E736574203D207B0D0A0909';
wwv_flow_api.g_varchar2_table(709) := '090909746F703A096E0D0A090909092C09626F74746F6D3A096E0D0A090909092C096C6566743A096E0D0A090909092C0972696768743A096E0D0A090909097D3B0D0A0909097D0D0A0D0A0909092F2F20666F726D61742068746D6C202620626F647920';
wwv_flow_api.g_varchar2_table(710) := '6966207468697320697320612066756C6C2070616765206C61796F75740D0A0909096966202873432E6973426F647929207B0D0A090909092F2F2069662048544D4C206861732070616464696E672C20757365207468697320617320616E206F75746572';
wwv_flow_api.g_varchar2_table(711) := '2D73706163696E672061726F756E6420424F44590D0A0909090969662028216F2E6F757473657429207B0D0A09090909092F2F207573652070616464696E672066726F6D20706172656E742D656C656D202848544D4C29206173206F75747365740D0A09';
wwv_flow_api.g_varchar2_table(712) := '090909096F2E6F7574736574203D207B0D0A090909090909746F703A096E756D2824482C202270616464696E67546F7022290D0A09090909092C09626F74746F6D3A096E756D2824482C202270616464696E67426F74746F6D22290D0A09090909092C09';
wwv_flow_api.g_varchar2_table(713) := '6C6566743A096E756D2824482C202270616464696E674C65667422290D0A09090909092C0972696768743A096E756D2824482C202270616464696E67526967687422290D0A09090909097D3B0D0A090909097D0D0A09090909656C736520696620282124';
wwv_flow_api.g_varchar2_table(714) := '2E6973506C61696E4F626A656374286F2E6F75747365742929207B0D0A09090909092F2F2063616E207370656369667920612073696E676C65206E756D62657220666F7220657175616C206F757473657420616C6C2D61726F756E640D0A09090909096E';
wwv_flow_api.g_varchar2_table(715) := '203D207061727365496E74286F2E6F75747365742C20313029207C7C20300D0A09090909096F2E6F7574736574203D207B0D0A090909090909746F703A096E0D0A09090909092C09626F74746F6D3A096E0D0A09090909092C096C6566743A096E0D0A09';
wwv_flow_api.g_varchar2_table(716) := '090909092C0972696768743A096E0D0A09090909097D3B0D0A090909097D0D0A090909092F2F2048544D4C0D0A0909090924482E637373282043535320292E637373287B0D0A09090909096865696768743A09092231303025220D0A090909092C09626F';
wwv_flow_api.g_varchar2_table(717) := '726465723A0909226E6F6E6522092F2F206E6F20626F72646572206F722070616464696E6720616C6C6F776564207768656E207573696E6720686569676874203D20313030250D0A090909092C0970616464696E673A093009092F2F20646974746F0D0A';
wwv_flow_api.g_varchar2_table(718) := '090909092C096D617267696E3A0909300D0A090909097D293B0D0A090909092F2F20424F44590D0A090909096966202862726F777365722E697349453629207B0D0A09090909092F2F204945362043414E4E4F54207573652074686520747269636B206F';
wwv_flow_api.g_varchar2_table(719) := '662073657474696E67206162736F6C75746520706F736974696F6E696E67206F6E20616C6C2034207369646573202D206D75737420686176652027686569676874270D0A0909090909244E2E637373287B0D0A09090909090977696474683A0909223130';
wwv_flow_api.g_varchar2_table(720) := '3025220D0A09090909092C096865696768743A09092231303025220D0A09090909092C09626F726465723A0909226E6F6E6522092F2F206E6F20626F72646572206F722070616464696E6720616C6C6F776564207768656E207573696E67206865696768';
wwv_flow_api.g_varchar2_table(721) := '74203D20313030250D0A09090909092C0970616464696E673A093009092F2F20646974746F0D0A09090909092C096D617267696E3A0909300D0A09090909092C09706F736974696F6E3A092272656C6174697665220D0A09090909097D293B0D0A090909';
wwv_flow_api.g_varchar2_table(722) := '09092F2F20636F6E7665727420626F64792070616464696E6720746F20616E20696E736574206F7074696F6E202D2074686520626F726465722063616E6E6F74206265206D6561737572656420696E20494536210D0A090909090969662028216F2E696E';
wwv_flow_api.g_varchar2_table(723) := '73657429206F2E696E736574203D20656C44696D732820244E20292E696E7365743B0D0A090909097D0D0A09090909656C7365207B202F2F20757365206162736F6C75746520706F736974696F6E696E6720666F7220424F445920746F20616C6C6F7720';
wwv_flow_api.g_varchar2_table(724) := '626F726465727320262070616464696E6720776974686F7574206F766572666C6F770D0A0909090909244E2E637373287B0D0A09090909090977696474683A0909226175746F220D0A09090909092C096865696768743A0909226175746F220D0A090909';
wwv_flow_api.g_varchar2_table(725) := '09092C096D617267696E3A0909300D0A09090909092C09706F736974696F6E3A09226162736F6C75746522092F2F20616C6C6F777320666F7220626F7264657220616E642070616464696E67206F6E20424F44590D0A09090909097D293B0D0A09090909';
wwv_flow_api.g_varchar2_table(726) := '092F2F206170706C7920656467652D706F736974696F6E696E6720637265617465642061626F76650D0A0909090909244E2E63737328206F2E6F757473657420293B0D0A090909097D0D0A090909092F2F207365742063757272656E74206C61796F7574';
wwv_flow_api.g_varchar2_table(727) := '2D636F6E7461696E65722064696D656E73696F6E730D0A09090909242E657874656E642873432C20656C44696D732820244E2C206F2E696E7365742029293B202F2F2070617373696E6720696E736574206D65616E7320444F204E4F5420696E636C7564';
wwv_flow_api.g_varchar2_table(728) := '6520696E736574582076616C7565730D0A0909097D0D0A090909656C7365207B0D0A090909092F2F20636F6E7461696E6572204D55535420686176652027706F736974696F6E270D0A090909097661720970203D20244E2E6373732822706F736974696F';
wwv_flow_api.g_varchar2_table(729) := '6E22293B0D0A09090909696620282170207C7C2021702E6D61746368282F2866697865647C6162736F6C7574657C72656C6174697665292F29290D0A0909090909244E2E6373732822706F736974696F6E222C2272656C617469766522293B0D0A0D0A09';
wwv_flow_api.g_varchar2_table(730) := '0909092F2F207365742063757272656E74206C61796F75742D636F6E7461696E65722064696D656E73696F6E730D0A090909096966202820244E2E697328223A76697369626C6522292029207B0D0A0909090909242E657874656E642873432C20656C44';
wwv_flow_api.g_varchar2_table(731) := '696D732820244E2C206F2E696E7365742029293B202F2F2070617373696E6720696E736574206D65616E7320444F204E4F54206368616E676520696E73657458202870616464696E67292076616C7565730D0A09090909096966202873432E696E6E6572';
wwv_flow_api.g_varchar2_table(732) := '486569676874203C203129202F2F20636F6E7461696E657220686173206E6F202768656967687427202D207761726E20646576656C6F7065720D0A0909090909095F6C6F6728206F2E6572726F72732E6E6F436F6E7461696E65724865696768742E7265';
wwv_flow_api.g_varchar2_table(733) := '706C616365282F434F4E5441494E45522F2C2073432E7265662920293B0D0A090909097D0D0A0909097D0D0A0D0A0909092F2F20696620636F6E7461696E657220686173206D696E2D77696474682F6865696768742C207468656E20656E61626C652073';
wwv_flow_api.g_varchar2_table(734) := '63726F6C6C6261722873290D0A09090969662028206E756D28244E2C20226D696E5769647468222920202920244E2E706172656E7428292E63737328226F766572666C6F7758222C226175746F22293B0D0A09090969662028206E756D28244E2C20226D';
wwv_flow_api.g_varchar2_table(735) := '696E4865696768742229202920244E2E706172656E7428292E63737328226F766572666C6F7759222C226175746F22293B0D0A0D0A09097D2063617463682028657829207B7D0D0A097D0D0A0D0A092F2A2A0D0A09202A2042696E64206C61796F757420';
wwv_flow_api.g_varchar2_table(736) := '686F746B657973202D206966206F7074696F6E7320656E61626C65640D0A09202A0D0A09202A204073656520205F637265617465282920616E642061646450616E6528290D0A09202A2040706172616D207B737472696E673D7D095B70616E65733D2222';
wwv_flow_api.g_varchar2_table(737) := '5D09546865206564676528732920746F2070726F636573730D0A09202A2F0D0A2C09696E6974486F746B657973203D2066756E6374696F6E202870616E657329207B0D0A090970616E6573203D2070616E6573203F2070616E65732E73706C697428222C';
wwv_flow_api.g_varchar2_table(738) := '2229203A205F632E626F7264657250616E65733B0D0A09092F2F2062696E64206B6579446F776E20746F206361707475726520686F746B6579732C206966206F7074696F6E20656E61626C656420666F7220414E592070616E650D0A0909242E65616368';
wwv_flow_api.g_varchar2_table(739) := '2870616E65732C2066756E6374696F6E2028692C2070616E6529207B0D0A090909766172206F203D206F7074696F6E735B70616E655D3B0D0A090909696620286F2E656E61626C65437572736F72486F746B6579207C7C206F2E637573746F6D486F746B';
wwv_flow_api.g_varchar2_table(740) := '657929207B0D0A090909092428646F63756D656E74292E62696E6428226B6579646F776E2E222B207349442C206B6579446F776E293B202F2F206F6E6C79206E65656420746F2062696E642074686973204F4E43450D0A0909090972657475726E206661';
wwv_flow_api.g_varchar2_table(741) := '6C73653B202F2F20425245414B202D2062696E64696E672077617320646F6E650D0A0909097D0D0A09097D293B0D0A097D0D0A0D0A092F2A2A0D0A09202A204275696C642066696E616C204F5054494F4E5320646174610D0A09202A0D0A09202A204073';
wwv_flow_api.g_varchar2_table(742) := '656520205F63726561746528290D0A09202A2F0D0A2C09696E69744F7074696F6E73203D2066756E6374696F6E202829207B0D0A090976617220646174612C20642C2070616E652C206B65792C2076616C2C20692C20632C206F3B0D0A0D0A09092F2F20';
wwv_flow_api.g_varchar2_table(743) := '726570726F6365737320757365722773206C61796F75742D6F7074696F6E7320746F206861766520636F7272656374206F7074696F6E73207375622D6B6579207374727563747572650D0A09096F707473203D20242E6C61796F75742E7472616E73666F';
wwv_flow_api.g_varchar2_table(744) := '726D4461746128206F7074732C207472756520293B202F2F2070616E6573203D2064656661756C74207375626B65790D0A0D0A09092F2F206175746F2D72656E616D65206F6C64206F7074696F6E7320666F72206261636B7761726420636F6D70617469';
wwv_flow_api.g_varchar2_table(745) := '62696C6974790D0A09096F707473203D20242E6C61796F75742E6261636B77617264436F6D7061746962696C6974792E72656E616D65416C6C4F7074696F6E7328206F70747320293B0D0A0D0A09092F2F20696620757365722D6F7074696F6E73206861';
wwv_flow_api.g_varchar2_table(746) := '73202770616E657327206B6579202870616E652D64656661756C7473292C20636C65616E2069742E2E2E0D0A09096966202821242E6973456D7074794F626A656374286F7074732E70616E65732929207B0D0A0909092F2F2052454D4F564520616E7920';
wwv_flow_api.g_varchar2_table(747) := '70616E652D64656661756C74732074686174204D55535420626520736574207065722D70616E650D0A09090964617461203D20242E6C61796F75742E6F7074696F6E734D61702E6E6F44656661756C743B0D0A090909666F722028693D302C20633D6461';
wwv_flow_api.g_varchar2_table(748) := '74612E6C656E6774683B20693C633B20692B2B29207B0D0A090909096B6579203D20646174615B695D3B0D0A0909090964656C657465206F7074732E70616E65735B6B65795D3B202F2F204F4B20696620646F6573206E6F742065786973740D0A090909';
wwv_flow_api.g_varchar2_table(749) := '7D0D0A0909092F2F2052454D4F564520616E79206C61796F75742D6F7074696F6E732073706563696669656420756E646572206F7074732E70616E65730D0A09090964617461203D20242E6C61796F75742E6F7074696F6E734D61702E6C61796F75743B';
wwv_flow_api.g_varchar2_table(750) := '0D0A090909666F722028693D302C20633D646174612E6C656E6774683B20693C633B20692B2B29207B0D0A090909096B6579203D20646174615B695D3B0D0A0909090964656C657465206F7074732E70616E65735B6B65795D3B202F2F204F4B20696620';
wwv_flow_api.g_varchar2_table(751) := '646F6573206E6F742065786973740D0A0909097D0D0A09097D0D0A0D0A09092F2F204D4F564520616E79204E4F4E2D6C61796F75742D6F7074696F6E732066726F6D206F7074732D726F6F7420746F206F7074732E70616E65730D0A090964617461203D';
wwv_flow_api.g_varchar2_table(752) := '20242E6C61796F75742E6F7074696F6E734D61702E6C61796F75743B0D0A090976617220726F6F744B657973203D20242E6C61796F75742E636F6E6669672E6F7074696F6E526F6F744B6579733B0D0A0909666F7220286B657920696E206F7074732920';
wwv_flow_api.g_varchar2_table(753) := '7B0D0A09090976616C203D206F7074735B6B65795D3B0D0A09090969662028242E696E4172726179286B65792C20726F6F744B65797329203C203020262620242E696E4172726179286B65792C206461746129203C203029207B0D0A0909090969662028';
wwv_flow_api.g_varchar2_table(754) := '216F7074732E70616E65735B6B65795D290D0A09090909096F7074732E70616E65735B6B65795D203D20242E6973506C61696E4F626A6563742876616C29203F20242E657874656E6428747275652C207B7D2C2076616C29203A2076616C3B0D0A090909';
wwv_flow_api.g_varchar2_table(755) := '0964656C657465206F7074735B6B65795D0D0A0909097D0D0A09097D0D0A0D0A09092F2F205354415254206279207570646174696E6720414C4C206F7074696F6E732066726F6D206F7074730D0A0909242E657874656E6428747275652C206F7074696F';
wwv_flow_api.g_varchar2_table(756) := '6E732C206F707473293B0D0A0D0A09092F2F204352454154452066696E616C206F7074696F6E732028616E6420636F6E6669672920666F7220454143482070616E650D0A0909242E65616368285F632E616C6C50616E65732C2066756E6374696F6E2028';
wwv_flow_api.g_varchar2_table(757) := '692C2070616E6529207B0D0A0D0A0909092F2F206170706C79202770616E652D64656661756C74732720746F20434F4E4649472E5B50414E455D0D0A0909095F635B70616E655D203D20242E657874656E6428747275652C207B7D2C205F632E70616E65';
wwv_flow_api.g_varchar2_table(758) := '732C205F635B70616E655D293B0D0A0D0A09090964203D206F7074696F6E732E70616E65733B0D0A0909096F203D206F7074696F6E735B70616E655D3B0D0A0D0A0909092F2F2063656E7465722D70616E65207573657320534F4D45206B65797320696E';
wwv_flow_api.g_varchar2_table(759) := '2064656661756C74732E70616E6573206272616E63680D0A0909096966202870616E65203D3D3D202763656E7465722729207B0D0A090909092F2F204F4E4C5920636F7079206B6579732066726F6D206F7074732E70616E6573206C697374656420696E';
wwv_flow_api.g_varchar2_table(760) := '3A20242E6C61796F75742E6F7074696F6E734D61702E63656E7465720D0A0909090964617461203D20242E6C61796F75742E6F7074696F6E734D61702E63656E7465723B09092F2F206C697374206F66202763656E7465722D70616E65206B657973270D';
wwv_flow_api.g_varchar2_table(761) := '0A09090909666F722028693D302C20633D646174612E6C656E6774683B20693C633B20692B2B29207B092F2F206C6F6F7020746865206C6973742E2E2E0D0A09090909096B6579203D20646174615B695D3B0D0A09090909092F2F206F6E6C79206E6565';
wwv_flow_api.g_varchar2_table(762) := '6420746F207573652070616E652D64656661756C742069662070616E652D73706563696669632076616C7565206E6F74207365740D0A090909090969662028216F7074732E63656E7465725B6B65795D20262620286F7074732E70616E65735B6B65795D';
wwv_flow_api.g_varchar2_table(763) := '207C7C20216F5B6B65795D29290D0A0909090909096F5B6B65795D203D20645B6B65795D3B202F2F2070616E652D64656661756C740D0A090909097D0D0A0909097D0D0A090909656C7365207B0D0A090909092F2F20626F726465722D70616E65732075';
wwv_flow_api.g_varchar2_table(764) := '736520414C4C206B65797320696E2064656661756C74732E70616E6573206272616E63680D0A090909096F203D206F7074696F6E735B70616E655D203D20242E657874656E6428747275652C207B7D2C20642C206F293B202F2F2072652D6170706C7920';
wwv_flow_api.g_varchar2_table(765) := '70616E652D7370656369666963206F7074732041465445522070616E652D64656661756C74730D0A0909090963726561746546784F7074696F6E73282070616E6520293B0D0A090909092F2F20656E7375726520616C6C20626F726465722D70616E652D';
wwv_flow_api.g_varchar2_table(766) := '737065636966696320626173652D636C61737365732065786973740D0A0909090969662028216F2E726573697A6572436C61737329096F2E726573697A6572436C617373093D202275692D6C61796F75742D726573697A6572223B0D0A09090909696620';
wwv_flow_api.g_varchar2_table(767) := '28216F2E746F67676C6572436C61737329096F2E746F67676C6572436C617373093D202275692D6C61796F75742D746F67676C6572223B0D0A0909097D0D0A0909092F2F20656E73757265207765206861766520626173652070616E652D636C61737320';
wwv_flow_api.g_varchar2_table(768) := '28414C4C2070616E6573290D0A09090969662028216F2E70616E65436C61737329206F2E70616E65436C617373203D202275692D6C61796F75742D70616E65223B0D0A09097D293B0D0A0D0A09092F2F20757064617465206F7074696F6E732E7A496E64';
wwv_flow_api.g_varchar2_table(769) := '657865732069662061207A496E6465782D6F7074696F6E207370656369666965640D0A0909766172207A6F093D206F7074732E7A496E6465780D0A09092C097A093D206F7074696F6E732E7A496E64657865733B0D0A0909696620287A6F203E20302920';
wwv_flow_api.g_varchar2_table(770) := '7B0D0A0909097A2E70616E655F6E6F726D616C09093D207A6F3B0D0A0909097A2E636F6E74656E745F6D61736B09093D206D6178287A6F2B312C207A2E636F6E74656E745F6D61736B293B092F2F204D494E203D202B310D0A0909097A2E726573697A65';
wwv_flow_api.g_varchar2_table(771) := '725F6E6F726D616C093D206D6178287A6F2B322C207A2E726573697A65725F6E6F726D616C293B092F2F204D494E203D202B320D0A09097D0D0A0D0A09092F2F2044454C455445202770616E657327206B6579206E6F7720746861742077652061726520';
wwv_flow_api.g_varchar2_table(772) := '646F6E65202D2076616C756573207765726520636F7069656420746F20454143482070616E650D0A090964656C657465206F7074696F6E732E70616E65733B0D0A0D0A0D0A090966756E6374696F6E2063726561746546784F7074696F6E732028207061';
wwv_flow_api.g_varchar2_table(773) := '6E652029207B0D0A090909766172096F203D206F7074696F6E735B70616E655D0D0A0909092C0964203D206F7074696F6E732E70616E65733B0D0A0909092F2F20656E7375726520667853657474696E6773206B657920746F2061766F6964206572726F';
wwv_flow_api.g_varchar2_table(774) := '72730D0A09090969662028216F2E667853657474696E677329206F2E667853657474696E6773203D207B7D3B0D0A0909096966202821642E667853657474696E67732920642E667853657474696E6773203D207B7D3B0D0A0D0A090909242E6561636828';
wwv_flow_api.g_varchar2_table(775) := '5B225F6F70656E222C225F636C6F7365222C225F73697A65225D2C2066756E6374696F6E2028692C6E29207B200D0A090909097661720D0A0909090909734E616D6509093D202266784E616D65222B206E0D0A090909092C0973537065656409093D2022';
wwv_flow_api.g_varchar2_table(776) := '66785370656564222B206E0D0A090909092C097353657474696E6773093D2022667853657474696E6773222B206E0D0A09090909092F2F20726563616C63756C6174652066784E616D65206163636F7264696E6720746F20737065636966696369747920';
wwv_flow_api.g_varchar2_table(777) := '72756C65730D0A090909092C0966784E616D65203D206F5B734E616D655D203D0D0A0909090909096F5B734E616D655D092F2F206F7074696F6E732E776573742E66784E616D655F6F70656E0D0A09090909097C7C09645B734E616D655D092F2F206F70';
wwv_flow_api.g_varchar2_table(778) := '74696F6E732E70616E65732E66784E616D655F6F70656E0D0A09090909097C7C096F2E66784E616D65092F2F206F7074696F6E732E776573742E66784E616D650D0A09090909097C7C09642E66784E616D65092F2F206F7074696F6E732E70616E65732E';
wwv_flow_api.g_varchar2_table(779) := '66784E616D650D0A09090909097C7C09226E6F6E652209092F2F204D45414E5320242E6C61796F75742E64656661756C74732E70616E65732E66784E616D65203D3D202222207C7C2066616C7365207C7C206E756C6C207C7C20300D0A090909092C0966';
wwv_flow_api.g_varchar2_table(780) := '78457869737473093D20242E656666656374732026262028242E656666656374735B66784E616D655D207C7C2028242E656666656374732E65666665637420262620242E656666656374732E6566666563745B66784E616D655D29290D0A090909093B0D';
wwv_flow_api.g_varchar2_table(781) := '0A090909092F2F2076616C69646174652066784E616D6520746F20656E737572652069732076616C696420656666656374202D204D5553542068617665206566666563742D636F6E666967206461746120696E206F7074696F6E732E656666656374730D';
wwv_flow_api.g_varchar2_table(782) := '0A090909096966202866784E616D65203D3D3D20226E6F6E6522207C7C20216F7074696F6E732E656666656374735B66784E616D655D207C7C20216678457869737473290D0A090909090966784E616D65203D206F5B734E616D655D203D20226E6F6E65';
wwv_flow_api.g_varchar2_table(783) := '223B202F2F20656666656374206E6F74206C6F61646564204F5220756E7265636F676E697A65642066784E616D650D0A0D0A090909092F2F20736574207661727320666F722065666665637473207375626B65797320746F2073696D706C696679206C6F';
wwv_flow_api.g_varchar2_table(784) := '6769630D0A0909090976617209667809093D206F7074696F6E732E656666656374735B66784E616D655D207C7C207B7D092F2F20656666656374732E736C6964650D0A090909092C0966785F616C6C093D2066782E616C6C097C7C206E756C6C09090909';
wwv_flow_api.g_varchar2_table(785) := '2F2F20656666656374732E736C6964652E616C6C0D0A090909092C0966785F70616E65093D2066785B70616E655D097C7C206E756C6C090909092F2F20656666656374732E736C6964652E776573740D0A090909093B0D0A090909092F2F206372656174';
wwv_flow_api.g_varchar2_table(786) := '6520667853706565645B5F6F70656E7C5F636C6F73657C5F73697A655D0D0A090909096F5B7353706565645D203D0D0A09090909096F5B7353706565645D090909092F2F206F7074696F6E732E776573742E667853706565645F6F70656E0D0A09090909';
wwv_flow_api.g_varchar2_table(787) := '7C7C09645B7353706565645D090909092F2F206F7074696F6E732E776573742E667853706565645F6F70656E0D0A090909097C7C096F2E66785370656564090909092F2F206F7074696F6E732E776573742E667853706565640D0A090909097C7C09642E';
wwv_flow_api.g_varchar2_table(788) := '66785370656564090909092F2F206F7074696F6E732E70616E65732E667853706565640D0A090909097C7C096E756C6C09090909092F2F2044454641554C54202D206C657420667853657474696E672E6475726174696F6E20636F6E74726F6C20737065';
wwv_flow_api.g_varchar2_table(789) := '65640D0A090909093B0D0A090909092F2F2063726561746520667853657474696E67735B5F6F70656E7C5F636C6F73657C5F73697A655D0D0A090909096F5B7353657474696E67735D203D20242E657874656E64280D0A0909090909747275650D0A0909';
wwv_flow_api.g_varchar2_table(790) := '09092C097B7D0D0A090909092C0966785F616C6C09090909092F2F20656666656374732E736C6964652E616C6C0D0A090909092C0966785F70616E6509090909092F2F20656666656374732E736C6964652E776573740D0A090909092C09642E66785365';
wwv_flow_api.g_varchar2_table(791) := '7474696E67730909092F2F206F7074696F6E732E70616E65732E667853657474696E67730D0A090909092C096F2E667853657474696E67730909092F2F206F7074696F6E732E776573742E667853657474696E67730D0A090909092C09645B7353657474';
wwv_flow_api.g_varchar2_table(792) := '696E67735D0909092F2F206F7074696F6E732E70616E65732E667853657474696E67735F6F70656E0D0A090909092C096F5B7353657474696E67735D0909092F2F206F7074696F6E732E776573742E667853657474696E67735F6F70656E0D0A09090909';
wwv_flow_api.g_varchar2_table(793) := '293B0D0A0909097D293B0D0A0D0A0909092F2F20444F4E45206372656174696E6720616374696F6E2D73706563696669632D73657474696E677320666F7220746869732070616E652C0D0A0909092F2F20736F2044454C4554452067656E65726963206F';
wwv_flow_api.g_varchar2_table(794) := '7074696F6E73202D20617265206E6F206C6F6E676572206D65616E696E6766756C0D0A09090964656C657465206F2E66784E616D653B0D0A09090964656C657465206F2E667853706565643B0D0A09090964656C657465206F2E667853657474696E6773';
wwv_flow_api.g_varchar2_table(795) := '3B0D0A09097D0D0A097D0D0A0D0A092F2A2A0D0A09202A20496E697469616C697A65206D6F64756C65206F626A656374732C207374796C696E672C2073697A6520616E6420706F736974696F6E20666F7220616C6C2070616E65730D0A09202A0D0A0920';
wwv_flow_api.g_varchar2_table(796) := '2A204073656520205F696E6974456C656D656E747328290D0A09202A2040706172616D207B737472696E677D0970616E6509095468652070616E6520746F2070726F636573730D0A09202A2F0D0A2C0967657450616E65203D2066756E6374696F6E2028';
wwv_flow_api.g_varchar2_table(797) := '70616E6529207B0D0A09097661722073656C203D206F7074696F6E735B70616E655D2E70616E6553656C6563746F720D0A09096966202873656C2E73756273747228302C31293D3D3D22232229202F2F2049442073656C6563746F720D0A0909092F2F20';
wwv_flow_api.g_varchar2_table(798) := '4E4F54453A20656C656D656E74732073656C6563746564202762792049442720444F204E4F54206861766520746F20626520276368696C6472656E270D0A09090972657475726E20244E2E66696E642873656C292E65712830293B0D0A0909656C736520';
wwv_flow_api.g_varchar2_table(799) := '7B202F2F20636C617373206F72206F746865722073656C6563746F720D0A090909766172202450203D20244E2E6368696C6472656E2873656C292E65712830293B0D0A0909092F2F206C6F6F6B20666F72207468652070616E65206E657374656420696E';
wwv_flow_api.g_varchar2_table(800) := '7369646520612027666F726D2720656C656D656E740D0A09090972657475726E2024502E6C656E677468203F202450203A20244E2E6368696C6472656E2822666F726D3A666972737422292E6368696C6472656E2873656C292E65712830293B0D0A0909';
wwv_flow_api.g_varchar2_table(801) := '7D0D0A097D0D0A0D0A092F2A2A0D0A09202A2040706172616D207B4F626A6563743D7D09096576740D0A09202A2F0D0A2C09696E697450616E6573203D2066756E6374696F6E202865767429207B0D0A09092F2F2073746F7050726F7061676174696F6E';
wwv_flow_api.g_varchar2_table(802) := '2069662063616C6C6564206279207472696767657228226C61796F7574696E697470616E65732229202D207573652065767450616E65207574696C697479200D0A090965767450616E6528657674293B0D0A0D0A09092F2F204E4F54453A20646F206E6F';
wwv_flow_api.g_varchar2_table(803) := '727468202620736F75746820464952535420736F2077652063616E206D65617375726520746865697220686569676874202D20646F2063656E746572204C4153540D0A0909242E65616368285F632E616C6C50616E65732C2066756E6374696F6E202869';
wwv_flow_api.g_varchar2_table(804) := '64782C2070616E6529207B0D0A09090961646450616E65282070616E652C207472756520293B0D0A09097D293B0D0A0D0A09092F2F20696E6974207468652070616E652D68616E646C6573204E4F5720696E2063617365207765206861766520746F2068';
wwv_flow_api.g_varchar2_table(805) := '696465206F7220636C6F7365207468652070616E652062656C6F770D0A0909696E697448616E646C657328293B0D0A0D0A09092F2F206E6F77207468617420616C6C2070616E65732068617665206265656E20696E697469616C697A656420616E642069';
wwv_flow_api.g_varchar2_table(806) := '6E697469616C6C792D73697A65642C0D0A09092F2F206D616B652073757265207468657265206973207265616C6C7920656E6F75676820737061636520617661696C61626C6520666F7220656163682070616E650D0A0909242E65616368285F632E626F';
wwv_flow_api.g_varchar2_table(807) := '7264657250616E65732C2066756E6374696F6E2028692C2070616E6529207B0D0A090909696620282450735B70616E655D2026262073746174655B70616E655D2E697356697369626C6529207B202F2F2070616E65206973204F50454E0D0A0909090973';
wwv_flow_api.g_varchar2_table(808) := '657453697A654C696D6974732870616E65293B0D0A090909096D616B6550616E654669742870616E65293B202F2F2070616E65206D617920626520436C6F7365642C2048696464656E206F7220526573697A6564206279206D616B6550616E6546697428';
wwv_flow_api.g_varchar2_table(809) := '290D0A0909097D0D0A09097D293B0D0A09092F2F2073697A652063656E7465722D70616E6520414741494E20696E20636173652077652027636C6F73656427206120626F726465722D70616E6520696E206C6F6F702061626F76650D0A090973697A654D';
wwv_flow_api.g_varchar2_table(810) := '696450616E6573282263656E74657222293B0D0A0D0A09092F2F094368726F6D652F5765626B697420736F6D6574696D65732066697265732063616C6C6261636B73204245464F524520697420636F6D706C6574657320726573697A696E67210D0A0909';
wwv_flow_api.g_varchar2_table(811) := '2F2F094265666F726520524333302E332C2074686572652077617320612031306D732064656C617920686572652C20627574207468617420636175736564206C61796F7574200D0A09092F2F09746F206C6F6164206173796E6368726F75736C792C2077';
wwv_flow_api.g_varchar2_table(812) := '68696368206973204241442C20736F2074727920736B697070696E672064656C617920666F72206E6F770D0A0D0A09092F2F2070726F636573732070616E6520636F6E74656E747320616E642063616C6C6261636B732C20616E6420696E69742F726573';
wwv_flow_api.g_varchar2_table(813) := '697A65206368696C642D6C61796F7574206966206578697374730D0A0909242E65616368285F632E616C6C50616E65732C2066756E6374696F6E20286964782C2070616E6529207B0D0A0909096166746572496E697450616E652870616E65293B0D0A09';
wwv_flow_api.g_varchar2_table(814) := '097D293B0D0A097D0D0A0D0A092F2A2A0D0A09202A2041646420612070616E6520746F20746865206C61796F7574202D20737562726F7574696E65206F6620696E697450616E657328290D0A09202A0D0A09202A20407365652020696E697450616E6573';
wwv_flow_api.g_varchar2_table(815) := '28290D0A09202A2040706172616D207B737472696E677D0970616E650909095468652070616E6520746F2070726F636573730D0A09202A2040706172616D207B626F6F6C65616E3D7D095B666F7263653D66616C73655D0953697A6520636F6E74656E74';
wwv_flow_api.g_varchar2_table(816) := '20616674657220696E69740D0A09202A2F0D0A2C0961646450616E65203D2066756E6374696F6E202870616E652C20666F72636529207B0D0A0909696620282021666F72636520262620216973496E697469616C697A6564282920292072657475726E3B';
wwv_flow_api.g_varchar2_table(817) := '0D0A09097661720D0A0909096F09093D206F7074696F6E735B70616E655D0D0A09092C097309093D2073746174655B70616E655D0D0A09092C096309093D205F635B70616E655D0D0A09092C0964697209093D20632E6469720D0A09092C09667809093D';
wwv_flow_api.g_varchar2_table(818) := '20732E66780D0A09092C0973706163696E67093D206F2E73706163696E675F6F70656E207C7C20300D0A09092C09697343656E746572203D202870616E65203D3D3D202263656E74657222290D0A09092C0943535309093D207B7D0D0A09092C09245009';
wwv_flow_api.g_varchar2_table(819) := '093D202450735B70616E655D0D0A09092C0973697A652C206D696E53697A652C206D617853697A652C206368696C640D0A09093B0D0A09092F2F2069662070616E652D706F696E74657220616C7265616479206578697374732C2072656D6F7665207468';
wwv_flow_api.g_varchar2_table(820) := '65206F6C64206F6E652066697273740D0A0909696620282450290D0A09090972656D6F766550616E65282070616E652C2066616C73652C20747275652C2066616C736520293B0D0A0909656C73650D0A0909092443735B70616E655D203D2066616C7365';
wwv_flow_api.g_varchar2_table(821) := '3B202F2F20696E69740D0A0D0A09092450203D202450735B70616E655D203D2067657450616E652870616E65293B0D0A0909696620282124502E6C656E67746829207B0D0A0909092450735B70616E655D203D2066616C73653B202F2F206C6F6769630D';
wwv_flow_api.g_varchar2_table(822) := '0A09090972657475726E3B0D0A09097D0D0A0D0A09092F2F2053415645206F726967696E616C2050616E65204353530D0A0909696620282124502E6461746128226C61796F7574435353222929207B0D0A0909097661722070726F7073203D2022706F73';
wwv_flow_api.g_varchar2_table(823) := '6974696F6E2C746F702C6C6566742C626F74746F6D2C72696768742C77696474682C6865696768742C6F766572666C6F772C7A496E6465782C646973706C61792C6261636B67726F756E64436F6C6F722C70616464696E672C6D617267696E2C626F7264';
wwv_flow_api.g_varchar2_table(824) := '6572223B0D0A09090924502E6461746128226C61796F7574435353222C207374796C65732824502C2070726F707329293B0D0A09097D0D0A0D0A09092F2F2063726561746520616C69617320666F722070616E65206461746120696E20496E7374616E63';
wwv_flow_api.g_varchar2_table(825) := '65202D20696E697448616E646C65732077696C6C20616464206D6F72650D0A0909496E7374616E63655B70616E655D203D207B0D0A0909096E616D653A090970616E650D0A09092C0970616E653A09092450735B70616E655D0D0A09092C09636F6E7465';
wwv_flow_api.g_varchar2_table(826) := '6E743A092443735B70616E655D0D0A09092C096F7074696F6E733A096F7074696F6E735B70616E655D0D0A09092C0973746174653A090973746174655B70616E655D0D0A09092C096368696C6472656E3A096368696C6472656E5B70616E655D0D0A0909';
wwv_flow_api.g_varchar2_table(827) := '7D3B0D0A0D0A09092F2F2061646420636C61737365732C20617474726962757465732026206576656E74730D0A09092450092E64617461287B0D0A09090909706172656E744C61796F75743A09496E7374616E636509092F2F20706F696E74657220746F';
wwv_flow_api.g_varchar2_table(828) := '204C61796F757420496E7374616E63650D0A0909092C096C61796F757450616E653A0909496E7374616E63655B70616E655D092F2F204E455720706F696E74657220746F2070616E652D616C6961732D6F626A6563740D0A0909092C096C61796F757445';
wwv_flow_api.g_varchar2_table(829) := '6467653A090970616E650D0A0909092C096C61796F7574526F6C653A09092270616E65220D0A0909097D290D0A0909092E63737328632E637373526571292E63737328227A496E646578222C206F7074696F6E732E7A496E64657865732E70616E655F6E';
wwv_flow_api.g_varchar2_table(830) := '6F726D616C290D0A0909092E637373286F2E6170706C7944656D6F5374796C6573203F20632E63737344656D6F203A207B7D29202F2F2064656D6F207374796C65730D0A0909092E616464436C61737328206F2E70616E65436C617373202B2220222B20';
wwv_flow_api.g_varchar2_table(831) := '6F2E70616E65436C6173732B222D222B70616E652029202F2F2064656661756C74203D202275692D6C61796F75742D70616E652075692D6C61796F75742D70616E652D7765737422202D206D617920626520612064757065206F66202770616E6553656C';
wwv_flow_api.g_varchar2_table(832) := '6563746F72270D0A0909092E62696E6428226D6F757365656E7465722E222B207349442C20616464486F76657220290D0A0909092E62696E6428226D6F7573656C656176652E222B207349442C2072656D6F7665486F76657220290D0A0909093B0D0A09';
wwv_flow_api.g_varchar2_table(833) := '097661722070616E654D6574686F6473203D207B0D0A09090909686964653A0909090927270D0A0909092C0973686F773A0909090927270D0A0909092C09746F67676C653A0909090927270D0A0909092C09636C6F73653A0909090927270D0A0909092C';
wwv_flow_api.g_varchar2_table(834) := '096F70656E3A0909090927270D0A0909092C09736C6964654F70656E3A09090927270D0A0909092C09736C696465436C6F73653A09090927270D0A0909092C09736C696465546F67676C653A090927270D0A0909092C0973697A653A090909092773697A';
wwv_flow_api.g_varchar2_table(835) := '6550616E65270D0A0909092C0973697A6550616E653A0909092773697A6550616E65270D0A0909092C0973697A65436F6E74656E743A090927270D0A0909092C0973697A6548616E646C65733A090927270D0A0909092C09656E61626C65436C6F736162';
wwv_flow_api.g_varchar2_table(836) := '6C653A090927270D0A0909092C0964697361626C65436C6F7361626C653A0927270D0A0909092C09656E61626C65536C69646561626C653A0927270D0A0909092C0964697361626C65536C69646561626C653A0927270D0A0909092C09656E61626C6552';
wwv_flow_api.g_varchar2_table(837) := '6573697A61626C653A0927270D0A0909092C0964697361626C65526573697A61626C653A0927270D0A0909092C097377617050616E65733A090909277377617050616E6573270D0A0909092C09737761703A09090909277377617050616E6573270D0A09';
wwv_flow_api.g_varchar2_table(838) := '09092C096D6F76653A09090909277377617050616E6573270D0A0909092C0972656D6F766550616E653A0909092772656D6F766550616E65270D0A0909092C0972656D6F76653A090909092772656D6F766550616E65270D0A0909092C09637265617465';
wwv_flow_api.g_varchar2_table(839) := '4368696C6472656E3A090927270D0A0909092C09726573697A654368696C6472656E3A090927270D0A0909092C09726573697A65416C6C3A09090927726573697A65416C6C270D0A0909092C09726573697A654C61796F75743A090927726573697A6541';
wwv_flow_api.g_varchar2_table(840) := '6C6C270D0A0909097D0D0A09092C096E616D653B0D0A09092F2F206C6F6F70206861736820616E642062696E6420616C6C206D6574686F6473202D20696E636C756465206C61796F75744944206E616D6573706163696E670D0A0909666F7220286E616D';
wwv_flow_api.g_varchar2_table(841) := '6520696E2070616E654D6574686F647329207B0D0A09090924502E62696E6428226C61796F757470616E65222B206E616D652E746F4C6F776572436173652829202B222E222B207349442C20496E7374616E63655B2070616E654D6574686F64735B6E61';
wwv_flow_api.g_varchar2_table(842) := '6D655D207C7C206E616D65205D293B0D0A09097D0D0A0D0A09092F2F2073656520696620746869732070616E6520686173206120277363726F6C6C696E672D636F6E74656E7420656C656D656E74270D0A0909696E6974436F6E74656E742870616E652C';
wwv_flow_api.g_varchar2_table(843) := '2066616C7365293B202F2F2066616C7365203D20646F204E4F542073697A65436F6E74656E742829202D2063616C6C6564206C617465720D0A0D0A09096966202821697343656E74657229207B0D0A0909092F2F2063616C6C205F706172736553697A65';
wwv_flow_api.g_varchar2_table(844) := '204146544552206170706C79696E672070616E6520636C61737365732026207374796C6573202D20627574206265666F7265206D616B696E672076697369626C65202869662068696464656E290D0A0909092F2F206966206F2E73697A65206973206175';
wwv_flow_api.g_varchar2_table(845) := '746F206F72206E6F742076616C69642C207468656E204D454153555245207468652070616E6520616E6420757365207468617420617320697473202773697A65270D0A09090973697A65093D20732E73697A65203D205F706172736553697A652870616E';
wwv_flow_api.g_varchar2_table(846) := '652C206F2E73697A65293B0D0A0909096D696E53697A65093D205F706172736553697A652870616E652C6F2E6D696E53697A6529207C7C20313B0D0A0909096D617853697A65093D205F706172736553697A652870616E652C6F2E6D617853697A652920';
wwv_flow_api.g_varchar2_table(847) := '7C7C203130303030303B0D0A0909096966202873697A65203E2030292073697A65203D206D6178286D696E2873697A652C206D617853697A65292C206D696E53697A65293B0D0A090909732E6175746F526573697A65203D206F2E6175746F526573697A';
wwv_flow_api.g_varchar2_table(848) := '653B202F2F207573656420776974682070657263656E746167652073697A65730D0A0D0A0909092F2F20737461746520666F7220626F726465722D70616E65730D0A090909732E6973436C6F73656420203D2066616C73653B202F2F2074727565203D20';
wwv_flow_api.g_varchar2_table(849) := '70616E6520697320636C6F7365640D0A090909732E6973536C6964696E67203D2066616C73653B202F2F2074727565203D2070616E652069732063757272656E746C79206F70656E2062792027736C6964696E6727206F7665722061646A6163656E7420';
wwv_flow_api.g_varchar2_table(850) := '70616E65730D0A090909732E6973526573697A696E673D2066616C73653B202F2F2074727565203D2070616E6520697320696E2070726F63657373206F66206265696E6720726573697A65640D0A090909732E697348696464656E093D2066616C73653B';
wwv_flow_api.g_varchar2_table(851) := '202F2F2074727565203D2070616E652069732068696464656E202D206E6F2073706163696E672C20726573697A6572206F7220746F67676C65722069732076697369626C65210D0A0D0A0909092F2F20617272617920666F72202770696E20627574746F';
wwv_flow_api.g_varchar2_table(852) := '6E73272077686F736520636C6173734E616D657320617265206175746F2D75706461746564206F6E2070616E652D6F70656E2F2D636C6F73650D0A0909096966202821732E70696E732920732E70696E73203D205B5D3B0D0A09097D0D0A09092F2F0973';
wwv_flow_api.g_varchar2_table(853) := '746174657320636F6D6D6F6E20746F20414C4C2070616E65730D0A0909732E7461674E616D65093D2024505B305D2E7461674E616D653B0D0A0909732E6564676509093D2070616E653B09092F2F2075736566756C2069662070616E6520697320286F72';
wwv_flow_api.g_varchar2_table(854) := '2061626F757420746F2062652920277377617070656427202D20656173792066696E64206F757420776865726520697420697320286F7220697320676F696E67290D0A0909732E6E6F526F6F6D093D2066616C73653B092F2F2074727565203D2070616E';
wwv_flow_api.g_varchar2_table(855) := '6520276175746F6D61746963616C6C79272068696464656E2064756520746F20696E73756666696369656E7420726F6F6D202D2077696C6C20756E68696465206175746F6D61746963616C6C790D0A0909732E697356697369626C65093D20747275653B';
wwv_flow_api.g_varchar2_table(856) := '09092F2F2066616C7365203D2070616E6520697320696E76697369626C65202D20636C6F736564204F522068696464656E202D2073696D706C696679206C6F6769630D0A0D0A09092F2F20696E69742070616E6520706F736974696F6E696E670D0A0909';
wwv_flow_api.g_varchar2_table(857) := '73657450616E65506F736974696F6E282070616E6520293B0D0A0D0A09092F2F2069662070616E65206973206E6F742076697369626C652C200D0A090969662028646972203D3D3D2022686F727A2229202F2F206E6F727468206F7220736F7574682070';
wwv_flow_api.g_varchar2_table(858) := '616E650D0A0909094353532E686569676874203D20637373482824502C2073697A65293B0D0A0909656C73652069662028646972203D3D3D2022766572742229202F2F2065617374206F7220776573742070616E650D0A0909094353532E776964746820';
wwv_flow_api.g_varchar2_table(859) := '3D20637373572824502C2073697A65293B0D0A09092F2F656C73652069662028697343656E74657229207B7D0D0A0D0A090924502E63737328435353293B202F2F206170706C792073697A65202D2D20746F702C20626F74746F6D202620686569676874';
wwv_flow_api.g_varchar2_table(860) := '2077696C6C206265207365742062792073697A654D696450616E65730D0A09096966202864697220213D2022686F727A22292073697A654D696450616E65732870616E652C2074727565293B202F2F2074727565203D20736B697043616C6C6261636B0D';
wwv_flow_api.g_varchar2_table(861) := '0A0D0A09092F2F206966206D616E75616C6C7920616464696E6720612070616E65204146544552206C61796F757420696E697469616C697A6174696F6E2C207468656E2E2E2E0D0A09096966202873746174652E696E697469616C697A656429207B0D0A';
wwv_flow_api.g_varchar2_table(862) := '090909696E697448616E646C6573282070616E6520293B0D0A090909696E6974486F746B657973282070616E6520293B0D0A09097D0D0A0D0A09092F2F20636C6F7365206F722068696465207468652070616E652069662073706563696669656420696E';
wwv_flow_api.g_varchar2_table(863) := '2073657474696E67730D0A0909696620286F2E696E6974436C6F736564202626206F2E636C6F7361626C6520262620216F2E696E697448696464656E290D0A090909636C6F73652870616E652C20747275652C2074727565293B202F2F20747275652C20';
wwv_flow_api.g_varchar2_table(864) := '74727565203D20666F7263652C206E6F416E696D6174696F6E0D0A0909656C736520696620286F2E696E697448696464656E207C7C206F2E696E6974436C6F736564290D0A090909686964652870616E65293B202F2F2077696C6C20626520636F6D706C';
wwv_flow_api.g_varchar2_table(865) := '6574656C7920696E76697369626C65202D206E6F20726573697A6572206F722073706163696E670D0A0909656C7365206966202821732E6E6F526F6F6D290D0A0909092F2F206D616B65207468652070616E652076697369626C65202D20696E20636173';
wwv_flow_api.g_varchar2_table(866) := '652077617320696E697469616C6C792068696464656E0D0A09090924502E6373732822646973706C6179222C22626C6F636B22293B0D0A09092F2F20454C53452073657441734F70656E2829202D2063616C6C6564206C6174657220627920696E697448';
wwv_flow_api.g_varchar2_table(867) := '616E646C657328290D0A0D0A09092F2F205245534554207669736962696C697479206E6F77202D2070616E652077696C6C2061707065617220494620646973706C61793A626C6F636B0D0A090924502E63737328227669736962696C697479222C227669';
wwv_flow_api.g_varchar2_table(868) := '7369626C6522293B0D0A0D0A09092F2F20636865636B206F7074696F6E20666F72206175746F2D68616E646C696E67206F6620706F702D75707320262064726F702D646F776E730D0A0909696620286F2E73686F774F766572666C6F774F6E486F766572';
wwv_flow_api.g_varchar2_table(869) := '290D0A09090924502E686F7665722820616C6C6F774F766572666C6F772C2072657365744F766572666C6F7720293B0D0A0D0A09092F2F206966206D616E75616C6C7920616464696E6720612070616E65204146544552206C61796F757420696E697469';
wwv_flow_api.g_varchar2_table(870) := '616C697A6174696F6E2C207468656E2E2E2E0D0A09096966202873746174652E696E697469616C697A656429207B0D0A0909096166746572496E697450616E65282070616E6520293B0D0A09097D0D0A097D0D0A0D0A2C096166746572496E697450616E';
wwv_flow_api.g_varchar2_table(871) := '65203D2066756E6374696F6E202870616E6529207B0D0A0909766172092450093D202450735B70616E655D0D0A09092C0973093D2073746174655B70616E655D0D0A09092C096F093D206F7074696F6E735B70616E655D0D0A09093B0D0A090969662028';
wwv_flow_api.g_varchar2_table(872) := '212450292072657475726E3B0D0A0D0A09092F2F207365652069662074686572652069732061206469726563746C792D6E6573746564206C61796F757420696E7369646520746869732070616E650D0A09096966202824502E6461746128226C61796F75';
wwv_flow_api.g_varchar2_table(873) := '742229290D0A090909726566726573684368696C6472656E282070616E652C2024502E6461746128226C61796F7574222920293B0D0A0D0A09092F2F2070726F636573732070616E6520636F6E74656E747320616E642063616C6C6261636B732C20616E';
wwv_flow_api.g_varchar2_table(874) := '6420696E69742F726573697A65206368696C642D6C61796F7574206966206578697374730D0A090969662028732E697356697369626C6529207B202F2F2070616E65206973204F50454E0D0A0909096966202873746174652E696E697469616C697A6564';
wwv_flow_api.g_varchar2_table(875) := '29202F2F20746869732070616E6520776173206164646564204146544552206C61796F75742077617320637265617465640D0A09090909726573697A65416C6C28293B202F2F2077696C6C20616C736F2073697A65436F6E74656E740D0A090909656C73';
wwv_flow_api.g_varchar2_table(876) := '650D0A0909090973697A65436F6E74656E742870616E65293B0D0A0D0A090909696620286F2E747269676765724576656E74734F6E4C6F6164290D0A090909095F72756E43616C6C6261636B7328226F6E726573697A655F656E64222C2070616E65293B';
wwv_flow_api.g_varchar2_table(877) := '0D0A090909656C7365202F2F206175746F6D61746963206966206F6E726573697A652063616C6C65642C206F74686572776973652063616C6C206974207370656369666963616C6C790D0A090909092F2F20726573697A65206368696C64202D20494620';
wwv_flow_api.g_varchar2_table(878) := '696E6E65722D6C61796F757420616C726561647920657869737473202863726561746564206265666F72652074686973206C61796F7574290D0A09090909726573697A654368696C6472656E2870616E652C2074727565293B202F2F2061207072657669';
wwv_flow_api.g_varchar2_table(879) := '6F75736C79206578697374696E67206368696C644C61796F75740D0A09097D0D0A0D0A09092F2F20696E6974206368696C644C61796F757473202D206576656E2069662070616E65206973206E6F742076697369626C650D0A0909696620286F2E696E69';
wwv_flow_api.g_varchar2_table(880) := '744368696C6472656E202626206F2E6368696C6472656E290D0A0909096372656174654368696C6472656E2870616E65293B0D0A097D0D0A0D0A092F2A2A0D0A09202A2040706172616D207B737472696E673D7D0970616E657309095468652070616E65';
wwv_flow_api.g_varchar2_table(881) := '28732920746F2070726F636573730D0A09202A2F0D0A2C0973657450616E65506F736974696F6E203D2066756E6374696F6E202870616E657329207B0D0A090970616E6573203D2070616E6573203F2070616E65732E73706C697428222C2229203A205F';
wwv_flow_api.g_varchar2_table(882) := '632E626F7264657250616E65733B0D0A0D0A09092F2F2063726561746520746F67676C6572204449567320666F7220656163682070616E652C20616E6420736574206F626A65637420706F696E7465727320666F72207468656D2C2065673A2024522E6E';
wwv_flow_api.g_varchar2_table(883) := '6F727468203D206E6F72746820746F67676C6572204449560D0A0909242E656163682870616E65732C2066756E6374696F6E2028692C2070616E6529207B0D0A090909766172202450093D202450735B70616E655D0D0A0909092C092452093D20245273';
wwv_flow_api.g_varchar2_table(884) := '5B70616E655D0D0A0909092C096F093D206F7074696F6E735B70616E655D0D0A0909092C0973093D2073746174655B70616E655D0D0A0909092C0973696465203D20205F635B70616E655D2E736964650D0A0909092C09435353093D207B7D0D0A090909';
wwv_flow_api.g_varchar2_table(885) := '3B0D0A09090969662028212450292072657475726E3B202F2F2070616E6520646F6573206E6F74206578697374202D20736B69700D0A0D0A0909092F2F20736574206373732D706F736974696F6E20746F206163636F756E7420666F7220636F6E746169';
wwv_flow_api.g_varchar2_table(886) := '6E657220626F726465727320262070616464696E670D0A090909737769746368202870616E6529207B0D0A090909096361736520226E6F727468223A20094353532E746F7020093D2073432E696E7365742E746F703B0D0A09090909090909094353532E';
wwv_flow_api.g_varchar2_table(887) := '6C65667420093D2073432E696E7365742E6C6566743B0D0A09090909090909094353532E7269676874093D2073432E696E7365742E72696768743B0D0A0909090909090909627265616B3B0D0A09090909636173652022736F757468223A20094353532E';
wwv_flow_api.g_varchar2_table(888) := '626F74746F6D093D2073432E696E7365742E626F74746F6D3B0D0A09090909090909094353532E6C65667420093D2073432E696E7365742E6C6566743B0D0A09090909090909094353532E726967687420093D2073432E696E7365742E72696768743B0D';
wwv_flow_api.g_varchar2_table(889) := '0A0909090909090909627265616B3B0D0A0909090963617365202277657374223A20094353532E6C65667420093D2073432E696E7365742E6C6566743B202F2F20746F702C20626F74746F6D202620686569676874207365742062792073697A654D6964';
wwv_flow_api.g_varchar2_table(890) := '50616E657328290D0A0909090909090909627265616B3B0D0A0909090963617365202265617374223A20094353532E726967687420093D2073432E696E7365742E72696768743B202F2F20646974746F0D0A0909090909090909627265616B3B0D0A0909';
wwv_flow_api.g_varchar2_table(891) := '090963617365202263656E746572223A092F2F20746F702C206C6566742C207769647468202620686569676874207365742062792073697A654D696450616E657328290D0A0909097D0D0A0909092F2F206170706C7920706F736974696F6E0D0A090909';
wwv_flow_api.g_varchar2_table(892) := '24502E63737328435353293B200D0A0D0A0909092F2F2075706461746520726573697A657220706F736974696F6E0D0A09090969662028245220262620732E6973436C6F736564290D0A0909090924522E63737328736964652C2073432E696E7365745B';
wwv_flow_api.g_varchar2_table(893) := '736964655D293B0D0A090909656C7365206966202824522026262021732E697348696464656E290D0A0909090924522E63737328736964652C2073432E696E7365745B736964655D202B2067657450616E6553697A652870616E6529293B0D0A09097D29';
wwv_flow_api.g_varchar2_table(894) := '3B0D0A097D0D0A0D0A092F2A2A0D0A09202A20496E697469616C697A65206D6F64756C65206F626A656374732C207374796C696E672C2073697A6520616E6420706F736974696F6E20666F7220616C6C20726573697A65206261727320616E6420746F67';
wwv_flow_api.g_varchar2_table(895) := '676C657220627574746F6E730D0A09202A0D0A09202A204073656520205F63726561746528290D0A09202A2040706172616D207B737472696E673D7D095B70616E65733D22225D09546865206564676528732920746F2070726F636573730D0A09202A2F';
wwv_flow_api.g_varchar2_table(896) := '0D0A2C09696E697448616E646C6573203D2066756E6374696F6E202870616E657329207B0D0A090970616E6573203D2070616E6573203F2070616E65732E73706C697428222C2229203A205F632E626F7264657250616E65733B0D0A0D0A09092F2F2063';
wwv_flow_api.g_varchar2_table(897) := '726561746520746F67676C6572204449567320666F7220656163682070616E652C20616E6420736574206F626A65637420706F696E7465727320666F72207468656D2C2065673A2024522E6E6F727468203D206E6F72746820746F67676C657220444956';
wwv_flow_api.g_varchar2_table(898) := '0D0A0909242E656163682870616E65732C2066756E6374696F6E2028692C2070616E6529207B0D0A09090976617220245009093D202450735B70616E655D3B0D0A0909092452735B70616E655D093D2066616C73653B202F2F20494E49540D0A09090924';
wwv_flow_api.g_varchar2_table(899) := '54735B70616E655D093D2066616C73653B0D0A09090969662028212450292072657475726E3B202F2F2070616E6520646F6573206E6F74206578697374202D20736B69700D0A0D0A090909766172096F09093D206F7074696F6E735B70616E655D0D0A09';
wwv_flow_api.g_varchar2_table(900) := '09092C097309093D2073746174655B70616E655D0D0A0909092C096309093D205F635B70616E655D0D0A0909092C0970616E654964093D206F2E70616E6553656C6563746F722E73756273747228302C3129203D3D3D20222322203F206F2E70616E6553';
wwv_flow_api.g_varchar2_table(901) := '656C6563746F722E737562737472283129203A2022220D0A0909092C0972436C617373093D206F2E726573697A6572436C6173730D0A0909092C0974436C617373093D206F2E746F67676C6572436C6173730D0A0909092C0973706163696E67093D2028';
wwv_flow_api.g_varchar2_table(902) := '732E697356697369626C65203F206F2E73706163696E675F6F70656E203A206F2E73706163696E675F636C6F736564290D0A0909092C095F70616E65093D20222D222B2070616E65202F2F207573656420666F7220636C6173734E616D65730D0A090909';
wwv_flow_api.g_varchar2_table(903) := '2C095F7374617465093D2028732E697356697369626C65203F20222D6F70656E22203A20222D636C6F7365642229202F2F207573656420666F7220636C6173734E616D65730D0A0909092C094909093D20496E7374616E63655B70616E655D0D0A090909';
wwv_flow_api.g_varchar2_table(904) := '092F2F20494E495420524553495A4552204241520D0A0909092C09245209093D20492E726573697A6572203D202452735B70616E655D203D202428223C6469763E3C2F6469763E22290D0A090909092F2F20494E495420544F47474C455220425554544F';
wwv_flow_api.g_varchar2_table(905) := '4E0D0A0909092C09245409093D20492E746F67676C6572203D20286F2E636C6F7361626C65203F202454735B70616E655D203D202428223C6469763E3C2F6469763E2229203A2066616C7365290D0A0909093B0D0A0D0A0909092F2F69662028732E6973';
wwv_flow_api.g_varchar2_table(906) := '56697369626C65202626206F2E726573697A61626C6529202E2E2E2068616E646C656420627920696E6974526573697A61626C650D0A0909096966202821732E697356697369626C65202626206F2E736C696461626C65290D0A0909090924522E617474';
wwv_flow_api.g_varchar2_table(907) := '7228227469746C65222C206F2E746970732E536C696465292E6373732822637572736F72222C206F2E736C69646572437572736F72293B0D0A0D0A0909092452092F2F2069662070616E6553656C6563746F7220697320616E2049442C207468656E2063';
wwv_flow_api.g_varchar2_table(908) := '72656174652061206D61746368696E6720494420666F722074686520726573697A65722C2065673A20222370616E654C65667422203D3E202270616E654C6566742D726573697A6572220D0A090909092E6174747228226964222C2070616E654964203F';
wwv_flow_api.g_varchar2_table(909) := '2070616E654964202B222D726573697A657222203A20222220290D0A090909092E64617461287B0D0A0909090909706172656E744C61796F75743A09496E7374616E63650D0A090909092C096C61796F757450616E653A0909496E7374616E63655B7061';
wwv_flow_api.g_varchar2_table(910) := '6E655D092F2F204E455720706F696E74657220746F2070616E652D616C6961732D6F626A6563740D0A090909092C096C61796F7574456467653A090970616E650D0A090909092C096C61796F7574526F6C653A090922726573697A6572220D0A09090909';
wwv_flow_api.g_varchar2_table(911) := '7D290D0A090909092E637373285F632E726573697A6572732E637373526571292E63737328227A496E646578222C206F7074696F6E732E7A496E64657865732E726573697A65725F6E6F726D616C290D0A090909092E637373286F2E6170706C7944656D';
wwv_flow_api.g_varchar2_table(912) := '6F5374796C6573203F205F632E726573697A6572732E63737344656D6F203A207B7D29202F2F206164642064656D6F207374796C65730D0A090909092E616464436C6173732872436C617373202B2220222B2072436C6173732B5F70616E65290D0A0909';
wwv_flow_api.g_varchar2_table(913) := '09092E686F76657228616464486F7665722C2072656D6F7665486F76657229202F2F20414C574159532061646420686F7665722D636C61737365732C206576656E20696620726573697A696E67206973206E6F7420656E61626C6564202D2068616E646C';
wwv_flow_api.g_varchar2_table(914) := '6520776974682043535320696E73746561640D0A090909092E686F766572286F6E526573697A6572456E7465722C206F6E526573697A65724C6561766529202F2F20414C57415953204E45454420726573697A65722E6D6F7573656C6561766520746F20';
wwv_flow_api.g_varchar2_table(915) := '62616C616E636520746F67676C65722E6D6F757365656E7465720D0A090909092E6D6F757365646F776E28242E6C61796F75742E64697361626C655465787453656C656374696F6E29092F2F2070726576656E7420746578742D73656C656374696F6E20';
wwv_flow_api.g_varchar2_table(916) := '4F55545349444520726573697A65720D0A090909092E6D6F757365757028242E6C61796F75742E656E61626C655465787453656C656374696F6E2909092F2F206E6F74207265616C6C79206E65636573736172792C20627574206A75737420696E206361';
wwv_flow_api.g_varchar2_table(917) := '73650D0A090909092E617070656E64546F28244E29202F2F20617070656E642044495620746F20636F6E7461696E65720D0A0909093B0D0A09090969662028242E666E2E64697361626C6553656C656374696F6E290D0A0909090924522E64697361626C';
wwv_flow_api.g_varchar2_table(918) := '6553656C656374696F6E28293B202F2F2070726576656E7420746578742D73656C656374696F6E20494E5349444520726573697A65720D0A090909696620286F2E726573697A657244626C436C69636B546F67676C65290D0A0909090924522E62696E64';
wwv_flow_api.g_varchar2_table(919) := '282264626C636C69636B2E222B207349442C20746F67676C6520293B0D0A0D0A09090969662028245429207B0D0A090909092454092F2F2069662070616E6553656C6563746F7220697320616E2049442C207468656E206372656174652061206D617463';
wwv_flow_api.g_varchar2_table(920) := '68696E6720494420666F722074686520726573697A65722C2065673A20222370616E654C65667422203D3E20222370616E654C6566742D746F67676C6572220D0A09090909092E6174747228226964222C2070616E654964203F2070616E654964202B22';
wwv_flow_api.g_varchar2_table(921) := '2D746F67676C657222203A20222220290D0A09090909092E64617461287B0D0A090909090909706172656E744C61796F75743A09496E7374616E63650D0A09090909092C096C61796F757450616E653A0909496E7374616E63655B70616E655D092F2F20';
wwv_flow_api.g_varchar2_table(922) := '4E455720706F696E74657220746F2070616E652D616C6961732D6F626A6563740D0A09090909092C096C61796F7574456467653A090970616E650D0A09090909092C096C61796F7574526F6C653A090922746F67676C6572220D0A09090909097D290D0A';
wwv_flow_api.g_varchar2_table(923) := '09090909092E637373285F632E746F67676C6572732E63737352657129202F2F2061646420626173652F7265717569726564207374796C65730D0A09090909092E637373286F2E6170706C7944656D6F5374796C6573203F205F632E746F67676C657273';
wwv_flow_api.g_varchar2_table(924) := '2E63737344656D6F203A207B7D29202F2F206164642064656D6F207374796C65730D0A09090909092E616464436C6173732874436C617373202B2220222B2074436C6173732B5F70616E65290D0A09090909092E686F76657228616464486F7665722C20';
wwv_flow_api.g_varchar2_table(925) := '72656D6F7665486F76657229202F2F20414C574159532061646420686F7665722D636C61737365732C206576656E20696620746F67676C696E67206973206E6F7420656E61626C6564202D2068616E646C6520776974682043535320696E73746561640D';
wwv_flow_api.g_varchar2_table(926) := '0A09090909092E62696E6428226D6F757365656E746572222C206F6E526573697A6572456E74657229202F2F204E45454420746F67676C65722E6D6F757365656E7465722062656361757365206D6F757365656E746572204D4159204E4F542066697265';
wwv_flow_api.g_varchar2_table(927) := '206F6E20726573697A65720D0A09090909092E617070656E64546F28245229202F2F20617070656E64205350414E20746F20726573697A6572204449560D0A090909093B0D0A090909092F2F2041444420494E4E45522D5350414E5320544F20544F4747';
wwv_flow_api.g_varchar2_table(928) := '4C45520D0A09090909696620286F2E746F67676C6572436F6E74656E745F6F70656E29202F2F2075692D6C61796F75742D6F70656E0D0A09090909092428223C7370616E3E222B206F2E746F67676C6572436F6E74656E745F6F70656E202B223C2F7370';
wwv_flow_api.g_varchar2_table(929) := '616E3E22290D0A0909090909092E64617461287B0D0A090909090909096C61796F7574456467653A090970616E650D0A0909090909092C096C61796F7574526F6C653A090922746F67676C6572436F6E74656E74220D0A0909090909097D290D0A090909';
wwv_flow_api.g_varchar2_table(930) := '0909092E6461746128226C61796F7574526F6C65222C2022746F67676C6572436F6E74656E7422290D0A0909090909092E6461746128226C61796F757445646765222C2070616E65290D0A0909090909092E616464436C6173732822636F6E74656E7420';
wwv_flow_api.g_varchar2_table(931) := '636F6E74656E742D6F70656E22290D0A0909090909092E6373732822646973706C6179222C226E6F6E6522290D0A0909090909092E617070656E64546F2820245420290D0A0909090909092F2F2E686F7665722820616464486F7665722C2072656D6F76';
wwv_flow_api.g_varchar2_table(932) := '65486F7665722029202F2F207573652075692D6C61796F75742D746F67676C65722D776573742D686F766572202E636F6E74656E742D6F70656E20696E7374656164210D0A09090909093B0D0A09090909696620286F2E746F67676C6572436F6E74656E';
wwv_flow_api.g_varchar2_table(933) := '745F636C6F73656429202F2F2075692D6C61796F75742D636C6F7365640D0A09090909092428223C7370616E3E222B206F2E746F67676C6572436F6E74656E745F636C6F736564202B223C2F7370616E3E22290D0A0909090909092E64617461287B0D0A';
wwv_flow_api.g_varchar2_table(934) := '090909090909096C61796F7574456467653A090970616E650D0A0909090909092C096C61796F7574526F6C653A090922746F67676C6572436F6E74656E74220D0A0909090909097D290D0A0909090909092E616464436C6173732822636F6E74656E7420';
wwv_flow_api.g_varchar2_table(935) := '636F6E74656E742D636C6F73656422290D0A0909090909092E6373732822646973706C6179222C226E6F6E6522290D0A0909090909092E617070656E64546F2820245420290D0A0909090909092F2F2E686F7665722820616464486F7665722C2072656D';
wwv_flow_api.g_varchar2_table(936) := '6F7665486F7665722029202F2F207573652075692D6C61796F75742D746F67676C65722D776573742D686F766572202E636F6E74656E742D636C6F73656420696E7374656164210D0A09090909093B0D0A090909092F2F2041444420544F47474C45522E';
wwv_flow_api.g_varchar2_table(937) := '636C69636B2F2E686F7665720D0A09090909656E61626C65436C6F7361626C652870616E65293B0D0A0909097D0D0A0D0A0909092F2F2061646420447261676761626C65206576656E74730D0A090909696E6974526573697A61626C652870616E65293B';
wwv_flow_api.g_varchar2_table(938) := '0D0A0D0A0909092F2F2041444420434C4153534E414D4553202620534C4944452D42494E44494E4753202D2065673A20636C6173733D22726573697A657220726573697A65722D7765737420726573697A65722D6F70656E220D0A09090969662028732E';
wwv_flow_api.g_varchar2_table(939) := '697356697369626C65290D0A0909090973657441734F70656E2870616E65293B092F2F206F6E4F70656E2077696C6C2062652063616C6C65642C20627574204E4F54206F6E526573697A650D0A090909656C7365207B0D0A090909097365744173436C6F';
wwv_flow_api.g_varchar2_table(940) := '7365642870616E65293B092F2F206F6E436C6F73652077696C6C2062652063616C6C65640D0A0909090962696E645374617274536C6964696E674576656E74732870616E652C2074727565293B202F2F2077696C6C20656E61626C65206576656E747320';
wwv_flow_api.g_varchar2_table(941) := '4946206F7074696F6E206973207365740D0A0909097D0D0A0D0A09097D293B0D0A0D0A09092F2F2053455420414C4C2048414E444C452044494D454E53494F4E530D0A090973697A6548616E646C657328293B0D0A097D0D0A0D0A0D0A092F2A2A0D0A09';
wwv_flow_api.g_varchar2_table(942) := '202A20496E697469616C697A65207363726F6C6C696E672075692D6C61796F75742D636F6E74656E7420646976202D206966206578697374730D0A09202A0D0A09202A20407365652020696E697450616E652829202D206F722065787465726E616C6C79';
wwv_flow_api.g_varchar2_table(943) := '20616674657220616E20416A617820696E6A656374696F6E0D0A09202A2040706172616D207B737472696E677D0970616E650909095468652070616E6520746F2070726F636573730D0A09202A2040706172616D207B626F6F6C65616E3D7D095B726573';
wwv_flow_api.g_varchar2_table(944) := '697A653D747275655D0953697A6520636F6E74656E7420616674657220696E69740D0A09202A2F0D0A2C09696E6974436F6E74656E74203D2066756E6374696F6E202870616E652C20726573697A6529207B0D0A090969662028216973496E697469616C';
wwv_flow_api.g_varchar2_table(945) := '697A65642829292072657475726E3B0D0A0909766172200D0A0909096F093D206F7074696F6E735B70616E655D0D0A09092C0973656C093D206F2E636F6E74656E7453656C6563746F720D0A09092C0949093D20496E7374616E63655B70616E655D0D0A';
wwv_flow_api.g_varchar2_table(946) := '09092C092450093D202450735B70616E655D0D0A09092C0924430D0A09093B0D0A09096966202873656C29202443203D20492E636F6E74656E74203D202443735B70616E655D203D20286F2E66696E644E6573746564436F6E74656E74290D0A0909093F';
wwv_flow_api.g_varchar2_table(947) := '2024502E66696E642873656C292E6571283029202F2F206D6174636820312D656C656D656E74206F6E6C790D0A0909093A2024502E6368696C6472656E2873656C292E65712830290D0A09093B0D0A09096966202824432026262024432E6C656E677468';
wwv_flow_api.g_varchar2_table(948) := '29207B0D0A09090924432E6461746128226C61796F7574526F6C65222C2022636F6E74656E7422293B0D0A0909092F2F2053415645206F726967696E616C20436F6E74656E74204353530D0A090909696620282124432E6461746128226C61796F757443';
wwv_flow_api.g_varchar2_table(949) := '53532229290D0A0909090924432E6461746128226C61796F7574435353222C207374796C65732824432C20226865696768742229293B0D0A09090924432E63737328205F632E636F6E74656E742E63737352657120293B0D0A090909696620286F2E6170';
wwv_flow_api.g_varchar2_table(950) := '706C7944656D6F5374796C657329207B0D0A0909090924432E63737328205F632E636F6E74656E742E63737344656D6F20293B202F2F206164642070616464696E672026206F766572666C6F773A206175746F20746F20636F6E74656E742D6469760D0A';
wwv_flow_api.g_varchar2_table(951) := '0909090924502E63737328205F632E636F6E74656E742E63737344656D6F50616E6520293B202F2F2052454D4F56452070616464696E672F7363726F6C6C696E672066726F6D2070616E650D0A0909097D0D0A0909092F2F20656E73757265206E6F2076';
wwv_flow_api.g_varchar2_table(952) := '6572746963616C207363726F6C6C626172206F6E2070616E65202D2077696C6C206D657373207570206D6561737572656D656E74730D0A0909096966202824502E63737328226F766572666C6F775822292E6D61746368282F287363726F6C6C7C617574';
wwv_flow_api.g_varchar2_table(953) := '6F292F2929207B0D0A0909090924502E63737328226F766572666C6F77222C202268696464656E22293B0D0A0909097D0D0A09090973746174655B70616E655D2E636F6E74656E74203D207B7D3B202F2F20696E697420636F6E74656E74207374617465';
wwv_flow_api.g_varchar2_table(954) := '0D0A09090969662028726573697A6520213D3D2066616C7365292073697A65436F6E74656E742870616E65293B0D0A0909092F2F2073697A65436F6E74656E7428292069732063616C6C656420414654455220696E6974206F6620616C6C20656C656D65';
wwv_flow_api.g_varchar2_table(955) := '6E74730D0A09097D0D0A0909656C73650D0A090909492E636F6E74656E74203D202443735B70616E655D203D2066616C73653B0D0A097D0D0A0D0A0D0A092F2A2A0D0A09202A2041646420726573697A652D6261727320746F20616C6C2070616E657320';
wwv_flow_api.g_varchar2_table(956) := '74686174207370656369667920697420696E206F7074696F6E730D0A09202A202D646570656E64616E63793A20242E666E2E726573697A61626C65202D2077696C6C20736B6970206966206E6F7420666F756E640D0A09202A0D0A09202A204073656520';
wwv_flow_api.g_varchar2_table(957) := '205F63726561746528290D0A09202A2040706172616D207B737472696E673D7D095B70616E65733D22225D09546865206564676528732920746F2070726F636573730D0A09202A2F0D0A2C09696E6974526573697A61626C65203D2066756E6374696F6E';
wwv_flow_api.g_varchar2_table(958) := '202870616E657329207B0D0A0909766172096472616767696E67417661696C61626C65203D20242E6C61796F75742E706C7567696E732E647261676761626C650D0A09092C0973696465202F2F2073657420696E20737461727428290D0A09093B0D0A09';
wwv_flow_api.g_varchar2_table(959) := '0970616E6573203D2070616E6573203F2070616E65732E73706C697428222C2229203A205F632E626F7264657250616E65733B0D0A0D0A0909242E656163682870616E65732C2066756E6374696F6E20286964782C2070616E6529207B0D0A0909097661';
wwv_flow_api.g_varchar2_table(960) := '72206F203D206F7074696F6E735B70616E655D3B0D0A09090969662028216472616767696E67417661696C61626C65207C7C20212450735B70616E655D207C7C20216F2E726573697A61626C6529207B0D0A090909096F2E726573697A61626C65203D20';
wwv_flow_api.g_varchar2_table(961) := '66616C73653B0D0A0909090972657475726E20747275653B202F2F20736B697020746F206E6578740D0A0909097D0D0A0D0A090909766172207309093D2073746174655B70616E655D0D0A0909092C097A09093D206F7074696F6E732E7A496E64657865';
wwv_flow_api.g_varchar2_table(962) := '730D0A0909092C096309093D205F635B70616E655D0D0A0909092C0973696465093D20632E6469723D3D22686F727A22203F2022746F7022203A20226C656674220D0A0909092C0924502009093D202450735B70616E655D0D0A0909092C09245209093D';
wwv_flow_api.g_varchar2_table(963) := '202452735B70616E655D0D0A0909092C0962617365093D206F2E726573697A6572436C6173730D0A0909092C096C617374506F73093D2030202F2F2075736564207768656E206C6976652D726573697A696E670D0A0909092C09722C206C697665202F2F';
wwv_flow_api.g_varchar2_table(964) := '2073657420696E2073746172742062656361757365206D6179206368616E67650D0A0909092F2F0927647261672720636C617373657320617265206170706C69656420746F20746865204F524947494E414C20726573697A65722D626172207768696C65';
wwv_flow_api.g_varchar2_table(965) := '206472616767696E6720697320696E2070726F636573730D0A0909092C09726573697A6572436C61737309093D20626173652B222D6472616722090909092F2F20726573697A65722D647261670D0A0909092C09726573697A657250616E65436C617373';
wwv_flow_api.g_varchar2_table(966) := '093D20626173652B222D222B70616E652B222D647261672209092F2F20726573697A65722D6E6F7274682D647261670D0A0909092F2F092768656C7065722720636C617373206973206170706C69656420746F2074686520434C4F4E454420726573697A';
wwv_flow_api.g_varchar2_table(967) := '65722D626172207768696C65206974206973206265696E6720647261676765640D0A0909092C0968656C706572436C6173730909093D20626173652B222D6472616767696E67220909092F2F20726573697A65722D6472616767696E670D0A0909092C09';
wwv_flow_api.g_varchar2_table(968) := '68656C70657250616E65436C61737309093D20626173652B222D222B70616E652B222D6472616767696E6722202F2F20726573697A65722D6E6F7274682D6472616767696E670D0A0909092C0968656C7065724C696D6974436C617373093D2062617365';
wwv_flow_api.g_varchar2_table(969) := '2B222D6472616767696E672D6C696D697422092F2F20726573697A65722D647261670D0A0909092C0968656C70657250616E654C696D6974436C617373203D20626173652B222D222B70616E652B222D6472616767696E672D6C696D697422092F2F2072';
wwv_flow_api.g_varchar2_table(970) := '6573697A65722D6E6F7274682D647261670D0A0909092C0968656C706572436C6173736573536574093D2066616C73652009090909092F2F206C6F676963207661720D0A0909093B0D0A0D0A0909096966202821732E6973436C6F736564290D0A090909';
wwv_flow_api.g_varchar2_table(971) := '0924522E6174747228227469746C65222C206F2E746970732E526573697A65290D0A0909090920202E6373732822637572736F72222C206F2E726573697A6572437572736F72293B202F2F206E2D726573697A652C20732D726573697A652C206574630D';
wwv_flow_api.g_varchar2_table(972) := '0A0D0A09090924522E647261676761626C65287B0D0A09090909636F6E7461696E6D656E743A09244E5B305D202F2F206C696D697420726573697A696E6720746F206C61796F757420636F6E7461696E65720D0A0909092C09617869733A09090928632E';
wwv_flow_api.g_varchar2_table(973) := '6469723D3D22686F727A22203F20227922203A2022782229202F2F206C696D697420726573697A696E6720746F20686F727A206F72207665727420617869730D0A0909092C0964656C61793A090909300D0A0909092C0964697374616E63653A0909310D';
wwv_flow_api.g_varchar2_table(974) := '0A0909092C09677269643A0909096F2E726573697A696E67477269640D0A0909092F2F09626173696320666F726D617420666F722068656C706572202D207374796C65206974207573696E6720636C6173733A202E75692D647261676761626C652D6472';
wwv_flow_api.g_varchar2_table(975) := '616767696E670D0A0909092C0968656C7065723A09090922636C6F6E65220D0A0909092C096F7061636974793A09096F2E726573697A6572447261674F7061636974790D0A0909092C09616464436C61737365733A090966616C7365202F2F2061766F69';
wwv_flow_api.g_varchar2_table(976) := '642075692D73746174652D64697361626C656420636C617373207768656E2064697361626C65640D0A0909092F2F2C09696672616D654669783A09096F2E647261676761626C65496672616D65466978202F2F20544F444F3A20636F6E73696465722075';
wwv_flow_api.g_varchar2_table(977) := '73696E67207768656E206275672069732066697865640D0A0909092C097A496E6465783A0909097A2E726573697A65725F647261670D0A0D0A0909092C0973746172743A2066756E6374696F6E2028652C20756929207B0D0A09090909092F2F20524546';
wwv_flow_api.g_varchar2_table(978) := '52455348206F7074696F6E73202620737461746520706F696E7465727320696E20636173652077652075736564207377617050616E65730D0A09090909096F203D206F7074696F6E735B70616E655D3B0D0A090909090973203D2073746174655B70616E';
wwv_flow_api.g_varchar2_table(979) := '655D3B0D0A09090909092F2F2072652D72656164206F7074696F6E730D0A09090909096C697665203D206F2E6C69766550616E65526573697A696E673B0D0A0D0A09090909092F2F206F6E647261675F73746172742063616C6C6261636B202D2077696C';
wwv_flow_api.g_varchar2_table(980) := '6C2043414E43454C20686964652069662072657475726E732066616C73650D0A09090909092F2F20544F444F3A206472616767696E672043414E4E4F542062652063616E63656C6C6564206C696B6520746869732C20736F207365652069662074686572';
wwv_flow_api.g_varchar2_table(981) := '652069732061207761793F0D0A09090909096966202866616C7365203D3D3D205F72756E43616C6C6261636B7328226F6E647261675F7374617274222C2070616E6529292072657475726E2066616C73653B0D0A0D0A0909090909732E6973526573697A';
wwv_flow_api.g_varchar2_table(982) := '696E6709093D20747275653B202F2F2070726576656E742070616E652066726F6D20636C6F73696E67207768696C6520726573697A696E670D0A090909090973746174652E70616E65526573697A696E67093D2070616E653B202F2F206561737920746F';
wwv_flow_api.g_varchar2_table(983) := '2073656520696620414E592070616E6520697320726573697A696E670D0A090909090974696D65722E636C6561722870616E652B225F636C6F7365536C6964657222293B202F2F206A75737420696E206361736520616C72656164792074726967676572';
wwv_flow_api.g_varchar2_table(984) := '65640D0A0D0A09090909092F2F2053455420524553495A4552204C494D495453202D207573656420696E206472616728290D0A090909090973657453697A654C696D6974732870616E65293B202F2F207570646174652070616E652F726573697A657220';
wwv_flow_api.g_varchar2_table(985) := '73746174650D0A090909090972203D20732E726573697A6572506F736974696F6E3B0D0A09090909096C617374506F73203D2075692E706F736974696F6E5B2073696465205D0D0A0D0A090909090924522E616464436C6173732820726573697A657243';
wwv_flow_api.g_varchar2_table(986) := '6C617373202B2220222B20726573697A657250616E65436C61737320293B202F2F20616464206472616720636C61737365730D0A090909090968656C706572436C6173736573536574203D2066616C73653B202F2F207265736574206C6F676963207661';
wwv_flow_api.g_varchar2_table(987) := '72202D20736565206472616728290D0A0D0A09090909092F2F204D41534B2050414E455320434F4E5441494E494E4720494652414D45532C204150504C455453204F52204F544845522054524F55424C45534F4D4520454C454D454E54530D0A09090909';
wwv_flow_api.g_varchar2_table(988) := '0973686F774D61736B73282070616E652C207B20726573697A696E673A2074727565207D293B0D0A090909097D0D0A0D0A0909092C09647261673A2066756E6374696F6E2028652C20756929207B0D0A0909090909696620282168656C706572436C6173';
wwv_flow_api.g_varchar2_table(989) := '73657353657429207B202F2F2063616E206F6E6C792061646420636C617373657320616674657220636C6F6E6520686173206265656E20616464656420746F2074686520444F4D0D0A0909090909092F2F2428222E75692D647261676761626C652D6472';
wwv_flow_api.g_varchar2_table(990) := '616767696E6722290D0A09090909090975692E68656C7065720D0A090909090909092E616464436C617373282068656C706572436C617373202B2220222B2068656C70657250616E65436C6173732029202F2F206164642068656C70657220636C617373';
wwv_flow_api.g_varchar2_table(991) := '65730D0A090909090909092E637373287B2072696768743A20226175746F222C20626F74746F6D3A20226175746F22207D29092F2F20666978206469723D2272746C222069737375650D0A090909090909092E6368696C6472656E28292E637373282276';
wwv_flow_api.g_varchar2_table(992) := '69736962696C697479222C2268696464656E2229092F2F206869646520746F67676C657220696E73696465206472616767656420726573697A65722D6261720D0A0909090909093B0D0A09090909090968656C706572436C6173736573536574203D2074';
wwv_flow_api.g_varchar2_table(993) := '7275653B0D0A0909090909092F2F20647261676761626C6520627567213F2052452D534554207A496E64657820746F2070726576656E7420452F5720726573697A652D6261722073686F77696E67207468726F756768204E2F532070616E65210D0A0909';
wwv_flow_api.g_varchar2_table(994) := '0909090969662028732E6973536C6964696E6729202450735B70616E655D2E63737328227A496E646578222C207A2E70616E655F736C6964696E67293B0D0A09090909097D0D0A09090909092F2F20434F4E5441494E20524553495A45522D4241522054';
wwv_flow_api.g_varchar2_table(995) := '4F20524553495A494E47204C494D4954530D0A0909090909766172206C696D6974203D20303B0D0A09090909096966202875692E706F736974696F6E5B736964655D203C20722E6D696E29207B0D0A09090909090975692E706F736974696F6E5B736964';
wwv_flow_api.g_varchar2_table(996) := '655D203D20722E6D696E3B0D0A0909090909096C696D6974203D202D313B0D0A09090909097D0D0A0909090909656C7365206966202875692E706F736974696F6E5B736964655D203E20722E6D617829207B0D0A09090909090975692E706F736974696F';
wwv_flow_api.g_varchar2_table(997) := '6E5B736964655D203D20722E6D61783B0D0A0909090909096C696D6974203D20313B0D0A09090909097D0D0A09090909092F2F204144442F52454D4F5645206472616767696E672D6C696D697420434C4153530D0A0909090909696620286C696D697429';
wwv_flow_api.g_varchar2_table(998) := '207B0D0A09090909090975692E68656C7065722E616464436C617373282068656C7065724C696D6974436C617373202B2220222B2068656C70657250616E654C696D6974436C61737320293B202F2F206174206472616767696E672D6C696D69740D0A09';
wwv_flow_api.g_varchar2_table(999) := '090909090977696E646F772E64656661756C74537461747573203D20286C696D69743E302026262070616E652E6D61746368282F286E6F7274687C77657374292F2929207C7C20286C696D69743C302026262070616E652E6D61746368282F28736F7574';
wwv_flow_api.g_varchar2_table(1000) := '687C65617374292F2929203F206F2E746970732E6D617853697A655761726E696E67203A206F2E746970732E6D696E53697A655761726E696E673B0D0A09090909097D0D0A0909090909656C7365207B0D0A09090909090975692E68656C7065722E7265';
wwv_flow_api.g_varchar2_table(1001) := '6D6F7665436C617373282068656C7065724C696D6974436C617373202B2220222B2068656C70657250616E654C696D6974436C61737320293B202F2F206E6F74206174206472616767696E672D6C696D69740D0A09090909090977696E646F772E646566';
wwv_flow_api.g_varchar2_table(1002) := '61756C74537461747573203D2022223B0D0A09090909097D0D0A09090909092F2F2044594E414D4943414C4C5920524553495A452050414E4553204946204F5054494F4E20454E41424C45440D0A09090909092F2F20776F6E2774207472696767657220';
wwv_flow_api.g_varchar2_table(1003) := '756E6C65737320726573697A6572206861732061637475616C6C79206D6F766564210D0A0909090909696620286C697665202626204D6174682E6162732875692E706F736974696F6E5B736964655D202D206C617374506F7329203E3D206F2E6C697665';
wwv_flow_api.g_varchar2_table(1004) := '526573697A696E67546F6C6572616E636529207B0D0A0909090909096C617374506F73203D2075692E706F736974696F6E5B736964655D3B0D0A090909090909726573697A6550616E657328652C2075692C2070616E65290D0A09090909097D0D0A0909';
wwv_flow_api.g_varchar2_table(1005) := '09097D0D0A0D0A0909092C0973746F703A2066756E6374696F6E2028652C20756929207B0D0A0909090909242827626F647927292E656E61626C6553656C656374696F6E28293B202F2F2052452D454E41424C4520544558542053454C454354494F4E0D';
wwv_flow_api.g_varchar2_table(1006) := '0A090909090977696E646F772E64656661756C74537461747573203D2022223B202F2F20636C6561722027726573697A696E67206C696D697427206D6573736167652066726F6D207374617475736261720D0A090909090924522E72656D6F7665436C61';
wwv_flow_api.g_varchar2_table(1007) := '73732820726573697A6572436C617373202B2220222B20726573697A657250616E65436C61737320293B202F2F2072656D6F7665206472616720636C61737365732066726F6D20526573697A65720D0A0909090909732E6973526573697A696E6709093D';
wwv_flow_api.g_varchar2_table(1008) := '2066616C73653B0D0A090909090973746174652E70616E65526573697A696E67093D2066616C73653B202F2F206561737920746F2073656520696620414E592070616E6520697320726573697A696E670D0A0909090909726573697A6550616E65732865';
wwv_flow_api.g_varchar2_table(1009) := '2C2075692C2070616E652C2074727565293B202F2F2074727565203D20726573697A696E67446F6E650D0A090909097D0D0A0D0A0909097D293B0D0A09097D293B0D0A0D0A09092F2A2A0D0A0909202A20726573697A6550616E65730D0A0909202A0D0A';
wwv_flow_api.g_varchar2_table(1010) := '0909202A205375622D726F7574696E652063616C6C65642066726F6D2073746F702829202D20616E6420647261672829206966206C69766550616E65526573697A696E670D0A0909202A0D0A0909202A2040706172616D207B214F626A6563747D090965';
wwv_flow_api.g_varchar2_table(1011) := '76740D0A0909202A2040706172616D207B214F626A6563747D090975690D0A0909202A2040706172616D207B737472696E677D090970616E650D0A0909202A2040706172616D207B626F6F6C65616E3D7D09095B726573697A696E67446F6E653D66616C';
wwv_flow_api.g_varchar2_table(1012) := '73655D0D0A0909202A2F0D0A090976617220726573697A6550616E6573203D2066756E6374696F6E20286576742C2075692C2070616E652C20726573697A696E67446F6E6529207B0D0A0909097661720964726167506F73093D2075692E706F73697469';
wwv_flow_api.g_varchar2_table(1013) := '6F6E0D0A0909092C096309093D205F635B70616E655D0D0A0909092C096F09093D206F7074696F6E735B70616E655D0D0A0909092C097309093D2073746174655B70616E655D0D0A0909092C09726573697A6572506F730D0A0909093B0D0A0909097377';
wwv_flow_api.g_varchar2_table(1014) := '69746368202870616E6529207B0D0A090909096361736520226E6F727468223A09726573697A6572506F73203D2064726167506F732E746F703B20627265616B3B0D0A0909090963617365202277657374223A09726573697A6572506F73203D20647261';
wwv_flow_api.g_varchar2_table(1015) := '67506F732E6C6566743B20627265616B3B0D0A09090909636173652022736F757468223A09726573697A6572506F73203D2073432E6C61796F7574486569676874202D2064726167506F732E746F7020202D206F2E73706163696E675F6F70656E3B2062';
wwv_flow_api.g_varchar2_table(1016) := '7265616B3B0D0A0909090963617365202265617374223A09726573697A6572506F73203D2073432E6C61796F7574576964746820202D2064726167506F732E6C656674202D206F2E73706163696E675F6F70656E3B20627265616B3B0D0A0909097D3B0D';
wwv_flow_api.g_varchar2_table(1017) := '0A0909092F2F2072656D6F766520636F6E7461696E6572206D617267696E2066726F6D20726573697A657220706F736974696F6E20746F20676574207468652070616E652073697A650D0A090909766172206E657753697A65203D20726573697A657250';
wwv_flow_api.g_varchar2_table(1018) := '6F73202D2073432E696E7365745B632E736964655D3B0D0A0D0A0909092F2F2044697361626C65204F5220526573697A65204D61736B287329206372656174656420696E20647261672E73746172740D0A0909096966202821726573697A696E67446F6E';
wwv_flow_api.g_varchar2_table(1019) := '6529207B0D0A090909092F2F20656E73757265207765206D656574206C697665526573697A696E67546F6C6572616E63652063726974657269610D0A09090909696620284D6174682E616273286E657753697A65202D20732E73697A6529203C206F2E6C';
wwv_flow_api.g_varchar2_table(1020) := '697665526573697A696E67546F6C6572616E6365290D0A090909090972657475726E3B202F2F20534B495020726573697A6520746869732074696D650D0A090909092F2F20726573697A65207468652070616E650D0A090909096D616E75616C53697A65';
wwv_flow_api.g_varchar2_table(1021) := '50616E652870616E652C206E657753697A652C2066616C73652C2074727565293B202F2F2074727565203D206E6F416E696D6174696F6E0D0A0909090973697A654D61736B7328293B202F2F20726573697A6520616C6C2076697369626C65206D61736B';
wwv_flow_api.g_varchar2_table(1022) := '730D0A0909097D0D0A090909656C7365207B202F2F20726573697A696E67446F6E650D0A090909092F2F206F6E647261675F656E642063616C6C6261636B0D0A090909096966202866616C736520213D3D205F72756E43616C6C6261636B7328226F6E64';
wwv_flow_api.g_varchar2_table(1023) := '7261675F656E64222C2070616E6529290D0A09090909096D616E75616C53697A6550616E652870616E652C206E657753697A652C2066616C73652C2074727565293B202F2F2074727565203D206E6F416E696D6174696F6E0D0A09090909686964654D61';
wwv_flow_api.g_varchar2_table(1024) := '736B732874727565293B202F2F2074727565203D20666F72636520686964696E6720616C6C206D61736B73206576656E206966206F6E652069732027736C6964696E67270D0A0909090969662028732E6973536C6964696E6729202F2F2052452D53484F';
wwv_flow_api.g_varchar2_table(1025) := '5720276F626A6563742D6D61736B732720736F206F626A6563747320776F6E27742073686F77207468726F75676820736C6964696E672070616E650D0A090909090973686F774D61736B73282070616E652C207B20726573697A696E673A207472756520';
wwv_flow_api.g_varchar2_table(1026) := '7D293B0D0A0909097D0D0A09097D3B0D0A097D0D0A0D0A092F2A2A0D0A09202A0973697A654D61736B0D0A09202A0D0A09202A094E656564656420746F206F7665726C6179206120444956206F76657220616E20494652414D452D70616E652062656361';
wwv_flow_api.g_varchar2_table(1027) := '757365206D61736B2043414E4E4F54206265202A696E736964652A207468652070616E650D0A09202A0943616C6C6564207768656E206D61736B20637265617465642C20616E6420647572696E67206C69766550616E65526573697A696E670D0A09202A';
wwv_flow_api.g_varchar2_table(1028) := '2F0D0A2C0973697A654D61736B203D2066756E6374696F6E202829207B0D0A090976617220244D09093D20242874686973290D0A09092C0970616E65093D20244D2E6461746128226C61796F75744D61736B2229202F2F2065673A202277657374220D0A';
wwv_flow_api.g_varchar2_table(1029) := '09092C097309093D2073746174655B70616E655D0D0A09093B0D0A09092F2F206F6E6C79206D61736B73206F76657220616E20494652414D452D70616E65206E656564206D616E75616C20726573697A696E670D0A090969662028732E7461674E616D65';
wwv_flow_api.g_varchar2_table(1030) := '203D3D2022494652414D452220262620732E697356697369626C6529202F2F206E6F206E65656420746F206D61736B20636C6F7365642F68696464656E2070616E65730D0A090909244D2E637373287B0D0A09090909746F703A09732E6F666673657454';
wwv_flow_api.g_varchar2_table(1031) := '6F700D0A0909092C096C6566743A09732E6F66667365744C6566740D0A0909092C0977696474683A09732E6F7574657257696474680D0A0909092C096865696768743A09732E6F757465724865696768740D0A0909097D293B0D0A09092F2A20414C5420';
wwv_flow_api.g_varchar2_table(1032) := '4D6574686F642E2E2E0D0A0909766172202450203D202450735B70616E655D3B0D0A0909244D2E637373282024502E706F736974696F6E282920292E637373287B2077696474683A2024505B305D2E6F666673657457696474682C206865696768743A20';
wwv_flow_api.g_varchar2_table(1033) := '24505B305D2E6F6666736574486569676874207D293B0D0A09092A2F0D0A097D0D0A2C0973697A654D61736B73203D2066756E6374696F6E202829207B0D0A0909244D732E65616368282073697A654D61736B20293B202F2F20726573697A6520616C6C';
wwv_flow_api.g_varchar2_table(1034) := '202776697369626C6527206D61736B730D0A097D0D0A0D0A092F2A2A0D0A09202A2040706172616D207B737472696E677D0970616E6509095468652070616E65206265696E6720726573697A65642C20616E696D61746564206F72206973536C6964696E';
wwv_flow_api.g_varchar2_table(1035) := '670D0A09202A2040706172616D207B4F626A6563743D7D095B617267735D0909286F7074696F6E616C29204F7074696F6E733A207768696368206D61736B7320746F206170706C792C20616E6420746F2077686963682070616E65730D0A09202A2F0D0A';
wwv_flow_api.g_varchar2_table(1036) := '2C0973686F774D61736B73203D2066756E6374696F6E202870616E652C206172677329207B0D0A0909766172096309093D205F635B70616E655D0D0A09092C0970616E6573093D20205B2263656E746572225D0D0A09092C097A09093D206F7074696F6E';
wwv_flow_api.g_varchar2_table(1037) := '732E7A496E64657865730D0A09092C096109093D20242E657874656E64287B0D0A0909090909096F626A656374734F6E6C793A0966616C73650D0A09090909092C09616E696D6174696F6E3A090966616C73650D0A09090909092C09726573697A696E67';
wwv_flow_api.g_varchar2_table(1038) := '3A0909747275650D0A09090909092C09736C6964696E673A090973746174655B70616E655D2E6973536C6964696E670D0A09090909097D2C096172677320290D0A09092C096F2C20730D0A09093B0D0A090969662028612E726573697A696E67290D0A09';
wwv_flow_api.g_varchar2_table(1039) := '090970616E65732E70757368282070616E6520293B0D0A090969662028612E736C6964696E67290D0A09090970616E65732E7075736828205F632E6F70706F73697465456467655B70616E655D20293B202F2F2041444420746865206F70706F73697465';
wwv_flow_api.g_varchar2_table(1040) := '456467652D70616E650D0A0D0A090969662028632E646972203D3D3D2022686F727A2229207B0D0A09090970616E65732E7075736828227765737422293B0D0A09090970616E65732E7075736828226561737422293B0D0A09097D0D0A0D0A0909242E65';
wwv_flow_api.g_varchar2_table(1041) := '6163682870616E65732C2066756E6374696F6E28692C70297B0D0A09090973203D2073746174655B705D3B0D0A0909096F203D206F7074696F6E735B705D3B0D0A09090969662028732E697356697369626C652026262028206F2E6D61736B4F626A6563';
wwv_flow_api.g_varchar2_table(1042) := '7473207C7C202821612E6F626A656374734F6E6C79202626206F2E6D61736B436F6E74656E747329202929207B0D0A090909096765744D61736B732870292E656163682866756E6374696F6E28297B0D0A090909090973697A654D61736B2E63616C6C28';
wwv_flow_api.g_varchar2_table(1043) := '74686973293B0D0A0909090909746869732E7374796C652E7A496E646578203D20732E6973536C6964696E67203F207A2E70616E655F736C6964696E672B31203A207A2E70616E655F6E6F726D616C2B310D0A0909090909746869732E7374796C652E64';
wwv_flow_api.g_varchar2_table(1044) := '6973706C6179203D2022626C6F636B223B0D0A090909097D293B0D0A0909097D0D0A09097D293B0D0A097D0D0A0D0A092F2A2A0D0A09202A2040706172616D207B626F6F6C65616E3D7D09666F726365090948696465206D61736B73206576656E206966';
wwv_flow_api.g_varchar2_table(1045) := '20612070616E6520697320736C6964696E670D0A09202A2F0D0A2C09686964654D61736B73203D2066756E6374696F6E2028666F72636529207B0D0A09092F2F20656E73757265206E6F2070616E6520697320726573697A696E67202D20636F756C6420';
wwv_flow_api.g_varchar2_table(1046) := '626520612074696D696E672069737375650D0A090969662028666F726365207C7C202173746174652E70616E65526573697A696E6729207B0D0A090909244D732E6869646528293B202F2F206869646520414C4C206D61736B730D0A09097D0D0A09092F';
wwv_flow_api.g_varchar2_table(1047) := '2F20696620414E592070616E6520697320736C6964696E672C207468656E20444F204E4F542072656D6F7665206D61736B732066726F6D2070616E65732077697468206D61736B4F626A6563747320656E61626C65640D0A0909656C7365206966202821';
wwv_flow_api.g_varchar2_table(1048) := '666F7263652026262021242E6973456D7074794F626A656374282073746174652E70616E6573536C6964696E67202929207B0D0A0909097661720969203D20244D732E6C656E677468202D20310D0A0909092C09702C20244D3B0D0A090909666F722028';
wwv_flow_api.g_varchar2_table(1049) := '3B2069203E3D20303B20692D2D29207B0D0A09090909244D093D20244D732E65712869293B0D0A0909090970093D20244D2E6461746128226C61796F75744D61736B22293B0D0A0909090969662028216F7074696F6E735B705D2E6D61736B4F626A6563';
wwv_flow_api.g_varchar2_table(1050) := '747329207B0D0A0909090909244D2E6869646528293B0D0A090909097D0D0A0909097D0D0A09097D0D0A097D0D0A0D0A092F2A2A0D0A09202A2040706172616D207B737472696E677D0970616E650D0A09202A2F0D0A2C096765744D61736B73203D2066';
wwv_flow_api.g_varchar2_table(1051) := '756E6374696F6E202870616E6529207B0D0A090976617220244D61736B73093D2024285B5D290D0A09092C09244D2C2069203D20302C2063203D20244D732E6C656E6774680D0A09093B0D0A0909666F7220283B20693C633B20692B2B29207B0D0A0909';
wwv_flow_api.g_varchar2_table(1052) := '09244D203D20244D732E65712869293B0D0A09090969662028244D2E6461746128226C61796F75744D61736B2229203D3D3D2070616E65290D0A09090909244D61736B73203D20244D61736B732E6164642820244D20293B0D0A09097D0D0A0909696620';
wwv_flow_api.g_varchar2_table(1053) := '28244D61736B732E6C656E677468290D0A09090972657475726E20244D61736B733B0D0A0909656C73650D0A09090972657475726E206372656174654D61736B732870616E65293B0D0A097D0D0A0D0A092F2A2A0D0A09202A206372656174654D61736B';
wwv_flow_api.g_varchar2_table(1054) := '730D0A09202A0D0A09202A2047656E65726174657320626F7468204449562028414C5741595320757365642920616E6420494652414D4520286F7074696F6E616C2920656C656D656E7473206173206D61736B730D0A09202A20416E20494652414D4520';
wwv_flow_api.g_varchar2_table(1055) := '6D61736B2069732063726561746564202A756E6465722A2074686520444956207768656E206D61736B4F626A656374733D747275652C20626563617573652061204449562063616E6E6F74206D61736B20616E206170706C65740D0A09202A0D0A09202A';
wwv_flow_api.g_varchar2_table(1056) := '2040706172616D207B737472696E677D0970616E650D0A09202A2F0D0A2C096372656174654D61736B73203D2066756E6374696F6E202870616E6529207B0D0A09097661720D0A0909092450093D202450735B70616E655D0D0A09092C0973093D207374';
wwv_flow_api.g_varchar2_table(1057) := '6174655B70616E655D0D0A09092C096F093D206F7074696F6E735B70616E655D0D0A09092C097A093D206F7074696F6E732E7A496E64657865730D0A09092C096973496672616D652C20656C2C20244D2C206373732C20690D0A09093B0D0A0909696620';
wwv_flow_api.g_varchar2_table(1058) := '28216F2E6D61736B436F6E74656E747320262620216F2E6D61736B4F626A65637473292072657475726E2024285B5D293B0D0A09092F2F206966206F2E6D61736B4F626A656374733D747275652C207468656E206C6F6F7020545749434520746F206372';
wwv_flow_api.g_varchar2_table(1059) := '6561746520424F5448206B696E6473206F66206D61736B2C20656C7365206F6E6C79206372656174652061204449560D0A0909666F722028693D303B2069203C20286F2E6D61736B4F626A65637473203F2032203A2031293B20692B2B29207B0D0A0909';
wwv_flow_api.g_varchar2_table(1060) := '096973496672616D65203D206F2E6D61736B4F626A6563747320262620693D3D303B0D0A090909656C203D20646F63756D656E742E637265617465456C656D656E7428206973496672616D65203F2022696672616D6522203A20226469762220293B0D0A';
wwv_flow_api.g_varchar2_table(1061) := '090909244D203D202428656C292E6461746128226C61796F75744D61736B222C2070616E65293B202F2F20616464206461746120746F2072656C617465206D61736B20746F2070616E650D0A090909656C2E636C6173734E616D65203D202275692D6C61';
wwv_flow_api.g_varchar2_table(1062) := '796F75742D6D61736B2075692D6C61796F75742D6D61736B2D222B2070616E653B202F2F20666F722075736572207374796C696E670D0A090909637373203D20656C2E7374796C653B0D0A0909092F2F20426F7468204449567320616E6420494652414D';
wwv_flow_api.g_varchar2_table(1063) := '45530D0A0909096373732E6261636B67726F756E64093D202223464646223B0D0A0909096373732E706F736974696F6E093D20226162736F6C757465223B0D0A0909096373732E646973706C617909093D2022626C6F636B223B0D0A0909096966202869';
wwv_flow_api.g_varchar2_table(1064) := '73496672616D6529207B202F2F20494652414D452D6F6E6C792070726F70730D0A09090909656C2E73726309093D202261626F75743A626C616E6B223B0D0A09090909656C2E6672616D65626F72646572203D20303B0D0A090909096373732E626F7264';
wwv_flow_api.g_varchar2_table(1065) := '6572093D20303B0D0A090909096373732E6F706163697479093D20303B0D0A090909096373732E66696C746572093D2022416C706861284F7061636974793D27302729223B0D0A090909092F2F656C2E616C6C6F775472616E73706172656E6379203D20';
wwv_flow_api.g_varchar2_table(1066) := '747275653B202D20666F722049452C2062757420627265616B73206D61736B696E67206162696C697479210D0A0909097D0D0A090909656C7365207B202F2F204449562D6F6E6C792070726F70730D0A090909096373732E6F706163697479093D20302E';
wwv_flow_api.g_varchar2_table(1067) := '3030313B0D0A090909096373732E66696C746572093D2022416C706861284F7061636974793D27312729223B0D0A0909097D0D0A0909092F2F2069662070616E6520495320616E20494652414D452C207468656E206D757374206D61736B207468652070';
wwv_flow_api.g_varchar2_table(1068) := '616E6520697473656C660D0A09090969662028732E7461674E616D65203D3D2022494652414D452229207B0D0A090909092F2F204E4F54452073697A696E6720646F6E65206279206120737562726F7574696E6520736F2063616E2062652063616C6C65';
wwv_flow_api.g_varchar2_table(1069) := '6420647572696E67206C6976652D726573697A696E670D0A090909096373732E7A496E646578093D207A2E70616E655F6E6F726D616C2B313B202F2F20312D686967686572207468616E2070616E650D0A09090909244E2E617070656E642820656C2029';
wwv_flow_api.g_varchar2_table(1070) := '3B202F2F20617070656E6420746F204C41594F555420434F4E5441494E45520D0A0909097D0D0A0909092F2F206F746865727769736520707574206D61736B73202A696E73696465207468652070616E652A20746F206D61736B2069747320636F6E7465';
wwv_flow_api.g_varchar2_table(1071) := '6E74730D0A090909656C7365207B0D0A09090909244D2E616464436C617373282275692D6C61796F75742D6D61736B2D696E736964652D70616E6522293B0D0A090909096373732E7A496E646578093D206F2E6D61736B5A696E646578207C7C207A2E63';
wwv_flow_api.g_varchar2_table(1072) := '6F6E74656E745F6D61736B3B202F2F20757375616C6C7920312C2062757420637573746F6D697A61626C650D0A090909096373732E746F7009093D20303B0D0A090909096373732E6C656674093D20303B0D0A090909096373732E7769647468093D2022';
wwv_flow_api.g_varchar2_table(1073) := '31303025223B0D0A090909096373732E686569676874093D202231303025223B0D0A0909090924502E617070656E642820656C20293B202F2F20617070656E6420494E534944452070616E6520656C656D656E740D0A0909097D0D0A0909092F2F206164';
wwv_flow_api.g_varchar2_table(1074) := '64204D61736B20746F2063616368656420617272617920736F2063616E20626520726573697A65642026207265757365640D0A090909244D73203D20244D732E6164642820656C20293B0D0A09097D0D0A090972657475726E20244D733B0D0A097D0D0A';
wwv_flow_api.g_varchar2_table(1075) := '0D0A0D0A092F2A2A0D0A09202A2044657374726F792074686973206C61796F757420616E6420726573657420616C6C20656C656D656E74730D0A09202A0D0A09202A2040706172616D207B626F6F6C65616E3D7D095B64657374726F794368696C647265';
wwv_flow_api.g_varchar2_table(1076) := '6E3D66616C73655D0909446573746F7279204368696C642D4C61796F7574732066697273743F0D0A09202A2F0D0A2C0964657374726F79203D2066756E6374696F6E20286576745F6F725F64657374726F794368696C6472656E2C2064657374726F7943';
wwv_flow_api.g_varchar2_table(1077) := '68696C6472656E29207B0D0A09092F2F20554E42494E44206C61796F7574206576656E747320616E642072656D6F766520676C6F62616C206F626A6563740D0A0909242877696E646F77292E756E62696E6428222E222B20734944293B09092F2F207265';
wwv_flow_api.g_varchar2_table(1078) := '73697A65202620756E6C6F61640D0A09092428646F63756D656E74292E756E62696E6428222E222B20734944293B092F2F206B6579446F776E2028686F746B657973290D0A0D0A090969662028747970656F66206576745F6F725F64657374726F794368';
wwv_flow_api.g_varchar2_table(1079) := '696C6472656E203D3D3D20226F626A65637422290D0A0909092F2F2073746F7050726F7061676174696F6E2069662063616C6C6564206279207472696767657228226C61796F757464657374726F792229202D207573652065767450616E65207574696C';
wwv_flow_api.g_varchar2_table(1080) := '697479200D0A09090965767450616E65286576745F6F725F64657374726F794368696C6472656E293B0D0A0909656C7365202F2F206E6F206576656E742C20736F207472616E736665722031737420706172616D20746F2064657374726F794368696C64';
wwv_flow_api.g_varchar2_table(1081) := '72656E20706172616D0D0A09090964657374726F794368696C6472656E203D206576745F6F725F64657374726F794368696C6472656E3B0D0A0D0A09092F2F206E65656420746F206C6F6F6B20666F7220706172656E74206C61796F7574204245464F52';
wwv_flow_api.g_varchar2_table(1082) := '452077652072656D6F76652074686520636F6E7461696E657220646174612C20656C736520736B6970732061206C6576656C0D0A09092F2F76617220706172656E7450616E65203D20496E7374616E63652E686173506172656E744C61796F7574203F20';
wwv_flow_api.g_varchar2_table(1083) := '242E6C61796F75742E676574506172656E7450616E65496E7374616E63652820244E2029203A206E756C6C3B0D0A0D0A09092F2F207265736574206C61796F75742D636F6E7461696E65720D0A0909244E092E636C656172517565756528290D0A090909';
wwv_flow_api.g_varchar2_table(1084) := '2E72656D6F76654461746128226C61796F757422290D0A0909092E72656D6F76654461746128226C61796F7574436F6E7461696E657222290D0A0909092E72656D6F7665436C617373286F7074696F6E732E636F6E7461696E6572436C617373290D0A09';
wwv_flow_api.g_varchar2_table(1085) := '09092E756E62696E6428222E222B2073494429202F2F2072656D6F766520414C4C204C61796F7574206576656E74730D0A09093B0D0A0D0A09092F2F2072656D6F766520616C6C206D61736B20656C656D656E747320746861742068617665206265656E';
wwv_flow_api.g_varchar2_table(1086) := '20637265617465640D0A0909244D732E72656D6F766528293B0D0A0D0A09092F2F206C6F6F7020616C6C2070616E657320746F2072656D6F7665206C61796F757420636C61737365732C206174747269627574657320616E642062696E64696E67730D0A';
wwv_flow_api.g_varchar2_table(1087) := '0909242E65616368285F632E616C6C50616E65732C2066756E6374696F6E2028692C2070616E6529207B0D0A09090972656D6F766550616E65282070616E652C2066616C73652C20747275652C2064657374726F794368696C6472656E20293B202F2F20';
wwv_flow_api.g_varchar2_table(1088) := '74727565203D20736B6970526573697A650D0A09097D293B0D0A0D0A09092F2F20646F204E4F5420726573657420636F6E7461696E6572204353532069662069732061202770616E652720286F722027636F6E74656E74272920696E20616E206F757465';
wwv_flow_api.g_varchar2_table(1089) := '722D6C61796F7574202D2069652C2054484953206C61796F757420697320276E6573746564270D0A090976617220637373203D20226C61796F7574435353223B0D0A090969662028244E2E6461746128637373292026262021244E2E6461746128226C61';
wwv_flow_api.g_varchar2_table(1090) := '796F7574526F6C65222929202F2F205245534554204353530D0A090909244E2E6373732820244E2E64617461286373732920292E72656D6F76654461746128637373293B0D0A0D0A09092F2F20666F722066756C6C2D70616765206C61796F7574732C20';
wwv_flow_api.g_varchar2_table(1091) := '616C736F20726573657420746865203C48544D4C3E204353530D0A09096966202873432E7461674E616D65203D3D3D2022424F4459222026262028244E203D2024282268746D6C2229292E64617461286373732929202F2F205245534554203C48544D4C';
wwv_flow_api.g_varchar2_table(1092) := '3E204353530D0A090909244E2E6373732820244E2E64617461286373732920292E72656D6F76654461746128637373293B0D0A0D0A09092F2F207472696767657220706C7567696E7320666F722074686973206C61796F75742C20696620746865726520';
wwv_flow_api.g_varchar2_table(1093) := '61726520616E790D0A090972756E506C7567696E43616C6C6261636B732820496E7374616E63652C20242E6C61796F75742E6F6E44657374726F7920293B0D0A0D0A09092F2F20747269676765722073746174652D6D616E6167656D656E7420616E6420';
wwv_flow_api.g_varchar2_table(1094) := '6F6E756E6C6F61642063616C6C6261636B0D0A0909756E6C6F616428293B0D0A0D0A09092F2F20636C6561722074686520496E7374616E6365206F662065766572797468696E672065786365707420666F7220636F6E7461696E65722026206F7074696F';
wwv_flow_api.g_varchar2_table(1095) := '6E732028736F20636F756C64207265637265617465290D0A09092F2F2052452D4352454154453A206D794C61796F7574203D206D794C61796F75742E636F6E7461696E65722E6C61796F757428206D794C61796F75742E6F7074696F6E7320293B0D0A09';
wwv_flow_api.g_varchar2_table(1096) := '09666F722028766172206E20696E20496E7374616E6365290D0A09090969662028216E2E6D61746368282F5E28636F6E7461696E65727C6F7074696F6E7329242F29292064656C65746520496E7374616E63655B206E205D3B0D0A09092F2F2061646420';
wwv_flow_api.g_varchar2_table(1097) := '61202764657374726F7965642720666C616720746F206D616B65206974206561737920746F20636865636B0D0A0909496E7374616E63652E64657374726F796564203D20747275653B0D0A0D0A09092F2F20696620746869732069732061206368696C64';
wwv_flow_api.g_varchar2_table(1098) := '206C61796F75742C20434C45415220746865206368696C642D706F696E74657220696E2074686520706172656E740D0A09092F2A20666F72206E6F772074686520706F696E7465722052454D41494E532C206275742077697468206F6E6C7920636F6E74';
wwv_flow_api.g_varchar2_table(1099) := '61696E65722C206F7074696F6E7320616E642064657374726F796564206B6579730D0A090969662028706172656E7450616E6529207B0D0A090909766172206C61796F7574093D20706172656E7450616E652E70616E652E646174612822706172656E74';
wwv_flow_api.g_varchar2_table(1100) := '4C61796F757422290D0A0909092C096B657909093D206C61796F75742E6F7074696F6E732E696E7374616E63654B6579207C7C20276572726F72273B0D0A0909092F2F20544849532053594E544158204D41592042452057524F4E47210D0A0909097061';
wwv_flow_api.g_varchar2_table(1101) := '72656E7450616E652E6368696C6472656E5B6B65795D203D206C61796F75742E6368696C6472656E5B20706172656E7450616E652E6E616D65205D2E6368696C6472656E5B6B65795D203D206E756C6C3B0D0A09097D0D0A09092A2F0D0A0D0A09097265';
wwv_flow_api.g_varchar2_table(1102) := '7475726E20496E7374616E63653B202F2F20666F7220636F64696E6720636F6E76656E69656E63650D0A097D0D0A0D0A092F2A2A0D0A09202A2052656D6F766520612070616E652066726F6D20746865206C61796F7574202D20737562726F7574696E65';
wwv_flow_api.g_varchar2_table(1103) := '206F662064657374726F7928290D0A09202A0D0A09202A2040736565202064657374726F7928290D0A09202A2040706172616D207B28737472696E677C4F626A656374297D096576745F6F725F70616E650909095468652070616E6520746F2070726F63';
wwv_flow_api.g_varchar2_table(1104) := '6573730D0A09202A2040706172616D207B626F6F6C65616E3D7D0909095B72656D6F76653D66616C73655D090952656D6F76652074686520444F4D20656C656D656E743F0D0A09202A2040706172616D207B626F6F6C65616E3D7D0909095B736B697052';
wwv_flow_api.g_varchar2_table(1105) := '6573697A653D66616C73655D09536B69702063616C6C696E6720726573697A65416C6C28293F0D0A09202A2040706172616D207B626F6F6C65616E3D7D0909095B64657374726F794368696C643D747275655D0944657374726F79204368696C642D6C61';
wwv_flow_api.g_varchar2_table(1106) := '796F7574733F204966206E6F74207061737365642C206F62657973206F7074696F6E732073657474696E670D0A09202A2F0D0A2C0972656D6F766550616E65203D2066756E6374696F6E20286576745F6F725F70616E652C2072656D6F76652C20736B69';
wwv_flow_api.g_varchar2_table(1107) := '70526573697A652C2064657374726F794368696C6429207B0D0A090969662028216973496E697469616C697A65642829292072657475726E3B0D0A09097661720970616E65203D2065767450616E652E63616C6C28746869732C206576745F6F725F7061';
wwv_flow_api.g_varchar2_table(1108) := '6E65290D0A09092C092450093D202450735B70616E655D0D0A09092C092443093D202443735B70616E655D0D0A09092C092452093D202452735B70616E655D0D0A09092C092454093D202454735B70616E655D0D0A09093B0D0A09092F2F204E4F54453A';
wwv_flow_api.g_varchar2_table(1109) := '20656C656D656E74732063616E207374696C6C206578697374206576656E2061667465722072656D6F766528290D0A09092F2F0909736F20636865636B20666F72206D697373696E67206461746128292C20776869636820697320636C65617265642062';
wwv_flow_api.g_varchar2_table(1110) := '792072656D6F76656428290D0A090969662028245020262620242E6973456D7074794F626A656374282024502E646174612829202929202450203D2066616C73653B0D0A090969662028244320262620242E6973456D7074794F626A656374282024432E';
wwv_flow_api.g_varchar2_table(1111) := '646174612829202929202443203D2066616C73653B0D0A090969662028245220262620242E6973456D7074794F626A656374282024522E646174612829202929202452203D2066616C73653B0D0A090969662028245420262620242E6973456D7074794F';
wwv_flow_api.g_varchar2_table(1112) := '626A656374282024542E646174612829202929202454203D2066616C73653B0D0A0D0A0909696620282450292024502E73746F7028747275652C2074727565293B0D0A0D0A0909766172096F093D206F7074696F6E735B70616E655D0D0A09092C097309';
wwv_flow_api.g_varchar2_table(1113) := '3D2073746174655B70616E655D0D0A09092C0964093D20226C61796F7574220D0A09092C09637373093D20226C61796F7574435353220D0A09092C097043093D206368696C6472656E5B70616E655D0D0A09092C096861734368696C6472656E093D2024';
wwv_flow_api.g_varchar2_table(1114) := '2E6973506C61696E4F626A6563742820704320292026262021242E6973456D7074794F626A6563742820704320290D0A09092C0964657374726F7909093D2064657374726F794368696C6420213D3D20756E646566696E6564203F2064657374726F7943';
wwv_flow_api.g_varchar2_table(1115) := '68696C64203A206F2E64657374726F794368696C6472656E0D0A09093B0D0A09092F2F2046495253542064657374726F7920746865206368696C642D6C61796F75742873290D0A0909696620286861734368696C6472656E2026262064657374726F7929';
wwv_flow_api.g_varchar2_table(1116) := '207B0D0A090909242E65616368282070432C2066756E6374696F6E20286B65792C206368696C6429207B0D0A0909090969662028216368696C642E64657374726F796564290D0A09090909096368696C642E64657374726F792874727565293B2F2F2074';
wwv_flow_api.g_varchar2_table(1117) := '656C6C206368696C642D6C61796F757420746F2064657374726F7920414C4C20697473206368696C642D6C61796F75747320746F6F0D0A09090909696620286368696C642E64657374726F79656429092F2F2064657374726F7920776173207375636365';
wwv_flow_api.g_varchar2_table(1118) := '737366756C0D0A090909090964656C6574652070435B6B65795D3B0D0A0909097D293B0D0A0909092F2F206966206E6F206D6F7265206368696C6472656E2C2072656D6F766520746865206368696C6472656E20686173680D0A09090969662028242E69';
wwv_flow_api.g_varchar2_table(1119) := '73456D7074794F626A65637428207043202929207B0D0A090909097043203D206368696C6472656E5B70616E655D203D206E756C6C3B202F2F20636C656172206368696C6472656E20686173680D0A090909096861734368696C6472656E203D2066616C';
wwv_flow_api.g_varchar2_table(1120) := '73653B0D0A0909097D0D0A09097D0D0A0D0A09092F2F204E6F74653A2063616E2774202772656D6F76652720612070616E6520656C656D656E742077697468206E6F6E2D64657374726F796564206368696C6472656E0D0A090969662028245020262620';
wwv_flow_api.g_varchar2_table(1121) := '72656D6F766520262620216861734368696C6472656E290D0A09090924502E72656D6F766528293B202F2F2072656D6F7665207468652070616E652D656C656D656E7420616E642065766572797468696E6720696E736964652069740D0A0909656C7365';
wwv_flow_api.g_varchar2_table(1122) := '206966202824502026262024505B305D29207B0D0A0909092F2F09637265617465206C697374206F6620414C4C2070616E652D636C61737365732074686174206E65656420746F2062652072656D6F7665640D0A09090976617209726F6F74093D206F2E';
wwv_flow_api.g_varchar2_table(1123) := '70616E65436C617373202F2F2064656661756C743D2275692D6C61796F75742D70616E65220D0A0909092C0970526F6F74093D20726F6F74202B222D222B2070616E65202F2F2065673A202275692D6C61796F75742D70616E652D77657374220D0A0909';
wwv_flow_api.g_varchar2_table(1124) := '092C095F6F70656E093D20222D6F70656E220D0A0909092C095F736C6964696E673D20222D736C6964696E67220D0A0909092C095F636C6F736564093D20222D636C6F736564220D0A0909092C09636C6173736573093D205B09726F6F742C20726F6F74';
wwv_flow_api.g_varchar2_table(1125) := '2B5F6F70656E2C20726F6F742B5F636C6F7365642C20726F6F742B5F736C6964696E672C09092F2F2067656E6572696320636C61737365730D0A0909090909090970526F6F742C2070526F6F742B5F6F70656E2C2070526F6F742B5F636C6F7365642C20';
wwv_flow_api.g_varchar2_table(1126) := '70526F6F742B5F736C6964696E67205D092F2F2070616E652D737065636966696320636C61737365730D0A0909093B0D0A090909242E6D6572676528636C61737365732C20676574486F766572436C61737365732824502C207472756529293B202F2F20';
wwv_flow_api.g_varchar2_table(1127) := '41444420686F7665722D636C61737365730D0A0909092F2F2072656D6F766520616C6C204C61796F757420636C61737365732066726F6D2070616E652D656C656D656E740D0A0909092450092E72656D6F7665436C6173732820636C61737365732E6A6F';
wwv_flow_api.g_varchar2_table(1128) := '696E28222022292029202F2F2072656D6F766520414C4C2070616E652D636C61737365730D0A090909092E72656D6F7665446174612822706172656E744C61796F757422290D0A090909092E72656D6F76654461746128226C61796F757450616E652229';
wwv_flow_api.g_varchar2_table(1129) := '0D0A090909092E72656D6F76654461746128226C61796F7574526F6C6522290D0A090909092E72656D6F76654461746128226C61796F75744564676522290D0A090909092E72656D6F76654461746128226175746F48696464656E2229092F2F20696E20';
wwv_flow_api.g_varchar2_table(1130) := '63617365207365740D0A090909092E756E62696E6428222E222B2073494429202F2F2072656D6F766520414C4C204C61796F7574206576656E74730D0A090909092F2F20544F444F3A2072656D6F766520746865736520657874726120756E62696E6420';
wwv_flow_api.g_varchar2_table(1131) := '636F6D6D616E6473207768656E206A51756572792069732066697865640D0A090909092F2F2E756E62696E6428226D6F757365656E746572222B20734944290D0A090909092F2F2E756E62696E6428226D6F7573656C65617665222B20734944290D0A09';
wwv_flow_api.g_varchar2_table(1132) := '09093B0D0A0909092F2F20646F204E4F542072657365742043535320696620746869732070616E652F636F6E74656E74206973205354494C4C2074686520636F6E7461696E6572206F662061206E6573746564206C61796F7574210D0A0909092F2F2074';
wwv_flow_api.g_varchar2_table(1133) := '6865206E6573746564206C61796F75742077696C6C207265736574206974732027636F6E7461696E65722720435353207768656E2F69662069742069732064657374726F7965640D0A090909696620286861734368696C6472656E20262620244329207B';
wwv_flow_api.g_varchar2_table(1134) := '0D0A090909092F2F206120636F6E74656E742D646976206D6179206E6F74206861766520612073706563696669632077696474682C20736F2067697665206974206F6E6520746F20636F6E7461696E20746865204C61796F75740D0A0909090924432E77';
wwv_flow_api.g_varchar2_table(1135) := '69647468282024432E7769647468282920293B0D0A09090909242E65616368282070432C2066756E6374696F6E20286B65792C206368696C6429207B0D0A09090909096368696C642E726573697A65416C6C28293B202F2F20726573697A652074686520';
wwv_flow_api.g_varchar2_table(1136) := '4C61796F75740D0A090909097D293B0D0A0909097D0D0A090909656C736520696620282443290D0A0909090924432E637373282024432E64617461286373732920292E72656D6F76654461746128637373292E72656D6F76654461746128226C61796F75';
wwv_flow_api.g_varchar2_table(1137) := '74526F6C6522293B0D0A0909092F2F2072656D6F76652070616E6520414654455220636F6E74656E7420696E2063617365207468657265207761732061206E6573746564206C61796F75740D0A090909696620282124502E64617461286429290D0A0909';
wwv_flow_api.g_varchar2_table(1138) := '090924502E637373282024502E64617461286373732920292E72656D6F76654461746128637373293B0D0A09097D0D0A0D0A09092F2F2052454D4F56452070616E6520726573697A657220616E6420746F67676C657220656C656D656E74730D0A090969';
wwv_flow_api.g_varchar2_table(1139) := '6620282454292024542E72656D6F766528293B0D0A0909696620282452292024522E72656D6F766528293B0D0A0D0A09092F2F20434C45415220616C6C20706F696E7465727320616E6420737461746520646174610D0A0909496E7374616E63655B7061';
wwv_flow_api.g_varchar2_table(1140) := '6E655D203D202450735B70616E655D203D202443735B70616E655D203D202452735B70616E655D203D202454735B70616E655D203D2066616C73653B0D0A090973203D207B2072656D6F7665643A2074727565207D3B0D0A0D0A09096966202821736B69';
wwv_flow_api.g_varchar2_table(1141) := '70526573697A65290D0A090909726573697A65416C6C28293B0D0A097D0D0A0D0A0D0A2F2A0D0A202A202323232323232323232323232323232323232323232323232323230D0A202A09202020414354494F4E204D4554484F44530D0A202A2023232323';
wwv_flow_api.g_varchar2_table(1142) := '23232323232323232323232323232323232323232323230D0A202A2F0D0A0D0A092F2A2A0D0A09202A2040706172616D207B737472696E677D0970616E650D0A09202A2F0D0A2C095F6869646550616E65203D2066756E6374696F6E202870616E652920';
wwv_flow_api.g_varchar2_table(1143) := '7B0D0A0909766172202450093D202450735B70616E655D0D0A09092C096F093D206F7074696F6E735B70616E655D0D0A09092C0973093D2024505B305D2E7374796C650D0A09093B0D0A0909696620286F2E7573654F666673637265656E436C6F736529';
wwv_flow_api.g_varchar2_table(1144) := '207B0D0A090909696620282124502E64617461285F632E6F666673637265656E526573657429290D0A0909090924502E64617461285F632E6F666673637265656E52657365742C207B206C6566743A20732E6C6566742C2072696768743A20732E726967';
wwv_flow_api.g_varchar2_table(1145) := '6874207D293B0D0A09090924502E63737328205F632E6F666673637265656E43535320293B0D0A09097D0D0A0909656C73650D0A09090924502E6869646528292E72656D6F766544617461285F632E6F666673637265656E5265736574293B0D0A097D0D';
wwv_flow_api.g_varchar2_table(1146) := '0A0D0A092F2A2A0D0A09202A2040706172616D207B737472696E677D0970616E650D0A09202A2F0D0A2C095F73686F7750616E65203D2066756E6374696F6E202870616E6529207B0D0A0909766172202450093D202450735B70616E655D0D0A09092C09';
wwv_flow_api.g_varchar2_table(1147) := '6F093D206F7074696F6E735B70616E655D0D0A09092C096F6666093D205F632E6F666673637265656E4353530D0A09092C096F6C64093D2024502E64617461285F632E6F666673637265656E5265736574290D0A09092C0973093D2024505B305D2E7374';
wwv_flow_api.g_varchar2_table(1148) := '796C650D0A09093B0D0A09092450092E73686F772829202F2F20414C574159532073686F772C206A75737420696E20636173650D0A0909092E72656D6F766544617461285F632E6F666673637265656E5265736574293B0D0A0909696620286F2E757365';
wwv_flow_api.g_varchar2_table(1149) := '4F666673637265656E436C6F7365202626206F6C6429207B0D0A09090969662028732E6C656674203D3D206F66662E6C656674290D0A09090909732E6C656674203D206F6C642E6C6566743B0D0A09090969662028732E7269676874203D3D206F66662E';
wwv_flow_api.g_varchar2_table(1150) := '7269676874290D0A09090909732E7269676874203D206F6C642E72696768743B0D0A09097D0D0A097D0D0A0D0A0D0A092F2A2A0D0A09202A20436F6D706C6574656C79202768696465732720612070616E652C20696E636C7564696E6720697473207370';
wwv_flow_api.g_varchar2_table(1151) := '6163696E67202D20617320696620697420646F6573206E6F742065786973740D0A09202A205468652070616E65206973206E6F742061637475616C6C79202772656D6F766564272066726F6D2074686520736F757263652C20736F2063616E2075736520';
wwv_flow_api.g_varchar2_table(1152) := '2773686F772720746F20756E2D686964652069740D0A09202A0D0A09202A2040706172616D207B28737472696E677C4F626A656374297D096576745F6F725F70616E650909095468652070616E65206265696E672068696464656E2C2069653A206E6F72';
wwv_flow_api.g_varchar2_table(1153) := '74682C20736F7574682C20656173742C206F7220776573740D0A09202A2040706172616D207B626F6F6C65616E3D7D0909095B6E6F416E696D6174696F6E3D66616C73655D090D0A09202A2F0D0A2C0968696465203D2066756E6374696F6E2028657674';
wwv_flow_api.g_varchar2_table(1154) := '5F6F725F70616E652C206E6F416E696D6174696F6E29207B0D0A090969662028216973496E697469616C697A65642829292072657475726E3B0D0A09097661720970616E65203D2065767450616E652E63616C6C28746869732C206576745F6F725F7061';
wwv_flow_api.g_varchar2_table(1155) := '6E65290D0A09092C096F093D206F7074696F6E735B70616E655D0D0A09092C0973093D2073746174655B70616E655D0D0A09092C092450093D202450735B70616E655D0D0A09092C092452093D202452735B70616E655D0D0A09093B0D0A090969662028';
wwv_flow_api.g_varchar2_table(1156) := '70616E65203D3D3D202263656E74657222207C7C20212450207C7C20732E697348696464656E292072657475726E3B202F2F2070616E6520646F6573206E6F74206578697374204F5220697320616C72656164792068696464656E0D0A0D0A09092F2F20';
wwv_flow_api.g_varchar2_table(1157) := '6F6E686964655F73746172742063616C6C6261636B202D2077696C6C2043414E43454C20686964652069662072657475726E732066616C73650D0A09096966202873746174652E696E697469616C697A65642026262066616C7365203D3D3D205F72756E';
wwv_flow_api.g_varchar2_table(1158) := '43616C6C6261636B7328226F6E686964655F7374617274222C2070616E6529292072657475726E3B0D0A0D0A0909732E6973536C6964696E67203D2066616C73653B202F2F206A75737420696E20636173650D0A090964656C6574652073746174652E70';
wwv_flow_api.g_varchar2_table(1159) := '616E6573536C6964696E675B70616E655D3B0D0A0D0A09092F2F206E6F7720686964652074686520656C656D656E74730D0A0909696620282452292024522E6869646528293B202F2F206869646520726573697A65722D6261720D0A0909696620282173';
wwv_flow_api.g_varchar2_table(1160) := '746174652E696E697469616C697A6564207C7C20732E6973436C6F73656429207B0D0A090909732E6973436C6F736564203D20747275653B202F2F20746F2074726967676572206F70656E2D616E696D6174696F6E206F6E2073686F7728290D0A090909';
wwv_flow_api.g_varchar2_table(1161) := '732E697348696464656E20203D20747275653B0D0A090909732E697356697369626C65203D2066616C73653B0D0A090909696620282173746174652E696E697469616C697A6564290D0A090909095F6869646550616E652870616E65293B202F2F206E6F';
wwv_flow_api.g_varchar2_table(1162) := '20616E696D6174696F6E207768656E206C6F6164696E6720706167650D0A09090973697A654D696450616E6573285F635B70616E655D2E646972203D3D3D2022686F727A22203F202222203A202263656E74657222293B0D0A0909096966202873746174';
wwv_flow_api.g_varchar2_table(1163) := '652E696E697469616C697A6564207C7C206F2E747269676765724576656E74734F6E4C6F6164290D0A090909095F72756E43616C6C6261636B7328226F6E686964655F656E64222C2070616E65293B0D0A09097D0D0A0909656C7365207B0D0A09090973';
wwv_flow_api.g_varchar2_table(1164) := '2E6973486964696E67203D20747275653B202F2F2075736564206279206F6E636C6F73650D0A090909636C6F73652870616E652C2066616C73652C206E6F416E696D6174696F6E293B202F2F2061646A75737420616C6C2070616E657320746F20666974';
wwv_flow_api.g_varchar2_table(1165) := '0D0A09097D0D0A097D0D0A0D0A092F2A2A0D0A09202A2053686F7720612068696464656E2070616E65202D2073686F772061732027636C6F736564272062792064656661756C7420756E6C657373206F70656E50616E65203D20747275650D0A09202A0D';
wwv_flow_api.g_varchar2_table(1166) := '0A09202A2040706172616D207B28737472696E677C4F626A656374297D096576745F6F725F70616E650909095468652070616E65206265696E67206F70656E65642C2069653A206E6F7274682C20736F7574682C20656173742C206F7220776573740D0A';
wwv_flow_api.g_varchar2_table(1167) := '09202A2040706172616D207B626F6F6C65616E3D7D0909095B6F70656E50616E653D66616C73655D0D0A09202A2040706172616D207B626F6F6C65616E3D7D0909095B6E6F416E696D6174696F6E3D66616C73655D0D0A09202A2040706172616D207B62';
wwv_flow_api.g_varchar2_table(1168) := '6F6F6C65616E3D7D0909095B6E6F416C6572743D66616C73655D0D0A09202A2F0D0A2C0973686F77203D2066756E6374696F6E20286576745F6F725F70616E652C206F70656E50616E652C206E6F416E696D6174696F6E2C206E6F416C65727429207B0D';
wwv_flow_api.g_varchar2_table(1169) := '0A090969662028216973496E697469616C697A65642829292072657475726E3B0D0A09097661720970616E65203D2065767450616E652E63616C6C28746869732C206576745F6F725F70616E65290D0A09092C096F093D206F7074696F6E735B70616E65';
wwv_flow_api.g_varchar2_table(1170) := '5D0D0A09092C0973093D2073746174655B70616E655D0D0A09092C092450093D202450735B70616E655D0D0A09092C092452093D202452735B70616E655D0D0A09093B0D0A09096966202870616E65203D3D3D202263656E74657222207C7C2021245020';
wwv_flow_api.g_varchar2_table(1171) := '7C7C2021732E697348696464656E292072657475726E3B202F2F2070616E6520646F6573206E6F74206578697374204F52206973206E6F742068696464656E0D0A0D0A09092F2F206F6E73686F775F73746172742063616C6C6261636B202D2077696C6C';
wwv_flow_api.g_varchar2_table(1172) := '2043414E43454C2073686F772069662072657475726E732066616C73650D0A09096966202866616C7365203D3D3D205F72756E43616C6C6261636B7328226F6E73686F775F7374617274222C2070616E6529292072657475726E3B0D0A0D0A0909732E69';
wwv_flow_api.g_varchar2_table(1173) := '7353686F77696E67203D20747275653B202F2F2075736564206279206F6E6F70656E2F6F6E636C6F73650D0A09092F2F732E697348696464656E20203D2066616C73653B202D2077696C6C20626520736574206279206F70656E2F636C6F7365202D2069';
wwv_flow_api.g_varchar2_table(1174) := '66206E6F742063616E63656C6C65640D0A0909732E6973536C6964696E67203D2066616C73653B202F2F206A75737420696E20636173650D0A090964656C6574652073746174652E70616E6573536C6964696E675B70616E655D3B0D0A0D0A09092F2F20';
wwv_flow_api.g_varchar2_table(1175) := '6E6F772073686F772074686520656C656D656E74730D0A09092F2F696620282452292024522E73686F7728293B202D2077696C6C2062652073686F776E206279206F70656E2F636C6F73650D0A0909696620286F70656E50616E65203D3D3D2066616C73';
wwv_flow_api.g_varchar2_table(1176) := '65290D0A090909636C6F73652870616E652C2074727565293B202F2F2074727565203D20666F7263650D0A0909656C73650D0A0909096F70656E2870616E652C2066616C73652C206E6F416E696D6174696F6E2C206E6F416C657274293B202F2F206164';
wwv_flow_api.g_varchar2_table(1177) := '6A75737420616C6C2070616E657320746F206669740D0A097D0D0A0D0A0D0A092F2A2A0D0A09202A20546F67676C657320612070616E65206F70656E2F636C6F7365642062792063616C6C696E6720656974686572206F70656E206F7220636C6F73650D';
wwv_flow_api.g_varchar2_table(1178) := '0A09202A0D0A09202A2040706172616D207B28737472696E677C4F626A656374297D096576745F6F725F70616E6509095468652070616E65206265696E6720746F67676C65642C2069653A206E6F7274682C20736F7574682C20656173742C206F722077';
wwv_flow_api.g_varchar2_table(1179) := '6573740D0A09202A2040706172616D207B626F6F6C65616E3D7D0909095B736C6964653D66616C73655D0D0A09202A2F0D0A2C09746F67676C65203D2066756E6374696F6E20286576745F6F725F70616E652C20736C69646529207B0D0A090969662028';
wwv_flow_api.g_varchar2_table(1180) := '216973496E697469616C697A65642829292072657475726E3B0D0A09097661720965767409093D206576744F626A286576745F6F725F70616E65290D0A09092C0970616E65093D2065767450616E652E63616C6C28746869732C206576745F6F725F7061';
wwv_flow_api.g_varchar2_table(1181) := '6E65290D0A09092C097309093D2073746174655B70616E655D0D0A09093B0D0A09096966202865767429202F2F2063616C6C65642066726F6D20746F2024522E64626C636C69636B204F52207472696767657250616E654576656E740D0A090909657674';
wwv_flow_api.g_varchar2_table(1182) := '2E73746F70496D6D65646961746550726F7061676174696F6E28293B0D0A090969662028732E697348696464656E290D0A09090973686F772870616E65293B202F2F2077696C6C2063616C6C20276F70656E2720616674657220756E686964696E672069';
wwv_flow_api.g_varchar2_table(1183) := '740D0A0909656C73652069662028732E6973436C6F736564290D0A0909096F70656E2870616E652C202121736C696465293B0D0A0909656C73650D0A090909636C6F73652870616E65293B0D0A097D0D0A0D0A0D0A092F2A2A0D0A09202A205574696C69';
wwv_flow_api.g_varchar2_table(1184) := '7479206D6574686F64207573656420647572696E6720696E6974206F72206F74686572206175746F2D70726F6365737365730D0A09202A0D0A09202A2040706172616D207B737472696E677D0970616E652020205468652070616E65206265696E672063';
wwv_flow_api.g_varchar2_table(1185) := '6C6F7365640D0A09202A2040706172616D207B626F6F6C65616E3D7D095B73657448616E646C65733D66616C73655D0D0A09202A2F0D0A2C095F636C6F736550616E65203D2066756E6374696F6E202870616E652C2073657448616E646C657329207B0D';
wwv_flow_api.g_varchar2_table(1186) := '0A09097661720D0A0909092450093D202450735B70616E655D0D0A09092C0973093D2073746174655B70616E655D0D0A09093B0D0A09095F6869646550616E652870616E65293B0D0A0909732E6973436C6F736564203D20747275653B0D0A0909732E69';
wwv_flow_api.g_varchar2_table(1187) := '7356697369626C65203D2066616C73653B0D0A09096966202873657448616E646C657329207365744173436C6F7365642870616E65293B0D0A097D0D0A0D0A092F2A2A0D0A09202A20436C6F736520746865207370656369666965642070616E65202861';
wwv_flow_api.g_varchar2_table(1188) := '6E696D6174696F6E206F7074696F6E616C292C20616E6420726573697A6520616C6C206F746865722070616E6573206173206E65656465640D0A09202A0D0A09202A2040706172616D207B28737472696E677C4F626A656374297D096576745F6F725F70';
wwv_flow_api.g_varchar2_table(1189) := '616E650909095468652070616E65206265696E6720636C6F7365642C2069653A206E6F7274682C20736F7574682C20656173742C206F7220776573740D0A09202A2040706172616D207B626F6F6C65616E3D7D0909095B666F7263653D66616C73655D0D';
wwv_flow_api.g_varchar2_table(1190) := '0A09202A2040706172616D207B626F6F6C65616E3D7D0909095B6E6F416E696D6174696F6E3D66616C73655D0D0A09202A2040706172616D207B626F6F6C65616E3D7D0909095B736B697043616C6C6261636B3D66616C73655D0D0A09202A2F0D0A2C09';
wwv_flow_api.g_varchar2_table(1191) := '636C6F7365203D2066756E6374696F6E20286576745F6F725F70616E652C20666F7263652C206E6F416E696D6174696F6E2C20736B697043616C6C6261636B29207B0D0A09097661720970616E65203D2065767450616E652E63616C6C28746869732C20';
wwv_flow_api.g_varchar2_table(1192) := '6576745F6F725F70616E65293B0D0A09096966202870616E65203D3D3D202263656E74657222292072657475726E3B202F2F2076616C69646174650D0A09092F2F2069662070616E6520686173206265656E20696E697469616C697A65642C2062757420';
wwv_flow_api.g_varchar2_table(1193) := '4E4F542074686520636F6D706C657465206C61796F75742C20636C6F73652070616E6520696E7374616E746C790D0A0909696620282173746174652E696E697469616C697A6564202626202450735B70616E655D29207B0D0A0909095F636C6F73655061';
wwv_flow_api.g_varchar2_table(1194) := '6E652870616E652C2074727565293B202F2F20494E49542070616E6520617320636C6F7365640D0A09090972657475726E3B0D0A09097D0D0A090969662028216973496E697469616C697A65642829292072657475726E3B0D0A0D0A09097661720D0A09';
wwv_flow_api.g_varchar2_table(1195) := '09092450093D202450735B70616E655D0D0A09092C092452093D202452735B70616E655D0D0A09092C092454093D202454735B70616E655D0D0A09092C096F093D206F7074696F6E735B70616E655D0D0A09092C0973093D2073746174655B70616E655D';
wwv_flow_api.g_varchar2_table(1196) := '0D0A09092C0963093D205F635B70616E655D0D0A09092C09646F46582C20697353686F77696E672C206973486964696E672C20776173536C6964696E673B0D0A0D0A09092F2F20515545554520696E206361736520616E6F7468657220616374696F6E2F';
wwv_flow_api.g_varchar2_table(1197) := '616E696D6174696F6E20697320696E2070726F67726573730D0A0909244E2E71756575652866756E6374696F6E282071756575654E65787420297B0D0A0D0A09090969662028202124500D0A0909097C7C0928216F2E636C6F7361626C65202626202173';
wwv_flow_api.g_varchar2_table(1198) := '2E697353686F77696E672026262021732E6973486964696E6729092F2F20696E76616C69642072657175657374202F2F2028216F2E726573697A61626C6520262620216F2E636C6F7361626C6529203F3F3F0D0A0909097C7C092821666F726365202626';
wwv_flow_api.g_varchar2_table(1199) := '20732E6973436C6F7365642026262021732E697353686F77696E67290909092F2F20616C726561647920636C6F7365640D0A090909292072657475726E2071756575654E65787428293B0D0A0D0A0909092F2F206F6E636C6F73655F7374617274206361';
wwv_flow_api.g_varchar2_table(1200) := '6C6C6261636B202D2077696C6C2043414E43454C20686964652069662072657475726E732066616C73650D0A0909092F2F20534B4950206966206A757374202773686F77696E672720612068696464656E2070616E652061732027636C6F736564270D0A';
wwv_flow_api.g_varchar2_table(1201) := '0909097661722061626F7274203D2021732E697353686F77696E672026262066616C7365203D3D3D205F72756E43616C6C6261636B7328226F6E636C6F73655F7374617274222C2070616E65293B0D0A0D0A0909092F2F207472616E73666572206C6F67';
wwv_flow_api.g_varchar2_table(1202) := '6963207661727320746F2074656D7020766172730D0A090909697353686F77696E67093D20732E697353686F77696E673B0D0A0909096973486964696E67093D20732E6973486964696E673B0D0A090909776173536C6964696E67093D20732E6973536C';
wwv_flow_api.g_varchar2_table(1203) := '6964696E673B0D0A0909092F2F206E6F7720636C65617220746865206C6F676963207661727320285245515549524544206265666F72652061626F7274696E67290D0A09090964656C65746520732E697353686F77696E673B0D0A09090964656C657465';
wwv_flow_api.g_varchar2_table(1204) := '20732E6973486964696E673B0D0A0D0A0909096966202861626F7274292072657475726E2071756575654E65787428293B0D0A0D0A090909646F465809093D20216E6F416E696D6174696F6E2026262021732E6973436C6F73656420262620286F2E6678';
wwv_flow_api.g_varchar2_table(1205) := '4E616D655F636C6F736520213D20226E6F6E6522293B0D0A090909732E69734D6F76696E67093D20747275653B0D0A090909732E6973436C6F736564093D20747275653B0D0A090909732E697356697369626C65093D2066616C73653B0D0A0909092F2F';
wwv_flow_api.g_varchar2_table(1206) := '2075706461746520697348696464656E204245464F52452073697A696E672070616E65730D0A090909696620286973486964696E672920732E697348696464656E203D20747275653B0D0A090909656C73652069662028697353686F77696E672920732E';
wwv_flow_api.g_varchar2_table(1207) := '697348696464656E203D2066616C73653B0D0A0D0A09090969662028732E6973536C6964696E6729202F2F2070616E65206973206265696E6720636C6F7365642C20736F20554E42494E442074726967676572206576656E74730D0A0909090962696E64';
wwv_flow_api.g_varchar2_table(1208) := '53746F70536C6964696E674576656E74732870616E652C2066616C7365293B202F2F2077696C6C20736574206973536C6964696E673D66616C73650D0A090909656C7365202F2F20726573697A652070616E65732061646A6163656E7420746F20746869';
wwv_flow_api.g_varchar2_table(1209) := '73206F6E650D0A0909090973697A654D696450616E6573285F635B70616E655D2E646972203D3D3D2022686F727A22203F202222203A202263656E746572222C2066616C7365293B202F2F2066616C7365203D204E4F5420736B697043616C6C6261636B';
wwv_flow_api.g_varchar2_table(1210) := '0D0A0D0A0909092F2F20696620746869732070616E6520686173206120726573697A6572206261722C206D6F7665206974204E4F57202D206265666F726520616E696D6174696F6E0D0A0909097365744173436C6F7365642870616E65293B0D0A0D0A09';
wwv_flow_api.g_varchar2_table(1211) := '09092F2F20434C4F5345205448452050414E450D0A09090969662028646F465829207B202F2F20616E696D6174652074686520636C6F73650D0A090909096C6F636B50616E65466F7246582870616E652C2074727565293B092F2F206E65656420746F20';
wwv_flow_api.g_varchar2_table(1212) := '736574206C6566742F746F7020736F20616E696D6174696F6E2077696C6C20776F726B0D0A0909090924502E6869646528206F2E66784E616D655F636C6F73652C206F2E667853657474696E67735F636C6F73652C206F2E667853706565645F636C6F73';
wwv_flow_api.g_varchar2_table(1213) := '652C2066756E6374696F6E202829207B0D0A09090909096C6F636B50616E65466F7246582870616E652C2066616C7365293B202F2F20756E646F0D0A090909090969662028732E6973436C6F7365642920636C6F73655F3228293B0D0A09090909097175';
wwv_flow_api.g_varchar2_table(1214) := '6575654E65787428293B0D0A090909097D293B0D0A0909097D0D0A090909656C7365207B202F2F2068696465207468652070616E6520776974686F757420616E696D6174696F6E0D0A090909095F6869646550616E652870616E65293B0D0A0909090963';
wwv_flow_api.g_varchar2_table(1215) := '6C6F73655F3228293B0D0A0909090971756575654E65787428293B0D0A0909097D3B0D0A09097D293B0D0A0D0A09092F2F20535542524F5554494E450D0A090966756E6374696F6E20636C6F73655F32202829207B0D0A090909732E69734D6F76696E67';
wwv_flow_api.g_varchar2_table(1216) := '093D2066616C73653B0D0A09090962696E645374617274536C6964696E674576656E74732870616E652C2074727565293B202F2F2077696C6C20656E61626C65206966206F2E736C696461626C65203D20747275650D0A0D0A0909092F2F206966206F70';
wwv_flow_api.g_varchar2_table(1217) := '706F736974652D70616E6520776173206175746F436C6F7365642C207365652069662069742063616E206265206175746F4F70656E6564206E6F770D0A09090976617220616C7450616E65203D205F632E6F70706F73697465456467655B70616E655D3B';
wwv_flow_api.g_varchar2_table(1218) := '0D0A0909096966202873746174655B20616C7450616E65205D2E6E6F526F6F6D29207B0D0A0909090973657453697A654C696D6974732820616C7450616E6520293B0D0A090909096D616B6550616E654669742820616C7450616E6520293B0D0A090909';
wwv_flow_api.g_varchar2_table(1219) := '7D0D0A0D0A0909096966202821736B697043616C6C6261636B202626202873746174652E696E697469616C697A6564207C7C206F2E747269676765724576656E74734F6E4C6F61642929207B0D0A090909092F2F206F6E636C6F73652063616C6C626163';
wwv_flow_api.g_varchar2_table(1220) := '6B202D20554E4C455353206A757374202773686F77696E672720612068696464656E2070616E652061732027636C6F736564270D0A090909096966202821697353686F77696E6729095F72756E43616C6C6261636B7328226F6E636C6F73655F656E6422';
wwv_flow_api.g_varchar2_table(1221) := '2C2070616E65293B0D0A090909092F2F206F6E68696465204F52206F6E73686F772063616C6C6261636B0D0A0909090969662028697353686F77696E6729095F72756E43616C6C6261636B7328226F6E73686F775F656E64222C2070616E65293B0D0A09';
wwv_flow_api.g_varchar2_table(1222) := '090909696620286973486964696E6729095F72756E43616C6C6261636B7328226F6E686964655F656E64222C2070616E65293B0D0A0909097D0D0A09097D0D0A097D0D0A0D0A092F2A2A0D0A09202A2040706172616D207B737472696E677D0970616E65';
wwv_flow_api.g_varchar2_table(1223) := '095468652070616E65206A75737420636C6F7365642C2069653A206E6F7274682C20736F7574682C20656173742C206F7220776573740D0A09202A2F0D0A2C097365744173436C6F736564203D2066756E6374696F6E202870616E6529207B0D0A090969';
wwv_flow_api.g_varchar2_table(1224) := '662028212452735B70616E655D292072657475726E3B202F2F2068616E646C6573206E6F7420696E697469616C697A656420796574210D0A09097661720D0A090909245009093D202450735B70616E655D0D0A09092C09245209093D202452735B70616E';
wwv_flow_api.g_varchar2_table(1225) := '655D0D0A09092C09245409093D202454735B70616E655D0D0A09092C096F09093D206F7074696F6E735B70616E655D0D0A09092C097309093D2073746174655B70616E655D0D0A09092C0973696465093D205F635B70616E655D2E736964650D0A09092C';
wwv_flow_api.g_varchar2_table(1226) := '0972436C617373093D206F2E726573697A6572436C6173730D0A09092C0974436C617373093D206F2E746F67676C6572436C6173730D0A09092C095F70616E65093D20222D222B2070616E65202F2F207573656420666F7220636C6173734E616D65730D';
wwv_flow_api.g_varchar2_table(1227) := '0A09092C095F6F70656E093D20222D6F70656E220D0A09092C095F736C6964696E673D20222D736C6964696E67220D0A09092C095F636C6F736564093D20222D636C6F736564220D0A09093B0D0A090924520D0A0909092E63737328736964652C207343';
wwv_flow_api.g_varchar2_table(1228) := '2E696E7365745B736964655D29202F2F206D6F76652074686520726573697A65720D0A0909092E72656D6F7665436C617373282072436C6173732B5F6F70656E202B2220222B2072436C6173732B5F70616E652B5F6F70656E20290D0A0909092E72656D';
wwv_flow_api.g_varchar2_table(1229) := '6F7665436C617373282072436C6173732B5F736C6964696E67202B2220222B2072436C6173732B5F70616E652B5F736C6964696E6720290D0A0909092E616464436C617373282072436C6173732B5F636C6F736564202B2220222B2072436C6173732B5F';
wwv_flow_api.g_varchar2_table(1230) := '70616E652B5F636C6F73656420290D0A09093B0D0A09092F2F2068616E646C6520616C72656164792D68696464656E2070616E657320696E20636173652063616C6C656420627920737761702829206F7220612073696D696C6172206D6574686F64200D';
wwv_flow_api.g_varchar2_table(1231) := '0A090969662028732E697348696464656E292024522E6869646528293B202F2F206869646520726573697A65722D626172200D0A0D0A09092F2F2044495341424C452027726573697A696E6727207768656E20636C6F736564202D20646F207468697320';
wwv_flow_api.g_varchar2_table(1232) := '4245464F52452062696E645374617274536C6964696E674576656E74733F0D0A0909696620286F2E726573697A61626C6520262620242E6C61796F75742E706C7567696E732E647261676761626C65290D0A09090924520D0A090909092E647261676761';
wwv_flow_api.g_varchar2_table(1233) := '626C65282264697361626C6522290D0A090909092E72656D6F7665436C617373282275692D73746174652D64697361626C65642229202F2F20646F204E4F54206170706C792064697361626C6564207374796C696E67202D206E6F74207375697461626C';
wwv_flow_api.g_varchar2_table(1234) := '6520686572650D0A090909092E6373732822637572736F72222C202264656661756C7422290D0A090909092E6174747228227469746C65222C2222290D0A0909093B0D0A0D0A09092F2F2069662070616E6520686173206120746F67676C657220627574';
wwv_flow_api.g_varchar2_table(1235) := '746F6E2C2061646A757374207468617420746F6F0D0A090969662028245429207B0D0A09090924540D0A090909092E72656D6F7665436C617373282074436C6173732B5F6F70656E202B2220222B2074436C6173732B5F70616E652B5F6F70656E20290D';
wwv_flow_api.g_varchar2_table(1236) := '0A090909092E616464436C617373282074436C6173732B5F636C6F736564202B2220222B2074436C6173732B5F70616E652B5F636C6F73656420290D0A090909092E6174747228227469746C65222C206F2E746970732E4F70656E29202F2F206D617920';
wwv_flow_api.g_varchar2_table(1237) := '626520626C616E6B0D0A0909093B0D0A0909092F2F20746F67676C65722D636F6E74656E74202D206966206578697374730D0A09090924542E6368696C6472656E28222E636F6E74656E742D6F70656E22292E6869646528293B0D0A09090924542E6368';
wwv_flow_api.g_varchar2_table(1238) := '696C6472656E28222E636F6E74656E742D636C6F73656422292E6373732822646973706C6179222C22626C6F636B22293B0D0A09097D0D0A0D0A09092F2F2073796E6320616E79202770696E20627574746F6E73270D0A090973796E6350696E42746E73';
wwv_flow_api.g_varchar2_table(1239) := '2870616E652C2066616C7365293B0D0A0D0A09096966202873746174652E696E697469616C697A656429207B0D0A0909092F2F20726573697A6520276C656E6774682720616E6420706F736974696F6E20746F67676C65727320666F722061646A616365';
wwv_flow_api.g_varchar2_table(1240) := '6E742070616E65730D0A09090973697A6548616E646C657328293B0D0A09097D0D0A097D0D0A0D0A092F2A2A0D0A09202A204F70656E20746865207370656369666965642070616E652028616E696D6174696F6E206F7074696F6E616C292C20616E6420';
wwv_flow_api.g_varchar2_table(1241) := '726573697A6520616C6C206F746865722070616E6573206173206E65656465640D0A09202A0D0A09202A2040706172616D207B28737472696E677C4F626A656374297D096576745F6F725F70616E650909095468652070616E65206265696E67206F7065';
wwv_flow_api.g_varchar2_table(1242) := '6E65642C2069653A206E6F7274682C20736F7574682C20656173742C206F7220776573740D0A09202A2040706172616D207B626F6F6C65616E3D7D0909095B736C6964653D66616C73655D0D0A09202A2040706172616D207B626F6F6C65616E3D7D0909';
wwv_flow_api.g_varchar2_table(1243) := '095B6E6F416E696D6174696F6E3D66616C73655D0D0A09202A2040706172616D207B626F6F6C65616E3D7D0909095B6E6F416C6572743D66616C73655D0D0A09202A2F0D0A2C096F70656E203D2066756E6374696F6E20286576745F6F725F70616E652C';
wwv_flow_api.g_varchar2_table(1244) := '20736C6964652C206E6F416E696D6174696F6E2C206E6F416C65727429207B0D0A090969662028216973496E697469616C697A65642829292072657475726E3B0D0A09097661720970616E65203D2065767450616E652E63616C6C28746869732C206576';
wwv_flow_api.g_varchar2_table(1245) := '745F6F725F70616E65290D0A09092C092450093D202450735B70616E655D0D0A09092C092452093D202452735B70616E655D0D0A09092C092454093D202454735B70616E655D0D0A09092C096F093D206F7074696F6E735B70616E655D0D0A09092C0973';
wwv_flow_api.g_varchar2_table(1246) := '093D2073746174655B70616E655D0D0A09092C0963093D205F635B70616E655D0D0A09092C09646F46582C20697353686F77696E670D0A09093B0D0A09096966202870616E65203D3D3D202263656E74657222292072657475726E3B202F2F2076616C69';
wwv_flow_api.g_varchar2_table(1247) := '646174650D0A09092F2F20515545554520696E206361736520616E6F7468657220616374696F6E2F616E696D6174696F6E20697320696E2070726F67726573730D0A0909244E2E71756575652866756E6374696F6E282071756575654E65787420297B0D';
wwv_flow_api.g_varchar2_table(1248) := '0A0D0A09090969662028202124500D0A0909097C7C0928216F2E726573697A61626C6520262620216F2E636C6F7361626C652026262021732E697353686F77696E6729092F2F20696E76616C696420726571756573740D0A0909097C7C0928732E697356';
wwv_flow_api.g_varchar2_table(1249) := '697369626C652026262021732E6973536C6964696E672909090909092F2F20616C7265616479206F70656E0D0A090909292072657475726E2071756575654E65787428293B0D0A0D0A0909092F2F2070616E652063616E20414C534F20626520756E6869';
wwv_flow_api.g_varchar2_table(1250) := '6464656E206279206A7573742063616C6C696E672073686F7728292C20736F2068616E646C652074686973207363656E6172696F0D0A09090969662028732E697348696464656E2026262021732E697353686F77696E6729207B0D0A0909090971756575';
wwv_flow_api.g_varchar2_table(1251) := '654E65787428293B202F2F2063616C6C206265666F72652073686F7728292062656361757365206974206E656564732074686520717565756520667265650D0A0909090973686F772870616E652C2074727565293B0D0A0909090972657475726E3B0D0A';
wwv_flow_api.g_varchar2_table(1252) := '0909097D0D0A0D0A09090969662028732E6175746F526573697A6520262620732E73697A6520213D206F2E73697A6529202F2F20726573697A652070616E6520746F206F726967696E616C2073697A652073657420696E206F7074696F6E730D0A090909';
wwv_flow_api.g_varchar2_table(1253) := '0973697A6550616E652870616E652C206F2E73697A652C20747275652C20747275652C2074727565293B202F2F20747275653D736B697043616C6C6261636B2F6E6F416E696D6174696F6E2F666F726365526573697A650D0A090909656C73650D0A0909';
wwv_flow_api.g_varchar2_table(1254) := '09092F2F206D616B65207375726520746865726520697320656E6F75676820737061636520617661696C61626C6520746F206F70656E207468652070616E650D0A0909090973657453697A654C696D6974732870616E652C20736C696465293B0D0A0D0A';
wwv_flow_api.g_varchar2_table(1255) := '0909092F2F206F6E6F70656E5F73746172742063616C6C6261636B202D2077696C6C2043414E43454C206F70656E2069662072657475726E732066616C73650D0A09090976617220636252657475726E203D205F72756E43616C6C6261636B7328226F6E';
wwv_flow_api.g_varchar2_table(1256) := '6F70656E5F7374617274222C2070616E65293B0D0A0D0A09090969662028636252657475726E203D3D3D202261626F727422290D0A0909090972657475726E2071756575654E65787428293B0D0A0D0A0909092F2F207570646174652070616E652D7374';
wwv_flow_api.g_varchar2_table(1257) := '61746520616761696E20696E2063617365206F7074696F6E732077657265206368616E67656420696E206F6E6F70656E5F73746172740D0A09090969662028636252657475726E20213D3D20224E432229202F2F204E43203D20224E6F2043616C6C6261';
wwv_flow_api.g_varchar2_table(1258) := '636B220D0A0909090973657453697A654C696D6974732870616E652C20736C696465293B0D0A0D0A09090969662028732E6D696E53697A65203E20732E6D617853697A6529207B202F2F20494E53554646494349454E5420524F4F4D20464F522050414E';
wwv_flow_api.g_varchar2_table(1259) := '4520544F204F50454E210D0A0909090973796E6350696E42746E732870616E652C2066616C7365293B202F2F206D616B6520737572652070696E2D627574746F6E73206172652072657365740D0A0909090969662028216E6F416C657274202626206F2E';
wwv_flow_api.g_varchar2_table(1260) := '746970732E6E6F526F6F6D546F4F70656E290D0A0909090909616C657274286F2E746970732E6E6F526F6F6D546F4F70656E293B0D0A0909090972657475726E2071756575654E65787428293B202F2F2041424F52540D0A0909097D0D0A0D0A09090969';
wwv_flow_api.g_varchar2_table(1261) := '662028736C69646529202F2F20535441525420536C6964696E67202D2077696C6C20736574206973536C6964696E673D747275650D0A0909090962696E6453746F70536C6964696E674576656E74732870616E652C2074727565293B202F2F2042494E44';
wwv_flow_api.g_varchar2_table(1262) := '2074726967676572206576656E747320746F20636C6F736520736C6964696E672D70616E650D0A090909656C73652069662028732E6973536C6964696E6729202F2F2050494E2050414E45202873746F7020736C6964696E6729202D206F70656E207061';
wwv_flow_api.g_varchar2_table(1263) := '6E6520276E6F726D616C6C792720696E73746561640D0A0909090962696E6453746F70536C6964696E674576656E74732870616E652C2066616C7365293B202F2F20554E42494E442074726967676572206576656E7473202D2077696C6C207365742069';
wwv_flow_api.g_varchar2_table(1264) := '73536C6964696E673D66616C73650D0A090909656C736520696620286F2E736C696461626C65290D0A0909090962696E645374617274536C6964696E674576656E74732870616E652C2066616C7365293B202F2F20554E42494E44207472696767657220';
wwv_flow_api.g_varchar2_table(1265) := '6576656E74730D0A0D0A090909732E6E6F526F6F6D203D2066616C73653B202F2F2077696C6C206265207265736574206279206D616B6550616E6546697420696620276E6F526F6F6D270D0A0909096D616B6550616E654669742870616E65293B0D0A0D';
wwv_flow_api.g_varchar2_table(1266) := '0A0909092F2F207472616E73666572206C6F6769632076617220746F2074656D70207661720D0A090909697353686F77696E67203D20732E697353686F77696E673B0D0A0909092F2F206E6F7720636C65617220746865206C6F676963207661720D0A09';
wwv_flow_api.g_varchar2_table(1267) := '090964656C65746520732E697353686F77696E673B0D0A0D0A090909646F465809093D20216E6F416E696D6174696F6E20262620732E6973436C6F73656420262620286F2E66784E616D655F6F70656E20213D20226E6F6E6522293B0D0A090909732E69';
wwv_flow_api.g_varchar2_table(1268) := '734D6F76696E67093D20747275653B0D0A090909732E697356697369626C65093D20747275653B0D0A090909732E6973436C6F736564093D2066616C73653B0D0A0909092F2F2075706461746520697348696464656E204245464F52452073697A696E67';
wwv_flow_api.g_varchar2_table(1269) := '2070616E6573202D205748593F3F3F204F6C643F0D0A09090969662028697353686F77696E672920732E697348696464656E203D2066616C73653B0D0A0D0A09090969662028646F465829207B202F2F20414E494D4154450D0A090909092F2F206D6173';
wwv_flow_api.g_varchar2_table(1270) := '6B2061646A6163656E742070616E65732077697468206F626A656374730D0A090909096C6F636B50616E65466F7246582870616E652C2074727565293B092F2F206E65656420746F20736574206C6566742F746F7020736F20616E696D6174696F6E2077';
wwv_flow_api.g_varchar2_table(1271) := '696C6C20776F726B0D0A090909090924502E73686F7728206F2E66784E616D655F6F70656E2C206F2E667853657474696E67735F6F70656E2C206F2E667853706565645F6F70656E2C2066756E6374696F6E2829207B0D0A09090909096C6F636B50616E';
wwv_flow_api.g_varchar2_table(1272) := '65466F7246582870616E652C2066616C7365293B202F2F20756E646F0D0A090909090969662028732E697356697369626C6529206F70656E5F3228293B202F2F20636F6E74696E75650D0A090909090971756575654E65787428293B0D0A090909097D29';
wwv_flow_api.g_varchar2_table(1273) := '3B0D0A0909097D0D0A090909656C7365207B202F2F206E6F20616E696D6174696F6E0D0A090909095F73686F7750616E652870616E65293B2F2F206A7573742073686F772070616E6520616E642E2E2E0D0A090909096F70656E5F3228293B09092F2F20';
wwv_flow_api.g_varchar2_table(1274) := '636F6E74696E75650D0A0909090971756575654E65787428293B0D0A0909097D3B0D0A09097D293B0D0A0D0A09092F2F20535542524F5554494E450D0A090966756E6374696F6E206F70656E5F32202829207B0D0A090909732E69734D6F76696E67093D';
wwv_flow_api.g_varchar2_table(1275) := '2066616C73653B0D0A0D0A0909092F2F206375726520696672616D6520646973706C6179206973737565730D0A0909095F666978496672616D652870616E65293B0D0A0D0A0909092F2F204E4F54453A206966206973536C6964696E672C207468656E20';
wwv_flow_api.g_varchar2_table(1276) := '6F746865722070616E657320617265204E4F542027726573697A6564270D0A0909096966202821732E6973536C6964696E6729207B202F2F20726573697A6520616C6C2070616E65732061646A6163656E7420746F2074686973206F6E650D0A09090909';
wwv_flow_api.g_varchar2_table(1277) := '73697A654D696450616E6573285F635B70616E655D2E6469723D3D227665727422203F202263656E74657222203A2022222C2066616C7365293B202F2F2066616C7365203D204E4F5420736B697043616C6C6261636B0D0A0909097D0D0A0D0A0909092F';
wwv_flow_api.g_varchar2_table(1278) := '2F2073657420636C61737365732C20706F736974696F6E2068616E646C657320616E6420657865637574652063616C6C6261636B732E2E2E0D0A09090973657441734F70656E2870616E65293B0D0A09097D3B0D0A090D0A097D0D0A0D0A092F2A2A0D0A';
wwv_flow_api.g_varchar2_table(1279) := '09202A2040706172616D207B737472696E677D0970616E6509095468652070616E65206A757374206F70656E65642C2069653A206E6F7274682C20736F7574682C20656173742C206F7220776573740D0A09202A2040706172616D207B626F6F6C65616E';
wwv_flow_api.g_varchar2_table(1280) := '3D7D095B736B697043616C6C6261636B3D66616C73655D0D0A09202A2F0D0A2C0973657441734F70656E203D2066756E6374696F6E202870616E652C20736B697043616C6C6261636B29207B0D0A0909766172200D0A090909245009093D202450735B70';
wwv_flow_api.g_varchar2_table(1281) := '616E655D0D0A09092C09245209093D202452735B70616E655D0D0A09092C09245409093D202454735B70616E655D0D0A09092C096F09093D206F7074696F6E735B70616E655D0D0A09092C097309093D2073746174655B70616E655D0D0A09092C097369';
wwv_flow_api.g_varchar2_table(1282) := '6465093D205F635B70616E655D2E736964650D0A09092C0972436C617373093D206F2E726573697A6572436C6173730D0A09092C0974436C617373093D206F2E746F67676C6572436C6173730D0A09092C095F70616E65093D20222D222B2070616E6520';
wwv_flow_api.g_varchar2_table(1283) := '2F2F207573656420666F7220636C6173734E616D65730D0A09092C095F6F70656E093D20222D6F70656E220D0A09092C095F636C6F736564093D20222D636C6F736564220D0A09092C095F736C6964696E673D20222D736C6964696E67220D0A09093B0D';
wwv_flow_api.g_varchar2_table(1284) := '0A090924520D0A0909092E63737328736964652C2073432E696E7365745B736964655D202B2067657450616E6553697A652870616E652929202F2F206D6F76652074686520726573697A65720D0A0909092E72656D6F7665436C617373282072436C6173';
wwv_flow_api.g_varchar2_table(1285) := '732B5F636C6F736564202B2220222B2072436C6173732B5F70616E652B5F636C6F73656420290D0A0909092E616464436C617373282072436C6173732B5F6F70656E202B2220222B2072436C6173732B5F70616E652B5F6F70656E20290D0A09093B0D0A';
wwv_flow_api.g_varchar2_table(1286) := '090969662028732E6973536C6964696E67290D0A09090924522E616464436C617373282072436C6173732B5F736C6964696E67202B2220222B2072436C6173732B5F70616E652B5F736C6964696E6720290D0A0909656C7365202F2F20696E2063617365';
wwv_flow_api.g_varchar2_table(1287) := '202777617320736C6964696E67270D0A09090924522E72656D6F7665436C617373282072436C6173732B5F736C6964696E67202B2220222B2072436C6173732B5F70616E652B5F736C6964696E6720290D0A0D0A090972656D6F7665486F766572282030';
wwv_flow_api.g_varchar2_table(1288) := '2C20245220293B202F2F2072656D6F766520686F76657220636C61737365730D0A0909696620286F2E726573697A61626C6520262620242E6C61796F75742E706C7567696E732E647261676761626C65290D0A0909092452092E647261676761626C6528';
wwv_flow_api.g_varchar2_table(1289) := '22656E61626C6522290D0A090909092E6373732822637572736F72222C206F2E726573697A6572437572736F72290D0A090909092E6174747228227469746C65222C206F2E746970732E526573697A65293B0D0A0909656C7365206966202821732E6973';
wwv_flow_api.g_varchar2_table(1290) := '536C6964696E67290D0A09090924522E6373732822637572736F72222C202264656661756C7422293B202F2F206E2D726573697A652C20732D726573697A652C206574630D0A0D0A09092F2F2069662070616E6520616C736F20686173206120746F6767';
wwv_flow_api.g_varchar2_table(1291) := '6C657220627574746F6E2C2061646A757374207468617420746F6F0D0A090969662028245429207B0D0A0909092454092E72656D6F7665436C617373282074436C6173732B5F636C6F736564202B2220222B2074436C6173732B5F70616E652B5F636C6F';
wwv_flow_api.g_varchar2_table(1292) := '73656420290D0A090909092E616464436C617373282074436C6173732B5F6F70656E202B2220222B2074436C6173732B5F70616E652B5F6F70656E20290D0A090909092E6174747228227469746C65222C206F2E746970732E436C6F7365293B202F2F20';
wwv_flow_api.g_varchar2_table(1293) := '6D617920626520626C616E6B0D0A09090972656D6F7665486F7665722820302C20245420293B202F2F2072656D6F766520686F76657220636C61737365730D0A0909092F2F20746F67676C65722D636F6E74656E74202D206966206578697374730D0A09';
wwv_flow_api.g_varchar2_table(1294) := '090924542E6368696C6472656E28222E636F6E74656E742D636C6F73656422292E6869646528293B0D0A09090924542E6368696C6472656E28222E636F6E74656E742D6F70656E22292E6373732822646973706C6179222C22626C6F636B22293B0D0A09';
wwv_flow_api.g_varchar2_table(1295) := '097D0D0A0D0A09092F2F2073796E6320616E79202770696E20627574746F6E73270D0A090973796E6350696E42746E732870616E652C2021732E6973536C6964696E67293B0D0A0D0A09092F2F207570646174652070616E652D73746174652064696D65';
wwv_flow_api.g_varchar2_table(1296) := '6E73696F6E73202D204245464F524520726573697A696E6720636F6E74656E740D0A0909242E657874656E6428732C20656C44696D7328245029293B0D0A0D0A09096966202873746174652E696E697469616C697A656429207B0D0A0909092F2F207265';
wwv_flow_api.g_varchar2_table(1297) := '73697A6520726573697A6572202620746F67676C65722073697A657320666F7220616C6C2070616E65730D0A09090973697A6548616E646C657328293B0D0A0909092F2F20726573697A6520636F6E74656E742065766572792074696D652070616E6520';
wwv_flow_api.g_varchar2_table(1298) := '6F70656E73202D20746F20626520737572650D0A09090973697A65436F6E74656E742870616E652C2074727565293B202F2F2074727565203D2072656D65617375726520686561646572732F666F6F746572732C206576656E206966202770616E652E69';
wwv_flow_api.g_varchar2_table(1299) := '734D6F76696E67270D0A09097D0D0A0D0A09096966202821736B697043616C6C6261636B202626202873746174652E696E697469616C697A6564207C7C206F2E747269676765724576656E74734F6E4C6F6164292026262024502E697328223A76697369';
wwv_flow_api.g_varchar2_table(1300) := '626C65222929207B0D0A0909092F2F206F6E6F70656E2063616C6C6261636B0D0A0909095F72756E43616C6C6261636B7328226F6E6F70656E5F656E64222C2070616E65293B0D0A0909092F2F206F6E73686F772063616C6C6261636B202D20544F444F';
wwv_flow_api.g_varchar2_table(1301) := '3A2073686F756C64207468697320626520686572653F0D0A09090969662028732E697353686F77696E6729205F72756E43616C6C6261636B7328226F6E73686F775F656E64222C2070616E65293B0D0A0D0A0909092F2F20414C534F2063616C6C206F6E';
wwv_flow_api.g_varchar2_table(1302) := '726573697A652062656361757365206C61796F75742D73697A65202A6D61792A2068617665206368616E676564207768696C652070616E652077617320636C6F7365640D0A0909096966202873746174652E696E697469616C697A6564290D0A09090909';
wwv_flow_api.g_varchar2_table(1303) := '5F72756E43616C6C6261636B7328226F6E726573697A655F656E64222C2070616E65293B0D0A09097D0D0A0D0A09092F2F20544F444F3A20536F6D65686F772073697A6550616E6528226E6F7274682229206973206265696E672063616C6C6564206166';
wwv_flow_api.g_varchar2_table(1304) := '746572207468697320706F696E743F3F3F0D0A097D0D0A0D0A0D0A092F2A2A0D0A09202A20736C6964654F70656E202F20736C696465436C6F7365202F20736C696465546F67676C650D0A09202A0D0A09202A20506173732D74686F756768206D657468';
wwv_flow_api.g_varchar2_table(1305) := '6F647320666F7220736C6964696E670D0A09202A2F0D0A2C09736C6964654F70656E203D2066756E6374696F6E20286576745F6F725F70616E6529207B0D0A090969662028216973496E697469616C697A65642829292072657475726E3B0D0A09097661';
wwv_flow_api.g_varchar2_table(1306) := '720965767409093D206576744F626A286576745F6F725F70616E65290D0A09092C0970616E65093D2065767450616E652E63616C6C28746869732C206576745F6F725F70616E65290D0A09092C097309093D2073746174655B70616E655D0D0A09092C09';
wwv_flow_api.g_varchar2_table(1307) := '64656C6179093D206F7074696F6E735B70616E655D2E736C69646544656C61795F6F70656E0D0A09093B0D0A09096966202870616E65203D3D3D202263656E74657222292072657475726E3B202F2F2076616C69646174650D0A09092F2F207072657665';
wwv_flow_api.g_varchar2_table(1308) := '6E74206576656E742066726F6D2074726967676572696E67206F6E204E455720726573697A65722062696E64696E6720637265617465642062656C6F770D0A09096966202865767429206576742E73746F70496D6D65646961746550726F706167617469';
wwv_flow_api.g_varchar2_table(1309) := '6F6E28293B0D0A0D0A090969662028732E6973436C6F73656420262620657674202626206576742E74797065203D3D3D20226D6F757365656E746572222026262064656C6179203E2030290D0A0909092F2F2074726967676572203D206D6F757365656E';
wwv_flow_api.g_varchar2_table(1310) := '746572202D2075736520612064656C61790D0A09090974696D65722E7365742870616E652B225F6F70656E536C69646572222C206F70656E5F4E4F572C2064656C6179293B0D0A0909656C73650D0A0909096F70656E5F4E4F5728293B202F2F2077696C';
wwv_flow_api.g_varchar2_table(1311) := '6C20756E62696E64206576656E747320696620697320616C7265616479206F70656E0D0A0D0A09092F2A2A0D0A0909202A20535542524F5554494E4520666F722074696D6564206F70656E0D0A0909202A2F0D0A090966756E6374696F6E206F70656E5F';
wwv_flow_api.g_varchar2_table(1312) := '4E4F57202829207B0D0A0909096966202821732E6973436C6F73656429202F2F20736B6970206966206E6F206C6F6E67657220636C6F736564210D0A0909090962696E6453746F70536C6964696E674576656E74732870616E652C2074727565293B202F';
wwv_flow_api.g_varchar2_table(1313) := '2F2042494E442074726967676572206576656E747320746F20636C6F736520736C6964696E672D70616E650D0A090909656C7365206966202821732E69734D6F76696E67290D0A090909096F70656E2870616E652C2074727565293B202F2F2074727565';
wwv_flow_api.g_varchar2_table(1314) := '203D20736C696465202D206F70656E28292077696C6C2068616E646C652062696E64696E670D0A09097D3B0D0A097D0D0A0D0A2C09736C696465436C6F7365203D2066756E6374696F6E20286576745F6F725F70616E6529207B0D0A0909696620282169';
wwv_flow_api.g_varchar2_table(1315) := '73496E697469616C697A65642829292072657475726E3B0D0A09097661720965767409093D206576744F626A286576745F6F725F70616E65290D0A09092C0970616E65093D2065767450616E652E63616C6C28746869732C206576745F6F725F70616E65';
wwv_flow_api.g_varchar2_table(1316) := '290D0A09092C096F09093D206F7074696F6E735B70616E655D0D0A09092C097309093D2073746174655B70616E655D0D0A09092C0964656C6179093D20732E69734D6F76696E67203F2031303030203A20333030202F2F204D494E494D554D2064656C61';
wwv_flow_api.g_varchar2_table(1317) := '79202D206F7074696F6E206D6179206F766572726964650D0A09093B0D0A09096966202870616E65203D3D3D202263656E74657222292072657475726E3B202F2F2076616C69646174650D0A090969662028732E6973436C6F736564207C7C20732E6973';
wwv_flow_api.g_varchar2_table(1318) := '526573697A696E67290D0A09090972657475726E3B202F2F20736B697020696620616C726561647920636C6F736564204F5220696E2070726F63657373206F6620726573697A696E670D0A0909656C736520696620286F2E736C69646554726967676572';
wwv_flow_api.g_varchar2_table(1319) := '5F636C6F7365203D3D3D2022636C69636B22290D0A090909636C6F73655F4E4F5728293B202F2F20636C6F736520696D6D6564696174656C79206F6E436C69636B0D0A0909656C736520696620286F2E70726576656E74517569636B536C696465436C6F';
wwv_flow_api.g_varchar2_table(1320) := '736520262620732E69734D6F76696E67290D0A09090972657475726E3B202F2F2068616E646C65204368726F6D6520717569636B2D636C6F7365206F6E20736C6964652D6F70656E0D0A0909656C736520696620286F2E70726576656E745072656D6174';
wwv_flow_api.g_varchar2_table(1321) := '757265536C696465436C6F73652026262065767420262620242E6C61796F75742E69734D6F7573654F766572456C656D286576742C202450735B70616E655D29290D0A09090972657475726E3B202F2F2068616E646C6520696E636F7272656374206D6F';
wwv_flow_api.g_varchar2_table(1322) := '7573656C6561766520747269676765722C206C696B65207768656E206F76657220612053454C4543542D6C69737420696E2049450D0A0909656C7365206966202865767429202F2F2074726967676572203D206D6F7573656C65617665202D2075736520';
wwv_flow_api.g_varchar2_table(1323) := '612064656C61790D0A0909092F2F2031207365632064656C617920696620276F70656E696E67272C20656C7365202E33207365630D0A09090974696D65722E7365742870616E652B225F636C6F7365536C69646572222C20636C6F73655F4E4F572C206D';
wwv_flow_api.g_varchar2_table(1324) := '6178286F2E736C69646544656C61795F636C6F73652C2064656C617929293B0D0A0909656C7365202F2F2063616C6C65642070726F6772616D6963616C6C790D0A090909636C6F73655F4E4F5728293B0D0A0D0A09092F2A2A0D0A0909202A2053554252';
wwv_flow_api.g_varchar2_table(1325) := '4F5554494E4520666F722074696D656420636C6F73650D0A0909202A2F0D0A090966756E6374696F6E20636C6F73655F4E4F57202829207B0D0A09090969662028732E6973436C6F73656429202F2F20736B69702027636C6F73652720696620616C7265';
wwv_flow_api.g_varchar2_table(1326) := '61647920636C6F736564210D0A0909090962696E6453746F70536C6964696E674576656E74732870616E652C2066616C7365293B202F2F20554E42494E442074726967676572206576656E7473202D20544F444F3A2069732074686973206E6565646564';
wwv_flow_api.g_varchar2_table(1327) := '20686572653F0D0A090909656C7365206966202821732E69734D6F76696E67290D0A09090909636C6F73652870616E65293B202F2F20636C6F73652077696C6C2068616E646C6520756E62696E64696E670D0A09097D3B0D0A097D0D0A0D0A092F2A2A0D';
wwv_flow_api.g_varchar2_table(1328) := '0A09202A2040706172616D207B28737472696E677C4F626A656374297D096576745F6F725F70616E6509095468652070616E65206265696E67206F70656E65642C2069653A206E6F7274682C20736F7574682C20656173742C206F7220776573740D0A09';
wwv_flow_api.g_varchar2_table(1329) := '202A2F0D0A2C09736C696465546F67676C65203D2066756E6374696F6E20286576745F6F725F70616E6529207B0D0A09097661722070616E65203D2065767450616E652E63616C6C28746869732C206576745F6F725F70616E65293B0D0A0909746F6767';
wwv_flow_api.g_varchar2_table(1330) := '6C652870616E652C2074727565293B0D0A097D0D0A0D0A0D0A092F2A2A0D0A09202A204D75737420736574206C6566742F746F70206F6E20456173742F536F7574682070616E657320736F20616E696D6174696F6E2077696C6C20776F726B2070726F70';
wwv_flow_api.g_varchar2_table(1331) := '65726C790D0A09202A0D0A09202A2040706172616D207B737472696E677D0970616E65095468652070616E6520746F206C6F636B2C20276561737427206F722027736F75746827202D20616E79206F746865722069732069676E6F726564210D0A09202A';
wwv_flow_api.g_varchar2_table(1332) := '2040706172616D207B626F6F6C65616E7D09646F4C6F636B202074727565203D20736574206C6566742F746F702C2066616C7365203D2072656D6F76650D0A09202A2F0D0A2C096C6F636B50616E65466F724658203D2066756E6374696F6E202870616E';
wwv_flow_api.g_varchar2_table(1333) := '652C20646F4C6F636B29207B0D0A0909766172202450093D202450735B70616E655D0D0A09092C0973093D2073746174655B70616E655D0D0A09092C096F093D206F7074696F6E735B70616E655D0D0A09092C097A093D206F7074696F6E732E7A496E64';
wwv_flow_api.g_varchar2_table(1334) := '657865730D0A09093B0D0A090969662028646F4C6F636B29207B0D0A09090973686F774D61736B73282070616E652C207B20616E696D6174696F6E3A20747275652C206F626A656374734F6E6C793A2074727565207D293B0D0A09090924502E63737328';
wwv_flow_api.g_varchar2_table(1335) := '7B207A496E6465783A207A2E70616E655F616E696D617465207D293B202F2F206F7665726C617920616C6C20656C656D656E747320647572696E6720616E696D6174696F6E0D0A0909096966202870616E653D3D22736F75746822290D0A090909092450';
wwv_flow_api.g_varchar2_table(1336) := '2E637373287B20746F703A2073432E696E7365742E746F70202B2073432E696E6E6572486569676874202D2024502E6F757465724865696768742829207D293B0D0A090909656C7365206966202870616E653D3D226561737422290D0A0909090924502E';
wwv_flow_api.g_varchar2_table(1337) := '637373287B206C6566743A2073432E696E7365742E6C656674202B2073432E696E6E65725769647468202D2024502E6F7574657257696474682829207D293B0D0A09097D0D0A0909656C7365207B202F2F20616E696D6174696F6E20444F4E45202D2052';
wwv_flow_api.g_varchar2_table(1338) := '45534554204353530D0A090909686964654D61736B7328293B0D0A09090924502E637373287B207A496E6465783A2028732E6973536C6964696E67203F207A2E70616E655F736C6964696E67203A207A2E70616E655F6E6F726D616C29207D293B0D0A09';
wwv_flow_api.g_varchar2_table(1339) := '09096966202870616E653D3D22736F75746822290D0A0909090924502E637373287B20746F703A20226175746F22207D293B0D0A0909092F2F2069662070616E6520697320706F736974696F6E656420276F66662D73637265656E272C207468656E2044';
wwv_flow_api.g_varchar2_table(1340) := '4F204E4F542073637265772077697468206974210D0A090909656C7365206966202870616E653D3D226561737422202626202124502E63737328226C65667422292E6D61746368282F5C2D39393939392F29290D0A0909090924502E637373287B206C65';
wwv_flow_api.g_varchar2_table(1341) := '66743A20226175746F22207D293B0D0A0909092F2F2066697820616E74692D616C696173696E6720696E204945202D206F6E6C79206E656564656420666F7220616E696D6174696F6E732074686174206368616E6765206F7061636974790D0A09090969';
wwv_flow_api.g_varchar2_table(1342) := '66202862726F777365722E6D736965202626206F2E66784F706163697479466978202626206F2E66784E616D655F6F70656E20213D2022736C696465222026262024502E637373282266696C74657222292026262024502E63737328226F706163697479';
wwv_flow_api.g_varchar2_table(1343) := '2229203D3D2031290D0A0909090924505B305D2E7374796C652E72656D6F7665417474726962757465282766696C74657227293B0D0A09097D0D0A097D0D0A0D0A0D0A092F2A2A0D0A09202A20546F67676C6520736C6964696E672066756E6374696F6E';
wwv_flow_api.g_varchar2_table(1344) := '616C697479206F6620612073706563696669632070616E65206F6E2F6F666620627920616464696E672072656D6F76696E672027736C696465206F70656E2720747269676765720D0A09202A0D0A09202A204073656520206F70656E28292C20636C6F73';
wwv_flow_api.g_varchar2_table(1345) := '6528290D0A09202A2040706172616D207B737472696E677D0970616E65095468652070616E6520746F20656E61626C652F64697361626C652C20276E6F727468272C2027736F757468272C206574632E0D0A09202A2040706172616D207B626F6F6C6561';
wwv_flow_api.g_varchar2_table(1346) := '6E7D09656E61626C6509456E61626C65206F722044697361626C6520736C6964696E673F0D0A09202A2F0D0A2C0962696E645374617274536C6964696E674576656E7473203D2066756E6374696F6E202870616E652C20656E61626C6529207B0D0A0909';
wwv_flow_api.g_varchar2_table(1347) := '766172206F09093D206F7074696F6E735B70616E655D0D0A09092C09245009093D202450735B70616E655D0D0A09092C09245209093D202452735B70616E655D0D0A09092C096576744E616D65093D206F2E736C696465547269676765725F6F70656E2E';
wwv_flow_api.g_varchar2_table(1348) := '746F4C6F7765724361736528290D0A09093B0D0A090969662028212452207C7C2028656E61626C6520262620216F2E736C696461626C6529292072657475726E3B0D0A0D0A09092F2F206D616B652073757265207765206861766520612076616C696420';
wwv_flow_api.g_varchar2_table(1349) := '6576656E740D0A0909696620286576744E616D652E6D61746368282F6D6F7573656F7665722F29290D0A0909096576744E616D65203D206F2E736C696465547269676765725F6F70656E203D20226D6F757365656E746572223B0D0A0909656C73652069';
wwv_flow_api.g_varchar2_table(1350) := '662028216576744E616D652E6D61746368282F28636C69636B7C64626C636C69636B7C6D6F757365656E746572292F2929200D0A0909096576744E616D65203D206F2E736C696465547269676765725F6F70656E203D2022636C69636B223B0D0A0D0A09';
wwv_flow_api.g_varchar2_table(1351) := '092F2F206D7573742072656D6F766520646F75626C652D636C69636B2D746F67676C65207768656E207573696E672064626C636C69636B2D736C6964650D0A0909696620286F2E726573697A657244626C436C69636B546F67676C65202626206576744E';
wwv_flow_api.g_varchar2_table(1352) := '616D652E6D61746368282F636C69636B2F2929207B0D0A09090924525B656E61626C65203F2022756E62696E6422203A202262696E64225D282764626C636C69636B2E272B207349442C20746F67676C65290D0A09097D0D0A0D0A090924520D0A090909';
wwv_flow_api.g_varchar2_table(1353) := '2F2F20616464206F722072656D6F7665206576656E740D0A0909095B656E61626C65203F202262696E6422203A2022756E62696E64225D286576744E616D65202B272E272B207349442C20736C6964654F70656E290D0A0909092F2F2073657420746865';
wwv_flow_api.g_varchar2_table(1354) := '20617070726F70726961746520637572736F722026207469746C652F7469700D0A0909092E6373732822637572736F72222C20656E61626C65203F206F2E736C69646572437572736F72203A202264656661756C7422290D0A0909092E61747472282274';
wwv_flow_api.g_varchar2_table(1355) := '69746C65222C20656E61626C65203F206F2E746970732E536C696465203A202222290D0A09093B0D0A097D0D0A0D0A092F2A2A0D0A09202A20416464206F722072656D6F766520276D6F7573656C6561766527206576656E747320746F2027736C696465';
wwv_flow_api.g_varchar2_table(1356) := '20636C6F736527207768656E2070616E652069732027736C6964696E6727206F70656E206F7220636C6F7365640D0A09202A20416C736F20696E63726561736573207A496E646578207768656E2070616E6520697320736C6964696E67206F70656E0D0A';
wwv_flow_api.g_varchar2_table(1357) := '09202A205365652062696E645374617274536C6964696E674576656E747320666F7220636F646520746F20636F6E74726F6C2027736C696465206F70656E270D0A09202A0D0A09202A20407365652020736C6964654F70656E28292C20736C696465436C';
wwv_flow_api.g_varchar2_table(1358) := '6F736528290D0A09202A2040706172616D207B737472696E677D0970616E65095468652070616E6520746F2070726F636573732C20276E6F727468272C2027736F757468272C206574632E0D0A09202A2040706172616D207B626F6F6C65616E7D09656E';
wwv_flow_api.g_varchar2_table(1359) := '61626C6509456E61626C65206F722044697361626C65206576656E74733F0D0A09202A2F0D0A2C0962696E6453746F70536C6964696E674576656E7473203D2066756E6374696F6E202870616E652C20656E61626C6529207B0D0A0909766172096F0909';
wwv_flow_api.g_varchar2_table(1360) := '3D206F7074696F6E735B70616E655D0D0A09092C097309093D2073746174655B70616E655D0D0A09092C096309093D205F635B70616E655D0D0A09092C097A09093D206F7074696F6E732E7A496E64657865730D0A09092C096576744E616D65093D206F';
wwv_flow_api.g_varchar2_table(1361) := '2E736C696465547269676765725F636C6F73652E746F4C6F7765724361736528290D0A09092C09616374696F6E093D2028656E61626C65203F202262696E6422203A2022756E62696E6422290D0A09092C09245009093D202450735B70616E655D0D0A09';
wwv_flow_api.g_varchar2_table(1362) := '092C09245209093D202452735B70616E655D0D0A09093B0D0A090974696D65722E636C6561722870616E652B225F636C6F7365536C6964657222293B202F2F206A75737420696E20636173650D0A0D0A090969662028656E61626C6529207B0D0A090909';
wwv_flow_api.g_varchar2_table(1363) := '732E6973536C6964696E67203D20747275653B0D0A09090973746174652E70616E6573536C6964696E675B70616E655D203D20747275653B0D0A0909092F2F2072656D6F76652027736C6964654F70656E27206576656E742066726F6D20726573697A65';
wwv_flow_api.g_varchar2_table(1364) := '720D0A0909092F2F20414C534F2077696C6C20726169736520746865207A496E646578206F66207468652070616E65202620726573697A65720D0A09090962696E645374617274536C6964696E674576656E74732870616E652C2066616C7365293B0D0A';
wwv_flow_api.g_varchar2_table(1365) := '09097D0D0A0909656C7365207B0D0A090909732E6973536C6964696E67203D2066616C73653B0D0A09090964656C6574652073746174652E70616E6573536C6964696E675B70616E655D3B0D0A09097D0D0A0D0A09092F2F2052452F534554207A496E64';
wwv_flow_api.g_varchar2_table(1366) := '6578202D20696E63726561736573207768656E2070616E6520697320736C6964696E672D6F70656E2C2072657365747320746F206E6F726D616C207768656E206E6F740D0A090924502E63737328227A496E646578222C20656E61626C65203F207A2E70';
wwv_flow_api.g_varchar2_table(1367) := '616E655F736C6964696E67203A207A2E70616E655F6E6F726D616C293B0D0A090924522E63737328227A496E646578222C20656E61626C65203F207A2E70616E655F736C6964696E672B32203A207A2E726573697A65725F6E6F726D616C293B202F2F20';
wwv_flow_api.g_varchar2_table(1368) := '4E4F54453A206D61736B203D2070616E655F736C6964696E672B310D0A0D0A09092F2F206D616B652073757265207765206861766520612076616C6964206576656E740D0A090969662028216576744E616D652E6D61746368282F28636C69636B7C6D6F';
wwv_flow_api.g_varchar2_table(1369) := '7573656C65617665292F29290D0A0909096576744E616D65203D206F2E736C696465547269676765725F636C6F7365203D20226D6F7573656C65617665223B202F2F20616C736F206361746368657320276D6F7573656F7574270D0A0D0A09092F2F2061';
wwv_flow_api.g_varchar2_table(1370) := '64642F72656D6F766520736C6964652074726967676572730D0A090924525B616374696F6E5D286576744E616D652C20736C696465436C6F7365293B202F2F2062617365206576656E74206F6E20726573697A650D0A09092F2F206E6565642065787472';
wwv_flow_api.g_varchar2_table(1371) := '61206576656E747320666F72206D6F7573656C656176650D0A0909696620286576744E616D65203D3D3D20226D6F7573656C656176652229207B0D0A0909092F2F20616C736F20636C6F7365206F6E2070616E652E6D6F7573656C656176650D0A090909';
wwv_flow_api.g_varchar2_table(1372) := '24505B616374696F6E5D28226D6F7573656C656176652E222B207349442C20736C696465436C6F7365293B0D0A0909092F2F2063616E63656C2074696D6572207768656E206D6F757365206D6F766573206265747765656E202770616E652720616E6420';
wwv_flow_api.g_varchar2_table(1373) := '27726573697A6572270D0A09090924525B616374696F6E5D28226D6F757365656E7465722E222B207349442C2063616E63656C4D6F7573654F7574293B0D0A09090924505B616374696F6E5D28226D6F757365656E7465722E222B207349442C2063616E';
wwv_flow_api.g_varchar2_table(1374) := '63656C4D6F7573654F7574293B0D0A09097D0D0A0D0A09096966202821656E61626C65290D0A09090974696D65722E636C6561722870616E652B225F636C6F7365536C6964657222293B0D0A0909656C736520696620286576744E616D65203D3D3D2022';
wwv_flow_api.g_varchar2_table(1375) := '636C69636B2220262620216F2E726573697A61626C6529207B0D0A0909092F2F2049462070616E65206973206E6F7420726573697A61626C652028776869636820616C726561647920686173206120637572736F7220616E642074697029200D0A090909';
wwv_flow_api.g_varchar2_table(1376) := '2F2F207468656E2073657420746865206120637572736F722026207469746C652F746970206F6E20726573697A6572207768656E20736C6964696E670D0A09090924522E6373732822637572736F72222C20656E61626C65203F206F2E736C6964657243';
wwv_flow_api.g_varchar2_table(1377) := '7572736F72203A202264656661756C7422293B0D0A09090924522E6174747228227469746C65222C20656E61626C65203F206F2E746970732E436C6F7365203A202222293B202F2F2075736520546F67676C65722D7469702C2065673A2022436C6F7365';
wwv_flow_api.g_varchar2_table(1378) := '2050616E65220D0A09097D0D0A0D0A09092F2F20535542524F5554494E4520666F72206D6F7573656C656176652074696D657220636C656172696E670D0A090966756E6374696F6E2063616E63656C4D6F7573654F7574202865767429207B0D0A090909';
wwv_flow_api.g_varchar2_table(1379) := '74696D65722E636C6561722870616E652B225F636C6F7365536C6964657222293B0D0A0909096576742E73746F7050726F7061676174696F6E28293B0D0A09097D0D0A097D0D0A0D0A0D0A092F2A2A0D0A09202A2048696465732F636C6F736573206120';
wwv_flow_api.g_varchar2_table(1380) := '70616E6520696620746865726520697320696E73756666696369656E7420726F6F6D202D2072657665727365732074686973207768656E20746865726520697320726F6F6D20616761696E0D0A09202A204D555354206861766520616C72656164792063';
wwv_flow_api.g_varchar2_table(1381) := '616C6C65642073657453697A654C696D6974732829206265666F72652063616C6C696E672074686973206D6574686F640D0A09202A0D0A09202A2040706172616D207B737472696E677D0970616E6509090909095468652070616E65206265696E672072';
wwv_flow_api.g_varchar2_table(1382) := '6573697A65640D0A09202A2040706172616D207B626F6F6C65616E3D7D095B69734F70656E696E673D66616C73655D090943616C6C65642066726F6D206F6E4F70656E3F0D0A09202A2040706172616D207B626F6F6C65616E3D7D095B736B697043616C';
wwv_flow_api.g_varchar2_table(1383) := '6C6261636B3D66616C73655D0953686F756C6420746865206F6E726573697A652063616C6C6261636B2062652072756E3F0D0A09202A2040706172616D207B626F6F6C65616E3D7D095B666F7263653D66616C73655D0D0A09202A2F0D0A2C096D616B65';
wwv_flow_api.g_varchar2_table(1384) := '50616E65466974203D2066756E6374696F6E202870616E652C2069734F70656E696E672C20736B697043616C6C6261636B2C20666F72636529207B0D0A0909766172096F093D206F7074696F6E735B70616E655D0D0A09092C0973093D2073746174655B';
wwv_flow_api.g_varchar2_table(1385) := '70616E655D0D0A09092C0963093D205F635B70616E655D0D0A09092C092450093D202450735B70616E655D0D0A09092C092452093D202452735B70616E655D0D0A09092C0969735369646550616E6520093D20632E6469723D3D3D2276657274220D0A09';
wwv_flow_api.g_varchar2_table(1386) := '092C09686173526F6F6D09093D2066616C73650D0A09093B0D0A09092F2F207370656369616C2068616E646C696E6720666F722063656E746572202620656173742F776573742070616E65730D0A09096966202870616E65203D3D3D202263656E746572';
wwv_flow_api.g_varchar2_table(1387) := '22207C7C202869735369646550616E6520262620732E6E6F566572746963616C526F6F6D2929207B0D0A0909092F2F2073656520696620746865726520697320656E6F75676820726F6F6D20746F20646973706C6179207468652070616E650D0A090909';
wwv_flow_api.g_varchar2_table(1388) := '2F2F204552524F523A20686173526F6F6D203D20732E6D696E486569676874203C3D20732E6D6178486569676874202626202869735369646550616E65207C7C20732E6D696E5769647468203C3D20732E6D61785769647468293B0D0A09090968617352';
wwv_flow_api.g_varchar2_table(1389) := '6F6F6D203D2028732E6D6178486569676874203E3D2030293B0D0A09090969662028686173526F6F6D20262620732E6E6F526F6F6D29207B202F2F2070726576696F75736C792068696464656E2064756520746F206E6F526F6F6D2C20736F2073686F77';
wwv_flow_api.g_varchar2_table(1390) := '206E6F770D0A090909095F73686F7750616E652870616E65293B0D0A09090909696620282452292024522E73686F7728293B0D0A09090909732E697356697369626C65203D20747275653B0D0A09090909732E6E6F526F6F6D203D2066616C73653B0D0A';
wwv_flow_api.g_varchar2_table(1391) := '090909096966202869735369646550616E652920732E6E6F566572746963616C526F6F6D203D2066616C73653B0D0A090909095F666978496672616D652870616E65293B0D0A0909097D0D0A090909656C7365206966202821686173526F6F6D20262620';
wwv_flow_api.g_varchar2_table(1392) := '21732E6E6F526F6F6D29207B202F2F206E6F742063757272656E746C792068696464656E2C20736F2068696465206E6F770D0A090909095F6869646550616E652870616E65293B0D0A09090909696620282452292024522E6869646528293B0D0A090909';
wwv_flow_api.g_varchar2_table(1393) := '09732E697356697369626C65203D2066616C73653B0D0A09090909732E6E6F526F6F6D203D20747275653B0D0A0909097D0D0A09097D0D0A0D0A09092F2F2073656520696620746865726520697320656E6F75676820726F6F6D20746F20666974207468';
wwv_flow_api.g_varchar2_table(1394) := '6520626F726465722D70616E650D0A09096966202870616E65203D3D3D202263656E7465722229207B0D0A0909092F2F2069676E6F72652063656E74657220696E207468697320626C6F636B0D0A09097D0D0A0909656C73652069662028732E6D696E53';
wwv_flow_api.g_varchar2_table(1395) := '697A65203C3D20732E6D617853697A6529207B202F2F2070616E652043414E206669740D0A090909686173526F6F6D203D20747275653B0D0A09090969662028732E73697A65203E20732E6D617853697A6529202F2F2070616E6520697320746F6F2062';
wwv_flow_api.g_varchar2_table(1396) := '6967202D20736872696E6B2069740D0A0909090973697A6550616E652870616E652C20732E6D617853697A652C20736B697043616C6C6261636B2C20747275652C20666F726365293B202F2F2074727565203D206E6F416E696D6174696F6E0D0A090909';
wwv_flow_api.g_varchar2_table(1397) := '656C73652069662028732E73697A65203C20732E6D696E53697A6529202F2F2070616E6520697320746F6F20736D616C6C202D20656E6C617267652069740D0A0909090973697A6550616E652870616E652C20732E6D696E53697A652C20736B69704361';
wwv_flow_api.g_varchar2_table(1398) := '6C6C6261636B2C20747275652C20666F726365293B202F2F2074727565203D206E6F416E696D6174696F6E0D0A0909092F2F206E65656420732E697356697369626C652062656361757365206E65772070736575646F436C6F7365206D6574686F64206B';
wwv_flow_api.g_varchar2_table(1399) := '656570732070616E652076697369626C652C20627574206F66662D73637265656E0D0A090909656C73652069662028245220262620732E697356697369626C652026262024502E697328223A76697369626C65222929207B0D0A090909092F2F206D616B';
wwv_flow_api.g_varchar2_table(1400) := '65207375726520726573697A65722D62617220697320706F736974696F6E656420636F72726563746C790D0A090909092F2F2068616E646C657320736974756174696F6E207768657265206E6573746564206C61796F757420776173202768696464656E';
wwv_flow_api.g_varchar2_table(1401) := '27207768656E20696E697469616C697A65640D0A0909090976617209706F73203D20732E73697A65202B2073432E696E7365745B632E736964655D3B0D0A0909090969662028242E6C61796F75742E6373734E756D282024522C20632E73696465202920';
wwv_flow_api.g_varchar2_table(1402) := '213D20706F73292024522E6373732820632E736964652C20706F7320293B0D0A0909097D0D0A0D0A0909092F2F206966207761732070726576696F75736C792068696464656E2064756520746F206E6F526F6F6D2C207468656E20524553455420626563';
wwv_flow_api.g_varchar2_table(1403) := '61757365204E4F5720746865726520697320726F6F6D0D0A09090969662028732E6E6F526F6F6D29207B0D0A090909092F2F20732E6E6F526F6F6D2073746174652077696C6C20626520736574206279206F70656E206F722073686F770D0A0909090969';
wwv_flow_api.g_varchar2_table(1404) := '662028732E7761734F70656E202626206F2E636C6F7361626C6529207B0D0A0909090909696620286F2E6175746F52656F70656E290D0A0909090909096F70656E2870616E652C2066616C73652C20747275652C2074727565293B202F2F207472756520';
wwv_flow_api.g_varchar2_table(1405) := '3D206E6F416E696D6174696F6E2C2074727565203D206E6F416C6572740D0A0909090909656C7365202F2F206C65617665207468652070616E6520636C6F7365642C20736F206A757374207570646174652073746174650D0A090909090909732E6E6F52';
wwv_flow_api.g_varchar2_table(1406) := '6F6F6D203D2066616C73653B0D0A090909097D0D0A09090909656C73650D0A090909090973686F772870616E652C20732E7761734F70656E2C20747275652C2074727565293B202F2F2074727565203D206E6F416E696D6174696F6E2C2074727565203D';
wwv_flow_api.g_varchar2_table(1407) := '206E6F416C6572740D0A0909097D0D0A09097D0D0A0909656C7365207B202F2F2021686173526F6F6D202D2070616E652043414E4E4F54206669740D0A0909096966202821732E6E6F526F6F6D29207B202F2F2070616E65206E6F742073657420617320';
wwv_flow_api.g_varchar2_table(1408) := '6E6F526F6F6D207965742C20736F2068696465206F7220636C6F7365206974206E6F772E2E2E0D0A09090909732E6E6F526F6F6D203D20747275653B202F2F207570646174652073746174650D0A09090909732E7761734F70656E203D2021732E697343';
wwv_flow_api.g_varchar2_table(1409) := '6C6F7365642026262021732E6973536C6964696E673B0D0A0909090969662028732E6973436C6F736564297B7D202F2F20534B49500D0A09090909656C736520696620286F2E636C6F7361626C6529202F2F2027636C6F73652720696620706F73736962';
wwv_flow_api.g_varchar2_table(1410) := '6C650D0A0909090909636C6F73652870616E652C20747275652C2074727565293B202F2F2074727565203D20666F7263652C2074727565203D206E6F416E696D6174696F6E0D0A09090909656C7365202F2F202768696465272070616E65206966206361';
wwv_flow_api.g_varchar2_table(1411) := '6E6E6F74206A75737420626520636C6F7365640D0A0909090909686964652870616E652C2074727565293B202F2F2074727565203D206E6F416E696D6174696F6E0D0A0909097D0D0A09097D0D0A097D0D0A0D0A0D0A092F2A2A0D0A09202A206D616E75';
wwv_flow_api.g_varchar2_table(1412) := '616C53697A6550616E6520697320616E206578706F73656420666C6F772D7468726F756768206D6574686F6420616C6C6F77696E6720657874726120636F6465207768656E2070616E6520697320276D616E75616C6C7920726573697A6564270D0A0920';
wwv_flow_api.g_varchar2_table(1413) := '2A0D0A09202A2040706172616D207B28737472696E677C4F626A656374297D096576745F6F725F70616E65090909095468652070616E65206265696E6720726573697A65640D0A09202A2040706172616D207B6E756D6265727D09090973697A65090909';
wwv_flow_api.g_varchar2_table(1414) := '0909546865202A646573697265642A206E65772073697A6520666F7220746869732070616E65202D2077696C6C2062652076616C6964617465640D0A09202A2040706172616D207B626F6F6C65616E3D7D0909095B736B697043616C6C6261636B3D6661';
wwv_flow_api.g_varchar2_table(1415) := '6C73655D0953686F756C6420746865206F6E726573697A652063616C6C6261636B2062652072756E3F0D0A09202A2040706172616D207B626F6F6C65616E3D7D0909095B6E6F416E696D6174696F6E3D66616C73655D0D0A09202A2040706172616D207B';
wwv_flow_api.g_varchar2_table(1416) := '626F6F6C65616E3D7D0909095B666F7263653D66616C73655D090909466F72636520726573697A696E67206576656E20696620646F6573206E6F74207365656D206E65636573736172790D0A09202A2F0D0A2C096D616E75616C53697A6550616E65203D';
wwv_flow_api.g_varchar2_table(1417) := '2066756E6374696F6E20286576745F6F725F70616E652C2073697A652C20736B697043616C6C6261636B2C206E6F416E696D6174696F6E2C20666F72636529207B0D0A090969662028216973496E697469616C697A65642829292072657475726E3B0D0A';
wwv_flow_api.g_varchar2_table(1418) := '09097661720970616E65203D2065767450616E652E63616C6C28746869732C206576745F6F725F70616E65290D0A09092C096F093D206F7074696F6E735B70616E655D0D0A09092C0973093D2073746174655B70616E655D0D0A09092F2F096966207265';
wwv_flow_api.g_varchar2_table(1419) := '73697A696E672063616C6C6261636B732068617665206265656E2064656C6179656420616E6420726573697A696E67206973206E6F7720444F4E452C20666F72636520726573697A696E6720746F20636F6D706C6574652E2E2E0D0A09092C09666F7263';
wwv_flow_api.g_varchar2_table(1420) := '65526573697A65203D20666F726365207C7C20286F2E6C69766550616E65526573697A696E672026262021732E6973526573697A696E67290D0A09093B0D0A09096966202870616E65203D3D3D202263656E74657222292072657475726E3B202F2F2076';
wwv_flow_api.g_varchar2_table(1421) := '616C69646174650D0A09092F2F20414E592063616C6C20746F206D616E75616C53697A6550616E652064697361626C6573206175746F526573697A65202D2069652C2070657263656E746167652073697A696E670D0A0909732E6175746F526573697A65';
wwv_flow_api.g_varchar2_table(1422) := '203D2066616C73653B0D0A09092F2F20666C6F772D7468726F7567682E2E2E0D0A090973697A6550616E652870616E652C2073697A652C20736B697043616C6C6261636B2C206E6F416E696D6174696F6E2C20666F726365526573697A65293B202F2F20';
wwv_flow_api.g_varchar2_table(1423) := '77696C6C20616E696D61746520726573697A65206966206F7074696F6E20656E61626C65640D0A097D0D0A0D0A092F2A2A0D0A09202A2073697A6550616E652069732063616C6C6564206F6E6C7920627920696E7465726E616C206D6574686F64732077';
wwv_flow_api.g_varchar2_table(1424) := '68656E6576657220612070616E65206E6565647320746F20626520726573697A65640D0A09202A0D0A09202A2040706172616D207B28737472696E677C4F626A656374297D096576745F6F725F70616E65090909095468652070616E65206265696E6720';
wwv_flow_api.g_varchar2_table(1425) := '726573697A65640D0A09202A2040706172616D207B6E756D6265727D09090973697A650909090909546865202A646573697265642A206E65772073697A6520666F7220746869732070616E65202D2077696C6C2062652076616C6964617465640D0A0920';
wwv_flow_api.g_varchar2_table(1426) := '2A2040706172616D207B626F6F6C65616E3D7D0909095B736B697043616C6C6261636B3D66616C73655D0953686F756C6420746865206F6E726573697A652063616C6C6261636B2062652072756E3F0D0A09202A2040706172616D207B626F6F6C65616E';
wwv_flow_api.g_varchar2_table(1427) := '3D7D0909095B6E6F416E696D6174696F6E3D66616C73655D0D0A09202A2040706172616D207B626F6F6C65616E3D7D0909095B666F7263653D66616C73655D090909466F72636520726573697A696E67206576656E20696620646F6573206E6F74207365';
wwv_flow_api.g_varchar2_table(1428) := '656D206E65636573736172790D0A09202A2F0D0A2C0973697A6550616E65203D2066756E6374696F6E20286576745F6F725F70616E652C2073697A652C20736B697043616C6C6261636B2C206E6F416E696D6174696F6E2C20666F72636529207B0D0A09';
wwv_flow_api.g_varchar2_table(1429) := '0969662028216973496E697469616C697A65642829292072657475726E3B0D0A09097661720970616E65093D2065767450616E652E63616C6C28746869732C206576745F6F725F70616E6529202F2F2070726F6261626C79204E455645522063616C6C65';
wwv_flow_api.g_varchar2_table(1430) := '642066726F6D206576656E743F0D0A09092C096F09093D206F7074696F6E735B70616E655D0D0A09092C097309093D2073746174655B70616E655D0D0A09092C09245009093D202450735B70616E655D0D0A09092C09245209093D202452735B70616E65';
wwv_flow_api.g_varchar2_table(1431) := '5D0D0A09092C0973696465093D205F635B70616E655D2E736964650D0A09092C0964696D4E616D65093D205F635B70616E655D2E73697A65547970652E746F4C6F7765724361736528290D0A09092C09736B6970526573697A655768696C654472616767';
wwv_flow_api.g_varchar2_table(1432) := '696E67203D20732E6973526573697A696E6720262620216F2E747269676765724576656E7473447572696E674C697665526573697A650D0A09092C09646F4658093D206E6F416E696D6174696F6E20213D3D2074727565202626206F2E616E696D617465';
wwv_flow_api.g_varchar2_table(1433) := '50616E6553697A696E670D0A09092C096F6C6453697A652C206E657753697A650D0A09093B0D0A09096966202870616E65203D3D3D202263656E74657222292072657475726E3B202F2F2076616C69646174650D0A09092F2F20515545554520696E2063';
wwv_flow_api.g_varchar2_table(1434) := '61736520616E6F7468657220616374696F6E2F616E696D6174696F6E20697320696E2070726F67726573730D0A0909244E2E71756575652866756E6374696F6E282071756575654E65787420297B0D0A0909092F2F2063616C63756C6174652027637572';
wwv_flow_api.g_varchar2_table(1435) := '72656E7427206D696E2F6D61782073697A65730D0A09090973657453697A654C696D6974732870616E65293B202F2F207570646174652070616E652D73746174650D0A0909096F6C6453697A65203D20732E73697A653B0D0A09090973697A65203D205F';
wwv_flow_api.g_varchar2_table(1436) := '706172736553697A652870616E652C2073697A65293B202F2F2068616E646C652070657263656E74616765732026206175746F0D0A09090973697A65203D206D61782873697A652C205F706172736553697A652870616E652C206F2E6D696E53697A6529';
wwv_flow_api.g_varchar2_table(1437) := '293B0D0A09090973697A65203D206D696E2873697A652C20732E6D617853697A65293B0D0A0909096966202873697A65203C20732E6D696E53697A6529207B202F2F206E6F7420656E6F75676820726F6F6D20666F722070616E65210D0A090909097175';
wwv_flow_api.g_varchar2_table(1438) := '6575654E65787428293B202F2F2063616C6C206265666F7265206D616B6550616E6546697428292062656361757365206974206E656564732074686520717565756520667265650D0A090909096D616B6550616E654669742870616E652C2066616C7365';
wwv_flow_api.g_varchar2_table(1439) := '2C20736B697043616C6C6261636B293B092F2F2077696C6C2068696465206F7220636C6F73652070616E650D0A0909090972657475726E3B0D0A0909097D0D0A0D0A0909092F2F204946206E657753697A652069732073616D65206173206F6C6453697A';
wwv_flow_api.g_varchar2_table(1440) := '652C207468656E206E6F7468696E6720746F20646F202D2061626F72740D0A0909096966202821666F7263652026262073697A65203D3D3D206F6C6453697A65290D0A0909090972657475726E2071756575654E65787428293B0D0A0D0A090909732E6E';
wwv_flow_api.g_varchar2_table(1441) := '657753697A65203D2073697A653B0D0A0D0A0909092F2F206F6E726573697A655F73746172742063616C6C6261636B2043414E4E4F542063616E63656C20726573697A696E672062656361757365207468697320776F756C6420627265616B2074686520';
wwv_flow_api.g_varchar2_table(1442) := '6C61796F7574210D0A0909096966202821736B697043616C6C6261636B2026262073746174652E696E697469616C697A656420262620732E697356697369626C65290D0A090909095F72756E43616C6C6261636B7328226F6E726573697A655F73746172';
wwv_flow_api.g_varchar2_table(1443) := '74222C2070616E65293B0D0A0D0A0909092F2F20726573697A65207468652070616E652C20616E64206D616B652073757265206974732076697369626C650D0A0909096E657753697A65203D2063737353697A652870616E652C2073697A65293B0D0A0D';
wwv_flow_api.g_varchar2_table(1444) := '0A09090969662028646F46582026262024502E697328223A76697369626C65222929207B202F2F20414E494D4154450D0A0909090976617220667809093D20242E6C61796F75742E656666656374732E73697A655B70616E655D207C7C20242E6C61796F';
wwv_flow_api.g_varchar2_table(1445) := '75742E656666656374732E73697A652E616C6C0D0A090909092C09656173696E67093D206F2E667853657474696E67735F73697A652E656173696E67207C7C2066782E656173696E670D0A090909092C097A09093D206F7074696F6E732E7A496E646578';
wwv_flow_api.g_varchar2_table(1446) := '65730D0A090909092C0970726F7073093D207B7D3B0D0A0909090970726F70735B2064696D4E616D65205D203D206E657753697A65202B277078273B0D0A09090909732E69734D6F76696E67203D20747275653B0D0A090909092F2F206F7665726C6179';
wwv_flow_api.g_varchar2_table(1447) := '20616C6C20656C656D656E747320647572696E6720616E696D6174696F6E0D0A0909090924502E637373287B207A496E6465783A207A2E70616E655F616E696D617465207D290D0A0909090920202E73686F7728292E616E696D617465282070726F7073';
wwv_flow_api.g_varchar2_table(1448) := '2C206F2E667853706565645F73697A652C20656173696E672C2066756E6374696F6E28297B0D0A09090909092F2F207265736574207A496E64657820616674657220616E696D6174696F6E0D0A090909090924502E637373287B207A496E6465783A2028';
wwv_flow_api.g_varchar2_table(1449) := '732E6973536C6964696E67203F207A2E70616E655F736C6964696E67203A207A2E70616E655F6E6F726D616C29207D293B0D0A0909090909732E69734D6F76696E67203D2066616C73653B0D0A090909090964656C65746520732E6E657753697A653B0D';
wwv_flow_api.g_varchar2_table(1450) := '0A090909090973697A6550616E655F3228293B202F2F20636F6E74696E75650D0A090909090971756575654E65787428293B0D0A090909097D293B0D0A0909097D0D0A090909656C7365207B202F2F206E6F20616E696D6174696F6E0D0A090909092450';
wwv_flow_api.g_varchar2_table(1451) := '2E637373282064696D4E616D652C206E657753697A6520293B092F2F20726573697A652070616E650D0A0909090964656C65746520732E6E657753697A653B0D0A090909092F2F2069662070616E652069732076697369626C652C207468656E200D0A09';
wwv_flow_api.g_varchar2_table(1452) := '0909096966202824502E697328223A76697369626C652229290D0A090909090973697A6550616E655F3228293B202F2F20636F6E74696E75650D0A09090909656C7365207B0D0A09090909092F2F2070616E65206973204E4F542056495349424C452C20';
wwv_flow_api.g_varchar2_table(1453) := '736F206A7573742075706461746520737461746520646174612E2E2E0D0A09090909092F2F207768656E2070616E65206973202A6E657874206F70656E65642A2C2069742077696C6C206861766520746865206E65772073697A650D0A0909090909732E';
wwv_flow_api.g_varchar2_table(1454) := '73697A65203D2073697A653B090909092F2F207570646174652073746174652E73697A650D0A09090909092F2F242E657874656E6428732C20656C44696D7328245029293B092F2F207570646174652073746174652064696D656E73696F6E73202D2043';
wwv_flow_api.g_varchar2_table(1455) := '414E4E4F5420646F2074686973207768656E206E6F742076697369626C6521090909097D0D0A090909097D0D0A0909090971756575654E65787428293B0D0A0909097D3B0D0A0D0A09097D293B0D0A0D0A09092F2F20535542524F5554494E450D0A0909';
wwv_flow_api.g_varchar2_table(1456) := '66756E6374696F6E2073697A6550616E655F32202829207B0D0A0909092F2A0950616E65732061726520736F6D6574696D6573206E6F742073697A656420707265636973656C7920696E20736F6D652062726F7773657273213F0D0A090909202A095468';
wwv_flow_api.g_varchar2_table(1457) := '697320636F64652077696C6C20726573697A65207468652070616E6520757020746F20332074696D657320746F206E75646765207468652070616E6520746F2074686520636F72726563742073697A650D0A090909202A2F0D0A09090976617209616374';
wwv_flow_api.g_varchar2_table(1458) := '75616C093D2064696D4E616D653D3D3D27776964746827203F2024502E6F7574657257696474682829203A2024502E6F7574657248656967687428290D0A0909092C097472696573093D205B7B0D0A0909090909092020200970616E653A090970616E65';
wwv_flow_api.g_varchar2_table(1459) := '0D0A0909090909092C09636F756E743A0909310D0A0909090909092C097461726765743A090973697A650D0A0909090909092C0961637475616C3A090961637475616C0D0A0909090909092C09636F72726563743A092873697A65203D3D3D2061637475';
wwv_flow_api.g_varchar2_table(1460) := '616C290D0A0909090909092C09617474656D70743A0973697A650D0A0909090909092C0963737353697A653A096E657753697A650D0A0909090909097D5D0D0A0909092C096C617374547279203D2074726965735B305D0D0A0909092C09746869735472';
wwv_flow_api.g_varchar2_table(1461) := '79093D207B7D0D0A0909092C096D736709093D2027496E61636375726174652073697A6520616674657220726573697A696E672074686520272B2070616E65202B272D70616E652E270D0A0909093B0D0A0909097768696C65202820216C617374547279';
wwv_flow_api.g_varchar2_table(1462) := '2E636F72726563742029207B0D0A0909090974686973547279203D207B2070616E653A2070616E652C20636F756E743A206C6173745472792E636F756E742B312C207461726765743A2073697A65207D3B0D0A0D0A09090909696620286C617374547279';
wwv_flow_api.g_varchar2_table(1463) := '2E61637475616C203E2073697A65290D0A0909090909746869735472792E617474656D7074203D206D617828302C206C6173745472792E617474656D7074202D20286C6173745472792E61637475616C202D2073697A6529293B0D0A09090909656C7365';
wwv_flow_api.g_varchar2_table(1464) := '202F2F206C6173745472792E61637475616C203C2073697A650D0A0909090909746869735472792E617474656D7074203D206D617828302C206C6173745472792E617474656D7074202B202873697A65202D206C6173745472792E61637475616C29293B';
wwv_flow_api.g_varchar2_table(1465) := '0D0A0D0A09090909746869735472792E63737353697A65203D2063737353697A652870616E652C20746869735472792E617474656D7074293B0D0A0909090924502E637373282064696D4E616D652C20746869735472792E63737353697A6520293B0D0A';
wwv_flow_api.g_varchar2_table(1466) := '0D0A09090909746869735472792E61637475616C093D2064696D4E616D653D3D27776964746827203F2024502E6F7574657257696474682829203A2024502E6F7574657248656967687428293B0D0A09090909746869735472792E636F7272656374093D';
wwv_flow_api.g_varchar2_table(1467) := '202873697A65203D3D3D20746869735472792E61637475616C293B0D0A0D0A090909092F2F206C6F6720617474656D70747320616E6420616C657274207468652075736572206F662074686973202A6E6F6E2D666174616C206572726F722A2028696620';
wwv_flow_api.g_varchar2_table(1468) := '73686F7744656275674D65737361676573290D0A09090909696620282074726965732E6C656E677468203D3D3D203129207B0D0A09090909095F6C6F67286D73672C2066616C73652C2074727565293B0D0A09090909095F6C6F67286C6173745472792C';
wwv_flow_api.g_varchar2_table(1469) := '2066616C73652C2074727565293B0D0A090909097D0D0A090909095F6C6F6728746869735472792C2066616C73652C2074727565293B0D0A090909092F2F20616674657220342074726965732C20697320617320636C6F73652061732069747320676F6E';
wwv_flow_api.g_varchar2_table(1470) := '6E6120676574210D0A090909096966202874726965732E6C656E677468203E20332920627265616B3B0D0A0D0A0909090974726965732E7075736828207468697354727920293B0D0A090909096C617374547279203D2074726965735B2074726965732E';
wwv_flow_api.g_varchar2_table(1471) := '6C656E677468202D2031205D3B0D0A0909097D0D0A0909092F2F20454E442054455354494E4720434F44450D0A0D0A0909092F2F207570646174652070616E652D73746174652064696D656E73696F6E730D0A090909732E73697A65093D2073697A653B';
wwv_flow_api.g_varchar2_table(1472) := '0D0A090909242E657874656E6428732C20656C44696D7328245029293B0D0A0D0A09090969662028732E697356697369626C652026262024502E697328223A76697369626C65222929207B0D0A090909092F2F207265706F736974696F6E207468652072';
wwv_flow_api.g_varchar2_table(1473) := '6573697A65722D6261720D0A09090909696620282452292024522E6373732820736964652C2073697A65202B2073432E696E7365745B736964655D20293B0D0A090909092F2F20726573697A652074686520636F6E74656E742D6469760D0A0909090973';
wwv_flow_api.g_varchar2_table(1474) := '697A65436F6E74656E742870616E65293B0D0A0909097D0D0A0D0A0909096966202821736B697043616C6C6261636B2026262021736B6970526573697A655768696C654472616767696E672026262073746174652E696E697469616C697A656420262620';
wwv_flow_api.g_varchar2_table(1475) := '732E697356697369626C65290D0A090909095F72756E43616C6C6261636B7328226F6E726573697A655F656E64222C2070616E65293B0D0A0D0A0909092F2F20726573697A6520616C6C207468652061646A6163656E742070616E65732C20616E642061';
wwv_flow_api.g_varchar2_table(1476) := '646A75737420746865697220746F67676C657220627574746F6E730D0A0909092F2F207768656E20736B697043616C6C6261636B207061737365642C206974206D65616E732074686520636F6E74726F6C6C696E67206D6574686F642077696C6C206861';
wwv_flow_api.g_varchar2_table(1477) := '6E646C6520276F746865722070616E6573270D0A0909096966202821736B697043616C6C6261636B29207B0D0A090909092F2F20616C736F206E6F2063616C6C6261636B206966206C6976652D726573697A6520697320696E2070726F67726573732061';
wwv_flow_api.g_varchar2_table(1478) := '6E64204E4F5420747269676765724576656E7473447572696E674C697665526573697A650D0A090909096966202821732E6973536C6964696E67292073697A654D696450616E6573285F635B70616E655D2E6469723D3D22686F727A22203F202222203A';
wwv_flow_api.g_varchar2_table(1479) := '202263656E746572222C20736B6970526573697A655768696C654472616767696E672C20666F726365293B0D0A0909090973697A6548616E646C657328293B0D0A0909097D0D0A0D0A0909092F2F206966206F70706F736974652D70616E652077617320';
wwv_flow_api.g_varchar2_table(1480) := '6175746F436C6F7365642C207365652069662069742063616E206265206175746F4F70656E6564206E6F770D0A09090976617220616C7450616E65203D205F632E6F70706F73697465456467655B70616E655D3B0D0A0909096966202873697A65203C20';
wwv_flow_api.g_varchar2_table(1481) := '6F6C6453697A652026262073746174655B20616C7450616E65205D2E6E6F526F6F6D29207B0D0A0909090973657453697A654C696D6974732820616C7450616E6520293B0D0A090909096D616B6550616E654669742820616C7450616E652C2066616C73';
wwv_flow_api.g_varchar2_table(1482) := '652C20736B697043616C6C6261636B20293B0D0A0909097D0D0A0D0A0909092F2F204445425547202D20414C45525420757365722F646576656C6F70657220736F2074686579206B6E6F772074686572652077617320612073697A696E672070726F626C';
wwv_flow_api.g_varchar2_table(1483) := '656D0D0A0909096966202874726965732E6C656E677468203E2031290D0A090909095F6C6F67286D7367202B275C6E53656520746865204572726F7220436F6E736F6C6520666F722064657461696C732E272C20747275652C2074727565293B0D0A0909';
wwv_flow_api.g_varchar2_table(1484) := '7D0D0A097D0D0A0D0A092F2A2A0D0A09202A20407365652020696E697450616E657328292C2073697A6550616E6528292C2009726573697A65416C6C28292C206F70656E28292C20636C6F736528292C206869646528290D0A09202A2040706172616D20';
wwv_flow_api.g_varchar2_table(1485) := '7B2841727261792E3C737472696E673E7C737472696E67297D0970616E657309090909095468652070616E65287329206265696E6720726573697A65642C20636F6D6D612D64656C6D6974656420737472696E670D0A09202A2040706172616D207B626F';
wwv_flow_api.g_varchar2_table(1486) := '6F6C65616E3D7D09090909095B736B697043616C6C6261636B3D66616C73655D0953686F756C6420746865206F6E726573697A652063616C6C6261636B2062652072756E3F0D0A09202A2040706172616D207B626F6F6C65616E3D7D09090909095B666F';
wwv_flow_api.g_varchar2_table(1487) := '7263653D66616C73655D0D0A09202A2F0D0A2C0973697A654D696450616E6573203D2066756E6374696F6E202870616E65732C20736B697043616C6C6261636B2C20666F72636529207B0D0A090970616E6573203D202870616E6573203F2070616E6573';
wwv_flow_api.g_varchar2_table(1488) := '203A2022656173742C776573742C63656E74657222292E73706C697428222C22293B0D0A0D0A0909242E656163682870616E65732C2066756E6374696F6E2028692C2070616E6529207B0D0A09090969662028212450735B70616E655D29207265747572';
wwv_flow_api.g_varchar2_table(1489) := '6E3B202F2F204E4F2050414E45202D20736B69700D0A090909766172200D0A090909096F09093D206F7074696F6E735B70616E655D0D0A0909092C097309093D2073746174655B70616E655D0D0A0909092C09245009093D202450735B70616E655D0D0A';
wwv_flow_api.g_varchar2_table(1490) := '0909092C09245209093D202452735B70616E655D0D0A0909092C09697343656E7465723D202870616E653D3D2263656E74657222290D0A0909092C09686173526F6F6D093D20747275650D0A0909092C0943535309093D207B7D0D0A0909092F2F096966';
wwv_flow_api.g_varchar2_table(1491) := '2070616E65206973206E6F742076697369626C652C2073686F7720697420696E76697369626C79204E4F5720726174686572207468616E20666F72202A656163682063616C6C2A20696E2074686973207363726970740D0A0909092C0976697343535309';
wwv_flow_api.g_varchar2_table(1492) := '3D20242E6C61796F75742E73686F77496E76697369626C79282450290D0A0D0A0909092C096E657743656E746572093D2063616C634E657743656E74657250616E6544696D7328290D0A0909093B0D0A0D0A0909092F2F207570646174652070616E652D';
wwv_flow_api.g_varchar2_table(1493) := '73746174652064696D656E73696F6E730D0A090909242E657874656E6428732C20656C44696D7328245029293B0D0A0D0A0909096966202870616E65203D3D3D202263656E7465722229207B0D0A090909096966202821666F72636520262620732E6973';
wwv_flow_api.g_varchar2_table(1494) := '56697369626C65202626206E657743656E7465722E7769647468203D3D3D20732E6F757465725769647468202626206E657743656E7465722E686569676874203D3D3D20732E6F7574657248656967687429207B0D0A090909090924502E637373287669';
wwv_flow_api.g_varchar2_table(1495) := '73435353293B0D0A090909090972657475726E20747275653B202F2F20534B4950202D2070616E6520616C72656164792074686520636F72726563742073697A650D0A090909097D0D0A090909092F2F2073657420737461746520666F72206D616B6550';
wwv_flow_api.g_varchar2_table(1496) := '616E654669742829206C6F6769630D0A09090909242E657874656E6428732C206373734D696E44696D732870616E65292C207B0D0A09090909096D617857696474683A096E657743656E7465722E77696474680D0A090909092C096D6178486569676874';
wwv_flow_api.g_varchar2_table(1497) := '3A096E657743656E7465722E6865696768740D0A090909097D293B0D0A09090909435353203D206E657743656E7465723B0D0A09090909732E6E65775769647468093D204353532E77696474683B0D0A09090909732E6E6577486569676874093D204353';
wwv_flow_api.g_varchar2_table(1498) := '532E6865696768743B0D0A090909092F2F20636F6E76657274204F555445522077696474682F68656967687420746F204353532077696474682F686569676874200D0A090909094353532E7769647468093D20637373572824502C204353532E77696474';
wwv_flow_api.g_varchar2_table(1499) := '68293B0D0A090909092F2F204E4557202D20616C6C6F772070616E6520746F20657874656E64202762656C6F77272076697369626C65206172656120726174686572207468616E20686964652069740D0A090909094353532E686569676874093D206373';
wwv_flow_api.g_varchar2_table(1500) := '73482824502C204353532E686569676874293B0D0A09090909686173526F6F6D09093D204353532E7769647468203E3D2030202626204353532E686569676874203E3D20303B202F2F20686569676874203E3D2030203D20414C57415953205452554520';
null;
end;
/
begin
wwv_flow_api.g_varchar2_table(1501) := '4E4F570D0A0D0A090909092F2F20647572696E67206C61796F757420696E69742C2074727920746F20736872696E6B20656173742F776573742070616E657320746F206D616B6520726F6F6D20666F722063656E7465720D0A0909090969662028217374';
wwv_flow_api.g_varchar2_table(1502) := '6174652E696E697469616C697A6564202626206F2E6D696E5769647468203E206E657743656E7465722E776964746829207B0D0A09090909097661720D0A0909090909097265715078093D206F2E6D696E5769647468202D20732E6F7574657257696474';
wwv_flow_api.g_varchar2_table(1503) := '680D0A09090909092C096D696E45093D206F7074696F6E732E656173742E6D696E53697A65207C7C20300D0A09090909092C096D696E57093D206F7074696F6E732E776573742E6D696E53697A65207C7C20300D0A09090909092C0973697A6545093D20';
wwv_flow_api.g_varchar2_table(1504) := '73746174652E656173742E73697A650D0A09090909092C0973697A6557093D2073746174652E776573742E73697A650D0A09090909092C096E657745093D2073697A65450D0A09090909092C096E657757093D2073697A65570D0A09090909093B0D0A09';
wwv_flow_api.g_varchar2_table(1505) := '09090909696620287265715078203E20302026262073746174652E656173742E697356697369626C652026262073697A6545203E206D696E4529207B0D0A0909090909096E657745203D206D6178282073697A65452D6D696E452C2073697A65452D7265';
wwv_flow_api.g_varchar2_table(1506) := '71507820293B0D0A0909090909097265715078202D3D2073697A65452D6E6577453B0D0A09090909097D0D0A0909090909696620287265715078203E20302026262073746174652E776573742E697356697369626C652026262073697A6557203E206D69';
wwv_flow_api.g_varchar2_table(1507) := '6E5729207B0D0A0909090909096E657757203D206D6178282073697A65572D6D696E572C2073697A65572D726571507820293B0D0A0909090909097265715078202D3D2073697A65572D6E6577573B0D0A09090909097D0D0A09090909092F2F20494620';
wwv_flow_api.g_varchar2_table(1508) := '776520666F756E6420656E6F7567682065787472612073706163652C207468656E20726573697A652074686520626F726465722070616E65732061732063616C63756C617465640D0A0909090909696620287265715078203D3D3D203029207B0D0A0909';
wwv_flow_api.g_varchar2_table(1509) := '090909096966202873697A65452026262073697A654520213D206D696E45290D0A0909090909090973697A6550616E65282765617374272C206E6577452C20747275652C20747275652C20666F726365293B202F2F2074727565203D20736B697043616C';
wwv_flow_api.g_varchar2_table(1510) := '6C6261636B2F6E6F416E696D6174696F6E202D20696E697450616E65732077696C6C2068616E646C65207768656E20646F6E650D0A0909090909096966202873697A65572026262073697A655720213D206D696E57290D0A0909090909090973697A6550';
wwv_flow_api.g_varchar2_table(1511) := '616E65282777657374272C206E6577572C20747275652C20747275652C20666F726365293B202F2F2074727565203D20736B697043616C6C6261636B2F6E6F416E696D6174696F6E0D0A0909090909092F2F206E6F77207374617274206F766572210D0A';
wwv_flow_api.g_varchar2_table(1512) := '09090909090973697A654D696450616E6573282763656E746572272C20736B697043616C6C6261636B2C20666F726365293B0D0A09090909090924502E63737328766973435353293B0D0A09090909090972657475726E3B202F2F2061626F7274207468';
wwv_flow_api.g_varchar2_table(1513) := '6973206C6F6F700D0A09090909097D0D0A090909097D0D0A0909097D0D0A090909656C7365207B202F2F20666F72206561737420616E6420776573742C20736574206F6E6C7920746865206865696768742C2077686963682069732073616D6520617320';
wwv_flow_api.g_varchar2_table(1514) := '63656E746572206865696768740D0A090909092F2F207365742073746174652E6D696E2F6D617857696474682F48656967687420666F72206D616B6550616E654669742829206C6F6769630D0A0909090969662028732E697356697369626C6520262620';
wwv_flow_api.g_varchar2_table(1515) := '21732E6E6F566572746963616C526F6F6D290D0A0909090909242E657874656E6428732C20656C44696D73282450292C206373734D696E44696D732870616E6529290D0A090909096966202821666F7263652026262021732E6E6F566572746963616C52';
wwv_flow_api.g_varchar2_table(1516) := '6F6F6D202626206E657743656E7465722E686569676874203D3D3D20732E6F7574657248656967687429207B0D0A090909090924502E63737328766973435353293B0D0A090909090972657475726E20747275653B202F2F20534B4950202D2070616E65';
wwv_flow_api.g_varchar2_table(1517) := '20616C72656164792074686520636F72726563742073697A650D0A090909097D0D0A090909092F2F20656173742F7765737420686176652073616D6520746F702C20626F74746F6D2026206865696768742061732063656E7465720D0A09090909435353';
wwv_flow_api.g_varchar2_table(1518) := '2E746F7009093D206E657743656E7465722E746F703B0D0A090909094353532E626F74746F6D093D206E657743656E7465722E626F74746F6D3B0D0A09090909732E6E657753697A65093D206E657743656E7465722E6865696768740D0A090909092F2F';
wwv_flow_api.g_varchar2_table(1519) := '204E4557202D20616C6C6F772070616E6520746F20657874656E64202762656C6F77272076697369626C65206172656120726174686572207468616E20686964652069740D0A090909094353532E686569676874093D20637373482824502C206E657743';
wwv_flow_api.g_varchar2_table(1520) := '656E7465722E686569676874293B0D0A09090909732E6D6178486569676874093D204353532E6865696768743B0D0A09090909686173526F6F6D09093D2028732E6D6178486569676874203E3D2030293B202F2F20414C574159532054525545204E4F57';
wwv_flow_api.g_varchar2_table(1521) := '0D0A090909096966202821686173526F6F6D2920732E6E6F566572746963616C526F6F6D203D20747275653B202F2F206D616B6550616E654669742829206C6F6769630D0A0909097D0D0A0D0A09090969662028686173526F6F6D29207B0D0A09090909';
wwv_flow_api.g_varchar2_table(1522) := '2F2F20726573697A65416C6C2070617373657320736B697043616C6C6261636B20626563617573652069742074726967676572732063616C6C6261636B7320616674657220414C4C2070616E65732061726520726573697A65640D0A0909090969662028';
wwv_flow_api.g_varchar2_table(1523) := '21736B697043616C6C6261636B2026262073746174652E696E697469616C697A6564290D0A09090909095F72756E43616C6C6261636B7328226F6E726573697A655F7374617274222C2070616E65293B0D0A0D0A0909090924502E63737328435353293B';
wwv_flow_api.g_varchar2_table(1524) := '202F2F206170706C79207468652043535320746F2070616E650D0A090909096966202870616E6520213D3D202263656E74657222290D0A090909090973697A6548616E646C65732870616E65293B202F2F20616C736F2075706461746520726573697A65';
wwv_flow_api.g_varchar2_table(1525) := '72206C656E6774680D0A0909090969662028732E6E6F526F6F6D2026262021732E6973436C6F7365642026262021732E697348696464656E290D0A09090909096D616B6550616E654669742870616E65293B202F2F2077696C6C2072652D6F70656E2F73';
wwv_flow_api.g_varchar2_table(1526) := '686F77206175746F2D636C6F7365642F68696464656E2070616E650D0A0909090969662028732E697356697369626C6529207B0D0A0909090909242E657874656E6428732C20656C44696D7328245029293B202F2F207570646174652070616E65206469';
wwv_flow_api.g_varchar2_table(1527) := '6D656E73696F6E730D0A09090909096966202873746174652E696E697469616C697A6564292073697A65436F6E74656E742870616E65293B202F2F20616C736F20726573697A652074686520636F6E74656E74732C206966206578697374730D0A090909';
wwv_flow_api.g_varchar2_table(1528) := '097D0D0A0909097D0D0A090909656C7365206966202821732E6E6F526F6F6D20262620732E697356697369626C6529202F2F206E6F20726F6F6D20666F722070616E650D0A090909096D616B6550616E654669742870616E65293B202F2F2077696C6C20';
wwv_flow_api.g_varchar2_table(1529) := '68696465206F7220636C6F73652070616E650D0A0D0A0909092F2F207265736574207669736962696C6974792C206966206E65636573736172790D0A09090924502E63737328766973435353293B0D0A0D0A09090964656C65746520732E6E657753697A';
wwv_flow_api.g_varchar2_table(1530) := '653B0D0A09090964656C65746520732E6E657757696474683B0D0A09090964656C65746520732E6E65774865696768743B0D0A0D0A0909096966202821732E697356697369626C65290D0A0909090972657475726E20747275653B202F2F20444F4E4520';
wwv_flow_api.g_varchar2_table(1531) := '2D206E6578742070616E650D0A0D0A0909092F2A0D0A090909202A2045787472612043535320666F7220494536206F722049453720696E20517569726B732D6D6F6465202D20616464202777696474682720746F204E4F5254482F534F5554482070616E';
wwv_flow_api.g_varchar2_table(1532) := '65730D0A090909202A204E6F726D616C6C792074686573652070616E65732068617665206F6E6C7920276C656674272026202772696768742720706F736974696F6E7320736F2070616E65206175746F2D73697A65730D0A090909202A20414C534F2072';
wwv_flow_api.g_varchar2_table(1533) := '65717569726564207768656E2070616E6520697320616E20494652414D4520626563617573652077696C6C204E4F542064656661756C7420746F202766756C6C207769647468270D0A090909202A09544F444F3A2043616E204920757365207769647468';
wwv_flow_api.g_varchar2_table(1534) := '3A3130302520666F722061206E6F7274682F736F75746820696672616D653F0D0A090909202A09544F444F3A20536F756E6473206C696B652061206A6F6220666F722024502E6F757465725769647468282073432E696E6E657257696474682029205345';
wwv_flow_api.g_varchar2_table(1535) := '54544552204D4554484F440D0A090909202A2F0D0A0909096966202870616E65203D3D3D202263656E7465722229207B202F2F2066696E69736865642070726F63657373696E67206D696450616E65730D0A0909090976617220666978203D2062726F77';
wwv_flow_api.g_varchar2_table(1536) := '7365722E6973494536207C7C202162726F777365722E626F784D6F64656C3B0D0A09090909696620282450732E6E6F7274682026262028666978207C7C2073746174652E6E6F7274682E7461674E616D653D3D22494652414D45222929200D0A09090909';
wwv_flow_api.g_varchar2_table(1537) := '092450732E6E6F7274682E63737328227769647468222C2063737357282450732E6E6F7274682C2073432E696E6E6572576964746829293B0D0A09090909696620282450732E736F7574682026262028666978207C7C2073746174652E736F7574682E74';
wwv_flow_api.g_varchar2_table(1538) := '61674E616D653D3D22494652414D452229290D0A09090909092450732E736F7574682E63737328227769647468222C2063737357282450732E736F7574682C2073432E696E6E6572576964746829293B0D0A0909097D0D0A0D0A0909092F2F2072657369';
wwv_flow_api.g_varchar2_table(1539) := '7A65416C6C2070617373657320736B697043616C6C6261636B20626563617573652069742074726967676572732063616C6C6261636B7320616674657220414C4C2070616E65732061726520726573697A65640D0A0909096966202821736B697043616C';
wwv_flow_api.g_varchar2_table(1540) := '6C6261636B2026262073746174652E696E697469616C697A6564290D0A090909095F72756E43616C6C6261636B7328226F6E726573697A655F656E64222C2070616E65293B0D0A09097D293B0D0A097D0D0A0D0A0D0A092F2A2A0D0A09202A2040736565';
wwv_flow_api.g_varchar2_table(1541) := '202077696E646F772E6F6E726573697A6528292C2063616C6C6261636B73206F7220637573746F6D20636F64650D0A09202A2040706172616D207B284F626A6563747C626F6F6C65616E293D7D096576745F6F725F726566726573680949662027747275';
wwv_flow_api.g_varchar2_table(1542) := '65272C207468656E20616C736F2072657365742070616E652D706F736974696F6E696E670D0A09202A2F0D0A2C09726573697A65416C6C203D2066756E6374696F6E20286576745F6F725F7265667265736829207B0D0A0909766172096F6C6457093D20';
wwv_flow_api.g_varchar2_table(1543) := '73432E696E6E657257696474680D0A09092C096F6C6448093D2073432E696E6E65724865696768740D0A09093B0D0A09092F2F2073746F7050726F7061676174696F6E2069662063616C6C6564206279207472696767657228226C61796F757464657374';
wwv_flow_api.g_varchar2_table(1544) := '726F792229202D207573652065767450616E65207574696C697479200D0A090965767450616E65286576745F6F725F72656672657368293B0D0A0D0A09092F2F2063616E6E6F742073697A65206C61796F7574207768656E2027636F6E7461696E657227';
wwv_flow_api.g_varchar2_table(1545) := '2069732068696464656E206F7220636F6C6C61707365640D0A09096966202821244E2E697328223A76697369626C652229292072657475726E3B0D0A0D0A0909696620282173746174652E696E697469616C697A656429207B0D0A0909095F696E69744C';
wwv_flow_api.g_varchar2_table(1546) := '61796F7574456C656D656E747328293B0D0A09090972657475726E3B202F2F206E6F206E65656420746F20726573697A652073696E6365207765206A75737420696E697469616C697A6564210D0A09097D0D0A0D0A0909696620286576745F6F725F7265';
wwv_flow_api.g_varchar2_table(1547) := '6672657368203D3D3D207472756520262620242E6973506C61696E4F626A656374286F7074696F6E732E6F75747365742929207B0D0A0909092F2F2075706461746520636F6E7461696E65722043535320696E2063617365206F7574736574206F707469';
wwv_flow_api.g_varchar2_table(1548) := '6F6E20686173206368616E6765640D0A090909244E2E63737328206F7074696F6E732E6F757473657420293B0D0A09097D0D0A09092F2F2055504441544520636F6E7461696E65722064696D656E73696F6E730D0A0909242E657874656E642873432C20';
wwv_flow_api.g_varchar2_table(1549) := '656C44696D732820244E2C206F7074696F6E732E696E7365742029293B0D0A0909696620282173432E6F75746572486569676874292072657475726E3B0D0A0D0A09092F2F20696620277472756527207061737365642C20726566726573682070616E65';
wwv_flow_api.g_varchar2_table(1550) := '20262068616E646C6520706F736974696F6E696E6720746F6F0D0A0909696620286576745F6F725F72656672657368203D3D3D207472756529207B0D0A09090973657450616E65506F736974696F6E28293B0D0A09097D0D0A0D0A09092F2F206F6E7265';
wwv_flow_api.g_varchar2_table(1551) := '73697A65616C6C5F73746172742077696C6C2043414E43454C20726573697A696E672069662072657475726E732066616C73650D0A09092F2F2073746174652E636F6E7461696E65722068617320616C7265616479206265656E207365742C20736F2075';
wwv_flow_api.g_varchar2_table(1552) := '7365722063616E20616363657373207468697320696E666F20666F722063616C63756174696F6E730D0A09096966202866616C7365203D3D3D205F72756E43616C6C6261636B7328226F6E726573697A65616C6C5F73746172742229292072657475726E';
wwv_flow_api.g_varchar2_table(1553) := '2066616C73653B0D0A0D0A0909766172092F2F2073656520696620636F6E7461696E6572206973206E6F772027736D616C6C657227207468616E206265666F72650D0A090909736872756E6B48093D202873432E696E6E6572486569676874203C206F6C';
wwv_flow_api.g_varchar2_table(1554) := '6448290D0A09092C09736872756E6B57093D202873432E696E6E65725769647468203C206F6C6457290D0A09092C0924502C206F2C20730D0A09093B0D0A09092F2F204E4F5445207370656369616C206F7264657220666F722073697A696E673A20532D';
wwv_flow_api.g_varchar2_table(1555) := '4E2D452D570D0A0909242E65616368285B22736F757468222C226E6F727468222C2265617374222C2277657374225D2C2066756E6374696F6E2028692C2070616E6529207B0D0A09090969662028212450735B70616E655D292072657475726E3B202F2F';
wwv_flow_api.g_varchar2_table(1556) := '206E6F2070616E65202D20534B49500D0A0909096F203D206F7074696F6E735B70616E655D3B0D0A09090973203D2073746174655B70616E655D3B0D0A09090969662028732E6175746F526573697A6520262620732E73697A6520213D206F2E73697A65';
wwv_flow_api.g_varchar2_table(1557) := '29202F2F20726573697A652070616E6520746F206F726967696E616C2073697A652073657420696E206F7074696F6E730D0A0909090973697A6550616E652870616E652C206F2E73697A652C20747275652C20747275652C2074727565293B202F2F2074';
wwv_flow_api.g_varchar2_table(1558) := '7275653D736B697043616C6C6261636B2F6E6F416E696D6174696F6E2F666F726365526573697A650D0A090909656C7365207B0D0A0909090973657453697A654C696D6974732870616E65293B0D0A090909096D616B6550616E654669742870616E652C';
wwv_flow_api.g_varchar2_table(1559) := '2066616C73652C20747275652C2074727565293B202F2F20747275653D736B697043616C6C6261636B2F666F726365526573697A650D0A0909097D0D0A09097D293B0D0A0D0A090973697A654D696450616E65732822222C20747275652C207472756529';
wwv_flow_api.g_varchar2_table(1560) := '3B202F2F20747275653D736B697043616C6C6261636B2F666F726365526573697A650D0A090973697A6548616E646C657328293B202F2F207265706F736974696F6E2074686520746F67676C657220656C656D656E74730D0A0D0A09092F2F2074726967';
wwv_flow_api.g_varchar2_table(1561) := '67657220616C6C20696E646976696475616C2070616E652063616C6C6261636B73204146544552206C61796F7574206861732066696E697368656420726573697A696E670D0A0909242E65616368285F632E616C6C50616E65732C2066756E6374696F6E';
wwv_flow_api.g_varchar2_table(1562) := '2028692C2070616E6529207B0D0A0909092450203D202450735B70616E655D3B0D0A09090969662028212450292072657475726E3B202F2F20534B49500D0A0909096966202873746174655B70616E655D2E697356697369626C6529202F2F20756E6465';
wwv_flow_api.g_varchar2_table(1563) := '66696E656420666F72206E6F6E2D6578697374656E742070616E65730D0A090909095F72756E43616C6C6261636B7328226F6E726573697A655F656E64222C2070616E65293B202F2F2063616C6C6261636B202D206966206578697374730D0A09097D29';
wwv_flow_api.g_varchar2_table(1564) := '3B0D0A0D0A09095F72756E43616C6C6261636B7328226F6E726573697A65616C6C5F656E6422293B0D0A09092F2F5F747269676765724C61796F75744576656E742870616E652C2027726573697A65616C6C27293B0D0A097D0D0A0D0A092F2A2A0D0A09';
wwv_flow_api.g_varchar2_table(1565) := '202A205768656E6576657220612070616E6520726573697A6573206F72206F70656E732074686174206861732061206E6573746564206C61796F75742C207472696767657220726573697A65416C6C0D0A09202A0D0A09202A2040706172616D207B2873';
wwv_flow_api.g_varchar2_table(1566) := '7472696E677C4F626A656374297D096576745F6F725F70616E6509095468652070616E65206A75737420726573697A6564206F72206F70656E65640D0A09202A2F0D0A2C09726573697A654368696C6472656E203D2066756E6374696F6E20286576745F';
wwv_flow_api.g_varchar2_table(1567) := '6F725F70616E652C20736B69705265667265736829207B0D0A09097661720970616E65203D2065767450616E652E63616C6C28746869732C206576745F6F725F70616E65293B0D0A0D0A090969662028216F7074696F6E735B70616E655D2E726573697A';
wwv_flow_api.g_varchar2_table(1568) := '654368696C6472656E292072657475726E3B0D0A0D0A09092F2F20656E73757265207468652070616E652D6368696C6472656E206172652075702D746F2D646174650D0A09096966202821736B6970526566726573682920726566726573684368696C64';
wwv_flow_api.g_varchar2_table(1569) := '72656E282070616E6520293B0D0A0909766172207043203D206368696C6472656E5B70616E655D3B0D0A090969662028242E6973506C61696E4F626A65637428207043202929207B0D0A0909092F2F20726573697A65206F6E65206F72206D6F72652063';
wwv_flow_api.g_varchar2_table(1570) := '68696C6472656E0D0A090909242E65616368282070432C2066756E6374696F6E20286B65792C206368696C6429207B0D0A0909090969662028216368696C642E64657374726F79656429206368696C642E726573697A65416C6C28293B0D0A0909097D29';
wwv_flow_api.g_varchar2_table(1571) := '3B0D0A09097D0D0A097D0D0A0D0A092F2A2A0D0A09202A2049462070616E6520686173206120636F6E74656E742D6469762C207468656E20726573697A6520616C6C20656C656D656E747320696E736964652070616E6520746F206669742070616E652D';
wwv_flow_api.g_varchar2_table(1572) := '6865696768740D0A09202A0D0A09202A2040706172616D207B28737472696E677C4F626A656374297D096576745F6F725F70616E657309095468652070616E65287329206265696E6720726573697A65640D0A09202A2040706172616D207B626F6F6C65';
wwv_flow_api.g_varchar2_table(1573) := '616E3D7D0909095B72656D6561737572653D66616C73655D0953686F756C642074686520636F6E74656E7420286865616465722F666F6F746572292062652072656D656173757265643F0D0A09202A2F0D0A2C0973697A65436F6E74656E74203D206675';
wwv_flow_api.g_varchar2_table(1574) := '6E6374696F6E20286576745F6F725F70616E65732C2072656D65617375726529207B0D0A090969662028216973496E697469616C697A65642829292072657475726E3B0D0A0D0A09097661722070616E6573203D2065767450616E652E63616C6C287468';
wwv_flow_api.g_varchar2_table(1575) := '69732C206576745F6F725F70616E6573293B0D0A090970616E6573203D2070616E6573203F2070616E65732E73706C697428222C2229203A205F632E616C6C50616E65733B0D0A0D0A0909242E656163682870616E65732C2066756E6374696F6E202869';
wwv_flow_api.g_varchar2_table(1576) := '64782C2070616E6529207B0D0A0909097661720D0A090909092450093D202450735B70616E655D0D0A0909092C092443093D202443735B70616E655D0D0A0909092C096F093D206F7074696F6E735B70616E655D0D0A0909092C0973093D207374617465';
wwv_flow_api.g_varchar2_table(1577) := '5B70616E655D0D0A0909092C096D093D20732E636F6E74656E74202F2F206D203D206D6561737572656D656E74730D0A0909093B0D0A09090969662028212450207C7C20212443207C7C202124502E697328223A76697369626C65222929207265747572';
wwv_flow_api.g_varchar2_table(1578) := '6E20747275653B202F2F204E4F542056495349424C45202D20736B69700D0A0D0A0909092F2F20696620636F6E74656E742D656C656D656E74207761732052454D4F5645442C20757064617465204F522072656D6F76652074686520706F696E7465720D';
wwv_flow_api.g_varchar2_table(1579) := '0A090909696620282124432E6C656E67746829207B0D0A09090909696E6974436F6E74656E742870616E652C2066616C7365293B092F2F2066616C7365203D20646F204E4F542073697A65436F6E74656E742829202D20616C7265616479207468657265';
wwv_flow_api.g_varchar2_table(1580) := '210D0A0909090969662028212443292072657475726E3B0909092F2F206E6F207265706C6163656D656E7420656C656D656E7420666F756E64202D20706F696E7465722068617665206265656E2072656D6F7665640D0A0909097D0D0A0D0A0909092F2F';
wwv_flow_api.g_varchar2_table(1581) := '206F6E73697A65636F6E74656E745F73746172742077696C6C2043414E43454C20726573697A696E672069662072657475726E732066616C73650D0A0909096966202866616C7365203D3D3D205F72756E43616C6C6261636B7328226F6E73697A65636F';
wwv_flow_api.g_varchar2_table(1582) := '6E74656E745F7374617274222C2070616E6529292072657475726E3B0D0A0D0A0909092F2F20736B69702072652D6D6561737572696E67206F666673657473206966206C6976652D726573697A696E670D0A090909696620282821732E69734D6F76696E';
wwv_flow_api.g_varchar2_table(1583) := '672026262021732E6973526573697A696E6729207C7C206F2E6C697665436F6E74656E74526573697A696E67207C7C2072656D656173757265207C7C206D2E746F70203D3D20756E646566696E656429207B0D0A090909095F6D65617375726528293B0D';
wwv_flow_api.g_varchar2_table(1584) := '0A090909092F2F20696620616E7920666F6F74657273206172652062656C6F772070616E652D626F74746F6D2C2074686579206D6179206E6F74206D65617375726520636F72726563746C792C0D0A090909092F2F20736F20616C6C6F772070616E6520';
wwv_flow_api.g_varchar2_table(1585) := '6F766572666C6F7720616E642072652D6D6561737572650D0A09090909696620286D2E68696464656E466F6F74657273203E20302026262024502E63737328226F766572666C6F772229203D3D3D202268696464656E2229207B0D0A090909090924502E';
wwv_flow_api.g_varchar2_table(1586) := '63737328226F766572666C6F77222C202276697369626C6522293B0D0A09090909095F6D65617375726528293B202F2F2072656D656173757265207768696C65206F766572666C6F77696E670D0A090909090924502E63737328226F766572666C6F7722';
wwv_flow_api.g_varchar2_table(1587) := '2C202268696464656E22293B0D0A090909097D0D0A0909097D0D0A0909092F2F204E4F54453A20737061636541626F76652F42656C6F77202A696E636C756465732A207468652070616E652070616464696E67546F702F426F74746F6D2C20627574206E';
wwv_flow_api.g_varchar2_table(1588) := '6F742070616E652E626F72646572730D0A090909766172206E657748203D20732E696E6E6572486569676874202D20286D2E737061636541626F7665202D20732E6373732E70616464696E67546F7029202D20286D2E737061636542656C6F77202D2073';
wwv_flow_api.g_varchar2_table(1589) := '2E6373732E70616464696E67426F74746F6D293B0D0A0D0A090909696620282124432E697328223A76697369626C652229207C7C206D2E68656967687420213D206E65774829207B0D0A090909092F2F2073697A652074686520436F6E74656E7420656C';
wwv_flow_api.g_varchar2_table(1590) := '656D656E7420746F20666974206E65772070616E652D73697A65202D2077696C6C206175746F48696465206966206E6F7420656E6F75676820726F6F6D0D0A090909097365744F757465724865696768742824432C206E6577482C2074727565293B202F';
wwv_flow_api.g_varchar2_table(1591) := '2F20747275653D6175746F486964650D0A090909096D2E686569676874203D206E6577483B202F2F2073617665206E6577206865696768740D0A0909097D3B0D0A0D0A0909096966202873746174652E696E697469616C697A6564290D0A090909095F72';
wwv_flow_api.g_varchar2_table(1592) := '756E43616C6C6261636B7328226F6E73697A65636F6E74656E745F656E64222C2070616E65293B0D0A0D0A09090966756E6374696F6E205F62656C6F772028244529207B0D0A0909090972657475726E206D617828732E6373732E70616464696E67426F';
wwv_flow_api.g_varchar2_table(1593) := '74746F6D2C20287061727365496E742824452E63737328226D617267696E426F74746F6D22292C20313029207C7C203029293B0D0A0909097D3B0D0A0D0A09090966756E6374696F6E205F6D656173757265202829207B0D0A090909097661720D0A0909';
wwv_flow_api.g_varchar2_table(1594) := '09090969676E6F7265093D206F7074696F6E735B70616E655D2E636F6E74656E7449676E6F726553656C6563746F720D0A090909092C0924467309093D2024432E6E657874416C6C28292E6E6F7428222E75692D6C61796F75742D6D61736B22292E6E6F';
wwv_flow_api.g_varchar2_table(1595) := '742869676E6F7265207C7C20223A6C742830292229202F2F206E6F74203A6C74283029203D20414C4C0D0A090909092C092446735F766973093D202446732E66696C74657228273A76697369626C6527290D0A090909092C09244609093D202446735F76';
wwv_flow_api.g_varchar2_table(1596) := '69732E66696C74657228273A6C61737427290D0A090909093B0D0A090909096D203D207B0D0A0909090909746F703A09090924435B305D2E6F6666736574546F700D0A090909092C096865696768743A09090924432E6F7574657248656967687428290D';
wwv_flow_api.g_varchar2_table(1597) := '0A090909092C096E756D466F6F746572733A09092446732E6C656E6774680D0A090909092C0968696464656E466F6F746572733A092446732E6C656E677468202D202446735F7669732E6C656E6774680D0A090909092C09737061636542656C6F773A09';
wwv_flow_api.g_varchar2_table(1598) := '0930202F2F20636F7272656374206966206E6F20636F6E74656E7420666F6F74657220282445290D0A090909097D0D0A09090909096D2E737061636541626F7665093D206D2E746F703B202F2F206A75737420666F72207374617465202D206E6F742075';
wwv_flow_api.g_varchar2_table(1599) := '73656420696E2063616C630D0A09090909096D2E626F74746F6D09093D206D2E746F70202B206D2E6865696768743B0D0A090909096966202824462E6C656E677468290D0A09090909092F2F737061636542656C6F77203D20284C617374466F6F746572';
wwv_flow_api.g_varchar2_table(1600) := '2E746F70202B204C617374466F6F7465722E68656967687429205B666F6F746572426F74746F6D5D202D20436F6E74656E742E626F74746F6D202B206D6178284C617374466F6F7465722E6D617267696E426F74746F6D2C2070616E652E70616464696E';
wwv_flow_api.g_varchar2_table(1601) := '67426F746F6D290D0A09090909096D2E737061636542656C6F77203D202824465B305D2E6F6666736574546F70202B2024462E6F75746572486569676874282929202D206D2E626F74746F6D202B205F62656C6F77282446293B0D0A09090909656C7365';
wwv_flow_api.g_varchar2_table(1602) := '202F2F206E6F20666F6F746572202D20636865636B206D617267696E426F74746F6D206F6E20436F6E74656E7420656C656D656E7420697473656C660D0A09090909096D2E737061636542656C6F77203D205F62656C6F77282443293B0D0A0909097D3B';
wwv_flow_api.g_varchar2_table(1603) := '0D0A09097D293B0D0A097D0D0A0D0A0D0A092F2A2A0D0A09202A2043616C6C65642065766572792074696D6520612070616E65206973206F70656E65642C20636C6F7365642C206F7220726573697A656420746F20736C6964652074686520746F67676C';
wwv_flow_api.g_varchar2_table(1604) := '65727320746F202763656E7465722720616E642061646A757374207468656972206C656E677468206966206E65636573736172790D0A09202A0D0A09202A20407365652020696E697448616E646C657328292C206F70656E28292C20636C6F736528292C';
wwv_flow_api.g_varchar2_table(1605) := '20726573697A65416C6C28290D0A09202A2040706172616D207B28737472696E677C4F626A656374293D7D09096576745F6F725F70616E6573095468652070616E65287329206265696E6720726573697A65640D0A09202A2F0D0A2C0973697A6548616E';
wwv_flow_api.g_varchar2_table(1606) := '646C6573203D2066756E6374696F6E20286576745F6F725F70616E657329207B0D0A09097661722070616E6573203D2065767450616E652E63616C6C28746869732C206576745F6F725F70616E6573290D0A090970616E6573203D2070616E6573203F20';
wwv_flow_api.g_varchar2_table(1607) := '70616E65732E73706C697428222C2229203A205F632E626F7264657250616E65733B0D0A0D0A0909242E656163682870616E65732C2066756E6374696F6E2028692C2070616E6529207B0D0A090909766172200D0A090909096F093D206F7074696F6E73';
wwv_flow_api.g_varchar2_table(1608) := '5B70616E655D0D0A0909092C0973093D2073746174655B70616E655D0D0A0909092C092450093D202450735B70616E655D0D0A0909092C092452093D202452735B70616E655D0D0A0909092C092454093D202454735B70616E655D0D0A0909092C092454';
wwv_flow_api.g_varchar2_table(1609) := '430D0A0909093B0D0A09090969662028212450207C7C20212452292072657475726E3B0D0A0D0A0909097661720D0A090909096469720909093D205F635B70616E655D2E6469720D0A0909092C095F737461746509093D2028732E6973436C6F73656420';
wwv_flow_api.g_varchar2_table(1610) := '3F20225F636C6F73656422203A20225F6F70656E22290D0A0909092C0973706163696E6709093D206F5B2273706163696E67222B205F73746174655D0D0A0909092C09746F67416C69676E093D206F5B22746F67676C6572416C69676E222B205F737461';
wwv_flow_api.g_varchar2_table(1611) := '74655D0D0A0909092C09746F674C656E09093D206F5B22746F67676C65724C656E677468222B205F73746174655D0D0A0909092C0970616E654C656E0D0A0909092C096C6566740D0A0909092C096F66667365740D0A0909092C09435353203D207B7D0D';
wwv_flow_api.g_varchar2_table(1612) := '0A0909093B0D0A0D0A0909096966202873706163696E67203D3D3D203029207B0D0A0909090924522E6869646528293B0D0A0909090972657475726E3B0D0A0909097D0D0A090909656C7365206966202821732E6E6F526F6F6D2026262021732E697348';
wwv_flow_api.g_varchar2_table(1613) := '696464656E29202F2F20736B697020696620726573697A6572207761732068696464656E20666F7220616E7920726561736F6E0D0A0909090924522E73686F7728293B202F2F20696E2063617365207761732070726576696F75736C792068696464656E';
wwv_flow_api.g_varchar2_table(1614) := '0D0A0D0A0909092F2F20526573697A65722042617220697320414C574159532073616D652077696474682F686569676874206F662070616E6520697420697320617474616368656420746F0D0A09090969662028646972203D3D3D2022686F727A222920';
wwv_flow_api.g_varchar2_table(1615) := '7B202F2F206E6F7274682F736F7574680D0A090909092F2F70616E654C656E203D2024502E6F75746572576964746828293B202F2F20732E6F757465725769647468207C7C200D0A0909090970616E654C656E203D2073432E696E6E657257696474683B';
wwv_flow_api.g_varchar2_table(1616) := '202F2F2068616E646C65206F666673637265656E2D70616E65730D0A09090909732E726573697A65724C656E677468203D2070616E654C656E3B0D0A090909096C656674203D20242E6C61796F75742E6373734E756D2824502C20226C65667422290D0A';
wwv_flow_api.g_varchar2_table(1617) := '0909090924522E637373287B0D0A090909090977696474683A09637373572824522C2070616E654C656E29202F2F206163636F756E7420666F7220626F726465727320262070616464696E670D0A090909092C096865696768743A09637373482824522C';
wwv_flow_api.g_varchar2_table(1618) := '2073706163696E6729202F2F20646974746F0D0A090909092C096C6566743A096C656674203E202D39393939203F206C656674203A2073432E696E7365742E6C656674202F2F2068616E646C65206F666673637265656E2D70616E65730D0A090909097D';
wwv_flow_api.g_varchar2_table(1619) := '293B0D0A0909097D0D0A090909656C7365207B202F2F20656173742F776573740D0A0909090970616E654C656E203D2024502E6F7574657248656967687428293B202F2F20732E6F75746572486569676874207C7C200D0A09090909732E726573697A65';
wwv_flow_api.g_varchar2_table(1620) := '724C656E677468203D2070616E654C656E3B0D0A0909090924522E637373287B0D0A09090909096865696768743A09637373482824522C2070616E654C656E29202F2F206163636F756E7420666F7220626F726465727320262070616464696E670D0A09';
wwv_flow_api.g_varchar2_table(1621) := '0909092C0977696474683A09637373572824522C2073706163696E6729202F2F20646974746F0D0A090909092C09746F703A0973432E696E7365742E746F70202B2067657450616E6553697A6528226E6F727468222C207472756529202F2F20544F444F';
wwv_flow_api.g_varchar2_table(1622) := '3A2077686174206966206E6F204E6F7274682070616E653F0D0A090909092F2F2C09746F703A09242E6C61796F75742E6373734E756D282450735B2263656E746572225D2C2022746F7022290D0A090909097D293B0D0A0909097D0D0A0D0A0909092F2F';
wwv_flow_api.g_varchar2_table(1623) := '2072656D6F766520686F76657220636C61737365730D0A09090972656D6F7665486F76657228206F2C20245220293B0D0A0D0A09090969662028245429207B0D0A0909090969662028746F674C656E203D3D3D2030207C7C2028732E6973536C6964696E';
wwv_flow_api.g_varchar2_table(1624) := '67202626206F2E68696465546F67676C65724F6E536C6964652929207B0D0A090909090924542E6869646528293B202F2F20616C7761797320484944452074686520746F67676C6572207768656E2027736C6964696E67270D0A09090909097265747572';
wwv_flow_api.g_varchar2_table(1625) := '6E3B0D0A090909097D0D0A09090909656C73650D0A090909090924542E73686F7728293B202F2F20696E2063617365207761732070726576696F75736C792068696464656E0D0A0D0A09090909696620282128746F674C656E203E203029207C7C20746F';
wwv_flow_api.g_varchar2_table(1626) := '674C656E203D3D3D20223130302522207C7C20746F674C656E203E2070616E654C656E29207B0D0A0909090909746F674C656E203D2070616E654C656E3B0D0A09090909096F6666736574203D20303B0D0A090909097D0D0A09090909656C7365207B20';
wwv_flow_api.g_varchar2_table(1627) := '2F2F2063616C63756C61746520276F666673657427206261736564206F6E206F7074696F6E732E50414E452E746F67676C6572416C69676E5F6F70656E2F636C6F7365640D0A090909090969662028697353747228746F67416C69676E2929207B0D0A09';
wwv_flow_api.g_varchar2_table(1628) := '09090909097377697463682028746F67416C69676E29207B0D0A09090909090909636173652022746F70223A0D0A090909090909096361736520226C656674223A096F6666736574203D20303B0D0A0909090909090909090909627265616B3B0D0A0909';
wwv_flow_api.g_varchar2_table(1629) := '0909090909636173652022626F74746F6D223A0D0A090909090909096361736520227269676874223A096F6666736574203D2070616E654C656E202D20746F674C656E3B0D0A0909090909090909090909627265616B3B0D0A0909090909090963617365';
wwv_flow_api.g_varchar2_table(1630) := '20226D6964646C65223A0D0A0909090909090963617365202263656E746572223A0D0A0909090909090964656661756C743A09096F6666736574203D20726F756E64282870616E654C656E202D20746F674C656E29202F2032293B202F2F202764656661';
wwv_flow_api.g_varchar2_table(1631) := '756C74272063617463686573207479706F730D0A0909090909097D0D0A09090909097D0D0A0909090909656C7365207B202F2F20746F67416C69676E203D206E756D6265720D0A0909090909097661722078203D207061727365496E7428746F67416C69';
wwv_flow_api.g_varchar2_table(1632) := '676E2C203130293B202F2F0D0A09090909090969662028746F67416C69676E203E3D203029206F6666736574203D20783B0D0A090909090909656C7365206F6666736574203D2070616E654C656E202D20746F674C656E202B20783B202F2F204E4F5445';
wwv_flow_api.g_varchar2_table(1633) := '3A2078206973206E65676174697665210D0A09090909097D0D0A090909097D0D0A0D0A0909090969662028646972203D3D3D2022686F727A2229207B202F2F206E6F7274682F736F7574680D0A0909090909766172207769647468203D20637373572824';
wwv_flow_api.g_varchar2_table(1634) := '542C20746F674C656E293B0D0A090909090924542E637373287B0D0A09090909090977696474683A09776964746820202F2F206163636F756E7420666F7220626F726465727320262070616464696E670D0A09090909092C096865696768743A09637373';
wwv_flow_api.g_varchar2_table(1635) := '482824542C2073706163696E6729202F2F20646974746F0D0A09090909092C096C6566743A096F6666736574202F2F20544F444F3A20564552494659207468617420746F67676C65722020706F736974696F6E7320636F72726563746C7920666F722041';
wwv_flow_api.g_varchar2_table(1636) := '4C4C2076616C7565730D0A09090909092C09746F703A09300D0A09090909097D293B0D0A09090909092F2F2043454E5445522074686520746F67676C657220636F6E74656E74205350414E0D0A090909090924542E6368696C6472656E28222E636F6E74';
wwv_flow_api.g_varchar2_table(1637) := '656E7422292E656163682866756E6374696F6E28297B0D0A090909090909245443203D20242874686973293B0D0A0909090909092454432E63737328226D617267696E4C656674222C20726F756E64282877696474682D2454432E6F7574657257696474';
wwv_flow_api.g_varchar2_table(1638) := '682829292F3229293B202F2F20636F756C64206265206E656761746976650D0A09090909097D293B0D0A090909097D0D0A09090909656C7365207B202F2F20656173742F776573740D0A090909090976617220686569676874203D20637373482824542C';
wwv_flow_api.g_varchar2_table(1639) := '20746F674C656E293B0D0A090909090924542E637373287B0D0A0909090909096865696768743A09686569676874202F2F206163636F756E7420666F7220626F726465727320262070616464696E670D0A09090909092C0977696474683A096373735728';
wwv_flow_api.g_varchar2_table(1640) := '24542C2073706163696E6729202F2F20646974746F0D0A09090909092C09746F703A096F6666736574202F2F20504F534954494F4E2074686520746F67676C65720D0A09090909092C096C6566743A09300D0A09090909097D293B0D0A09090909092F2F';
wwv_flow_api.g_varchar2_table(1641) := '2043454E5445522074686520746F67676C657220636F6E74656E74205350414E0D0A090909090924542E6368696C6472656E28222E636F6E74656E7422292E656163682866756E6374696F6E28297B0D0A090909090909245443203D2024287468697329';
wwv_flow_api.g_varchar2_table(1642) := '3B0D0A0909090909092454432E63737328226D617267696E546F70222C20726F756E6428286865696768742D2454432E6F757465724865696768742829292F3229293B202F2F20636F756C64206265206E656761746976650D0A09090909097D293B0D0A';
wwv_flow_api.g_varchar2_table(1643) := '090909097D0D0A0D0A090909092F2F2072656D6F766520414C4C20686F76657220636C61737365730D0A0909090972656D6F7665486F7665722820302C20245420293B0D0A0909097D0D0A0D0A0909092F2F20444F4E45206D6561737572696E6720616E';
wwv_flow_api.g_varchar2_table(1644) := '642073697A696E67207468697320726573697A65722F746F67676C65722C20736F2063616E206265202768696464656E27206E6F770D0A090909696620282173746174652E696E697469616C697A656420262620286F2E696E697448696464656E207C7C';
wwv_flow_api.g_varchar2_table(1645) := '20732E697348696464656E2929207B0D0A0909090924522E6869646528293B0D0A09090909696620282454292024542E6869646528293B0D0A0909097D0D0A09097D293B0D0A097D0D0A0D0A0D0A092F2A2A0D0A09202A2040706172616D207B28737472';
wwv_flow_api.g_varchar2_table(1646) := '696E677C4F626A656374297D096576745F6F725F70616E650D0A09202A2F0D0A2C09656E61626C65436C6F7361626C65203D2066756E6374696F6E20286576745F6F725F70616E6529207B0D0A090969662028216973496E697469616C697A6564282929';
wwv_flow_api.g_varchar2_table(1647) := '2072657475726E3B0D0A09097661720970616E65203D2065767450616E652E63616C6C28746869732C206576745F6F725F70616E65290D0A09092C092454093D202454735B70616E655D0D0A09092C096F093D206F7074696F6E735B70616E655D0D0A09';
wwv_flow_api.g_varchar2_table(1648) := '093B0D0A090969662028212454292072657475726E3B0D0A09096F2E636C6F7361626C65203D20747275653B0D0A09092454092E62696E642822636C69636B2E222B207349442C2066756E6374696F6E28657674297B206576742E73746F7050726F7061';
wwv_flow_api.g_varchar2_table(1649) := '676174696F6E28293B20746F67676C652870616E65293B207D290D0A0909092E63737328227669736962696C697479222C202276697369626C6522290D0A0909092E6373732822637572736F72222C2022706F696E74657222290D0A0909092E61747472';
wwv_flow_api.g_varchar2_table(1650) := '28227469746C65222C2073746174655B70616E655D2E6973436C6F736564203F206F2E746970732E4F70656E203A206F2E746970732E436C6F736529202F2F206D617920626520626C616E6B0D0A0909092E73686F7728293B0D0A097D0D0A092F2A2A0D';
wwv_flow_api.g_varchar2_table(1651) := '0A09202A2040706172616D207B28737472696E677C4F626A656374297D096576745F6F725F70616E650D0A09202A2040706172616D207B626F6F6C65616E3D7D0909095B686964653D66616C73655D0D0A09202A2F0D0A2C0964697361626C65436C6F73';
wwv_flow_api.g_varchar2_table(1652) := '61626C65203D2066756E6374696F6E20286576745F6F725F70616E652C206869646529207B0D0A090969662028216973496E697469616C697A65642829292072657475726E3B0D0A09097661720970616E65203D2065767450616E652E63616C6C287468';
wwv_flow_api.g_varchar2_table(1653) := '69732C206576745F6F725F70616E65290D0A09092C092454093D202454735B70616E655D0D0A09093B0D0A090969662028212454292072657475726E3B0D0A09096F7074696F6E735B70616E655D2E636C6F7361626C65203D2066616C73653B0D0A0909';
wwv_flow_api.g_varchar2_table(1654) := '2F2F20697320636C6F7361626C652069732064697361626C652C207468656E2070616E65204D555354206265206F70656E210D0A09096966202873746174655B70616E655D2E6973436C6F73656429206F70656E2870616E652C2066616C73652C207472';
wwv_flow_api.g_varchar2_table(1655) := '7565293B0D0A09092454092E756E62696E6428222E222B20734944290D0A0909092E63737328227669736962696C697479222C2068696465203F202268696464656E22203A202276697369626C652229202F2F20696E7374656164206F66206869646528';
wwv_flow_api.g_varchar2_table(1656) := '292C2077686963682063726561746573206C6F676963206973737565730D0A0909092E6373732822637572736F72222C202264656661756C7422290D0A0909092E6174747228227469746C65222C202222293B0D0A097D0D0A0D0A0D0A092F2A2A0D0A09';
wwv_flow_api.g_varchar2_table(1657) := '202A2040706172616D207B28737472696E677C4F626A656374297D096576745F6F725F70616E650D0A09202A2F0D0A2C09656E61626C65536C696461626C65203D2066756E6374696F6E20286576745F6F725F70616E6529207B0D0A0909696620282169';
wwv_flow_api.g_varchar2_table(1658) := '73496E697469616C697A65642829292072657475726E3B0D0A09097661720970616E65203D2065767450616E652E63616C6C28746869732C206576745F6F725F70616E65290D0A09092C092452093D202452735B70616E655D0D0A09093B0D0A09096966';
wwv_flow_api.g_varchar2_table(1659) := '2028212452207C7C202124522E646174612827647261676761626C652729292072657475726E3B0D0A09096F7074696F6E735B70616E655D2E736C696461626C65203D20747275653B200D0A09096966202873746174655B70616E655D2E6973436C6F73';
wwv_flow_api.g_varchar2_table(1660) := '6564290D0A09090962696E645374617274536C6964696E674576656E74732870616E652C2074727565293B0D0A097D0D0A092F2A2A0D0A09202A2040706172616D207B28737472696E677C4F626A656374297D096576745F6F725F70616E650D0A09202A';
wwv_flow_api.g_varchar2_table(1661) := '2F0D0A2C0964697361626C65536C696461626C65203D2066756E6374696F6E20286576745F6F725F70616E6529207B0D0A090969662028216973496E697469616C697A65642829292072657475726E3B0D0A09097661720970616E65203D206576745061';
wwv_flow_api.g_varchar2_table(1662) := '6E652E63616C6C28746869732C206576745F6F725F70616E65290D0A09092C092452093D202452735B70616E655D0D0A09093B0D0A090969662028212452292072657475726E3B0D0A09096F7074696F6E735B70616E655D2E736C696461626C65203D20';
wwv_flow_api.g_varchar2_table(1663) := '66616C73653B200D0A09096966202873746174655B70616E655D2E6973536C6964696E67290D0A090909636C6F73652870616E652C2066616C73652C2074727565293B0D0A0909656C7365207B0D0A09090962696E645374617274536C6964696E674576';
wwv_flow_api.g_varchar2_table(1664) := '656E74732870616E652C2066616C7365293B0D0A0909092452092E6373732822637572736F72222C202264656661756C7422290D0A090909092E6174747228227469746C65222C202222293B0D0A09090972656D6F7665486F766572286E756C6C2C2024';
wwv_flow_api.g_varchar2_table(1665) := '525B305D293B202F2F20696E20636173652063757272656E746C7920686F76657265640D0A09097D0D0A097D0D0A0D0A0D0A092F2A2A0D0A09202A2040706172616D207B28737472696E677C4F626A656374297D096576745F6F725F70616E650D0A0920';
wwv_flow_api.g_varchar2_table(1666) := '2A2F0D0A2C09656E61626C65526573697A61626C65203D2066756E6374696F6E20286576745F6F725F70616E6529207B0D0A090969662028216973496E697469616C697A65642829292072657475726E3B0D0A09097661720970616E65203D2065767450';
wwv_flow_api.g_varchar2_table(1667) := '616E652E63616C6C28746869732C206576745F6F725F70616E65290D0A09092C092452093D202452735B70616E655D0D0A09092C096F093D206F7074696F6E735B70616E655D0D0A09093B0D0A090969662028212452207C7C202124522E646174612827';
wwv_flow_api.g_varchar2_table(1668) := '647261676761626C652729292072657475726E3B0D0A09096F2E726573697A61626C65203D20747275653B200D0A090924522E647261676761626C652822656E61626C6522293B0D0A0909696620282173746174655B70616E655D2E6973436C6F736564';
wwv_flow_api.g_varchar2_table(1669) := '290D0A0909092452092E6373732822637572736F72222C206F2E726573697A6572437572736F72290D0A09090920092E6174747228227469746C65222C206F2E746970732E526573697A65293B0D0A097D0D0A092F2A2A0D0A09202A2040706172616D20';
wwv_flow_api.g_varchar2_table(1670) := '7B28737472696E677C4F626A656374297D096576745F6F725F70616E650D0A09202A2F0D0A2C0964697361626C65526573697A61626C65203D2066756E6374696F6E20286576745F6F725F70616E6529207B0D0A090969662028216973496E697469616C';
wwv_flow_api.g_varchar2_table(1671) := '697A65642829292072657475726E3B0D0A09097661720970616E65203D2065767450616E652E63616C6C28746869732C206576745F6F725F70616E65290D0A09092C092452093D202452735B70616E655D0D0A09093B0D0A090969662028212452207C7C';
wwv_flow_api.g_varchar2_table(1672) := '202124522E646174612827647261676761626C652729292072657475726E3B0D0A09096F7074696F6E735B70616E655D2E726573697A61626C65203D2066616C73653B200D0A09092452092E647261676761626C65282264697361626C6522290D0A0909';
wwv_flow_api.g_varchar2_table(1673) := '092E6373732822637572736F72222C202264656661756C7422290D0A0909092E6174747228227469746C65222C202222293B0D0A090972656D6F7665486F766572286E756C6C2C2024525B305D293B202F2F20696E20636173652063757272656E746C79';
wwv_flow_api.g_varchar2_table(1674) := '20686F76657265640D0A097D0D0A0D0A0D0A092F2A2A0D0A09202A204D6F766520612070616E652066726F6D20736F757263652D73696465202865672C20776573742920746F207461726765742D73696465202865672C2065617374290D0A09202A2049';
wwv_flow_api.g_varchar2_table(1675) := '662070616E6520657869737473206F6E207461726765742D736964652C206D6F7665207468617420746F20736F757263652D736964652C2069652C20277377617027207468652070616E65730D0A09202A0D0A09202A2040706172616D207B2873747269';
wwv_flow_api.g_varchar2_table(1676) := '6E677C4F626A656374297D096576745F6F725F70616E6531095468652070616E652F65646765206265696E6720737761707065640D0A09202A2040706172616D207B737472696E677D09090970616E6532090909646974746F0D0A09202A2F0D0A2C0973';
wwv_flow_api.g_varchar2_table(1677) := '77617050616E6573203D2066756E6374696F6E20286576745F6F725F70616E65312C2070616E653229207B0D0A090969662028216973496E697469616C697A65642829292072657475726E3B0D0A09097661722070616E6531203D2065767450616E652E';
wwv_flow_api.g_varchar2_table(1678) := '63616C6C28746869732C206576745F6F725F70616E6531293B0D0A09092F2F206368616E67652073746174652E65646765204E4F5720736F2063616C6C6261636B732063616E206B6E6F772077686572652070616E65206973206865616465642E2E2E0D';
wwv_flow_api.g_varchar2_table(1679) := '0A090973746174655B70616E65315D2E65646765203D2070616E65323B0D0A090973746174655B70616E65325D2E65646765203D2070616E65313B0D0A09092F2F2072756E207468657365206576656E206966204E4F542073746174652E696E69746961';
wwv_flow_api.g_varchar2_table(1680) := '6C697A65640D0A09096966202866616C7365203D3D3D205F72756E43616C6C6261636B7328226F6E737761705F7374617274222C2070616E6531290D0A0909207C7C0966616C7365203D3D3D205F72756E43616C6C6261636B7328226F6E737761705F73';
wwv_flow_api.g_varchar2_table(1681) := '74617274222C2070616E6532290D0A090929207B0D0A09090973746174655B70616E65315D2E65646765203D2070616E65313B202F2F2072657365740D0A09090973746174655B70616E65325D2E65646765203D2070616E65323B0D0A09090972657475';
wwv_flow_api.g_varchar2_table(1682) := '726E3B0D0A09097D0D0A0D0A09097661720D0A0909096F50616E6531093D20636F7079282070616E653120290D0A09092C096F50616E6532093D20636F7079282070616E653220290D0A09092C0973697A6573093D207B7D0D0A09093B0D0A090973697A';
wwv_flow_api.g_varchar2_table(1683) := '65735B70616E65315D203D206F50616E6531203F206F50616E65312E73746174652E73697A65203A20303B0D0A090973697A65735B70616E65325D203D206F50616E6532203F206F50616E65322E73746174652E73697A65203A20303B0D0A0D0A09092F';
wwv_flow_api.g_varchar2_table(1684) := '2F20636C65617220706F696E7465727320262073746174650D0A09092450735B70616E65315D203D2066616C73653B200D0A09092450735B70616E65325D203D2066616C73653B0D0A090973746174655B70616E65315D203D207B7D3B0D0A0909737461';
wwv_flow_api.g_varchar2_table(1685) := '74655B70616E65325D203D207B7D3B0D0A09090D0A09092F2F20414C574159532072656D6F76652074686520726573697A6572202620746F67676C657220656C656D656E74730D0A0909696620282454735B70616E65315D29202454735B70616E65315D';
wwv_flow_api.g_varchar2_table(1686) := '2E72656D6F766528293B0D0A0909696620282454735B70616E65325D29202454735B70616E65325D2E72656D6F766528293B0D0A0909696620282452735B70616E65315D29202452735B70616E65315D2E72656D6F766528293B0D0A0909696620282452';
wwv_flow_api.g_varchar2_table(1687) := '735B70616E65325D29202452735B70616E65325D2E72656D6F766528293B0D0A09092452735B70616E65315D203D202452735B70616E65325D203D202454735B70616E65315D203D202454735B70616E65325D203D2066616C73653B0D0A0D0A09092F2F';
wwv_flow_api.g_varchar2_table(1688) := '207472616E7366657220656C656D656E7420706F696E7465727320616E64206461746120746F204E4557204C61796F7574206B6579730D0A09096D6F766528206F50616E65312C2070616E653220293B0D0A09096D6F766528206F50616E65322C207061';
wwv_flow_api.g_varchar2_table(1689) := '6E653120293B0D0A0D0A09092F2F20636C65616E7570206F626A656374730D0A09096F50616E6531203D206F50616E6532203D2073697A6573203D206E756C6C3B0D0A0D0A09092F2F206D616B652070616E6573202776697369626C652720616761696E';
wwv_flow_api.g_varchar2_table(1690) := '0D0A0909696620282450735B70616E65315D29202450735B70616E65315D2E637373285F632E76697369626C65293B0D0A0909696620282450735B70616E65325D29202450735B70616E65325D2E637373285F632E76697369626C65293B0D0A0D0A0909';
wwv_flow_api.g_varchar2_table(1691) := '2F2F2066697820616E792073697A652064697363726570616E636965732063617573656420627920737761700D0A0909726573697A65416C6C28293B0D0A0D0A09092F2F2072756E207468657365206576656E206966204E4F542073746174652E696E69';
wwv_flow_api.g_varchar2_table(1692) := '7469616C697A65640D0A09095F72756E43616C6C6261636B7328226F6E737761705F656E64222C2070616E6531293B0D0A09095F72756E43616C6C6261636B7328226F6E737761705F656E64222C2070616E6532293B0D0A0D0A090972657475726E3B0D';
wwv_flow_api.g_varchar2_table(1693) := '0A0D0A090966756E6374696F6E20636F707920286E29207B202F2F206E203D2070616E650D0A0909097661720D0A090909092450093D202450735B6E5D0D0A0909092C092443093D202443735B6E5D0D0A0909093B0D0A09090972657475726E20212450';
wwv_flow_api.g_varchar2_table(1694) := '203F2066616C7365203A207B0D0A0909090970616E653A09096E0D0A0909092C09503A0909092450203F2024505B305D203A2066616C73650D0A0909092C09433A0909092443203F2024435B305D203A2066616C73650D0A0909092C0973746174653A09';
wwv_flow_api.g_varchar2_table(1695) := '09242E657874656E6428747275652C207B7D2C2073746174655B6E5D290D0A0909092C096F7074696F6E733A09242E657874656E6428747275652C207B7D2C206F7074696F6E735B6E5D290D0A0909097D0D0A09097D3B0D0A0D0A090966756E6374696F';
wwv_flow_api.g_varchar2_table(1696) := '6E206D6F766520286F50616E652C2070616E6529207B0D0A09090969662028216F50616E65292072657475726E3B0D0A0909097661720D0A090909095009093D206F50616E652E500D0A0909092C094309093D206F50616E652E430D0A0909092C096F6C';
wwv_flow_api.g_varchar2_table(1697) := '6450616E65203D206F50616E652E70616E650D0A0909092C096309093D205F635B70616E655D0D0A0909092F2F09736176652070616E652D6F7074696F6E7320746861742073686F756C642062652072657461696E65640D0A0909092C097309093D2024';
wwv_flow_api.g_varchar2_table(1698) := '2E657874656E6428747275652C207B7D2C2073746174655B70616E655D290D0A0909092C096F09093D206F7074696F6E735B70616E655D0D0A0909092F2F0952455441494E20736964652D73706563696669632046582053657474696E6773202D206D6F';
wwv_flow_api.g_varchar2_table(1699) := '72652062656C6F770D0A0909092C09667809093D207B20726573697A6572437572736F723A206F2E726573697A6572437572736F72207D0D0A0909092C0972652C2073697A652C20706F730D0A0909093B0D0A090909242E65616368282266784E616D65';
wwv_flow_api.g_varchar2_table(1700) := '2C667853706565642C667853657474696E6773222E73706C697428222C22292C2066756E6374696F6E2028692C206B29207B0D0A0909090966785B6B202B225F6F70656E225D20203D206F5B6B202B225F6F70656E225D3B0D0A0909090966785B6B202B';
wwv_flow_api.g_varchar2_table(1701) := '225F636C6F7365225D203D206F5B6B202B225F636C6F7365225D3B0D0A0909090966785B6B202B225F73697A65225D20203D206F5B6B202B225F73697A65225D3B0D0A0909097D293B0D0A0D0A0909092F2F20757064617465206F626A65637420706F69';
wwv_flow_api.g_varchar2_table(1702) := '6E7465727320616E6420617474726962757465730D0A0909092450735B70616E655D203D20242850290D0A090909092E64617461287B0D0A09090909096C61796F757450616E653A0909496E7374616E63655B70616E655D092F2F204E455720706F696E';
wwv_flow_api.g_varchar2_table(1703) := '74657220746F2070616E652D616C6961732D6F626A6563740D0A090909092C096C61796F7574456467653A090970616E650D0A090909097D290D0A090909092E637373285F632E68696464656E290D0A090909092E63737328632E637373526571290D0A';
wwv_flow_api.g_varchar2_table(1704) := '0909093B0D0A0909092443735B70616E655D203D2043203F2024284329203A2066616C73653B0D0A0D0A0909092F2F20736574206F7074696F6E7320616E642073746174650D0A0909096F7074696F6E735B70616E655D093D20242E657874656E642874';
wwv_flow_api.g_varchar2_table(1705) := '7275652C207B7D2C206F50616E652E6F7074696F6E732C206678293B0D0A09090973746174655B70616E655D09093D20242E657874656E6428747275652C207B7D2C206F50616E652E7374617465293B0D0A0D0A0909092F2F206368616E676520636C61';
wwv_flow_api.g_varchar2_table(1706) := '73734E616D6573206F6E207468652070616E652C2065673A2075692D6C61796F75742D70616E652D65617374203D3D3E2075692D6C61796F75742D70616E652D776573740D0A0909097265203D206E657720526567457870286F2E70616E65436C617373';
wwv_flow_api.g_varchar2_table(1707) := '202B222D222B206F6C6450616E652C20226722293B0D0A090909502E636C6173734E616D65203D20502E636C6173734E616D652E7265706C6163652872652C206F2E70616E65436C617373202B222D222B2070616E65293B0D0A0D0A0909092F2F20414C';
wwv_flow_api.g_varchar2_table(1708) := '5741595320726567656E65726174652074686520726573697A6572202620746F67676C657220656C656D656E74730D0A090909696E697448616E646C65732870616E65293B202F2F206372656174652074686520726571756972656420726573697A6572';
wwv_flow_api.g_varchar2_table(1709) := '202620746F67676C65720D0A0D0A0909092F2F206966206D6F76696E6720746F20646966666572656E74206F7269656E746174696F6E2C207468656E206B6565702027746172676574272070616E652073697A650D0A09090969662028632E6469722021';
wwv_flow_api.g_varchar2_table(1710) := '3D205F635B6F6C6450616E655D2E64697229207B0D0A0909090973697A65203D2073697A65735B70616E655D207C7C20303B0D0A0909090973657453697A654C696D6974732870616E65293B202F2F207570646174652070616E652D73746174650D0A09';
wwv_flow_api.g_varchar2_table(1711) := '09090973697A65203D206D61782873697A652C2073746174655B70616E655D2E6D696E53697A65293B0D0A090909092F2F20757365206D616E75616C53697A6550616E6520746F2064697361626C65206175746F526573697A65202D206E6F7420757365';
wwv_flow_api.g_varchar2_table(1712) := '66756C2061667465722070616E65732061726520737761707065640D0A090909096D616E75616C53697A6550616E652870616E652C2073697A652C20747275652C2074727565293B202F2F20747275652F74727565203D20736B697043616C6C6261636B';
wwv_flow_api.g_varchar2_table(1713) := '2F6E6F416E696D6174696F6E0D0A0909097D0D0A090909656C7365202F2F206D6F76652074686520726573697A657220686572650D0A090909092452735B70616E655D2E63737328632E736964652C2073432E696E7365745B632E736964655D202B2028';
wwv_flow_api.g_varchar2_table(1714) := '73746174655B70616E655D2E697356697369626C65203F2067657450616E6553697A652870616E6529203A203029293B0D0A0D0A0D0A0909092F2F2041444420434C4153534E414D4553202620534C4944452D42494E44494E47530D0A09090969662028';
wwv_flow_api.g_varchar2_table(1715) := '6F50616E652E73746174652E697356697369626C652026262021732E697356697369626C65290D0A0909090973657441734F70656E2870616E652C2074727565293B202F2F2074727565203D20736B697043616C6C6261636B0D0A090909656C7365207B';
wwv_flow_api.g_varchar2_table(1716) := '0D0A090909097365744173436C6F7365642870616E65293B0D0A0909090962696E645374617274536C6964696E674576656E74732870616E652C2074727565293B202F2F2077696C6C20656E61626C65206576656E7473204946206F7074696F6E206973';
wwv_flow_api.g_varchar2_table(1717) := '207365740D0A0909097D0D0A0D0A0909092F2F2044455354524F5920746865206F626A6563740D0A0909096F50616E65203D206E756C6C3B0D0A09097D3B0D0A097D0D0A0D0A0D0A092F2A2A0D0A09202A20494E5445524E414C206D6574686F6420746F';
wwv_flow_api.g_varchar2_table(1718) := '2073796E632070696E2D627574746F6E73207768656E2070616E65206973206F70656E6564206F7220636C6F7365640D0A09202A20556E70696E6E6564206D65616E73207468652070616E652069732027736C6964696E6727202D2069652C206F766572';
wwv_flow_api.g_varchar2_table(1719) := '2D746F70206F66207468652061646A6163656E742070616E65730D0A09202A0D0A09202A204073656520206F70656E28292C2073657441734F70656E28292C207365744173436C6F73656428290D0A09202A2040706172616D207B737472696E677D0970';
wwv_flow_api.g_varchar2_table(1720) := '616E652020205468657365206172652074686520706172616D732072657475726E656420746F2063616C6C6261636B73206279206C61796F757428290D0A09202A2040706172616D207B626F6F6C65616E7D09646F50696E202054727565206D65616E73';
wwv_flow_api.g_varchar2_table(1721) := '20736574207468652070696E2027646F776E272C2046616C7365206D65616E7320277570270D0A09202A2F0D0A2C0973796E6350696E42746E73203D2066756E6374696F6E202870616E652C20646F50696E29207B0D0A090969662028242E6C61796F75';
wwv_flow_api.g_varchar2_table(1722) := '742E706C7567696E732E627574746F6E73290D0A090909242E656163682873746174655B70616E655D2E70696E732C2066756E6374696F6E2028692C2073656C6563746F7229207B0D0A09090909242E6C61796F75742E627574746F6E732E7365745069';
wwv_flow_api.g_varchar2_table(1723) := '6E537461746528496E7374616E63652C20242873656C6563746F72292C2070616E652C20646F50696E293B0D0A0909097D293B0D0A097D0D0A0D0A3B092F2F20454E4420766172204445434C41524154494F4E530D0A0D0A092F2A2A0D0A09202A204361';
wwv_flow_api.g_varchar2_table(1724) := '7074757265206B657973207768656E20656E61626C65437572736F72486F746B6579202D20746F67676C652070616E6520696620686F746B657920707265737365640D0A09202A0D0A09202A20407365652020646F63756D656E742E6B6579646F776E28';
wwv_flow_api.g_varchar2_table(1725) := '290D0A09202A2F0D0A0966756E6374696F6E206B6579446F776E202865767429207B0D0A09096966202821657674292072657475726E20747275653B0D0A090976617220636F6465203D206576742E6B6579436F64653B0D0A090969662028636F646520';
wwv_flow_api.g_varchar2_table(1726) := '3C203333292072657475726E20747275653B202F2F2069676E6F7265207370656369616C206B6579733A20454E5445522C205441422C206574630D0A0D0A09097661720D0A09090950414E45203D207B0D0A0909090933383A20226E6F72746822202F2F';
wwv_flow_api.g_varchar2_table(1727) := '20557020437572736F72092D20242E75692E6B6579436F64652E55500D0A0909092C0934303A2022736F75746822202F2F20446F776E20437572736F72092D20242E75692E6B6579436F64652E444F574E0D0A0909092C0933373A202277657374222020';
wwv_flow_api.g_varchar2_table(1728) := '2F2F204C65667420437572736F72092D20242E75692E6B6579436F64652E4C4546540D0A0909092C0933393A2022656173742220202F2F20526967687420437572736F72092D20242E75692E6B6579436F64652E52494748540D0A0909097D0D0A09092C';
wwv_flow_api.g_varchar2_table(1729) := '09414C5409093D206576742E616C744B6579202F2F206E6F20776F726B79210D0A09092C095348494654093D206576742E73686966744B65790D0A09092C094354524C093D206576742E6374726C4B65790D0A09092C09435552534F52093D2028435452';
wwv_flow_api.g_varchar2_table(1730) := '4C20262620636F6465203E3D20333720262620636F6465203C3D203430290D0A09092C096F2C206B2C206D2C2070616E650D0A09093B0D0A0D0A090969662028435552534F52202626206F7074696F6E735B50414E455B636F64655D5D2E656E61626C65';
wwv_flow_api.g_varchar2_table(1731) := '437572736F72486F746B657929202F2F2076616C696420637572736F722D686F746B65790D0A09090970616E65203D2050414E455B636F64655D3B0D0A0909656C736520696620284354524C207C7C20534849465429202F2F20636865636B20746F2073';
wwv_flow_api.g_varchar2_table(1732) := '65652069662074686973206D617463686573206120637573746F6D2D686F746B65790D0A090909242E65616368285F632E626F7264657250616E65732C2066756E6374696F6E2028692C207029207B202F2F206C6F6F7020656163682070616E6520746F';
wwv_flow_api.g_varchar2_table(1733) := '20636865636B2069747320686F746B65790D0A090909096F203D206F7074696F6E735B705D3B0D0A090909096B203D206F2E637573746F6D486F746B65793B0D0A090909096D203D206F2E637573746F6D486F746B65794D6F6469666965723B202F2F20';
wwv_flow_api.g_varchar2_table(1734) := '6966206D697373696E67206F7220696E76616C69642C207472656174656420617320224354524C2B5348494654220D0A0909090969662028285348494654202626206D3D3D2253484946542229207C7C20284354524C202626206D3D3D224354524C2229';
wwv_flow_api.g_varchar2_table(1735) := '207C7C20284354524C2026262053484946542929207B202F2F204D6F646966696572206D6174636865730D0A0909090909696620286B20262620636F6465203D3D3D202869734E614E286B29207C7C206B203C3D2039203F206B2E746F55707065724361';
wwv_flow_api.g_varchar2_table(1736) := '736528292E63686172436F64654174283029203A206B2929207B202F2F204B6579206D6174636865730D0A09090909090970616E65203D20703B0D0A09090909090972657475726E2066616C73653B202F2F20425245414B0D0A09090909097D0D0A0909';
wwv_flow_api.g_varchar2_table(1737) := '09097D0D0A0909097D293B0D0A0D0A09092F2F2076616C69646174652070616E650D0A0909696620282170616E65207C7C20212450735B70616E655D207C7C20216F7074696F6E735B70616E655D2E636C6F7361626C65207C7C2073746174655B70616E';
wwv_flow_api.g_varchar2_table(1738) := '655D2E697348696464656E290D0A09090972657475726E20747275653B0D0A0D0A0909746F67676C652870616E65293B0D0A0D0A09096576742E73746F7050726F7061676174696F6E28293B0D0A09096576742E72657475726E56616C7565203D206661';
wwv_flow_api.g_varchar2_table(1739) := '6C73653B202F2F2043414E43454C206B65790D0A090972657475726E2066616C73653B0D0A097D3B0D0A0D0A0D0A2F2A0D0A202A2023232323232323232323232323232323232323232323232323232323232323232323232323230D0A202A095554494C';
wwv_flow_api.g_varchar2_table(1740) := '495459204D4554484F44530D0A202A0963616C6C65642065787465726E616C6C79206F7220627920696E6974427574746F6E730D0A202A2023232323232323232323232323232323232323232323232323232323232323232323232323230D0A202A2F0D';
wwv_flow_api.g_varchar2_table(1741) := '0A0D0A092F2A2A0D0A09202A204368616E67652F726573657420612070616E65206F766572666C6F772073657474696E672026207A496E64657820746F20616C6C6F7720706F707570732F64726F702D646F776E7320746F20776F726B0D0A09202A0D0A';
wwv_flow_api.g_varchar2_table(1742) := '09202A2040706172616D207B4F626A6563743D7D2020205B656C5D09286F7074696F6E616C292043616E20616C736F2062652027626F756E642720746F206120636C69636B2C206D6F7573654F7665722C206F72206F74686572206576656E740D0A0920';
wwv_flow_api.g_varchar2_table(1743) := '2A2F0D0A0966756E6374696F6E20616C6C6F774F766572666C6F772028656C29207B0D0A090969662028216973496E697469616C697A65642829292072657475726E3B0D0A0909696620287468697320262620746869732E7461674E616D652920656C20';
wwv_flow_api.g_varchar2_table(1744) := '3D20746869733B202F2F20424F554E4420746F20656C656D656E740D0A09097661722024503B0D0A090969662028697353747228656C29290D0A0909092450203D202450735B656C5D3B0D0A0909656C736520696620282428656C292E6461746128226C';
wwv_flow_api.g_varchar2_table(1745) := '61796F7574526F6C652229290D0A0909092450203D202428656C293B0D0A0909656C73650D0A0909092428656C292E706172656E747328292E656163682866756E6374696F6E28297B0D0A0909090969662028242874686973292E6461746128226C6179';
wwv_flow_api.g_varchar2_table(1746) := '6F7574526F6C65222929207B0D0A09090909092450203D20242874686973293B0D0A090909090972657475726E2066616C73653B202F2F20425245414B0D0A090909097D0D0A0909097D293B0D0A090969662028212450207C7C202124502E6C656E6774';
wwv_flow_api.g_varchar2_table(1747) := '68292072657475726E3B202F2F20494E56414C49440D0A0D0A09097661720D0A09090970616E65093D2024502E6461746128226C61796F75744564676522290D0A09092C097309093D2073746174655B70616E655D0D0A09093B0D0A0D0A09092F2F2069';
wwv_flow_api.g_varchar2_table(1748) := '662070616E6520697320616C7265616479207261697365642C207468656E207265736574206974206265666F726520646F696E6720697420616761696E210D0A09092F2F207468697320776F756C642068617070656E20696620616C6C6F774F76657266';
wwv_flow_api.g_varchar2_table(1749) := '6C6F7720697320617474616368656420746F20424F5448207468652070616E6520616E6420616E20656C656D656E74200D0A090969662028732E6373735361766564290D0A09090972657365744F766572666C6F772870616E65293B202F2F2072657365';
wwv_flow_api.g_varchar2_table(1750) := '742070726576696F757320435353206265666F726520636F6E74696E75696E670D0A0D0A09092F2F2069662070616E652069732072616973656420627920736C6964696E67206F7220726573697A696E672C206F722069747320636C6F7365642C207468';
wwv_flow_api.g_varchar2_table(1751) := '656E2061626F72740D0A090969662028732E6973536C6964696E67207C7C20732E6973526573697A696E67207C7C20732E6973436C6F73656429207B0D0A090909732E6373735361766564203D2066616C73653B0D0A09090972657475726E3B0D0A0909';
wwv_flow_api.g_varchar2_table(1752) := '7D0D0A0D0A09097661720D0A0909096E6577435353093D207B207A496E6465783A20286F7074696F6E732E7A496E64657865732E726573697A65725F6E6F726D616C202B203129207D0D0A09092C09637572435353093D207B7D0D0A09092C096F660909';
wwv_flow_api.g_varchar2_table(1753) := '3D2024502E63737328226F766572666C6F7722290D0A09092C096F665809093D2024502E63737328226F766572666C6F775822290D0A09092C096F665909093D2024502E63737328226F766572666C6F775922290D0A09093B0D0A09092F2F2064657465';
wwv_flow_api.g_varchar2_table(1754) := '726D696E652077686963682C20696620616E792C206F766572666C6F772073657474696E6773206E65656420746F206265206368616E6765640D0A0909696620286F6620213D202276697369626C652229207B0D0A0909096375724353532E6F76657266';
wwv_flow_api.g_varchar2_table(1755) := '6C6F77203D206F663B0D0A0909096E65774353532E6F766572666C6F77203D202276697369626C65223B0D0A09097D0D0A0909696620286F665820262620216F66582E6D61746368282F2876697369626C657C6175746F292F2929207B0D0A0909096375';
wwv_flow_api.g_varchar2_table(1756) := '724353532E6F766572666C6F7758203D206F66583B0D0A0909096E65774353532E6F766572666C6F7758203D202276697369626C65223B0D0A09097D0D0A0909696620286F665920262620216F66592E6D61746368282F2876697369626C657C6175746F';
wwv_flow_api.g_varchar2_table(1757) := '292F2929207B0D0A0909096375724353532E6F766572666C6F7759203D206F66583B0D0A0909096E65774353532E6F766572666C6F7759203D202276697369626C65223B0D0A09097D0D0A0D0A09092F2F2073617665207468652063757272656E74206F';
wwv_flow_api.g_varchar2_table(1758) := '766572666C6F772073657474696E6773202D206576656E20696620626C616E6B210D0A0909732E6373735361766564203D206375724353533B0D0A0D0A09092F2F206170706C79206E65772043535320746F207261697365207A496E64657820616E642C';
wwv_flow_api.g_varchar2_table(1759) := '206966206E65636573736172792C206D616B65206F766572666C6F77202776697369626C65270D0A090924502E63737328206E657743535320293B0D0A0D0A09092F2F206D616B65207375726520746865207A496E646578206F6620616C6C206F746865';
wwv_flow_api.g_varchar2_table(1760) := '722070616E6573206973206E6F726D616C0D0A0909242E65616368285F632E616C6C50616E65732C2066756E6374696F6E28692C207029207B0D0A090909696620287020213D2070616E65292072657365744F766572666C6F772870293B0D0A09097D29';
wwv_flow_api.g_varchar2_table(1761) := '3B0D0A0D0A097D3B0D0A092F2A2A0D0A09202A2040706172616D207B4F626A6563743D7D2020205B656C5D09286F7074696F6E616C292043616E20616C736F2062652027626F756E642720746F206120636C69636B2C206D6F7573654F7665722C206F72';
wwv_flow_api.g_varchar2_table(1762) := '206F74686572206576656E740D0A09202A2F0D0A0966756E6374696F6E2072657365744F766572666C6F772028656C29207B0D0A090969662028216973496E697469616C697A65642829292072657475726E3B0D0A090969662028746869732026262074';
wwv_flow_api.g_varchar2_table(1763) := '6869732E7461674E616D652920656C203D20746869733B202F2F20424F554E4420746F20656C656D656E740D0A09097661722024503B0D0A090969662028697353747228656C29290D0A0909092450203D202450735B656C5D3B0D0A0909656C73652069';
wwv_flow_api.g_varchar2_table(1764) := '6620282428656C292E6461746128226C61796F7574526F6C652229290D0A0909092450203D202428656C293B0D0A0909656C73650D0A0909092428656C292E706172656E747328292E656163682866756E6374696F6E28297B0D0A090909096966202824';
wwv_flow_api.g_varchar2_table(1765) := '2874686973292E6461746128226C61796F7574526F6C65222929207B0D0A09090909092450203D20242874686973293B0D0A090909090972657475726E2066616C73653B202F2F20425245414B0D0A090909097D0D0A0909097D293B0D0A090969662028';
wwv_flow_api.g_varchar2_table(1766) := '212450207C7C202124502E6C656E677468292072657475726E3B202F2F20494E56414C49440D0A0D0A09097661720D0A09090970616E65093D2024502E6461746128226C61796F75744564676522290D0A09092C097309093D2073746174655B70616E65';
wwv_flow_api.g_varchar2_table(1767) := '5D0D0A09092C0943535309093D20732E6373735361766564207C7C207B7D0D0A09093B0D0A09092F2F20726573657420746865207A496E6465780D0A09096966202821732E6973536C6964696E672026262021732E6973526573697A696E67290D0A0909';
wwv_flow_api.g_varchar2_table(1768) := '0924502E63737328227A496E646578222C206F7074696F6E732E7A496E64657865732E70616E655F6E6F726D616C293B0D0A0D0A09092F2F207265736574204F766572666C6F77202D206966206E65636573736172790D0A090924502E63737328204353';
wwv_flow_api.g_varchar2_table(1769) := '5320293B0D0A0D0A09092F2F20636C656172207661720D0A0909732E6373735361766564203D2066616C73653B0D0A097D3B0D0A0D0A2F2A0D0A202A202323232323232323232323232323232323232323230D0A202A204352454154452F52455455524E';
wwv_flow_api.g_varchar2_table(1770) := '204C41594F55540D0A202A202323232323232323232323232323232323232323230D0A202A2F0D0A0D0A092F2F2076616C6964617465207468617420636F6E7461696E6572206578697374730D0A0976617220244E203D20242874686973292E65712830';
wwv_flow_api.g_varchar2_table(1771) := '293B202F2F204649525354206D61746368696E6720436F6E7461696E657220656C656D656E740D0A096966202821244E2E6C656E67746829207B0D0A090972657475726E205F6C6F6728206F7074696F6E732E6572726F72732E636F6E7461696E65724D';
wwv_flow_api.g_varchar2_table(1772) := '697373696E6720293B0D0A097D3B0D0A0D0A092F2F20557365727320726574726965766520496E7374616E6365206F662061206C61796F757420776974683A20244E2E6C61796F75742829204F5220244E2E6461746128226C61796F757422290D0A092F';
wwv_flow_api.g_varchar2_table(1773) := '2F2072657475726E2074686520496E7374616E63652D706F696E746572206966206C61796F75742068617320616C7265616479206265656E20696E697469616C697A65640D0A0969662028244E2E6461746128226C61796F7574436F6E7461696E657222';
wwv_flow_api.g_varchar2_table(1774) := '2920262620244E2E6461746128226C61796F75742229290D0A090972657475726E20244E2E6461746128226C61796F757422293B202F2F2063616368656420706F696E7465720D0A0D0A092F2F20696E697420676C6F62616C20766172730D0A09766172';
wwv_flow_api.g_varchar2_table(1775) := '200D0A0909245073093D207B7D092F2F2050616E657320783509092D2073657420696E20696E697450616E657328290D0A092C09244373093D207B7D092F2F20436F6E74656E74207835092D2073657420696E20696E697450616E657328290D0A092C09';
wwv_flow_api.g_varchar2_table(1776) := '245273093D207B7D092F2F20526573697A657273207834092D2073657420696E20696E697448616E646C657328290D0A092C09245473093D207B7D092F2F20546F67676C657273207834092D2073657420696E20696E697448616E646C657328290D0A09';
wwv_flow_api.g_varchar2_table(1777) := '2C09244D73093D2024285B5D29092F2F204D61736B73202D20757020746F2032206D61736B73207065722070616E652028494652414D45202B20444956290D0A092F2F09616C696173657320666F7220636F646520627265766974790D0A092C09734309';
wwv_flow_api.g_varchar2_table(1778) := '3D2073746174652E636F6E7461696E6572202F2F20616C69617320666F7220656173792061636365737320746F2027636F6E7461696E65722064696D656E73696F6E73270D0A092C09734944093D2073746174652E6964202F2F20616C69617320666F72';
wwv_flow_api.g_varchar2_table(1779) := '20756E69717565206C61796F75742049442F6E616D657370616365202D2065673A20226C61796F7574343335220D0A093B0D0A0D0A092F2F2063726561746520496E7374616E6365206F626A65637420746F206578706F736520646174612026206F7074';
wwv_flow_api.g_varchar2_table(1780) := '696F6E2050726F706572746965732C20616E64207072696D61727920616374696F6E204D6574686F64730D0A0976617220496E7374616E6365203D207B0D0A092F2F096C61796F757420646174610D0A09096F7074696F6E733A0909096F7074696F6E73';
wwv_flow_api.g_varchar2_table(1781) := '0909092F2F2070726F7065727479202D206F7074696F6E7320686173680D0A092C0973746174653A0909090973746174650909092F2F2070726F7065727479202D2064696D656E73696F6E7320686173680D0A092F2F096F626A65637420706F696E7465';
wwv_flow_api.g_varchar2_table(1782) := '72730D0A092C09636F6E7461696E65723A090909244E090909092F2F2070726F7065727479202D206F626A65637420706F696E7465727320666F72206C61796F757420636F6E7461696E65720D0A092C0970616E65733A09090909245073090909092F2F';
wwv_flow_api.g_varchar2_table(1783) := '2070726F7065727479202D206F626A65637420706F696E7465727320666F7220414C4C2050616E65733A2070616E65732E6E6F7274682C2070616E65732E63656E7465720D0A092C09636F6E74656E74733A090909244373090909092F2F2070726F7065';
wwv_flow_api.g_varchar2_table(1784) := '727479202D206F626A65637420706F696E7465727320666F7220414C4C20436F6E74656E743A20636F6E74656E74732E6E6F7274682C20636F6E74656E74732E63656E7465720D0A092C09726573697A6572733A090909245273090909092F2F2070726F';
wwv_flow_api.g_varchar2_table(1785) := '7065727479202D206F626A65637420706F696E7465727320666F7220414C4C20526573697A6572732C2065673A20726573697A6572732E6E6F7274680D0A092C09746F67676C6572733A090909245473090909092F2F2070726F7065727479202D206F62';
wwv_flow_api.g_varchar2_table(1786) := '6A65637420706F696E7465727320666F7220414C4C20546F67676C6572732C2065673A20746F67676C6572732E6E6F7274680D0A092F2F09626F726465722D70616E65206F70656E2F636C6F73650D0A092C09686964653A09090909686964650909092F';
wwv_flow_api.g_varchar2_table(1787) := '2F206D6574686F64202D20646974746F0D0A092C0973686F773A0909090973686F770909092F2F206D6574686F64202D20646974746F0D0A092C09746F67676C653A09090909746F67676C650909092F2F206D6574686F64202D20706173732061202770';
wwv_flow_api.g_varchar2_table(1788) := '616E65272028226E6F727468222C202277657374222C20657463290D0A092C096F70656E3A090909096F70656E0909092F2F206D6574686F64202D20646974746F0D0A092C09636C6F73653A09090909636C6F73650909092F2F206D6574686F64202D20';
wwv_flow_api.g_varchar2_table(1789) := '646974746F0D0A092C09736C6964654F70656E3A090909736C6964654F70656E09092F2F206D6574686F64202D20646974746F0D0A092C09736C696465436C6F73653A090909736C696465436C6F736509092F2F206D6574686F64202D20646974746F0D';
wwv_flow_api.g_varchar2_table(1790) := '0A092C09736C696465546F67676C653A0909736C696465546F67676C6509092F2F206D6574686F64202D20646974746F0D0A092F2F0970616E6520616374696F6E730D0A092C0973657453697A654C696D6974733A090973657453697A654C696D697473';
wwv_flow_api.g_varchar2_table(1791) := '092F2F206D6574686F64202D20706173732061202770616E6527202D20757064617465207374617465206D696E2F6D617820646174610D0A092C095F73697A6550616E653A09090973697A6550616E6509092F2F206D6574686F64202D696E74656E6465';
wwv_flow_api.g_varchar2_table(1792) := '6420666F72207573657220627920706C7567696E73206F6E6C79210D0A092C0973697A6550616E653A0909096D616E75616C53697A6550616E65092F2F206D6574686F64202D20706173732061202770616E652720414E4420616E20276F757465722D73';
wwv_flow_api.g_varchar2_table(1793) := '697A652720696E20706978656C73206F722070657263656E742C206F7220276175746F270D0A092C0973697A65436F6E74656E743A090973697A65436F6E74656E7409092F2F206D6574686F64202D20706173732061202770616E65270D0A092C097377';
wwv_flow_api.g_varchar2_table(1794) := '617050616E65733A0909097377617050616E657309092F2F206D6574686F64202D20706173732054574F202770616E657327202D2077696C6C2073776170207468656D0D0A092C0973686F774D61736B733A09090973686F774D61736B7309092F2F206D';
wwv_flow_api.g_varchar2_table(1795) := '6574686F64202D20706173732061202770616E6527204F52206C697374206F662070616E6573202D2064656661756C74203D20616C6C2070616E65732077697468206D61736B206F7074696F6E207365740D0A092C09686964654D61736B733A09090968';
wwv_flow_api.g_varchar2_table(1796) := '6964654D61736B7309092F2F206D6574686F64202D20646974746F270D0A092F2F0970616E6520656C656D656E74206D6574686F64730D0A092C09696E6974436F6E74656E743A0909696E6974436F6E74656E7409092F2F206D6574686F64202D206469';
wwv_flow_api.g_varchar2_table(1797) := '74746F0D0A092C0961646450616E653A09090961646450616E650909092F2F206D6574686F64202D20706173732061202770616E65270D0A092C0972656D6F766550616E653A09090972656D6F766550616E6509092F2F206D6574686F64202D20706173';
wwv_flow_api.g_varchar2_table(1798) := '732061202770616E652720746F2072656D6F76652066726F6D206C61796F75742C206164642027747275652720746F2064656C657465207468652070616E652D656C656D0D0A092C096372656174654368696C6472656E3A09096372656174654368696C';
wwv_flow_api.g_varchar2_table(1799) := '6472656E092F2F206D6574686F64202D20706173732061202770616E652720616E6420286F7074696F6E616C29206C61796F75742D6F7074696F6E7320284F5645525249444553206F7074696F6E735B70616E655D2E6368696C6472656E0D0A092C0972';
wwv_flow_api.g_varchar2_table(1800) := '6566726573684368696C6472656E3A09726566726573684368696C6472656E092F2F206D6574686F64202D20706173732061202770616E652720616E642061206C61796F75742D696E7374616E63650D0A092F2F097370656369616C2070616E65206F70';
wwv_flow_api.g_varchar2_table(1801) := '74696F6E2073657474696E670D0A092C09656E61626C65436C6F7361626C653A0909656E61626C65436C6F7361626C65092F2F206D6574686F64202D20706173732061202770616E65270D0A092C0964697361626C65436C6F7361626C653A0964697361';
wwv_flow_api.g_varchar2_table(1802) := '626C65436C6F7361626C65092F2F206D6574686F64202D20646974746F0D0A092C09656E61626C65536C696461626C653A0909656E61626C65536C696461626C65092F2F206D6574686F64202D20646974746F0D0A092C0964697361626C65536C696461';
wwv_flow_api.g_varchar2_table(1803) := '626C653A0964697361626C65536C696461626C65092F2F206D6574686F64202D20646974746F0D0A092C09656E61626C65526573697A61626C653A09656E61626C65526573697A61626C65092F2F206D6574686F64202D20646974746F0D0A092C096469';
wwv_flow_api.g_varchar2_table(1804) := '7361626C65526573697A61626C653A0964697361626C65526573697A61626C652F2F206D6574686F64202D20646974746F0D0A092F2F097574696C697479206D6574686F647320666F722070616E65730D0A092C09616C6C6F774F766572666C6F773A09';
wwv_flow_api.g_varchar2_table(1805) := '09616C6C6F774F766572666C6F77092F2F207574696C697479202D20706173732063616C6C696E6720656C656D656E74202874686973290D0A092C0972657365744F766572666C6F773A090972657365744F766572666C6F77092F2F207574696C697479';
wwv_flow_api.g_varchar2_table(1806) := '202D20646974746F0D0A092F2F096C61796F757420636F6E74726F6C0D0A092C0964657374726F793A09090964657374726F790909092F2F206D6574686F64202D206E6F20706172616D65746572730D0A092C09696E697450616E65733A090909697349';
wwv_flow_api.g_varchar2_table(1807) := '6E697469616C697A6564092F2F206D6574686F64202D206E6F20706172616D65746572730D0A092C09726573697A65416C6C3A090909726573697A65416C6C09092F2F206D6574686F64202D206E6F20706172616D65746572730D0A092F2F0963616C6C';
wwv_flow_api.g_varchar2_table(1808) := '6261636B2074726967676572696E670D0A092C0972756E43616C6C6261636B733A09095F72756E43616C6C6261636B73092F2F206D6574686F64202D2070617373206576744E616D6520262070616E652028696620612070616E652D6576656E74292C20';
wwv_flow_api.g_varchar2_table(1809) := '65673A207472696767657228226F6E6F70656E222C20227765737422290D0A092F2F09616C69617320636F6C6C656374696F6E73206F66206F7074696F6E732C20737461746520616E64206368696C6472656E202D206372656174656420696E20616464';
wwv_flow_api.g_varchar2_table(1810) := '50616E6520616E6420657874656E64656420656C736577686572650D0A092C09686173506172656E744C61796F75743A0966616C73650909092F2F2073657420627920696E6974436F6E7461696E657228290D0A092C096368696C6472656E3A09090963';
wwv_flow_api.g_varchar2_table(1811) := '68696C6472656E09092F2F20706F696E7465727320746F206368696C642D6C61796F7574732C2065673A20496E7374616E63652E6368696C6472656E2E776573742E6C61796F75744E616D650D0A092C096E6F7274683A0909090966616C73650909092F';
wwv_flow_api.g_varchar2_table(1812) := '2F20616C6961732067726F75703A207B206E616D653A2070616E652C2070616E653A202450735B70616E655D2C206F7074696F6E733A206F7074696F6E735B70616E655D2C2073746174653A2073746174655B70616E655D2C206368696C6472656E3A20';
wwv_flow_api.g_varchar2_table(1813) := '6368696C6472656E5B70616E655D207D0D0A092C09736F7574683A0909090966616C73650909092F2F20646974746F0D0A092C09776573743A0909090966616C73650909092F2F20646974746F0D0A092C09656173743A0909090966616C73650909092F';
wwv_flow_api.g_varchar2_table(1814) := '2F20646974746F0D0A092C0963656E7465723A0909090966616C73650909092F2F20646974746F0D0A097D3B0D0A0D0A092F2F206372656174652074686520626F72646572206C61796F7574204E4F570D0A09696620285F6372656174652829203D3D3D';
wwv_flow_api.g_varchar2_table(1815) := '202763616E63656C2729202F2F206F6E6C6F61645F73746172742063616C6C6261636B2072657475726E65642066616C736520746F2043414E43454C206C61796F7574206372656174696F6E0D0A090972657475726E206E756C6C3B0D0A09656C736520';
wwv_flow_api.g_varchar2_table(1816) := '2F2F2074727565204F522066616C7365202D2D206966206C61796F75742D656C656D656E747320646964204E4F5420696E6974202868696464656E206F7220646F206E6F74206578697374292C2063616E206175746F2D696E6974206C617465720D0A09';
wwv_flow_api.g_varchar2_table(1817) := '0972657475726E20496E7374616E63653B202F2F2072657475726E2074686520496E7374616E6365206F626A6563740D0A0D0A7D0D0A0D0A0D0A7D2928206A517565727920293B0D0A0D0A0D0A0D0A0D0A2F2A2A0D0A202A206A71756572792E6C61796F';
wwv_flow_api.g_varchar2_table(1818) := '75742E737461746520312E320D0A202A2024446174653A20323031342D30382D33302030383A30303A303020285361742C2033302041756720323031342920240D0A202A0D0A202A20436F70797269676874202863292032303134200D0A202A2020204B';
wwv_flow_api.g_varchar2_table(1819) := '6576696E2044616C6D616E2028687474703A2F2F616C6C70726F2E6E6574290D0A202A0D0A202A204475616C206C6963656E73656420756E646572207468652047504C2028687474703A2F2F7777772E676E752E6F72672F6C6963656E7365732F67706C';
wwv_flow_api.g_varchar2_table(1820) := '2E68746D6C290D0A202A20616E64204D49542028687474703A2F2F7777772E6F70656E736F757263652E6F72672F6C6963656E7365732F6D69742D6C6963656E73652E70687029206C6963656E7365732E0D0A202A0D0A202A204072657175697265733A';
wwv_flow_api.g_varchar2_table(1821) := '205549204C61796F757420312E342E30206F72206869676865720D0A202A204072657175697265733A20242E75692E636F6F6B6965202861626F7665290D0A202A0D0A202A20407365653A20687474703A2F2F67726F7570732E676F6F676C652E636F6D';
wwv_flow_api.g_varchar2_table(1822) := '2F67726F75702F6A71756572792D75692D6C61796F75740D0A202A2F0D0A3B2866756E6374696F6E20282429207B0D0A0D0A6966202821242E6C61796F7574292072657475726E3B0D0A0D0A0D0A2F2A2A0D0A202A09554920434F4F4B4945205554494C';
wwv_flow_api.g_varchar2_table(1823) := '4954590D0A202A0D0A202A094120242E636F6F6B6965204F5220242E75692E636F6F6B6965206E616D657370616365202A73686F756C64206265207374616E646172642A2C2062757420756E74696C207468656E2E2E2E0D0A202A095468697320637265';
wwv_flow_api.g_varchar2_table(1824) := '6174657320242E75692E636F6F6B696520736F204C61796F757420646F6573206E6F74206E6565642074686520636F6F6B69652E6A71756572792E6A7320706C7567696E0D0A202A094E4F54453A2054686973207574696C697479206973205245515549';
wwv_flow_api.g_varchar2_table(1825) := '52454420627920746865206C61796F75742E737461746520706C7567696E0D0A202A0D0A202A09436F6F6B6965206D6574686F647320696E204C61796F75742061726520637265617465642061732070617274206F66205374617465204D616E6167656D';
wwv_flow_api.g_varchar2_table(1826) := '656E74200D0A202A2F0D0A6966202821242E75692920242E7569203D207B7D3B0D0A242E75692E636F6F6B6965203D207B0D0A0D0A092F2F20636F6F6B6965456E61626C6564206973206E6F7420696E20444F4D2073706563732C2062757420444F4553';
wwv_flow_api.g_varchar2_table(1827) := '20776F726B7320696E20616C6C2062726F77736572732C696E636C7564696E67204945360D0A0961636365707473436F6F6B6965733A2021216E6176696761746F722E636F6F6B6965456E61626C65640D0A0D0A2C09726561643A2066756E6374696F6E';
wwv_flow_api.g_varchar2_table(1828) := '20286E616D6529207B0D0A09097661720D0A09090963093D20646F63756D656E742E636F6F6B69650D0A09092C096373093D2063203F20632E73706C697428273B2729203A205B5D0D0A09092C09706169722C20646174612C20690D0A09093B0D0A0909';
wwv_flow_api.g_varchar2_table(1829) := '666F722028693D303B20706169723D63735B695D3B20692B2B29207B0D0A09090964617461203D20242E7472696D2870616972292E73706C697428273D27293B202F2F206E616D653D76616C7565203D3E205B206E616D652C2076616C7565205D0D0A09';
wwv_flow_api.g_varchar2_table(1830) := '090969662028646174615B305D203D3D206E616D6529202F2F20666F756E6420746865206C61796F757420636F6F6B69650D0A0909090972657475726E206465636F6465555249436F6D706F6E656E7428646174615B315D293B0D0A09097D0D0A090972';
wwv_flow_api.g_varchar2_table(1831) := '657475726E206E756C6C3B0D0A097D0D0A0D0A2C0977726974653A2066756E6374696F6E20286E616D652C2076616C2C20636F6F6B69654F70747329207B0D0A090976617209706172616D73093D2022220D0A09092C0964617465093D2022220D0A0909';
wwv_flow_api.g_varchar2_table(1832) := '2C09636C656172093D2066616C73650D0A09092C096F09093D20636F6F6B69654F707473207C7C207B7D0D0A09092C097809093D206F2E6578706972657320207C7C206E756C6C0D0A09092C097409093D20242E747970652878290D0A09093B0D0A0909';
wwv_flow_api.g_varchar2_table(1833) := '6966202874203D3D3D20226461746522290D0A09090964617465203D20783B0D0A0909656C7365206966202874203D3D3D2022737472696E67222026262078203E203029207B0D0A09090978203D207061727365496E7428782C3130293B0D0A09090974';
wwv_flow_api.g_varchar2_table(1834) := '203D20226E756D626572223B0D0A09097D0D0A09096966202874203D3D3D20226E756D6265722229207B0D0A09090964617465203D206E6577204461746528293B0D0A0909096966202878203E2030290D0A09090909646174652E736574446174652864';
wwv_flow_api.g_varchar2_table(1835) := '6174652E676574446174652829202B2078293B0D0A090909656C7365207B0D0A09090909646174652E73657446756C6C596561722831393730293B0D0A09090909636C656172203D20747275653B0D0A0909097D0D0A09097D0D0A090969662028646174';
wwv_flow_api.g_varchar2_table(1836) := '65290909706172616D73202B3D20223B657870697265733D222B20646174652E746F555443537472696E6728293B0D0A0909696620286F2E70617468290909706172616D73202B3D20223B706174683D222B206F2E706174683B0D0A0909696620286F2E';
wwv_flow_api.g_varchar2_table(1837) := '646F6D61696E2909706172616D73202B3D20223B646F6D61696E3D222B206F2E646F6D61696E3B0D0A0909696620286F2E7365637572652909706172616D73202B3D20223B736563757265223B0D0A0909646F63756D656E742E636F6F6B6965203D206E';
wwv_flow_api.g_varchar2_table(1838) := '616D65202B223D222B2028636C656172203F202222203A20656E636F6465555249436F6D706F6E656E74282076616C202929202B20706172616D733B202F2F207772697465206F7220636C65617220636F6F6B69650D0A097D0D0A0D0A2C09636C656172';
wwv_flow_api.g_varchar2_table(1839) := '3A2066756E6374696F6E20286E616D6529207B0D0A0909242E75692E636F6F6B69652E7772697465286E616D652C2022222C207B657870697265733A202D317D293B0D0A097D0D0A0D0A7D3B0D0A2F2F20696620636F6F6B69652E6A71756572792E6A73';
wwv_flow_api.g_varchar2_table(1840) := '206973206E6F74206C6F616465642C2063726561746520616E20616C69617320746F207265706C69636174652069740D0A2F2F2074686973206D61792062652075736566756C20746F206F7468657220706C7567696E73206F7220636F64652064657065';
wwv_flow_api.g_varchar2_table(1841) := '6E64656E74206F6E207468617420706C7567696E0D0A6966202821242E636F6F6B69652920242E636F6F6B6965203D2066756E6374696F6E20286B2C20762C206F29207B0D0A097661722043203D20242E75692E636F6F6B69653B0D0A09696620287620';
wwv_flow_api.g_varchar2_table(1842) := '3D3D3D206E756C6C290D0A0909432E636C656172286B293B0D0A09656C7365206966202876203D3D3D20756E646566696E6564290D0A090972657475726E20432E72656164286B293B0D0A09656C73650D0A0909432E7772697465286B2C20762C206F29';
wwv_flow_api.g_varchar2_table(1843) := '3B0D0A7D3B0D0A0D0A0D0A0D0A2F2A2A0D0A202A0953746174652D6D616E6167656D656E74206F7074696F6E732073746F72656420696E206F7074696F6E732E73746174654D616E6167656D656E742C20776869636820696E636C756465732061202E63';
wwv_flow_api.g_varchar2_table(1844) := '6F6F6B696520686173680D0A202A0944656661756C74206F7074696F6E7320736176657320414C4C204B45595320666F7220414C4C2050414E45532C2069653A2070616E652E73697A652C2070616E652E6973436C6F7365642C2070616E652E69734869';
wwv_flow_api.g_varchar2_table(1845) := '6464656E0D0A202A0D0A202A092F2F2053544154452F434F4F4B4945204F5054494F4E530D0A202A09406578616D706C65202428656C292E6C61796F7574287B0D0A0909090973746174654D616E6167656D656E743A207B0D0A0909090909656E61626C';
wwv_flow_api.g_varchar2_table(1846) := '65643A09747275650D0A090909092C0973746174654B6579733A0922656173742E73697A652C776573742E73697A652C656173742E6973436C6F7365642C776573742E6973436C6F736564220D0A090909092C09636F6F6B69653A09097B206E616D653A';
wwv_flow_api.g_varchar2_table(1847) := '20226170704C61796F7574222C20706174683A20222F22207D0D0A090909097D0D0A0909097D290D0A202A09406578616D706C65202428656C292E6C61796F7574287B2073746174654D616E6167656D656E745F5F656E61626C65643A2074727565207D';
wwv_flow_api.g_varchar2_table(1848) := '29202F2F20656E61626C65206175746F2D73746174652D6D616E6167656D656E74207573696E6720636F6F6B6965730D0A202A09406578616D706C65202428656C292E6C61796F7574287B2073746174654D616E6167656D656E745F5F636F6F6B69653A';
wwv_flow_api.g_varchar2_table(1849) := '207B206E616D653A20226170704C61796F7574222C20706174683A20222F22207D207D290D0A202A09406578616D706C65202428656C292E6C61796F7574287B2073746174654D616E6167656D656E745F5F636F6F6B69655F5F6E616D653A2022617070';
wwv_flow_api.g_varchar2_table(1850) := '4C61796F7574222C2073746174654D616E6167656D656E745F5F636F6F6B69655F5F706174683A20222F22207D290D0A202A0D0A202A092F2F2053544154452F434F4F4B4945204D4554484F44530D0A202A09406578616D706C65206D794C61796F7574';
wwv_flow_api.g_varchar2_table(1851) := '2E73617665436F6F6B6965282022776573742E6973436C6F7365642C6E6F7274682E73697A652C736F7574682E697348696464656E222C207B657870697265733A20377D20293B0D0A202A09406578616D706C65206D794C61796F75742E6C6F6164436F';
wwv_flow_api.g_varchar2_table(1852) := '6F6B696528293B0D0A202A09406578616D706C65206D794C61796F75742E64656C657465436F6F6B696528293B0D0A202A09406578616D706C6520766172204A534F4E203D206D794C61796F75742E72656164537461746528293B092F2F204355525245';
wwv_flow_api.g_varchar2_table(1853) := '4E54204C61796F75742053746174650D0A202A09406578616D706C6520766172204A534F4E203D206D794C61796F75742E72656164436F6F6B696528293B092F2F205341564544204C61796F7574205374617465202866726F6D20636F6F6B6965290D0A';
wwv_flow_api.g_varchar2_table(1854) := '202A09406578616D706C6520766172204A534F4E203D206D794C61796F75742E73746174652E7374617465446174613B092F2F204C415354204C4F41444544204C61796F75742053746174652028636F6F6B696520736176656420696E206C61796F7574';
wwv_flow_api.g_varchar2_table(1855) := '2E73746174652068617368290D0A202A0D0A202A09435553544F4D2053544154452D4D414E4147454D454E54202865672C20736176656420696E2061206461746162617365290D0A202A09406578616D706C6520766172204A534F4E203D206D794C6179';
wwv_flow_api.g_varchar2_table(1856) := '6F75742E726561645374617465282022776573742E6973436C6F7365642C6E6F7274682E73697A652C736F7574682E697348696464656E2220293B0D0A202A09406578616D706C65206D794C61796F75742E6C6F6164537461746528204A534F4E20293B';
wwv_flow_api.g_varchar2_table(1857) := '0D0A202A2F0D0A0D0A2F2F2074656C6C204C61796F757420746861742074686520737461746520706C7567696E20697320617661696C61626C650D0A242E6C61796F75742E706C7567696E732E73746174654D616E6167656D656E74203D20747275653B';
wwv_flow_api.g_varchar2_table(1858) := '0D0A0D0A2F2F094164642053746174652D4D616E6167656D656E74206F7074696F6E7320746F206C61796F75742E64656661756C74730D0A242E6C61796F75742E64656661756C74732E73746174654D616E6167656D656E74203D207B0D0A09656E6162';
wwv_flow_api.g_varchar2_table(1859) := '6C65643A090966616C7365092F2F2074727565203D20656E61626C652073746174652D6D616E6167656D656E742C206576656E206966206E6F74207573696E6720636F6F6B6965730D0A2C096175746F536176653A090974727565092F2F205361766520';
wwv_flow_api.g_varchar2_table(1860) := '612073746174652D636F6F6B6965207768656E20706167652065786974733F0D0A2C096175746F4C6F61643A090974727565092F2F204C6F6164207468652073746174652D636F6F6B6965207768656E204C61796F757420696E6974733F0D0A2C09616E';
wwv_flow_api.g_varchar2_table(1861) := '696D6174654C6F61643A0974727565092F2F20616E696D6174652070616E6573207768656E206C6F6164696E6720737461746520696E746F20616E20616374697665206C61796F75740D0A2C09696E636C7564654368696C6472656E3A2074727565092F';
wwv_flow_api.g_varchar2_table(1862) := '2F207265637572736520696E746F206368696C64206C61796F75747320746F20696E636C7564652074686569722073746174652061732077656C6C0D0A092F2F204C6973742073746174652D6461746120746F2073617665202D206D7573742062652070';
wwv_flow_api.g_varchar2_table(1863) := '616E652D73706563696669630D0A2C0973746174654B6579733A09226E6F7274682E73697A652C736F7574682E73697A652C656173742E73697A652C776573742E73697A652C222B0D0A09090909226E6F7274682E6973436C6F7365642C736F7574682E';
wwv_flow_api.g_varchar2_table(1864) := '6973436C6F7365642C656173742E6973436C6F7365642C776573742E6973436C6F7365642C222B0D0A09090909226E6F7274682E697348696464656E2C736F7574682E697348696464656E2C656173742E697348696464656E2C776573742E6973486964';
wwv_flow_api.g_varchar2_table(1865) := '64656E220D0A2C09636F6F6B69653A207B0D0A09096E616D653A092222092F2F204966206E6F74207370656369666965642C2077696C6C20757365204C61796F75742E6E616D652C20656C7365206A75737420224C61796F7574220D0A092C09646F6D61';
wwv_flow_api.g_varchar2_table(1866) := '696E3A092222092F2F20626C616E6B203D2063757272656E7420646F6D61696E0D0A092C09706174683A092222092F2F20626C616E6B203D2063757272656E7420706167652C20222F22203D20656E7469726520776562736974650D0A092C0965787069';
wwv_flow_api.g_varchar2_table(1867) := '7265733A202222092F2F2027646179732720746F206B65657020636F6F6B6965202D206C6561766520626C616E6B20666F72202773657373696F6E20636F6F6B6965270D0A092C097365637572653A0966616C73650D0A097D0D0A7D3B0D0A0D0A2F2F20';
wwv_flow_api.g_varchar2_table(1868) := '5365742073746174654D616E6167656D656E74206173206120276C61796F75742D6F7074696F6E272C204E4F542061202770616E652D6F7074696F6E270D0A242E6C61796F75742E6F7074696F6E734D61702E6C61796F75742E70757368282273746174';
wwv_flow_api.g_varchar2_table(1869) := '654D616E6167656D656E7422293B0D0A2F2F2055706461746520636F6E66696720736F206C61796F757420646F6573206E6F74206D6F7665206F7074696F6E7320696E746F207468652070616E652D64656661756C74206272616E6368202870616E6573';
wwv_flow_api.g_varchar2_table(1870) := '290D0A242E6C61796F75742E636F6E6669672E6F7074696F6E526F6F744B6579732E70757368282273746174654D616E6167656D656E7422293B0D0A0D0A2F2A0D0A202A095374617465204D616E6167656D656E74206D6574686F64730D0A202A2F0D0A';
wwv_flow_api.g_varchar2_table(1871) := '242E6C61796F75742E7374617465203D207B0D0A0D0A092F2A2A0D0A09202A20476574207468652063757272656E74206C61796F757420737461746520616E64207361766520697420746F206120636F6F6B69650D0A09202A0D0A09202A206D794C6179';
wwv_flow_api.g_varchar2_table(1872) := '6F75742E73617665436F6F6B696528206B6579732C20636F6F6B69654F70747320290D0A09202A0D0A09202A2040706172616D207B4F626A6563747D090909696E73740D0A09202A2040706172616D207B28737472696E677C4172726179293D7D096B65';
wwv_flow_api.g_varchar2_table(1873) := '79730D0A09202A2040706172616D207B4F626A6563743D7D090909636F6F6B69654F7074730D0A09202A2F0D0A0973617665436F6F6B69653A2066756E6374696F6E2028696E73742C206B6579732C20636F6F6B69654F70747329207B0D0A0909766172';
wwv_flow_api.g_varchar2_table(1874) := '206F093D20696E73742E6F7074696F6E730D0A09092C09736D093D206F2E73746174654D616E6167656D656E740D0A09092C096F43093D20242E657874656E6428747275652C207B7D2C20736D2E636F6F6B69652C20636F6F6B69654F707473207C7C20';
wwv_flow_api.g_varchar2_table(1875) := '6E756C6C290D0A09092C0964617461203D20696E73742E73746174652E737461746544617461203D20696E73742E72656164537461746528206B657973207C7C20736D2E73746174654B6579732029202F2F20726561642063757272656E742070616E65';
wwv_flow_api.g_varchar2_table(1876) := '732D73746174650D0A09093B0D0A0909242E75692E636F6F6B69652E777269746528206F432E6E616D65207C7C206F2E6E616D65207C7C20224C61796F7574222C20242E6C61796F75742E73746174652E656E636F64654A534F4E2864617461292C206F';
wwv_flow_api.g_varchar2_table(1877) := '4320293B0D0A090972657475726E20242E657874656E6428747275652C207B7D2C2064617461293B202F2F2072657475726E20434F5059206F662073746174652E73746174654461746120646174610D0A097D0D0A0D0A092F2A2A0D0A09202A2052656D';
wwv_flow_api.g_varchar2_table(1878) := '6F76652074686520737461746520636F6F6B69650D0A09202A0D0A09202A2040706172616D207B4F626A6563747D09696E73740D0A09202A2F0D0A2C0964656C657465436F6F6B69653A2066756E6374696F6E2028696E737429207B0D0A090976617220';
wwv_flow_api.g_varchar2_table(1879) := '6F203D20696E73742E6F7074696F6E733B0D0A0909242E75692E636F6F6B69652E636C65617228206F2E73746174654D616E6167656D656E742E636F6F6B69652E6E616D65207C7C206F2E6E616D65207C7C20224C61796F75742220293B0D0A097D0D0A';
wwv_flow_api.g_varchar2_table(1880) := '0D0A092F2A2A0D0A09202A205265616420262072657475726E20646174612066726F6D2074686520636F6F6B6965202D206173204A534F4E0D0A09202A0D0A09202A2040706172616D207B4F626A6563747D09696E73740D0A09202A2F0D0A2C09726561';
wwv_flow_api.g_varchar2_table(1881) := '64436F6F6B69653A2066756E6374696F6E2028696E737429207B0D0A0909766172206F203D20696E73742E6F7074696F6E733B0D0A09097661722063203D20242E75692E636F6F6B69652E7265616428206F2E73746174654D616E6167656D656E742E63';
wwv_flow_api.g_varchar2_table(1882) := '6F6F6B69652E6E616D65207C7C206F2E6E616D65207C7C20224C61796F75742220293B0D0A09092F2F20636F6E7665727420636F6F6B696520737472696E67206261636B20746F2061206861736820616E642072657475726E2069740D0A090972657475';
wwv_flow_api.g_varchar2_table(1883) := '726E2063203F20242E6C61796F75742E73746174652E6465636F64654A534F4E286329203A207B7D3B0D0A097D0D0A0D0A092F2A2A0D0A09202A2047657420646174612066726F6D2074686520636F6F6B696520616E642055534520495420746F206C6F';
wwv_flow_api.g_varchar2_table(1884) := '616453746174650D0A09202A0D0A09202A2040706172616D207B4F626A6563747D09696E73740D0A09202A2F0D0A2C096C6F6164436F6F6B69653A2066756E6374696F6E2028696E737429207B0D0A09097661722063203D20242E6C61796F75742E7374';
wwv_flow_api.g_varchar2_table(1885) := '6174652E72656164436F6F6B696528696E7374293B202F2F20524541442074686520636F6F6B69650D0A090969662028632026262021242E6973456D7074794F626A656374282063202929207B0D0A090909696E73742E73746174652E73746174654461';
wwv_flow_api.g_varchar2_table(1886) := '7461203D20242E657874656E6428747275652C207B7D2C2063293B202F2F205345542073746174652E7374617465446174610D0A090909696E73742E6C6F616453746174652863293B202F2F204C4F414420746865207265747269657665642073746174';
wwv_flow_api.g_varchar2_table(1887) := '650D0A09097D0D0A090972657475726E20633B0D0A097D0D0A0D0A092F2A2A0D0A09202A20557064617465206C61796F7574206F7074696F6E732066726F6D2074686520636F6F6B69652C206966206F6E65206578697374730D0A09202A0D0A09202A20';
wwv_flow_api.g_varchar2_table(1888) := '40706172616D207B4F626A6563747D0909696E73740D0A09202A2040706172616D207B4F626A6563743D7D09097374617465446174610D0A09202A2040706172616D207B626F6F6C65616E3D7D09616E696D6174650D0A09202A2F0D0A2C096C6F616453';
wwv_flow_api.g_varchar2_table(1889) := '746174653A2066756E6374696F6E2028696E73742C20646174612C206F70747329207B0D0A09096966202821242E6973506C61696E4F626A6563742820646174612029207C7C20242E6973456D7074794F626A6563742820646174612029292072657475';
wwv_flow_api.g_varchar2_table(1890) := '726E3B0D0A0D0A09092F2F206E6F726D616C697A652064617461202620636163686520696E20746865207374617465206F626A6563740D0A090964617461203D20696E73742E73746174652E737461746544617461203D20242E6C61796F75742E747261';
wwv_flow_api.g_varchar2_table(1891) := '6E73666F726D4461746128206461746120293B202F2F2070616E6573203D2064656661756C74207375626B65790D0A0D0A09092F2F20616464206D697373696E672F64656661756C742073746174652D726573746F7265206F7074696F6E730D0A090976';
wwv_flow_api.g_varchar2_table(1892) := '617220736D6F203D20696E73742E6F7074696F6E732E73746174654D616E6167656D656E743B0D0A09096F707473203D20242E657874656E64287B0D0A090909616E696D6174654C6F61643A090966616C7365202F2F736D6F2E616E696D6174654C6F61';
wwv_flow_api.g_varchar2_table(1893) := '640D0A09092C09696E636C7564654368696C6472656E3A09736D6F2E696E636C7564654368696C6472656E0D0A09097D2C206F70747320293B0D0A0D0A09096966202821696E73742E73746174652E696E697469616C697A656429207B0D0A0909092F2A';
wwv_flow_api.g_varchar2_table(1894) := '0D0A090909202A096C61796F7574204E4F5420696E697469616C697A65642C20736F206A7573742075706461746520697473206F7074696F6E730D0A090909202A2F0D0A0909092F2F204D5553542072656D6F76652070616E652E6368696C6472656E20';
wwv_flow_api.g_varchar2_table(1895) := '6B657973206265666F7265206170706C79696E6720746F206F7074696F6E730D0A0909092F2F20757365206120636F707920736F20776520646F6E27742072656D6F7665206B6579732066726F6D206F726967696E616C20646174610D0A090909766172';
wwv_flow_api.g_varchar2_table(1896) := '206F203D20242E657874656E6428747275652C207B7D2C2064617461293B0D0A0909092F2F64656C657465206F2E63656E7465723B202F2F2063656E74657220686173206E6F2073746174652D64617461202D206F6E6C79206368696C6472656E0D0A09';
wwv_flow_api.g_varchar2_table(1897) := '0909242E6561636828242E6C61796F75742E636F6E6669672E616C6C50616E65732C2066756E6374696F6E20286964782C2070616E6529207B0D0A09090909696620286F5B70616E655D292064656C657465206F5B70616E655D2E6368696C6472656E3B';
wwv_flow_api.g_varchar2_table(1898) := '09092020200D0A090909207D293B0D0A0909092F2F207570646174652043555252454E54206C61796F75742D6F7074696F6E73207769746820736176656420737461746520646174610D0A090909242E657874656E6428747275652C20696E73742E6F70';
wwv_flow_api.g_varchar2_table(1899) := '74696F6E732C206F293B0D0A09097D0D0A0909656C7365207B0D0A0909092F2A0D0A090909202A096C61796F757420616C726561647920696E697469616C697A65642C20736F206D6F64696679206C61796F7574277320636F6E66696775726174696F6E';
wwv_flow_api.g_varchar2_table(1900) := '0D0A090909202A2F0D0A090909766172206E6F416E696D617465203D20216F7074732E616E696D6174654C6F61640D0A0909092C096F2C20632C20682C2073746174652C206F70656E0D0A0909093B0D0A090909242E6561636828242E6C61796F75742E';
wwv_flow_api.g_varchar2_table(1901) := '636F6E6669672E626F7264657250616E65732C2066756E6374696F6E20286964782C2070616E6529207B0D0A090909096F203D20646174615B2070616E65205D3B0D0A090909096966202821242E6973506C61696E4F626A65637428206F202929207265';
wwv_flow_api.g_varchar2_table(1902) := '7475726E3B202F2F206E6F206B65792C20736B69702070616E650D0A0D0A0909090973093D206F2E73697A653B0D0A0909090963093D206F2E696E6974436C6F7365643B0D0A0909090968093D206F2E696E697448696464656E3B0D0A09090909617209';
wwv_flow_api.g_varchar2_table(1903) := '3D206F2E6175746F526573697A650D0A090909097374617465093D20696E73742E73746174655B70616E655D3B0D0A090909096F70656E093D2073746174652E697356697369626C653B0D0A0D0A090909092F2F207265736574206175746F526573697A';
wwv_flow_api.g_varchar2_table(1904) := '650D0A09090909696620286172290D0A090909090973746174652E6175746F526573697A65203D2061723B0D0A090909092F2F20726573697A65204245464F5245206F70656E696E670D0A0909090969662028216F70656E290D0A0909090909696E7374';
wwv_flow_api.g_varchar2_table(1905) := '2E5F73697A6550616E652870616E652C20732C2066616C73652C2066616C73652C2066616C7365293B202F2F2066616C73653D736B697043616C6C6261636B2F6E6F416E696D6174696F6E2F666F726365526573697A650D0A090909092F2F206F70656E';
wwv_flow_api.g_varchar2_table(1906) := '2F636C6F7365206173206E6563657373617279202D20444F204E4F54204348414E47452054484953204F52444552210D0A090909096966202868203D3D3D207472756529090909696E73742E686964652870616E652C206E6F416E696D617465293B0D0A';
wwv_flow_api.g_varchar2_table(1907) := '09090909656C7365206966202863203D3D3D20747275652909696E73742E636C6F73652870616E652C2066616C73652C206E6F416E696D617465293B0D0A09090909656C7365206966202863203D3D3D2066616C73652909696E73742E6F70656E202870';
wwv_flow_api.g_varchar2_table(1908) := '616E652C2066616C73652C206E6F416E696D617465293B0D0A09090909656C7365206966202868203D3D3D2066616C73652909696E73742E73686F77202870616E652C2066616C73652C206E6F416E696D617465293B0D0A090909092F2F20726573697A';
wwv_flow_api.g_varchar2_table(1909) := '6520414654455220616E79206F7468657220616374696F6E730D0A09090909696620286F70656E290D0A0909090909696E73742E5F73697A6550616E652870616E652C20732C2066616C73652C2066616C73652C206E6F416E696D617465293B202F2F20';
wwv_flow_api.g_varchar2_table(1910) := '616E696D61746520726573697A65206966206F7074696F6E207061737365640D0A0909097D293B0D0A0D0A0909092F2A0D0A090909202A095245435552534520494E544F204348494C442D4C41594F5554530D0A090909202A2F0D0A090909696620286F';
wwv_flow_api.g_varchar2_table(1911) := '7074732E696E636C7564654368696C6472656E29207B0D0A090909097661722070616E6553746174654368696C6472656E2C206368696C6453746174653B0D0A09090909242E6561636828696E73742E6368696C6472656E2C2066756E6374696F6E2028';
wwv_flow_api.g_varchar2_table(1912) := '70616E652C2070616E654368696C6472656E29207B0D0A090909090970616E6553746174654368696C6472656E203D20646174615B70616E655D203F20646174615B70616E655D2E6368696C6472656E203A20303B0D0A09090909096966202870616E65';
wwv_flow_api.g_varchar2_table(1913) := '53746174654368696C6472656E2026262070616E654368696C6472656E29207B0D0A090909090909242E656163682870616E654368696C6472656E2C2066756E6374696F6E202873746174654B65792C206368696C6429207B0D0A090909090909096368';
wwv_flow_api.g_varchar2_table(1914) := '696C645374617465203D2070616E6553746174654368696C6472656E5B73746174654B65795D3B0D0A09090909090909696620286368696C64202626206368696C645374617465290D0A09090909090909096368696C642E6C6F61645374617465282063';
wwv_flow_api.g_varchar2_table(1915) := '68696C64537461746520293B0D0A0909090909097D293B0D0A09090909097D0D0A090909097D293B0D0A0909097D0D0A09097D0D0A097D0D0A0D0A092F2A2A0D0A09202A2047657420746865202A63757272656E74206C61796F75742073746174652A20';
wwv_flow_api.g_varchar2_table(1916) := '616E642072657475726E206974206173206120686173680D0A09202A0D0A09202A2040706172616D207B4F626A6563743D7D0909696E7374092F2F204C61796F757420696E7374616E636520746F2067657420737461746520666F720D0A09202A204070';
wwv_flow_api.g_varchar2_table(1917) := '6172616D207B6F626A6563743D7D09095B6F7074735D092F2F2053746174652D4D616E6167656D656E7473206F76657272696465206F7074696F6E730D0A09202A2F0D0A2C097265616453746174653A2066756E6374696F6E2028696E73742C206F7074';
wwv_flow_api.g_varchar2_table(1918) := '7329207B0D0A09092F2F206261636B7761726420636F6D706174696C6974790D0A090969662028242E74797065286F70747329203D3D3D2027737472696E672729206F707473203D207B206B6579733A206F707473207D3B0D0A090969662028216F7074';
wwv_flow_api.g_varchar2_table(1919) := '7329206F707473203D207B7D3B0D0A090976617209736D09093D20696E73742E6F7074696F6E732E73746174654D616E6167656D656E740D0A09092C09696309093D206F7074732E696E636C7564654368696C6472656E0D0A09092C0972656375727365';
wwv_flow_api.g_varchar2_table(1920) := '093D20696320213D3D20756E646566696E6564203F206963203A20736D2E696E636C7564654368696C6472656E0D0A09092C096B657973093D206F7074732E73746174654B657973207C7C20736D2E73746174654B6579730D0A09092C09616C7409093D';
wwv_flow_api.g_varchar2_table(1921) := '207B206973436C6F7365643A2027696E6974436C6F736564272C20697348696464656E3A2027696E697448696464656E27207D0D0A09092C097374617465093D20696E73742E73746174650D0A09092C0970616E6573093D20242E6C61796F75742E636F';
wwv_flow_api.g_varchar2_table(1922) := '6E6669672E616C6C50616E65730D0A09092C0964617461093D207B7D0D0A09092C09706169722C2070616E652C206B65792C2076616C0D0A09092C0970732C2070432C206368696C642C2061727261792C20636F756E742C206272616E63680D0A09093B';
wwv_flow_api.g_varchar2_table(1923) := '0D0A090969662028242E69734172726179286B6579732929206B657973203D206B6579732E6A6F696E28222C22293B0D0A09092F2F20636F6E76657274206B65797320746F20616E20617272617920616E64206368616E67652064656C696D6974657273';
wwv_flow_api.g_varchar2_table(1924) := '2066726F6D20275F5F2720746F20272E270D0A09096B657973203D206B6579732E7265706C616365282F5F5F2F672C20222E22292E73706C697428272C27293B0D0A09092F2F206C6F6F70206B65797320616E6420637265617465206120646174612068';
wwv_flow_api.g_varchar2_table(1925) := '6173680D0A0909666F72202876617220693D302C206E3D6B6579732E6C656E6774683B2069203C206E3B20692B2B29207B0D0A09090970616972203D206B6579735B695D2E73706C697428222E22293B0D0A09090970616E65203D20706169725B305D3B';
wwv_flow_api.g_varchar2_table(1926) := '0D0A0909096B657920203D20706169725B315D3B0D0A09090969662028242E696E41727261792870616E652C2070616E657329203C20302920636F6E74696E75653B202F2F206261642070616E65210D0A09090976616C203D2073746174655B2070616E';
wwv_flow_api.g_varchar2_table(1927) := '65205D5B206B6579205D3B0D0A0909096966202876616C203D3D20756E646566696E65642920636F6E74696E75653B0D0A090909696620286B65793D3D226973436C6F736564222026262073746174655B70616E655D5B226973536C6964696E67225D29';
wwv_flow_api.g_varchar2_table(1928) := '0D0A0909090976616C203D20747275653B202F2F20696620736C6964696E672C207468656E202A7265616C6C792A206973436C6F7365640D0A0909092820646174615B70616E655D207C7C2028646174615B70616E655D3D7B7D2920295B20616C745B6B';
wwv_flow_api.g_varchar2_table(1929) := '65795D203F20616C745B6B65795D203A206B6579205D203D2076616C3B0D0A09097D0D0A0D0A09092F2F207265637572736520696E746F20746865206368696C642D6C61796F75747320666F7220656163682070616E650D0A0909696620287265637572';
wwv_flow_api.g_varchar2_table(1930) := '736529207B0D0A090909242E656163682870616E65732C2066756E6374696F6E20286964782C2070616E6529207B0D0A090909097043203D20696E73742E6368696C6472656E5B70616E655D3B0D0A090909097073203D2073746174652E737461746544';
wwv_flow_api.g_varchar2_table(1931) := '6174615B70616E655D3B0D0A0909090969662028242E6973506C61696E4F626A6563742820704320292026262021242E6973456D7074794F626A65637428207043202929207B0D0A09090909092F2F20656E737572652061206B65792065786973747320';
wwv_flow_api.g_varchar2_table(1932) := '666F722074686973202770616E65272C2065673A206272616E6368203D20646174612E63656E7465720D0A09090909096272616E6368203D20646174615B70616E655D207C7C2028646174615B70616E655D203D207B7D293B0D0A090909090969662028';
wwv_flow_api.g_varchar2_table(1933) := '216272616E63682E6368696C6472656E29206272616E63682E6368696C6472656E203D207B7D3B0D0A0909090909242E65616368282070432C2066756E6374696F6E20286B65792C206368696C6429207B0D0A0909090909092F2F204F4E4C5920726561';
wwv_flow_api.g_varchar2_table(1934) := '642073746174652066726F6D20616E20696E697469616C697A65206C61796F75740D0A09090909090969662028206368696C642E73746174652E696E697469616C697A656420290D0A090909090909096272616E63682E6368696C6472656E5B206B6579';
wwv_flow_api.g_varchar2_table(1935) := '205D203D20242E6C61796F75742E73746174652E72656164537461746528206368696C6420293B0D0A0909090909092F2F20696620776520686176652050524556494F555320286F6E4C6F61642920737461746520666F722074686973206368696C642D';
wwv_flow_api.g_varchar2_table(1936) := '6C61796F75742C204B454550204954210D0A090909090909656C736520696620282070732026262070732E6368696C6472656E2026262070732E6368696C6472656E5B206B6579205D2029207B0D0A090909090909096272616E63682E6368696C647265';
wwv_flow_api.g_varchar2_table(1937) := '6E5B206B6579205D203D20242E657874656E6428747275652C207B7D2C2070732E6368696C6472656E5B206B6579205D20293B0D0A0909090909097D0D0A09090909097D293B0D0A090909097D0D0A0909097D293B0D0A09097D0D0A0D0A090972657475';
wwv_flow_api.g_varchar2_table(1938) := '726E20646174613B0D0A097D0D0A0D0A092F2A2A0D0A09202A09537472696E676966792061204A534F4E206861736820736F2063616E207361766520696E206120636F6F6B6965206F722064622D6669656C640D0A09202A2F0D0A2C09656E636F64654A';
wwv_flow_api.g_varchar2_table(1939) := '534F4E3A2066756E6374696F6E20286A736F6E29207B0D0A0909766172206C6F63616C203D2077696E646F772E4A534F4E207C7C207B7D3B0D0A090972657475726E20286C6F63616C2E737472696E67696679207C7C20737472696E6769667929286A73';
wwv_flow_api.g_varchar2_table(1940) := '6F6E293B0D0A0D0A090966756E6374696F6E20737472696E6769667920286829207B0D0A09090976617220443D5B5D2C20693D302C206B2C20762C2074202F2F206B203D206B65792C2076203D2076616C75650D0A0909092C0961203D20242E69734172';
wwv_flow_api.g_varchar2_table(1941) := '7261792868290D0A0909093B0D0A090909666F7220286B20696E206829207B0D0A0909090976203D20685B6B5D3B0D0A0909090974203D20747970656F6620763B0D0A090909096966202874203D3D2027737472696E67272909092F2F20535452494E47';
wwv_flow_api.g_varchar2_table(1942) := '202D206164642071756F7465730D0A090909090976203D202722272B2076202B2722273B0D0A09090909656C7365206966202874203D3D20276F626A6563742729092F2F205355422D4B4559202D207265637572736520696E746F2069740D0A09090909';
wwv_flow_api.g_varchar2_table(1943) := '0976203D2070617273652876293B0D0A09090909445B692B2B5D203D20282161203F202722272B206B202B27223A27203A20272729202B20763B0D0A0909097D0D0A09090972657475726E202861203F20275B27203A20277B2729202B20442E6A6F696E';
wwv_flow_api.g_varchar2_table(1944) := '28272C2729202B202861203F20275D27203A20277D27293B0D0A09097D3B0D0A097D0D0A0D0A092F2A2A0D0A09202A09436F6E7665727420737472696E676966696564204A534F4E206261636B20746F20612068617368206F626A6563740D0A09202A09';
wwv_flow_api.g_varchar2_table(1945) := '407365650909242E70617273654A534F4E28292C20616464696E6720696E206A517565727920312E342E310D0A09202A2F0D0A2C096465636F64654A534F4E3A2066756E6374696F6E202873747229207B0D0A0909747279207B2072657475726E20242E';
wwv_flow_api.g_varchar2_table(1946) := '70617273654A534F4E203F20242E70617273654A534F4E2873747229203A2077696E646F775B226576616C225D282228222B20737472202B22292229207C7C207B7D3B207D0D0A0909636174636820286529207B2072657475726E207B7D3B207D0D0A09';
wwv_flow_api.g_varchar2_table(1947) := '7D0D0A0D0A0D0A2C095F6372656174653A2066756E6374696F6E2028696E737429207B0D0A09097661722073093D20242E6C61796F75742E73746174650D0A09092C096F093D20696E73742E6F7074696F6E730D0A09092C09736D093D206F2E73746174';
wwv_flow_api.g_varchar2_table(1948) := '654D616E6167656D656E740D0A09093B0D0A09092F2F094144442053746174652D4D616E6167656D656E7420706C7567696E206D6574686F647320746F20696E73740D0A090920242E657874656E642820696E73742C207B0D0A09092F2F097265616443';
wwv_flow_api.g_varchar2_table(1949) := '6F6F6B6965202D20757064617465206F7074696F6E732066726F6D20636F6F6B6965202D2072657475726E732068617368206F6620636F6F6B696520646174610D0A09090972656164436F6F6B69653A090966756E6374696F6E202829207B2072657475';
wwv_flow_api.g_varchar2_table(1950) := '726E20732E72656164436F6F6B696528696E7374293B207D0D0A09092F2F0964656C657465436F6F6B69650D0A09092C0964656C657465436F6F6B69653A0966756E6374696F6E202829207B20732E64656C657465436F6F6B696528696E7374293B207D';
wwv_flow_api.g_varchar2_table(1951) := '0D0A09092F2F0973617665436F6F6B6965202D206F7074696F6E616C6C792070617373206B6579732D6C69737420616E6420636F6F6B69652D6F7074696F6E73202868617368290D0A09092C0973617665436F6F6B69653A090966756E6374696F6E2028';
wwv_flow_api.g_varchar2_table(1952) := '6B6579732C20636F6F6B69654F70747329207B2072657475726E20732E73617665436F6F6B696528696E73742C206B6579732C20636F6F6B69654F707473293B207D0D0A09092F2F096C6F6164436F6F6B6965202D2072656164436F6F6B696520616E64';
wwv_flow_api.g_varchar2_table(1953) := '2075736520746F206C6F616453746174652829202D2072657475726E732068617368206F6620636F6F6B696520646174610D0A09092C096C6F6164436F6F6B69653A090966756E6374696F6E202829207B2072657475726E20732E6C6F6164436F6F6B69';
wwv_flow_api.g_varchar2_table(1954) := '6528696E7374293B207D0D0A09092F2F096C6F61645374617465202D207061737320612068617368206F6620737461746520746F2075736520746F20757064617465206F7074696F6E730D0A09092C096C6F616453746174653A090966756E6374696F6E';
wwv_flow_api.g_varchar2_table(1955) := '20287374617465446174612C206F70747329207B20732E6C6F6164537461746528696E73742C207374617465446174612C206F707473293B207D0D0A09092F2F09726561645374617465202D2072657475726E732068617368206F662063757272656E74';
wwv_flow_api.g_varchar2_table(1956) := '206C61796F75742D73746174650D0A09092C097265616453746174653A090966756E6374696F6E20286B65797329207B2072657475726E20732E72656164537461746528696E73742C206B657973293B207D0D0A09092F2F09616464204A534F4E207574';
wwv_flow_api.g_varchar2_table(1957) := '696C697479206D6574686F647320746F6F2E2E2E0D0A09092C09656E636F64654A534F4E3A0909732E656E636F64654A534F4E0D0A09092C096465636F64654A534F4E3A0909732E6465636F64654A534F4E0D0A09097D293B0D0A0D0A09092F2F20696E';
wwv_flow_api.g_varchar2_table(1958) := '69742073746174652E737461746544617461206B65792C206576656E20696620706C7567696E20697320696E697469616C6C792064697361626C65640D0A0909696E73742E73746174652E737461746544617461203D207B7D3B0D0A0D0A09092F2F2061';
wwv_flow_api.g_varchar2_table(1959) := '75746F4C6F6164204D555354204245206F6E65206F663A20646174612D61727261792C20646174612D686173682C2063616C6C6261636B2D66756E6374696F6E2C206F7220545255450D0A0909696620282021736D2E6175746F4C6F6164202920726574';
wwv_flow_api.g_varchar2_table(1960) := '75726E3B0D0A0D0A09092F2F095768656E2073746174652D646174612065786973747320696E20746865206175746F4C6F6164206B6579205553452049542C0D0A09092F2F096576656E2069662073746174654D616E6167656D656E742E656E61626C65';
wwv_flow_api.g_varchar2_table(1961) := '64203D3D2066616C73650D0A090969662028242E6973506C61696E4F626A6563742820736D2E6175746F4C6F6164202929207B0D0A0909096966202821242E6973456D7074794F626A6563742820736D2E6175746F4C6F6164202929207B0D0A09090909';
wwv_flow_api.g_varchar2_table(1962) := '696E73742E6C6F616453746174652820736D2E6175746F4C6F616420293B0D0A0909097D0D0A09097D0D0A0909656C7365206966202820736D2E656E61626C65642029207B0D0A0909092F2F2075706461746520746865206F7074696F6E732066726F6D';
wwv_flow_api.g_varchar2_table(1963) := '20636F6F6B6965206F722063616C6C6261636B0D0A0909092F2F206966206F7074696F6E7320697320612066756E6374696F6E2C2063616C6C20697420746F20676574207374617465446174610D0A09090969662028242E697346756E6374696F6E2820';
wwv_flow_api.g_varchar2_table(1964) := '736D2E6175746F4C6F6164202929207B0D0A090909097661722064203D207B7D3B0D0A09090909747279207B0D0A090909090964203D20736D2E6175746F4C6F61642820696E73742C20696E73742E73746174652C20696E73742E6F7074696F6E732C20';
wwv_flow_api.g_varchar2_table(1965) := '696E73742E6F7074696F6E732E6E616D65207C7C20272720293B202F2F2074727920746F2067657420646174612066726F6D20666E0D0A090909097D20636174636820286529207B7D0D0A09090909696620286420262620242E6973506C61696E4F626A';
wwv_flow_api.g_varchar2_table(1966) := '65637428206420292026262021242E6973456D7074794F626A6563742820642029290D0A0909090909696E73742E6C6F616453746174652864293B0D0A0909097D0D0A090909656C7365202F2F20616E79206F74686572207472757468792076616C7565';
wwv_flow_api.g_varchar2_table(1967) := '2077696C6C2074726967676572206C6F6164436F6F6B69650D0A09090909696E73742E6C6F6164436F6F6B696528293B0D0A09097D0D0A097D0D0A0D0A2C095F756E6C6F61643A2066756E6374696F6E2028696E737429207B0D0A090976617220736D20';
wwv_flow_api.g_varchar2_table(1968) := '3D20696E73742E6F7074696F6E732E73746174654D616E6167656D656E743B0D0A090969662028736D2E656E61626C656420262620736D2E6175746F5361766529207B0D0A0909092F2F206966206F7074696F6E7320697320612066756E6374696F6E2C';
wwv_flow_api.g_varchar2_table(1969) := '2063616C6C20697420746F207361766520746865207374617465446174610D0A09090969662028242E697346756E6374696F6E2820736D2E6175746F53617665202929207B0D0A09090909747279207B0D0A0909090909736D2E6175746F536176652820';
wwv_flow_api.g_varchar2_table(1970) := '696E73742C20696E73742E73746174652C20696E73742E6F7074696F6E732C20696E73742E6F7074696F6E732E6E616D65207C7C20272720293B202F2F2074727920746F2067657420646174612066726F6D20666E0D0A090909097D2063617463682028';
wwv_flow_api.g_varchar2_table(1971) := '6529207B7D0D0A0909097D0D0A090909656C7365202F2F20616E79207472757468792076616C75652077696C6C20747269676765722073617665436F6F6B69650D0A09090909696E73742E73617665436F6F6B696528293B0D0A09097D0D0A097D0D0A0D';
wwv_flow_api.g_varchar2_table(1972) := '0A7D3B0D0A0D0A2F2F2061646420737461746520696E697469616C697A6174696F6E206D6574686F6420746F204C61796F75742773206F6E437265617465206172726179206F662066756E6374696F6E730D0A242E6C61796F75742E6F6E437265617465';
wwv_flow_api.g_varchar2_table(1973) := '2E707573682820242E6C61796F75742E73746174652E5F63726561746520293B0D0A242E6C61796F75742E6F6E556E6C6F61642E707573682820242E6C61796F75742E73746174652E5F756E6C6F616420293B0D0A0D0A7D2928206A517565727920293B';
wwv_flow_api.g_varchar2_table(1974) := '0D0A0D0A0D0A0D0A2F2A2A0D0A202A20407072657365727665206A71756572792E6C61796F75742E627574746F6E7320312E300D0A202A2024446174653A20323031312D30372D31362030383A30303A303020285361742C203136204A756C7920323031';
wwv_flow_api.g_varchar2_table(1975) := '312920240D0A202A0D0A202A20436F70797269676874202863292032303131200D0A202A2020204B6576696E2044616C6D616E2028687474703A2F2F616C6C70726F2E6E6574290D0A202A0D0A202A204475616C206C6963656E73656420756E64657220';
wwv_flow_api.g_varchar2_table(1976) := '7468652047504C2028687474703A2F2F7777772E676E752E6F72672F6C6963656E7365732F67706C2E68746D6C290D0A202A20616E64204D49542028687474703A2F2F7777772E6F70656E736F757263652E6F72672F6C6963656E7365732F6D69742D6C';
wwv_flow_api.g_varchar2_table(1977) := '6963656E73652E70687029206C6963656E7365732E0D0A202A0D0A202A2040646570656E64616E636965733A205549204C61796F757420312E332E302E726333302E31206F72206869676865720D0A202A0D0A202A2040737570706F72743A2068747470';
wwv_flow_api.g_varchar2_table(1978) := '3A2F2F67726F7570732E676F6F676C652E636F6D2F67726F75702F6A71756572792D75692D6C61796F75740D0A202A0D0A202A20446F63733A205B20746F20636F6D65205D0D0A202A20546970733A205B20746F20636F6D65205D0D0A202A2F0D0A3B28';
wwv_flow_api.g_varchar2_table(1979) := '66756E6374696F6E20282429207B0D0A0D0A6966202821242E6C61796F7574292072657475726E3B0D0A0D0A0D0A2F2F2074656C6C204C61796F757420746861742074686520737461746520706C7567696E20697320617661696C61626C650D0A242E6C';
wwv_flow_api.g_varchar2_table(1980) := '61796F75742E706C7567696E732E627574746F6E73203D20747275653B0D0A0D0A2F2F094164642053746174652D4D616E6167656D656E74206F7074696F6E7320746F206C61796F75742E64656661756C74730D0A242E6C61796F75742E64656661756C';
wwv_flow_api.g_varchar2_table(1981) := '74732E6175746F42696E64437573746F6D427574746F6E73203D2066616C73653B0D0A2F2F205365742073746174654D616E6167656D656E742061732061206C61796F75742D6F7074696F6E2C204E4F5420612070616E652D6F7074696F6E0D0A242E6C';
wwv_flow_api.g_varchar2_table(1982) := '61796F75742E6F7074696F6E734D61702E6C61796F75742E7075736828226175746F42696E64437573746F6D427574746F6E7322293B0D0A0D0A2F2A0D0A202A09427574746F6E206D6574686F64730D0A202A2F0D0A242E6C61796F75742E627574746F';
wwv_flow_api.g_varchar2_table(1983) := '6E73203D207B0D0A092F2F2073657420646174612075736564206279206D756C7469706C65206D6574686F64732062656C6F770D0A09636F6E6669673A207B0D0A0909626F7264657250616E65733A09226E6F7274682C736F7574682C776573742C6561';
wwv_flow_api.g_varchar2_table(1984) := '7374220D0A097D0D0A0D0A092F2A2A0D0A092A20536561726368657320666F72202E75692D6C61796F75742D627574746F6E2D78787820656C656D656E747320616E64206175746F2D62696E6473207468656D206173206C61796F75742D627574746F6E';
wwv_flow_api.g_varchar2_table(1985) := '730D0A092A0D0A092A204073656520205F63726561746528290D0A092A2F0D0A2C09696E69743A2066756E6374696F6E2028696E737429207B0D0A09097661722070726509093D202275692D6C61796F75742D627574746F6E2D220D0A09092C096C6179';
wwv_flow_api.g_varchar2_table(1986) := '6F7574093D20696E73742E6F7074696F6E732E6E616D65207C7C2022220D0A09092C096E616D653B0D0A0909242E656163682822746F67676C652C6F70656E2C636C6F73652C70696E2C746F67676C652D736C6964652C6F70656E2D736C696465222E73';
wwv_flow_api.g_varchar2_table(1987) := '706C697428222C22292C2066756E6374696F6E2028692C20616374696F6E29207B0D0A090909242E6561636828242E6C61796F75742E627574746F6E732E636F6E6669672E626F7264657250616E65732E73706C697428222C22292C2066756E6374696F';
wwv_flow_api.g_varchar2_table(1988) := '6E202869692C2070616E6529207B0D0A090909092428222E222B7072652B616374696F6E2B222D222B70616E65292E656163682866756E6374696F6E28297B0D0A09090909092F2F20696620627574746F6E207761732070726576696F75736C79202762';
wwv_flow_api.g_varchar2_table(1989) := '6F756E64272C20646174612E6C61796F75744E616D6520776173207365742C2062757420697320626C616E6B206966206C61796F757420686173206E6F20276E616D65270D0A09090909096E616D65203D20242874686973292E6461746128226C61796F';
wwv_flow_api.g_varchar2_table(1990) := '75744E616D652229207C7C20242874686973292E6174747228226C61796F75744E616D6522293B0D0A0909090909696620286E616D65203D3D20756E646566696E6564207C7C206E616D65203D3D3D206C61796F7574290D0A090909090909696E73742E';
wwv_flow_api.g_varchar2_table(1991) := '62696E64427574746F6E28746869732C20616374696F6E2C2070616E65293B0D0A090909097D293B0D0A0909097D293B0D0A09097D293B0D0A097D0D0A0D0A092F2A2A0D0A092A2048656C7065722066756E6374696F6E20746F2076616C696461746520';
wwv_flow_api.g_varchar2_table(1992) := '706172616D7320726563656976656420627920616464427574746F6E207574696C69746965730D0A092A0D0A092A2054776F20636C61737365732061726520616464656420746F2074686520656C656D656E742C206261736564206F6E20746865206275';
wwv_flow_api.g_varchar2_table(1993) := '74746F6E436C6173732E2E2E0D0A092A205468652074797065206F6620627574746F6E20697320617070656E64656420746F206372656174652074686520326E6420636C6173734E616D653A0D0A092A20202D2075692D6C61796F75742D627574746F6E';
wwv_flow_api.g_varchar2_table(1994) := '2D70696E0D0A092A20202D2075692D6C61796F75742D70616E652D627574746F6E2D746F67676C650D0A092A20202D2075692D6C61796F75742D70616E652D627574746F6E2D6F70656E0D0A092A20202D2075692D6C61796F75742D70616E652D627574';
wwv_flow_api.g_varchar2_table(1995) := '746F6E2D636C6F73650D0A092A0D0A092A2040706172616D20207B28737472696E677C214F626A656374297D0973656C6563746F72096A51756572792073656C6563746F7220286F7220656C656D656E742920666F7220627574746F6E2C2065673A2022';
wwv_flow_api.g_varchar2_table(1996) := '2E75692D6C61796F75742D6E6F727468202E746F67676C652D627574746F6E220D0A092A2040706172616D20207B737472696E677D20202009090970616E652009094E616D65206F66207468652070616E652074686520627574746F6E20697320666F72';
wwv_flow_api.g_varchar2_table(1997) := '3A20276E6F727468272C2027736F757468272C206574632E0D0A092A204072657475726E207B41727261792E3C4F626A6563743E7D0909496620626F746820706172616D732076616C69642C2074686520656C656D656E74206D61746368696E67202773';
wwv_flow_api.g_varchar2_table(1998) := '656C6563746F722720696E2061206A51756572792077726170706572202D206F74686572776973652072657475726E73206E756C6C0D0A092A2F0D0A2C096765743A2066756E6374696F6E2028696E73742C2073656C6563746F722C2070616E652C2061';
wwv_flow_api.g_varchar2_table(1999) := '6374696F6E29207B0D0A0909766172202445093D20242873656C6563746F72290D0A09092C096F093D20696E73742E6F7074696F6E730D0A09092F2F2C09657272093D206F2E73686F774572726F724D657373616765730D0A09093B0D0A090969662028';
wwv_flow_api.g_varchar2_table(2000) := '24452E6C656E67746820262620242E6C61796F75742E627574746F6E732E636F6E6669672E626F7264657250616E65732E696E6465784F662870616E6529203E3D203029207B0D0A0909097661722062746E203D206F5B70616E655D2E627574746F6E43';
wwv_flow_api.g_varchar2_table(2001) := '6C617373202B222D222B20616374696F6E3B0D0A0909092445092E616464436C617373282062746E202B2220222B2062746E202B222D222B2070616E6520290D0A090909092E6461746128226C61796F75744E616D65222C206F2E6E616D65293B202F2F';
wwv_flow_api.g_varchar2_table(2002) := '20616464206C61796F7574206964656E746966696572202D206576656E20696620626C616E6B210D0A09097D0D0A090972657475726E2024453B0D0A097D0D0A0D0A0D0A092F2A2A0D0A092A204E45572073796E74617820666F722062696E64696E6720';
wwv_flow_api.g_varchar2_table(2003) := '6C61796F75742D627574746F6E73202D2077696C6C206576656E7475616C6C79207265706C61636520616464546F67676C652C206164644F70656E2C206574632E0D0A092A0D0A092A2040706172616D207B28737472696E677C214F626A656374297D09';
wwv_flow_api.g_varchar2_table(2004) := '73656C09096A51756572792073656C6563746F7220286F7220656C656D656E742920666F7220627574746F6E2C2065673A20222E75692D6C61796F75742D6E6F727468202E746F67676C652D627574746F6E220D0A092A2040706172616D207B73747269';
wwv_flow_api.g_varchar2_table(2005) := '6E677D090909616374696F6E0D0A092A2040706172616D207B737472696E677D09090970616E650D0A092A2F0D0A2C0962696E643A2066756E6374696F6E2028696E73742C2073656C2C20616374696F6E2C2070616E6529207B0D0A0909766172205F20';
wwv_flow_api.g_varchar2_table(2006) := '3D20242E6C61796F75742E627574746F6E733B0D0A09097377697463682028616374696F6E2E746F4C6F77657243617365282929207B0D0A090909636173652022746F67676C65223A0909095F2E616464546F67676C650928696E73742C2073656C2C20';
wwv_flow_api.g_varchar2_table(2007) := '70616E65293B20627265616B3B090D0A0909096361736520226F70656E223A0909095F2E6164644F70656E0928696E73742C2073656C2C2070616E65293B20627265616B3B0D0A090909636173652022636C6F7365223A0909095F2E616464436C6F7365';
wwv_flow_api.g_varchar2_table(2008) := '0928696E73742C2073656C2C2070616E65293B20627265616B3B0D0A09090963617365202270696E223A090909095F2E61646450696E0928696E73742C2073656C2C2070616E65293B20627265616B3B0D0A090909636173652022746F67676C652D736C';
wwv_flow_api.g_varchar2_table(2009) := '696465223A095F2E616464546F67676C650928696E73742C2073656C2C2070616E652C2074727565293B20627265616B3B090D0A0909096361736520226F70656E2D736C696465223A09095F2E6164644F70656E0928696E73742C2073656C2C2070616E';
wwv_flow_api.g_varchar2_table(2010) := '652C2074727565293B20627265616B3B0D0A09097D0D0A090972657475726E20696E73743B0D0A097D0D0A0D0A092F2A2A0D0A092A20416464206120637573746F6D20546F67676C657220627574746F6E20666F7220612070616E650D0A092A0D0A092A';
wwv_flow_api.g_varchar2_table(2011) := '2040706172616D207B28737472696E677C214F626A656374297D0973656C6563746F72096A51756572792073656C6563746F7220286F7220656C656D656E742920666F7220627574746F6E2C2065673A20222E75692D6C61796F75742D6E6F727468202E';
wwv_flow_api.g_varchar2_table(2012) := '746F67676C652D627574746F6E220D0A092A2040706172616D207B737472696E677D202009090970616E652009094E616D65206F66207468652070616E652074686520627574746F6E20697320666F723A20276E6F727468272C2027736F757468272C20';
wwv_flow_api.g_varchar2_table(2013) := '6574632E0D0A092A2040706172616D207B626F6F6C65616E3D7D090909736C69646520090974727565203D20736C6964652D6F70656E2C2066616C7365203D2070696E2D6F70656E0D0A092A2F0D0A2C09616464546F67676C653A2066756E6374696F6E';
wwv_flow_api.g_varchar2_table(2014) := '2028696E73742C2073656C6563746F722C2070616E652C20736C69646529207B0D0A0909242E6C61796F75742E627574746F6E732E67657428696E73742C2073656C6563746F722C2070616E652C2022746F67676C6522290D0A0909092E636C69636B28';
wwv_flow_api.g_varchar2_table(2015) := '66756E6374696F6E28657674297B0D0A09090909696E73742E746F67676C652870616E652C202121736C696465293B0D0A090909096576742E73746F7050726F7061676174696F6E28293B0D0A0909097D293B0D0A090972657475726E20696E73743B0D';
wwv_flow_api.g_varchar2_table(2016) := '0A097D0D0A0D0A092F2A2A0D0A092A20416464206120637573746F6D204F70656E20627574746F6E20666F7220612070616E650D0A092A0D0A092A2040706172616D207B28737472696E677C214F626A656374297D0973656C6563746F72096A51756572';
wwv_flow_api.g_varchar2_table(2017) := '792073656C6563746F7220286F7220656C656D656E742920666F7220627574746F6E2C2065673A20222E75692D6C61796F75742D6E6F727468202E746F67676C652D627574746F6E220D0A092A2040706172616D207B737472696E677D09090970616E65';
wwv_flow_api.g_varchar2_table(2018) := '2009094E616D65206F66207468652070616E652074686520627574746F6E20697320666F723A20276E6F727468272C2027736F757468272C206574632E0D0A092A2040706172616D207B626F6F6C65616E3D7D090909736C69646520090974727565203D';
wwv_flow_api.g_varchar2_table(2019) := '20736C6964652D6F70656E2C2066616C7365203D2070696E2D6F70656E0D0A092A2F0D0A2C096164644F70656E3A2066756E6374696F6E2028696E73742C2073656C6563746F722C2070616E652C20736C69646529207B0D0A0909242E6C61796F75742E';
wwv_flow_api.g_varchar2_table(2020) := '627574746F6E732E67657428696E73742C2073656C6563746F722C2070616E652C20226F70656E22290D0A0909092E6174747228227469746C65222C20696E73742E6F7074696F6E735B70616E655D2E746970732E4F70656E290D0A0909092E636C6963';
wwv_flow_api.g_varchar2_table(2021) := '6B2866756E6374696F6E202865767429207B0D0A09090909696E73742E6F70656E2870616E652C202121736C696465293B0D0A090909096576742E73746F7050726F7061676174696F6E28293B0D0A0909097D293B0D0A090972657475726E20696E7374';
wwv_flow_api.g_varchar2_table(2022) := '3B0D0A097D0D0A0D0A092F2A2A0D0A092A20416464206120637573746F6D20436C6F736520627574746F6E20666F7220612070616E650D0A092A0D0A092A2040706172616D207B28737472696E677C214F626A656374297D0973656C6563746F72096A51';
wwv_flow_api.g_varchar2_table(2023) := '756572792073656C6563746F7220286F7220656C656D656E742920666F7220627574746F6E2C2065673A20222E75692D6C61796F75742D6E6F727468202E746F67676C652D627574746F6E220D0A092A2040706172616D207B737472696E677D20202009';
wwv_flow_api.g_varchar2_table(2024) := '0970616E652009094E616D65206F66207468652070616E652074686520627574746F6E20697320666F723A20276E6F727468272C2027736F757468272C206574632E0D0A092A2F0D0A2C09616464436C6F73653A2066756E6374696F6E2028696E73742C';
wwv_flow_api.g_varchar2_table(2025) := '2073656C6563746F722C2070616E6529207B0D0A0909242E6C61796F75742E627574746F6E732E67657428696E73742C2073656C6563746F722C2070616E652C2022636C6F736522290D0A0909092E6174747228227469746C65222C20696E73742E6F70';
wwv_flow_api.g_varchar2_table(2026) := '74696F6E735B70616E655D2E746970732E436C6F7365290D0A0909092E636C69636B2866756E6374696F6E202865767429207B0D0A09090909696E73742E636C6F73652870616E65293B0D0A090909096576742E73746F7050726F7061676174696F6E28';
wwv_flow_api.g_varchar2_table(2027) := '293B0D0A0909097D293B0D0A090972657475726E20696E73743B0D0A097D0D0A0D0A092F2A2A0D0A092A20416464206120637573746F6D2050696E20627574746F6E20666F7220612070616E650D0A092A0D0A092A20466F757220636C61737365732061';
wwv_flow_api.g_varchar2_table(2028) := '726520616464656420746F2074686520656C656D656E742C206261736564206F6E207468652070616E65436C61737320666F7220746865206173736F6369617465642070616E652E2E2E0D0A092A20417373756D696E67207468652064656661756C7420';
wwv_flow_api.g_varchar2_table(2029) := '70616E65436C61737320616E64207468652070696E20697320277570272C20746865736520636C61737365732061726520616464656420666F72206120776573742D70616E652070696E3A0D0A092A20202D2075692D6C61796F75742D70616E652D7069';
wwv_flow_api.g_varchar2_table(2030) := '6E0D0A092A20202D2075692D6C61796F75742D70616E652D776573742D70696E0D0A092A20202D2075692D6C61796F75742D70616E652D70696E2D75700D0A092A20202D2075692D6C61796F75742D70616E652D776573742D70696E2D75700D0A092A0D';
wwv_flow_api.g_varchar2_table(2031) := '0A092A2040706172616D207B28737472696E677C214F626A656374297D0973656C6563746F72096A51756572792073656C6563746F7220286F7220656C656D656E742920666F7220627574746F6E2C2065673A20222E75692D6C61796F75742D6E6F7274';
wwv_flow_api.g_varchar2_table(2032) := '68202E746F67676C652D627574746F6E220D0A092A2040706172616D207B737472696E677D202020090970616E652009094E616D65206F66207468652070616E65207468652070696E20697320666F723A20276E6F727468272C2027736F757468272C20';
wwv_flow_api.g_varchar2_table(2033) := '6574632E0D0A092A2F0D0A2C0961646450696E3A2066756E6374696F6E2028696E73742C2073656C6563746F722C2070616E6529207B0D0A0909766172202445203D20242E6C61796F75742E627574746F6E732E67657428696E73742C2073656C656374';
wwv_flow_api.g_varchar2_table(2034) := '6F722C2070616E652C202270696E22293B0D0A09096966202824452E6C656E67746829207B0D0A0909097661722073203D20696E73742E73746174655B70616E655D3B0D0A09090924452E636C69636B2866756E6374696F6E202865767429207B0D0A09';
wwv_flow_api.g_varchar2_table(2035) := '090909242E6C61796F75742E627574746F6E732E73657450696E537461746528696E73742C20242874686973292C2070616E652C2028732E6973536C6964696E67207C7C20732E6973436C6F73656429293B0D0A0909090969662028732E6973536C6964';
wwv_flow_api.g_varchar2_table(2036) := '696E67207C7C20732E6973436C6F7365642920696E73742E6F70656E282070616E6520293B202F2F206368616E67652066726F6D20736C6964696E6720746F206F70656E0D0A09090909656C736520696E73742E636C6F7365282070616E6520293B202F';
wwv_flow_api.g_varchar2_table(2037) := '2F20736C6964652D636C6F7365640D0A090909096576742E73746F7050726F7061676174696F6E28293B0D0A0909097D293B0D0A0909092F2F206164642075702F646F776E2070696E206174747269627574657320616E6420636C61737365730D0A0909';
wwv_flow_api.g_varchar2_table(2038) := '09242E6C61796F75742E627574746F6E732E73657450696E537461746528696E73742C2024452C2070616E652C202821732E6973436C6F7365642026262021732E6973536C6964696E6729293B0D0A0909092F2F2061646420746869732070696E20746F';
wwv_flow_api.g_varchar2_table(2039) := '207468652070616E65206461746120736F2077652063616E202773796E6320697427206175746F6D61746963616C6C790D0A0909092F2F2050414E452E70696E73206B657920697320616E20617272617920736F2077652063616E2073746F7265206D75';
wwv_flow_api.g_varchar2_table(2040) := '6C7469706C652070696E7320666F7220656163682070616E650D0A090909732E70696E732E70757368282073656C6563746F7220293B202F2F206A7573742073617665207468652073656C6563746F7220737472696E670D0A09097D0D0A090972657475';
wwv_flow_api.g_varchar2_table(2041) := '726E20696E73743B0D0A097D0D0A0D0A092F2A2A0D0A092A204368616E67652074686520636C617373206F66207468652070696E20627574746F6E20746F206D616B65206974206C6F6F6B2027757027206F722027646F776E270D0A092A0D0A092A2040';
wwv_flow_api.g_varchar2_table(2042) := '736565202061646450696E28292C2073796E6350696E7328290D0A092A2040706172616D207B41727261792E3C4F626A6563743E7D092450696E095468652070696E2D7370616E20656C656D656E7420696E2061206A517565727920777261707065720D';
wwv_flow_api.g_varchar2_table(2043) := '0A092A2040706172616D207B737472696E677D0970616E65095468657365206172652074686520706172616D732072657475726E656420746F2063616C6C6261636B73206279206C61796F757428290D0A092A2040706172616D207B626F6F6C65616E7D';
wwv_flow_api.g_varchar2_table(2044) := '09646F50696E0974727565203D20736574207468652070696E2027646F776E272C2066616C7365203D2073657420697420277570270D0A092A2F0D0A2C0973657450696E53746174653A2066756E6374696F6E2028696E73742C202450696E2C2070616E';
wwv_flow_api.g_varchar2_table(2045) := '652C20646F50696E29207B0D0A0909766172207570646F776E203D202450696E2E61747472282270696E22293B0D0A0909696620287570646F776E20262620646F50696E203D3D3D20287570646F776E3D3D22646F776E2229292072657475726E3B202F';
wwv_flow_api.g_varchar2_table(2046) := '2F20616C726561647920696E20636F72726563742073746174650D0A09097661720D0A090909706F09093D20696E73742E6F7074696F6E735B70616E655D0D0A09092C096C616E67093D20706F2E746970730D0A09092C0970696E09093D20706F2E6275';
wwv_flow_api.g_varchar2_table(2047) := '74746F6E436C617373202B222D70696E220D0A09092C0973696465093D2070696E202B222D222B2070616E650D0A09092C09555009093D2070696E202B222D757020222B0973696465202B222D7570220D0A09092C09444E09093D2070696E202B222D64';
wwv_flow_api.g_varchar2_table(2048) := '6F776E20222B73696465202B222D646F776E220D0A09093B0D0A09092450696E0D0A0909092E61747472282270696E222C20646F50696E203F2022646F776E22203A202275702229202F2F206C6F6769630D0A0909092E6174747228227469746C65222C';
wwv_flow_api.g_varchar2_table(2049) := '20646F50696E203F206C616E672E556E70696E203A206C616E672E50696E290D0A0909092E72656D6F7665436C6173732820646F50696E203F205550203A20444E2029200D0A0909092E616464436C6173732820646F50696E203F20444E203A20555020';
wwv_flow_api.g_varchar2_table(2050) := '29200D0A09093B0D0A097D0D0A0D0A092F2A2A0D0A092A20494E5445524E414C2066756E6374696F6E20746F2073796E63202770696E20627574746F6E7327207768656E2070616E65206973206F70656E6564206F7220636C6F7365640D0A092A20556E';
wwv_flow_api.g_varchar2_table(2051) := '70696E6E6564206D65616E73207468652070616E652069732027736C6964696E6727202D2069652C206F7665722D746F70206F66207468652061646A6163656E742070616E65730D0A092A0D0A092A204073656520206F70656E28292C20636C6F736528';
wwv_flow_api.g_varchar2_table(2052) := '290D0A092A2040706172616D207B737472696E677D0970616E652020205468657365206172652074686520706172616D732072657475726E656420746F2063616C6C6261636B73206279206C61796F757428290D0A092A2040706172616D207B626F6F6C';
wwv_flow_api.g_varchar2_table(2053) := '65616E7D09646F50696E202054727565206D65616E7320736574207468652070696E2027646F776E272C2046616C7365206D65616E7320277570270D0A092A2F0D0A2C0973796E6350696E42746E733A2066756E6374696F6E2028696E73742C2070616E';
wwv_flow_api.g_varchar2_table(2054) := '652C20646F50696E29207B0D0A09092F2F205245414C204D4554484F44204953205F494E534944455F204C41594F5554202D20544849532049532048455245204A55535420464F52205245464552454E43450D0A0909242E656163682873746174655B70';
wwv_flow_api.g_varchar2_table(2055) := '616E655D2E70696E732C2066756E6374696F6E2028692C2073656C6563746F7229207B0D0A090909242E6C61796F75742E627574746F6E732E73657450696E537461746528696E73742C20242873656C6563746F72292C2070616E652C20646F50696E29';
wwv_flow_api.g_varchar2_table(2056) := '3B0D0A09097D293B0D0A097D0D0A0D0A0D0A2C095F6C6F61643A2066756E6374696F6E2028696E737429207B0D0A09092F2F0941444420427574746F6E206D6574686F647320746F204C61796F757420496E7374616E63650D0A0909242E657874656E64';
wwv_flow_api.g_varchar2_table(2057) := '2820696E73742C207B0D0A09090962696E64427574746F6E3A090966756E6374696F6E202873656C6563746F722C20616374696F6E2C2070616E6529207B2072657475726E20242E6C61796F75742E627574746F6E732E62696E6428696E73742C207365';
wwv_flow_api.g_varchar2_table(2058) := '6C6563746F722C20616374696F6E2C2070616E65293B207D0D0A09092F2F0944455052454341544544204D4554484F44532E2E2E0D0A09092C09616464546F67676C6542746E3A0966756E6374696F6E202873656C6563746F722C2070616E652C20736C';
wwv_flow_api.g_varchar2_table(2059) := '69646529207B2072657475726E20242E6C61796F75742E627574746F6E732E616464546F67676C6528696E73742C2073656C6563746F722C2070616E652C20736C696465293B207D0D0A09092C096164644F70656E42746E3A090966756E6374696F6E20';
wwv_flow_api.g_varchar2_table(2060) := '2873656C6563746F722C2070616E652C20736C69646529207B2072657475726E20242E6C61796F75742E627574746F6E732E6164644F70656E28696E73742C2073656C6563746F722C2070616E652C20736C696465293B207D0D0A09092C09616464436C';
wwv_flow_api.g_varchar2_table(2061) := '6F736542746E3A0966756E6374696F6E202873656C6563746F722C2070616E6529207B2072657475726E20242E6C61796F75742E627574746F6E732E616464436C6F736528696E73742C2073656C6563746F722C2070616E65293B207D0D0A09092C0961';
wwv_flow_api.g_varchar2_table(2062) := '646450696E42746E3A090966756E6374696F6E202873656C6563746F722C2070616E6529207B2072657475726E20242E6C61796F75742E627574746F6E732E61646450696E28696E73742C2073656C6563746F722C2070616E65293B207D0D0A09097D29';
wwv_flow_api.g_varchar2_table(2063) := '3B0D0A0D0A09092F2F20696E697420737461746520617272617920746F20686F6C642070696E2D627574746F6E730D0A0909666F72202876617220693D303B20693C343B20692B2B29207B0D0A0909097661722070616E65203D20242E6C61796F75742E';
wwv_flow_api.g_varchar2_table(2064) := '627574746F6E732E636F6E6669672E626F7264657250616E65735B695D3B0D0A090909696E73742E73746174655B70616E655D2E70696E73203D205B5D3B0D0A09097D0D0A0D0A09092F2F206175746F2D696E697420627574746F6E73206F6E4C6F6164';
wwv_flow_api.g_varchar2_table(2065) := '206966206F7074696F6E20697320656E61626C65640D0A09096966202820696E73742E6F7074696F6E732E6175746F42696E64437573746F6D427574746F6E7320290D0A090909242E6C61796F75742E627574746F6E732E696E697428696E7374293B0D';
wwv_flow_api.g_varchar2_table(2066) := '0A097D0D0A0D0A2C095F756E6C6F61643A2066756E6374696F6E2028696E737429207B0D0A09092F2F20544F444F3A20756E62696E6420616C6C20627574746F6E733F3F3F0D0A097D0D0A0D0A7D3B0D0A0D0A2F2F2061646420696E697469616C697A61';
wwv_flow_api.g_varchar2_table(2067) := '74696F6E206D6574686F6420746F204C61796F75742773206F6E4C6F6164206172726179206F662066756E6374696F6E730D0A242E6C61796F75742E6F6E4C6F61642E70757368282020242E6C61796F75742E627574746F6E732E5F6C6F616420293B0D';
wwv_flow_api.g_varchar2_table(2068) := '0A2F2F242E6C61796F75742E6F6E556E6C6F61642E707573682820242E6C61796F75742E627574746F6E732E5F756E6C6F616420293B0D0A0D0A7D2928206A517565727920293B0D0A0D0A0D0A0D0A0D0A2F2A2A0D0A202A206A71756572792E6C61796F';
wwv_flow_api.g_varchar2_table(2069) := '75742E62726F777365725A6F6F6D20312E300D0A202A2024446174653A20323031312D31322D32392030383A30303A303020285468752C2032392044656320323031312920240D0A202A0D0A202A20436F70797269676874202863292032303132200D0A';
wwv_flow_api.g_varchar2_table(2070) := '202A2020204B6576696E2044616C6D616E2028687474703A2F2F616C6C70726F2E6E6574290D0A202A0D0A202A204475616C206C6963656E73656420756E646572207468652047504C2028687474703A2F2F7777772E676E752E6F72672F6C6963656E73';
wwv_flow_api.g_varchar2_table(2071) := '65732F67706C2E68746D6C290D0A202A20616E64204D49542028687474703A2F2F7777772E6F70656E736F757263652E6F72672F6C6963656E7365732F6D69742D6C6963656E73652E70687029206C6963656E7365732E0D0A202A0D0A202A2040726571';
wwv_flow_api.g_varchar2_table(2072) := '75697265733A205549204C61796F757420312E332E302E726333302E31206F72206869676865720D0A202A0D0A202A20407365653A20687474703A2F2F67726F7570732E676F6F676C652E636F6D2F67726F75702F6A71756572792D75692D6C61796F75';
wwv_flow_api.g_varchar2_table(2073) := '740D0A202A0D0A202A20544F444F3A20457874656E64206C6F67696320746F2068616E646C65206F746865722070726F626C656D61746963207A6F6F6D696E6720696E2062726F77736572730D0A202A20544F444F3A2041646420686F746B65792F6D6F';
wwv_flow_api.g_varchar2_table(2074) := '757365776865656C2062696E64696E677320746F205F696E7374616E746C795F20726573706F6E6420746F207468657365207A6F6F6D206576656E740D0A202A2F0D0A2866756E6374696F6E20282429207B0D0A0D0A2F2F2074656C6C204C61796F7574';
wwv_flow_api.g_varchar2_table(2075) := '20746861742074686520706C7567696E20697320617661696C61626C650D0A242E6C61796F75742E706C7567696E732E62726F777365725A6F6F6D203D20747275653B0D0A0D0A242E6C61796F75742E64656661756C74732E62726F777365725A6F6F6D';
wwv_flow_api.g_varchar2_table(2076) := '436865636B496E74657276616C203D20313030303B0D0A242E6C61796F75742E6F7074696F6E734D61702E6C61796F75742E70757368282262726F777365725A6F6F6D436865636B496E74657276616C22293B0D0A0D0A2F2A0D0A202A0962726F777365';
wwv_flow_api.g_varchar2_table(2077) := '725A6F6F6D206D6574686F64730D0A202A2F0D0A242E6C61796F75742E62726F777365725A6F6F6D203D207B0D0A0D0A095F696E69743A2066756E6374696F6E2028696E737429207B0D0A09092F2F2061626F72742069662062726F7773657220646F65';
wwv_flow_api.g_varchar2_table(2078) := '73206E6F74206E656564207468697320636865636B0D0A090969662028242E6C61796F75742E62726F777365725A6F6F6D2E726174696F282920213D3D2066616C7365290D0A090909242E6C61796F75742E62726F777365725A6F6F6D2E5F7365745469';
wwv_flow_api.g_varchar2_table(2079) := '6D657228696E7374293B0D0A097D0D0A0D0A2C095F73657454696D65723A2066756E6374696F6E2028696E737429207B0D0A09092F2F2061626F7274206966206C61796F75742064657374726F796564206F722062726F7773657220646F6573206E6F74';
wwv_flow_api.g_varchar2_table(2080) := '206E656564207468697320636865636B0D0A090969662028696E73742E64657374726F796564292072657475726E3B0D0A0909766172206F093D20696E73742E6F7074696F6E730D0A09092C0973093D20696E73742E73746174650D0A09092F2F09646F';
wwv_flow_api.g_varchar2_table(2081) := '6E2774206E65656420636865636B20696620696E73742068617320706172656E744C61796F75742C2062757420636865636B206F6363617373696F6E616C6C7920696E206361736520706172656E742064657374726F796564210D0A09092F2F094D494E';
wwv_flow_api.g_varchar2_table(2082) := '494D554D203130306D7320696E74657276616C2C20666F7220706572666F726D616E63650D0A09092C096D73093D20696E73742E686173506172656E744C61796F7574203F202035303030203A204D6174682E6D617828206F2E62726F777365725A6F6F';
wwv_flow_api.g_varchar2_table(2083) := '6D436865636B496E74657276616C2C2031303020290D0A09093B0D0A09092F2F20736574207468652074696D65720D0A090973657454696D656F75742866756E6374696F6E28297B0D0A09090969662028696E73742E64657374726F796564207C7C2021';
wwv_flow_api.g_varchar2_table(2084) := '6F2E726573697A655769746857696E646F77292072657475726E3B0D0A0909097661722064203D20242E6C61796F75742E62726F777365725A6F6F6D2E726174696F28293B0D0A090909696620286420213D3D20732E62726F777365725A6F6F6D29207B';
wwv_flow_api.g_varchar2_table(2085) := '0D0A09090909732E62726F777365725A6F6F6D203D20643B0D0A09090909696E73742E726573697A65416C6C28293B0D0A0909097D0D0A0909092F2F207365742061204E45572074696D656F75740D0A090909242E6C61796F75742E62726F777365725A';
wwv_flow_api.g_varchar2_table(2086) := '6F6F6D2E5F73657454696D657228696E7374293B0D0A09097D0D0A09092C096D7320293B0D0A097D0D0A0D0A2C09726174696F3A2066756E6374696F6E202829207B0D0A09097661722077093D2077696E646F770D0A09092C0973093D2073637265656E';
wwv_flow_api.g_varchar2_table(2087) := '0D0A09092C0964093D20646F63756D656E740D0A09092C096445093D20642E646F63756D656E74456C656D656E74207C7C20642E626F64790D0A09092C0962093D20242E6C61796F75742E62726F777365720D0A09092C0976093D20622E76657273696F';
wwv_flow_api.g_varchar2_table(2088) := '6E0D0A09092C09722C2073572C2063570D0A09093B0D0A09092F2F2077652063616E2069676E6F726520616C6C2062726F7773657273207468617420666972652077696E646F772E726573697A65206576656E74206F6E5A6F6F6D0D0A09096966202821';
wwv_flow_api.g_varchar2_table(2089) := '622E6D736965207C7C2076203E2038290D0A09090972657475726E2066616C73653B202F2F20646F6E2774206E65656420746F20747261636B207A6F6F6D0D0A090969662028732E6465766963655844504920262620732E73797374656D584450492920';
wwv_flow_api.g_varchar2_table(2090) := '2F2F2073796E74617820636F6D70696C6572206861636B0D0A09090972657475726E2063616C6328732E646576696365584450492C20732E73797374656D58445049293B0D0A09092F2F2065766572797468696E672062656C6F77206973206A75737420';
wwv_flow_api.g_varchar2_table(2091) := '666F7220667574757265207265666572656E6365210D0A090969662028622E7765626B6974202626202872203D20642E626F64792E676574426F756E64696E67436C69656E745265637429290D0A09090972657475726E2063616C632828722E6C656674';
wwv_flow_api.g_varchar2_table(2092) := '202D20722E7269676874292C20642E626F64792E6F66667365745769647468293B0D0A090969662028622E7765626B697420262620287357203D20772E6F75746572576964746829290D0A09090972657475726E2063616C632873572C20772E696E6E65';
wwv_flow_api.g_varchar2_table(2093) := '725769647468293B0D0A090969662028287357203D20732E77696474682920262620286357203D2064452E636C69656E74576964746829290D0A09090972657475726E2063616C632873572C206357293B0D0A090972657475726E2066616C73653B202F';
wwv_flow_api.g_varchar2_table(2094) := '2F206E6F206D617463682C20736F2063616E6E6F74202D206F7220646F6E2774206E65656420746F202D20747261636B207A6F6F6D0D0A0D0A090966756E6374696F6E2063616C632028782C7929207B2072657475726E20287061727365496E7428782C';
wwv_flow_api.g_varchar2_table(2095) := '313029202F207061727365496E7428792C313029202A20313030292E746F466978656428293B207D0D0A097D0D0A0D0A7D3B0D0A2F2F2061646420696E697469616C697A6174696F6E206D6574686F6420746F204C61796F75742773206F6E4C6F616420';
wwv_flow_api.g_varchar2_table(2096) := '6172726179206F662066756E6374696F6E730D0A242E6C61796F75742E6F6E52656164792E707573682820242E6C61796F75742E62726F777365725A6F6F6D2E5F696E697420293B0D0A0D0A0D0A7D2928206A517565727920293B0D0A0D0A0D0A0D0A0D';
wwv_flow_api.g_varchar2_table(2097) := '0A2F2A2A0D0A202A095549204C61796F757420506C7567696E3A20536C6964652D4F666673637265656E20416E696D6174696F6E0D0A202A0D0A202A0950726576656E742070616E65732066726F6D206265696E67202768696464656E2720736F207468';
wwv_flow_api.g_varchar2_table(2098) := '617420616E20696672616D65732F6F626A65637473200D0A202A09646F6573206E6F742072656C6F61642F72656672657368207768656E2070616E6520276F70656E732720616761696E2E0D0A202A095468697320706C75672D696E2061646473206120';
wwv_flow_api.g_varchar2_table(2099) := '6E657720616E696D6174696F6E2063616C6C65642022736C6964654F666673637265656E222E0D0A202A094974206973206964656E746963616C20746F20746865206E6F726D616C2022736C69646522206566666563742C206275742061766F69647320';
wwv_flow_api.g_varchar2_table(2100) := '686964696E672074686520656C656D656E740D0A202A0D0A202A095265717569726573204C61796F757420312E332E302E524333302E31206F72206C6174657220666F7220436C6F7365206F666673637265656E0D0A202A095265717569726573204C61';
wwv_flow_api.g_varchar2_table(2101) := '796F757420312E332E302E524333302E35206F72206C6174657220666F7220486964652C20696E6974436C6F736564202620696E697448696464656E206F666673637265656E0D0A202A0D0A202A0956657273696F6E3A09312E31202D20323031322D31';
wwv_flow_api.g_varchar2_table(2102) := '312D31380D0A202A09417574686F723A09094B6576696E2044616C6D616E20286B6576696E406A71756572792D6465762E636F6D290D0A202A09407072657365727665096A71756572792E6C61796F75742E736C6964654F666673637265656E2D312E31';
wwv_flow_api.g_varchar2_table(2103) := '2E6A730D0A202A2F0D0A3B2866756E6374696F6E20282429207B0D0A0D0A2F2F204164642061206E65772022736C6964654F666673637265656E22206566666563740D0A69662028242E6566666563747329207B0D0A0D0A092F2F2061646420616E206F';
wwv_flow_api.g_varchar2_table(2104) := '7074696F6E20736F20696E6974436C6F73656420616E6420696E697448696464656E2077696C6C20776F726B0D0A09242E6C61796F75742E64656661756C74732E70616E65732E7573654F666673637265656E436C6F7365203D2066616C73653B202F2F';
wwv_flow_api.g_varchar2_table(2105) := '2075736572206D75737420656E61626C65207768656E206E65656465640D0A092F2A2073657420746865206E657720616E696D6174696F6E206173207468652064656661756C7420666F7220616C6C2070616E65730D0A09242E6C61796F75742E646566';
wwv_flow_api.g_varchar2_table(2106) := '61756C74732E70616E65732E66784E616D65203D2022736C6964654F666673637265656E223B0D0A092A2F0D0A0D0A0969662028242E6C61796F75742E706C7567696E73290D0A0909242E6C61796F75742E706C7567696E732E656666656374732E736C';
wwv_flow_api.g_varchar2_table(2107) := '6964654F666673637265656E203D20747275653B0D0A0D0A092F2F20647570652027736C69646527206566666563742064656661756C7473206173206E6577206566666563742064656661756C74730D0A09242E6C61796F75742E656666656374732E73';
wwv_flow_api.g_varchar2_table(2108) := '6C6964654F666673637265656E203D20242E657874656E6428747275652C207B7D2C20242E6C61796F75742E656666656374732E736C696465293B0D0A0D0A092F2F20616464206E65772065666665637420746F206A51756572792055490D0A09242E65';
wwv_flow_api.g_varchar2_table(2109) := '6666656374732E736C6964654F666673637265656E203D2066756E6374696F6E286F29207B0D0A090972657475726E20746869732E71756575652866756E6374696F6E28297B0D0A0D0A09090976617220667809093D20242E656666656374730D0A0909';
wwv_flow_api.g_varchar2_table(2110) := '092C096F707409093D206F2E6F7074696F6E730D0A0909092C0924656C09093D20242874686973290D0A0909092C0970616E65093D2024656C2E6461746128276C61796F75744564676527290D0A0909092C097374617465093D2024656C2E6461746128';
wwv_flow_api.g_varchar2_table(2111) := '27706172656E744C61796F757427292E73746174650D0A0909092C0964697374093D2073746174655B70616E655D2E73697A650D0A0909092C097309093D20746869732E7374796C650D0A0909092C0970726F7073093D205B27746F70272C27626F7474';
wwv_flow_api.g_varchar2_table(2112) := '6F6D272C276C656674272C277269676874275D0D0A090909092F2F20536574206F7074696F6E730D0A0909092C096D6F6465093D2066782E7365744D6F64652824656C2C206F70742E6D6F6465207C7C202773686F772729202F2F20536574204D6F6465';
wwv_flow_api.g_varchar2_table(2113) := '0D0A0909092C0973686F77093D20286D6F6465203D3D202773686F7727290D0A0909092C0964697209093D206F70742E646972656374696F6E207C7C20276C65667427202F2F2044656661756C7420446972656374696F6E0D0A0909092C097265660920';
wwv_flow_api.g_varchar2_table(2114) := '093D2028646972203D3D2027757027207C7C20646972203D3D2027646F776E2729203F2027746F7027203A20276C656674270D0A0909092C09706F7309093D2028646972203D3D2027757027207C7C20646972203D3D20276C65667427290D0A0909092C';
wwv_flow_api.g_varchar2_table(2115) := '096F66667363726E093D20242E6C61796F75742E636F6E6669672E6F666673637265656E435353207C7C207B7D0D0A0909092C096B65794C52093D20242E6C61796F75742E636F6E6669672E6F666673637265656E52657365740D0A0909092C096B6579';
wwv_flow_api.g_varchar2_table(2116) := '5442093D20276F666673637265656E5265736574546F7027202F2F206F6E6C79207573656420696E7465726E616C6C790D0A0909092C09616E696D6174696F6E203D207B7D0D0A0909093B0D0A0909092F2F20416E696D6174696F6E2073657474696E67';
wwv_flow_api.g_varchar2_table(2117) := '730D0A090909616E696D6174696F6E5B7265665D093D202873686F77203F2028706F73203F20272B3D27203A20272D3D2729203A2028706F73203F20272D3D27203A20272B3D272929202B20646973743B0D0A0D0A0909096966202873686F7729207B20';
wwv_flow_api.g_varchar2_table(2118) := '2F2F2073686F77282920616E696D6174696F6E2C20736F207361766520746F702F626F74746F6D206275742072657461696E206C6566742F726967687420736574207768656E202768696464656E270D0A0909090924656C2E64617461286B657954422C';
wwv_flow_api.g_varchar2_table(2119) := '207B20746F703A20732E746F702C20626F74746F6D3A20732E626F74746F6D207D293B0D0A0D0A090909092F2F207365742074686520746F70206F72206C656674206F666673657420696E207072657061726174696F6E20666F7220616E696D6174696F';
wwv_flow_api.g_varchar2_table(2120) := '6E0D0A090909092F2F204E6F74653A20414C4C20616E696D6174696F6E7320776F726B206279207368696674696E672074686520746F70206F72206C6566742065646765730D0A0909090969662028706F7329207B202F2F20746F7020286E6F72746829';
wwv_flow_api.g_varchar2_table(2121) := '206F72206C656674202877657374290D0A090909090924656C2E637373287265662C2069734E614E286469737429203F20222D22202B2064697374203A202D64697374293B202F2F205368696674206F75747369646520746865206C6566742F746F7020';
wwv_flow_api.g_varchar2_table(2122) := '656467650D0A090909097D0D0A09090909656C7365207B202F2F20626F74746F6D2028736F75746829206F7220726967687420286561737429202D20736869667420616C6C2074686520776179206163726F737320636F6E7461696E65720D0A09090909';
wwv_flow_api.g_varchar2_table(2123) := '0969662028646972203D3D3D2027726967687427290D0A09090909090924656C2E637373287B206C6566743A2073746174652E636F6E7461696E65722E6C61796F757457696474682C2072696768743A20276175746F27207D293B0D0A0909090909656C';
wwv_flow_api.g_varchar2_table(2124) := '7365202F2F20646972203D3D3D20626F74746F6D0D0A09090909090924656C2E637373287B20746F703A2073746174652E636F6E7461696E65722E6C61796F75744865696768742C20626F74746F6D3A20276175746F27207D293B0D0A090909097D0D0A';
wwv_flow_api.g_varchar2_table(2125) := '090909092F2F20726573746F726520746865206C6566742F72696768742073657474696E67206966206973206120746F702F626F74746F6D20616E696D6174696F6E0D0A0909090969662028726566203D3D3D2027746F7027290D0A090909090924656C';
wwv_flow_api.g_varchar2_table(2126) := '2E637373282024656C2E6461746128206B65794C522029207C7C207B7D20293B0D0A0909097D0D0A090909656C7365207B202F2F2068696465282920616E696D6174696F6E2C20736F207361766520414C4C204353530D0A0909090924656C2E64617461';
wwv_flow_api.g_varchar2_table(2127) := '286B657954422C207B20746F703A20732E746F702C20626F74746F6D3A20732E626F74746F6D207D293B0D0A0909090924656C2E64617461286B65794C522C207B206C6566743A20732E6C6566742C2072696768743A20732E7269676874207D293B0D0A';
wwv_flow_api.g_varchar2_table(2128) := '0909097D0D0A0D0A0909092F2F20416E696D6174650D0A09090924656C2E73686F7728292E616E696D61746528616E696D6174696F6E2C207B2071756575653A2066616C73652C206475726174696F6E3A206F2E6475726174696F6E2C20656173696E67';
wwv_flow_api.g_varchar2_table(2129) := '3A206F70742E656173696E672C20636F6D706C6574653A2066756E6374696F6E28297B0D0A090909092F2F20526573746F726520746F702F626F74746F6D0D0A090909096966202824656C2E6461746128206B657954422029290D0A090909090924656C';
wwv_flow_api.g_varchar2_table(2130) := '2E6373732824656C2E6461746128206B657954422029292E72656D6F76654461746128206B6579544220293B0D0A090909096966202873686F7729202F2F20526573746F7265206C6566742F726967687420746F6F0D0A090909090924656C2E63737328';
wwv_flow_api.g_varchar2_table(2131) := '24656C2E6461746128206B65794C522029207C7C207B7D292E72656D6F76654461746128206B65794C5220293B0D0A09090909656C7365202F2F204D6F7665207468652070616E65206F66662D73637265656E20286C6566743A202D39393939392C2072';
wwv_flow_api.g_varchar2_table(2132) := '696768743A20276175746F27290D0A090909090924656C2E63737328206F66667363726E20293B0D0A0D0A09090909696620286F2E63616C6C6261636B29206F2E63616C6C6261636B2E6170706C7928746869732C20617267756D656E7473293B202F2F';
wwv_flow_api.g_varchar2_table(2133) := '2043616C6C6261636B0D0A0909090924656C2E6465717565756528293B0D0A0909097D7D293B0D0A0D0A09097D293B0D0A097D3B0D0A0D0A7D0D0A0D0A7D2928206A517565727920293B0D0A';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(13889811299474830926)
,p_plugin_id=>wwv_flow_api.id(17184698754901636852)
,p_file_name=>'jquery.layout.js'
,p_mime_type=>'application/x-unknown'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A20627920546F626961732041726E686F6C64202A2F0D0A66756E6374696F6E2075696C61796F75745F6972725F6D656E755F66697828297B0D0A09242822236170657869725F726F6C6C6F76657222292E617070656E64546F2822626F647922293B';
wwv_flow_api.g_varchar2_table(2) := '0D0A092428272E6468746D6C5375624D656E755327292E6D6F7573656F7665722866756E6374696F6E2829207B0D0A092020242827236170657869725F524F57535F5045525F504147455F4D454E5527292E637373287B0D0A09096C6566743A20242827';
wwv_flow_api.g_varchar2_table(3) := '236170657869725F524F57535F5045525F504147455F4D454E5527292E706F736974696F6E28292E6C656674202B20323030202B20227078220D0A0920207D293B0D0A092020242827236170657869725F464F524D41545F4D454E5527292E637373287B';
wwv_flow_api.g_varchar2_table(4) := '0D0A09096C6566743A20242827236170657869725F464F524D41545F4D454E5527292E706F736974696F6E28292E6C656674202B20323030202B20227078220D0A0920207D293B202020200D0A097D293B0D0A7D0D0A0D0A0D0A';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(19440119657384186371)
,p_plugin_id=>wwv_flow_api.id(17184698754901636852)
,p_file_name=>'layout.fix2.js'
,p_mime_type=>'application/x-unknown'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
prompt --application/user_interfaces
begin
wwv_flow_api.create_user_interface(
 p_id=>wwv_flow_api.id(26325196397159052)
,p_ui_type_name=>'DESKTOP'
,p_display_name=>'Desktop'
,p_display_seq=>10
,p_use_auto_detect=>false
,p_is_default=>true
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&SESSION.'
,p_login_url=>'f?p=&APP_ID.:LOGIN_DESKTOP:&SESSION.'
,p_navigation_list_id=>wwv_flow_api.id(26282769424157875)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>wwv_flow_api.id(26317378626158646)
,p_nav_list_template_options=>'#DEFAULT#'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_api.id(26325015269159048)
,p_nav_bar_list_template_id=>wwv_flow_api.id(26317286585158639)
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_api.create_page(
 p_id=>1
,p_user_interface_id=>wwv_flow_api.id(26325196397159052)
,p_name=>'UILayout with the navigation bar'
,p_page_mode=>'NORMAL'
,p_step_title=>'UILayout with the navigation bar'
,p_step_sub_title=>'Home'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20160131234613'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(25985979147275641)
,p_plug_name=>'Report'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26298462485158431)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select ',
'    c001,',
'    c002,',
'    c003,',
'    c004,',
'    c005',
'  from apex_collections',
'  where collection_name = ''DATA_COLLECTION'''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(25986025762275642)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'ADMIN'
,p_internal_uid=>25986025762275642
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25986109993275643)
,p_db_column_name=>'C001'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'STRING'
,p_heading_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25986270891275644)
,p_db_column_name=>'C002'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25986332074275645)
,p_db_column_name=>'C003'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Description'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25986459731275646)
,p_db_column_name=>'C004'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Year'
,p_column_type=>'STRING'
,p_heading_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25986552423275647)
,p_db_column_name=>'C005'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Link'
,p_column_link=>'#C005#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#magnifying_glass_white_bg.gif" alt="">'
,p_column_link_attr=>'target="_blank"'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(26431435010724035)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'264315'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'C001:C002:C003:C004:C005'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26326908915159300)
,p_plug_name=>'Breadcrumbs'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26302281213158471)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(26326422754159229)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(26320400424158741)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(25985768297275639)
,p_name=>'UILayout - UT'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(25985828212275640)
,p_event_id=>wwv_flow_api.id(25985768297275639)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM.AAW.UILAYOUT_UT'
,p_attribute_01=>'250'
,p_attribute_02=>'350'
,p_attribute_03=>'N'
,p_attribute_06=>'DEFAULT'
,p_attribute_07=>'10'
,p_attribute_09=>'N'
,p_attribute_13=>'Y'
,p_attribute_15=>'Y'
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_api.create_page(
 p_id=>2
,p_user_interface_id=>wwv_flow_api.id(26325196397159052)
,p_name=>'Page'
,p_page_mode=>'NORMAL'
,p_step_title=>'Page'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(26282876002157902)
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20160131234833'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(25986665659275648)
,p_plug_name=>'Left Column'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(26298915463158438)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_source=>'Some kind of navigation'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26442331882825861)
,p_plug_name=>'Report'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26298462485158431)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select ',
'    c001,',
'    c002,',
'    c003,',
'    c004,',
'    c005',
'  from apex_collections',
'  where collection_name = ''DATA_COLLECTION'''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(26442624116825861)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'ADMIN'
,p_internal_uid=>26442624116825861
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26442719462825861)
,p_db_column_name=>'C001'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'STRING'
,p_heading_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26443119738825862)
,p_db_column_name=>'C002'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26443567591825862)
,p_db_column_name=>'C003'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Description'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26443998755825862)
,p_db_column_name=>'C004'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Year'
,p_column_type=>'STRING'
,p_heading_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26444397997825862)
,p_db_column_name=>'C005'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Link'
,p_column_link=>'#C005#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#magnifying_glass_white_bg.gif" alt="">'
,p_column_link_attr=>'target="_blank"'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(26444756710825863)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'264448'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'C001:C002:C003:C004:C005'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(25985557065275637)
,p_name=>'UILayout - UT'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(25985620586275638)
,p_event_id=>wwv_flow_api.id(25985557065275637)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'PLUGIN_COM.AAW.UILAYOUT_UT'
,p_attribute_01=>'300'
,p_attribute_02=>'300'
,p_attribute_03=>'N'
,p_attribute_06=>'UT'
,p_attribute_07=>'10'
,p_attribute_09=>'Y'
,p_attribute_10=>'150'
,p_attribute_11=>'300'
,p_attribute_12=>'10'
,p_attribute_13=>'Y'
,p_attribute_15=>'Y'
);
end;
/
prompt --application/pages/page_00003
begin
wwv_flow_api.create_page(
 p_id=>3
,p_user_interface_id=>wwv_flow_api.id(26325196397159052)
,p_name=>'UILayout - Bar custom visualization'
,p_page_mode=>'NORMAL'
,p_step_title=>'UILayout - Bar custom visualization'
,p_step_sub_title=>'UILayout - Bar visualization'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(26287222156158097)
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20160201085431'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26433218582744132)
,p_plug_name=>'Breadcrumbs'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26302281213158471)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(26326422754159229)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(26320400424158741)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26433697815744139)
,p_plug_name=>'Report'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26298462485158431)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select ',
'    c001,',
'    c002,',
'    c003,',
'    c004,',
'    c005',
'  from apex_collections',
'  where collection_name = ''DATA_COLLECTION'''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(26434069761744140)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'ADMIN'
,p_internal_uid=>26434069761744140
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26434185094744142)
,p_db_column_name=>'C001'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'STRING'
,p_heading_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26434501071744142)
,p_db_column_name=>'C002'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26434949747744142)
,p_db_column_name=>'C003'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Description'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26435321341744142)
,p_db_column_name=>'C004'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Year'
,p_column_type=>'STRING'
,p_heading_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26435776792744143)
,p_db_column_name=>'C005'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Link'
,p_column_link=>'#C005#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#magnifying_glass_white_bg.gif" alt="">'
,p_column_link_attr=>'target="_blank"'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(26436102387744144)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'264362'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'C001:C002:C003:C004:C005'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(26436980655744149)
,p_name=>'UILayout - UT'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(26437359594744149)
,p_event_id=>wwv_flow_api.id(26436980655744149)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM.AAW.UILAYOUT_UT'
,p_attribute_01=>'250'
,p_attribute_02=>'450'
,p_attribute_03=>'Y'
,p_attribute_04=>'250'
,p_attribute_05=>'450'
,p_attribute_06=>'CUSTOM'
,p_attribute_07=>'6'
,p_attribute_08=>'20'
,p_attribute_09=>'N'
,p_attribute_13=>'Y'
,p_attribute_14=>'#808080,#FA8072'
,p_attribute_15=>'N'
);
end;
/
prompt --application/pages/page_00004
begin
wwv_flow_api.create_page(
 p_id=>4
,p_user_interface_id=>wwv_flow_api.id(26325196397159052)
,p_name=>'UILayout with the navigation, left and right bar'
,p_page_mode=>'NORMAL'
,p_step_title=>'UILayout with the navigation, left and right bar'
,p_step_sub_title=>'UILayout with the navigation, left and right bar'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(26283777561158016)
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20160201091310'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26448474794856133)
,p_plug_name=>'Breadcrumbs'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26302281213158471)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(26326422754159229)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(26320400424158741)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26448893460856133)
,p_plug_name=>'Report'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26298462485158431)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select ',
'    c001,',
'    c002,',
'    c003,',
'    c004,',
'    c005',
'  from apex_collections',
'  where collection_name = ''DATA_COLLECTION'''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(26449263817856133)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'ADMIN'
,p_internal_uid=>26449263817856133
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26449396547856133)
,p_db_column_name=>'C001'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'STRING'
,p_heading_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26449772310856134)
,p_db_column_name=>'C002'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26450132692856134)
,p_db_column_name=>'C003'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Description'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26450572389856134)
,p_db_column_name=>'C004'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Year'
,p_column_type=>'STRING'
,p_heading_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26450993304856134)
,p_db_column_name=>'C005'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Link'
,p_column_link=>'#C005#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#magnifying_glass_white_bg.gif" alt="">'
,p_column_link_attr=>'target="_blank"'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(26451375697856135)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'264514'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'C001:C002:C003:C004:C005'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(26452146515856135)
,p_name=>'UILayout - UT'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(26452649103856136)
,p_event_id=>wwv_flow_api.id(26452146515856135)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM.AAW.UILAYOUT_UT'
,p_attribute_01=>'250'
,p_attribute_02=>'350'
,p_attribute_03=>'Y'
,p_attribute_04=>'250'
,p_attribute_05=>'350'
,p_attribute_06=>'UT'
,p_attribute_07=>'10'
,p_attribute_08=>'10'
,p_attribute_09=>'Y'
,p_attribute_10=>'100'
,p_attribute_11=>'150'
,p_attribute_12=>'10'
,p_attribute_13=>'Y'
,p_attribute_15=>'Y'
);
end;
/
prompt --application/pages/page_00005
begin
wwv_flow_api.create_page(
 p_id=>5
,p_user_interface_id=>wwv_flow_api.id(26325196397159052)
,p_name=>'UILayout with the right bar'
,p_page_mode=>'NORMAL'
,p_step_title=>'UILayout with the right bar'
,p_step_sub_title=>'UILayout with the right bar'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(26287222156158097)
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20160131235152'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26454096832864304)
,p_plug_name=>'Breadcrumbs'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26302281213158471)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(26326422754159229)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(26320400424158741)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26454424731864305)
,p_plug_name=>'Report'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26298462485158431)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select ',
'    c001,',
'    c002,',
'    c003,',
'    c004,',
'    c005',
'  from apex_collections',
'  where collection_name = ''DATA_COLLECTION'''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(26454899442864305)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'ADMIN'
,p_internal_uid=>26454899442864305
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26454969054864305)
,p_db_column_name=>'C001'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'STRING'
,p_heading_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26455368215864305)
,p_db_column_name=>'C002'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26455758475864305)
,p_db_column_name=>'C003'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Description'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26456168415864306)
,p_db_column_name=>'C004'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Year'
,p_column_type=>'STRING'
,p_heading_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26456578065864306)
,p_db_column_name=>'C005'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Link'
,p_column_link=>'#C005#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#magnifying_glass_white_bg.gif" alt="">'
,p_column_link_attr=>'target="_blank"'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(26456978521864306)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'264570'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'C001:C002:C003:C004:C005'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(26457728898864307)
,p_name=>'UILayout - UT'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(26458294462864307)
,p_event_id=>wwv_flow_api.id(26457728898864307)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM.AAW.UILAYOUT_UT'
,p_attribute_03=>'Y'
,p_attribute_04=>'350'
,p_attribute_05=>'450'
,p_attribute_06=>'UT'
,p_attribute_08=>'10'
,p_attribute_09=>'N'
,p_attribute_13=>'N'
,p_attribute_15=>'Y'
);
end;
/
prompt --application/pages/page_00006
begin
wwv_flow_api.create_page(
 p_id=>6
,p_user_interface_id=>wwv_flow_api.id(26325196397159052)
,p_name=>'UILayout dynamic interaction'
,p_page_mode=>'NORMAL'
,p_step_title=>'UILayout dynamic interaction'
,p_step_sub_title=>'UILayout dynamic interaction'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(26283777561158016)
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20160201092323'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(25986755946275649)
,p_plug_name=>'Buttons using Dynamic Actions'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(26298915463158438)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26461945105009235)
,p_plug_name=>'Breadcrumbs'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26302281213158471)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(26326422754159229)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(26320400424158741)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(25986899875275650)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(25986755946275649)
,p_button_name=>'CLOSE_LEFT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26319945408158728)
,p_button_image_alt=>'Close left area'
,p_button_position=>'BODY'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26470231381023501)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(25986755946275649)
,p_button_name=>'OPEN_LEFT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26319945408158728)
,p_button_image_alt=>'Open left area'
,p_button_position=>'BODY'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26470893021023507)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(25986755946275649)
,p_button_name=>'TOGGLE_RIGHT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26319945408158728)
,p_button_image_alt=>'Toogle right area'
,p_button_position=>'BODY'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(26465618559009238)
,p_name=>'UILayout - UT'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(26466166221009239)
,p_event_id=>wwv_flow_api.id(26465618559009238)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM.AAW.UILAYOUT_UT'
,p_attribute_01=>'250'
,p_attribute_02=>'350'
,p_attribute_03=>'Y'
,p_attribute_04=>'250'
,p_attribute_05=>'350'
,p_attribute_06=>'UT'
,p_attribute_07=>'10'
,p_attribute_08=>'10'
,p_attribute_09=>'Y'
,p_attribute_10=>'100'
,p_attribute_11=>'200'
,p_attribute_12=>'10'
,p_attribute_13=>'Y'
,p_attribute_15=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(26470431633023503)
,p_name=>'CLOSE_LEFT'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(25986899875275650)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(26470538001023504)
,p_event_id=>wwv_flow_api.id(26470431633023503)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'innerLayout.close("west");'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(26470626733023505)
,p_name=>'OPEN_LEFT'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(26470231381023501)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(26470737113023506)
,p_event_id=>wwv_flow_api.id(26470626733023505)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'innerLayout.open("west");'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(26470901377023508)
,p_name=>'TOGGLE_RIGHT'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(26470893021023507)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(26471037438023509)
,p_event_id=>wwv_flow_api.id(26470901377023508)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'myLayout.toggle("east");'
);
end;
/
prompt --application/pages/page_00007
begin
wwv_flow_api.create_page(
 p_id=>7
,p_user_interface_id=>wwv_flow_api.id(26325196397159052)
,p_name=>'UILayout Video'
,p_page_mode=>'NORMAL'
,p_step_title=>'UILayout Video'
,p_step_sub_title=>'UILayout Video'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(26287222156158097)
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20160201164931'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26485645199197115)
,p_plug_name=>'Breadcrumbs'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26302281213158471)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(26326422754159229)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(26320400424158741)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26486034658197115)
,p_plug_name=>'Report'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26298462485158431)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select ',
'    c001,',
'    c002,',
'    c003,',
'    c004,',
'    c005',
'  from apex_collections',
'  where collection_name = ''DATA_COLLECTION'''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(26486404926197116)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'ADMIN'
,p_internal_uid=>26486404926197116
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26486563873197116)
,p_db_column_name=>'C001'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'STRING'
,p_heading_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26486915107197116)
,p_db_column_name=>'C002'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26487318807197116)
,p_db_column_name=>'C003'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Description'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26487759701197117)
,p_db_column_name=>'C004'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Year'
,p_column_type=>'STRING'
,p_heading_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26488153190197117)
,p_db_column_name=>'C005'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Link'
,p_column_link=>'#C005#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#magnifying_glass_white_bg.gif" alt="">'
,p_column_link_attr=>'target="_blank"'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(26488538955197117)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'264886'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'C001:C002:C003:C004:C005'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(26471518338023514)
,p_name=>'UILayout Example'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(26471683298023515)
,p_event_id=>wwv_flow_api.id(26471518338023514)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM.AAW.UILAYOUT_UT'
,p_attribute_01=>'200'
,p_attribute_02=>'400'
,p_attribute_03=>'Y'
,p_attribute_04=>'250'
,p_attribute_05=>'450'
,p_attribute_06=>'UT'
,p_attribute_07=>'6'
,p_attribute_08=>'14'
,p_attribute_09=>'N'
,p_attribute_13=>'Y'
,p_attribute_15=>'Y'
);
end;
/
prompt --application/pages/page_00101
begin
wwv_flow_api.create_page(
 p_id=>101
,p_user_interface_id=>wwv_flow_api.id(26325196397159052)
,p_name=>'Login Page'
,p_alias=>'LOGIN_DESKTOP'
,p_page_mode=>'NORMAL'
,p_step_title=>'LayoutPlugin - Log In'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(26284733130158035)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_last_upd_yyyymmddhh24miss=>'20160113202341'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26325613593159152)
,p_plug_name=>'Log In'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(26298915463158438)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26325930306159194)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(26325613593159152)
,p_button_name=>'LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26319945408158728)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Log In'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>false
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26325709049159172)
,p_name=>'P101_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(26325613593159152)
,p_prompt=>'Username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26319440092158708)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26325855773159194)
,p_name=>'P101_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(26325613593159152)
,p_prompt=>'Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26319440092158708)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(26326186241159225)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Username Cookie'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'apex_authentication.send_login_username_cookie (',
'    p_username => lower(:P101_USERNAME) );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(26326088838159207)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Login'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'apex_authentication.login(',
'    p_username => :P101_USERNAME,',
'    p_password => :P101_PASSWORD );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(26326346187159229)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(26326266597159225)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>':P101_USERNAME := apex_authentication.get_login_username_cookie;'
);
end;
/
prompt --application/deployment/definition
begin
null;
end;
/
prompt --application/deployment/install
begin
null;
end;
/
prompt --application/deployment/checks
begin
null;
end;
/
prompt --application/deployment/buildoptions
begin
null;
end;
/
prompt --application/end_environment
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
