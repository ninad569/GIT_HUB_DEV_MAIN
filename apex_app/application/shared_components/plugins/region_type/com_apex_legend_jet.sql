prompt --application/shared_components/plugins/region_type/com_apex_legend_jet
begin
--   Manifest
--     PLUGIN: COM.APEX.LEGEND.JET
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.8'
,p_default_workspace_id=>76915847067537899948
,p_default_application_id=>274326
,p_default_id_offset=>76916220240599916839
,p_default_owner=>'WKSP_WBGAPEXDEV'
);
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(80575485990518842335)
,p_plugin_type=>'REGION TYPE'
,p_name=>'COM.APEX.LEGEND.JET'
,p_display_name=>'JET Legend'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('REGION TYPE','COM.APEX.LEGEND.JET'),'')
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'[require jet]#PLUGIN_FILES#jetLegend.js',
''))
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*',
' * render - function to create placeholder div tag, and initialise the new legend component',
' */',
'function render ( ',
'    p_region                in  apex_plugin.t_region, ',
'    p_plugin                in  apex_plugin.t_plugin,',
'    p_is_printer_friendly   in  boolean ',
') return apex_plugin.t_region_render_result ',
'is',
'begin',
'    -- Add new placeholder div for legend component',
'    sys.htp.p ( ''<div id="'' || apex_escape.html_attribute( p_region.static_id ) || ''_jet"  />'' );',
'  ',
'    -- Initialise the legend',
'    apex_javascript.add_onload_code( ',
'        p_code => ''jet.legend.init('' || apex_escape.js_literal( ''#'' || apex_escape.css_selector( p_region.static_id ||''_jet'' )) || '','' ||',
'                                        apex_escape.js_literal( apex_plugin.get_ajax_identifier ) || '')'' );',
'  ',
'    return null;',
'end render;',
'',
'/*',
' * ajax - function to process SQL query, and output JSON data for legend',
' */',
'function ajax (',
'    p_region    in  apex_plugin.t_region,',
'    p_plugin    in  apex_plugin.t_plugin ',
') return apex_plugin.t_region_ajax_result',
'is',
'  l_column_value_list  apex_plugin_util.t_column_value_list;',
'begin  ',
'',
'  -- Process SQL query',
'  l_column_value_list := apex_plugin_util.get_data (',
'                             p_sql_statement      => p_region.source,',
'                             p_min_columns        => 2,',
'                             p_max_columns        => 3,',
'                             p_component_name     => p_region.name );',
'  ',
'  -- Construct JSON object for legend',
'  apex_json.open_object;',
'',
'  -- Add Attributes',
'  apex_json.write(''orientation'',   p_region.attribute_01);',
'  apex_json.write(''halign'', p_region.attribute_02);',
'  apex_json.write(''valign'', p_region.attribute_03);',
'  apex_json.write(''hideAndShowBehavior'', p_region.attribute_04);',
'  ',
'  -- Populate legend items array with values returned by SQL query',
'  apex_json.open_array(''sections'');',
'  apex_json.open_object;',
'  apex_json.open_array(''items'');',
'  for i in 1 .. l_column_value_list(1).count loop',
'      apex_json.open_object;',
'      apex_json.write( ''text'',  l_column_value_list(1)(i) );',
'      apex_json.write( ''shortDesc'', apex_escape.html_attribute( l_column_value_list(2)(i) ) );',
'      apex_json.close_object;',
'  end loop;',
'  ',
'  apex_json.close_array;',
'  apex_json.close_object;',
'  apex_json.close_array;',
'  apex_json.close_object;',
'  ',
'  return null;',
'end ajax;'))
,p_api_version=>2
,p_render_function=>'render'
,p_ajax_function=>'ajax'
,p_standard_attributes=>'SOURCE_SQL'
,p_substitute_attributes=>true
,p_reference_id=>23378667355681730253
,p_subscribe_plugin_settings=>true
,p_version_identifier=>'5.1.2'
,p_files_version=>22
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(80575486183876842340)
,p_plugin_id=>wwv_flow_imp.id(80575485990518842335)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_static_id=>'attribute_01'
,p_prompt=>'Orientation'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'Horizontal'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(80575486578691842341)
,p_plugin_attribute_id=>wwv_flow_imp.id(80575486183876842340)
,p_display_sequence=>10
,p_display_value=>'Horizontal'
,p_return_value=>'horizintal'
,p_is_quick_pick=>true
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(80575487051027842342)
,p_plugin_attribute_id=>wwv_flow_imp.id(80575486183876842340)
,p_display_sequence=>20
,p_display_value=>'Vertical'
,p_return_value=>'vertical'
,p_is_quick_pick=>true
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(80575487552715842342)
,p_plugin_id=>wwv_flow_imp.id(80575485990518842335)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_static_id=>'attribute_02'
,p_prompt=>'Horizontal Alignment'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'Center'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(80575487930619842342)
,p_plugin_attribute_id=>wwv_flow_imp.id(80575487552715842342)
,p_display_sequence=>10
,p_display_value=>'Center'
,p_return_value=>'center'
,p_is_quick_pick=>true
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(80575488426279842343)
,p_plugin_attribute_id=>wwv_flow_imp.id(80575487552715842342)
,p_display_sequence=>20
,p_display_value=>'End'
,p_return_value=>'end'
,p_is_quick_pick=>true
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(80575488965878842343)
,p_plugin_attribute_id=>wwv_flow_imp.id(80575487552715842342)
,p_display_sequence=>30
,p_display_value=>'Start'
,p_return_value=>'start'
,p_is_quick_pick=>true
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(80575489474619842343)
,p_plugin_id=>wwv_flow_imp.id(80575485990518842335)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_static_id=>'attribute_03'
,p_prompt=>'Vertical Alignment'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'middle'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(80575489827827842344)
,p_plugin_attribute_id=>wwv_flow_imp.id(80575489474619842343)
,p_display_sequence=>10
,p_display_value=>'Top'
,p_return_value=>'top'
,p_is_quick_pick=>true
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(80575490388693842344)
,p_plugin_attribute_id=>wwv_flow_imp.id(80575489474619842343)
,p_display_sequence=>20
,p_display_value=>'Middle'
,p_return_value=>'middle'
,p_is_quick_pick=>true
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(80575490843065842344)
,p_plugin_attribute_id=>wwv_flow_imp.id(80575489474619842343)
,p_display_sequence=>30
,p_display_value=>'Bottom'
,p_return_value=>'bottom'
,p_is_quick_pick=>true
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(80575491341894842345)
,p_plugin_id=>wwv_flow_imp.id(80575485990518842335)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_static_id=>'attribute_04'
,p_prompt=>'Hide and Show Behavior'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'on'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(80575491771828842345)
,p_plugin_attribute_id=>wwv_flow_imp.id(80575491341894842345)
,p_display_sequence=>10
,p_display_value=>'On'
,p_return_value=>'on'
,p_is_quick_pick=>true
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(80575492259889842345)
,p_plugin_attribute_id=>wwv_flow_imp.id(80575491341894842345)
,p_display_sequence=>20
,p_display_value=>'Off'
,p_return_value=>'off'
,p_is_quick_pick=>true
);
wwv_flow_imp_shared.create_plugin_std_attribute(
 p_id=>wwv_flow_imp.id(80575492795131842352)
,p_plugin_id=>wwv_flow_imp.id(80575485990518842335)
,p_name=>'SOURCE_SQL'
);
end;
/
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '212066756E6374696F6E20286A65742C20242C207365727665722029207B0D0A202020202275736520737472696374223B0D0A0D0A202020206A65742E6C6567656E64203D207B0D0A2020202020202020696E69743A2066756E6374696F6E2028705265';
wwv_flow_imp.g_varchar2_table(2) := '67696F6E49642C207041706578416A61784964656E74696669657229207B0D0A20202020202020202020202072657175697265285B226F6A732F6F6A636F7265222C20226F6A732F6F6A6C6567656E64222C20226F6A732F6F6A6368617274225D2C2066';
wwv_flow_imp.g_varchar2_table(3) := '756E6374696F6E20286F6A29207B0D0A202020202020202020202020202020207365727665722E706C7567696E287041706578416A61784964656E7469666965722C207B7D2C207B0D0A2020202020202020202020202020202020202020737563636573';
wwv_flow_imp.g_varchar2_table(4) := '733A2066756E6374696F6E2028704461746129207B0D0A0D0A2020202020202020202020202020202020202020202020202F2F2053657420436F6C6F7572206F66204C6567656E64204974656D73202D20746F206D617463682064656661756C7420636F';
wwv_flow_imp.g_varchar2_table(5) := '6C6F7572696E67206F662065616368207365726965730D0A202020202020202020202020202020202020202020202020766172206174747247726F757073203D206E6577206F6A2E436F6C6F7241747472696275746547726F757048616E646C65722829';
wwv_flow_imp.g_varchar2_table(6) := '3B0D0A0D0A202020202020202020202020202020202020202020202020766172206C6567656E644974656D73203D2070446174612E73656374696F6E735B305D2E6974656D733B0D0A202020202020202020202020202020202020202020202020666F72';
wwv_flow_imp.g_varchar2_table(7) := '287661722069203D20303B2069203C206C6567656E644974656D732E6C656E6774683B20692B2B29207B0D0A202020202020202020202020202020202020202020202020202020206C6567656E644974656D735B695D203D207B20746578743A206C6567';
wwv_flow_imp.g_varchar2_table(8) := '656E644974656D735B695D2E746578742C20636F6C6F72203A206174747247726F7570732E67657456616C756528206C6567656E644974656D735B695D2E7465787420292C2073686F7274446573633A206C6567656E644974656D735B695D2E73686F72';
wwv_flow_imp.g_varchar2_table(9) := '7444657363207D3B0D0A2020202020202020202020202020202020202020202020207D0D0A20202020202020202020202020202020202020202020202070446174612E73656374696F6E735B305D2E6974656D73203D206C6567656E644974656D733B0D';
wwv_flow_imp.g_varchar2_table(10) := '0A0D0A2020202020202020202020202020202020202020202020202F2F20446566696E65206F7074696F6E4368616E67652066756E6374696F6E2C20746F2068616E646C65207570646174696E6720636861727420726567696F6E73206261736564206F';
wwv_flow_imp.g_varchar2_table(11) := '6E206C6567656E64206974656D2073656C656374696F6E0D0A20202020202020202020202020202020202020202020202070446174612E6F7074696F6E4368616E6765203D2066756E6374696F6E20286576656E742C206461746129207B0D0A0D0A2020';
wwv_flow_imp.g_varchar2_table(12) := '20202020202020202020202020202020202020202020202020202F2F20446566696E65206172726179206F662073656C656374206C6567656E64206974656D730D0A20202020202020202020202020202020202020202020202020202020766172206869';
wwv_flow_imp.g_varchar2_table(13) := '6464656E43617465676F72696573203D20646174615B2776616C7565275D3B0D0A202020202020202020202020202020202020202020202020202020202F2F20557064617465206561636820636861727420746F207265666C656374206C6567656E6420';
wwv_flow_imp.g_varchar2_table(14) := '73656C656374696F6E0D0A202020202020202020202020202020202020202020202020202020202428222E6F6A2D636861727422292E6F6A4368617274287B68696464656E43617465676F726965733A2068696464656E43617465676F726965737D293B';
wwv_flow_imp.g_varchar2_table(15) := '0D0A2020202020202020202020202020202020202020202020207D3B0D0A0D0A0D0A202020202020202020202020202020202020202020202020242870526567696F6E4964290D0A20202020202020202020202020202020202020202020202020202020';
wwv_flow_imp.g_varchar2_table(16) := '2E6F6A4C6567656E64287044617461293B0D0A20202020202020202020202020202020202020207D0D0A202020202020202020202020202020207D293B0D0A2020202020202020202020207D293B0D0A20202020202020207D0D0A202020207D3B0D0A0D';
wwv_flow_imp.g_varchar2_table(17) := '0A7D20282077696E646F772E6A6574203D2077696E646F772E6A6574207C7C207B7D2C20617065782E6A51756572792C20617065782E73657276657220293B0D0A';
end;
/
begin
wwv_flow_imp_shared.create_plugin_file(
 p_id=>wwv_flow_imp.id(80575493133782842355)
,p_plugin_id=>wwv_flow_imp.id(80575485990518842335)
,p_file_name=>'jetLegend.js'
,p_mime_type=>'text/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
begin
wwv_flow_imp.component_end;
end;
/
