prompt --application/shared_components/navigation/lists/das
begin
--   Manifest
--     LIST: DAs
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
 p_id=>wwv_flow_imp.id(80575917617929951007)
,p_name=>'DAs'
,p_list_status=>'PUBLIC'
,p_version_scn=>1089078564
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(80575917864689951014)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Area Chart (Line Types) - Page 2'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-area-chart'
,p_list_text_01=>'This example demonstrates an Area chart with dynamic actions to change the type of line used to render the chart elements'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(80575918306281951015)
,p_list_item_display_sequence=>15
,p_list_item_link_text=>'Bar Chart (Dual Y Axis with custom Labels) - Page 9'
,p_list_item_link_target=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-bar-chart'
,p_list_text_01=>'This example demonstrates a Bar chart with dynamic actions to change the orientation of the chart, or render the chart elements as stacked or unstacked '
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(80575918620903951015)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Combination Chart (Data Label Positions) - Page 25'
,p_list_item_link_target=>'f?p=&APP_ID.:25:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-combo-chart'
,p_list_text_01=>'This example demonstrates a Combination chart with dynamic actions to change the type of line used to represent a series'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(80575919044562951016)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Line Chart (Data Labels & Line Styles) -  Page 15'
,p_list_item_link_target=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-line-chart'
,p_list_text_01=>'This example demonstrates a Line chart with dynamic actions to change the chart type and orientation'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(80575921964486982315)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Pie Chart - Page 4'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-pie-chart'
,p_list_text_01=>'This example demonstrates a Pie chart with dynamic actions to increase or decrease the Legend Size'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(80575922744158985049)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Range - Page 23'
,p_list_item_link_target=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-range-chart-bar'
,p_list_text_01=>'This example demonstrates a Range chart with dynamic actions to change the chart orientation'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(77501556690520162385)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Line Chart ( Show/Hide Labels via Dynamic Action ) -  Page 15'
,p_list_item_link_target=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-line-chart'
,p_list_text_01=>'This example demonstrates a Line chart with dynamic actions to show/hide the data labels on the chart'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
