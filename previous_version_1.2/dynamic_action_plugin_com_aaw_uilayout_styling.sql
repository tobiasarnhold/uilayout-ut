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
--application/shared_components/plugins/dynamic_action/com_aaw_uilayout_styling
 
begin
 
wwv_flow_api.create_plugin (
  p_id => 8348262015482729964 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_type => 'DYNAMIC ACTION'
 ,p_name => 'COM.AAW.UILAYOUT_STYLING'
 ,p_display_name => 'UILayout - Styling'
 ,p_category => 'STYLE'
 ,p_image_prefix => '#PLUGIN_PREFIX#'
 ,p_plsql_code => 
'-- Developed by Tobias Arnhold - http://apex-at-work.blogspot.com/'||chr(10)||
'-- tobias-arnhold@hotmail.de'||chr(10)||
'FUNCTION render_uilayout_styling (p_dynamic_action IN apex_plugin.t_dynamic_action, p_plugin IN apex_plugin.t_plugin)'||chr(10)||
'  RETURN apex_plugin.t_dynamic_action_render_result'||chr(10)||
'AS'||chr(10)||
'  -- Return variable'||chr(10)||
'  v_result                      apex_plugin.t_dynamic_action_render_result;'||chr(10)||
''||chr(10)||
'  -- Save plugin-parameter in loc'||
'al variables'||chr(10)||
'  paneAction                 apex_application_page_regions.attribute_01%type := p_dynamic_action.attribute_01;'||chr(10)||
'  paneTogglerBackground      apex_application_page_regions.attribute_02%type := p_dynamic_action.attribute_02;'||chr(10)||
'  paneTogglerBorder          apex_application_page_regions.attribute_03%type := p_dynamic_action.attribute_03;'||chr(10)||
'  paneResizerBackground      apex_application_page_reg'||
'ions.attribute_04%type := p_dynamic_action.attribute_04;'||chr(10)||
'  paneResizerBorder          apex_application_page_regions.attribute_05%type := p_dynamic_action.attribute_05;'||chr(10)||
'  paneResizerOpacity         apex_application_page_regions.attribute_06%type := p_dynamic_action.attribute_06;'||chr(10)||
'  paneTogglerBackgroundHover apex_application_page_regions.attribute_07%type := p_dynamic_action.attribute_07;'||chr(10)||
''||chr(10)||
'  '||chr(10)||
'  -- V'||
'ariables for javascript parts'||chr(10)||
'  completeCode varchar2(4000) := '''';'||chr(10)||
'  '||chr(10)||
'  vValue       varchar2(100)  := '''';'||chr(10)||
'  vValue2      varchar2(100)  := '''';'||chr(10)||
'  vTemp1       varchar2(20)   := '''';'||chr(10)||
'  vTemp2       varchar2(20)   := '''';'||chr(10)||
'  vTemp3       varchar2(20)   := '''';'||chr(10)||
'  VTemp4       varchar2(20)   := '''';'||chr(10)||
'  VTemp5       varchar2(20)   := '''';'||chr(10)||
'  vTemp6       varchar2(20)   := '''';'||chr(10)||
'  vTemp7       varchar2(20)   := '''||
''';'||chr(10)||
'  vTemp8       varchar2(20)   := '''';'||chr(10)||
''||chr(10)||
'begin'||chr(10)||
'/* During plug-in development it''s very helpful to have some debug information */'||chr(10)||
'  IF APEX_APPLICATION.g_debug THEN'||chr(10)||
'    apex_plugin_util.debug_dynamic_action (p_plugin => p_plugin, p_dynamic_action => p_dynamic_action);'||chr(10)||
'  END IF;'||chr(10)||
''||chr(10)||
'/* Escaping der Parameter */'||chr(10)||
'  paneAction                 := apex_plugin_util.escape(paneAction, true);'||chr(10)||
'  paneTogglerBack'||
'ground      := apex_plugin_util.escape(paneTogglerBackground, true);'||chr(10)||
'  paneTogglerBorder          := apex_plugin_util.escape(paneTogglerBorder, true);'||chr(10)||
'  paneResizerBackground      := apex_plugin_util.escape(paneResizerBackground, true);'||chr(10)||
'  paneResizerBorder          := apex_plugin_util.escape(paneResizerBorder, true);'||chr(10)||
'  paneResizerOpacity         := apex_plugin_util.escape(paneResizerOpacity, true)'||
';'||chr(10)||
'  paneTogglerBackgroundHover := apex_plugin_util.escape(paneTogglerBackgroundHover, true);'||chr(10)||
''||chr(10)||
'/* Function declaration */'||chr(10)||
'  completeCode := ''function(){''||chr(10);'||chr(10)||
'  '||chr(10)||
'/* Check pane action */'||chr(10)||
'if paneAction in (''ALL'') then'||chr(10)||
'  /* paneTogglerBackground */'||chr(10)||
'  vValue := paneTogglerBackground;'||chr(10)||
'    /* North */'||chr(10)||
'    vTemp1 := substr(vValue,1,instr(vValue,'','',1)-1);'||chr(10)||
'    /* East */'||chr(10)||
'    vTemp2 := substr(vValue,in'||
'str(vValue,'','',1,1)+1,instr(vValue,'','',1,2)-instr(vValue,'','',1,1)-1);'||chr(10)||
'    /* South */'||chr(10)||
'    vTemp3 := substr(vValue,instr(vValue,'','',1,2)+1,instr(vValue,'','',1,3)-instr(vValue,'','',1,2)-1);'||chr(10)||
'    /* West */'||chr(10)||
'    vTemp4 := substr(vValue,instr(vValue,'','',1,3)+1);'||chr(10)||
'    /* Build code */'||chr(10)||
'    completeCode := completeCode || ''$(".ui-layout-toggler-north").css("backgroundColor","''|| vTemp1 ||''"); '' || chr(10);'||chr(10)||
'  '||
'  completeCode := completeCode || ''$(".ui-layout-toggler-east").css("backgroundColor","'' || vTemp2 ||''"); '' || chr(10);'||chr(10)||
'    completeCode := completeCode || ''$(".ui-layout-toggler-south").css("backgroundColor","''|| vTemp3 ||''"); '' || chr(10);'||chr(10)||
'    completeCode := completeCode || ''$(".ui-layout-toggler-west").css("backgroundColor","'' || vTemp4 ||''"); '' || chr(10);'||chr(10)||
'    '||chr(10)||
'  /* paneTogglerBorder */'||chr(10)||
'  vVa'||
'lue := paneTogglerBorder;'||chr(10)||
'    /* North */'||chr(10)||
'    vTemp1 := substr(vValue,1,instr(vValue,'','',1)-1);'||chr(10)||
'    /* East */'||chr(10)||
'    vTemp2 := substr(vValue,instr(vValue,'','',1,1)+1,instr(vValue,'','',1,2)-instr(vValue,'','',1,1)-1);'||chr(10)||
'    /* South */'||chr(10)||
'    vTemp3 := substr(vValue,instr(vValue,'','',1,2)+1,instr(vValue,'','',1,3)-instr(vValue,'','',1,2)-1);'||chr(10)||
'    /* West */'||chr(10)||
'    vTemp4 := substr(vValue,instr(vValue,'','',1,3)+1);'||chr(10)||
'    '||
'/* Build code */'||chr(10)||
'    completeCode := completeCode || ''$(".ui-layout-toggler-north").css({borderLeft:"1px solid '' || vTemp1 ||''",borderRight:"1px solid '' || vTemp1 ||''"}); '' || chr(10);'||chr(10)||
'    completeCode := completeCode || ''$(".ui-layout-toggler-east").css({borderBottom:"1px solid '' || vTemp2 ||''",borderTop:"1px solid '' || vTemp2 ||''"}); '' || chr(10);'||chr(10)||
'    completeCode := completeCode || ''$(".ui-layo'||
'ut-toggler-south").css({borderLeft:"1px solid '' || vTemp3 ||''",borderRight:"1px solid '' || vTemp3 ||''"}); '' || chr(10);'||chr(10)||
'    completeCode := completeCode || ''$(".ui-layout-toggler-west").css({borderBottom:"1px solid '' || vTemp4 ||''",borderTop:"1px solid '' || vTemp4 ||''"}); '' || chr(10);'||chr(10)||
'    '||chr(10)||
'  /* paneResizerBackground */'||chr(10)||
'  vValue := paneResizerBackground;'||chr(10)||
'    /* North */'||chr(10)||
'    vTemp1 := substr(vValue'||
',1,instr(vValue,'','',1)-1);'||chr(10)||
'    /* East */'||chr(10)||
'    vTemp2 := substr(vValue,instr(vValue,'','',1,1)+1,instr(vValue,'','',1,2)-instr(vValue,'','',1,1)-1);'||chr(10)||
'    /* South */'||chr(10)||
'    vTemp3 := substr(vValue,instr(vValue,'','',1,2)+1,instr(vValue,'','',1,3)-instr(vValue,'','',1,2)-1);'||chr(10)||
'    /* West */'||chr(10)||
'    vTemp4 := substr(vValue,instr(vValue,'','',1,3)+1);'||chr(10)||
'    /* Build code */'||chr(10)||
'    completeCode := completeCode || ''$(".ui-layout-r'||
'esizer-north").css("backgroundColor","'' || vTemp1 ||''"); '' || chr(10);'||chr(10)||
'    completeCode := completeCode || ''$(".ui-layout-resizer-east").css("backgroundColor","''  || vTemp2 ||''"); '' || chr(10);'||chr(10)||
'    completeCode := completeCode || ''$(".ui-layout-resizer-south").css("backgroundColor","'' || vTemp3 ||''"); '' || chr(10);'||chr(10)||
'    completeCode := completeCode || ''$(".ui-layout-resizer-west").css("backgroundCo'||
'lor","''  || vTemp4 ||''"); '' || chr(10);'||chr(10)||
'    '||chr(10)||
'  /* paneResizerBorder */'||chr(10)||
'  vValue := paneResizerBorder;'||chr(10)||
'    /* North */'||chr(10)||
'    vTemp1 := substr(vValue,1,instr(vValue,'','',1)-1);'||chr(10)||
'    /* East */'||chr(10)||
'    vTemp2 := substr(vValue,instr(vValue,'','',1,1)+1,instr(vValue,'','',1,2)-instr(vValue,'','',1,1)-1);'||chr(10)||
'    /* South */'||chr(10)||
'    vTemp3 := substr(vValue,instr(vValue,'','',1,2)+1,instr(vValue,'','',1,3)-instr(vValue,'','',1,2)-1'||
');'||chr(10)||
'    /* West */'||chr(10)||
'    vTemp4 := substr(vValue,instr(vValue,'','',1,3)+1);'||chr(10)||
'    /* Build code */'||chr(10)||
'    completeCode := completeCode || ''$(".ui-layout-north").css("borderBottomColor","'' || vTemp1 ||''"); '' || chr(10);'||chr(10)||
'    completeCode := completeCode || ''$(".ui-layout-east").css("borderLeftColor","''    || vTemp2 ||''"); '' || chr(10);'||chr(10)||
'    completeCode := completeCode || ''$(".ui-layout-south").css("borderTop'||
'Color","''    || vTemp3 ||''"); '' || chr(10);'||chr(10)||
'    completeCode := completeCode || ''$(".ui-layout-west").css("borderRightColor","''   || vTemp4 ||''"); '' || chr(10);'||chr(10)||
''||chr(10)||
'    completeCode := completeCode || ''$(".ui-layout-center,.ui-layout-east,.ui-layout-west").css("borderTopColor","''   || vTemp1 ||''"); '' || chr(10);'||chr(10)||
'    completeCode := completeCode || ''$(".ui-layout-center").css("borderRightColor","''    '||
'                             || vTemp2 ||''"); '' || chr(10);'||chr(10)||
'    completeCode := completeCode || ''$(".ui-layout-center,.ui-layout-east,.ui-layout-west").css("borderBottomColor","''|| vTemp3 ||''"); '' || chr(10);'||chr(10)||
'    completeCode := completeCode || ''$(".ui-layout-center").css("borderLeftColor","''                                  || vTemp4 ||''"); '' || chr(10);'||chr(10)||
'    '||chr(10)||
'  /* paneResizerOpacity */'||chr(10)||
'  vValue :'||
'= paneResizerOpacity;'||chr(10)||
'    /* North */'||chr(10)||
'    vTemp1 := substr(vValue,1,instr(vValue,'','',1)-1);'||chr(10)||
'    /* East */'||chr(10)||
'    vTemp2 := substr(vValue,instr(vValue,'','',1,1)+1,instr(vValue,'','',1,2)-instr(vValue,'','',1,1)-1);'||chr(10)||
'    /* South */'||chr(10)||
'    vTemp3 := substr(vValue,instr(vValue,'','',1,2)+1,instr(vValue,'','',1,3)-instr(vValue,'','',1,2)-1);'||chr(10)||
'    /* West */'||chr(10)||
'    vTemp4 := substr(vValue,instr(vValue,'','',1,3)+1);'||chr(10)||
'    /* B'||
'uild code */'||chr(10)||
'     completeCode := completeCode || ''$(".ui-layout-resizer-north").css("opacity","'' || vTemp1 ||''"); '' || chr(10);'||chr(10)||
'     completeCode := completeCode || ''$(".ui-layout-resizer-east").css("opacity","''  || vTemp2 ||''"); '' || chr(10);'||chr(10)||
'     completeCode := completeCode || ''$(".ui-layout-resizer-south").css("opacity","'' || vTemp3 ||''"); '' || chr(10);'||chr(10)||
'     completeCode := completeCode || ''$'||
'(".ui-layout-resizer-west").css("opacity","''  || vTemp4 ||''"); '' || chr(10);'||chr(10)||
'     '||chr(10)||
'  /* paneTogglerBackgroundHover */'||chr(10)||
'  vValue  := paneTogglerBackgroundHover;'||chr(10)||
'  vValue2 := paneTogglerBackground;'||chr(10)||
'    /* North */'||chr(10)||
'    vTemp1 := substr(vValue,1,instr(vValue,'','',1)-1);'||chr(10)||
'    vTemp5 := substr(vValue2,1,instr(vValue2,'','',1)-1);'||chr(10)||
'    /* East */'||chr(10)||
'    vTemp2 := substr(vValue,instr(vValue,'','',1,1)+1,instr(vValue'||
','','',1,2)-instr(vValue,'','',1,1)-1);'||chr(10)||
'    vTemp6 := substr(vValue2,instr(vValue2,'','',1,1)+1,instr(vValue2,'','',1,2)-instr(vValue2,'','',1,1)-1);'||chr(10)||
'    /* South */'||chr(10)||
'    vTemp3 := substr(vValue,instr(vValue,'','',1,2)+1,instr(vValue,'','',1,3)-instr(vValue,'','',1,2)-1);'||chr(10)||
'    vTemp7 := substr(vValue2,instr(vValue2,'','',1,2)+1,instr(vValue2,'','',1,3)-instr(vValue2,'','',1,2)-1);'||chr(10)||
'    /* West */'||chr(10)||
'    vTemp4 := substr(vVal'||
'ue,instr(vValue,'','',1,3)+1);'||chr(10)||
'    vTemp8 := substr(vValue2,instr(vValue2,'','',1,3)+1);'||chr(10)||
'    /* Build code */'||chr(10)||
'     completeCode := completeCode || ''$("div.ui-layout-toggler").hover(function() {$(this).css("backgroundColor","''||vTemp1||''");}, '''||chr(10)||
'                                  || ''function() {$(this).css("backgroundColor","''||vTemp5||''");});'' || chr(10);'||chr(10)||
'     completeCode := completeCode || ''$("div.ui'||
'-layout-toggler").hover(function() {$(this).css("backgroundColor","''||vTemp2||''");}, '''||chr(10)||
'                                  || ''function() {$(this).css("backgroundColor","''||vTemp6||''");});'' || chr(10);'||chr(10)||
'     completeCode := completeCode || ''$("div.ui-layout-toggler").hover(function() {$(this).css("backgroundColor","''||vTemp3||''");}, '''||chr(10)||
'                                  || ''function() {$(this).css("bac'||
'kgroundColor","''||vTemp7||''");});'' || chr(10);'||chr(10)||
'     completeCode := completeCode || ''$("div.ui-layout-toggler").hover(function() {$(this).css("backgroundColor","''||vTemp4||''");}, '''||chr(10)||
'                                  || ''function() {$(this).css("backgroundColor","''||vTemp8||''");});'' || chr(10);'||chr(10)||
'    '||chr(10)||
'    '||chr(10)||
'else'||chr(10)||
'  if paneAction = ''NORTH'' then'||chr(10)||
'     completeCode := completeCode || ''$(".ui-layout-toggler-'||
'north").css("backgroundColor","''||paneTogglerBackground ||''"); '' || chr(10);'||chr(10)||
'     completeCode := completeCode || ''$(".ui-layout-toggler-north").css({borderLeft:"1px solid '' || paneTogglerBorder ||''",borderRight:"1px solid '' || paneTogglerBorder ||''"}); '' || chr(10);'||chr(10)||
'     completeCode := completeCode || ''$(".ui-layout-resizer-north").css("backgroundColor","''||paneResizerBackground ||''"); '' || chr('||
'10);'||chr(10)||
'     completeCode := completeCode || ''$(".ui-layout-center,.ui-layout-east,.ui-layout-west").css("borderTopColor","''||paneResizerBorder||''"); '' || chr(10);'||chr(10)||
'     completeCode := completeCode || ''$(".ui-layout-north").css("borderBottomColor","''      ||paneResizerBorder     ||''"); '' || chr(10);'||chr(10)||
'     completeCode := completeCode || ''$(".ui-layout-resizer-north").css("opacity","''        ||paneResi'||
'zerOpacity    ||''"); '' || chr(10);'||chr(10)||
'     completeCode := completeCode || ''$("div.ui-layout-toggler").hover(function() {$(this).css("backgroundColor","''||paneTogglerBackgroundHover||''");}, '''||chr(10)||
'                                  || ''function() {$(this).css("backgroundColor","''||paneTogglerBackground||''");});'' || chr(10);'||chr(10)||
'  elsif paneAction = ''EAST'' then'||chr(10)||
'     completeCode := completeCode || ''$(".ui-layou'||
't-toggler-east").css("backgroundColor","''||paneTogglerBackground ||''"); '' || chr(10);'||chr(10)||
'     completeCode := completeCode || ''$(".ui-layout-toggler-north").css({borderBottom:"1px solid '' || paneTogglerBorder ||''",borderTop:"1px solid '' || paneTogglerBorder ||''"}); '' || chr(10);'||chr(10)||
'     completeCode := completeCode || ''$(".ui-layout-resizer-east").css("backgroundColor","''||paneResizerBackground ||''"); '''||
' || chr(10);'||chr(10)||
'     completeCode := completeCode || ''$(".ui-layout-center").css("borderRightColor","''     ||paneResizerBorder     ||''"); '' || chr(10);'||chr(10)||
'     completeCode := completeCode || ''$(".ui-layout-east").css("borderLeftColor","''        ||paneResizerBorder     ||''"); '' || chr(10);'||chr(10)||
'     completeCode := completeCode || ''$(".ui-layout-resizer-east").css("opacity","''        ||paneResizerOpacity    '||
'||''"); '' || chr(10);'||chr(10)||
'     completeCode := completeCode || ''$("div.ui-layout-toggler").hover(function() {$(this).css("backgroundColor","''||paneTogglerBackgroundHover||''");}, '''||chr(10)||
'                                  || ''function() {$(this).css("backgroundColor","''||paneTogglerBackground||''");});'' || chr(10);'||chr(10)||
'  elsif paneAction = ''SOUTH'' then'||chr(10)||
'     completeCode := completeCode || ''$(".ui-layout-toggler-sou'||
'th").css("backgroundColor","''||paneTogglerBackground ||''"); '' || chr(10);'||chr(10)||
'     completeCode := completeCode || ''$(".ui-layout-toggler-north").css({borderLeft:"1px solid '' || paneTogglerBorder ||''",borderRight:"1px solid '' || paneTogglerBorder ||''"}); '' || chr(10);'||chr(10)||
'     completeCode := completeCode || ''$(".ui-layout-resizer-south").css("backgroundColor","''||paneResizerBackground ||''"); '' || chr(10)'||
';'||chr(10)||
'     completeCode := completeCode || ''$(".ui-layout-center,.ui-layout-east,.ui-layout-west").css("borderBottomColor","''||paneResizerBorder||''"); '' || chr(10);'||chr(10)||
'     completeCode := completeCode || ''$(".ui-layout-south").css("borderTopColor","''         ||paneResizerBorder     ||''"); '' || chr(10);'||chr(10)||
'     completeCode := completeCode || ''$(".ui-layout-resizer-south").css("opacity","''        ||paneResi'||
'zerOpacity    ||''"); '' || chr(10);'||chr(10)||
'     completeCode := completeCode || ''$("div.ui-layout-toggler").hover(function() {$(this).css("backgroundColor","''||paneTogglerBackgroundHover||''");}, '''||chr(10)||
'                                  || ''function() {$(this).css("backgroundColor","''||paneTogglerBackground||''");});'' || chr(10);'||chr(10)||
'  elsif paneAction = ''WEST'' then'||chr(10)||
'     completeCode := completeCode || ''$(".ui-layou'||
't-toggler-west").css("backgroundColor","''||paneTogglerBackground ||''"); '' || chr(10);'||chr(10)||
'     completeCode := completeCode || ''$(".ui-layout-toggler-north").css({borderBottom:"1px solid '' || paneTogglerBorder ||''",borderTop:"1px solid '' || paneTogglerBorder ||''"}); '' || chr(10);'||chr(10)||
'     completeCode := completeCode || ''$(".ui-layout-resizer-west").css("backgroundColor","''||paneResizerBackground ||''"); '''||
' || chr(10);'||chr(10)||
'     completeCode := completeCode || ''$(".ui-layout-center").css("borderLeftColor","''      ||paneResizerBorder     ||''"); '' || chr(10);'||chr(10)||
'     completeCode := completeCode || ''$(".ui-layout-west").css("borderRightColor","''       ||paneResizerBorder     ||''"); '' || chr(10);'||chr(10)||
'     completeCode := completeCode || ''$(".ui-layout-resizer-west").css("opacity","''        ||paneResizerOpacity    '||
'||''"); '' || chr(10);'||chr(10)||
'     completeCode := completeCode || ''$("div.ui-layout-toggler").hover(function() {$(this).css("backgroundColor","''||paneTogglerBackgroundHover||''");}, '''||chr(10)||
'                                  || ''function() {$(this).css("backgroundColor","''||paneTogglerBackground||''");});'' || chr(10);'||chr(10)||
'  end if;'||chr(10)||
'end if;'||chr(10)||
''||chr(10)||
'/* Finish Code */'||chr(10)||
'  completeCode := completeCode || ''}'';'||chr(10)||
''||chr(10)||
'  v_result.javascrip'||
't_function := completeCode;'||chr(10)||
'  return v_result;'||chr(10)||
'end render_uilayout_styling;'
 ,p_render_function => 'render_uilayout_styling'
 ,p_help_text => '<p>'||chr(10)||
'	This plug-in sets the appearance of the UILayout CSS Styles</p>'||chr(10)||
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
  p_id => 8348262230073762597 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_id => 8348262015482729964 + wwv_flow_api.g_id_offset
 ,p_attribute_scope => 'COMPONENT'
 ,p_attribute_sequence => 1
 ,p_display_sequence => 10
 ,p_prompt => 'Pane selection'
 ,p_attribute_type => 'SELECT LIST'
 ,p_is_required => true
 ,p_default_value => 'ALL'
 ,p_is_translatable => false
 ,p_help_text => 'Select which panes should be affected (All,North,East,South,West).<br>'||chr(10)||
'If you select all then you need to put your values in this order: North,East,South,West'
  );
wwv_flow_api.create_plugin_attr_value (
  p_id => 8348262732844763436 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_attribute_id => 8348262230073762597 + wwv_flow_api.g_id_offset
 ,p_display_sequence => 10
 ,p_display_value => 'All panes'
 ,p_return_value => 'ALL'
  );
wwv_flow_api.create_plugin_attr_value (
  p_id => 8348263116352768126 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_attribute_id => 8348262230073762597 + wwv_flow_api.g_id_offset
 ,p_display_sequence => 20
 ,p_display_value => 'North'
 ,p_return_value => 'NORTH'
  );
wwv_flow_api.create_plugin_attr_value (
  p_id => 8348263518084768600 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_attribute_id => 8348262230073762597 + wwv_flow_api.g_id_offset
 ,p_display_sequence => 30
 ,p_display_value => 'East'
 ,p_return_value => 'EAST'
  );
wwv_flow_api.create_plugin_attr_value (
  p_id => 8348263919815769100 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_attribute_id => 8348262230073762597 + wwv_flow_api.g_id_offset
 ,p_display_sequence => 40
 ,p_display_value => 'South'
 ,p_return_value => 'SOUTH'
  );
wwv_flow_api.create_plugin_attr_value (
  p_id => 8348264321200769526 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_attribute_id => 8348262230073762597 + wwv_flow_api.g_id_offset
 ,p_display_sequence => 50
 ,p_display_value => 'West'
 ,p_return_value => 'WEST'
  );
wwv_flow_api.create_plugin_attribute (
  p_id => 8348265121940798119 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_id => 8348262015482729964 + wwv_flow_api.g_id_offset
 ,p_attribute_scope => 'COMPONENT'
 ,p_attribute_sequence => 2
 ,p_display_sequence => 20
 ,p_prompt => 'Toggle Button Background Color'
 ,p_attribute_type => 'TEXT'
 ,p_is_required => true
 ,p_default_value => '#C4E1A4,#C4E1A4,#C4E1A4,#C4E1A4'
 ,p_display_length => 50
 ,p_max_length => 100
 ,p_is_translatable => false
 ,p_help_text => 'Add the color you want to use. If you selected "All panes" then please enter values comma separated:<br> North,East,South,West = #5CABE8,#5CABE8,#5CABE8,#5CABE8<br>else then only the value for the selected pane.'
  );
wwv_flow_api.create_plugin_attribute (
  p_id => 8348265623802808089 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_id => 8348262015482729964 + wwv_flow_api.g_id_offset
 ,p_attribute_scope => 'COMPONENT'
 ,p_attribute_sequence => 3
 ,p_display_sequence => 30
 ,p_prompt => 'Toggle Button Border Color'
 ,p_attribute_type => 'TEXT'
 ,p_is_required => true
 ,p_default_value => '#BBBBBB,#BBBBBB,#BBBBBB,#BBBBBB'
 ,p_display_length => 50
 ,p_max_length => 100
 ,p_is_translatable => false
 ,p_help_text => 'Add the color you want to use. If you selected "All panes" then please enter values comma separated:<br> North,East,South,West = #5CABE8,#5CABE8,#5CABE8,#5CABE8<br>else then only the value for the selected pane.'
  );
wwv_flow_api.create_plugin_attribute (
  p_id => 8348267323933817551 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_id => 8348262015482729964 + wwv_flow_api.g_id_offset
 ,p_attribute_scope => 'COMPONENT'
 ,p_attribute_sequence => 4
 ,p_display_sequence => 40
 ,p_prompt => 'Resizer Background Color'
 ,p_attribute_type => 'TEXT'
 ,p_is_required => true
 ,p_default_value => '#DDDDDD,#DDDDDD,#DDDDDD,#DDDDDD'
 ,p_display_length => 50
 ,p_max_length => 100
 ,p_is_translatable => false
 ,p_help_text => 'Add the color you want to use. If you selected "All panes" then please enter values comma separated:<br> North,East,South,West = #5CABE8,#5CABE8,#5CABE8,#5CABE8<br>else then only the value for the selected pane.'
  );
wwv_flow_api.create_plugin_attribute (
  p_id => 8348267847136824320 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_id => 8348262015482729964 + wwv_flow_api.g_id_offset
 ,p_attribute_scope => 'COMPONENT'
 ,p_attribute_sequence => 5
 ,p_display_sequence => 50
 ,p_prompt => 'Resizer Border Color'
 ,p_attribute_type => 'TEXT'
 ,p_is_required => true
 ,p_default_value => '#BBBBBB,#BBBBBB,#BBBBBB,#BBBBBB'
 ,p_display_length => 50
 ,p_max_length => 100
 ,p_is_translatable => false
 ,p_help_text => 'Add the color you want to use. If you selected "All panes" then please enter values comma separated:<br> North,East,South,West = #0063B5,#0063B5,#0063B5,#0063B5<br>else then only the value for the selected pane.'
  );
wwv_flow_api.create_plugin_attribute (
  p_id => 8348268735277839829 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_id => 8348262015482729964 + wwv_flow_api.g_id_offset
 ,p_attribute_scope => 'COMPONENT'
 ,p_attribute_sequence => 6
 ,p_display_sequence => 60
 ,p_prompt => 'Resizer Opacity:'
 ,p_attribute_type => 'TEXT'
 ,p_is_required => true
 ,p_default_value => '0.6,1,0.6,1'
 ,p_display_length => 50
 ,p_max_length => 100
 ,p_is_translatable => false
 ,p_help_text => 'Opacity of 0.1 is almost invisible and opacity of 1 is fully visible.<br>'||chr(10)||
'Add the opacity you want to use. If you selected "All panes" then please enter values comma separated:<br> North,East,South,West = 0.8,1,0.2,1<br>else then only the value for the selected pane.'
  );
wwv_flow_api.create_plugin_attribute (
  p_id => 8348288636427166448 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_id => 8348262015482729964 + wwv_flow_api.g_id_offset
 ,p_attribute_scope => 'COMPONENT'
 ,p_attribute_sequence => 7
 ,p_display_sequence => 25
 ,p_prompt => 'Toggle Button Background Color on Hover'
 ,p_attribute_type => 'TEXT'
 ,p_is_required => true
 ,p_default_value => '#EBD5AA,#EBD5AA,#EBD5AA,#EBD5AA'
 ,p_display_length => 50
 ,p_max_length => 100
 ,p_is_translatable => false
 ,p_help_text => 'This color is displayed on hover over the toggle button.<br>'||chr(10)||
'Add the color you want to use. If you selected "All panes" then please enter values comma separated:<br> North,East,South,West = #5CABE8,#5CABE8,#5CABE8,#5CABE8<br>else then only the value for the selected pane.'
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
