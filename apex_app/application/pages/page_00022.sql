prompt --application/pages/page_00022
begin
--   Manifest
--     PAGE: 00022
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
 p_id=>22
,p_name=>'Funnel'
,p_alias=>'FUNNEL'
,p_step_title=>'Funnel'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'04'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(77152457835561731606)
,p_plug_name=>'Funnel (3D Effect)'
,p_region_name=>'3DfunnelTarget'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--scrollBody:t-Form--stretchInputs'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_header=>'Render your Funnel chart in 3D by setting the <a href="&OJCHART_API_URL.#styleDefaults.threeDEffect" target="_blank">threeDEffect</a> attribute of the ojChart API. Edit the chart, and view the code snippet in the JavaScript Code attribute.<p/>'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(77152458078591731608)
,p_region_id=>wwv_flow_imp.id(77152457835561731606)
,p_chart_type=>'funnel'
,p_width=>'500'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_value_format_type=>'decimal'
,p_value_decimal_places=>0
,p_value_format_scaling=>'auto'
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
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ){',
'',
'    // Set chart initialization options',
'    options.styleDefaults = {',
'        threeDEffect: "on" ',
'    };',
'    return options;',
'}'))
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(77152458142723731609)
,p_chart_id=>wwv_flow_imp.id(77152458078591731608)
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select b.quantity, b.customer, 100 TARGET_VAL',
'from eba_demo_chart_products a, eba_demo_chart_orders b',
'where a.product_id = b.product_id',
'and a.product_id = 5'))
,p_items_value_column_name=>'QUANTITY'
,p_items_label_column_name=>'CUSTOMER'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(77463073303836916135)
,p_plug_name=>'Funnel (Target Value)'
,p_region_name=>'funnelTarget'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--scrollBody:t-Form--stretchInputs'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_header=>'Drill down to a segment of the chart, to display its associated information above the chart. To drill using a mouse, click on a segment of the chart.  To drill using a keyboard, use the arrow keys to navigate to a segment of the chart, and hit Enter.'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(77463073683391916138)
,p_region_id=>wwv_flow_imp.id(77463073303836916135)
,p_chart_type=>'funnel'
,p_width=>'500'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_value_format_type=>'decimal'
,p_value_decimal_places=>0
,p_value_format_scaling=>'auto'
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
 p_id=>wwv_flow_imp.id(77463074031349916139)
,p_chart_id=>wwv_flow_imp.id(77463073683391916138)
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select b.quantity, b.customer, 100 TARGET_VAL',
'from eba_demo_chart_products a, eba_demo_chart_orders b',
'where a.product_id = b.product_id',
'and a.product_id = 5'))
,p_items_value_column_name=>'QUANTITY'
,p_items_target_value=>'TARGET_VAL'
,p_items_label_column_name=>'CUSTOMER'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
,p_link_target=>'javascript:$s("P22_SERIES",''&CUSTOMER. Sales: $&QUANTITY., Target: $&TARGET_VAL.'');'
,p_link_target_type=>'REDIRECT_URL'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(77463075865157949220)
,p_plug_name=>'Funnel (Target Value) Chart Information'
,p_parent_plug_id=>wwv_flow_imp.id(77463073303836916135)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'This example demonstrates various attributes of a Funnel chart.<p/>',
'',
'<strong>Target Value</strong> - Use the series-level attribute to define a target value for the chart. When target values are set on a data item, the value attribute defines the filled area within the slice and the target value attribute represents t'
||'he value of the whole slice.<p/>',
'<strong>Link Target</strong> - Use the series-level attribute to define a link on the selection of a segment of the chart.  In this example, the link is using JavaScript to set a page item to the value of the currently selected data point.  The link '
||'target is referencing columns in the SQL query using &amp;COLUMN_NAME. syntax.<p/>',
'',
'<p>',
'For more information on the Funnel chart, refer to the Oracle JET Cookbook <a href="https://www.oracle.com/webfolder/technetwork/jet/jetCookbook.html?component=funnelChart&demo=targetValues" target="_blank">Funnel Chart: Target Values</a> and <a href'
||'="https://www.oracle.com/webfolder/technetwork/jet/jetCookbook.html?component=funnelChart&demo=selection" target="_blank">Funnel Chart: Selection</a> examples.'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(77463076511501966760)
,p_plug_name=>'About this page'
,p_icon_css_classes=>'fa-funnel-chart'
,p_region_template_options=>'#DEFAULT#:t-Alert--horizontal:t-Alert--customIcons:t-Alert--info'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>10
,p_plug_source=>'<p>&PRODUCT_NAME. native Funnel charts, using Oracle JET Data Visualizations, are showcased on this page. Funnel charts are useful for viewing data for stages of a process, such as the stages of a sales process. The area of a funnel slice is proporti'
||'onal to its value for the corresponding stage. Use of target values helps display additional context. Explore the wide range of chart attributes declaratively available with our native charts, to format and customise the style of your charts.</p>'
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
 p_id=>wwv_flow_imp.id(77517308989229360621)
,p_plug_name=>'Funnel ( Multi-select Selection Mode)'
,p_region_name=>'funnel'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--scrollBody:t-Form--stretchInputs'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_header=>'Select a segment of the chart, to display its associated information above the chart. Hold the Ctrl key while clicking on multiple items.'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(77517309122479360623)
,p_region_id=>wwv_flow_imp.id(77517308989229360621)
,p_chart_type=>'funnel'
,p_width=>'500'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_value_format_scaling=>'auto'
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
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ) {   ',
'    // Set Selection Mode to Multiple chart elements',
'    options.selectionMode = "multiple";',
'        ',
'    // Initialize the component with the optionChange callback specified',
'    options.optionChange = function( event, ui ) {',
'        if ( ui[ "option" ] === "selection" ) {',
'            var items = " ";',
'            if( ui[''value''] ){',
'                for( var i = 0; i < ui[''value''].length; i++ ){',
'                    if(ui[''value''][i]) {',
'                        items += "    " + ui[''value''][i][''series''] + "<br/>";',
'                    } ',
'                }',
'                $s( "P22_SERIES_2", items );',
'            }  ',
'        }',
'    };',
'    return options;',
'}'))
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(77517309242513360624)
,p_chart_id=>wwv_flow_imp.id(77517309122479360623)
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select b.quantity, b.customer, 100 TARGET_VAL',
'from eba_demo_chart_products a, eba_demo_chart_orders b',
'where a.product_id = b.product_id',
'and a.product_id = 5'))
,p_items_value_column_name=>'QUANTITY'
,p_items_target_value=>'TARGET_VAL'
,p_items_label_column_name=>'CUSTOMER'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(77517309467465360626)
,p_plug_name=>'Funnel (Multi-select Selection Mode) Chart Information'
,p_parent_plug_id=>wwv_flow_imp.id(77517308989229360621)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'This example demonstrates multi-selection of data points on a Funnel chart, using custom JavaScript.<p/>',
'',
'<strong>JavaScript Code</strong> - Use the chart-level attribute to define custom JavaScript, to set the attribute <strong>selectionMode</strong> for the chart. By default, a user can declaratively define links based upon the selection of a data poin'
||'t.  If you wish to apply alternative selection handling on your chart, such as using multi-selection, this must be defined via JavaScript.  You can also define an ''optionChange'' listener on the chart, based upon the click action. In that ''optionChang'
||'e'' listener, define the action you want to occur when a data point selection is detected. In this example, a page item with the label ''Series'' will be updated to display the data point name(s).  The code snippet used is as follows:',
'<pre>',
'function( options ) {   ',
'    // Set Selection Mode to Multiple chart elements',
'    options.selectionMode = "multiple";',
'        ',
'    // Initialize the component with the optionChange callback specified',
'    options.optionChange = function( event, ui ) {',
'        if ( ui[ "option" ] === "selection" ) {',
'            var items = " ";',
'            if( ui[''value''] ){',
'                for( var i = 0; i < ui[''value''].length; i++ ){',
'                    if(ui[''value''][i]) {',
'                        items += "    " + ui[''value''][i][''series''] + "<br/>";',
'                    } ',
'                }',
'                $s( "P22_SERIES_2", items );',
'            }  ',
'        }',
'    };',
'    return options;',
'}',
'</pre>',
'<p/>',
'<p>',
'For more information on the Funnel chart, refer to the Oracle JET Cookbook <a href="https://www.oracle.com/webfolder/technetwork/jet/jetCookbook.html?component=funnelChart&demo=selection" target="_blank">Funnel Chart: Selection</a> example.'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(77517309373892360625)
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
 p_id=>wwv_flow_imp.id(77716997272735467907)
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77488458919094208014)
,p_name=>'P22_SERIES'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(77463073303836916135)
,p_prompt=>'Selected:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77517309059518360622)
,p_name=>'P22_SERIES_2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(77517308989229360621)
,p_prompt=>'Selected:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp.component_end;
end;
/
