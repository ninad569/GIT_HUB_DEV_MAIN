prompt --application/pages/page_00018
begin
--   Manifest
--     PAGE: 00018
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
 p_id=>18
,p_name=>'Line with Area'
,p_alias=>'LINE-WITH-AREA'
,p_step_title=>'Line with Area'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4072355960268175073
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'04'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(77352853523979797941)
,p_plug_name=>'About this page'
,p_icon_css_classes=>'fa-line-area-chart'
,p_region_template_options=>'#DEFAULT#:t-Alert--horizontal:t-Alert--customIcons:t-Alert--info'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>10
,p_plug_source=>'<p>&PRODUCT_NAME. native Line with Area charts, using Oracle JET Data Visualizations, are showcased on this page. Line with Area charts are useful for visualizing trends in a set of values over time, and comparing these values across series. Stacking'
||' is recommended when cumulative values are important.</p>'
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
 p_id=>wwv_flow_imp.id(77352856211820797946)
,p_plug_name=>'Region Display Selector'
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--fillLabels:t-TabsRegion-mod--pill'
,p_plug_template=>3223171818405608528
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
 p_id=>wwv_flow_imp.id(77352856672787797947)
,p_plug_name=>'Line with Area Chart (Data Labels & Line Styles)'
,p_region_name=>'lineChart'
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
 p_id=>wwv_flow_imp.id(77352857113236797947)
,p_region_id=>wwv_flow_imp.id(77352856672787797947)
,p_chart_type=>'lineWithArea'
,p_height=>'480'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'none'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'smooth'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'none'
,p_stack=>'off'
,p_stack_label=>'off'
,p_spark_chart=>'N'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'on'
,p_legend_position=>'top'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(77352858703535797948)
,p_chart_id=>wwv_flow_imp.id(77352857113236797947)
,p_seq=>10
,p_name=>'Store A'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.product_name, b.quantity, b.customer',
'from eba_demo_chart_products a, eba_demo_chart_orders b',
'where a.product_id = b.product_id',
'and customer = ''Store A'''))
,p_items_value_column_name=>'QUANTITY'
,p_items_label_column_name=>'PRODUCT_NAME'
,p_line_style=>'dotted'
,p_line_type=>'curved'
,p_marker_rendered=>'on'
,p_marker_shape=>'star'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'aboveMarker'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(77352859106079797949)
,p_chart_id=>wwv_flow_imp.id(77352857113236797947)
,p_seq=>20
,p_name=>'Acme Store'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.product_name, b.quantity, b.customer',
'from eba_demo_chart_products a, eba_demo_chart_orders b',
'where a.product_id = b.product_id',
'and customer = ''Acme Store'''))
,p_items_value_column_name=>'QUANTITY'
,p_items_label_column_name=>'PRODUCT_NAME'
,p_line_style=>'solid'
,p_line_type=>'curved'
,p_marker_rendered=>'on'
,p_marker_shape=>'plus'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'center'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(77352859485566797950)
,p_chart_id=>wwv_flow_imp.id(77352857113236797947)
,p_static_id=>'c_series'
,p_seq=>30
,p_name=>'Shop C'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.product_name, b.quantity, b.customer',
'from eba_demo_chart_products a, eba_demo_chart_orders b',
'where a.product_id = b.product_id',
'and customer = ''Shop C'''))
,p_items_value_column_name=>'QUANTITY'
,p_items_label_column_name=>'PRODUCT_NAME'
,p_line_style=>'dashed'
,p_line_type=>'curved'
,p_marker_rendered=>'on'
,p_marker_shape=>'diamond'
,p_assigned_to_y2=>'on'
,p_items_label_rendered=>true
,p_items_label_position=>'belowMarker'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(77352857417790797947)
,p_chart_id=>wwv_flow_imp.id(77352857113236797947)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
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
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(77352858231050797948)
,p_chart_id=>wwv_flow_imp.id(77352857113236797947)
,p_axis=>'y2'
,p_is_rendered=>'on'
,p_title=>'Y2 Axis Title'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_split_dual_y=>'off'
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
 p_id=>wwv_flow_imp.id(77352857854864797948)
,p_chart_id=>wwv_flow_imp.id(77352857113236797947)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_title=>'Y1 Axis Title'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'auto'
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
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(77352860744903797953)
,p_plug_name=>'Data Labels & Line Styles Information'
,p_parent_plug_id=>wwv_flow_imp.id(77352856672787797947)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'This example demonstrates a Line with Area chart with dual Y-axes. Dual-Y charts are useful for conveying relationships between series data that use different units or magnitudes of measurement.<p/>',
'<strong>Hide and Show behavior</strong> - The legend uses the <strong>With Rescale</strong>, allowing a user to hide and unhide a series by clicking the chart legend markers. This allows the user to focus on specific series that are interesting to th'
||'em. The chart axes will rescale as the minimum and maximum values of the visible data increase or decrease. This can be useful for series with largely varying values.<p/>',
'<strong>Orientation</strong> - Through the use of Dynamic actions, use the Horizontal/Vertical button to the top left of the chart to change the orientiation of the data items on the charts, and the Stack/Unstack buttons to the top right of the chart'
||' to render the Store A and Acme Store series data as stacked or unstacked.<p/>',
'<strong>Assigned to Y2</strong> - Use this series-level attribute to associate a given chart series to an extra Y axis on the chart.<p/>',
'<strong>Line Style & Type</strong> - Use the series-level attributes to define various line styles, such as dotted, and types, such as curved, to the chart.<p/>',
'<strong>Marker</strong> - Use the series-level attribute to define various markers to the data items rendered on the chart.<p/>',
'',
'For more information on the Line chart settings, refer to the Oracle JET Cookbook <a href="https://www.oracle.com/webfolder/technetwork/jet/jetCookbook.html?component=lineWithAreaChart&demo=dataLabels" target="_blank">Line with Area Chart: Data Label'
||'s</a> and <a href="https://www.oracle.com/webfolder/technetwork/jet/jetCookbook.html?component=lineWithAreaChart&demo=lineTypes" target="_blank">Line with Area Chart: Line Types</a> examples.'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(77477632574913120060)
,p_plug_name=>'Line with Area Chart ( Custom Tooltip Labels )'
,p_region_name=>'tooltips'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(77477632718441120061)
,p_region_id=>wwv_flow_imp.id(77477632574913120060)
,p_chart_type=>'lineWithArea'
,p_height=>'480'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'none'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'smooth'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'none'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-desc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'on'
,p_legend_position=>'top'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ){',
'',
'    //  Add formatting for group',
'    options.valueFormats.group = { tooltipLabel: ''Customer'' };',
'    //  Add formatting for series',
'    options.valueFormats.series = { tooltipLabel: ''Product'' };',
'    //  Update formatting for value to include the new label',
'    $.extend( options.valueFormats.value, { tooltipLabel: ''Amount'' }); ',
'    ',
'    return options;',
'',
'}'))
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(77477632820787120062)
,p_chart_id=>wwv_flow_imp.id(77477632718441120061)
,p_seq=>10
,p_name=>'Store A'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.product_name, b.quantity, b.customer',
'from eba_demo_chart_products a, eba_demo_chart_orders b',
'where a.product_id = b.product_id',
'and customer = ''Store A''',
'and b.quantity > 40'))
,p_items_value_column_name=>'QUANTITY'
,p_items_label_column_name=>'PRODUCT_NAME'
,p_line_style=>'dotted'
,p_line_type=>'curved'
,p_marker_rendered=>'on'
,p_marker_shape=>'star'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'aboveMarker'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(77477632911951120063)
,p_chart_id=>wwv_flow_imp.id(77477632718441120061)
,p_seq=>20
,p_name=>'Acme Store'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.product_name, b.quantity, b.customer',
'from eba_demo_chart_products a, eba_demo_chart_orders b',
'where a.product_id = b.product_id',
'and customer = ''Acme Store''',
'and b.quantity > 40'))
,p_items_value_column_name=>'QUANTITY'
,p_items_label_column_name=>'PRODUCT_NAME'
,p_line_style=>'solid'
,p_line_type=>'curved'
,p_marker_rendered=>'on'
,p_marker_shape=>'plus'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'center'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(77477632996952120064)
,p_chart_id=>wwv_flow_imp.id(77477632718441120061)
,p_static_id=>'c_series'
,p_seq=>30
,p_name=>'Shop C'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.product_name, b.quantity, b.customer',
'from eba_demo_chart_products a, eba_demo_chart_orders b',
'where a.product_id = b.product_id',
'and customer = ''Shop C''',
'and b.quantity > 40'))
,p_items_value_column_name=>'QUANTITY'
,p_items_label_column_name=>'PRODUCT_NAME'
,p_line_style=>'dashed'
,p_line_type=>'curved'
,p_marker_rendered=>'on'
,p_marker_shape=>'diamond'
,p_assigned_to_y2=>'on'
,p_items_label_rendered=>true
,p_items_label_position=>'belowMarker'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(77477633120900120065)
,p_chart_id=>wwv_flow_imp.id(77477632718441120061)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_title=>'Y1 Axis Title'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'auto'
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
 p_id=>wwv_flow_imp.id(77477633239220120066)
,p_chart_id=>wwv_flow_imp.id(77477632718441120061)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
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
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(77477633267231120067)
,p_chart_id=>wwv_flow_imp.id(77477632718441120061)
,p_axis=>'y2'
,p_is_rendered=>'on'
,p_title=>'Y2 Axis Title'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_split_dual_y=>'off'
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
 p_id=>wwv_flow_imp.id(77477633400395120068)
,p_plug_name=>'Custom Tooltip Labels Information'
,p_parent_plug_id=>wwv_flow_imp.id(77477632574913120060)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'This example demonstrates a multi-series Line with Area chart, where the tooltip labels have been customized to overwrite the default labels. This is achieved by adding JavaScript code to the the JavaScript Initialization Code attribute of the chart:'
||'<br/>',
'',
'<ul>',
'<li><strong>JavaScript Initialization Code</strong> - use the following JavaScript code to overwrite the default ''Series'', ''Group'', and ''Value'' labels displayed in the tooltip, which is visible when hovering over a data point of a series:',
'<pre>',
'function( options ){',
'',
'    //  Add formatting for group',
'    options.valueFormats.group = { tooltipLabel: ''Customer'' };',
'    //  Add formatting for series',
'    options.valueFormats.series = { tooltipLabel: ''Product'' };',
'    //  Update formatting for value to include the new label',
'    $.extend( options.valueFormats.value, { tooltipLabel: ''Amount'' }); ',
'    ',
'    return options;',
'',
'}',
'</pre><p/>',
'',
'For more information on the tooltip label settings, refer to the Oracle JET Cookbook <a href="&OJCHART_API_URL.#valueFormats.value.tooltipLabel" target="_blank">valueFormats.value.tooltipLabel</a>, <a href="&OJCHART_API_URL.#valueFormats.group.toolti'
||'pLabel" target="_blank">valueFormats.group.tooltipLabel</a> and <a href="&OJCHART_API_URL.#valueFormats.series.tooltipLabel" target="_blank">valueFormats.series.tooltipLabel</a> examples.'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(77575737563404773892)
,p_plug_name=>'Line with Area Chart (Stacked Percent Chart)'
,p_region_name=>'linePercentChart'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(77575737837855773895)
,p_region_id=>wwv_flow_imp.id(77575737563404773892)
,p_chart_type=>'lineWithArea'
,p_height=>'480'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'none'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'smooth'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'none'
,p_stack=>'on'
,p_stack_label=>'off'
,p_spark_chart=>'N'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'on'
,p_legend_position=>'top'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(77575737931908773896)
,p_chart_id=>wwv_flow_imp.id(77575737837855773895)
,p_seq=>10
,p_name=>'Store A'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.product_name, b.quantity, b.customer',
'from eba_demo_chart_products a, eba_demo_chart_orders b',
'where a.product_id = b.product_id',
'and customer = ''Store A'''))
,p_items_value_column_name=>'QUANTITY'
,p_items_label_column_name=>'PRODUCT_NAME'
,p_line_style=>'dotted'
,p_line_type=>'curved'
,p_marker_rendered=>'on'
,p_marker_shape=>'star'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'aboveMarker'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(77575738043656773897)
,p_chart_id=>wwv_flow_imp.id(77575737837855773895)
,p_seq=>20
,p_name=>'Acme Store'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.product_name, b.quantity, b.customer',
'from eba_demo_chart_products a, eba_demo_chart_orders b',
'where a.product_id = b.product_id',
'and customer = ''Acme Store'''))
,p_items_value_column_name=>'QUANTITY'
,p_items_label_column_name=>'PRODUCT_NAME'
,p_line_style=>'solid'
,p_line_type=>'curved'
,p_marker_rendered=>'on'
,p_marker_shape=>'plus'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'center'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(77575738194272773898)
,p_chart_id=>wwv_flow_imp.id(77575737837855773895)
,p_static_id=>'c_series'
,p_seq=>30
,p_name=>'Shop C'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.product_name, b.quantity, b.customer',
'from eba_demo_chart_products a, eba_demo_chart_orders b',
'where a.product_id = b.product_id',
'and customer = ''Shop C'''))
,p_items_value_column_name=>'QUANTITY'
,p_items_label_column_name=>'PRODUCT_NAME'
,p_line_style=>'dashed'
,p_line_type=>'curved'
,p_marker_rendered=>'on'
,p_marker_shape=>'diamond'
,p_assigned_to_y2=>'on'
,p_items_label_rendered=>true
,p_items_label_position=>'belowMarker'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(77575738509016773901)
,p_chart_id=>wwv_flow_imp.id(77575737837855773895)
,p_axis=>'y2'
,p_is_rendered=>'off'
,p_title=>'Y2 Axis Title'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_split_dual_y=>'off'
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
 p_id=>wwv_flow_imp.id(77575738334068773900)
,p_chart_id=>wwv_flow_imp.id(77575737837855773895)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_title=>'Y1 Axis Title'
,p_min=>0
,p_max=>1
,p_format_type=>'percent'
,p_decimal_places=>0
,p_format_scaling=>'auto'
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
 p_id=>wwv_flow_imp.id(77575738308737773899)
,p_chart_id=>wwv_flow_imp.id(77575737837855773895)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
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
 p_id=>wwv_flow_imp.id(78225654037213353428)
,p_plug_name=>'Line with Area Chart (Stacked Percent) Information'
,p_parent_plug_id=>wwv_flow_imp.id(77575737563404773892)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'This example demonstrates various attributes of a Stacked Line with Area chart, with values represented in percent.<p/>',
'',
'<strong>Format</strong> - To represent your data as percent value on a Stacked Bar Chart, you must set this y-axis level attribute to <strong>Percent</strong>.  The associated attributes <strong>Minimum</strong> and <strong>Maximum</strong> must be s'
||'et to <strong>0</strong>, and <strong>1</strong> respectively.  This will ensure the y-axis renders from 0% to 100%.  When a format of ''Percent'' is used, Oracle JET interprets a value of 1 = 100%.  On a Stacked Percent Bar chart, &PRODUCT_NAME. will '
||'automatically calculates the fractional values for the chart series, based on the sum of the values within each group.  This allows Oracle JET to accurately represent the data in percent format on the stacked chart.<p/>',
'',
'<strong>Hide and Show Behavior</strong> - This chart-level attribute can be used to support hide and show behavior using the chart legend. The option <strong>With Rescale</strong> Hide and Show behavior, allows a user to hide and unhide a series by c'
||'licking the chart legend markers. This allows the user to focus on specific series that are interesting to them. <strong>NOTE</strong>: The chart axes will not rescale on a stacked chart displaying percent values. The y-axis will remain representing '
||'0% - 100%.<p/>',
'',
'<p>',
'',
''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(77716997402093467908)
,p_plug_name=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(85116919603826146773)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(80619277296912709321)
,p_plug_name=>'Line with Area Chart ( Fill Gaps and Sort )'
,p_region_name=>'mixedLineChart'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(80619277584188709324)
,p_region_id=>wwv_flow_imp.id(80619277296912709321)
,p_chart_type=>'lineWithArea'
,p_height=>'480'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'none'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'smooth'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'none'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-desc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'on'
,p_legend_position=>'top'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(80619277700356709325)
,p_chart_id=>wwv_flow_imp.id(80619277584188709324)
,p_seq=>10
,p_name=>'Store A'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.product_name, b.quantity, b.customer',
'from eba_demo_chart_products a, eba_demo_chart_orders b',
'where a.product_id = b.product_id',
'and customer = ''Store A''',
'and b.quantity > 40'))
,p_items_value_column_name=>'QUANTITY'
,p_items_label_column_name=>'PRODUCT_NAME'
,p_line_style=>'dotted'
,p_line_type=>'curved'
,p_marker_rendered=>'on'
,p_marker_shape=>'star'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'aboveMarker'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(80619277735176709326)
,p_chart_id=>wwv_flow_imp.id(80619277584188709324)
,p_seq=>20
,p_name=>'Acme Store'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.product_name, b.quantity, b.customer',
'from eba_demo_chart_products a, eba_demo_chart_orders b',
'where a.product_id = b.product_id',
'and customer = ''Acme Store''',
'and b.quantity > 40'))
,p_items_value_column_name=>'QUANTITY'
,p_items_label_column_name=>'PRODUCT_NAME'
,p_line_style=>'solid'
,p_line_type=>'curved'
,p_marker_rendered=>'on'
,p_marker_shape=>'plus'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'center'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(80619277821151709327)
,p_chart_id=>wwv_flow_imp.id(80619277584188709324)
,p_static_id=>'c_series'
,p_seq=>30
,p_name=>'Shop C'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.product_name, b.quantity, b.customer',
'from eba_demo_chart_products a, eba_demo_chart_orders b',
'where a.product_id = b.product_id',
'and customer = ''Shop C''',
'and b.quantity > 40'))
,p_items_value_column_name=>'QUANTITY'
,p_items_label_column_name=>'PRODUCT_NAME'
,p_line_style=>'dashed'
,p_line_type=>'curved'
,p_marker_rendered=>'on'
,p_marker_shape=>'diamond'
,p_assigned_to_y2=>'on'
,p_items_label_rendered=>true
,p_items_label_position=>'belowMarker'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(80619278074446709329)
,p_chart_id=>wwv_flow_imp.id(80619277584188709324)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_title=>'Y1 Axis Title'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'auto'
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
 p_id=>wwv_flow_imp.id(80619277950590709328)
,p_chart_id=>wwv_flow_imp.id(80619277584188709324)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
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
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(80619278125531709330)
,p_chart_id=>wwv_flow_imp.id(80619277584188709324)
,p_axis=>'y2'
,p_is_rendered=>'on'
,p_title=>'Y2 Axis Title'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_split_dual_y=>'off'
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
 p_id=>wwv_flow_imp.id(80619278259811709331)
,p_plug_name=>'Fill Gaps and Sort Information'
,p_parent_plug_id=>wwv_flow_imp.id(80619277296912709321)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'This example demonstrates a multi-series Line with Area chart, where each series has a different number of data points.  Oracle JET requires that each series of a multi-series chart contains a data point for each label that is displayed on the x-axis'
||'.  With APEX 5.1.3, we introduced automatically filling in of any gaps in a given series, to densify the data and ensure the resulting data can be rendered correctly by Oracle JET. In APEX 18.1, we introduced two new declarative options, to allow you'
||' to control whether the densification should be applied to your multi-series chart, and the sort order of the chart data. The options are:<br/>',
'',
'<ul>',
'<li><strong>Fill Gaps in Chart Data</strong>: by default, this is set to <strong>Yes</strong>, to indicate that the data densification logic will be applied to your multi-series chart.</li>',
'<li><strong>Sort Order</strong>: by default, this is set to <strong>Label - Ascending</strong>.  The option is only available for a multi-series chart, where the <strong>Fill Gaps in Chart Data</strong> attribute has been set to Yes.</li>',
'</ul>',
'<p/>Note that multi-series charts using the attribute <strong>Time Axis Type</strong> setting of <strong>Mixed Frequency</strong> or <strong>Skip Gaps</strong> will not be densified, to respect the intended behavior of the Oracle JET ''Time Axis Type'''
||' attribute.<p/>',
'',
'For more information on the Line chart settings, refer to the Oracle JET Cookbook <a href="https://www.oracle.com/webfolder/technetwork/jet/jetCookbook.html?component=lineWithAreaChart&demo=dataLabels" target="_blank">Line with Area Chart: Data Label'
||'s</a> and <a href="https://www.oracle.com/webfolder/technetwork/jet/jetCookbook.html?component=lineWithAreaChart&demo=lineTypes" target="_blank">Line with Area Chart: Line Types</a> examples.'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(77352859867011797950)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(77352856672787797947)
,p_button_name=>'Horizontal'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Horizontal'
,p_button_position=>'PREVIOUS'
,p_icon_css_classes=>'fa-bars'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(77352860316185797951)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(77352856672787797947)
,p_button_name=>'Vertical'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--pillEnd'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Vertical'
,p_button_position=>'PREVIOUS'
,p_icon_css_classes=>'fa-bar-chart'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(77352861595468797979)
,p_computation_sequence=>10
,p_computation_item=>'LAST_VIEW'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'&APP_PAGE_ID.'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(77352861821281797980)
,p_name=>'Horizontal Orientation'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(77352859867011797950)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77352862381920797986)
,p_event_id=>wwv_flow_imp.id(77352861821281797980)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(77352856672787797947)
,p_attribute_01=>'apex.region("lineChart").widget().ojChart({orientation: ''horizontal''});'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(77352862723985797986)
,p_name=>'Vertical Orientation'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(77352860316185797951)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77352863227568797987)
,p_event_id=>wwv_flow_imp.id(77352862723985797986)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(77352856672787797947)
,p_attribute_01=>'apex.region("lineChart").widget().ojChart({orientation: ''vertical''});'
);
wwv_flow_imp.component_end;
end;
/
