prompt --application/pages/page_00025
begin
--   Manifest
--     PAGE: 00025
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
 p_id=>25
,p_name=>'Combination'
,p_alias=>'COMBINATION'
,p_step_title=>'Combination'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<style>',
'ul.barGraph{margin:12px !important;list-style:none;white-space:nowrap}',
'ul.barGraph li{display:inline-block;width:48px}',
'ul.barGraph li:hover big small{background-color:#4A6D98}',
'ul.barGraph li.barHeaders{width:128px}',
'ul.barGraph li.barHeaders > span{text-align:left}',
'ul.barGraph li > label{display:block;font:normal 11px/12px Arial,sans-serif;color:#444;text-align:center}',
'ul.barGraph li > label span{display:block;font:normal 11px/12px Arial,sans-serif;color:#767676}',
'ul.barGraph li > big{height:120px;margin:8px;position:relative;display:block}',
'ul.barGraph li > big > small{display:block;position:absolute;bottom:0;width:30px;-moz-border-radius:4px;-webkit-border-radius:4px;border-radius:4px;background-color:#6A9CDA;-moz-box-shadow:0 1px 0 rgba(255,255,255,0.5) inset;-webkit-box-shadow:0 1px '
||'0 rgba(255,255,255,0.5) inset;box-shadow:0 1px 0 rgba(255,255,255,0.5) inset;border:1px solid #4A6D98}',
'ul.barGraph li > span{display:block;text-align:center;font:normal 11px/16px Arial,sans-serif;color:#444;border-top:1px solid #F0F0F0;padding:8px}',
'ul.barGraph li > span.noBorder{border-top:none;padding-top:0}',
'ul.barGraph li > span a{color:##405580}',
'</style>'))
,p_step_template=>4072355960268175073
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'04'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(77357016387275354682)
,p_plug_name=>'About this page'
,p_icon_css_classes=>'fa-combo-chart'
,p_region_template_options=>'#DEFAULT#:t-Alert--horizontal:t-Alert--customIcons:t-Alert--info'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>10
,p_plug_source=>'<p>&PRODUCT_NAME. native Combination charts, using Oracle JET Data Visualizations, are showcased on this page. Combination charts allow bar, line, and area series to be displayed on the same chart. Explore the wide range of chart attributes declarati'
||'vely available with our native charts, to format and customise the style of your combination charts.</p>'
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
 p_id=>wwv_flow_imp.id(77357016820691354682)
,p_plug_name=>'Region Display Selector'
,p_plug_display_sequence=>20
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_region_icons', 'N',
  'include_show_all', 'Y',
  'rds_mode', 'STANDARD',
  'remember_selection', 'NO')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(77357017333629354683)
,p_plug_name=>'Combination Chart (Data Label Positions)'
,p_region_name=>'combo1'
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
 p_id=>wwv_flow_imp.id(77357017754086354683)
,p_region_id=>wwv_flow_imp.id(77357017333629354683)
,p_chart_type=>'combo'
,p_width=>'600'
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
,p_legend_position=>'end'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(77357020555420354688)
,p_chart_id=>wwv_flow_imp.id(77357017754086354683)
,p_seq=>30
,p_name=>'Deli'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.product_name, b.quantity, b.customer, a.product_description',
'from eba_demo_chart_products a, eba_demo_chart_orders b',
'where a.product_id = b.product_id',
'and customer = ''Deli'''))
,p_series_type=>'bar'
,p_items_value_column_name=>'QUANTITY'
,p_group_name_column_name=>'CUSTOMER'
,p_group_short_desc_column_name=>'PRODUCT_DESCRIPTION'
,p_items_label_column_name=>'PRODUCT_NAME'
,p_line_style=>'solid'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(77357019803895354687)
,p_chart_id=>wwv_flow_imp.id(77357017754086354683)
,p_seq=>40
,p_name=>'Acme Store'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.product_name, b.quantity, b.customer, a.product_description',
'from eba_demo_chart_products a, eba_demo_chart_orders b',
'where a.product_id = b.product_id',
'and customer = ''Acme Store'''))
,p_series_type=>'area'
,p_items_value_column_name=>'QUANTITY'
,p_group_name_column_name=>'CUSTOMER'
,p_group_short_desc_column_name=>'PRODUCT_DESCRIPTION'
,p_items_label_column_name=>'PRODUCT_NAME'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(77487451809143872741)
,p_chart_id=>wwv_flow_imp.id(77357017754086354683)
,p_seq=>50
,p_name=>'Store A'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.product_name, b.quantity, b.customer, a.product_description',
'from eba_demo_chart_products a, eba_demo_chart_orders b',
'where a.product_id = b.product_id',
'and customer = ''Store A'''))
,p_series_type=>'line'
,p_items_value_column_name=>'QUANTITY'
,p_group_name_column_name=>'CUSTOMER'
,p_group_short_desc_column_name=>'PRODUCT_DESCRIPTION'
,p_items_label_column_name=>'PRODUCT_NAME'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(77357020189322354688)
,p_chart_id=>wwv_flow_imp.id(77357017754086354683)
,p_static_id=>'c_series'
,p_seq=>60
,p_name=>'Shop C'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.product_name, b.quantity, b.customer, a.product_description',
'from eba_demo_chart_products a, eba_demo_chart_orders b',
'where a.product_id = b.product_id',
'and customer = ''Shop C'''))
,p_series_type=>'bar'
,p_items_value_column_name=>'QUANTITY'
,p_group_name_column_name=>'CUSTOMER'
,p_group_short_desc_column_name=>'PRODUCT_DESCRIPTION'
,p_items_label_column_name=>'PRODUCT_NAME'
,p_line_style=>'solid'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'center'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(77357018522490354684)
,p_chart_id=>wwv_flow_imp.id(77357017754086354683)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_title=>'Y1 Axis Title'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
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
 p_id=>wwv_flow_imp.id(77357018193575354683)
,p_chart_id=>wwv_flow_imp.id(77357017754086354683)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
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
 p_id=>wwv_flow_imp.id(77357019012439354684)
,p_chart_id=>wwv_flow_imp.id(77357017754086354683)
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
 p_id=>wwv_flow_imp.id(77357023028023354696)
,p_plug_name=>'Combination Chart  Information (Data Label Positions)'
,p_parent_plug_id=>wwv_flow_imp.id(77357017333629354683)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'This example demonstrates various attributes of a Combination chart.<p/>',
'',
'<strong>Type</strong> - Use this series-level attribute to define a different series type for each series represented on the chart. For example, the series ''Deli'' is of type Bar, ''Store A'' is of type Line, and ''Acme Store'' is of type Area.<p/>',
'<strong>Hide and Show Behavior</strong> - Use this chart-level attribute to support hide and show behavior using the chart legend. The legend uses the <strong>Without Rescale</strong> Hide and Show behavior, allowing a user to hide and unhide a serie'
||'s by clicking the chart legend markers. The chart axes will not rescale, which is useful to remain in context. <p/>',
'<strong>Dynamic Actions</strong> - Through the use of Dynamic actions, use the buttons to the top right of the chart to change the line type of the ''Store A'' chart series. Line type specifies the shape of the data point connectors on the chart.<p/>',
'<p>',
'For more information on the Combination chart settings, refer to the Oracle JET Cookbook <a href="https://www.oracle.com/webfolder/technetwork/jet/jetCookbook.html?component=combinationChart&demo=default" target="_blank">Combination Chart: Basic</a> '
||'and <a href="https://www.oracle.com/webfolder/technetwork/jet/jetCookbook.html?component=combinationChart&demo=dataLabels" target="_blank">Combination Chart: Data Labels</a>  examples.',
''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(77357023554200354697)
,p_plug_name=>'Combination Chart (Y-Axis Value Formatting)'
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
 p_id=>wwv_flow_imp.id(77357023945224354698)
,p_region_id=>wwv_flow_imp.id(77357023554200354697)
,p_chart_type=>'combo'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'none'
,p_orientation=>'horizontal'
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
,p_show_group_name=>false
,p_show_value=>true
,p_show_label=>false
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
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(77357025562574354702)
,p_chart_id=>wwv_flow_imp.id(77357023945224354698)
,p_seq=>10
,p_name=>'Tasks By Budget/Cost'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select task_name,',
'       budget',
'  from eba_demo_chart_tasks',
' where budget > 2000',
'order by 2,1'))
,p_series_type=>'area'
,p_items_value_column_name=>'BUDGET'
,p_items_label_column_name=>'TASK_NAME'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(77357025212123354699)
,p_chart_id=>wwv_flow_imp.id(77357023945224354698)
,p_seq=>20
,p_name=>'Average Budget'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select task_name, round(avg_budget,2) from (  ',
'    select task_name,',
'       avg(budget) over () avg_budget',
'  from eba_demo_chart_tasks',
' where budget > 2000',
'order by 2,1)'))
,p_series_type=>'line'
,p_items_value_column_name=>'ROUND(AVG_BUDGET,2)'
,p_items_label_column_name=>'TASK_NAME'
,p_color=>'#4FB000'
,p_line_style=>'dashed'
,p_line_width=>4
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(77357024385007354698)
,p_chart_id=>wwv_flow_imp.id(77357023945224354698)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
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
 p_id=>wwv_flow_imp.id(77357024739281354698)
,p_chart_id=>wwv_flow_imp.id(77357023945224354698)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_title=>'Y-Axis Title'
,p_title_font_family=>'Times New Roman'
,p_title_font_style=>'italic'
,p_title_font_size=>'18'
,p_title_font_color=>'RED'
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'min'
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
 p_id=>wwv_flow_imp.id(77488459435080208019)
,p_plug_name=>'Combination Chart  Information (Y-Axis Value Formatting)'
,p_parent_plug_id=>wwv_flow_imp.id(77357023554200354697)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'This example demonstrates various attributes of a Combination chart.<p/>',
'',
'<strong>Format Scaling</strong> - Use the axis-level attribute to define the scaling behavior of the Y-axis value. When set to <strong>None</strong>, the values will not be automatically scaled, and display thousands values with the locale default th'
||'ousand separator, for example 1,000.  The automatic behaviour would display such a value as 1K.<p/>',
'<strong>Reference Series</strong> - Similar to the Oracle JET Reference Object functionality, a series can be defined on a chart, representing a constant value, to be used as a reference point on the chart.  In the example, the reference series ''Aver'
||'age Budget'', serves to highlight task budget amounts in relation to the averaage budget amount across all tasks.  The series-level Label <strong>Show</strong> attribute is set to No for this series.<p/>',
'<strong>Y-Axis Title</strong> - The axis-level Title attributes Font Family, Font Style, Font Size and Font Color have been set to style the y-axis title to use the font Times New Roman, the font style Italic, the font size 18px, and the font color r'
||'ed.<br/> ',
'',
'<p>',
'For more information on the Combination chart settings, refer to the Oracle JET Cookbook <a href="https://www.oracle.com/webfolder/technetwork/jet/jetCookbook.html?component=combinationChart&demo=default" target="_blank">Combination Chart: Basic</a> '
||'and <a href="https://www.oracle.com/webfolder/technetwork/jet/jetCookbook.html?component=combinationChart&demo=refObject" target="_blank">Combination Chart: Reference Object</a>  examples.',
''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(77515046987112996721)
,p_plug_name=>'Combination Chart  Information (Regular v Mixed Frequency Time Axis)'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>80
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'This example demonstrates various time axis options supported by Oracle JET charts.<p/>',
'',
'<strong>Time Axis Type</strong> - Use the chart-level attribute to define the type of time axis to be supported on the chart. When the series Label is mapped to a Date or Timestamp column, the <strong>Time Axis Type</strong> should be set to type tha'
||'t is appropriate for the data being rendered. Oracle JET charts support three kinds of time axis: <strong>Enabled</strong>, <strong>Skip Gaps</strong>, and <strong>Mixed Frequency</strong>. ',
'<ul>',
'<li>The ''Enabled'' and Skip Gaps'' time axis types require that the data items within each group share the same time value. The time intervals between groups do not have to be uniform; however, if the time axis type is Skip Gaps'', the times always will'
||' be drawn uniformly ignoring the gaps. Stacking is possible in these two modes.</li>',
'<li>The ''Mixed Frequency'' time axis type allows each data item to have a different time value. Since the time value of the data items within each group can vary, stacking is not possible.</li>',
'</ul>',
'<p/>',
'For more information on the Time Axis settings, refer to the Oracle JET Cookbook <a href="https://www.oracle.com/webfolder/technetwork/jet/jetCookbook.html?component=chart&demo=timeAxis" target="_blank">Chart: Time Axis</a> example.',
''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(77535795552001137243)
,p_plug_name=>'Combination Chart (Regular v Mixed Frequency Time Axis)'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(77535795994732137249)
,p_plug_name=>'Regular Time Axis'
,p_region_name=>'regTime'
,p_parent_plug_id=>wwv_flow_imp.id(77535795552001137243)
,p_region_template_options=>'#DEFAULT#:i-h480:t-Region--noBorder:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(77535796217454137250)
,p_region_id=>wwv_flow_imp.id(77535795994732137249)
,p_chart_type=>'combo'
,p_animation_on_display=>'none'
,p_animation_on_data_change=>'none'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'none'
,p_stack=>'off'
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
,p_legend_rendered=>'off'
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
 p_id=>wwv_flow_imp.id(77535797473202137253)
,p_chart_id=>wwv_flow_imp.id(77535796217454137250)
,p_seq=>10
,p_name=>'Store A'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.product_name, b.quantity, b.customer, sales_date',
'from eba_demo_chart_products a, eba_demo_chart_orders b',
'where a.product_id = b.product_id',
'and customer = ''Store A'''))
,p_series_type=>'line'
,p_items_value_column_name=>'QUANTITY'
,p_items_label_column_name=>'SALES_DATE'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(77535797847743137254)
,p_chart_id=>wwv_flow_imp.id(77535796217454137250)
,p_seq=>20
,p_name=>'Shop C'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.product_name, b.quantity, b.customer, sales_date',
'from eba_demo_chart_products a, eba_demo_chart_orders b',
'where a.product_id = b.product_id',
'and customer = ''Shop C'''))
,p_series_type=>'bar'
,p_items_value_column_name=>'QUANTITY'
,p_items_label_column_name=>'SALES_DATE'
,p_line_style=>'solid'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(77535797074472137252)
,p_chart_id=>wwv_flow_imp.id(77535796217454137250)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_title=>'Quantity'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
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
 p_id=>wwv_flow_imp.id(77535796659576137251)
,p_chart_id=>wwv_flow_imp.id(77535796217454137250)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_title=>'Date'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
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
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(77535798367609137254)
,p_plug_name=>'Mixed Frequency Time Axis'
,p_parent_plug_id=>wwv_flow_imp.id(77535795552001137243)
,p_region_template_options=>'#DEFAULT#:i-h480:t-Region--noBorder:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(77535798805120137254)
,p_region_id=>wwv_flow_imp.id(77535798367609137254)
,p_chart_type=>'combo'
,p_animation_on_display=>'none'
,p_animation_on_data_change=>'none'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'none'
,p_stack=>'off'
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
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_time_axis_type=>'mixedFrequency'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(77535799923307137255)
,p_chart_id=>wwv_flow_imp.id(77535798805120137254)
,p_seq=>10
,p_name=>'Acme Store'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.product_name, b.quantity, b.customer, sales_date',
'from eba_demo_chart_products a, eba_demo_chart_orders b',
'where a.product_id = b.product_id',
'and customer = ''Acme Store'''))
,p_series_type=>'bar'
,p_items_value_column_name=>'QUANTITY'
,p_items_label_column_name=>'SALES_DATE'
,p_line_style=>'solid'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(77535800408007137256)
,p_chart_id=>wwv_flow_imp.id(77535798805120137254)
,p_seq=>20
,p_name=>'Deli'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.product_name, b.quantity, b.customer, sales_date',
'from eba_demo_chart_products a, eba_demo_chart_orders b',
'where a.product_id = b.product_id',
'and customer = ''Deli'''))
,p_series_type=>'line'
,p_items_value_column_name=>'QUANTITY'
,p_items_label_column_name=>'SALES_DATE'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(77535799534434137255)
,p_chart_id=>wwv_flow_imp.id(77535798805120137254)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_title=>'Quantity'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
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
 p_id=>wwv_flow_imp.id(77535799165421137255)
,p_chart_id=>wwv_flow_imp.id(77535798805120137254)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_title=>'Date'
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
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
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(77716997088039467905)
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
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(77357021347740354691)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(77357017333629354683)
,p_button_name=>'Straight'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--pillStart'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Straight'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(77357021749532354695)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(77357017333629354683)
,p_button_name=>'Curved'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--pill'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Curved'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(77357022164609354695)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(77357017333629354683)
,p_button_name=>'Stepped'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--pill'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Stepped'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(77357020978852354689)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(77357017333629354683)
,p_button_name=>'Segmented'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--pill'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Centered Segmented'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(77357022587221354695)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(77357017333629354683)
,p_button_name=>'None'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--pillEnd'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'None'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77515047619600996728)
,p_name=>'P25_SKIP_GAP'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(77535795552001137243)
,p_item_default=>'N'
,p_prompt=>'Skip Gaps'
,p_display_as=>'NATIVE_YES_NO'
,p_colspan=>3
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'The ''Regular Time Axis'' chart renders data items that share the same date value i.e. the date values associated with the points of series ''Shop C'' are exactly the same as the dates values associated with the points of series ''Store A''. The date inter'
||'vals between items do not have to be uniform.  The <strong>Time Axis Type</strong> attribute can be used to define how the data that is not uniform.  Select how you wish the data items to be rendered:<p/>',
'',
'<li><strong>Yes</strong> - this sets the Time Axis Type to <strong>Skip Gaps</strong>, where the dates will always be drawn uniformly, ignoring any gaps in dates.</li>',
'<li><strong>No</strong> - this sets the Time Axis type to <strong>Enabled</strong>, where the dates will not be drawn uniformly, respecting any gaps in dates.</li>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(77357031847147354722)
,p_computation_sequence=>10
,p_computation_item=>'LAST_VIEW'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'&APP_PAGE_ID.'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(77357035643111354737)
,p_name=>'Straight'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(77357021347740354691)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77357036182815354737)
,p_event_id=>wwv_flow_imp.id(77357035643111354737)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(77357017333629354683)
,p_attribute_01=>'apex.region("combo1").widget().ojChart({styleDefaults:{lineType:''straight''}});'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(77357036520241354738)
,p_name=>'Curved'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(77357021749532354695)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77357037054658354738)
,p_event_id=>wwv_flow_imp.id(77357036520241354738)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(77357017333629354683)
,p_attribute_01=>'apex.region("combo1").widget().ojChart({styleDefaults:{lineType:''curved''}});'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(77357037468873354738)
,p_name=>'Stepped'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(77357022164609354695)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77357037924822354739)
,p_event_id=>wwv_flow_imp.id(77357037468873354738)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(77357017333629354683)
,p_attribute_01=>'apex.region("combo1").widget().ojChart({styleDefaults:{lineType:''stepped''}});'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(77357039286872354741)
,p_name=>'Segmented'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(77357020978852354689)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77357039784043354741)
,p_event_id=>wwv_flow_imp.id(77357039286872354741)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(77357017333629354683)
,p_attribute_01=>'apex.region("combo1").widget().ojChart({styleDefaults:{lineType:''centeredSegmented''}});'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(77357038335873354740)
,p_name=>'None'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(77357022587221354695)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77357038887820354740)
,p_event_id=>wwv_flow_imp.id(77357038335873354740)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(77357017333629354683)
,p_attribute_01=>'apex.region("combo1").widget().ojChart({styleDefaults:{lineType:''none''}});'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(77515047164653996723)
,p_name=>'Skip Gap On'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P25_SKIP_GAP'
,p_condition_element=>'P25_SKIP_GAP'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77515047272347996724)
,p_event_id=>wwv_flow_imp.id(77515047164653996723)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(77357017333629354683)
,p_attribute_01=>'$("#regTime_jet").ojChart({timeAxisType:''skipGaps''});'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(77515047470875996726)
,p_name=>'Skip Gap Off'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P25_SKIP_GAP'
,p_condition_element=>'P25_SKIP_GAP'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'N'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77515047603356996727)
,p_event_id=>wwv_flow_imp.id(77515047470875996726)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(77357017333629354683)
,p_attribute_01=>'$("#regTime_jet").ojChart({timeAxisType:''enabled''});'
);
wwv_flow_imp.component_end;
end;
/
