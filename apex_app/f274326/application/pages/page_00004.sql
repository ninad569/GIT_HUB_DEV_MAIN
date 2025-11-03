prompt --application/pages/page_00004
begin
--   Manifest
--     PAGE: 00004
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
 p_id=>4
,p_tab_set=>'TS1'
,p_name=>'Pie'
,p_alias=>'PIE'
,p_step_title=>'Pie'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_step_template=>4072355960268175073
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'04'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(77342756037918890082)
,p_plug_name=>'Pie Chart'
,p_region_name=>'pie1'
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
 p_id=>wwv_flow_imp.id(77342756145873890083)
,p_region_id=>wwv_flow_imp.id(77342756037918890082)
,p_chart_type=>'pie'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'none'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
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
,p_pie_other_threshold=>0
,p_pie_selection_effect=>'highlightAndExplode'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(77342756302600890084)
,p_chart_id=>wwv_flow_imp.id(77342756145873890083)
,p_seq=>10
,p_name=>'Tasks'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select b.id,',
'       b.project label,',
'       sum(a.cost) value',
'  from eba_demo_chart_tasks a,',
'       eba_demo_chart_projects b',
' where a.project = b.id',
' group by b.id, b.project',
'order by 3 desc'))
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'LABEL'
,p_threshold_display=>'onIndicator'
,p_link_target=>'f?p=&APP_ID.:47:&SESSION.:IG[tasksRep]_tasks:&DEBUG.:CR,:IG_ID:&ID.'
,p_link_target_type=>'REDIRECT_PAGE'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(77352589693977886759)
,p_plug_name=>'Pie Chart Information'
,p_parent_plug_id=>wwv_flow_imp.id(77342756037918890082)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'This example demonstrates a Pie chart with various animation options.<p/>',
'<strong>Hide and Show Behavior</strong> - Use this chart-level attribute to allow allowing a user to hide and unhide a series by clicking the chart legend markers. Upon hiding/showing a series, the <strong>With Rescale</strong> setting will result in'
||' the pie chart automatically recalculating the percent values displayed on the label to factor in the selection change. Selecting a slice of the pie will highlight and explode the slice.<p/>',
'',
'<strong>Label Display As</strong> - To display the ''Label'' column mapping information in the label on each pie slice, this new series-level attribute is set to <strong>Label</strong>.<p/>',
'',
'<strong>Legend size</strong> - To decrease the amount of space between the pie chart and legend, the legend <strong>size</strong> attribute can be set to a value, in pixels or percent. Click the <strong>Increase Legend Size</strong> or <strong>Decrea'
||'se Legend Size</strong> buttons to trigger a change in the legend size in relation to the chart.  A dynamic action is used to update the region size.  Refer to the <a href="&OJCHART_API_URL.#legend.size" target="_blank">ojChart API guide</a> for more'
||' information on this setting.<p>',
'',
'<strong>Link</strong> - This series-level attribute can be set to define a link on the chart element.  For this example, the new Interactive Grid URL Filtering support is demonstrated here.  When you click on a chart element, the URL will redirect yo'
||'u to page 47 in the application, which contains an Interactive Grid saved report on the EBA_DEMO_CHART_TASKS table.  The report will filter information based upon the project (ID) associated with the selected chart element.  The URL Filtering is achi'
||'eved by defining a link on the chart series, with the following settings:',
'<ul>',
'<li> <strong>Link Type</strong> = Redirect to Page</li>',
'<li> <strong>Target</strong> = Page 47</li> ',
'<li> <strong>Link Builder Target settings:</strong></i> ',
'<ul>',
'<li> <strong>Set Item Name</strong> = IG_ID     - using the <i>IG_</i> syntax to reference a column of the Interactive Grid</i> ',
'<li> <strong>Set Item Value</strong> = &amp;ID.</i> ',
'<li> <strong>Clear/Reset Action</strong> = ''Clear Regions''</li> ',
'<li> <strong>Advanced Request</strong> = IG[<i>tasksRep</i>]_<i>tasks</i>  -  where <i>tasksRep</i> is the region static ID, and <i>tasks</i> is the saved report name.</li> ',
'</ul>',
'</ul>',
'<p/><p/>',
'',
'For more information on the Pie chart settings, refer to the Oracle JET Cookbook <a href="&JET_COOKBOOK_URL.?component=pieChart&demo=hideShow" target="_blank">Pie Chart: Hide & Show</a> and <a href="&JET_COOKBOOK_URL.?component=pieChart&demo=animatio'
||'n" target="_blank">Pie Chart: Animations</a> examples.'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(77342756582265890087)
,p_plug_name=>'Donut Chart v2 (Labels Outside Slice)'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:i-h480:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(77342756657963890088)
,p_region_id=>wwv_flow_imp.id(77342756582265890087)
,p_chart_type=>'donut'
,p_animation_on_display=>'none'
,p_animation_on_data_change=>'none'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'none'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_value_format_scaling=>'auto'
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
,p_legend_title=>'Projects Tasks'
,p_legend_position=>'bottom'
,p_overview_rendered=>'off'
,p_pie_other_threshold=>0
,p_pie_selection_effect=>'highlight'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(77342756769910890089)
,p_chart_id=>wwv_flow_imp.id(77342756657963890088)
,p_seq=>10
,p_name=>'Tasks'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select b.id,',
'       b.project label,',
'       sum(a.cost) value',
'  from eba_demo_chart_tasks a,',
'       eba_demo_chart_projects b',
' where a.project = b.id',
' group by b.id, b.project',
'order by 3 desc'))
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideSlice'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(77342757098093890092)
,p_plug_name=>'Donut Chart (Sorting)'
,p_region_name=>'donut1'
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
 p_id=>wwv_flow_imp.id(77342757137225890093)
,p_region_id=>wwv_flow_imp.id(77342757098093890092)
,p_chart_type=>'donut'
,p_height=>'450'
,p_animation_on_display=>'alphaFade'
,p_animation_on_data_change=>'none'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'none'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_value_format_type=>'decimal'
,p_value_decimal_places=>0
,p_value_format_scaling=>'auto'
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
,p_legend_position=>'top'
,p_overview_rendered=>'off'
,p_pie_other_threshold=>.05
,p_pie_selection_effect=>'highlightAndExplode'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function (options) {',
'    // Set color of ''Other'' slice to pink',
'    $.extend( options.styleDefaults, { otherColor: ''#e85d89'' }) ;',
'    return options;',
'}'))
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(77342757219178890094)
,p_chart_id=>wwv_flow_imp.id(77342757137225890093)
,p_seq=>10
,p_name=>'Tasks'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select b.id,',
'       b.project label,',
'       sum(a.cost) value',
'  from eba_demo_chart_tasks a,',
'       eba_demo_chart_projects b',
' where a.project = b.id',
' group by b.id, b.project',
'order by 3 desc'))
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideSlice'
,p_items_label_display_as=>'COMBO'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(77343409748592810203)
,p_plug_name=>'Donut Chart (Sorting) Information'
,p_parent_plug_id=>wwv_flow_imp.id(77342757098093890092)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'This example demonstrates a Donut chart with sorting options.<p/>',
'<strong>Pie Other Threshold</strong> - Use this chart-level attribute to attribute to aggregate small slices of the chart into an "Other" node. The attribute can be used to specify the smallest slice that will be displayed as a ratio of the total pie'
||' value.<p/>',
'<strong>Label Position</strong> - The series-level attribute is set to Outside Slice, rendering the label on the outside of each slice.<p/>',
'<strong>Label Display As</strong> - The new series-level attribute is set to <strong>Percentage ( Value )</strong>, rendering the label in that format, without the need to use custom JavaScript code to acomplish it.<p/>',
'<strong>Sort Order</strong> - Donut chart slices can be sorted based on the values. The new <strong>Sort Order</strong> chart-level attribute allows you to define the sort order of your chart. Through the use of Dynamic actions, you can allow your en'
||'d users to toggle the sort order. Use the Ascending/Descending buttons to the top right of the chart to change the sorting of the data items on the charts.<p/>',
'<strong>JavaScript Initialization Code</strong> - Use this chart-level attribute to customize the <a href="&OJCHART_API_URL.#styleDefaults.otherColor" target="_blank">otherColor</a> JET attribute, to set the color of the ''Other'' slice of the chart.  '
||'By default, that slice will use the color black. Use the following code snippet to achieve this:<br/>',
'<pre>',
'function (options) {',
'    // Set color of ''Other'' slice to pink',
'    $.extend( options.styleDefaults, { otherColor: ''#e85d89'' }) ;',
'    return options;',
'}',
'</pre>',
'<p/>',
'For more information on the Pie chart sort settings, refer to the Oracle JET Cookbook <a href="&JET_COOKBOOK_URL.?component=pieChart&demo=sorting" target="_blank">Pie Chart: Sorting</a> example.'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(77477632195816120056)
,p_plug_name=>'Pie Chart (Series Colors)'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(77012302030620340999)
,p_plug_name=>'Colors set via SQL Query'
,p_parent_plug_id=>wwv_flow_imp.id(77477632195816120056)
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:i-h480:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(77012302284531341001)
,p_region_id=>wwv_flow_imp.id(77012302030620340999)
,p_chart_type=>'pie'
,p_animation_on_display=>'none'
,p_animation_on_data_change=>'none'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'none'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_value_format_scaling=>'auto'
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
,p_legend_position=>'top'
,p_overview_rendered=>'off'
,p_pie_other_threshold=>0
,p_pie_selection_effect=>'highlightAndExplode'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(77012302347862341002)
,p_chart_id=>wwv_flow_imp.id(77012302284531341001)
,p_seq=>10
,p_name=>'Products'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select product_id, ',
'       product_name, ',
'       list_price,',
'       case product_name',
'           when ''Apples'' then ''green''',
'           when ''Bananas'' then ''yellow''',
'           when ''Grapes'' then ''purple''',
'           when ''Cantaloupe'' then ''orange''',
'           when ''Dates'' then ''#791b19''',
'       end series_colors',
'from eba_demo_chart_products'))
,p_items_value_column_name=>'LIST_PRICE'
,p_items_label_column_name=>'PRODUCT_NAME'
,p_color=>'&SERIES_COLORS.'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideSlice'
,p_items_label_display_as=>'LABEL'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(77012302586238341004)
,p_plug_name=>'Pie Chart (Series Colors) Information'
,p_parent_plug_id=>wwv_flow_imp.id(77477632195816120056)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'These examples demonstrate the various ways to control the colors used for the chart series.<p/><p/>',
'',
'<strong>Colors set via SQL Query</strong> - This example demonstrates a Pie chart with the series colors defined via the SQL query, and the column is then referenced in the Color attribute. Use the chart SQL query to define the colors to be applied t'
||'o each slice of the pie, based on the product_name being displayed. Then set the <strong>Color</strong> attribute, referencing the column alias using &amp;COLUMN_VALUE. syntax, to use a column value for the setting of the pie slice colors.<p/><p/>',
'',
'<strong>Colors set via JS Code</strong> - Use the chart-level advanced attribute <b>JavaScript Code</b> to customize the chart colors at chart initialization. For example,:<p/>',
'<pre>',
'function( options ){',
'    var myColors = ["red","yellow","orange","#791b19", "purple"];',
'    ',
'    // Setup a callback function which gets called when data is retrieved, it allows to manipulate the series',
'    options.dataFilter = function( data ) {',
'        ',
'        for ( i = 0; i < data.series.length; i++ ) {',
'            data.series[ i ].color = myColors [ i ];',
'        }',
'        return data;',
'    };',
'    ',
'    // Set chart initialization options',
'    return options;',
'}',
'</pre>',
''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(77477632343044120057)
,p_plug_name=>'Colors set via JS Code'
,p_parent_plug_id=>wwv_flow_imp.id(77477632195816120056)
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:i-h480:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(77477632352533120058)
,p_region_id=>wwv_flow_imp.id(77477632343044120057)
,p_chart_type=>'pie'
,p_animation_on_display=>'none'
,p_animation_on_data_change=>'none'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'none'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_value_format_scaling=>'auto'
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
,p_legend_position=>'top'
,p_overview_rendered=>'off'
,p_pie_other_threshold=>0
,p_pie_selection_effect=>'highlightAndExplode'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ){',
'    var myColors = ["red","yellow","orange","#791b19", "purple"];',
'    ',
'    // Setup a callback function which gets called when data is retrieved, it allows to manipulate the series',
'    options.dataFilter = function( data ) {',
'        ',
'        for ( i = 0; i < data.series.length; i++ ) {',
'            data.series[ i ].color = myColors [ i ];',
'        }',
'        return data;',
'    };',
'    ',
'    // Set chart initialization options',
'    return options;',
'}'))
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(77477632448033120059)
,p_chart_id=>wwv_flow_imp.id(77477632352533120058)
,p_seq=>10
,p_name=>'Products'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select product_id, ',
'       product_name, ',
'       list_price',
'from eba_demo_chart_products'))
,p_items_value_column_name=>'LIST_PRICE'
,p_items_label_column_name=>'PRODUCT_NAME'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideSlice'
,p_items_label_display_as=>'LABEL'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(77639029596589499918)
,p_plug_name=>'Donut Chart ( New Declarative Label Option )'
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
 p_id=>wwv_flow_imp.id(77639029840021499921)
,p_region_id=>wwv_flow_imp.id(77639029596589499918)
,p_chart_type=>'donut'
,p_height=>'450'
,p_animation_on_display=>'alphaFade'
,p_animation_on_data_change=>'none'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'none'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_value_format_type=>'currency'
,p_value_decimal_places=>0
,p_value_format_scaling=>'auto'
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
,p_legend_position=>'top'
,p_overview_rendered=>'off'
,p_pie_other_threshold=>.05
,p_pie_selection_effect=>'highlight'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(77639029974948499922)
,p_chart_id=>wwv_flow_imp.id(77639029840021499921)
,p_seq=>10
,p_name=>'Tasks'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select b.id,',
'       b.project label,',
'       sum(a.cost) value',
'  from eba_demo_chart_tasks a,',
'       eba_demo_chart_projects b',
' where a.project = b.id',
' group by b.id, b.project',
'order by 3 desc'))
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideSlice'
,p_items_label_display_as=>'ALL'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(77639030038108499923)
,p_plug_name=>'Donut Chart ( New Declarative Label Option ) Information'
,p_parent_plug_id=>wwv_flow_imp.id(77639029596589499918)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'This example demonstrates a Donut chart with labels defined via a new series-level declarative option, <strong>Display As</strong>.<p/>',
'<strong>Display As</strong> - Use this series-level attribute to define the level of detail you wish to display on the labels of your pie and donut chart.  Prior to 18.1, customing the label required the use of JavaScript code.  With 18.1 and above, '
||'just select the option that best suits your requirements, from the following list: <br/>',
'<ul>',
'<li><strong>Label</strong>: the labels will display on the slices of the chart, based on the selected Label column mapping. For example, <strong><i>Bugs</i></strong>.</li>',
'<li><strong>Percentage</strong>: the labels will display as values between 0% and 100%, based on the selected Value column mapping. The value is a percentage of the total values represented on the chart. For example, <strong><i>15%</i></strong>.</li>',
'<li><strong>Value</strong>: the labels will display as numeric values, based on the selected Value column mapping.</li>',
'<li><strong><i>Label - Percentage ( Value )</i></strong> : the labels will display the label, value and percentage information in the following format: label - percentage ( value ). For example, <strong><i>Bugs - 15% ( 18 )</i></strong>.</li>',
'<li><strong>Percentage ( Value )</strong>: the labels will display as numeric values, based on the selected Value column mapping. For example, <strong><i>15% ( 18 )</i></strong>.</li>',
'</ul>',
'<p/>',
'<strong>Label Position</strong> - The series-level attribute is set to Outside Slice, to ensure lengthy labels are visible, and rendered outside the slice of the donut.<p/>',
'For more information on the custom label settings, refer to the Oracle JET Cookbook <a href="https://www.oracle.com/webfolder/technetwork/jet/jetCookbook.html?component=chart&demo=dataLabel" target="_blank">Chart: Data Label Callback</a> example.'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(77716996397182467898)
,p_plug_name=>'Master Detail Chart Links'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>100
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Drill into a slice of the Products pie chart on the left, to display its associated orders in the Orders bar chart on the right. To drill using the mouse, click on the chart slice.  To drill using the keyboard, navigate to the slice and hit Enter.<p/'
||'>',
'For more information on the <a href="&OJCHART_API_URL.#drilling" target="_blank">drilling</a> attribute, refer to the ojChart API.'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(77716995056036467885)
,p_plug_name=>'Products (Master chart)'
,p_parent_plug_id=>wwv_flow_imp.id(77716996397182467898)
,p_region_template_options=>'#DEFAULT#:i-h480:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(77716995195766467886)
,p_region_id=>wwv_flow_imp.id(77716995056036467885)
,p_chart_type=>'pie'
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
,p_value_format_scaling=>'auto'
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
,p_pie_other_threshold=>0
,p_pie_selection_effect=>'explode'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ){',
'    // Add new 3D effect to existing chart style defaults   ',
'    options.styleDefaults = $.extend( options.styleDefaults, {threeDEffect: "on"});',
'    return options;',
'}'))
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(77716995278381467887)
,p_chart_id=>wwv_flow_imp.id(77716995195766467886)
,p_seq=>10
,p_name=>'Products'
,p_data_source_type=>'SQL'
,p_data_source=>'select product_id, product_name, list_price from eba_demo_chart_products'
,p_items_value_column_name=>'LIST_PRICE'
,p_items_label_column_name=>'PRODUCT_NAME'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideSlice'
,p_items_label_display_as=>'LABEL'
,p_threshold_display=>'onIndicator'
,p_link_target=>'javascript:$s(''P4_PRODUCT_ID'',&PRODUCT_ID.);'
,p_link_target_type=>'REDIRECT_URL'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(77716995631067467891)
,p_plug_name=>'Orders (Detail chart)'
,p_parent_plug_id=>wwv_flow_imp.id(77716996397182467898)
,p_region_template_options=>'#DEFAULT#:i-h480:t-Region--scrollBody'
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
 p_id=>wwv_flow_imp.id(77716995727904467892)
,p_region_id=>wwv_flow_imp.id(77716995631067467891)
,p_chart_type=>'bar'
,p_title=>'&P4_PRODUCT_NAME.'
,p_height=>'380'
,p_animation_on_display=>'none'
,p_animation_on_data_change=>'none'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'none'
,p_stack=>'off'
,p_stack_label=>'off'
,p_spark_chart=>'N'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
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
,p_no_data_found_message=>'No product selected from Pie Chart (Master chart)'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(77716995888017467893)
,p_chart_id=>wwv_flow_imp.id(77716995727904467892)
,p_seq=>10
,p_name=>'Order Per Product'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.order_id, a.customer, a.sales_date, a.quantity, a.customer|| ''<br/>Quantity: '' ||a.quantity tooltip',
'  from eba_demo_chart_orders a, eba_demo_chart_products b',
' where a.product_id = :P4_PRODUCT_ID',
'   and a.product_id = b.product_id'))
,p_ajax_items_to_submit=>'P4_PRODUCT_ID'
,p_items_value_column_name=>'QUANTITY'
,p_items_label_column_name=>'ORDER_ID'
,p_items_short_desc_column_name=>'TOOLTIP'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(77716996009782467894)
,p_chart_id=>wwv_flow_imp.id(77716995727904467892)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_title=>'Order ID'
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
 p_id=>wwv_flow_imp.id(77716996070813467895)
,p_chart_id=>wwv_flow_imp.id(77716995727904467892)
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
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(77716996749601467902)
,p_plug_name=>'Master Detail Chart Links Information'
,p_parent_plug_id=>wwv_flow_imp.id(77716996397182467898)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'This example demonstrates a master-detail chart, through the use of the Link Target on the Master chart.<p/>',
'<strong>Link Target</strong> - Use this series-level attribute to define a JavaScript call to set the value of a hidden page item to the currently selected product ID.<p/>',
'<strong>Dynamic Action</strong> - Define a dynamic action, to be triggered upon a change to the hidden page item.  That action will trigger a refresh of the Orders bar chart, to reflect the orders associated with the selected product.<p/>',
'<strong>Page Items To Submit</strong> - Ensure this series-level attribute is set to the name of the hidden page item, to ensure its value is used at the time of processing the chart SQL query.<p/>',
'<strong>JavaScript Code</strong> - Use this chart-level attribute to define JavaScript code, to customise the pie chart attributes at initialization, to render the chart in 3D.  The <a href="&OJCHART_API_URL.#styleDefaults.threeDEffect" target="_blan'
||'k">threeDEffect</a> attribute in the ojChart API should be set, using the following JavaScript code:</br/>',
'<pre>',
'function( options ) {',
'',
'    // Add new 3D effect to existing chart style defaults   ',
'    options.styleDefaults = $.extend( options.styleDefaults, {threeDEffect: "on"});',
'    ',
'    return options;',
'}',
'</pre></p>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(78220992966235002602)
,p_plug_name=>'About this page'
,p_icon_css_classes=>'fa-pie-chart'
,p_region_template_options=>'#DEFAULT#:t-Alert--horizontal:t-Alert--customIcons:t-Alert--info'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>10
,p_plug_source=>'<p>&PRODUCT_NAME. native Pie and Donut charts, using Oracle JET Data Visualizations, are showcased on this page. Pie charts are useful for visualizing parts of a whole, but do not display zero or negative values, and are therefore not recommended for'
||' data sets that may have negative or null data. Explore the wide range of chart attributes declaratively available with our native charts, to format and customise the style of your charts.</p><br/>'
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
 p_id=>wwv_flow_imp.id(79035688941422917288)
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
 p_id=>wwv_flow_imp.id(79493396852044053851)
,p_plug_name=>'Breadcrumbs'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>90
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(85116919603826146773)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(77352907373451291387)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(77342756037918890082)
,p_button_name=>'INCREASE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Increase Legend Size'
,p_button_position=>'BELOW_BOX'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(77488459133669208016)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(77342756037918890082)
,p_button_name=>'DECREASE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Decrease Legend Size'
,p_button_position=>'BELOW_BOX'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(77343408585668810191)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(77342757098093890092)
,p_button_name=>'Descending'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--pill'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Descending'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-sort-numeric-desc'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(77343408348763810189)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(77342757098093890092)
,p_button_name=>'Ascending'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--pillStart'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Ascending'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-sort-numeric-asc'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77716995594891467890)
,p_name=>'P4_PRODUCT_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(77716995056036467885)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(77716996417392467899)
,p_name=>'P4_PRODUCT_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(77716995631067467891)
,p_prompt=>'Product:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(79246983480549959731)
,p_computation_sequence=>10
,p_computation_item=>'LAST_VIEW'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'&APP_PAGE_ID.'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(77343408755506810193)
,p_name=>'Sort Ascending'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(77343408348763810189)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77343408872753810194)
,p_event_id=>wwv_flow_imp.id(77343408755506810193)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(77342756037918890082)
,p_attribute_01=>'apex.region("donut1").widget().ojChart({sorting:''ascending''});'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(77343408979336810195)
,p_name=>'Sort Descending'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(77343408585668810191)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77343409035685810196)
,p_event_id=>wwv_flow_imp.id(77343408979336810195)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(77342756037918890082)
,p_attribute_01=>'apex.region("donut1").widget().ojChart({sorting:''descending''});'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(77343409586145810201)
,p_name=>'Apply Other Threshold'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P4_OTHER'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77343409633694810202)
,p_event_id=>wwv_flow_imp.id(77343409586145810201)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(77342757098093890092)
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var lOther = apex.item(''P4_OTHER'').getValue();',
'',
'var num = 0.3',
'$("#donut1_jet").ojChart({otherThreshold:num});',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(77352907446135291388)
,p_name=>'Increase'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(77352907373451291387)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77352907604480291389)
,p_event_id=>wwv_flow_imp.id(77352907446135291388)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(77342756037918890082)
,p_attribute_01=>'apex.region("pie1").widget().ojChart({legend:{size:''50%''}});'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(77488459311195208017)
,p_name=>'Decrease'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(77488459133669208016)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77488459409384208018)
,p_event_id=>wwv_flow_imp.id(77488459311195208017)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(77342756037918890082)
,p_attribute_01=>'apex.region("pie1").widget().ojChart({legend:{size:''30%''}});'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(77716996146671467896)
,p_name=>'Refresh Orders Chart'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P4_PRODUCT_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77716996310557467897)
,p_event_id=>wwv_flow_imp.id(77716996146671467896)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(77716995631067467891)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(77716996524111467900)
,p_name=>'Set Product Name'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P4_PRODUCT_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77716996619379467901)
,p_event_id=>wwv_flow_imp.id(77716996524111467900)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P4_PRODUCT_NAME'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select product_name from eba_demo_chart_products',
'where product_id = :P4_PRODUCT_ID'))
,p_attribute_07=>'P4_PRODUCT_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp.component_end;
end;
/
