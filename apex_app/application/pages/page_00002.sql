prompt --application/pages/page_00002
begin
--   Manifest
--     PAGE: 00002
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
 p_id=>2
,p_name=>'Area'
,p_alias=>'AREA'
,p_step_title=>'Area'
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
 p_id=>wwv_flow_imp.id(77151657340067182009)
,p_plug_name=>'Area Chart (Legend JavaScript Code Customization)'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>90
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(77151657470256182010)
,p_region_id=>wwv_flow_imp.id(77151657340067182009)
,p_chart_type=>'area'
,p_width=>'500'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'on'
,p_data_cursor_behavior=>'smooth'
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
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ) {',
'    ',
'    // Setup a callback function which gets called when data is retrieved, to manipulate the series data',
'    options.dataFilter = function( data ) {',
'',
'        // Define a new legend, rather than using the default legend behavior applied to the chart',
'        data.legend = {',
'            sections:[{ items:[] }]',
'        }',
'        ',
'        // Loop through the chart series, to define the new legend',
'        for ( var i = 0; i < data.series.length; i++ ) {',
'        ',
'            // Manually add each series to the legend',
'            // Note: We assume that images exist in Shared Components ''Static Application Files'', with a size of 16x16 pixel for every series entry.',
'            //       The variable ''gAppImages'' is defined in the page attribute ''Function and Global Variable Declaration''',
'            data.legend.sections[ 0 ].items.push( {',
'                text: data.series[ i ].name,',
'                color: data.series[ i ].color,',
'                symbolType: "image",',
'                source: gAppImages + "legend/" + data.series[ i ].name + ".png"',
'            });',
'            ',
'            // Do not automatically include the series in the legend',
'            data.series[ i ].displayInLegend = ''off'';',
'        }  ',
'        return data;',
'    }',
'    return options;',
'}'))
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(77151657565914182011)
,p_chart_id=>wwv_flow_imp.id(77151657470256182010)
,p_seq=>10
,p_name=>'Store'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.product_name, b.quantity, b.customer, a.product_description',
'from eba_demo_chart_products a, eba_demo_chart_orders b',
'where a.product_id = b.product_id',
'and b.customer = ''Store A'''))
,p_items_value_column_name=>'QUANTITY'
,p_items_label_column_name=>'PRODUCT_NAME'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(77151657642426182012)
,p_chart_id=>wwv_flow_imp.id(77151657470256182010)
,p_seq=>20
,p_name=>'Acme'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.product_name, b.quantity, b.customer,a.product_name || '' '' || a.product_description || ''<br/>X: '' ||',
'                    a.list_price || ''<br/>Y: '' || a.product_id "shortDesc", a.product_description',
'from eba_demo_chart_products a, eba_demo_chart_orders b',
'where a.product_id = b.product_id',
'and b.customer = ''Acme Store'''))
,p_items_value_column_name=>'QUANTITY'
,p_items_label_column_name=>'PRODUCT_NAME'
,p_items_short_desc_column_name=>'shortDesc'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(77151657773966182013)
,p_chart_id=>wwv_flow_imp.id(77151657470256182010)
,p_static_id=>'c_series'
,p_seq=>30
,p_name=>'Shop'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.product_name, b.quantity, b.customer, a.product_description',
'from eba_demo_chart_products a, eba_demo_chart_orders b',
'where a.product_id = b.product_id',
'and b.customer = ''Shop C'''))
,p_items_value_column_name=>'QUANTITY'
,p_items_label_column_name=>'PRODUCT_NAME'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(77151657840279182014)
,p_chart_id=>wwv_flow_imp.id(77151657470256182010)
,p_seq=>40
,p_name=>'Deli'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.product_name, b.quantity, b.customer, a.product_description',
'from eba_demo_chart_products a, eba_demo_chart_orders b',
'where a.product_id = b.product_id',
'and b.customer = ''Deli'''))
,p_items_value_column_name=>'QUANTITY'
,p_items_label_column_name=>'PRODUCT_NAME'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(77151658072912182016)
,p_chart_id=>wwv_flow_imp.id(77151657470256182010)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_title=>'Y-Axis Title'
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
 p_id=>wwv_flow_imp.id(77151657937981182015)
,p_chart_id=>wwv_flow_imp.id(77151657470256182010)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_title=>'X-Axis Title'
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
 p_id=>wwv_flow_imp.id(80619275084394709299)
,p_plug_name=>'Area Chart (Legend JavaScript Code Customization) Information'
,p_parent_plug_id=>wwv_flow_imp.id(77151657340067182009)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'This example demonstrates how to customize the icons associated with series entries of the legend on an Area chart data, via JavaScript code customizations.<p/>',
'',
'<strong>JavaScript Code</strong> - Use this chart-level attribute to customize your chart attributes and data.  To customize your chart, a callback function, options.dataFilter, must be defined.  Within that function, apply your customizations to the'
||' data.  Any chart initialization changes, to attributes such as the chart title, type, or orientation, can also be made.  The JavaScript Code used on this example is as follows:<br/>',
'',
'<pre>',
'function( options ) {',
'    ',
'    // Setup a callback function which gets called when data is retrieved, to manipulate the series data',
'    options.dataFilter = function( data ) {',
'',
'        // Define a new legend, rather than using the default legend behavior applied to the chart',
'        data.legend = {',
'            sections:[{ items:[] }]',
'        }',
'        ',
'        // Loop through the chart series, to define the new legend',
'        for ( var i = 0; i < data.series.length; i++ ) {',
'        ',
'            // Manually add each series to the legend',
'            // Note: We assume that images exist in Shared Components ''Static Application Files'', with a size of 16x16 pixel for every series entry.',
'            //       The variable ''gAppImages'' is defined in the page attribute ''Function and Global Variable Declaration''',
'            data.legend.sections[ 0 ].items.push( {',
'                text: data.series[ i ].name,',
'                color: data.series[ i ].color,',
'                symbolType: "image",',
'                source: gAppImages + "legend/" + data.series[ i ].name + ".png"',
'            });',
'            ',
'            // Do not automatically include the series in the legend',
'            data.series[ i ].displayInLegend = ''off'';',
'        }  ',
'        return data;',
'    }',
'    return options;',
'}',
'</pre><p/>',
'',
'<p>',
'For more information on the JET chart legend options, refer to the Oracle JET <a href="&OJCHART_API_URL.#LegendItem" target="_blank">LegendItem symbolType</a> attributes in the ojChart API.',
'</p>',
'<p>',
'For more information on the Area chart style settings, refer to the Oracle JET Cookbook <a href="&JET_COOKBOOK_URL.?component=areaChart&demo=styles#" target="_blank">Area Chart: Styles</a> example.'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(77343410122061810207)
,p_plug_name=>'Area Chart (Line Types)'
,p_region_name=>'area2'
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
 p_id=>wwv_flow_imp.id(77343410704029810212)
,p_region_id=>wwv_flow_imp.id(77343410122061810207)
,p_chart_type=>'area'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withoutRescale'
,p_hover_behavior=>'dim'
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
,p_legend_position=>'end'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(77343410721109810213)
,p_chart_id=>wwv_flow_imp.id(77343410704029810212)
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
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(77343410879981810214)
,p_chart_id=>wwv_flow_imp.id(77343410704029810212)
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
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(77343410967042810215)
,p_chart_id=>wwv_flow_imp.id(77343410704029810212)
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
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(77343411069035810216)
,p_chart_id=>wwv_flow_imp.id(77343410704029810212)
,p_seq=>40
,p_name=>'Deli'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.product_name, b.quantity, b.customer',
'from eba_demo_chart_products a, eba_demo_chart_orders b',
'where a.product_id = b.product_id',
'and customer = ''Deli'''))
,p_items_value_column_name=>'QUANTITY'
,p_items_label_column_name=>'PRODUCT_NAME'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(77343411118113810217)
,p_chart_id=>wwv_flow_imp.id(77343410704029810212)
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
 p_id=>wwv_flow_imp.id(77343411344315810219)
,p_chart_id=>wwv_flow_imp.id(77343410704029810212)
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
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(77343411290301810218)
,p_chart_id=>wwv_flow_imp.id(77343410704029810212)
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
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(77343412547109810231)
,p_plug_name=>'Area Chart (Line Types) Information'
,p_parent_plug_id=>wwv_flow_imp.id(77343410122061810207)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'This example demonstrates various attributes of an Area chart.<p/>',
'',
'<strong>Hide and Show Behavior</strong> - Use this chart-level attribute to support hide and show behavior using the chart legend. The legend uses the <strong>Without Rescale</strong> Hide and Show behavior, allowing a user to hide and unhide a serie'
||'s by clicking the chart legend markers. The chart axes will not rescale, which is useful to remain in context. <p/>',
'<strong>Dynamic Actions</strong> - Through the use of Dynamic actions, use the buttons to the top right of the chart to change the line type of the chart series. Line type specifies the shape of the data point connectors on the chart.<p/>',
'<p>',
'For more information on the Area chart settings, refer to the Oracle JET Cookbook <a href="https://www.oracle.com/webfolder/technetwork/jet/jetCookbook.html?component=areaChart&demo=lineTypes" target="_blank">Area Chart: Line Types</a> example.'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(77352665201187565489)
,p_plug_name=>'Area Chart (Markers)'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:i-h480:t-Region--scrollBody'
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
 p_id=>wwv_flow_imp.id(77352665552174565492)
,p_region_id=>wwv_flow_imp.id(77352665201187565489)
,p_chart_type=>'area'
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
 p_id=>wwv_flow_imp.id(77352666794465565498)
,p_chart_id=>wwv_flow_imp.id(77352665552174565492)
,p_seq=>10
,p_name=>'Budget'
,p_location=>'REGION_SOURCE'
,p_series_name_column_name=>'SERIES'
,p_items_value_column_name=>'VALUE'
,p_group_short_desc_column_name=>'LABEL'
,p_items_label_column_name=>'LABEL'
,p_marker_rendered=>'on'
,p_marker_shape=>'circle'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'none'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(77352666325056565497)
,p_chart_id=>wwv_flow_imp.id(77352665552174565492)
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
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(77352665973422565494)
,p_chart_id=>wwv_flow_imp.id(77352665552174565492)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'none'
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
 p_id=>wwv_flow_imp.id(77352667272732565505)
,p_plug_name=>'About this page'
,p_icon_css_classes=>'fa-area-chart'
,p_region_template_options=>'#DEFAULT#:t-Alert--horizontal:t-Alert--customIcons:t-Alert--info'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>10
,p_plug_source=>'<p>&PRODUCT_NAME. native Area charts, using Oracle JET Data Visualizations, are showcased on this page. Explore the wide range of chart attributes declaratively available with our native charts, to format and customise the style of your charts.</p>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(77352667797810565505)
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
 p_id=>wwv_flow_imp.id(77352669720735565507)
,p_plug_name=>'Area Chart (Y-Axis Value Formatting)'
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
 p_id=>wwv_flow_imp.id(77352670212300565508)
,p_region_id=>wwv_flow_imp.id(77352669720735565507)
,p_chart_type=>'combo'
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
 p_id=>wwv_flow_imp.id(77352671415097565509)
,p_chart_id=>wwv_flow_imp.id(77352670212300565508)
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
 p_id=>wwv_flow_imp.id(77352908112544291394)
,p_chart_id=>wwv_flow_imp.id(77352670212300565508)
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
,p_line_style=>'solid'
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
 p_id=>wwv_flow_imp.id(77352671004488565509)
,p_chart_id=>wwv_flow_imp.id(77352670212300565508)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_title=>'Y Axis Title'
,p_format_type=>'decimal'
,p_format_scaling=>'thousand'
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
 p_id=>wwv_flow_imp.id(77352670583858565509)
,p_chart_id=>wwv_flow_imp.id(77352670212300565508)
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
 p_id=>wwv_flow_imp.id(77352671876048565511)
,p_plug_name=>'Area Chart (Stacked)'
,p_region_name=>'area1'
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
 p_id=>wwv_flow_imp.id(77352672187449565511)
,p_region_id=>wwv_flow_imp.id(77352671876048565511)
,p_chart_type=>'area'
,p_width=>'500'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'on'
,p_data_cursor_behavior=>'smooth'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'none'
,p_stack=>'on'
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
,p_legend_position=>'top'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(77343410072554810206)
,p_chart_id=>wwv_flow_imp.id(77352672187449565511)
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
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(77352673814443565513)
,p_chart_id=>wwv_flow_imp.id(77352672187449565511)
,p_seq=>20
,p_name=>'Store A'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.product_name, b.quantity, b.customer, a.product_description',
'from eba_demo_chart_products a, eba_demo_chart_orders b',
'where a.product_id = b.product_id',
'and b.customer = ''Store A'''))
,p_items_value_column_name=>'QUANTITY'
,p_items_label_column_name=>'PRODUCT_NAME'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(77352674131602565513)
,p_chart_id=>wwv_flow_imp.id(77352672187449565511)
,p_seq=>30
,p_name=>'Acme Store'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.product_name, b.quantity, b.customer,a.product_name || '' '' || a.product_description || ''<br/>X: '' ||',
'                    a.list_price || ''<br/>Y: '' || a.product_id "shortDesc", a.product_description',
'from eba_demo_chart_products a, eba_demo_chart_orders b',
'where a.product_id = b.product_id',
'and b.customer = ''Acme Store'''))
,p_items_value_column_name=>'QUANTITY'
,p_items_label_column_name=>'PRODUCT_NAME'
,p_items_short_desc_column_name=>'shortDesc'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(77352674540729565514)
,p_chart_id=>wwv_flow_imp.id(77352672187449565511)
,p_static_id=>'c_series'
,p_seq=>40
,p_name=>'Shop C'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.product_name, b.quantity, b.customer, a.product_description',
'from eba_demo_chart_products a, eba_demo_chart_orders b',
'where a.product_id = b.product_id',
'and b.customer = ''Shop C'''))
,p_items_value_column_name=>'QUANTITY'
,p_items_label_column_name=>'PRODUCT_NAME'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(77462679816480605729)
,p_chart_id=>wwv_flow_imp.id(77352672187449565511)
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
 p_id=>wwv_flow_imp.id(77462679886046605730)
,p_chart_id=>wwv_flow_imp.id(77352672187449565511)
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
 p_id=>wwv_flow_imp.id(77352837527994561638)
,p_plug_name=>' Area Chart (Stacked) Information'
,p_parent_plug_id=>wwv_flow_imp.id(77352671876048565511)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'This example demonstrates various attributes of an Area chart.<p/>',
'',
'<strong>Hide and Show Behavior</strong> - Use this chart-level attribute to support hide and show behavior using the chart legend. The legend uses the <strong>With Rescale</strong> Hide and Show behavior, allowing a user to hide and unhide a series b'
||'y clicking the chart legend markers. This allows the user to focus on specific series that are interesting to them. The chart axes will rescale as the minimum and maximum values of the visible data increase or decrease. This can be useful for series '
||'with largely varying values.<p/>',
'<strong>Sort Order</strong> - Use this new chart-level attribute to set the sort order of the chart. In this example, the attribute is set to <strong>Label - Descending</strong>, which orders the x-axis labels in descending order.<p/>',
'<strong>Dynamic Actions</strong> - Through the use of Dynamic actions, use the Horizontal/Vertical buttons to the top left of the chart to change the orientiation of the data items on the charts, and the Stack/Unstack buttons to the top right of the '
||'chart to change the rendering style of the data items. When multiple series are shown, stacking is recommended to prevent values from being obscured.<p/>',
'<p>',
'For more information on the Area chart settings, refer to the Oracle JET Cookbook <a href="https://www.oracle.com/webfolder/technetwork/jet/jetCookbook.html?component=areaChart&demo=default" target="_blank">Area Chart: Basic</a> and <a href="https://'
||'www.oracle.com/webfolder/technetwork/jet/jetCookbook.html?component=areaChart&demo=hideShow" target="_blank">Area Chart: Hide & Show</a> examples.',
'',
''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(77594194255808401908)
,p_plug_name=>'Area Chart (Color JavaScript Code Customization)'
,p_region_name=>'area_js'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(77594194800642401913)
,p_region_id=>wwv_flow_imp.id(77594194255808401908)
,p_chart_type=>'area'
,p_width=>'500'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'on'
,p_data_cursor_behavior=>'smooth'
,p_hide_and_show_behavior=>'withRescale'
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
,p_legend_position=>'top'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ) {',
'',
'    // Setup a callback function which gets called when data is retrieved, to manipulate the series data',
'    options.dataFilter = function( data ) {',
'        ',
'        data.series[ 0 ].color = "#309fdb";',
'        data.series[ 0 ].borderColor = "black";',
'        data.series[ 0 ].markerDisplayed = "on";',
'        data.series[ 0 ].markerShape = "plus";',
'        data.series[ 0 ].markerColor = "#309fdb";',
'        data.series[ 0 ].markerSize = 8;',
'        data.series[ 0 ].pattern = "smallChecker";',
'        return data;',
'    };',
'',
'    return options;',
'}'))
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(77594194881645401914)
,p_chart_id=>wwv_flow_imp.id(77594194800642401913)
,p_seq=>10
,p_name=>'Store A'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.product_name, b.quantity, b.customer, a.product_description',
'from eba_demo_chart_products a, eba_demo_chart_orders b',
'where a.product_id = b.product_id',
'and b.customer = ''Store A'''))
,p_items_value_column_name=>'QUANTITY'
,p_items_label_column_name=>'PRODUCT_NAME'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(77594194939355401915)
,p_chart_id=>wwv_flow_imp.id(77594194800642401913)
,p_seq=>20
,p_name=>'Acme Store'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.product_name, b.quantity, b.customer,a.product_name || '' '' || a.product_description || ''<br/>X: '' ||',
'                    a.list_price || ''<br/>Y: '' || a.product_id "shortDesc", a.product_description',
'from eba_demo_chart_products a, eba_demo_chart_orders b',
'where a.product_id = b.product_id',
'and b.customer = ''Acme Store'''))
,p_items_value_column_name=>'QUANTITY'
,p_items_label_column_name=>'PRODUCT_NAME'
,p_items_short_desc_column_name=>'shortDesc'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(77594195068197401916)
,p_chart_id=>wwv_flow_imp.id(77594194800642401913)
,p_static_id=>'c_series'
,p_seq=>30
,p_name=>'Shop C'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.product_name, b.quantity, b.customer, a.product_description',
'from eba_demo_chart_products a, eba_demo_chart_orders b',
'where a.product_id = b.product_id',
'and b.customer = ''Shop C'''))
,p_items_value_column_name=>'QUANTITY'
,p_items_label_column_name=>'PRODUCT_NAME'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(77594195136775401917)
,p_chart_id=>wwv_flow_imp.id(77594194800642401913)
,p_seq=>40
,p_name=>'Deli'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.product_name, b.quantity, b.customer, a.product_description',
'from eba_demo_chart_products a, eba_demo_chart_orders b',
'where a.product_id = b.product_id',
'and b.customer = ''Deli'''))
,p_items_value_column_name=>'QUANTITY'
,p_items_label_column_name=>'PRODUCT_NAME'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(77594195284440401918)
,p_chart_id=>wwv_flow_imp.id(77594194800642401913)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_title=>'X-Axis Title'
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
 p_id=>wwv_flow_imp.id(77594195369348401919)
,p_chart_id=>wwv_flow_imp.id(77594194800642401913)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_title=>'Y-Axis Title'
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
 p_id=>wwv_flow_imp.id(77594195502216401920)
,p_plug_name=>'Area Chart (Color JavaScript Code Customization) Information'
,p_parent_plug_id=>wwv_flow_imp.id(77594194255808401908)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'This example demonstrates how to customize the series style of an Area chart data, via JavaScript code customizations.<p/>',
'',
'<strong>JavaScript Code</strong> - Use this chart-level attribute to customize your chart attributes and data.  To customize your chart, a callback function, options.dataFilter, must be defined.  Within that function, apply your customizations to the'
||' data.  Any chart initialization changes, to attributes such as the chart title, type, or orientation, can also be made.  The JavaScript Code should follow a template similar to the following:<br/>',
'',
'<pre>',
'function( options ) {',
'',
'    // Setup a callback function which gets called when data is retrieved, to manipulate the series data',
'    options.dataFilter = function( data ) {',
'        ',
'        data.series[ 0 ].color = "#ED6647";',
'        data.series[ 0 ].borderColor = "#0F3248";',
'        data.series[ 0 ].markerDisplayed = "on";',
'        data.series[ 0 ].markerShape = "plus";',
'        data.series[ 0 ].markerColor = "red";',
'        data.series[ 0 ].markerSize = 8;',
'        data.series[ 0 ].pattern = "smallChecker";',
'        return data;',
'    };',
'',
'    return options;',
'}',
'</pre><p/>',
'',
'<p>',
'For more information on the JET chart options, refer to the Oracle JET <a href="&OJCHART_API_URL." target="_blank">ojChart API</a>.',
'</p>',
'<p>',
'For more information on the Area chart style settings, refer to the Oracle JET Cookbook <a href="&JET_COOKBOOK_URL.?component=areaChart&demo=styles#" target="_blank">Area Chart: Styles</a> example.'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(77716996950793467904)
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
 p_id=>wwv_flow_imp.id(91479996022495233110)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>100
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_log_id       NUMBER;',
'    l_status       VARCHAR2(50);',
'    l_msg          VARCHAR2(4000);',
'    l_failed_count NUMBER;',
'BEGIN',
'    -- Get most recent run log for this automation',
'    SELECT log_id, status, message',
'      INTO l_log_id, l_status, l_msg',
'      FROM apex_automation_log',
'     WHERE automation_static_id = :APP_AUTOMATION_STATIC_ID',
'     ORDER BY created_on DESC',
'     FETCH FIRST 1 ROWS ONLY;',
'',
'    -- Check for failed status',
'    IF l_status = ''FAILED'' THEN',
'        -- Optional: get count of failed actions for details',
'        SELECT COUNT(*) INTO l_failed_count',
'          FROM apex_automation_action_log',
'         WHERE log_id = l_log_id',
'           AND status = ''FAILED'';',
'',
'        -- Send an email to administrator',
'        apex_mail.send(',
'            p_to       => ''admin@example.com'',',
'            p_from     => ''noreply@example.com'',',
unistr('            p_subj     => ''\26A0\FE0F APEX Automation Failed: '' || :APP_AUTOMATION_NAME,'),
'            p_body     => ''Automation "'' || :APP_AUTOMATION_NAME || ''" failed.'' || CHR(10) ||',
'                          ''Failure count: '' || l_failed_count || CHR(10) ||',
'                          ''Message: '' || l_msg || CHR(10) ||',
'                          ''Run time: '' || TO_CHAR(SYSDATE, ''YYYY-MM-DD HH24:MI:SS'')',
'        );',
'',
'        apex_mail.push_queue; -- immediately push mail to send',
'    END IF;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        NULL; -- Avoid secondary failure blocking automation log',
'END;'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(77343410226864810208)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(77343410122061810207)
,p_button_name=>'Straight'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--pillStart'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Straight'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(77352674936476565514)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(77352671876048565511)
,p_button_name=>'Stack'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--pillStart'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Stack'
,p_button_position=>'NEXT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(77343410349059810209)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(77343410122061810207)
,p_button_name=>'Curved'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--pill'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Curved'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(77352675387353565523)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(77352671876048565511)
,p_button_name=>'Unstack'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--pillEnd'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Unstack'
,p_button_position=>'NEXT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(77343410426683810210)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(77343410122061810207)
,p_button_name=>'Stepped'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--pill'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Stepped'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(77343412275718810228)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(77343410122061810207)
,p_button_name=>'Segmented'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--pill'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Centered Segmented'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(77343410588582810211)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(77343410122061810207)
,p_button_name=>'None'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--pillEnd'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'None'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(77352675813530565523)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(77352671876048565511)
,p_button_name=>'Horizontal'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Horizontal'
,p_button_position=>'PREVIOUS'
,p_icon_css_classes=>'fa-bars'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(77352676149125565523)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(77352671876048565511)
,p_button_name=>'Vertical'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--pillEnd'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Vertical'
,p_button_position=>'PREVIOUS'
,p_icon_css_classes=>'fa-area-chart'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(77352677478762565546)
,p_computation_sequence=>10
,p_computation_item=>'LAST_VIEW'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'&APP_PAGE_ID.'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(77352677760655565547)
,p_name=>'Stack Chart'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(77352674936476565514)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77352678301005565552)
,p_event_id=>wwv_flow_imp.id(77352677760655565547)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(77352671876048565511)
,p_attribute_01=>'apex.region("area1").widget().ojChart({stack: ''on''});'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(77352678712186565553)
,p_name=>'Unstack Chart'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(77352675387353565523)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77352679184573565553)
,p_event_id=>wwv_flow_imp.id(77352678712186565553)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(77352671876048565511)
,p_attribute_01=>'apex.region("area1").widget().ojChart({stack: ''off''});'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(77352679530566565553)
,p_name=>'Horizontal Orientation'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(77352675813530565523)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77352680062490565554)
,p_event_id=>wwv_flow_imp.id(77352679530566565553)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(77352671876048565511)
,p_attribute_01=>'apex.region("area1").widget().ojChart({orientation: ''horizontal''});'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(77352680472713565555)
,p_name=>'Vertical Orientation'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(77352676149125565523)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77352681016278565555)
,p_event_id=>wwv_flow_imp.id(77352680472713565555)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(77352671876048565511)
,p_attribute_01=>'apex.region("area1").widget().ojChart({orientation: ''vertical''});'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(77343411478871810220)
,p_name=>'Straight'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(77343410226864810208)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77343411568773810221)
,p_event_id=>wwv_flow_imp.id(77343411478871810220)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(77343410122061810207)
,p_attribute_01=>'apex.region("area2").widget().ojChart({styleDefaults:{lineType:''straight''}});'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(77343411711685810222)
,p_name=>'Curved'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(77343410349059810209)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77343411814338810223)
,p_event_id=>wwv_flow_imp.id(77343411711685810222)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(77343410122061810207)
,p_attribute_01=>'apex.region("area2").widget().ojChart({styleDefaults:{lineType:''curved''}});'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(77343411850419810224)
,p_name=>'Stepped'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(77343410426683810210)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77343411983010810225)
,p_event_id=>wwv_flow_imp.id(77343411850419810224)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(77343410122061810207)
,p_attribute_01=>'apex.region("area2").widget().ojChart({styleDefaults:{lineType:''stepped''}});'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(77343412405511810229)
,p_name=>'Segmented'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(77343412275718810228)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77343412475016810230)
,p_event_id=>wwv_flow_imp.id(77343412405511810229)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(77343410122061810207)
,p_attribute_01=>'apex.region("area2").widget().ojChart({styleDefaults:{lineType:''centeredSegmented''}});'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(77343412069619810226)
,p_name=>'None'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(77343410588582810211)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(77343412153208810227)
,p_event_id=>wwv_flow_imp.id(77343412069619810226)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(77343410122061810207)
,p_attribute_01=>'apex.region("area2").widget().ojChart({styleDefaults:{lineType:''none''}});'
);
wwv_flow_imp.component_end;
end;
/
