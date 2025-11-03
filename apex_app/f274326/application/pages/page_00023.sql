prompt --application/pages/page_00023
begin
--   Manifest
--     PAGE: 00023
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
 p_id=>23
,p_name=>'Range'
,p_alias=>'RANGE'
,p_step_title=>'Range'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'04'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(77535828729348097947)
,p_plug_name=>'About this page'
,p_icon_css_classes=>'fa-range-chart-bar'
,p_region_template_options=>'#DEFAULT#:t-Alert--horizontal:t-Alert--customIcons:t-Alert--info'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>10
,p_plug_source=>'<p>&PRODUCT_NAME. native Range charts, using Oracle JET Data Visualizations, are showcased on this page. Range charts support two types of series: Bar Range, or Area Range. For range charts, each data point may have up to two labels, one for the low '
||'value and one for the high value..</p>'
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
 p_id=>wwv_flow_imp.id(77535836696315110994)
,p_plug_name=>'Range - Bar Range'
,p_region_name=>'range'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--noBorder:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(77535836750233110995)
,p_region_id=>wwv_flow_imp.id(77535836696315110994)
,p_chart_type=>'range'
,p_width=>'600'
,p_height=>'450'
,p_animation_on_display=>'none'
,p_animation_on_data_change=>'none'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'none'
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
 p_id=>wwv_flow_imp.id(77535836839276110996)
,p_chart_id=>wwv_flow_imp.id(77535836750233110995)
,p_seq=>10
,p_name=>'Product Sales'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select b.product_name, min(a.quantity), max(a.quantity) from eba_demo_chart_orders a, eba_demo_chart_products b',
'where a.product_id = b.product_id',
'group by a.product_id, b.product_name',
'order by b.product_name asc'))
,p_series_type=>'barRange'
,p_items_low_column_name=>'MIN(A.QUANTITY)'
,p_items_high_column_name=>'MAX(A.QUANTITY)'
,p_items_label_column_name=>'PRODUCT_NAME'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideBarEdge'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(77535836983298110997)
,p_chart_id=>wwv_flow_imp.id(77535836750233110995)
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
 p_id=>wwv_flow_imp.id(77535837060514110998)
,p_chart_id=>wwv_flow_imp.id(77535836750233110995)
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
 p_id=>wwv_flow_imp.id(77535829288366097957)
,p_plug_name=>'Information - Bar Range'
,p_parent_plug_id=>wwv_flow_imp.id(77535836696315110994)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'This example demonstrates a Bar Range chart with data labels.<p/>',
'<strong>Type</strong> - Series-level attribute to set the type of range, which is Bar Range in this example.<p/> ',
'<strong>Maximum Width & Height</strong> - Chart-level attributes Maximum Width and Height have been set to 600px and 450px respectively, to size the chart within its region.  If you wish to default to using 100% width and height of the given region, '
||'simply remove these values, and utilitise the Template Options of the region to control the height as you wish.<p/> ',
'<strong>Label Position</strong> - Use the series-level attribute to define the position of the labels. Valid label positions for a Bar Range series are ''Automatic'', ''Center'', ''Inside Bar Edge'', and ''Outside Bar Edge''. The default is ''Inside Bar Edge'''
||'. Use the <strong>Series Type</strong> attribute to change the series to Area Range. Valid label positions for an Area Range chart are ''Automatic'', ''Center'', ''Above Marker'', ''Below Marker'', ''Before Marker'', and ''After Marker''. The default is ''Below M'
||'arker'' for the low label and ''Above Marker''for the high label.<p/>',
'<strong>Orientation</strong> - Through the use of Dynamic actions, use the Horizontal/Vertical button to the top left of the chart to change the orientiation of the data items on the charts.<p/>',
'<strong>Format</strong> - use this axis-level setting to apply date or numeric formatting to the values displayed on the chart and axes.  For the Y-axis, a ''Decimal'' format has been used, to set the number of decimals to zero, overwriting the default'
||' setting of 2 decimal places that Oracle JET applies.<p/>',
'For more information on the Range chart settings, refer to the Oracle JET Cookbook <a href="https://www.oracle.com/webfolder/technetwork/jet/jetCookbook.html?component=rangeChart&demo=dataLabels" target="_blank">Range Chart: Data Labels</a> example.'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(77716997714838467911)
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
 p_id=>wwv_flow_imp.id(77738657393879096445)
,p_plug_name=>'Range - Area Range'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--noBorder:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(77738657736761096448)
,p_region_id=>wwv_flow_imp.id(77738657393879096445)
,p_chart_type=>'range'
,p_width=>'600'
,p_height=>'450'
,p_animation_on_display=>'none'
,p_animation_on_data_change=>'none'
,p_orientation=>'horizontal'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'none'
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
 p_id=>wwv_flow_imp.id(77738657818773096449)
,p_chart_id=>wwv_flow_imp.id(77738657736761096448)
,p_seq=>10
,p_name=>'Product Sales'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select b.product_name, min(a.quantity), max(a.quantity) from eba_demo_chart_orders a, eba_demo_chart_products b',
'where a.product_id = b.product_id',
'group by a.product_id, b.product_name',
'order by b.product_name asc'))
,p_series_type=>'areaRange'
,p_items_low_column_name=>'MIN(A.QUANTITY)'
,p_items_high_column_name=>'MAX(A.QUANTITY)'
,p_items_label_column_name=>'PRODUCT_NAME'
,p_line_type=>'none'
,p_marker_rendered=>'on'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideBarEdge'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(77738657931905096450)
,p_chart_id=>wwv_flow_imp.id(77738657736761096448)
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
 p_id=>wwv_flow_imp.id(77738657982337096451)
,p_chart_id=>wwv_flow_imp.id(77738657736761096448)
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
 p_id=>wwv_flow_imp.id(77738658082026096452)
,p_plug_name=>'Information - Area Range'
,p_parent_plug_id=>wwv_flow_imp.id(77738657393879096445)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'This example demonstrates an Area Range chart with lines and markers displayed.<p/>',
'<strong>Orientation</strong> - chart-level attribute to set to Horizontal.<p/>',
'<strong>Type</strong> - Series-level attribute to set the type of range, which is Area Range in this example.<p/> ',
'<strong>Line Type</strong> - series-level attribute to set to <strong>None</strong>.<p/>',
'<strong>Marker Show</strong> - series-level attribute to set to <strong>Yes</strong>.<p/>',
'<p/>',
'For more information on the Range chart settings, refer to the Oracle JET Cookbook <a href="https://www.oracle.com/webfolder/technetwork/jet/jetCookbook.html?component=rangeChart&demo=lineTypes" target="_blank">Range Chart: Line Types</a> example.'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(77738658197364096453)
,p_plug_name=>'Region Display Selector'
,p_plug_display_sequence=>20
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_region_icons', 'N',
  'include_show_all', 'Y',
  'rds_mode', 'STANDARD',
  'remember_selection', 'NO')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(77738657464418096446)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(77738657393879096445)
,p_button_name=>'Horizontal_1'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Horizontal'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-bars'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(77738657614762096447)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(77738657393879096445)
,p_button_name=>'Vertical_1'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--pillEnd'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Vertical'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-bar-chart'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(77536185372300609662)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(77535836696315110994)
,p_button_name=>'Horizontal'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Horizontal'
,p_button_position=>'PREVIOUS'
,p_icon_css_classes=>'fa-bars'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(77536185645662610913)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(77535836696315110994)
,p_button_name=>'Vertical'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--pillEnd'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Vertical'
,p_button_position=>'PREVIOUS'
,p_icon_css_classes=>'fa-bar-chart'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(77536185842172612708)
,p_name=>'Horizontal Orientation'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(77536185372300609662)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77536186218186612714)
,p_event_id=>wwv_flow_imp.id(77536185842172612708)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(77535836696315110994)
,p_attribute_01=>'apex.region("range").widget().ojChart({orientation: ''horizontal''});'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(77536186674848614105)
,p_name=>'Vertical Orientation'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(77536185645662610913)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77536187105941614204)
,p_event_id=>wwv_flow_imp.id(77536186674848614105)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(77535836696315110994)
,p_attribute_01=>'apex.region("range").widget().ojChart({orientation: ''vertical''});'
);
wwv_flow_imp.component_end;
end;
/
