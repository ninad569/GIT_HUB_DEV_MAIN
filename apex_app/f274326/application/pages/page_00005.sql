prompt --application/pages/page_00005
begin
--   Manifest
--     PAGE: 00005
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
 p_id=>5
,p_name=>'Status Meter Gauge'
,p_alias=>'STATUS-METER-GAUGE'
,p_step_title=>'Status Meter Gauge'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'04'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(76945112664710659056)
,p_plug_name=>'Horizontal'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_header=>'<strong>For more information on the Status Meter Gauge chart settings, refer to the Oracle JET Cookbook <a href="https://www.oracle.com/webfolder/technetwork/jet/jetCookbook.html?component=statusMeterGauge&demo=statusMeterGaugeHorizontal" target="_bl'
||'ank">Status Meter Gauge - Horizontal</a> example.</strong>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(76945113111597659060)
,p_plug_name=>'Value and Label - Positioned in Center'
,p_parent_plug_id=>wwv_flow_imp.id(76945112664710659056)
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>50
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(76945113218024659061)
,p_region_id=>wwv_flow_imp.id(76945113111597659060)
,p_chart_type=>'dial'
,p_width=>'300'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_text_type=>'number'
,p_value_position=>'auto'
,p_value_format_type=>'decimal'
,p_value_decimal_places=>0
,p_value_format_scaling=>'none'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
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
,p_gauge_orientation=>'horizontal'
,p_gauge_indicator_size=>1
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(76945113281653659062)
,p_chart_id=>wwv_flow_imp.id(76945113218024659061)
,p_seq=>10
,p_name=>'Commission'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT sum(case when COMM is null ',
'                     then 0 ',
'                when COMM = 0 ',
'                     then 0 ',
'                else 1 ',
'                end) value, ',
'       count(*) max_value,',
'       ''Sales'' as my_label ',
'FROM   eba_demo_chart_emp'))
,p_items_value_column_name=>'VALUE'
,p_items_max_value=>'MAX_VALUE'
,p_items_label_column_name=>'MY_LABEL'
,p_color=>'#FFFF00'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'PERCENT'
,p_gauge_plot_area_color=>'GRAY'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(77015285947624474068)
,p_plug_name=>'Value and Label Information'
,p_parent_plug_id=>wwv_flow_imp.id(76945113111597659060)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>'This example demonstrates the setting of the series-level <strong>Label</strong> column mapping, to display a label of ''Sales'' in the center of the horizontal gauge, alongside the <strong>Value</strong> of the chart. The label <strong>Position</stron'
||'g> attribute places the label in the center of the gauge.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(76945113381922659063)
,p_plug_name=>'Percent Formatting'
,p_parent_plug_id=>wwv_flow_imp.id(76945112664710659056)
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>100
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(76945113449774659064)
,p_region_id=>wwv_flow_imp.id(76945113381922659063)
,p_chart_type=>'dial'
,p_width=>'300'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_text_type=>'percent'
,p_value_position=>'auto'
,p_value_format_scaling=>'none'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
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
,p_gauge_orientation=>'horizontal'
,p_gauge_indicator_size=>.5
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(76945113560719659065)
,p_chart_id=>wwv_flow_imp.id(76945113449774659064)
,p_seq=>10
,p_name=>'Commission'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT sum(case when COMM is null ',
'                     then 0 ',
'                when COMM = 0 ',
'                     then 0 ',
'                else 1 ',
'                end) value, ',
'       count(*) max_value ',
'FROM   eba_demo_chart_emp'))
,p_items_value_column_name=>'VALUE'
,p_items_max_value=>'MAX_VALUE'
,p_items_label_rendered=>true
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(77015286353287474072)
,p_plug_name=>'Percent Formatting Information'
,p_parent_plug_id=>wwv_flow_imp.id(76945113381922659063)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>'This example demonstrates the rendering of the value as a percent, using the <strong>Value Type</strong> attribute.  While no formatting of the value has been applied in this example, the <strong>Format</strong> attribute would be used to apply such '
||'formatting to the value rendered on the gauge.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(76945113727358659066)
,p_plug_name=>'Number Formatting'
,p_parent_plug_id=>wwv_flow_imp.id(76945112664710659056)
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>80
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(76945113841056659067)
,p_region_id=>wwv_flow_imp.id(76945113727358659066)
,p_chart_type=>'dial'
,p_width=>'300'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_text_type=>'number'
,p_value_position=>'auto'
,p_value_format_type=>'currency'
,p_value_decimal_places=>2
,p_value_format_scaling=>'none'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
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
,p_gauge_orientation=>'horizontal'
,p_gauge_indicator_size=>.8
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(76945113908653659068)
,p_chart_id=>wwv_flow_imp.id(76945113841056659067)
,p_seq=>10
,p_name=>'Commission'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT sum(case when COMM is null ',
'                     then 0 ',
'                when COMM = 0 ',
'                     then 0 ',
'                else 1 ',
'                end) value, ',
'       count(*) max_value ',
'FROM   eba_demo_chart_emp'))
,p_items_value_column_name=>'VALUE'
,p_items_max_value=>'MAX_VALUE'
,p_color=>'#FA0F0F'
,p_items_label_rendered=>true
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(77015286156538474070)
,p_plug_name=>'Number Formatting Information'
,p_parent_plug_id=>wwv_flow_imp.id(76945113727358659066)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'This example demonstrates the formatting of the value as a currency, using the following attributes:<p/> ',
'<strong>Format</strong> - set to Currency<br/>',
'<strong>Decimal Places</strong> - set to 2<br/>',
'<strong>Currency</strong> - left blank, to automatically apply the NLS setting for currency.<p/> At series-level, the <strong>Color</strong> attribute has been set to red, to color the gauge indicator.'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(76945113970093659069)
,p_plug_name=>'Plot Area and Indicator Size'
,p_parent_plug_id=>wwv_flow_imp.id(76945112664710659056)
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>90
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(76945114129255659070)
,p_region_id=>wwv_flow_imp.id(76945113970093659069)
,p_chart_type=>'dial'
,p_width=>'300'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_text_type=>'number'
,p_value_position=>'auto'
,p_value_format_type=>'decimal'
,p_value_decimal_places=>0
,p_value_format_scaling=>'none'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
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
,p_gauge_orientation=>'horizontal'
,p_gauge_indicator_size=>.4
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>false
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(76945114215018659071)
,p_chart_id=>wwv_flow_imp.id(76945114129255659070)
,p_seq=>10
,p_name=>'Commission'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT sum(case when COMM is null ',
'                     then 0 ',
'                when COMM = 0 ',
'                     then 0 ',
'                else 1 ',
'                end) value, ',
'       count(*) max_value,',
'       ''Sales'' as my_label ',
'FROM   eba_demo_chart_emp'))
,p_items_value_column_name=>'VALUE'
,p_items_max_value=>'MAX_VALUE'
,p_items_label_rendered=>true
,p_items_label_display_as=>'PERCENT'
,p_gauge_plot_area_color=>'#4BB521'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(77015286276061474071)
,p_plug_name=>'Plot Area and Indicator Size Information'
,p_parent_plug_id=>wwv_flow_imp.id(76945113970093659069)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'This example demonstrates the setting of the series-level attribute, <strong>Plot Area Color</strong>, to green, to color the empty part of the gauge.',
' The <strong>Indicator Size</strong> attribute has been changed from a default of 1 to .4, to reduce the size of the indicator in relation to the plot area.'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(76945114312870659072)
,p_plug_name=>'Indicator Size'
,p_parent_plug_id=>wwv_flow_imp.id(76945112664710659056)
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>110
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(76945114404387659073)
,p_region_id=>wwv_flow_imp.id(76945114312870659072)
,p_chart_type=>'dial'
,p_width=>'300'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_text_type=>'number'
,p_value_position=>'auto'
,p_value_format_type=>'decimal'
,p_value_decimal_places=>0
,p_value_format_scaling=>'none'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
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
,p_gauge_orientation=>'horizontal'
,p_gauge_indicator_size=>10
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(76945114453412659074)
,p_chart_id=>wwv_flow_imp.id(76945114404387659073)
,p_seq=>10
,p_name=>'Commission'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT sum(case when COMM is null ',
'                     then 0 ',
'                when COMM = 0 ',
'                     then 0 ',
'                else 1 ',
'                end) value, ',
'       count(*) max_value,',
'       ''Sales'' as my_label ',
'FROM   eba_demo_chart_emp'))
,p_items_value_column_name=>'VALUE'
,p_items_max_value=>'MAX_VALUE'
,p_items_label_column_name=>'MY_LABEL'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(77015286464003474073)
,p_plug_name=>'Indicator Size Information'
,p_parent_plug_id=>wwv_flow_imp.id(76945114312870659072)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>'This example demonstrates the rendering of a larger indicator, through the setting of the attribute <strong>Indicator Size</strong> to 10.  The default value is 1.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(76945114575022659075)
,p_plug_name=>'Thresholds'
,p_parent_plug_id=>wwv_flow_imp.id(76945112664710659056)
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>120
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(76945114678489659076)
,p_region_id=>wwv_flow_imp.id(76945114575022659075)
,p_chart_type=>'dial'
,p_width=>'300'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_text_type=>'number'
,p_value_position=>'auto'
,p_value_format_type=>'decimal'
,p_value_decimal_places=>0
,p_value_format_scaling=>'none'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
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
,p_gauge_orientation=>'horizontal'
,p_gauge_indicator_size=>.9
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(76945114799050659077)
,p_chart_id=>wwv_flow_imp.id(76945114678489659076)
,p_seq=>10
,p_name=>'Commission'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT sum(case when COMM is null ',
'                     then 0 ',
'                when COMM = 0 ',
'                     then 0 ',
'                else 1 ',
'                end) value, ',
'       count(*) max_value,',
'       ''Sales'' as my_label ',
'FROM   eba_demo_chart_emp'))
,p_items_value_column_name=>'VALUE'
,p_items_max_value=>'MAX_VALUE'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_values=>'4,12,20'
,p_threshold_colors=>'#FF0000,#FFFF00,#008000'
,p_threshold_display=>'all'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(77015286622297474074)
,p_plug_name=>'Thresholds Information'
,p_parent_plug_id=>wwv_flow_imp.id(76945114575022659075)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'This example demonstrates the declarative definition of thresholds on a Status Meter Gauge, using the following series-level Threshold attributes:<p/> ',
'<strong>Values</strong> - set to a comma-delimited string, <strong>4,12,20</strong> - Note that this attribute supports substitutions of application and page items, as well as columns referenced in the chart SQL query..<br/>',
'<strong>Colors</strong> - set to <strong>#FF0000,#FFFF00,#008000</strong>.  As with the Values, this attributes supports substitutions.<br/>',
'<strong>Display</strong> - set to <strong>All</strong>, to display all thresholds, defined in the <strong>Values</strong> attribute, in the plot area of the chart.'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(76945114920856659078)
,p_plug_name=>'Thresholds - On Indicator'
,p_parent_plug_id=>wwv_flow_imp.id(76945112664710659056)
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>130
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(76945115026302659079)
,p_region_id=>wwv_flow_imp.id(76945114920856659078)
,p_chart_type=>'dial'
,p_width=>'300'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_text_type=>'number'
,p_value_position=>'auto'
,p_value_format_type=>'decimal'
,p_value_decimal_places=>0
,p_value_format_scaling=>'none'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
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
,p_gauge_orientation=>'horizontal'
,p_gauge_indicator_size=>.9
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(76945115116290659080)
,p_chart_id=>wwv_flow_imp.id(76945115026302659079)
,p_seq=>10
,p_name=>'Commission'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT sum(case when COMM is null ',
'                     then 0 ',
'                when COMM = 0 ',
'                     then 0 ',
'                else 1 ',
'                end) value, ',
'       count(*) max_value,',
'       ''Sales'' as my_label ',
'FROM   eba_demo_chart_emp'))
,p_items_value_column_name=>'VALUE'
,p_items_max_value=>'MAX_VALUE'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_values=>'4,12,20'
,p_threshold_colors=>'#FF0000,#FFFF00,#008000'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(77015286697697474075)
,p_plug_name=>'Thresholds - On Indicator Information'
,p_parent_plug_id=>wwv_flow_imp.id(76945114920856659078)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'This example demonstrates the declarative definition of thresholds on a Status Meter Gauge, using the following series-level Threshold attributes:<p/> ',
'<strong>Values</strong> - set to a comma-delimited string, <strong>4,12,20</strong> - Note that this attribute supports substitutions of application and page items, as well as columns referenced in the chart SQL query..<br/>',
'<strong>Colors</strong> - set to <strong>#FF0000,#FFFF00,#008000</strong>.  As with the Values, this attributes supports substitutions.<br/>',
'<strong>Display</strong> - set to <strong>On Indicator</strong>, to display the current threshold, defined using the Threshold Values attribute, on the indicator of the chart.'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(76945115180780659081)
,p_plug_name=>'Thresholds - Current Threshold Only'
,p_parent_plug_id=>wwv_flow_imp.id(76945112664710659056)
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>140
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(76945115290462659082)
,p_region_id=>wwv_flow_imp.id(76945115180780659081)
,p_chart_type=>'dial'
,p_width=>'300'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_text_type=>'number'
,p_value_position=>'auto'
,p_value_format_type=>'decimal'
,p_value_decimal_places=>0
,p_value_format_scaling=>'none'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
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
,p_gauge_orientation=>'horizontal'
,p_gauge_indicator_size=>.9
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(76945115442161659083)
,p_chart_id=>wwv_flow_imp.id(76945115290462659082)
,p_seq=>10
,p_name=>'Commission'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT sum(case when COMM is null ',
'                     then 0 ',
'                when COMM = 0 ',
'                     then 0 ',
'                else 1 ',
'                end) value, ',
'       count(*) max_value,',
'       ''Sales'' as my_label ',
'FROM   eba_demo_chart_emp'))
,p_items_value_column_name=>'VALUE'
,p_items_max_value=>'MAX_VALUE'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_values=>'4,12,20'
,p_threshold_colors=>'#FF0000,#FFFF00,#008000'
,p_threshold_display=>'currentOnly'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(77015286819959474076)
,p_plug_name=>'Thresholds - Current Threshold Only Information'
,p_parent_plug_id=>wwv_flow_imp.id(76945115180780659081)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'This example demonstrates the declarative definition of thresholds on a Status Meter Gauge, using the following series-level Threshold attributes:<p/> ',
'<strong>Values</strong> - set to a comma-delimited string, <strong>4,12,20</strong> - Note that this attribute supports substitutions of application and page items, as well as columns referenced in the chart SQL query..<br/>',
'<strong>Colors</strong> - set to <strong>#FF0000,#FFFF00,#008000</strong>.  As with the Values, this attributes supports substitutions.<br/>',
'<strong>Display</strong> - set to <strong>Current Threshold Only</strong>, to display the current threshold, defined using the Threshold Values attribute, on the plot area of the chart.'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(76951496291326444348)
,p_plug_name=>'Value Position'
,p_parent_plug_id=>wwv_flow_imp.id(76945112664710659056)
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>70
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(76951496436095444349)
,p_region_id=>wwv_flow_imp.id(76951496291326444348)
,p_chart_type=>'dial'
,p_width=>'300'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_text_type=>'number'
,p_value_position=>'center'
,p_value_format_type=>'decimal'
,p_value_decimal_places=>0
,p_value_format_scaling=>'none'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
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
,p_gauge_orientation=>'horizontal'
,p_gauge_indicator_size=>1
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(76951496494840444350)
,p_chart_id=>wwv_flow_imp.id(76951496436095444349)
,p_seq=>10
,p_name=>'Commission'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT sum(case when COMM is null ',
'                     then 0 ',
'                when COMM = 0 ',
'                     then 0 ',
'                else 1 ',
'                end) value, ',
'       count(*) max_value,',
'       ''Sales'' as my_label ',
'FROM   eba_demo_chart_emp'))
,p_items_value_column_name=>'VALUE'
,p_items_max_value=>'MAX_VALUE'
,p_color=>'#FFFF00'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'PERCENT'
,p_gauge_plot_area_color=>'GRAY'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(77015286119613474069)
,p_plug_name=>'Value Information'
,p_parent_plug_id=>wwv_flow_imp.id(76951496291326444348)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>'This example demonstrates the setting of the chart-level Value <strong>Position</strong> attribute, placing the value in the center of the gauge.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(76945115512653659084)
,p_plug_name=>'Vertical'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_header=>'<strong>For more information on the Status Meter Gauge chart settings, refer to the Oracle JET Cookbook <a href="https://www.oracle.com/webfolder/technetwork/jet/jetCookbook.html?component=statusMeterGauge&demo=statusMeterGaugeVertical" target="_blan'
||'k">Status Meter Gauge - Vertical</a> example.</strong>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(76945115564447659085)
,p_plug_name=>'Label and Value'
,p_parent_plug_id=>wwv_flow_imp.id(76945115512653659084)
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>60
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(76945115720288659086)
,p_region_id=>wwv_flow_imp.id(76945115564447659085)
,p_chart_type=>'dial'
,p_width=>'21'
,p_height=>'200'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_text_type=>'number'
,p_value_position=>'auto'
,p_value_format_type=>'decimal'
,p_value_decimal_places=>0
,p_value_format_scaling=>'none'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
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
,p_gauge_orientation=>'vertical'
,p_gauge_indicator_size=>1
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(76945115819426659087)
,p_chart_id=>wwv_flow_imp.id(76945115720288659086)
,p_seq=>10
,p_name=>'Commission'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT sum(case when COMM is null ',
'                     then 0 ',
'                when COMM = 0 ',
'                     then 0 ',
'                else 1 ',
'                end) value, ',
'       count(*) max_value,',
'       ''Sales'' as my_label ',
'FROM   eba_demo_chart_emp'))
,p_items_value_column_name=>'VALUE'
,p_items_max_value=>'MAX_VALUE'
,p_items_label_column_name=>'MY_LABEL'
,p_color=>'#FFFF00'
,p_items_label_rendered=>true
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(76945115857990659088)
,p_plug_name=>'Number Formatting'
,p_parent_plug_id=>wwv_flow_imp.id(76945115512653659084)
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>80
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(76945115994693659089)
,p_region_id=>wwv_flow_imp.id(76945115857990659088)
,p_chart_type=>'dial'
,p_width=>'30'
,p_height=>'200'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_text_type=>'number'
,p_value_position=>'auto'
,p_value_format_type=>'currency'
,p_value_decimal_places=>2
,p_value_format_scaling=>'none'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
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
,p_gauge_orientation=>'vertical'
,p_gauge_indicator_size=>.8
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(76945116077887659090)
,p_chart_id=>wwv_flow_imp.id(76945115994693659089)
,p_seq=>10
,p_name=>'Commission'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT sum(case when COMM is null ',
'                     then 0 ',
'                when COMM = 0 ',
'                     then 0 ',
'                else 1 ',
'                end) value, ',
'       count(*) max_value ',
'FROM   eba_demo_chart_emp'))
,p_items_value_column_name=>'VALUE'
,p_items_max_value=>'MAX_VALUE'
,p_color=>'#FA0F0F'
,p_items_label_rendered=>true
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(76951496580876444351)
,p_plug_name=>'Value Position'
,p_parent_plug_id=>wwv_flow_imp.id(76945115512653659084)
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>70
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(76951496723536444352)
,p_region_id=>wwv_flow_imp.id(76951496580876444351)
,p_chart_type=>'dial'
,p_width=>'21'
,p_height=>'200'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_text_type=>'number'
,p_value_position=>'outsideIndicatorEdge'
,p_value_format_type=>'decimal'
,p_value_decimal_places=>0
,p_value_format_scaling=>'none'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
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
,p_gauge_orientation=>'vertical'
,p_gauge_indicator_size=>1
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(76951496833304444353)
,p_chart_id=>wwv_flow_imp.id(76951496723536444352)
,p_seq=>10
,p_name=>'Commission'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT sum(case when COMM is null ',
'                     then 0 ',
'                when COMM = 0 ',
'                     then 0 ',
'                else 1 ',
'                end) value, ',
'       count(*) max_value,',
'       ''Sales'' as my_label ',
'FROM   eba_demo_chart_emp'))
,p_items_value_column_name=>'VALUE'
,p_items_max_value=>'MAX_VALUE'
,p_color=>'#FFFF00'
,p_items_label_rendered=>true
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(76951545529162606241)
,p_plug_name=>'Plot Area and Indicator Size'
,p_parent_plug_id=>wwv_flow_imp.id(76945115512653659084)
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>90
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(76951545586132606242)
,p_region_id=>wwv_flow_imp.id(76951545529162606241)
,p_chart_type=>'dial'
,p_width=>'21'
,p_height=>'200'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_text_type=>'number'
,p_value_position=>'auto'
,p_value_format_type=>'decimal'
,p_value_decimal_places=>0
,p_value_format_scaling=>'none'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
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
,p_gauge_orientation=>'vertical'
,p_gauge_indicator_size=>.4
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>false
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(76951545663000606243)
,p_chart_id=>wwv_flow_imp.id(76951545586132606242)
,p_seq=>10
,p_name=>'Commission'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT sum(case when COMM is null ',
'                     then 0 ',
'                when COMM = 0 ',
'                     then 0 ',
'                else 1 ',
'                end) value, ',
'       count(*) max_value,',
'       ''Sales'' as my_label ',
'FROM   eba_demo_chart_emp'))
,p_items_value_column_name=>'VALUE'
,p_items_max_value=>'MAX_VALUE'
,p_items_label_rendered=>true
,p_items_label_display_as=>'PERCENT'
,p_gauge_plot_area_color=>'#4BB521'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(76951545751358606244)
,p_plug_name=>'Percent Formatting'
,p_parent_plug_id=>wwv_flow_imp.id(76945115512653659084)
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>100
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(76951545900964606245)
,p_region_id=>wwv_flow_imp.id(76951545751358606244)
,p_chart_type=>'dial'
,p_width=>'21'
,p_height=>'200'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_text_type=>'percent'
,p_value_position=>'auto'
,p_value_format_scaling=>'none'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
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
,p_gauge_orientation=>'vertical'
,p_gauge_indicator_size=>.5
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(76951545980878606246)
,p_chart_id=>wwv_flow_imp.id(76951545900964606245)
,p_seq=>10
,p_name=>'Commission'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT sum(case when COMM is null ',
'                     then 0 ',
'                when COMM = 0 ',
'                     then 0 ',
'                else 1 ',
'                end) value, ',
'       count(*) max_value ',
'FROM   eba_demo_chart_emp'))
,p_items_value_column_name=>'VALUE'
,p_items_max_value=>'MAX_VALUE'
,p_items_label_rendered=>true
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(76951546077362606247)
,p_plug_name=>'Indicator Size'
,p_parent_plug_id=>wwv_flow_imp.id(76945115512653659084)
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>110
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(76951546182954606248)
,p_region_id=>wwv_flow_imp.id(76951546077362606247)
,p_chart_type=>'dial'
,p_width=>'21'
,p_height=>'200'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_text_type=>'number'
,p_value_position=>'auto'
,p_value_format_type=>'decimal'
,p_value_decimal_places=>0
,p_value_format_scaling=>'none'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
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
,p_gauge_orientation=>'vertical'
,p_gauge_indicator_size=>10
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(76951546267904606249)
,p_chart_id=>wwv_flow_imp.id(76951546182954606248)
,p_seq=>10
,p_name=>'Commission'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT sum(case when COMM is null ',
'                     then 0 ',
'                when COMM = 0 ',
'                     then 0 ',
'                else 1 ',
'                end) value, ',
'       count(*) max_value,',
'       ''Sales'' as my_label ',
'FROM   eba_demo_chart_emp'))
,p_items_value_column_name=>'VALUE'
,p_items_max_value=>'MAX_VALUE'
,p_items_label_column_name=>'MY_LABEL'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(76951546353187606250)
,p_plug_name=>'Thresholds'
,p_parent_plug_id=>wwv_flow_imp.id(76945115512653659084)
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>120
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(76951546451017606251)
,p_region_id=>wwv_flow_imp.id(76951546353187606250)
,p_chart_type=>'dial'
,p_width=>'21'
,p_height=>'200'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_text_type=>'number'
,p_value_position=>'auto'
,p_value_format_type=>'decimal'
,p_value_decimal_places=>0
,p_value_format_scaling=>'none'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
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
,p_gauge_orientation=>'vertical'
,p_gauge_indicator_size=>.9
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(76951546577097606252)
,p_chart_id=>wwv_flow_imp.id(76951546451017606251)
,p_seq=>10
,p_name=>'Commission'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT sum(case when COMM is null ',
'                     then 0 ',
'                when COMM = 0 ',
'                     then 0 ',
'                else 1 ',
'                end) value, ',
'       count(*) max_value,',
'       ''Sales'' as my_label ',
'FROM   eba_demo_chart_emp'))
,p_items_value_column_name=>'VALUE'
,p_items_max_value=>'MAX_VALUE'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_values=>'4,12,14'
,p_threshold_colors=>'#FF0000,#FFFF00,#008000'
,p_threshold_display=>'all'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(76951546702885606253)
,p_plug_name=>'Thresholds - On Indicator'
,p_parent_plug_id=>wwv_flow_imp.id(76945115512653659084)
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>130
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(76951546793029606254)
,p_region_id=>wwv_flow_imp.id(76951546702885606253)
,p_chart_type=>'dial'
,p_width=>'21'
,p_height=>'200'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_text_type=>'number'
,p_value_position=>'auto'
,p_value_format_type=>'decimal'
,p_value_decimal_places=>0
,p_value_format_scaling=>'none'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
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
,p_gauge_orientation=>'vertical'
,p_gauge_indicator_size=>.9
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(76951546873419606255)
,p_chart_id=>wwv_flow_imp.id(76951546793029606254)
,p_seq=>10
,p_name=>'Commission'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT sum(case when COMM is null ',
'                     then 0 ',
'                when COMM = 0 ',
'                     then 0 ',
'                else 1 ',
'                end) value, ',
'       count(*) max_value,',
'       ''Sales'' as my_label ',
'FROM   eba_demo_chart_emp'))
,p_items_value_column_name=>'VALUE'
,p_items_max_value=>'MAX_VALUE'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_values=>'4,12,20'
,p_threshold_colors=>'#FF0000,#FFFF00,#008000'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(76951546960984606256)
,p_plug_name=>'Thresholds - Current Threshold Only'
,p_parent_plug_id=>wwv_flow_imp.id(76945115512653659084)
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>140
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(76951547126397606257)
,p_region_id=>wwv_flow_imp.id(76951546960984606256)
,p_chart_type=>'dial'
,p_width=>'21'
,p_height=>'200'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_text_type=>'number'
,p_value_position=>'auto'
,p_value_format_type=>'decimal'
,p_value_decimal_places=>0
,p_value_format_scaling=>'none'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
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
,p_gauge_orientation=>'vertical'
,p_gauge_indicator_size=>.9
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(76951547190144606258)
,p_chart_id=>wwv_flow_imp.id(76951547126397606257)
,p_seq=>10
,p_name=>'Commission'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT sum(case when COMM is null ',
'                     then 0 ',
'                when COMM = 0 ',
'                     then 0 ',
'                else 1 ',
'                end) value, ',
'       count(*) max_value,',
'       ''Sales'' as my_label ',
'FROM   eba_demo_chart_emp'))
,p_items_value_column_name=>'VALUE'
,p_items_max_value=>'MAX_VALUE'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_values=>'4,12,20'
,p_threshold_colors=>'#FF0000,#FFFF00,#008000'
,p_threshold_display=>'currentOnly'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(78042880439441633487)
,p_plug_name=>'Circular'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_header=>'<strong>For more information on the Status Meter Gauge chart settings, refer to the Oracle JET Cookbook <a href="https://www.oracle.com/webfolder/technetwork/jet/jetCookbook.html?component=statusMeterGauge&demo=statusMeterGaugeCircular" target="_blan'
||'k">Status Meter Gauge - Circular</a> example.</strong>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(76945111152020659041)
,p_plug_name=>'Label and Value'
,p_parent_plug_id=>wwv_flow_imp.id(78042880439441633487)
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>50
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(76945111260083659042)
,p_region_id=>wwv_flow_imp.id(76945111152020659041)
,p_chart_type=>'dial'
,p_width=>'90'
,p_height=>'100'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_text_type=>'number'
,p_value_position=>'auto'
,p_value_format_type=>'decimal'
,p_value_decimal_places=>0
,p_value_format_scaling=>'none'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
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
,p_gauge_indicator_size=>1
,p_gauge_inner_radius=>.7
,p_gauge_plot_area=>'on'
,p_gauge_start_angle=>90
,p_gauge_angle_extent=>360
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(76945111413582659043)
,p_chart_id=>wwv_flow_imp.id(76945111260083659042)
,p_seq=>10
,p_name=>'Commission'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT sum(case when COMM is null ',
'                     then 0 ',
'                when COMM = 0 ',
'                     then 0 ',
'                else 1 ',
'                end) value, ',
'       count(*) max_value,',
'       ''Sales'' as my_label ',
'FROM   eba_demo_chart_emp'))
,p_items_value_column_name=>'VALUE'
,p_items_max_value=>'MAX_VALUE'
,p_items_label_column_name=>'MY_LABEL'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(76951497816692444363)
,p_plug_name=>'Label and Value Information'
,p_parent_plug_id=>wwv_flow_imp.id(76945111152020659041)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>'This example demonstrates the setting of the series-level <strong>Label</strong> column mapping, to display a label of ''Sales'' in the center of the circular gauge, alongside the <strong>Value</strong> of the chart.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(76945111542011659044)
,p_plug_name=>'Indicator Size'
,p_parent_plug_id=>wwv_flow_imp.id(78042880439441633487)
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(76945111596309659045)
,p_region_id=>wwv_flow_imp.id(76945111542011659044)
,p_chart_type=>'dial'
,p_width=>'90'
,p_height=>'100'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_text_type=>'percent'
,p_value_position=>'auto'
,p_value_format_scaling=>'none'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
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
,p_gauge_indicator_size=>.5
,p_gauge_inner_radius=>.6
,p_gauge_plot_area=>'on'
,p_gauge_start_angle=>90
,p_gauge_angle_extent=>360
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(76945111684719659046)
,p_chart_id=>wwv_flow_imp.id(76945111596309659045)
,p_seq=>10
,p_name=>'Commission'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT sum(case when COMM is null ',
'                     then 0 ',
'                when COMM = 0 ',
'                     then 0 ',
'                else 1 ',
'                end) value, ',
'       count(*) max_value ',
'FROM   eba_demo_chart_emp'))
,p_items_value_column_name=>'VALUE'
,p_items_max_value=>'MAX_VALUE'
,p_color=>'#EDBD45'
,p_items_label_rendered=>true
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(76951498519534444370)
,p_plug_name=>'Indicator Size Information'
,p_parent_plug_id=>wwv_flow_imp.id(76945111542011659044)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>'This example demonstrates a variation of the <strong>Indicator Size</strong> attribute, to render a larger indicator on the circular Status Meter Gauge.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(76945111787630659047)
,p_plug_name=>'Number Formatting'
,p_parent_plug_id=>wwv_flow_imp.id(78042880439441633487)
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>70
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(76945111876712659048)
,p_region_id=>wwv_flow_imp.id(76945111787630659047)
,p_chart_type=>'dial'
,p_width=>'90'
,p_height=>'100'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_text_type=>'number'
,p_value_position=>'auto'
,p_value_format_type=>'currency'
,p_value_decimal_places=>2
,p_value_format_scaling=>'none'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
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
,p_gauge_indicator_size=>1
,p_gauge_inner_radius=>.6
,p_gauge_plot_area=>'on'
,p_gauge_start_angle=>90
,p_gauge_angle_extent=>360
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(76945111997260659049)
,p_chart_id=>wwv_flow_imp.id(76945111876712659048)
,p_seq=>10
,p_name=>'Commission'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT sum(case when COMM is null ',
'                     then 0 ',
'                when COMM = 0 ',
'                     then 0 ',
'                else 1 ',
'                end) value, ',
'       count(*) max_value ',
'FROM   eba_demo_chart_emp'))
,p_items_value_column_name=>'VALUE'
,p_items_max_value=>'MAX_VALUE'
,p_items_label_rendered=>true
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(76951498643357444371)
,p_plug_name=>'Number Formatting Information'
,p_parent_plug_id=>wwv_flow_imp.id(76945111787630659047)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'This example demonstrates the formatting of the value as a currency, using the following attributes:<p/> ',
'<strong>Format</strong> - set to Currency<br/>',
'<strong>Decimal Places</strong> - set to 2<br/>',
'<strong>Currency</strong> - left blank, to automatically apply the NLS setting for currency.'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(76945112389456659053)
,p_plug_name=>'Thresholds - Using Custom Tooltip'
,p_parent_plug_id=>wwv_flow_imp.id(78042880439441633487)
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>80
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(76945112535758659054)
,p_region_id=>wwv_flow_imp.id(76945112389456659053)
,p_chart_type=>'dial'
,p_width=>'90'
,p_height=>'100'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_text_type=>'number'
,p_value_position=>'auto'
,p_value_format_type=>'decimal'
,p_value_decimal_places=>0
,p_value_format_scaling=>'none'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
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
,p_gauge_indicator_size=>.5
,p_gauge_inner_radius=>.8
,p_gauge_plot_area=>'on'
,p_gauge_start_angle=>180
,p_gauge_angle_extent=>180
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(76945112583589659055)
,p_chart_id=>wwv_flow_imp.id(76945112535758659054)
,p_seq=>10
,p_name=>'Commission'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select value, ',
'       max_value,',
'       my_label,',
'       ''Value: ''|| value || ''<br/>'' ||''Thresholds: Low: 4, Medium: 8, High: 14'' my_tooltip',
'from ( select sum(case when COMM is null ',
'                       then 0 ',
'                       when COMM = 0 ',
'                       then 0 ',
'                       else 1 ',
'                  end) value, ',
'              count(*) max_value,',
'             ''Sales'' as my_label ',
'         from eba_demo_chart_emp )'))
,p_items_value_column_name=>'VALUE'
,p_items_max_value=>'MAX_VALUE'
,p_items_short_desc_column_name=>'MY_TOOLTIP'
,p_color=>'BLACK'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'PERCENT'
,p_threshold_values=>'4,8,14'
,p_threshold_colors=>'red,yellow,green'
,p_threshold_display=>'all'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(76951498715334444372)
,p_plug_name=>'Thresholds Information'
,p_parent_plug_id=>wwv_flow_imp.id(76945112389456659053)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'This example demonstrates the declarative definition of thresholds on a Status Meter Gauge, using the following series-level Threshold attributes:<p/> ',
'<strong>Values</strong> - set to a comma-delimited string, <strong>4,8,14</strong> - Note that this attribute supports substitutions of application and page items, as well as columns referenced in the chart SQL query..<br/>',
'<strong>Colors</strong> - set to <strong>red,yellow,green</strong>.  As with the Values, this attributes supports substitutions.<br/>',
'<strong>Display</strong> - set to <strong>All</strong>, to display all thresholds, defined in the <strong>Values</strong> attribute, in the plot area of the chart.'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(77352906867957291382)
,p_plug_name=>'Start Angle and Angle Extent'
,p_parent_plug_id=>wwv_flow_imp.id(78042880439441633487)
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody'
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
 p_id=>wwv_flow_imp.id(77352906919371291383)
,p_region_id=>wwv_flow_imp.id(77352906867957291382)
,p_chart_type=>'dial'
,p_width=>'90'
,p_height=>'100'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_text_type=>'percent'
,p_value_position=>'auto'
,p_value_format_type=>'percent'
,p_value_decimal_places=>0
,p_value_format_scaling=>'none'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
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
,p_gauge_indicator_size=>1
,p_gauge_inner_radius=>.7
,p_gauge_plot_area=>'on'
,p_gauge_start_angle=>180
,p_gauge_angle_extent=>180
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(77352907097620291384)
,p_chart_id=>wwv_flow_imp.id(77352906919371291383)
,p_seq=>10
,p_name=>'Commission'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT sum(case when COMM is null ',
'                     then 0 ',
'                when COMM = 0 ',
'                     then 0 ',
'                else 1 ',
'                end) value, ',
'       count(*) max_value,',
'       10 low,',
'       20 high',
'FROM   eba_demo_chart_emp'))
,p_items_value_column_name=>'VALUE'
,p_items_max_value=>'MAX_VALUE'
,p_color=>'#F50000'
,p_items_label_rendered=>true
,p_items_label_position=>'start'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
,p_reference_line_values=>'7,14'
,p_reference_line_colors=>'yellow'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(76996509800186138272)
,p_plug_name=>'Start Angle and Angle Extent Information'
,p_parent_plug_id=>wwv_flow_imp.id(77352906867957291382)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>'This example demonstrates a variation of the <strong>Start Angle</strong> and <strong>Angle Extent</strong> attributes, to render a semi-circular Status Meter Gauge. <strong>Reference Lines</strong> are also declaratively defined at series-level, to '
||'identify value ranges on the chart.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(78042880475548633488)
,p_plug_name=>'Inner Radius'
,p_parent_plug_id=>wwv_flow_imp.id(78042880439441633487)
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(78042880636645633489)
,p_region_id=>wwv_flow_imp.id(78042880475548633488)
,p_chart_type=>'dial'
,p_width=>'90'
,p_height=>'100'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_text_type=>'percent'
,p_value_position=>'auto'
,p_value_format_type=>'percent'
,p_value_decimal_places=>0
,p_value_format_scaling=>'none'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
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
,p_gauge_indicator_size=>.5
,p_gauge_inner_radius=>.9
,p_gauge_plot_area=>'on'
,p_gauge_start_angle=>90
,p_gauge_angle_extent=>360
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(78042880649212633490)
,p_chart_id=>wwv_flow_imp.id(78042880636645633489)
,p_seq=>10
,p_name=>'Commission'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT sum(case when COMM is null ',
'                     then 0 ',
'                when COMM = 0 ',
'                     then 0 ',
'                else 1 ',
'                end) value, ',
'       count(*) max_value ',
'FROM   eba_demo_chart_emp'))
,p_items_value_column_name=>'VALUE'
,p_items_max_value=>'MAX_VALUE'
,p_color=>'#1A3AD9'
,p_items_label_rendered=>true
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(76951497650288444362)
,p_plug_name=>'Inner Radius Information'
,p_parent_plug_id=>wwv_flow_imp.id(78042880475548633488)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>'This example demonstrates a variation of the <strong>Inner Radius</strong> attribute, used to define the distance from the center of the gauge to the innermost edge of the indicator and plot area of a circular Status Meter Gauge.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(79046372058489328217)
,p_plug_name=>'breadcrumbs'
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
 p_id=>wwv_flow_imp.id(79046372339985328220)
,p_plug_name=>'About this page'
,p_icon_css_classes=>'fa-dial-gauge-chart'
,p_region_template_options=>'#DEFAULT#:t-Alert--horizontal:t-Alert--customIcons:t-Alert--info'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>10
,p_plug_source=>'<p>&PRODUCT_NAME. native Status Meter Gauge chart, using Oracle JET Data Visualizations, is showcased on this page. Explore the wide range of chart attributes declaratively available with our native charts, to format and customise the style of your c'
||'harts.</p>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(79046372908476328225)
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
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(79280717821748142482)
,p_computation_sequence=>10
,p_computation_item=>'LAST_VIEW'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'&APP_PAGE_ID.'
);
wwv_flow_imp.component_end;
end;
/
