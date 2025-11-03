prompt --application/shared_components/navigation/lists/y2_axis
begin
--   Manifest
--     LIST: Y2 Axis
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.8'
,p_default_workspace_id=>76915847067537899948
,p_default_application_id=>274326
,p_default_id_offset=>76916220240599916839
,p_default_owner=>'WKSP_WBGAPEXDEV'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(80575953309679147305)
,p_name=>'Y2 Axis'
,p_list_status=>'PUBLIC'
,p_version_scn=>1089078564
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(80575953437479147305)
,p_list_item_display_sequence=>15
,p_list_item_link_text=>'Bar Chart (Dual Y Axis with custom Labels) - Page 9'
,p_list_item_link_target=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-bar-chart'
,p_list_text_01=>'This example demonstrates a Bar Chart with a y2 Axis, and dual-axis setting'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(80575954239152171078)
,p_list_item_display_sequence=>25
,p_list_item_link_text=>'Line with Area Chart (Data Labels & Line Styles) - Page 18'
,p_list_item_link_target=>'f?p=&APP_ID.:18:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-line-area-chart'
,p_list_text_01=>'This example demonstrates a Line with Area Chart with a y2 Axis'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
