prompt --application/pages/page_00008
begin
--   Manifest
--     PAGE: 00008
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.8'
,p_default_workspace_id=>76915847067537899948
,p_default_application_id=>274326
,p_default_id_offset=>76916220240599916839
,p_default_owner=>'WKSP_WBGAPEXDEV'
);
wwv_flow_imp_page.create_page(
 p_id=>8
,p_name=>'Scatter'
,p_alias=>'SCATTER'
,p_step_title=>'Scatter'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_step_template=>4072355960268175073
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'04'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(77340226928719661401)
,p_plug_name=>'Scatter (Dynamic Y-Axis Min/Max via JavaScript Code)'
,p_region_name=>'scatterChart'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_header=>'Use the select lists below to change the Y-Axis minimum and maximum values of the chart.  Click <b>Set</b> to see the values reflected on the chart.<p/>'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(77340227051386661402)
,p_region_id=>wwv_flow_imp.id(77340226928719661401)
,p_chart_type=>'scatter'
,p_title=>'Dummy Corp Stock Value'
,p_height=>'400'
,p_animation_on_display=>'none'
,p_animation_on_data_change=>'none'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'none'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function (options) {',
'    options.yAxis = { ',
'        min: $v(''P8_Y_MIN''),',
'        max: $v(''P8_Y_MAX'')',
'    };    ',
'    ',
'    return options;',
'}'))
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(77340227121746661403)
,p_chart_id=>wwv_flow_imp.id(77340227051386661402)
,p_seq=>10
,p_name=>'Value'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT pricing_date LABEL, ',
'       OPENING_VAL X_VALUE, ',
'       CLOSING_VAL Y_VALUE',
'FROM EBA_DEMO_CHART_STOCKS'))
,p_items_x_column_name=>'X_VALUE'
,p_items_y_column_name=>'Y_VALUE'
,p_items_label_column_name=>'LABEL'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'star'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(77340227255654661404)
,p_chart_id=>wwv_flow_imp.id(77340227051386661402)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_title=>'Closing Value'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'on'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(77340227344010661405)
,p_chart_id=>wwv_flow_imp.id(77340227051386661402)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_title=>'Opening Value'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'on'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(77340228103384661412)
,p_plug_name=>'Scatter (Dynamic Y-Axis Min/Max) Information'
,p_parent_plug_id=>wwv_flow_imp.id(77340226928719661401)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'This example demonstrates how to dynamically change the y-axis minimum and maximum values, based upon values selected by the end user.<p/>',
'',
'<strong>JavaScript Code</strong> - Use the chart-level advanced attribute to initialize the chart using JavaScript code that uses the values of page items to set the y-axis minimum and maximum values.',
'<pre>',
'function (options) {',
'    options.yAxis = { ',
'        min: $v(''P1_Y_MIN''),',
'        max: $v(''P1_Y_MAX'')',
'    };',
'    return options;',
'}',
'</pre>',
'... where P1_Y_MAX and P1_Y_MIN would be the two page items used for setting the values.',
'<p/>',
'<strong>Dynamic Action</strong> - Use a dynamic action, triggerd by the click of a button, to update the chart with y-axis minimum and maximum values selected by the end user.<p/>',
'',
'<p>',
'For more information on the Oracle JET ojChart yAxis object, refer to the Oracle JET ojChart API <a href="&OJCHART_API_URL.#yAxis.min" target="_blank">ojChart: yAxis object</a>.'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(77340227802911661409)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_region_icons', 'N',
  'include_show_all', 'Y',
  'rds_mode', 'STANDARD',
  'remember_selection', 'NO')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(77488487364110725751)
,p_plug_name=>'Scatter (Percent Format)'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(77488487618485725755)
,p_region_id=>wwv_flow_imp.id(77488487364110725751)
,p_chart_type=>'scatter'
,p_title=>'OECD Members Pension Contribution Revenues, 2011'
,p_height=>'400'
,p_animation_on_display=>'none'
,p_animation_on_data_change=>'none'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(77488488822522725765)
,p_chart_id=>wwv_flow_imp.id(77488487618485725755)
,p_seq=>10
,p_name=>'2025'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select country country,',
'       name,',
'       (employee/100) employee,',
'       (employer/100) employer,',
'       country||'' - Total Contribution:''||total||''%'' tooltip',
' from eba_demo_chart_stats'))
,p_items_x_column_name=>'EMPLOYEE'
,p_items_y_column_name=>'EMPLOYER'
,p_group_short_desc_column_name=>'NAME'
,p_items_label_column_name=>'COUNTRY'
,p_items_short_desc_column_name=>'TOOLTIP'
,p_line_style=>'dashed'
,p_line_type=>'none'
,p_marker_rendered=>'auto'
,p_marker_shape=>'star'
,p_items_label_rendered=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(77488488420569725763)
,p_chart_id=>wwv_flow_imp.id(77488487618485725755)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_title=>'Employer Contribution (% of GDP)'
,p_format_type=>'percent'
,p_decimal_places=>1
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'on'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(77488488047716725761)
,p_chart_id=>wwv_flow_imp.id(77488487618485725755)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_title=>'Employee Contribution (% of GDP)'
,p_format_type=>'percent'
,p_decimal_places=>1
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'on'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(77488489279329725767)
,p_plug_name=>'Scatter (Percent Format) Information'
,p_parent_plug_id=>wwv_flow_imp.id(77488487364110725751)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'This example demonstrates various attributes of a Scatter chart.<p/>',
'',
'<strong>Marker</strong> - Use the series-level attribute to define the marker representing the data information for the chart.<p/>',
'<strong>Format</strong> - Use the axis-level attribute to define date/time and numeric formatting, such as currency, decimal places and date formatting. The <strong>Percent</strong> Format allows a user to format the numeric values on the axes and to'
||'oltips as percent values. When a number is formatted as a percent, the values on the chart are multiplied by 100.<p/>',
'<strong>Custom Tooltip</strong> - Use this series-level attribute to include custom data in the tooltips displayed as the mouse moves over the data points of the chart.<p/>',
'',
'<p>',
'For more information on the Oracle JET Scatter chart, refer to the Oracle JET Cookbook <a href="https://www.oracle.com/webfolder/technetwork/jet/jetCookbook.html?component=scatterChart&demo=attrGroups" target="_blank">Scatter Chart: Attribute Groups<'
||'/a> example. The chart data is based on information contained in the <a href="http://www.oecd.org/pensions/public-pensions/OECDPensionsAtAGlance2013.pdf" target="_blank">OECD Pensions at a Glance 2013</a> report.'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(78228236157558061929)
,p_plug_name=>'About this page'
,p_icon_css_classes=>'fa-scatter-chart'
,p_region_template_options=>'#DEFAULT#:t-Alert--horizontal:t-Alert--customIcons:t-Alert--info'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>10
,p_plug_source=>'<p>&PRODUCT_NAME. native Scatter charts, using Oracle JET Data Visualizations,is showcased on this page. Explore the wide range of chart attributes declaratively available with our native charts, to format and customise the style of your charts. Scat'
||'ter charts define data items using x and y values, making them useful for viewing relationships between 2 dimensions. Scatter charts are commonly used for displaying and comparing numeric values, such as scientific, statistical, and engineering data.'
||' These charts are useful to show the relationships among the numeric values in several data series, and they can plot two groups of numbers as one series of xy coordinates.</p>'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(79500297850944060789)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>40
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(85116919603826146773)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(77340227673223661408)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(77340226928719661401)
,p_button_name=>'Set'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--small:t-Button--primary:t-Button--padRight:t-Button--padTop:t-Button--padBottom'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Set'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77340227461117661406)
,p_name=>'P8_Y_MIN'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(77340226928719661401)
,p_item_default=>'0'
,p_prompt=>'Minimum Value'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:0;0,50;50,90;90'
,p_cHeight=>1
,p_colspan=>2
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77340227585119661407)
,p_name=>'P8_Y_MAX'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(77340226928719661401)
,p_item_default=>'300'
,p_prompt=>'Maximum Value'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:130;130,170;170,200;200,250;250,300;300'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(77340227821048661410)
,p_name=>'Set Y Axis Settings'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(77340227673223661408)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77340227927710661411)
,p_event_id=>wwv_flow_imp.id(77340227821048661410)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#scatterChart_jet").ojChart({ ',
'  yAxis: { ',
'    min: $v(''P8_Y_MIN''),',
'    max: $v(''P8_Y_MAX'')',
'  }',
'});'))
);
wwv_flow_imp.component_end;
end;
/
