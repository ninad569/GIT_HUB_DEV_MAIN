prompt --application/shared_components/navigation/lists/series_color
begin
--   Manifest
--     LIST: Series Color
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
 p_id=>wwv_flow_imp.id(80575943691962089041)
,p_name=>'Series Color'
,p_list_status=>'PUBLIC'
,p_version_scn=>1089078564
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(80575944222233089045)
,p_list_item_display_sequence=>15
,p_list_item_link_text=>'Bar Chart (Series Colors) - Page 9'
,p_list_item_link_target=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-bar-chart'
,p_list_text_01=>'This example demonstrates the various options available to define a color on a chart series'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(77915956502931658710)
,p_list_item_display_sequence=>25
,p_list_item_link_text=>'Pie Chart (Series Colors) - Page 4'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-pie-chart'
,p_list_text_01=>'This example demonstrates the various options available to define a color on a chart series'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
