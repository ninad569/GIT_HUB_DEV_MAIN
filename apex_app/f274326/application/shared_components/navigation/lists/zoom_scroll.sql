prompt --application/shared_components/navigation/lists/zoom_scroll
begin
--   Manifest
--     LIST: Zoom & Scroll
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
 p_id=>wwv_flow_imp.id(80575965383222251703)
,p_name=>'Zoom & Scroll'
,p_list_status=>'PUBLIC'
,p_version_scn=>1089078564
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(80575965992411251704)
,p_list_item_display_sequence=>15
,p_list_item_link_text=>'Line Chart (Time Axis) - Page 15'
,p_list_item_link_target=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-line-chart'
,p_list_text_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'This example demonstrates:',
'a) a Line chart rendering DateTime information on the x-axis, using the Time Axis Type attribute',
'b) reset Zoom option - resetting the viewport settings of the chart xAxis'))
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(80575966386880251704)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Stock - Page 7'
,p_list_item_link_target=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-stock-chart'
,p_list_text_01=>'This example demonstrates a Donut chart with custom labels defined'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
