prompt --application/pages/page_00007
begin
--   Manifest
--     PAGE: 00007
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
 p_id=>7
,p_name=>'Stock'
,p_alias=>'STOCK'
,p_step_title=>'Stock'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'04'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(77331002847834317312)
,p_plug_name=>'Information'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'This example demonstrates various attributes of a Stock chart.<p/>',
'',
'<strong>Render As</strong> Use the chart attributes-level attribute to render the chart as Candlestick, representing open, close, high, and low information for the stock price.<p/>',
'<strong>Format</strong> - Use the axis-level attribute to define date/time and numeric formatting, such as currency, decimal places and date formatting. New in APEX 18.1 is the ability to leave the <strong>Currency</strong> property empty, to allow f'
||'or the currency symbol to be automatically derived from the application language. Alternatively, you can define the currency yourself by providing the 3-character ISO 4217 alphabetic currency code, e.g. <strong>USD</strong><p/>',
'<strong>Data Cursor</strong> - Use this chart attribute to highlight the cursor for a selected chart element, and display its associated tooltip as the mouse moves over the data items of the chart.<p/>',
'<strong>Initial Zooming</strong> - Use the chart-level attribute to set the initial zooming behavior of the chart, to focus initial attention on a specific section of the chart. The setting for this example is First, to initially zoom to the first da'
||'ta points on the chart.<p/>',
'<strong>Volume</strong> - Stock volume information is represented via a Bar chart and Y2 axis, displayed beneath the Candlestick chart.<p/>',
'<strong>Overview</strong> - Use the overview section, displayed at the bottom of the chart region, to zoom & scroll to a specific section of the chart.<p/>',
'',
'<p>',
'For more information on the Oracle JET Stock chart, refer to the Oracle JET Cookbook <a href="https://www.oracle.com/webfolder/technetwork/jet/jetCookbook.html?component=stockChart&demo=default" target="_blank">Stock Chart</a> example.'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(77342781218269080139)
,p_plug_name=>'Dummy Corp Stock Chart'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:i-h480:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(77342781708770080142)
,p_region_id=>wwv_flow_imp.id(77342781218269080139)
,p_chart_type=>'stock'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_data_cursor=>'on'
,p_data_cursor_behavior=>'smooth'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_stock_render_as=>'candlestick'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'delayed'
,p_initial_zooming=>'first'
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
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_time_axis_type=>'auto'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(77342782826970080143)
,p_chart_id=>wwv_flow_imp.id(77342781708770080142)
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT null link , PRICING_DATE label , OPENING_VAL , LOW , HIGH , CLOSING_VAL, VOLUME',
'from eba_demo_chart_stocks',
'where stock_code = ''METR''',
'order by PRICING_DATE'))
,p_items_low_column_name=>'LOW'
,p_items_high_column_name=>'HIGH'
,p_items_open_column_name=>'OPENING_VAL'
,p_items_close_column_name=>'CLOSING_VAL'
,p_items_volume_column_name=>'VOLUME'
,p_group_short_desc_column_name=>'LABEL'
,p_items_label_column_name=>'LABEL'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(77342782498589080143)
,p_chart_id=>wwv_flow_imp.id(77342781708770080142)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'currency'
,p_decimal_places=>0
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'min'
,p_position=>'end'
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
 p_id=>wwv_flow_imp.id(77342782076630080143)
,p_chart_id=>wwv_flow_imp.id(77342781708770080142)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_type=>'datetime-long'
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
 p_id=>wwv_flow_imp.id(77342785488528119210)
,p_plug_name=>'About this page'
,p_icon_css_classes=>'fa-stock-chart'
,p_region_template_options=>'#DEFAULT#:t-Alert--horizontal:t-Alert--customIcons:t-Alert--info'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>10
,p_plug_source=>'<p>This demo showcases the &PRODUCT_NAME. native Stock chart, using Oracle JET Data Visualizations. Stock charts are useful for displaying information about a stock on a time axis. Unique to stock charts is the candlestick series which allows for dis'
||'playing open, close, high, low information for the stock price.</p>'
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
 p_id=>wwv_flow_imp.id(77716997776630467912)
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
wwv_flow_imp.component_end;
end;
/
