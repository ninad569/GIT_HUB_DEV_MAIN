prompt --application/shared_components/navigation/lists/formatting_values
begin
--   Manifest
--     LIST: Formatting Values
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
 p_id=>wwv_flow_imp.id(80578342000126975550)
,p_name=>'Formatting Values'
,p_list_status=>'PUBLIC'
,p_version_scn=>1089078564
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(80578342123754975553)
,p_list_item_display_sequence=>15
,p_list_item_link_text=>'Area Chart (Y-Axis Value Formatting) - Page 2'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-area-chart'
,p_list_text_01=>'This example demonstrates an Area chart with numeric formatting of the y-axis values, using the y-axis Format attribute'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(80578342607625975554)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Bar Chart (Stacked Percent) - Page 9'
,p_list_item_link_target=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-bar-chart'
,p_list_text_01=>'This example demonstrates a Bar chart with percent formatting applied to the y-axis values, via the y-axis Format attribute'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(80579015035140127584)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Bubble - Page 11'
,p_list_item_link_target=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-bubble-chart'
,p_list_text_01=>'This example demonstrates a Bubble chart with percent formatting of the x and y axis values, using their respective axis-level Format attribute'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(80579016248682174909)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Donut Chart (Sorting) - Page 4'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-donut-chart'
,p_list_text_01=>'This example demonstrates a Donut chart with decimal formatting of the values, using the chart attribute Format'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(80579017135846185295)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Range - Page 23'
,p_list_item_link_target=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-range-chart-bar'
,p_list_text_01=>'This example demonstrates a Range chart with decimal formatting of the y-axis values, using the y-axis attribute Format'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(80579017484629192732)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Stock - Page 7'
,p_list_item_link_target=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-stock-chart'
,p_list_text_01=>'This example demonstrates a Stock chart with currency formatting of the y-axis values, and Date formatting of the x-axis values, using their respective axis-level attribute Format'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(77217187610641222904)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Line Chart (Time Axis) - Page 15'
,p_list_item_link_target=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-eur'
,p_list_text_01=>'This example demonstrates a Line chart with currency formatting of the y-axis values, and Date formatting of the x-axis values, using their respective axis-level attribute Format'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
