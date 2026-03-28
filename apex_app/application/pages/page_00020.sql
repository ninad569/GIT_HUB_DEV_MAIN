prompt --application/pages/page_00020
begin
--   Manifest
--     PAGE: 00020
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
 p_id=>20
,p_name=>'Pareto Chart'
,p_alias=>'PARETO-CHART'
,p_step_title=>'Pareto Chart'
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
 p_id=>wwv_flow_imp.id(77921165798230633130)
,p_plug_name=>'Pareto Chart'
,p_region_name=>'pareto'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:i-h480:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select product_name, ',
'       quantity, ',
'       customer, ',
'       product_description, ',
'       ratio, ',
'       sum (ratio) over (order by ratio desc) as running_ratio,',
'       ''Product:    '' || product_name ||  chr(10)|| ''Quantity: '' || quantity as quantity_tooltip,',
'       ''Product:    '' || product_name ||  chr(10)|| ''Cumulative: '' || round(sum (ratio) over (order by ratio desc)*100) ||''%'' as pct_running_ratio',
'from ',
'(select a.product_name, ',
'        b.quantity, ',
'        b.customer, ',
'        a.product_description, ',
'        RATIO_TO_REPORT(b.quantity) OVER () RATIO',
'   from eba_demo_chart_products a, eba_demo_chart_orders b',
'  where a.product_id = b.product_id',
'    and customer = ''Deli''',
'  order by b.quantity)'))
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(77246609911381529773)
,p_region_id=>wwv_flow_imp.id(77921165798230633130)
,p_chart_type=>'combo'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withoutRescale'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_spark_chart=>'N'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_fill_multi_series_gaps=>false
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>false
,p_show_value=>false
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'on'
,p_legend_position=>'end'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(77246612148335529776)
,p_chart_id=>wwv_flow_imp.id(77246609911381529773)
,p_seq=>10
,p_name=>'Product Quantity'
,p_location=>'REGION_SOURCE'
,p_series_type=>'bar'
,p_items_value_column_name=>'QUANTITY'
,p_group_name_column_name=>'CUSTOMER'
,p_group_short_desc_column_name=>'PRODUCT_DESCRIPTION'
,p_items_label_column_name=>'PRODUCT_NAME'
,p_items_short_desc_column_name=>'QUANTITY_TOOLTIP'
,p_line_style=>'dotted'
,p_line_type=>'none'
,p_marker_rendered=>'on'
,p_marker_shape=>'circle'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(78284694903357501485)
,p_chart_id=>wwv_flow_imp.id(77246609911381529773)
,p_seq=>20
,p_name=>'Cumulative %'
,p_location=>'REGION_SOURCE'
,p_series_type=>'line'
,p_items_value_column_name=>'RUNNING_RATIO'
,p_items_label_column_name=>'PRODUCT_NAME'
,p_items_short_desc_column_name=>'PCT_RUNNING_RATIO'
,p_line_style=>'solid'
,p_line_type=>'curved'
,p_marker_rendered=>'off'
,p_assigned_to_y2=>'on'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(77246610377687529774)
,p_chart_id=>wwv_flow_imp.id(77246609911381529773)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_title=>'Product Quantity'
,p_title_font_style=>'italic'
,p_title_font_size=>'16'
,p_max=>250
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'off'
,p_minor_tick_rendered=>'off'
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
 p_id=>wwv_flow_imp.id(77246610997654529775)
,p_chart_id=>wwv_flow_imp.id(77246609911381529773)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'off'
,p_minor_tick_rendered=>'off'
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
 p_id=>wwv_flow_imp.id(77246611559563529775)
,p_chart_id=>wwv_flow_imp.id(77246609911381529773)
,p_axis=>'y2'
,p_is_rendered=>'on'
,p_title=>'Cumulative %'
,p_min=>0
,p_max=>1
,p_format_type=>'percent'
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
 p_id=>wwv_flow_imp.id(77921170576825633164)
,p_plug_name=>'Pareto Chart - Information'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>30
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'This example demonstrates how to render a Pareto chart, based upon a declaratively created Combination chart, with a Bar series and a Line series, where individual values are represented in descending order by bars, and the cumulative total is repres'
||'ented by the line. The Oracle PL/SQL <a href="https://docs.oracle.com/en/database/oracle/oracle-database/19/sqlrf/RATIO_TO_REPORT.html#GUID-9D10C275-4341-435F-ACF4-767B9CCB7390" target="_blank">RATIO_TO_REPORT</a> function is an analytic function whi'
||'ch returns the proportion of a value over the total set of values, and is used in the calculation of the <i>Cumulative</i> line series of the Pareto chart.<p/><br/>',
'',
'<strong>Region Source</strong> - set the chart query at region-level, using a query similar to the following:<br/>',
'<pre>',
'select product_name, ',
'       quantity, ',
'       customer, ',
'       product_description, ',
'       ratio, ',
'       sum (ratio) over (order by ratio desc) as running_ratio,',
'       ''Product:    '' || product_name ||  chr(10)|| ''Quantity: '' || quantity as quantity_tooltip,',
'       ''Product:    '' || product_name ||  chr(10)|| ''Cumulative: '' || round(sum (ratio) over (order by ratio desc)*100) ||''%'' as pct_running_ratio',
'from ',
'(select a.product_name, ',
'        b.quantity, ',
'        b.customer, ',
'        a.product_description, ',
'        RATIO_TO_REPORT(b.quantity) OVER () RATIO',
'   from eba_demo_chart_products a, eba_demo_chart_orders b',
'  where a.product_id = b.product_id',
'    and customer = ''Deli''',
'  order by b.quantity)',
'</pre><p/>',
'',
'Note the following column aliases in the above query:<br/>',
'<ul>',
'<li><strong>ratio</strong> - Use of the RATIO_TO_REPORT function, to calculate the proportion of the given QUANTITY value over the total set of QUANTITY values.</li>',
'<li><strong>running_ratio</strong> - the cumulative total</li>',
'<li><strong>quantity_tooltip</strong> - custom tooltip for the bar series, to display the actual value in the tooltip</li>',
'<li><strong>pct_running_ratio</strong> - custom tooltip for the line series, to display the cumulative value in the tooltip</li>',
'</ul>',
'<br/>',
'<strong>Chart Type</strong> - set to <strong>Combination</strong>.  Use the declarative options to define a Line chart, as you normally would.<p/><p/>',
'<strong>Product Quantity Series settings</strong> - Set the following series-level attributes:<br/>',
'<ul>',
'<li><strong>Type</strong> - Bar</li>',
'<li><strong>Location</strong> - Region Source</li>',
'<li><strong>Label</strong> - PRODUCT_NAME</li>',
'<li><strong>Value</strong> - QUANTITY</li>',
'<li><strong>Custom Tooltip</strong> - QUANTITY_TOOLTIP</li>',
'<li><strong>Legend Tooltip</strong> - Customer</li>',
'<li><strong>Label Tooltip</strong> - Product Description</li>',
'</ul>',
'<p/>',
'<strong>Cumulative % Series settings</strong> - Set the following series-level attributes:<br/>',
'<ul>',
'<li><strong>Type</strong> - Line</li>',
'<li><strong>Location</strong> - Region Source</li>',
'<li><strong>Label</strong> - PRODUCT_NAME</li>',
'<li><strong>Value</strong> - RUNNING_RATIO</li>',
'<li><strong>Custom Tooltip</strong> - PCT_RUNNING_RATIO</li>',
'<li><strong>Assigned To Y2 Axis</strong> - On</li>',
'<li><strong>Line Style</strong> - Solid</li>',
'<li><strong>Line Type</strong> - Automatic</li>',
'</ul>',
'<p/>',
'',
'<strong>Y-Axis Settings</strong> - Set the following axis-level attributes:',
'<ul>',
'<li><strong>Title</strong> - Product Quantity</li>',
'<li><strong>Format</strong> - Decimal</li>',
'<li><strong>Decimal Places</strong> - 0</li>',
'</ul>',
'<p/>',
'',
'',
'<strong>Y2-Axis Settings</strong> - Set the following axis-level attributes:',
'<ul>',
'<li><strong>Title</strong> - Cumulative %</li>',
'<li><strong>Minimum</strong> - 0</li>',
'<li><strong>Maximum</strong> - 1</li>',
'<li><strong>Format</strong> - Percent</li>',
'</ul>',
'<p/>',
'',
'For more information on the Pareto chart settings, refer to the Oracle JET Cookbook <a href="&JET_COOKBOOK_URL.?component=dataVisualizations&demo=pareto" target="_blank">Pareto</a> example.'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(78800417411242799819)
,p_plug_name=>'About this page'
,p_icon_css_classes=>'fa-combo-chart'
,p_region_template_options=>'#DEFAULT#:t-Alert--horizontal:t-Alert--customIcons:t-Alert--info'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>10
,p_plug_source=>'<p>&PRODUCT_NAME. native Combination charts, using Oracle JET Data Visualizations, can be customized to render as a <a href="https://www.oracle.com/webfolder/technetwork/jet/jetCookbook.html?component=dataVisualizations&demo=pareto" target="_blank">P'
||'areto</a> chart. Pareto charts are useful for displaying categories of data in descending order of frequency.</p>'
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
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(77246613462654529790)
,p_computation_sequence=>10
,p_computation_item=>'LAST_VIEW'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'&APP_PAGE_ID.'
);
wwv_flow_imp.component_end;
end;
/
