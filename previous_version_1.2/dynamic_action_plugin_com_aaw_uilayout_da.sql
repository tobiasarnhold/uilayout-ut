set define off
set verify off
set serveroutput on size 1000000
set feedback off
WHENEVER SQLERROR EXIT SQL.SQLCODE ROLLBACK
begin wwv_flow.g_import_in_progress := true; end; 
/
 
--       AAAA       PPPPP   EEEEEE  XX      XX
--      AA  AA      PP  PP  EE       XX    XX
--     AA    AA     PP  PP  EE        XX  XX
--    AAAAAAAAAA    PPPPP   EEEE       XXXX
--   AA        AA   PP      EE        XX  XX
--  AA          AA  PP      EE       XX    XX
--  AA          AA  PP      EEEEEE  XX      XX
prompt  Set Credentials...
 
begin
 
  -- Assumes you are running the script connected to SQL*Plus as the Oracle user APEX_040000 or as the owner (parsing schema) of the application.
  wwv_flow_api.set_security_group_id(p_security_group_id=>nvl(wwv_flow_application_install.get_workspace_id,4417160330545753312));
 
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
begin wwv_flow.g_browser_language := 'en'; end;
/
prompt  Check Compatibility...
 
begin
 
-- This date identifies the minimum version required to import this file.
wwv_flow_api.set_version(p_version_yyyy_mm_dd=>'2010.05.13');
 
end;
/

prompt  Set Application ID...
 
begin
 
   -- SET APPLICATION ID
   wwv_flow.g_flow_id := nvl(wwv_flow_application_install.get_application_id,65560);
   wwv_flow_api.g_id_offset := nvl(wwv_flow_application_install.get_offset,0);
null;
 
end;
/

prompt  ...plugins
--
--application/shared_components/plugins/dynamic_action/com_aaw_uilayout_da
 
begin
 
wwv_flow_api.create_plugin (
  p_id => 8108954950087202570 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_type => 'DYNAMIC ACTION'
 ,p_name => 'COM.AAW.UILAYOUT_DA'
 ,p_display_name => 'UILayout - Dynamic Action'
 ,p_category => 'EFFECT'
 ,p_image_prefix => '#PLUGIN_PREFIX#'
 ,p_plsql_code => 
'-- Developed by Tobias Arnhold - http://apex-at-work.blogspot.com/'||chr(10)||
'-- tobias-arnhold@hotmail.de'||chr(10)||
'FUNCTION render_uilayout_setting (p_dynamic_action IN apex_plugin.t_dynamic_action, p_plugin IN apex_plugin.t_plugin)'||chr(10)||
'  RETURN apex_plugin.t_dynamic_action_render_result'||chr(10)||
'AS'||chr(10)||
'  -- Return variable'||chr(10)||
'  v_result                      apex_plugin.t_dynamic_action_render_result;'||chr(10)||
''||chr(10)||
'  -- Save plugin-parameter in loc'||
'al variables'||chr(10)||
'  vAction apex_application_page_regions.attribute_01%type := p_dynamic_action.attribute_01;'||chr(10)||
'  vPane   apex_application_page_regions.attribute_02%type := lower(p_dynamic_action.attribute_02);'||chr(10)||
'  vResize apex_application_page_regions.attribute_03%type := p_dynamic_action.attribute_03;'||chr(10)||
'  '||chr(10)||
'  completeCode varchar2(4000);'||chr(10)||
''||chr(10)||
'begin'||chr(10)||
'/* During plug-in development it''s very helpful to have some de'||
'bug information */'||chr(10)||
'  IF APEX_APPLICATION.g_debug THEN'||chr(10)||
'    apex_plugin_util.debug_dynamic_action (p_plugin => p_plugin, p_dynamic_action => p_dynamic_action);'||chr(10)||
'  END IF;'||chr(10)||
''||chr(10)||
'/* Escaping der Parameter */'||chr(10)||
'  vAction := apex_plugin_util.escape(vAction, true);'||chr(10)||
'  vPane   := apex_plugin_util.escape(vPane, true);'||chr(10)||
'  vResize := apex_plugin_util.escape(vResize, true);'||chr(10)||
''||chr(10)||
'/* Function declaration */'||chr(10)||
'  completeCode :='||
' ''function(){''||chr(10);'||chr(10)||
'  '||chr(10)||
'  if vAction = ''RESIZE'' then'||chr(10)||
'    completeCode := completeCode || ''myLayout.sizePane("''||vPane||''", ''||vResize||''); '' ||chr(10);'||chr(10)||
'  elsif vAction = ''HIDE'' then'||chr(10)||
'    completeCode := completeCode || ''myLayout.hide("''||vPane||''"); ''||chr(10); '||chr(10)||
'  elsif vAction = ''SHOW'' then'||chr(10)||
'    completeCode := completeCode || ''myLayout.show("''||vPane||''"); ''||chr(10); '||chr(10)||
'  elsif vAction = ''ENABL'||
'E'' then  '||chr(10)||
'    completeCode := completeCode || ''myLayout.enableClosable("''||vPane||''"); myLayout.enableResizable("''||vPane||''"); ''||chr(10);'||chr(10)||
'  elsif vAction = ''DISABLE'' then  '||chr(10)||
'    completeCode := completeCode || ''myLayout.disableClosable("''||vPane||''",true); myLayout.disableResizable("''||vPane||''"); ''||chr(10);'||chr(10)||
'  end if;'||chr(10)||
'  '||chr(10)||
'/* Finish Code */'||chr(10)||
'  completeCode := completeCode || ''}'';'||chr(10)||
'  '||chr(10)||
'  v_result.java'||
'script_function := completeCode;'||chr(10)||
'  return v_result;'||chr(10)||
'end render_uilayout_setting;'
 ,p_render_function => 'render_uilayout_setting'
 ,p_help_text => '<p>'||chr(10)||
'	With this plug-in you use single actions for the UILayout during the runtime to specific area.</p>'||chr(10)||
'<p>'||chr(10)||
'	Developed by Tobias Arnhold - http://apex-at-work.blogspot.com/<br />'||chr(10)||
'	EMail: tobias-arnhold@hotmail.de</p>'||chr(10)||
'<p>'||chr(10)||
'	Example: http://apex.oracle.com/pls/otn/f?p=65560:1</p>'||chr(10)||
'<p>'||chr(10)||
'	Based on the following jQuery Plugin: http://layout.jquery-dev.net/ (1.3)</p>'||chr(10)||
'<p>'||chr(10)||
'	License: This plug-in is dual-licensed under the GPL and MIT licenses.</p>'||chr(10)||
''
 ,p_version_identifier => '1.2'
 ,p_about_url => 'http://apex-at-work.blogspot.com/'
  );
wwv_flow_api.create_plugin_attribute (
  p_id => 8108955756451213956 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_id => 8108954950087202570 + wwv_flow_api.g_id_offset
 ,p_attribute_scope => 'COMPONENT'
 ,p_attribute_sequence => 1
 ,p_display_sequence => 10
 ,p_prompt => 'Action'
 ,p_attribute_type => 'SELECT LIST'
 ,p_is_required => true
 ,p_default_value => 'RESIZE'
 ,p_is_translatable => false
 ,p_help_text => 'Set an action on what you want to execute.'
  );
wwv_flow_api.create_plugin_attr_value (
  p_id => 8108956229917215760 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_attribute_id => 8108955756451213956 + wwv_flow_api.g_id_offset
 ,p_display_sequence => 10
 ,p_display_value => 'Resize area'
 ,p_return_value => 'RESIZE'
  );
wwv_flow_api.create_plugin_attr_value (
  p_id => 8102009611518533388 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_attribute_id => 8108955756451213956 + wwv_flow_api.g_id_offset
 ,p_display_sequence => 15
 ,p_display_value => 'Show area'
 ,p_return_value => 'SHOW'
  );
wwv_flow_api.create_plugin_attr_value (
  p_id => 8108956739613218518 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_attribute_id => 8108955756451213956 + wwv_flow_api.g_id_offset
 ,p_display_sequence => 20
 ,p_display_value => 'Hide area'
 ,p_return_value => 'HIDE'
  );
wwv_flow_api.create_plugin_attr_value (
  p_id => 8108957143423219649 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_attribute_id => 8108955756451213956 + wwv_flow_api.g_id_offset
 ,p_display_sequence => 30
 ,p_display_value => 'Enable area'
 ,p_return_value => 'ENABLE'
  );
wwv_flow_api.create_plugin_attr_value (
  p_id => 8108957547925220918 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_attribute_id => 8108955756451213956 + wwv_flow_api.g_id_offset
 ,p_display_sequence => 40
 ,p_display_value => 'Disable area'
 ,p_return_value => 'DISABLE'
  );
wwv_flow_api.create_plugin_attribute (
  p_id => 8108958353943232080 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_id => 8108954950087202570 + wwv_flow_api.g_id_offset
 ,p_attribute_scope => 'COMPONENT'
 ,p_attribute_sequence => 2
 ,p_display_sequence => 20
 ,p_prompt => 'Pane (UILayout area name)'
 ,p_attribute_type => 'TEXT'
 ,p_is_required => true
 ,p_default_value => 'west'
 ,p_display_length => 50
 ,p_max_length => 50
 ,p_is_translatable => false
 ,p_help_text => 'Enter the name of the UILayout area. For example: west<br>'||chr(10)||
'Other possible values: north, east, south'
  );
wwv_flow_api.create_plugin_attribute (
  p_id => 8108958840222237593 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_id => 8108954950087202570 + wwv_flow_api.g_id_offset
 ,p_attribute_scope => 'COMPONENT'
 ,p_attribute_sequence => 3
 ,p_display_sequence => 30
 ,p_prompt => 'Resize value'
 ,p_attribute_type => 'NUMBER'
 ,p_is_required => true
 ,p_default_value => '100'
 ,p_display_length => 50
 ,p_max_length => 50
 ,p_is_translatable => false
 ,p_depending_on_attribute_id => 8108955756451213956 + wwv_flow_api.g_id_offset
 ,p_depending_on_condition_type => 'EQUALS'
 ,p_depending_on_expression => 'RESIZE'
 ,p_help_text => 'Set new new value of the area width.'
  );
null;
 
end;
/

commit;
begin 
execute immediate 'begin dbms_session.set_nls( param => ''NLS_NUMERIC_CHARACTERS'', value => '''''''' || replace(wwv_flow_api.g_nls_numeric_chars,'''''''','''''''''''') || ''''''''); end;';
end;
/
set verify on
set feedback on
prompt  ...done
