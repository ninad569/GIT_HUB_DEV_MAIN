prompt --application/pages/page_00046
begin
--   Manifest
--     PAGE: 00046
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
 p_id=>46
,p_name=>'Event Drops'
,p_alias=>'EVENT-DROPS'
,p_step_title=>'Event Drops'
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
 p_id=>wwv_flow_imp.id(77597977599737608509)
,p_plug_name=>'Event Drops Chart - Sales'
,p_region_name=>'sales'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:i-h480:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(77177931756121111407)
,p_region_id=>wwv_flow_imp.id(77597977599737608509)
,p_chart_type=>'line'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'none'
,p_stack=>'on'
,p_stack_label=>'off'
,p_spark_chart=>'N'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'delayed'
,p_initial_zooming=>'none'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>false
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'on'
,p_legend_position=>'top'
,p_overview_rendered=>'off'
,p_time_axis_type=>'mixedFrequency'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ) {',
'    ',
'    var yAxisLineRefs    = [],',
'        seriesNamesArray = [];',
'    ',
'    // Setup a callback function which gets called when data is retrieved, it allows to manipulate the series',
'    options.dataFilter = function( data ) {',
'        ',
'        for ( var i = 0; i < data.series.length; i++ ) {',
'            ',
'            for ( var j = 0; j < data.series[ i ].items.length; j++ ) {',
'                // Set series ''value'' to unique index associated with the series e.g. Series 0: value = 0; Series 1: value = 1; etc',
'                data.series[ i ].items[ j ].value = i;',
'            } ',
'            ',
'            // Create reference lines to separate each series',
'            yAxisLineRefs.push({ ',
'                type: ''line'', ',
'                color: ''rgba(196,206,215,1)'', ',
'                value: i + 0.5 ',
'            });',
'           ',
'            // Array of series names, for use in eventNames function',
'            seriesNamesArray.push( data.series[ i ].name );',
'        }',
'',
'        return data;',
'    };',
'    ',
'    this.seriesName = seriesNamesArray;',
'    ',
'    // Function to convert series value with series name - for use in setting yAxis.tickLabel via a ''After Refresh'' Dynamic Action',
'    this.eventNamesFn = { ',
'        format: function( value ) {',
'            return (value < seriesName.length) ? seriesName [ value ] : "";',
'        }',
'    };',
'    ',
'    // Set additional yAxis attributes',
'    $.extend ( options.yAxis, { ',
'        referenceObjects: yAxisLineRefs',
'    } );',
'    ',
'    // Set chart initialization options',
'    return options;',
'}'))
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(77177934105579111408)
,p_chart_id=>wwv_flow_imp.id(77177931756121111407)
,p_seq=>10
,p_name=>'Customer Sales'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select sales_date, ',
'       quantity, ',
'       customer',
'  from eba_demo_chart_orders'))
,p_series_name_column_name=>'CUSTOMER'
,p_items_value_column_name=>'QUANTITY'
,p_items_label_column_name=>'SALES_DATE'
,p_line_style=>'dotted'
,p_line_type=>'none'
,p_marker_rendered=>'on'
,p_marker_shape=>'circle'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_position=>'aboveMarker'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(77177932320531111407)
,p_chart_id=>wwv_flow_imp.id(77177931756121111407)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_title=>'Customers'
,p_title_font_style=>'italic'
,p_title_font_size=>'16'
,p_min=>-.5
,p_max=>5.5
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
 p_id=>wwv_flow_imp.id(77177932892053111407)
,p_chart_id=>wwv_flow_imp.id(77177931756121111407)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_title=>'Date of Sales'
,p_title_font_style=>'italic'
,p_title_font_size=>'16'
,p_format_type=>'date-full'
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
 p_id=>wwv_flow_imp.id(77177933516765111408)
,p_chart_id=>wwv_flow_imp.id(77177931756121111407)
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
 p_id=>wwv_flow_imp.id(77597982378332608543)
,p_plug_name=>'Event Drops Chart - Sales Information'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>30
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'This example demonstrates how to render an Event Drops chart, based upon a declaratively created Line chart.<p/><br/>',
'',
'<strong>Static ID</strong> - set a static ID for the region, <strong>sales</strong> in this example, to be used in a Dynamic Action JavaScript reference.<p/>',
'<strong>Chart Type</strong> - set to <strong>Line</strong>.  Use the declarative options to define a Line chart, as you normally would.<p/>',
'<strong>Line Type</strong> - Set this series-level attribute to <strong>None</strong>, so no lines will be visible for the chart series.<p/>',
'<strong>Marker</strong> - Set the series-level attribute <strong>Show</strong> to <strong>Yes</strong>, and <strong>Shape</strong> to <strong>Circle</strong>, or another shape of your choosing.<p/>',
'<strong>Time Axis Type</strong> - Set this chart-level attribute to <strong>Mixed Frequency</strong><p/>',
'<strong>Major Tick and Minor Tick</strong> - set these axis-level attributes to <strong>Off</strong>, so that no bar are visible on the chart.<p/> ',
'<strong>Source SQL Query</strong> - ',
'',
'<pre></pre>',
'<strong>JavaScript Code</strong> - Use this chart-level attribute to customize your chart attributes and data, in order to customize it to meet the requirements of the Event Drops chart:<br/>',
'',
'<pre>',
'function( options ) {',
'    ',
'    var yAxisLineRefs    = [],',
'        seriesNamesArray = [];',
'    ',
'    // Setup a callback function which gets called when data is retrieved, it allows to manipulate the series',
'    options.dataFilter = function( data ) {',
'        ',
'        for ( var i = 0; i < data.series.length; i++ ) {',
'            ',
'            for ( var j = 0; j < data.series[ i ].items.length; j++ ) {',
'                // Set series ''value'' to unique index associated with the series e.g. Series 0: value = 0; Series 1: value = 1; etc',
'                data.series[ i ].items[ j ].value = i;',
'            } ',
'            ',
'            // Create reference line to separate each series',
'            yAxisLineRefs.push({ ',
'                type: ''line'', ',
'                color: ''rgba(196,206,215,1)'', ',
'                value: i + 0.5 ',
'            });',
'           ',
'            // Array of series names, for use in eventNames function',
'            seriesNamesArray.push( data.series[ i ].name );',
'        }',
'',
'        return data;',
'    };',
'    ',
'    this.seriesName = seriesNamesArray;',
'    ',
'    // Function to convert series value with series name - for use in setting yAxis.tickLabel via a ''After Refresh'' Dynamic Action',
'    this.eventNamesFn = { ',
'        format: function( value ) {',
'            return seriesName [ value ];',
'        }',
'    };',
'    ',
'    // Set additional yAxis attributes',
'    $.extend ( options.yAxis, { ',
'        referenceObjects: yAxisLineRefs ',
'    } );',
'    ',
'    // Set chart initialization options',
'    return options;',
'}',
'</pre><p/>',
'',
'<strong>Dynamic Action</strong> - Define an After Refresh dynamic action, with one True action that will Execute JavaScript Code:<p/>',
'<pre>',
'apex.region(''sales'').widget().ojChart(''option'',''yAxis.tickLabel.converter'', eventNamesFn );',
'</pre>',
'',
'For more information on the Event Drops chart settings, refer to the Oracle JET Cookbook <a href="&JET_COOKBOOK_URL.?component=dataVisualizations&demo=eventDrops" target="_blank">Event Drops</a> example.'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(78477229212749775198)
,p_plug_name=>'About this page'
,p_icon_css_classes=>'fa-scatter-chart'
,p_region_template_options=>'#DEFAULT#:t-Alert--horizontal:t-Alert--customIcons:t-Alert--info'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>10
,p_plug_source=>'<p>&PRODUCT_NAME. native Line charts, using Oracle JET Data Visualizations, can be customized to render as an <a href="https://www.oracle.com/webfolder/technetwork/jet/jetCookbook.html?component=dataVisualizations&demo=eventDrops" target="_blank">Eve'
||'nt Drops</a> chart. Event Drop charts are useful for visualizing event occurrences over a given timeline, across multiple series.  This chart type is recommended for visualizing mixed frequency time data.</p>'
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
 p_id=>wwv_flow_imp.id(77177948253907111453)
,p_computation_sequence=>10
,p_computation_item=>'LAST_VIEW'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'&APP_PAGE_ID.'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(77177950433853111455)
,p_name=>'Bar'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(79666174577449594607)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77177950854938111455)
,p_event_id=>wwv_flow_imp.id(77177950433853111455)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(77597977599737608509)
,p_attribute_01=>'apex.region("lineChart").widget().ojChart({type: ''bar''});'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(76925926865867249052)
,p_name=>'Set Custom y-axis Tick Label Converter'
,p_event_sequence=>50
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(77597977599737608509)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterrefresh'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(76925926980829249053)
,p_event_id=>wwv_flow_imp.id(76925926865867249052)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.region(''sales'').widget().ojChart(''option'',''yAxis.tickLabel.converter'', eventNamesFn );'
);
wwv_flow_imp.component_end;
end;
/
