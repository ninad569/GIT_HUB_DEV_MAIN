prompt --application/pages/page_00014
begin
--   Manifest
--     PAGE: 00014
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
 p_id=>14
,p_name=>'Data Densification'
,p_alias=>'DATA-DENSIFICATION'
,p_step_title=>'Data Densification'
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
 p_id=>wwv_flow_imp.id(77248341912150278497)
,p_plug_name=>'Multi-Series Chart - using ORDER BY'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>100
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_header=>'The <strong>Fill Gaps in Chart Data</strong> chart-level attribute is set to <strong>No</strong>, meaning that no densification logic is applied, and the customer''s query is responsible for fully populating the chart series JSON.  The query ORDER BY '
||'clause is respected, controlling the ordering of the chart data.'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(77248342014075278498)
,p_region_id=>wwv_flow_imp.id(77248341912150278497)
,p_chart_type=>'bar'
,p_title=>'Jobs By Department'
,p_height=>'450'
,p_animation_on_display=>'none'
,p_animation_on_data_change=>'none'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'none'
,p_hover_behavior=>'none'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_fill_multi_series_gaps=>false
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
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(77248342049642278499)
,p_chart_id=>wwv_flow_imp.id(77248342014075278498)
,p_seq=>10
,p_name=>'Jobs By Department'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select d.deptno, ',
'        e.job, ',
'        avg( e.sal ) avg_sal   ',
'   from eba_demo_chart_dept d  ',
'        left outer join ',
'        eba_demo_chart_emp e ',
'        partition by ( e.job )  ',
'        on d.deptno = e.deptno  ',
'  group by d.deptno, e.job   ',
'  order by d.deptno, e.job'))
,p_series_name_column_name=>'JOB'
,p_items_value_column_name=>'AVG_SAL'
,p_items_label_column_name=>'DEPTNO'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
,p_link_target=>'f?p=&APP_ID.:29:&SESSION.::&DEBUG.:RP:P29_DEPTNO:&DEPTNO.'
,p_link_target_type=>'REDIRECT_PAGE'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(77248342297961278501)
,p_chart_id=>wwv_flow_imp.id(77248342014075278498)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
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
 p_id=>wwv_flow_imp.id(77248342158349278500)
,p_chart_id=>wwv_flow_imp.id(77248342014075278498)
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
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(77248342341990278502)
,p_plug_name=>'Breadcrumb'
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
 p_id=>wwv_flow_imp.id(77384752592095577741)
,p_plug_name=>'Multi-Series Chart - Stacked, with Stack Label'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>90
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_header=>'The <strong>Fill Gaps in Chart Data</strong> chart-level attribute is set to <strong>On</strong>, and associated attribute <strong>Sort Order</strong> is set to <strong>Label-Descending</strong>, and <strong>Render Gap as Zero</strong> is set to <str'
||'ong>On</strong>, meaning that densification logic is applied, and we will automatically inject any missing data points in the chart series JSON. Those injected data points will have a value of zero.  The Sort Order setting controls the ordering of th'
||'e chart data.'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(77384752744211577742)
,p_region_id=>wwv_flow_imp.id(77384752592095577741)
,p_chart_type=>'bar'
,p_title=>'Average Salary By Department'
,p_height=>'450'
,p_animation_on_display=>'none'
,p_animation_on_data_change=>'none'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'none'
,p_hover_behavior=>'none'
,p_stack=>'on'
,p_stack_label=>'on'
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
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(77384752815708577743)
,p_chart_id=>wwv_flow_imp.id(77384752744211577742)
,p_seq=>10
,p_name=>'Jobs By Department'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select job, deptno, avg(sal) avg_sal ',
'  from eba_demo_chart_emp ',
' group by job, deptno ',
' order by deptno'))
,p_series_name_column_name=>'JOB'
,p_items_value_column_name=>'AVG_SAL'
,p_items_label_column_name=>'DEPTNO'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
,p_link_target=>'f?p=&APP_ID.:29:&SESSION.::&DEBUG.:RP:P29_DEPTNO:&DEPTNO.'
,p_link_target_type=>'REDIRECT_PAGE'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(77384752855700577744)
,p_chart_id=>wwv_flow_imp.id(77384752744211577742)
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
 p_id=>wwv_flow_imp.id(77384752953847577745)
,p_chart_id=>wwv_flow_imp.id(77384752744211577742)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'currency'
,p_decimal_places=>0
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
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(77682144237724131058)
,p_plug_name=>'Single Series Chart - using ORDER BY (Value, asc)'
,p_region_name=>'bar_1'
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_header=>'The <strong>Fill Gaps in Chart Data</strong> chart-level attribute is ignored for a single-series chart.  The chart series ORDER BY is respected, controlling the ordering of the chart data.'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(77277074545885998250)
,p_region_id=>wwv_flow_imp.id(77682144237724131058)
,p_chart_type=>'bar'
,p_height=>'340'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'none'
,p_orientation=>'horizontal'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
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
,p_show_value=>true
,p_show_label=>false
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
 p_id=>wwv_flow_imp.id(77277076274857998259)
,p_chart_id=>wwv_flow_imp.id(77277074545885998250)
,p_seq=>10
,p_name=>'Fruit Sales'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.product_name, b.quantity, b.customer',
'from eba_demo_chart_products a, eba_demo_chart_orders b',
'where a.product_id = b.product_id',
'and customer = ''Store A''',
'order by b.quantity asc'))
,p_items_value_column_name=>'QUANTITY'
,p_items_label_column_name=>'PRODUCT_NAME'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(77277075088732998254)
,p_chart_id=>wwv_flow_imp.id(77277074545885998250)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_title=>'Quantity'
,p_format_type=>'decimal'
,p_decimal_places=>0
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
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(77277075657147998258)
,p_chart_id=>wwv_flow_imp.id(77277074545885998250)
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
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(77990168356044313638)
,p_plug_name=>'Multi-Series Chart - Densified, Sorted By Label, desc'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_header=>'The <strong>Fill Gaps in Chart Data</strong> chart-level attribute is set to <strong>On</strong>, and associated attribute <strong>Sort Order</strong> is set to <strong>Label-Descending</strong>, meaning that densification logic is applied, and we wi'
||'ll automatically inject any missing data points in the chart series JSON.  The Sort Order setting controls the ordering of the chart data.'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(77277084839665998274)
,p_region_id=>wwv_flow_imp.id(77990168356044313638)
,p_chart_type=>'bar'
,p_title=>'Jobs By Department'
,p_height=>'450'
,p_animation_on_display=>'none'
,p_animation_on_data_change=>'none'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'none'
,p_hover_behavior=>'none'
,p_stack=>'off'
,p_stack_label=>'off'
,p_spark_chart=>'N'
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
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(77277086576302998276)
,p_chart_id=>wwv_flow_imp.id(77277084839665998274)
,p_seq=>10
,p_name=>'Jobs By Department'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select job, deptno, avg(sal) avg_sal ',
'  from eba_demo_chart_emp ',
' group by job, deptno ',
' order by deptno'))
,p_series_name_column_name=>'JOB'
,p_items_value_column_name=>'AVG_SAL'
,p_items_label_column_name=>'DEPTNO'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
,p_link_target=>'f?p=&APP_ID.:29:&SESSION.::&DEBUG.:RP,:P29_DEPTNO:&DEPTNO.'
,p_link_target_type=>'REDIRECT_PAGE'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(77277085371936998274)
,p_chart_id=>wwv_flow_imp.id(77277084839665998274)
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
 p_id=>wwv_flow_imp.id(77277085999784998275)
,p_chart_id=>wwv_flow_imp.id(77277084839665998274)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
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
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(78573874652760006097)
,p_plug_name=>'About this page'
,p_icon_css_classes=>'fa-code-group'
,p_region_template_options=>'#DEFAULT#:t-Alert--horizontal:t-Alert--customIcons:t-Alert--info'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>10
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>&PRODUCT_NAME. 5.1.3 introduced data densification logic, to automatically handle injecting missing data points in multi-series charts.  ',
'',
'With &PRODUCT_NAME. 5.1.3, we introduced data densification logic, to automatically handle the injection of missing data points in a multi-series query.  Any ORDER BY defined in the query will not be respected.  Prior to 5.1.3, numerous customers got'
||' caught out by having missing data points in the chart JSON, thus resulting in data elements being rendered incorrectly on their charts.  With patch releases we cannot introduce any UI changes, so the data densificiation logic is automatically applie'
||'d to charts with multiples series of data.  With our new release, 18.1, we have introduced a new ''Fill Gaps in Chart Data'' chart-level option, that will allow you to opt out of having the densification logic applied to your chart, if you wish.  By de'
||'fault, the new option will be set to ''Yes''.  When set to Yes, we will apply data densification logic and default ordering by label, ascending.  This corresponds with the behaviour you currently experience with 5.1.3 & 5.1.4.  We have introduced an as'
||'sociated item, ''Sort Order'', to allow you to define the ordering of the chart data - value-ascending, value-descending, label-ascending, label-descending. That ''Sort Order'' option will only be available when ''Fill Gaps in Chart Data'' is set to ''Yes''.'
||'  When set to No, our data densification logic will not be applied to the chart.  In that case, the customer will have to ensure that their chart query correctly handles the generation of a multi-series chart with a data point for every x-axis label.'
||' For a single series chart, customers must use an ORDER BY clause in the chart query, to control the ordering of data elements.',
'',
'We have included a number of examples on this page to demonstrate the new options.</p>'))
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
 p_id=>wwv_flow_imp.id(79387225631996046804)
,p_plug_name=>'Region Display Selector'
,p_plug_display_sequence=>20
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_region_icons', 'N',
  'include_show_all', 'Y',
  'rds_mode', 'STANDARD',
  'remember_selection', 'NO')).to_clob
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(77277101126678998304)
,p_computation_sequence=>10
,p_computation_item=>'LAST_VIEW'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'&APP_PAGE_ID.'
);
wwv_flow_imp.component_end;
end;
/
