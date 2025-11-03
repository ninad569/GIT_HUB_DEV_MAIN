prompt --application/shared_components/navigation/lists/data_densify
begin
--   Manifest
--     LIST: Data Densify
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
 p_id=>wwv_flow_imp.id(80923893453334917953)
,p_name=>'Data Densify'
,p_list_status=>'PUBLIC'
,p_version_scn=>1089078564
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(77278969835057314543)
,p_list_item_display_sequence=>5
,p_list_item_link_text=>'Data Densification - Page 14'
,p_list_item_link_target=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-code-group'
,p_list_text_01=>'This page demonstrates the behaviour of the new <strong>Fill Gaps in Chart Data</strong> and associated <strong>Sort Order</strong> attributes, in the densification of a multi-series chart.  There are also examples of opting out of the densification '
||'logic, to base the chart data and ordering solely on the chart query provided.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(80923893684832917955)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Bar Chart (Series Colors) - Page 9'
,p_list_item_link_target=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-area-chart'
,p_list_text_01=>'This example demonstrates how to render a single-series Bar chart, with the ordering controlled via the series SQL query'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(77099531979351432345)
,p_list_item_display_sequence=>11
,p_list_item_link_text=>'Bar Chart (Series Name Column Mapping)  - Page 9'
,p_list_item_link_target=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-area-chart'
,p_list_text_01=>'This example demonstrates how to render a multi-series Bar chart, with differing numbers of data points per series, using <strong>Fill Gaps in Chart Data</strong> chart-level attribute.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(80923894057966917956)
,p_list_item_display_sequence=>15
,p_list_item_link_text=>'Line Chart (Mixed Series Length - Quantity > 40) - Page 15'
,p_list_item_link_target=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-line-chart'
,p_list_text_01=>'This example demonstrates how to render a multi-series Line with Area chart, with series of differing lengths'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
