prompt --application/shared_components/navigation/lists/js_customizations
begin
--   Manifest
--     LIST: JS Customizations
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
 p_id=>wwv_flow_imp.id(80575609814185247017)
,p_name=>'JS Customizations'
,p_list_status=>'PUBLIC'
,p_version_scn=>1089078564
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(80575609987002247020)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Combination Chart (Regular v Mixed Frequency Time Axis) - Page 25'
,p_list_item_link_target=>'f?p=&APP_ID.:25:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-combo-chart'
,p_list_text_01=>'This example demonstrates a Combination chart rendering DateTime information on the x-axis, using the Time Axis Type attribute'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(80575610401169247021)
,p_list_item_display_sequence=>15
,p_list_item_link_text=>'Line Chart (Time Axis) - Page 15'
,p_list_item_link_target=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-line-chart'
,p_list_text_01=>'This example demonstrates a Line chart rendering DateTime information on the x-axis, using the Time Axis Type attribute'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(80575610719779247022)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Stock - Page 7'
,p_list_item_link_target=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-stock-chart'
,p_list_text_01=>'This example demonstrates a Donut chart with custom labels defined'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(80575611182243247022)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Scatter (Dynamic Y-Axis Min/Max via JavaScript Code) -  Page 8'
,p_list_item_link_target=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-scatter-chart'
,p_list_text_01=>'This example demonstrates how to dynamically change the y-axis minimum and maximum values, based upon values selected by the end user'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(80626598609267210853)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Funnel Chart ( Multi-select Selection Mode) - Page 22'
,p_list_item_link_target=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-funnel-chart'
,p_list_text_01=>'This example demonstrates a Funnel chart with an optionChange listener added to the initialization of the chart.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(80866832793424277067)
,p_list_item_display_sequence=>45
,p_list_item_link_text=>'Funnel Chart (3D Effect) - Page 22'
,p_list_item_link_target=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-funnel-chart'
,p_list_text_01=>'This example demonstrates a 3D Funnel chart, setting the threeDEffect attribute of the ojChart API via custom JavaScript code.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(80839072228070786805)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Area Chart ( Legend JavaScript Code Customization ) - Page 2'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-area-chart'
,p_list_text_01=>'This example demonstrates an Area chart with custom icons used in the legend, based on Static Application Files.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(80866829112806216861)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Pie Chart ( Master Detail Chart Links ) - Page 4'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-funnel-chart'
,p_list_text_01=>'This example demonstrates a 3D Pie chart, using custom JavaScript code to set the 3D effect during chart initialization.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(76955874352567763185)
,p_list_item_display_sequence=>65
,p_list_item_link_text=>'Line Chart (Reference Object via JavaScript Customizations) - Page 15'
,p_list_item_link_target=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-line-chart'
,p_list_text_01=>'This example demonstrates a Line chart rendering a Reference Object line, via some custom JavaScript code'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(76955883706902978488)
,p_list_item_display_sequence=>75
,p_list_item_link_text=>'Gantt Chart (Reference Object via JavaScript Code) - Page 3'
,p_list_item_link_target=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-line-chart'
,p_list_text_01=>'This example demonstrates a Gantt chart rendering a Reference Object line for the current date, via some custom JavaScript code'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(77165812456150853718)
,p_list_item_display_sequence=>85
,p_list_item_link_text=>'Pie Chart ( Dashboard Page ) - Page 24'
,p_list_item_link_target=>'f?p=&APP_ID.:24:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-funnel-chart'
,p_list_text_01=>'This example demonstrates a dashboard of Pie & Donut charts, using custom JavaScript code to style the chart title during chart initialization.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
