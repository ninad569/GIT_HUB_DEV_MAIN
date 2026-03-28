prompt --application/shared_components/navigation/lists/declarative_font_formatting
begin
--   Manifest
--     LIST: Declarative Font Formatting
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
 p_id=>wwv_flow_imp.id(77100475517163268767)
,p_name=>'Declarative Font Formatting'
,p_list_status=>'PUBLIC'
,p_version_scn=>1089078564
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(77100475707318268768)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Line Chart ( Declarative Font Formatting ) - Page 15'
,p_list_item_link_target=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-text-height'
,p_list_text_01=>'This example demonstrates the new axes, legend, and value declarative font formatting attributes, to style the text rendered on a chart.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(77100478895816313398)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Combination Chart  Information (Y-Axis Value Formatting) - Page 25'
,p_list_item_link_target=>'f?p=&APP_ID.:25:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-combo-chart'
,p_list_text_01=>'This example demonstrates the styling of the y-axis title'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(77100480750961383051)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Bar Chart (Dual Y Axis with formatted Labels) - Page 9'
,p_list_item_link_target=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-bar-chart'
,p_list_text_01=>'This example demonstrates the styling of the series-level labels'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
