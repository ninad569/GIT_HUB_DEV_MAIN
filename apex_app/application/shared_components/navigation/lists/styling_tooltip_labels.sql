prompt --application/shared_components/navigation/lists/styling_tooltip_labels
begin
--   Manifest
--     LIST: Styling Tooltip Labels
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
 p_id=>wwv_flow_imp.id(77915981100251926193)
,p_name=>'Styling Tooltip Labels'
,p_list_status=>'PUBLIC'
,p_version_scn=>1089078564
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(77915981292716926198)
,p_list_item_display_sequence=>15
,p_list_item_link_text=>'Line with Area Chart ( Custom Tooltip Labels ) - Page 18'
,p_list_item_link_target=>'f?p=&APP_ID.:18:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-line-area-chart'
,p_list_text_01=>'This example demonstrates a Line with Area chart, rendering customised tooltip labels using JavaScript, via the JavaScript Initialization Code attribute'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(77915982620299959210)
,p_list_item_display_sequence=>25
,p_list_item_link_text=>'Area Chart (Legend JavaScript Code Customization) - Page 2'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-area-chart'
,p_list_text_01=>'This example demonstrates an Area chart, rendering a customised tooltip on the Acme series of the multi-series chart, via the SQL query and use of the declarative Custom Tooltip attribute'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
