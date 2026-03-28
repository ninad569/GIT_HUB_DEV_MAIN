prompt --application/shared_components/navigation/lists/3d_effect
begin
--   Manifest
--     LIST: 3D Effect
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
 p_id=>wwv_flow_imp.id(80866835844568341212)
,p_name=>'3D Effect'
,p_list_status=>'PUBLIC'
,p_version_scn=>1089078564
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(80866836091064341214)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Funnel Chart (3D Effect) - Page 22'
,p_list_item_link_target=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-area-chart'
,p_list_text_01=>'This example demonstrates how to render a 3D Funnel chart, by setting the threeDEffect attribute of the ojChart API via custom JavaScript code'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(80866836511105341215)
,p_list_item_display_sequence=>15
,p_list_item_link_text=>'Pie Chart (Master Detail Chart Links) - Page 4'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-line-chart'
,p_list_text_01=>'This example demonstrates how to render a 3D Pie chart, by setting the threeDEffect attribute of the ojChart API via custom JavaScript code'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
