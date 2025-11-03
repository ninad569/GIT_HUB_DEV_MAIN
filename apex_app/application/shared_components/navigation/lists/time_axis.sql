prompt --application/shared_components/navigation/lists/time_axis
begin
--   Manifest
--     LIST: Time Axis
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
 p_id=>wwv_flow_imp.id(80575959330928214496)
,p_name=>'Time Axis'
,p_list_status=>'PUBLIC'
,p_version_scn=>1089078564
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(77915957725743688274)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Combination Chart (Regular v Mixed Frequency Time Axis) - Page 25'
,p_list_item_link_target=>'f?p=&APP_ID.:25:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-area-chart'
,p_list_text_01=>'This example demonstrates the use of the Time Axis Type attribute, to render DATETIME information on a multi-series Combination chart'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(80575960009934214496)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Line Chart (Time Axis) - Page 15'
,p_list_item_link_target=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-line-chart'
,p_list_text_01=>'This example demonstrates the use of the Time Axis Type attribute, to render DATETIME information on a Line chart'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
