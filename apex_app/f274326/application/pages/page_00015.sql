prompt --application/pages/page_00015
begin
--   Manifest
--     PAGE: 00015
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
 p_id=>15
,p_name=>'Line'
,p_alias=>'LINE'
,p_step_title=>'Line'
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
 p_id=>wwv_flow_imp.id(77041494197481890690)
,p_plug_name=>'Line Chart ( Declarative Font Formatting )'
,p_region_name=>'lineChartAxes'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(77100452392473119248)
,p_region_id=>wwv_flow_imp.id(77041494197481890690)
,p_chart_type=>'line'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'none'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'none'
,p_stack=>'on'
,p_stack_label=>'off'
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
,p_legend_font_family=>'Trebuchet MS'
,p_legend_font_style=>'italic'
,p_legend_font_size=>'12'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(77100452513369119249)
,p_chart_id=>wwv_flow_imp.id(77100452392473119248)
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
,p_line_type=>'centeredStepped'
,p_marker_rendered=>'on'
,p_marker_shape=>'star'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'aboveMarker'
,p_items_label_display_as=>'PERCENT'
,p_items_label_font_family=>'Comic Sans MS'
,p_items_label_font_color=>'#FA1238'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(77100452633952119250)
,p_chart_id=>wwv_flow_imp.id(77100452392473119248)
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
,p_items_label_font_family=>'Comic Sans MS'
,p_items_label_font_color=>'#3966ED'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(77100452735134119251)
,p_chart_id=>wwv_flow_imp.id(77100452392473119248)
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
,p_line_type=>'stepped'
,p_marker_rendered=>'on'
,p_marker_shape=>'diamond'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'belowMarker'
,p_items_label_display_as=>'PERCENT'
,p_items_label_font_family=>'Comic Sans MS'
,p_items_label_font_color=>'#8A3232'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(77100452790398119252)
,p_chart_id=>wwv_flow_imp.id(77100452392473119248)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_title=>'Y1 Axis Title'
,p_title_font_family=>'Times'
,p_title_font_style=>'italic'
,p_title_font_size=>'14'
,p_title_font_color=>'GREEN'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'on'
,p_tick_label_rendered=>'on'
,p_tick_label_font_family=>'Helvetica'
,p_tick_label_font_style=>'oblique'
,p_tick_label_font_size=>'14'
,p_tick_label_font_color=>'#F59D5A'
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
 p_id=>wwv_flow_imp.id(77100452892408119253)
,p_chart_id=>wwv_flow_imp.id(77100452392473119248)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_title=>'X-Axis Title'
,p_title_font_family=>'Comic Sans MS'
,p_title_font_style=>'normal'
,p_title_font_size=>'16'
,p_title_font_color=>'#F544F5'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'on'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_tick_label_font_family=>'Courier'
,p_tick_label_font_style=>'normal'
,p_tick_label_font_color=>'#2323EB'
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
 p_id=>wwv_flow_imp.id(77100453031513119254)
,p_chart_id=>wwv_flow_imp.id(77100452392473119248)
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
,p_split_dual_y=>'on'
,p_splitter_position=>.7
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
 p_id=>wwv_flow_imp.id(77100453084786119255)
,p_plug_name=>'Line Chart ( Declarative Font Formatting ) Information'
,p_parent_plug_id=>wwv_flow_imp.id(77041494197481890690)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'This example demonstrates a Line chart with font formatting applied to the axes, values, and legend text, declaratively.<p/><p/>',
'<strong>X-Axis Title</strong> - The axis-level Title attributes Font Family, Font Style, Font Size and Font Color have been set to style the x-axis title to use the font Comic Sans MS, the font style Normal, the font size 16px, and the font color #F5'
||'44F5.<br/> ',
'<strong>X-Axis Tick Labels</strong> - The axis-level Tick Label attributes Font Family, Font Style, and Font Color have been set to style the x-axis labels to use the font Courier, the font style Normal, and the font color #2323EB.<p/> ',
'<strong>Y-Axis Title</strong> - The axis-level Title attributes Font Family, Font Style, Font Size and Font Color have been set to style the y-axis title to use the font Times, the font style Italic, the font size 14px, and the font color green.<br/>'
||' ',
'<strong>Y-Axis Tick Labels</strong> - The axis-level Tick Label attributes Font Family, Font Style, and Font Color have been set to style the y-axis labels to use the font Helvetica, the font style Oblique, the font size 14px, and the font color #F59'
||'D5A.<p/>',
'<strong>Legend Text</strong> - The chart-level Legend attributes Font Family, Font Style, and Font Color have been set to style the Legend text to use the font Trebuchet MS, the font style Italic, and the font size 12px.<p/>',
'<strong>Store A Series</strong> - The series-level Label attributes Font Family and Font Color have been set to style the values of the series using the font Comic Sans MS, and the font color to #FA1238.<br/>',
'<strong>Acme Series</strong> - The series-level Label attributes Font Family and Font Color have been set to style the values of the series using the font Comic Sans MS, and the font color to #3966ED.<br/>',
'<strong>Shop C Series</strong> - The series-level Label attributes Font Family and Font Color have been set to style the values of the series using the font Comic Sans MS, and the font color to #8A3232.<p/>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(77343472129297002286)
,p_plug_name=>'Line Chart (Data Labels & Line Styles)'
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
 p_id=>wwv_flow_imp.id(77343472478644002308)
,p_region_id=>wwv_flow_imp.id(77343472129297002286)
,p_chart_type=>'line'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'none'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
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
 p_id=>wwv_flow_imp.id(77343473981884002313)
,p_chart_id=>wwv_flow_imp.id(77343472478644002308)
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
,p_line_type=>'centeredStepped'
,p_marker_rendered=>'on'
,p_marker_shape=>'star'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'aboveMarker'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(77343474394887002316)
,p_chart_id=>wwv_flow_imp.id(77343472478644002308)
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
 p_id=>wwv_flow_imp.id(77343474732278002316)
,p_chart_id=>wwv_flow_imp.id(77343472478644002308)
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
,p_line_type=>'stepped'
,p_marker_rendered=>'on'
,p_marker_shape=>'diamond'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'belowMarker'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(77343473213050002311)
,p_chart_id=>wwv_flow_imp.id(77343472478644002308)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_title=>'Y1 Axis Title'
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
 p_id=>wwv_flow_imp.id(77343472785745002310)
,p_chart_id=>wwv_flow_imp.id(77343472478644002308)
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
 p_id=>wwv_flow_imp.id(77343473616226002311)
,p_chart_id=>wwv_flow_imp.id(77343472478644002308)
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
,p_split_dual_y=>'on'
,p_splitter_position=>.7
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
 p_id=>wwv_flow_imp.id(77343476907892002320)
,p_plug_name=>'Line Chart (Data Labels & Line Styles) Information'
,p_parent_plug_id=>wwv_flow_imp.id(77343472129297002286)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'This example demonstrates a Line chart with varying line types and styles.<p/>',
'<strong>Maximum Width & Height</strong> - Chart-level attributes Maximum Width and Height have been set to 500px and 450px respectively, to size the chart within its region.  If you wish to default to using 100% width and height of the given region, '
||'simply remove these values, and utilitise the Template Options of the region to control the height as you wish.<p/> ',
'<strong>Orientation</strong> - Through the use of Dynamic actions, use the Horizontal/Vertical button to the top left of the chart to change the orientiation of the data items on the charts.<p/>',
'<strong>Chart Type</strong> - Through the use of Dynamic actions, use the Bar/Area/Line/Line with Area/Combo buttons to the top right of the chart to change the type of the chart.<p/>',
'<strong>Line Style & Type</strong> - Use the series-level attributes to define various line styles, such as dotted, and types, such as curved, to the chart.<p/>',
'<strong>Marker</strong> - Use the series-level attribute to define various markers to the data items rendered on the chart.<p/>',
'<strong>Label Position</strong> - Use this series-level attribute to control the positioning of the labels on data items of the chart.<p/>',
'For more information on the Line chart settings, refer to the Oracle JET Cookbook <a href="https://www.oracle.com/webfolder/technetwork/jet/jetCookbook.html?component=lineChart&demo=dataLabels" target="_blank">Line Chart: Data Labels</a> and <a href='
||'"https://www.oracle.com/webfolder/technetwork/jet/jetCookbook.html?component=lineChart&demo=lineTypes" target="_blank">Line Chart: Line Types</a> examples.'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(77473103891598512864)
,p_plug_name=>'Line Chart ( Show/Hide Labels via Dynamic Action )'
,p_region_name=>'lineChartLabels'
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
 p_id=>wwv_flow_imp.id(77473103972664512865)
,p_region_id=>wwv_flow_imp.id(77473103891598512864)
,p_chart_type=>'line'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'none'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'none'
,p_stack=>'on'
,p_stack_label=>'off'
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
,p_legend_font_family=>'Trebuchet MS'
,p_legend_font_style=>'italic'
,p_legend_font_size=>'12'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(77473104051838512866)
,p_chart_id=>wwv_flow_imp.id(77473103972664512865)
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
,p_line_type=>'centeredStepped'
,p_marker_rendered=>'on'
,p_marker_shape=>'star'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'aboveMarker'
,p_items_label_display_as=>'PERCENT'
,p_items_label_font_family=>'Comic Sans MS'
,p_items_label_font_color=>'#FA1238'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(77473104241633512867)
,p_chart_id=>wwv_flow_imp.id(77473103972664512865)
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
,p_items_label_font_family=>'Comic Sans MS'
,p_items_label_font_color=>'#3966ED'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(77473104255202512868)
,p_chart_id=>wwv_flow_imp.id(77473103972664512865)
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
,p_line_type=>'stepped'
,p_marker_rendered=>'on'
,p_marker_shape=>'diamond'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'belowMarker'
,p_items_label_display_as=>'PERCENT'
,p_items_label_font_family=>'Comic Sans MS'
,p_items_label_font_color=>'#8A3232'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(77473104586513512871)
,p_chart_id=>wwv_flow_imp.id(77473103972664512865)
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
,p_split_dual_y=>'on'
,p_splitter_position=>.7
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
 p_id=>wwv_flow_imp.id(77473104417616512869)
,p_chart_id=>wwv_flow_imp.id(77473103972664512865)
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
,p_tick_label_font_family=>'Helvetica'
,p_tick_label_font_style=>'oblique'
,p_tick_label_font_size=>'14'
,p_tick_label_font_color=>'#F59D5A'
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
 p_id=>wwv_flow_imp.id(77473104512494512870)
,p_chart_id=>wwv_flow_imp.id(77473103972664512865)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_title=>'X-Axis Title'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'on'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_tick_label_font_family=>'Courier'
,p_tick_label_font_style=>'normal'
,p_tick_label_font_color=>'#2323EB'
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
 p_id=>wwv_flow_imp.id(77473105256729512878)
,p_plug_name=>'Line Chart ( Show/Hide Labels via Dynamic Action ) Information'
,p_parent_plug_id=>wwv_flow_imp.id(77473103891598512864)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'This example demonstrates a Line chart with two buttons on the region, allowing the user to show or hide the data labels on the chart, via Dynamic Actions.<p/><p/>',
'<strong>Hide Labels button</strong> - Use the following JavaScript code in a dynamic action triggered by the Click action of this button:<br/>',
'',
'<pre>',
'// Retrieve the series array from the chart - using the ''option'' API',
'var series = apex.region("lineChartLabels").call( "option", "series" );',
'',
'// Set the labelPosition property for the series items',
'for ( i = 0; i < series.length; i++ ) {',
'    for ( j = 0; j < series[ i ].items.length; j++ ) {',
'        series[ i ].items[ j ].labelPosition = "none";    ',
'    }',
'}',
'',
'// Invoke the refresh method to update the DOM',
'apex.region("lineChartLabels").widget().ojChart(''refresh'');',
'</pre><p/>',
'<strong>Show Labels button</strong> - Use the following JavaScript code in a dynamic action triggered by the Click action of this button:<br/>',
'',
'<pre>',
'// Retrieve the series array from the chart - using the ''option'' API',
'var series = apex.region("lineChartLabels").call( "option", "series" );',
'',
'// Set the labelPosition property for the series items',
'for ( i = 0; i < series.length; i++ ) {',
'    for ( j = 0; j < series[ i ].items.length; j++ ) {',
'        series[ i ].items[ j ].labelPosition = "aboveMarker";',
'        // Set item[].label attribute to the value to be rendered as the label',
'        series[ i ].items[ j ].label = series[ i ].items[ j ].value;',
'    }',
'}',
'',
'// Invoke the refresh method to update the DOM',
'apex.region("lineChartLabels").widget().ojChart(''refresh'');',
'</pre><p/>',
'<p>',
'For more information on the JET chart options, refer to the Oracle JET <a href="&OJCHART_API_URL." target="_blank">ojChart API</a>.',
'</p>',
'<p>',
'For more information on labelPosition settings, refer to the Oracle JET <a href="&OJCHART_ITEM_API_URL.#labelPosition" target="_blank">ojChartItem API</a> example.'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(77618919506636648585)
,p_plug_name=>'Line Chart (Reference Object via JavaScript Customizations)'
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
 p_id=>wwv_flow_imp.id(77618919754615648588)
,p_region_id=>wwv_flow_imp.id(77618919506636648585)
,p_chart_type=>'line'
,p_width=>'500'
,p_height=>'450'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'none'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
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
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ) {',
'',
'    // Define Reference Object line on Y Axis of chart',
'    var constantLineY = [ {text:"Reference Object", type: "line", value: 50, color: "#A0CEEC", displayInLegend: "on", lineWidth: 3, location: "back", lineStyle: "dashed", shortDesc: "Sample Reference Line"}];',
'    options.yAxis.referenceObjects = constantLineY;',
'    return options;',
'}'))
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(77618919839859648589)
,p_chart_id=>wwv_flow_imp.id(77618919754615648588)
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
,p_line_type=>'centeredStepped'
,p_marker_rendered=>'on'
,p_marker_shape=>'star'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'aboveMarker'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(77618919948581648590)
,p_chart_id=>wwv_flow_imp.id(77618919754615648588)
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
 p_id=>wwv_flow_imp.id(77618920075385648591)
,p_chart_id=>wwv_flow_imp.id(77618919754615648588)
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
,p_line_type=>'stepped'
,p_marker_rendered=>'on'
,p_marker_shape=>'diamond'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'belowMarker'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(77618920374381648594)
,p_chart_id=>wwv_flow_imp.id(77618919754615648588)
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
,p_split_dual_y=>'on'
,p_splitter_position=>.7
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
 p_id=>wwv_flow_imp.id(77618920312972648593)
,p_chart_id=>wwv_flow_imp.id(77618919754615648588)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_title=>'Y1 Axis Title'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_step=>1
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_min_step=>1
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
 p_id=>wwv_flow_imp.id(77618920151718648592)
,p_chart_id=>wwv_flow_imp.id(77618919754615648588)
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
 p_id=>wwv_flow_imp.id(77618920454117648595)
,p_plug_name=>'Line Chart (Reference Object via JavaScript) Information'
,p_parent_plug_id=>wwv_flow_imp.id(77618919506636648585)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'This example demonstrates how to customize a Line chart to apply a Reference Object, via JavaScript code customizations.<p/>',
'',
'<strong>JavaScript Code</strong> - Use this chart-level attribute to customize your chart attributes and data.  Any chart initialization changes, to attributes such as the chart y-axis, type, or orientation, can also be made.  The JavaScript Code sho'
||'uld follow a template similar to the following:<br/>',
'',
'<pre>',
'function( options ) {',
'',
'    // Define Reference Object line on Y Axis of chart',
'    var constantLineY = [ {text:"Reference Object", type: "line", value: 50, color: "#A0CEEC", displayInLegend: "on", lineWidth: 3, location: "back", lineStyle: "dashed", shortDesc: "Sample Reference Line"}];',
'    ',
'    // Set the referenceObjects option as part of the chart initialization',
'    options.yAxis.referenceObjects = constantLineY;',
'    ',
'    return options;',
'}',
'</pre><p/>',
'',
'<p>',
'For more information on the JET chart options, refer to the Oracle JET <a href="&OJCHART_API_URL." target="_blank">ojChart API</a>.',
'</p>',
'<p>',
'For more information on Reference Object settings, refer to the Oracle JET Cookbook <a href="&JET_COOKBOOK_URL.?component=lineChart&demo=refObject" target="_blank">Line Chart: Reference Objects</a> example.'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(78221883043732861857)
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
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(78222723742309168975)
,p_plug_name=>'About this page'
,p_icon_css_classes=>'fa-line-chart'
,p_region_template_options=>'#DEFAULT#:t-Alert--horizontal:t-Alert--customIcons:t-Alert--info'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>10
,p_plug_source=>'<p>&PRODUCT_NAME. native Line charts, using Oracle JET Data Visualizations, are showcased on this page. Line charts are useful for visualizing trends in a set of values over time and comparing these values across series.  This chart type is recommend'
||'ed for visualizing mixed frequency time data.</p>'
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
 p_id=>wwv_flow_imp.id(78972663160521073425)
,p_plug_name=>'Line Chart (Time Axis)'
,p_region_name=>'line_chart'
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
 p_id=>wwv_flow_imp.id(77194965164291515128)
,p_region_id=>wwv_flow_imp.id(78972663160521073425)
,p_chart_type=>'line'
,p_height=>'420'
,p_animation_on_display=>'none'
,p_animation_on_data_change=>'none'
,p_orientation=>'vertical'
,p_data_cursor=>'on'
,p_data_cursor_behavior=>'smooth'
,p_hide_and_show_behavior=>'none'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_spark_chart=>'N'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'delayed'
,p_initial_zooming=>'first'
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
,p_time_axis_type=>'enabled'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(77194965290033515129)
,p_chart_id=>wwv_flow_imp.id(77194965164291515128)
,p_seq=>10
,p_name=>'Stock Value'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    pricing_date,',
'    closing_val,',
'    stock_code',
'FROM',
'    EBA_DEMO_CHART_STOCKS',
'ORDER BY',
'    pricing_date asc'))
,p_items_value_column_name=>'CLOSING_VAL'
,p_items_label_column_name=>'PRICING_DATE'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'off'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(77194965379320515130)
,p_chart_id=>wwv_flow_imp.id(77194965164291515128)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_type=>'datetime-full'
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
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(77194965448925515131)
,p_chart_id=>wwv_flow_imp.id(77194965164291515128)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'currency'
,p_decimal_places=>2
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_step=>50
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
 p_id=>wwv_flow_imp.id(77343144226604645527)
,p_plug_name=>'Line Chart (Time Axis) Information'
,p_parent_plug_id=>wwv_flow_imp.id(78972663160521073425)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'This example demonstrates a Line chart with a time axis, and numeric and date formatting.<p/>',
'<strong>Maximum Width & Height</strong> - Chart-level attributes Maximum Width and Height have been set to 500px and 450px respectively, to size the chart within its region.  If you wish to default to using 100% width and height of the given region, '
||'simply remove these values, and utilitise the Template Options of the region to control the height as you wish.<p/> ',
'<strong>Orientation</strong> - Through the use of Dynamic actions, use the Horizontal/Vertical button to the top left of the chart to change the orientiation of the data items on the charts.<p/>',
'<strong>Initial Zooming</strong> - Use the chart-level attribute to set the initial zooming behavior of the chart, to focus initial attention on a specific section of the chart.  The setting for this example is <strong>First</strong>, to initially zo'
||'om to the first data points on the chart.<p/>',
'<strong>Line Style & Type</strong> - Use the series-level attributes to define various line styles, such as dotted, and types, such as curved, to the chart.<p/>',
'<strong>Format</strong> - Use the axis-level attribute to define currency formatting on the y-axis, and date formatting on the x-axis. New in APEX 18.1 is the ability to leave the <strong>Currency</strong> property empty, to allow for the currency sy'
||'mbol to be automatically derived from the application language. <p/>',
'For more information on the Time Axis settings, refer to the Oracle JET Cookbook <a href="https://www.oracle.com/webfolder/technetwork/jet/jetCookbook.html?component=chart&demo=timeAxis" target="_blank">Chart: Time Axis</a> example. For additional ex'
||'amples of time axis settings, refer to the <a href="f?p=&APP_ID.:25:&APP_SESSION.">Combination</a> examples.'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(78972663489331073428)
,p_plug_name=>'Region Display Selector'
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
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(77473104733099512872)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(77473103891598512864)
,p_button_name=>'HideLabels'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--pillStart'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Hide Labels'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(79666174577449594607)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(77343472129297002286)
,p_button_name=>'Bar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--pillStart'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Bar'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-bar-chart'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(77473104761553512873)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(77473103891598512864)
,p_button_name=>'ShowLabels'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--pillEnd'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Show Labels'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(79666175709339594618)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(77343472129297002286)
,p_button_name=>'Area'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--pill'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Area'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-area-chart'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(79666175727751594619)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(77343472129297002286)
,p_button_name=>'Line'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--pill'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Line'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-line-chart'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(79666175885867594620)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(77343472129297002286)
,p_button_name=>'LineWithArea'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--pill'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Line with Area'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-line-area-chart'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(79666175993200594621)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(77343472129297002286)
,p_button_name=>'Combo'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--pillEnd'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Combo'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-combo-chart'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(77343475923284002319)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(77343472129297002286)
,p_button_name=>'Horizontal'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Horizontal'
,p_button_position=>'PREVIOUS'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-bar-chart-horizontal'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(77343476318742002319)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(77343472129297002286)
,p_button_name=>'Vertical'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--pillEnd'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Vertical'
,p_button_position=>'PREVIOUS'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-line-area-chart'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(77578801787732411942)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(78972663160521073425)
,p_button_name=>'Reset'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Reset Zoom'
,p_button_position=>'TOP'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(79246983325423959730)
,p_computation_sequence=>10
,p_computation_item=>'LAST_VIEW'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'&APP_PAGE_ID.'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(77343479719606022808)
,p_name=>'Horizontal Orientation'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(77343475923284002319)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77343480145782022809)
,p_event_id=>wwv_flow_imp.id(77343479719606022808)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(77343472129297002286)
,p_attribute_01=>'apex.region("lineChart").widget().ojChart({orientation: ''horizontal''});'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(77343480615167024514)
,p_name=>'Vertical Orientation'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(77343476318742002319)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77343480948751024514)
,p_event_id=>wwv_flow_imp.id(77343480615167024514)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(77343472129297002286)
,p_attribute_01=>'apex.region("lineChart").widget().ojChart({orientation: ''vertical''});'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(79666174689341594608)
,p_name=>'Bar'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(79666174577449594607)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(79666174786356594609)
,p_event_id=>wwv_flow_imp.id(79666174689341594608)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(77343472129297002286)
,p_attribute_01=>'apex.region("lineChart").widget().ojChart({type: ''bar''});'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(79666174841377594610)
,p_name=>'Area'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(79666175709339594618)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(79666174942967594611)
,p_event_id=>wwv_flow_imp.id(79666174841377594610)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(77343472129297002286)
,p_attribute_01=>'apex.region("lineChart").widget().ojChart({type: ''area''});'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(79666175099160594612)
,p_name=>'Line'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(79666175727751594619)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(79666175162943594613)
,p_event_id=>wwv_flow_imp.id(79666175099160594612)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(77343472129297002286)
,p_attribute_01=>'apex.region("lineChart").widget().ojChart({type: ''line''});'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(79666175246827594614)
,p_name=>'Line with Area'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(79666175885867594620)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(79666175381028594615)
,p_event_id=>wwv_flow_imp.id(79666175246827594614)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(77343472129297002286)
,p_attribute_01=>'apex.region("lineChart").widget().ojChart({type: ''lineWithArea''});'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(79666175421201594616)
,p_name=>'Combo'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(79666175993200594621)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(79666175544997594617)
,p_event_id=>wwv_flow_imp.id(79666175421201594616)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(77343472129297002286)
,p_attribute_01=>'apex.region("lineChart").widget().ojChart({type: ''combo''});'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(77578801904817411943)
,p_name=>'Reset Zoom'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(77578801787732411942)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77578801959034411944)
,p_event_id=>wwv_flow_imp.id(77578801904817411943)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// Retrieve current xAxis settings',
'var l_xAxis = apex.region( "line_chart" ).widget().ojChart( ''option'', ''xAxis'' );',
'',
'// Reset viewport',
'apex.region( "line_chart" ).widget().ojChart({',
'    ',
'    // Clear viewportMin and viewportMax settings on xAxis',
'    xAxis: $.extend( l_xAxis, { viewportMin: null, viewportMax: null } )',
'',
'});',
'',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77578802091060411945)
,p_event_id=>wwv_flow_imp.id(77578801904817411943)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(78972663160521073425)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(77473104889603512874)
,p_name=>'Hide Data Labels'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(77473104733099512872)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77473105040683512875)
,p_event_id=>wwv_flow_imp.id(77473104889603512874)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// Retrieve the series array from the chart - using the ''option'' API',
'var series = apex.region("lineChartLabels").call( "option", "series" );',
'',
'// Set the labelPosition property for the series items',
'for ( i = 0; i < series.length; i++ ) {',
'    for ( j = 0; j < series[ i ].items.length; j++ ) {',
'        series[ i ].items[ j ].labelPosition = "none";    ',
'    }',
'}',
'',
'// Invoke the refresh method to update the DOM',
'apex.region("lineChartLabels").widget().ojChart(''refresh'');'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(77473105133712512876)
,p_name=>'Show Data Labels'
,p_event_sequence=>110
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(77473104761553512873)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77473105206488512877)
,p_event_id=>wwv_flow_imp.id(77473105133712512876)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// Retrieve the series array from the chart - using the ''option'' API',
'var series = apex.region("lineChartLabels").call( "option", "series" );',
'',
'// Set the labelPosition property for the series items',
'for ( i = 0; i < series.length; i++ ) {',
'    for ( j = 0; j < series[ i ].items.length; j++ ) {',
'        series[ i ].items[ j ].labelPosition = "aboveMarker";',
'        // Set item[].label attribute to the value to be rendered as the label',
'        series[ i ].items[ j ].label = series[ i ].items[ j ].value;',
'    }',
'}',
'',
'// Invoke the refresh method to update the DOM',
'apex.region("lineChartLabels").widget().ojChart(''refresh'');'))
);
wwv_flow_imp.component_end;
end;
/
