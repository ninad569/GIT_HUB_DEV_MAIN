prompt --application/pages/page_00043
begin
--   Manifest
--     PAGE: 00043
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
 p_id=>43
,p_name=>'Pyramid'
,p_alias=>'PYRAMID'
,p_step_title=>'Pyramid'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>'var gAppImages = "#APP_IMAGES#";'
,p_step_template=>4072355960268175073
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'04'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(77632418790195136957)
,p_plug_name=>'About this page'
,p_icon_css_classes=>'fa-pyramid-chart'
,p_region_template_options=>'#DEFAULT#:t-Alert--horizontal:t-Alert--customIcons:t-Alert--info'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>10
,p_plug_source=>'<p>&PRODUCT_NAME. native Pyramid charts, using Oracle JET Data Visualizations, are showcased on this page. Pyramid charts are useful for visualizing hierarchical, proportional and foundation-based relationships, process steps, organizational layers o'
||'r topics interconnections. Explore the wide range of chart attributes declaratively available with our native charts, to format and customise the style of your charts.</p>'
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
 p_id=>wwv_flow_imp.id(77632419315273136957)
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
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(77632423393511136963)
,p_plug_name=>'Pyramid Chart'
,p_region_name=>'pyramid1'
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
 p_id=>wwv_flow_imp.id(77205702609477755963)
,p_region_id=>wwv_flow_imp.id(77632423393511136963)
,p_chart_type=>'pyramid'
,p_width=>'500'
,p_height=>'400'
,p_animation_on_display=>'alphaFade'
,p_animation_on_data_change=>'auto'
,p_data_cursor=>'on'
,p_data_cursor_behavior=>'smooth'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'none'
,p_stack=>'off'
,p_stack_label=>'off'
,p_spark_chart=>'N'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_value_format_type=>'decimal'
,p_value_decimal_places=>0
,p_value_format_scaling=>'none'
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
 p_id=>wwv_flow_imp.id(77205704312251755964)
,p_chart_id=>wwv_flow_imp.id(77205702609477755963)
,p_seq=>10
,p_name=>'Deli'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.product_name, b.quantity, b.customer, a.product_description',
'from eba_demo_chart_products a, eba_demo_chart_orders b',
'where a.product_id = b.product_id',
'and b.customer = ''Deli'''))
,p_items_value_column_name=>'QUANTITY'
,p_items_label_column_name=>'PRODUCT_NAME'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(77632589045457133090)
,p_plug_name=>'Pyramid Chart Information'
,p_parent_plug_id=>wwv_flow_imp.id(77632423393511136963)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'This example demonstrates various attributes of a Pyramid chart.<p/>',
'',
'<strong>Hide and Show Behavior</strong> - Use this chart-level attribute to support hide and show behavior using the chart legend. The legend uses the <strong>With Rescale</strong> Hide and Show behavior, allowing a user to hide and unhide a series b'
||'y clicking the chart legend markers. This allows the user to focus on specific series that are interesting to them. The chart will rescale as the minimum and maximum values of the visible data increase or decrease. This can be useful for series with '
||'largely varying values.<p/>',
'<strong>Dynamic Actions</strong> - Through the use of Dynamic actions, use the 2D/3D buttons to the top left of the chart to change the three dimensional effect of the chart.<p/>',
'<p>',
'For more information on the Pyramid chart settings, refer to the Oracle JET Cookbook <a href="https://www.oracle.com/webfolder/technetwork/jet/jetCookbook.html?component=pyramidChart&demo=default" target="_blank">Pyramid Chart: Basic</a> and <a href='
||'"https://www.oracle.com/webfolder/technetwork/jet/jetCookbook.html?component=pyramidChart&demo=legend" target="_blank">Pyramid Chart: Legend</a> examples.',
'',
''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(77996748468256039356)
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
 p_id=>wwv_flow_imp.id(77205707446448755967)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(77632423393511136963)
,p_button_name=>'2D'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'2D'
,p_button_position=>'PREVIOUS'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(77205707827942755968)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(77632423393511136963)
,p_button_name=>'3D'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'3D'
,p_button_position=>'PREVIOUS'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(77205713991412755981)
,p_computation_sequence=>10
,p_computation_item=>'LAST_VIEW'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'&APP_PAGE_ID.'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(77205716063272755992)
,p_name=>'2D'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(77205707446448755967)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77205716556343755993)
,p_event_id=>wwv_flow_imp.id(77205716063272755992)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(77632423393511136963)
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.region("pyramid1").widget().ojChart({styleDefaults: { ''threeDEffect'': ''off'' }});',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(77205716927169755993)
,p_name=>'3D'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(77205707827942755968)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77205717485248755994)
,p_event_id=>wwv_flow_imp.id(77205716927169755993)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(77632423393511136963)
,p_attribute_01=>'apex.region("pyramid1").widget().ojChart({styleDefaults: { ''threeDEffect'': ''on'' }});'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(77205717855031755994)
,p_name=>'Straight'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(77343410226864810208)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(77205718730657755995)
,p_name=>'Curved'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(77343410349059810209)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(77205719659858755996)
,p_name=>'Stepped'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(77343410426683810210)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(77205720602562755997)
,p_name=>'Segmented'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(77343412275718810228)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp.component_end;
end;
/
