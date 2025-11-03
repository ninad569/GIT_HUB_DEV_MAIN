prompt --application/pages/page_00009
begin
--   Manifest
--     PAGE: 00009
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
 p_id=>9
,p_name=>'Bar'
,p_alias=>'BAR'
,p_step_title=>'Bar'
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
 p_id=>wwv_flow_imp.id(77015283481451474043)
,p_plug_name=>'Bar Chart (Dual Y Axis with formatted Labels)'
,p_region_name=>'dualChart'
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
 p_id=>wwv_flow_imp.id(77015283964380474048)
,p_region_id=>wwv_flow_imp.id(77015283481451474043)
,p_chart_type=>'bar'
,p_width=>'700'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
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
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(77015284071033474049)
,p_chart_id=>wwv_flow_imp.id(77015283964380474048)
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
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'insideBarEdge'
,p_items_label_display_as=>'PERCENT'
,p_items_label_font_size=>'14'
,p_items_label_font_color=>'WHITE'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(77015284226655474050)
,p_chart_id=>wwv_flow_imp.id(77015283964380474048)
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
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'PERCENT'
,p_items_label_font_size=>'14'
,p_items_label_font_color=>'BLUE'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(77015284320884474051)
,p_chart_id=>wwv_flow_imp.id(77015283964380474048)
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
,p_assigned_to_y2=>'on'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideBarEdge'
,p_items_label_display_as=>'PERCENT'
,p_items_label_font_size=>'14'
,p_items_label_font_color=>'#309fdb'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(77015284403995474052)
,p_chart_id=>wwv_flow_imp.id(77015283964380474048)
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
 p_id=>wwv_flow_imp.id(77015284448587474053)
,p_chart_id=>wwv_flow_imp.id(77015283964380474048)
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
 p_id=>wwv_flow_imp.id(77015284636440474054)
,p_chart_id=>wwv_flow_imp.id(77015283964380474048)
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
 p_id=>wwv_flow_imp.id(77342758474604890106)
,p_plug_name=>'Bar Chart (Stacked)'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select id,',
'       project as label,',
'       NVL((select sum(t.budget) from eba_demo_chart_tasks t where t.project =  p.id and t.budget > t.cost),0) as value,',
'       ''under budget'' as series ,',
'       ''green'' as color',
'  from eba_demo_chart_projects p',
'union all',
'select id,',
'       project as label,',
'       NVL((select sum(t.budget) from eba_demo_chart_tasks t where t.project =  p.id and t.budget <= t.cost),0) as value,',
'       ''over budget'' as series ,',
'       ''red'' as color',
'  from eba_demo_chart_projects p'))
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(77342758518666890107)
,p_region_id=>wwv_flow_imp.id(77342758474604890106)
,p_chart_type=>'bar'
,p_height=>'450'
,p_animation_on_display=>'none'
,p_animation_on_data_change=>'none'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'none'
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
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(77342758694904890108)
,p_chart_id=>wwv_flow_imp.id(77342758518666890107)
,p_seq=>10
,p_name=>'New'
,p_location=>'REGION_SOURCE'
,p_series_name_column_name=>'SERIES'
,p_items_value_column_name=>'VALUE'
,p_group_short_desc_column_name=>'LABEL'
,p_items_label_column_name=>'LABEL'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(77342758769435890109)
,p_chart_id=>wwv_flow_imp.id(77342758518666890107)
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
 p_id=>wwv_flow_imp.id(77342758886185890110)
,p_chart_id=>wwv_flow_imp.id(77342758518666890107)
,p_axis=>'y'
,p_is_rendered=>'on'
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
 p_id=>wwv_flow_imp.id(77342758985762890111)
,p_plug_name=>'Bar Chart (Stack Label & Stack Category)'
,p_region_name=>'stackCategoryChart'
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
 p_id=>wwv_flow_imp.id(77342759035637890112)
,p_region_id=>wwv_flow_imp.id(77342758985762890111)
,p_chart_type=>'bar'
,p_width=>'700'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'none'
,p_stack=>'on'
,p_stack_label=>'on'
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
 p_id=>wwv_flow_imp.id(77342759194391890113)
,p_chart_id=>wwv_flow_imp.id(77342759035637890112)
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
,p_assigned_to_y2=>'off'
,p_stack_category=>'stack1'
,p_items_label_rendered=>true
,p_items_label_position=>'insideBarEdge'
,p_items_label_display_as=>'PERCENT'
,p_items_label_css_classes=>'font-size:14px;color:white;'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(77342759504982890116)
,p_chart_id=>wwv_flow_imp.id(77342759035637890112)
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
,p_assigned_to_y2=>'off'
,p_stack_category=>'stack1'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'PERCENT'
,p_items_label_css_classes=>'font-size:14px;color:blue;'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(77342759603230890117)
,p_chart_id=>wwv_flow_imp.id(77342759035637890112)
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
,p_assigned_to_y2=>'off'
,p_stack_category=>'stack2'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideBarEdge'
,p_items_label_display_as=>'PERCENT'
,p_items_label_css_classes=>'font-size:14px;color:blue;'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(77342759244294890114)
,p_chart_id=>wwv_flow_imp.id(77342759035637890112)
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
 p_id=>wwv_flow_imp.id(77342759391245890115)
,p_chart_id=>wwv_flow_imp.id(77342759035637890112)
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
 p_id=>wwv_flow_imp.id(77343139766675645482)
,p_chart_id=>wwv_flow_imp.id(77342759035637890112)
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
 p_id=>wwv_flow_imp.id(77343135955896155554)
,p_plug_name=>'Bar Chart (Stack Label & Stack Category) Information'
,p_parent_plug_id=>wwv_flow_imp.id(77342758985762890111)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'This example demonstrates 2 attributes of a Bar chart.<p/><p/>',
'',
'<strong>Stack Label</strong> - Use this chart-level attribute to display the total values of stacked data items on a chart.<p/>',
'<strong>Stack Category</strong> - Set the series-level attribute to assign a series to a specific category on the chart.  This attribute allows you to render multiple stacks on a stacked chart, without the need to use JavaScript code.<p/>',
'',
'<p>',
'For more information on the Stack Label and Stack Category attributes, refer to the Oracle JET Cookbook <a href="https://www.oracle.com/webfolder/technetwork/jet-800/jetCookbook.html?component=barChart&demo=dataLabels" target="_blank">Bar Chart: Data'
||' Labels</a> and <a href="https://www.oracle.com/webfolder/technetwork/jet/jetCookbook.html?component=chart&demo=stackCategory" target="_blank">Stack Categories</a> examples, and the <a href="&OJCHART_API_URL.#stackLabel" target="_blank">stackLabel</a'
||'> attribute in the ojChart API guide.',
'',
''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(77575736986717773886)
,p_plug_name=>'Bar Chart (Stacked Percent)'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select id,',
'       project as label,',
'       NVL((select sum(t.budget) from eba_demo_chart_tasks t where t.project =  p.id and t.budget > t.cost),0) as value,',
'       ''under budget'' as series ,',
'       ''green'' as color',
'  from eba_demo_chart_projects p',
'union all',
'select id,',
'       project as label,',
'       NVL((select sum(t.budget) from eba_demo_chart_tasks t where t.project =  p.id and t.budget <= t.cost),0) as value,',
'       ''over budget'' as series ,',
'       ''red'' as color',
'  from eba_demo_chart_projects p'))
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(77575737029568773887)
,p_region_id=>wwv_flow_imp.id(77575736986717773886)
,p_chart_type=>'bar'
,p_height=>'450'
,p_animation_on_display=>'none'
,p_animation_on_data_change=>'none'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'none'
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
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(77575737133281773888)
,p_chart_id=>wwv_flow_imp.id(77575737029568773887)
,p_seq=>10
,p_name=>'New'
,p_location=>'REGION_SOURCE'
,p_series_name_column_name=>'SERIES'
,p_items_value_column_name=>'VALUE'
,p_group_short_desc_column_name=>'LABEL'
,p_items_label_column_name=>'LABEL'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(77575737299864773889)
,p_chart_id=>wwv_flow_imp.id(77575737029568773887)
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
 p_id=>wwv_flow_imp.id(77575737327777773890)
,p_chart_id=>wwv_flow_imp.id(77575737029568773887)
,p_axis=>'y'
,p_is_rendered=>'on'
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
 p_id=>wwv_flow_imp.id(77575737440094773891)
,p_plug_name=>'Bar Chart (Stacked Percent) Information'
,p_parent_plug_id=>wwv_flow_imp.id(77575736986717773886)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'This example demonstrates various attributes of a Stacked Bar chart, with values represented in percent.<p/>',
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
 p_id=>wwv_flow_imp.id(77639027061092499893)
,p_plug_name=>'Bar Chart (Series Name Column Mapping)'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>90
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(77639027123239499894)
,p_region_id=>wwv_flow_imp.id(77639027061092499893)
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
,p_stack=>'on'
,p_stack_label=>'on'
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
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(77639027287029499895)
,p_chart_id=>wwv_flow_imp.id(77639027123239499894)
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
,p_link_target=>'f?p=&APP_ID.:29:&SESSION.:IG[emp]_emp_details:&DEBUG.:CR,:IG_DEPTNO:&DEPTNO.'
,p_link_target_type=>'REDIRECT_PAGE'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(77639027366695499896)
,p_chart_id=>wwv_flow_imp.id(77639027123239499894)
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
 p_id=>wwv_flow_imp.id(77639027458679499897)
,p_chart_id=>wwv_flow_imp.id(77639027123239499894)
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
 p_id=>wwv_flow_imp.id(79067343733322419003)
,p_plug_name=>'Bar Chart (Series Name Column Mapping) Information'
,p_parent_plug_id=>wwv_flow_imp.id(77639027061092499893)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'This example demonstrates various attributes of a multi-series Bar chart, with links defined on each chart element. Oracle JET requires that each series of a multi-series chart contains a data point for each label that is displayed on the x-axis.  Wi'
||'th APEX 5.1.3, we introduced automatically filling in of any gaps in a given series, to densify the data and ensure the resulting data can be rendered correctly by Oracle JET. In APEX 18.1, we have introduced two new declarative options, to allow you'
||' to control whether the densification should be applied to your multi-series chart, and the sort order of the chart data. The options are:<br/>',
'',
'<ul>',
'<li><strong>Fill Gaps in Chart Data</strong>: by default, this is set to <strong>Yes</strong>, to indicate that the data densification logic will be applied to your multi-series chart. Try switching this option to No, to inspect the rendered chart.  '
||'Without the densification logic applied, data points are not rendered in the correct position on the chart.</li>',
'<li><strong>Sort Order</strong>: by default, this is set to <strong>Label - Ascending</strong>.  The option is only available for a multi-series chart, where the <strong>Fill Gaps in Chart Data</strong> attribute has been set to Yes.</li>',
'</ul>',
'',
'<strong>Link</strong> - This series-level attribute can be set to define a link on the chart element.  For this example, the new Interactive Grid URL Filtering support is demonstrated here.  When you click on a chart element, the URL will redirect yo'
||'u to page 29 in the application, which contains an Interactive Grid saved report on the EBA_DEMO_CHART_EMP table.  The report will filter information based upon the department number (DEPTNO) associated with the selected chart element.  The URL Filte'
||'ring is achieved by defining a link on the chart series, with the following settings:',
'<ul>',
'<li> <strong>Link Type</strong> = Redirect to Page</li>',
'<li> <strong>Target</strong> = Page 29</li> ',
'<li> <strong>Link Builder Target settings:</strong></i> ',
'<ul>',
'<li> <strong>Set Item Name</strong> = IG_DEPTNO     - using the <i>IG_</i> syntax to reference a column of the Interactive Grid</i> ',
'<li> <strong>Set Item Value</strong> = &amp;DEPTNO.</i> ',
'<li> <strong>Clear/Reset Action</strong> = ''Clear Regions''</li> ',
'<li> <strong>Advanced Request</strong> = IG[<i>emp</i>]_<i>emp_details</i>  -  where <i>emp</i> is the region static ID, and <i>emp_details</i> is the saved report name.</li> ',
'</ul>',
'</ul>',
'<p/><p/>',
'<strong>Series Name</strong> - This series-level attribute can be used to handle the rendering of a multi-series chart, based upon your multi-series dynamic query defined either at series level or region level.',
'<p>',
'',
''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(77771322320718979526)
,p_plug_name=>'Bar Chart (Series Colors)'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(77331002942772317313)
,p_plug_name=>'Default Color Palette'
,p_region_name=>'bar_1'
,p_parent_plug_id=>wwv_flow_imp.id(77771322320718979526)
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_header=>'* Values Sorted Ascending'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(77331003036436317314)
,p_region_id=>wwv_flow_imp.id(77331002942772317313)
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
 p_id=>wwv_flow_imp.id(77331003180925317315)
,p_chart_id=>wwv_flow_imp.id(77331003036436317314)
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
 p_id=>wwv_flow_imp.id(77331003350169317317)
,p_chart_id=>wwv_flow_imp.id(77331003036436317314)
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
 p_id=>wwv_flow_imp.id(77331003224138317316)
,p_chart_id=>wwv_flow_imp.id(77331003036436317314)
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
 p_id=>wwv_flow_imp.id(77340226901496661400)
,p_plug_name=>'Bar Chart (Series Colors) Information'
,p_parent_plug_id=>wwv_flow_imp.id(77771322320718979526)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'These examples demonstrate the various ways to control the colors used for the chart series.<p/><p/>',
'',
'<strong>Default Color Palette</strong> - The JET chart color palette is integrated with Universal Theme.  So you can easily change the default color palette using Theme Roller, allowing you to globally define the colour scheme for your application - '
||'for your charts and all other components. Simply launch Theme Roller on your chart page, click the <b>Show All</b> button, to expose all available groups, then scroll down to the Palette group and start making your color selections.  Once you''ve defi'
||'ned your selection, click ''Save As'' to save the changes to a new Theme Style. Then click ''Set as Current'', to apply your changes to the application.  Note that the changed color palette will be applied to all components of your application, not just '
||'to charts.<p/>',
'<strong>Series-Level Color Attribute</strong> - We declaratively support the definition of a series color via the series-level <b>Color</b> attribute.  You can type the color, or use the Quick Pick or Color Picker, to make your selection.<p/>',
'',
'<strong>SQL Series-Defined Colors</strong> - If you wish to apply colors based on a column in your table, or dynamically via your SQL query, then all you need to do is include the column/alias in your query and reference it in the series-level <b>Col'
||'or</b> attribute.  For example:<br/>',
'<pre>',
'select a.product_name, ',
'       b.quantity, ',
'       b.customer,',
'       case when b.quantity > 50 then ''gold''',
'            when b.quantity <= 30 then ''red'' ',
'         when b.quantity > 30 then ''green''',
'         else ''blue''',
'       end colors',
'from eba_demo_chart_products a, eba_demo_chart_orders b',
'where a.product_id = b.product_id',
'and customer = ''Store A''',
'</pre>',
'...where a column alias COLORS has been defined.  The column alias can then be referenced in the series color via the series-level Color attribute, using <b>&amp;COLORS.</b> syntax.<p/><p/>',
'',
'<strong>Custom Colors via JavaScript</strong> - Use the chart-level advanced attribute <b>JavaScript Code</b> to customize the chart colors at chart initialization. For example,:<p/>',
'<pre>',
'function( options ){ ',
'        ',
'    // Setup a callback function which gets called when data is retrieved, it allows to manipulate the series ',
'    options.dataFilter = function( data ) { ',
'        data.series[ 0 ].items[0].color = "red"; ',
'        data.series[ 0 ].items[1].color = "blue"; ',
'        data.series[ 0 ].items[2].color = "yellow"; ',
'        data.series[ 0 ].items[3].color = "green"; ',
'        data.series[ 0 ].items[4].color = "purple"; ',
'        return data; ',
'    };',
'        ',
'    // Set chart initialization options ',
'    return options; ',
'}',
'</pre>',
'',
'<p>',
'<strong>Sort Order</strong> - These examples demonstrate the use of an ORDER BY in the chart SQL Query to control the sort ordering of a single-series chart.',
'<p>',
''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(77771322470745979527)
,p_plug_name=>'Series-Level Color Attribute'
,p_parent_plug_id=>wwv_flow_imp.id(77771322320718979526)
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_header=>'* Values Sorted Descending'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(77771322583261979528)
,p_region_id=>wwv_flow_imp.id(77771322470745979527)
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
 p_id=>wwv_flow_imp.id(77771322649576979529)
,p_chart_id=>wwv_flow_imp.id(77771322583261979528)
,p_seq=>10
,p_name=>'Fruit Sales'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.product_name, b.quantity, b.customer',
'from eba_demo_chart_products a, eba_demo_chart_orders b',
'where a.product_id = b.product_id',
'and customer = ''Store A''',
'order by b.quantity desc'))
,p_items_value_column_name=>'QUANTITY'
,p_items_label_column_name=>'PRODUCT_NAME'
,p_color=>'#FC3254'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(77771322864858979531)
,p_chart_id=>wwv_flow_imp.id(77771322583261979528)
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
 p_id=>wwv_flow_imp.id(77771322731243979530)
,p_chart_id=>wwv_flow_imp.id(77771322583261979528)
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
 p_id=>wwv_flow_imp.id(77809218448689862582)
,p_plug_name=>'Custom Colors via JavaScript'
,p_parent_plug_id=>wwv_flow_imp.id(77771322320718979526)
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_header=>'* Labels Sorted Descending'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(77809218606499862583)
,p_region_id=>wwv_flow_imp.id(77809218448689862582)
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
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ){ ',
'        ',
'    // Setup a callback function which gets called when data is retrieved, it allows to manipulate the series ',
'    options.dataFilter = function( data ) { ',
'        data.series[ 0 ].items[0].color = "red"; ',
'        data.series[ 0 ].items[1].color = "blue"; ',
'        data.series[ 0 ].items[2].color = "yellow"; ',
'        data.series[ 0 ].items[3].color = "green"; ',
'        data.series[ 0 ].items[4].color = "purple"; ',
'        return data; ',
'    };',
'        ',
'    // Set chart initialization options ',
'    return options; ',
'}'))
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(77809218698891862584)
,p_chart_id=>wwv_flow_imp.id(77809218606499862583)
,p_seq=>10
,p_name=>'Fruit Sales'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.product_name, b.quantity, b.customer',
'from eba_demo_chart_products a, eba_demo_chart_orders b',
'where a.product_id = b.product_id',
'and customer = ''Store A''',
'order by a.product_name desc'))
,p_items_value_column_name=>'QUANTITY'
,p_items_label_column_name=>'PRODUCT_NAME'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(77809218846690862586)
,p_chart_id=>wwv_flow_imp.id(77809218606499862583)
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
 p_id=>wwv_flow_imp.id(77809218783210862585)
,p_chart_id=>wwv_flow_imp.id(77809218606499862583)
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
 p_id=>wwv_flow_imp.id(77809218994575862587)
,p_plug_name=>'SQL Series-Defined Colors'
,p_parent_plug_id=>wwv_flow_imp.id(77771322320718979526)
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_header=>'* Labels Sorted Ascending'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(77809219025341862588)
,p_region_id=>wwv_flow_imp.id(77809218994575862587)
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
 p_id=>wwv_flow_imp.id(77809219145622862589)
,p_chart_id=>wwv_flow_imp.id(77809219025341862588)
,p_seq=>10
,p_name=>'Fruit Sales'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.product_name, ',
'       b.quantity, ',
'       b.customer,',
'       case when b.quantity > 50 then ''gold''',
'            when b.quantity <= 30 then ''red'' ',
'         when b.quantity > 30 then ''green''',
'         else ''blue''',
'       end colors',
'from eba_demo_chart_products a, eba_demo_chart_orders b',
'where a.product_id = b.product_id',
'and customer = ''Store A''',
'order by a.product_name asc'))
,p_items_value_column_name=>'QUANTITY'
,p_items_label_column_name=>'PRODUCT_NAME'
,p_color=>'&COLORS.'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(77809219251747862590)
,p_chart_id=>wwv_flow_imp.id(77809219025341862588)
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
 p_id=>wwv_flow_imp.id(77809219346937862591)
,p_chart_id=>wwv_flow_imp.id(77809219025341862588)
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
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(78222733357808192352)
,p_plug_name=>'About this page'
,p_icon_css_classes=>'fa-bar-chart'
,p_region_template_options=>'#DEFAULT#:t-Alert--horizontal:t-Alert--customIcons:t-Alert--info'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>10
,p_plug_source=>'<p>&PRODUCT_NAME. native Bar charts, using Oracle JET Data Visualizations, and our plug-in based bar charts are showcased on this page. Explore the wide range of chart attributes declaratively available with our native charts, to format and customise'
||' the style of your charts. With plug-in based bar charts, you can display labels in a legend or with rollover labels on the bars. Drill down links are controlled via plug-in attributes. Oracle APEX region plug-ins allow APEX developers to extend the '
||'APEX application builder with custom solutions not currently available in Oracle APEX.</p>'
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
 p_id=>wwv_flow_imp.id(79036084337044233059)
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
 p_id=>wwv_flow_imp.id(79509474045229328901)
,p_plug_name=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>70
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(85116919603826146773)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(79509850847307361618)
,p_plug_name=>'HTML 5 Bar Chart (Plug-in)'
,p_region_name=>'WITHCOLOR'
,p_region_template_options=>'t-Region--noPadding:#DEFAULT#:t-Region--hiddenOverflow'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>100
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select task_name,',
'       budget',
'  from eba_demo_chart_tasks',
'order by task_name'))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.HTML5_BAR_CHART'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_02', 'TASK_NAME',
  'attribute_04', 'BUDGET',
  'attribute_11', 'VALUE',
  'attribute_14', '5',
  'attribute_15', 'TEXT',
  'attribute_16', 'ABSOLUTE',
  'attribute_17', 'MODERN',
  'attribute_18', 'AROUND',
  'attribute_20', 'No data found.',
  'attribute_21', '$9999')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(78228468545328009588)
,p_plug_name=>'HTML 5 Bar Chart SQL Source'
,p_parent_plug_id=>wwv_flow_imp.id(79509850847307361618)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.DISPLAY_SOURCE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'WITHCOLOR')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(77342759887742890120)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(77342758985762890111)
,p_button_name=>'Stack'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--pillStart'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Stack'
,p_button_position=>'NEXT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(77342760005188890121)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(77342758985762890111)
,p_button_name=>'Unstack'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--pillEnd'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Unstack'
,p_button_position=>'NEXT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(77342760458421890126)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(77342758985762890111)
,p_button_name=>'Horizontal'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Horizontal'
,p_button_position=>'PREVIOUS'
,p_icon_css_classes=>'fa-bars'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(77342760583257890127)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(77342758985762890111)
,p_button_name=>'Vertical'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--pillEnd'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Vertical'
,p_button_position=>'PREVIOUS'
,p_icon_css_classes=>'fa-bar-chart'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(79246983054462959727)
,p_computation_sequence=>10
,p_computation_item=>'LAST_VIEW'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'&APP_PAGE_ID.'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(77342760036819890122)
,p_name=>'Stack Chart'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(77342759887742890120)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77342760166993890123)
,p_event_id=>wwv_flow_imp.id(77342760036819890122)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(77342758985762890111)
,p_attribute_01=>'apex.region("stackCategoryChart").widget().ojChart({stack: ''on''});'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(77342760310548890124)
,p_name=>'Unstack Chart'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(77342760005188890121)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77342760415887890125)
,p_event_id=>wwv_flow_imp.id(77342760310548890124)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(77342758985762890111)
,p_attribute_01=>'apex.region("stackCategoryChart").widget().ojChart({stack: ''off''});'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(77342760710440890128)
,p_name=>'Horizontal Orientation'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(77342760458421890126)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77342760740834890129)
,p_event_id=>wwv_flow_imp.id(77342760710440890128)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(77342758985762890111)
,p_attribute_01=>'apex.region("stackCategoryChart").widget().ojChart({orientation: ''horizontal''});'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(77342760829814890130)
,p_name=>'Vertical Orientation'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(77342760583257890127)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77342760932012890131)
,p_event_id=>wwv_flow_imp.id(77342760829814890130)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(77342758985762890111)
,p_attribute_01=>'apex.region("stackCategoryChart").widget().ojChart({orientation: ''vertical''});'
);
wwv_flow_imp.component_end;
end;
/
