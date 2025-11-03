prompt --application/pages/page_00013
begin
--   Manifest
--     PAGE: 00013
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
 p_id=>13
,p_tab_set=>'TS1'
,p_name=>'Interactive Report'
,p_alias=>'INTERACTIVE-REPORT'
,p_step_title=>'Interactive Report'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<style>',
'.apexir_WORKSHEET_ICONS {border: none !important; -moz-box-shadow: none !important; -box-shadow: none !important; -webkit-box-shadow: none !important;}',
'.apexir_WORKSHEET_ICONS td {border-bottom: none !important}',
'.apexir_WORKSHEET_ICONS td img {border: 4px solid #CCC; -moz-border-radius: 4px; -webkit-border-radius: 4px;}',
'.apexir_WORKSHEET_CUSTOM td {',
'border-right: none !important;}',
'.reportDetail td.separator { border-top: 1px solid #DDD !important;}',
'</style>'))
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(78220887859655426424)
,p_plug_name=>'Projects'
,p_region_name=>'projects_report'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.id,',
'       p.project,',
'       t.task_name,',
'       t.start_date,',
'       t.end_date,',
'       t.status,',
'       t.assigned_to,',
'       t.cost,',
'       t.budget',
'  from eba_demo_chart_tasks t,',
'       eba_demo_chart_projects p',
' where t.project = p.id',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(78220888065433426425)
,p_name=>'Projects'
,p_max_row_count=>'100000'
,p_max_row_count_message=>'This query returns more than #MAX_ROW_COUNT# rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>'Y'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_detail_view_enabled_yn=>'Y'
,p_detail_view_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<style>',
'table.apexir_WORKSHEET_CUSTOM { border: none !important; -moz-box-shadow: none; box-shadow: none; -webkit-box-shadow: none; }',
'.apexir_WORKSHEET_DATA td {border-bottom: none !important;}',
'table.reportDetail td {',
'	border: none !important;',
'	font: 11px/16px Arial, sans-serif;',
'	}',
'	table.reportDetail td.separator {',
'		background: #CCC;',
'		height: 2px !important;',
'padding: 0;',
'		line-height: 2px !important;',
'overflow: hidden;',
'		}',
'table.reportDetail td h1 {margin: 8px 0 !important}',
'table.reportDetail td img {margin-top: 8px; border: 4px solid #CCC; -moz-border-radius: 4px; -webkit-border-radius: 4px;}',
'</style>',
'<table class="reportDetail">'))
,p_detail_view_for_each_row=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<tr><td colspan="4" class="separator"></td></tr>',
'<tr>',
'<td><strong><u>#PROJECT#</u></strong></td><td><i>#TASK_NAME#</i></td>',
'</tr>',
'<tr><td align="left"><strong>#STATUS_LABEL#:</strong></td><td>#STATUS#</td>',
'</tr>',
'<tr><td align="left"><strong>#ASSIGNED_TO_LABEL#:</strong></td><td>#ASSIGNED_TO#</td>',
'</tr>',
'<tr>',
'<td style="padding-bottom: 0px;"><strong>#START_DATE_LABEL#</strong></td>',
'<td style="padding-bottom: 0px;"><strong>#END_DATE_LABEL#</strong></td>',
'<td style="padding-bottom: 0px;"><strong>#BUDGET_LABEL#</strong></td>',
'<td style="padding-bottom: 0px;"><strong>#COST_LABEL#</strong></td>',
'</tr>',
'<tr>',
'<td style="padding-top: 0px;">#START_DATE#</td>',
'<td style="padding-top: 0px;">#END_DATE#</td>',
'<td style="padding-top: 0px;">#BUDGET#</td>',
'<td style="padding-top: 0px;">#COST#</td>',
'</tr>'))
,p_detail_view_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<tr><td colspan="4" class="separator"></td></tr>',
'</table>'))
,p_owner=>'DPEAKE'
,p_internal_uid=>655030323192259552
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(78220888164040426425)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Selected Project'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(78220888258402426427)
,p_db_column_name=>'PROJECT'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Project'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(78220888364312426427)
,p_db_column_name=>'TASK_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Task Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(78220888459766426427)
,p_db_column_name=>'START_DATE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Start Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(78220888553933426427)
,p_db_column_name=>'END_DATE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'End Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(78220888656245426427)
,p_db_column_name=>'STATUS'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(78220888774343426427)
,p_db_column_name=>'ASSIGNED_TO'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Assigned To'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(78220888850174426427)
,p_db_column_name=>'COST'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Cost'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(79046372980616328226)
,p_db_column_name=>'BUDGET'
,p_display_order=>18
,p_column_identifier=>'I'
,p_column_label=>'Budget'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(78220889273593426427)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'REPORT'
,p_report_alias=>'6550316'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'ID:PROJECT:TASK_NAME:START_DATE:END_DATE:STATUS:ASSIGNED_TO:COST:BUDGET'
,p_sort_column_1=>'START_DATE'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'END_DATE'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'PROJECT'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
,p_sum_columns_on_break=>'COST:BUDGET'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(79066719321371743452)
,p_report_id=>wwv_flow_imp.id(78220889273593426427)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'ID'
,p_operator=>'='
,p_expr=>'1'
,p_condition_sql=>'"ID" = to_number(#APXWS_EXPR#)'
,p_condition_display=>'#APXWS_COL_NAME# = #APXWS_EXPR_NUMBER#  '
,p_enabled=>'Y'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(78220889463297426428)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Budget Review'
,p_report_seq=>10
,p_report_type=>'CHART'
,p_report_alias=>'6550318'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'PROJECT:TASK_NAME:STATUS:COST:BUDGET'
,p_break_on=>'PROJECT'
,p_break_enabled_on=>'PROJECT'
,p_sum_columns_on_break=>'APXWS_CC_001:COST:BUDGET'
,p_chart_type=>'bar'
,p_chart_label_column=>'PROJECT'
,p_chart_label_title=>'Project'
,p_chart_value_column=>'APXWS_CC_001'
,p_chart_aggregate=>'SUM'
,p_chart_value_title=>'Budget v Cost'
,p_chart_sorting=>'LABEL_ASC'
,p_chart_orientation=>'horizontal'
);
wwv_flow_imp_page.create_worksheet_computation(
 p_id=>wwv_flow_imp.id(78220889652225426429)
,p_report_id=>wwv_flow_imp.id(78220889463297426428)
,p_db_column_name=>'APXWS_CC_001'
,p_column_identifier=>'C01'
,p_computation_expr=>'I - H'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_column_type=>'NUMBER'
,p_column_label=>'Budget v Cost'
,p_report_label=>'Budget v Cost'
);
wwv_flow_imp_page.create_worksheet_group_by(
 p_id=>wwv_flow_imp.id(78220889772816426429)
,p_report_id=>wwv_flow_imp.id(78220889463297426428)
,p_group_by_columns=>'STATUS'
,p_function_01=>'SUM'
,p_function_column_01=>'COST'
,p_function_db_column_name_01=>'APXWS_GBFC_01'
,p_function_format_mask_01=>'FML999G999G999G999G990D00'
,p_function_sum_01=>'Y'
,p_function_02=>'SUM'
,p_function_column_02=>'BUDGET'
,p_function_db_column_name_02=>'APXWS_GBFC_02'
,p_function_format_mask_02=>'FML999G999G999G999G990D00'
,p_function_sum_02=>'Y'
,p_function_03=>'SUM'
,p_function_column_03=>'APXWS_CC_001'
,p_function_db_column_name_03=>'APXWS_GBFC_03'
,p_function_format_mask_03=>'FML999G999G999G999G990D00'
,p_function_sum_03=>'Y'
,p_sort_column_01=>'STATUS'
,p_sort_direction_01=>'ASC'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(78220889871862426433)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Control Break'
,p_report_seq=>10
,p_report_type=>'REPORT'
,p_report_alias=>'6550322'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'ID:PROJECT:TASK_NAME:START_DATE:END_DATE:STATUS:ASSIGNED_TO:COST:BUDGET'
,p_sort_column_1=>'START_DATE'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'END_DATE'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'PROJECT'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
,p_break_on=>'PROJECT'
,p_break_enabled_on=>'PROJECT'
,p_sum_columns_on_break=>'COST:BUDGET'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(78220890056366426433)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Highlighted Over Budget'
,p_report_seq=>10
,p_report_type=>'REPORT'
,p_report_alias=>'6550324'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'PROJECT:TASK_NAME:START_DATE:END_DATE:STATUS:ASSIGNED_TO:COST:BUDGET'
,p_sort_column_1=>'START_DATE'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'END_DATE'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'PROJECT'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
,p_sum_columns_on_break=>'COST:BUDGET'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(78220890244320426433)
,p_report_id=>wwv_flow_imp.id(78220890056366426433)
,p_name=>'Over Budget'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'AVAILABLE_BUDGET'
,p_operator=>'<'
,p_expr=>'0'
,p_condition_sql=>' (case when ("AVAILABLE_BUDGET" < to_number(#APXWS_EXPR#)) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# < #APXWS_EXPR_NUMBER#  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#FFFF99'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(78220891147888426436)
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
 p_id=>wwv_flow_imp.id(78220984259813887230)
,p_plug_name=>'About this page'
,p_region_template_options=>'#DEFAULT#:t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--info'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>10
,p_plug_source=>'<p>This interactive report page demonstrates linking from charts.  You can link your chart to an interactive report by first clearing any existing interactive report filters using the "Reset Interactive Report" <strong>RIR</strong> clear cache settin'
||'g in the URL and by passing interactive report column <strong>IR_</strong> filters.  See the chart pages for details on how to construct the links, and view the URL on this page to see the format of the URL.  The drill down from the chart to this rep'
||'ort passes the project ID column.  It could have passed the project name, but passing the numeric ID column is safer.  The report on this page has the report ID column set to hidden, so that it can not be selected as a displayed column, and the label'
||' of the ID column is set to <strong>Selected Project</strong>.  Interactive reports allow filtering on hidden columns to support this exact use case.  The <strong>CS</strong> attribute in the URL is a checksum that limits exposure to URL tampering an'
||'d is automatically computed by the Oracle APEX engine.</p>'
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
 p_id=>wwv_flow_imp.id(78228472044441040381)
,p_plug_name=>'SQL Source'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>30
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.DISPLAY_SOURCE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'projects_report')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(78220890342718426434)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(78220887859655426424)
,p_button_name=>'RESET_DATA'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.:RP,13,RIR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp.component_end;
end;
/
