prompt --application/shared_components/navigation/lists/chart_links
begin
--   Manifest
--     LIST: Chart Links
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
 p_id=>wwv_flow_imp.id(77312687803983511221)
,p_name=>'Chart Links'
,p_list_status=>'PUBLIC'
,p_version_scn=>1089078564
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(77312687991597511226)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Linking to Interactive Grid - Bar Chart (Series Name Column Mapping), pg 9'
,p_list_item_link_target=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-link'
,p_list_text_01=>'This example demonstrates linking from a chart to an Interactive Grid, using the Interactive Grid URL Filtering support introduced in APEX 20.1.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(77312688870792531080)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Linking to Interactive Grid - Pie, pg 4'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-link'
,p_list_text_01=>'This example demonstrates linking from a chart to an Interactive Grid, using the Interactive Grid URL Filtering support introduced in APEX 20.1.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(77312689636894537885)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Master Detail Chart Links - Page 4'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-link'
,p_list_text_01=>'This example demonstrates linking from one chart to another chart, using the chart Link attribute.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
