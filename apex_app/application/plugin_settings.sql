prompt --application/plugin_settings
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.8'
,p_default_workspace_id=>76915847067537899948
,p_default_application_id=>274326
,p_default_id_offset=>76916220240599916839
,p_default_owner=>'WKSP_WBGAPEXDEV'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(76923421415607505256)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_BOSS'
,p_version_scn=>184653983
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(76924947039885025350)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'default_icon', 'fa-star',
  'tooltip', '#VALUE#')).to_clob
,p_version_scn=>37166093873575
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(76924977284772987119)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_OPEN_AI_ASSISTANT'
,p_version_scn=>37167665069801
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(76924977730716987119)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SELECT_MANY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_values_as', 'separated')).to_clob
,p_version_scn=>37167665069801
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(76925000338028832342)
,p_plugin_type=>'PROCESS TYPE'
,p_plugin=>'NATIVE_GEOCODING'
,p_attribute_01=>'RELAX_HOUSE_NUMBER'
,p_version_scn=>155466386
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(77023266989760394045)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_GEOCODED_ADDRESS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'background', 'default',
  'display_as', 'LIST',
  'map_preview', 'POPUP:ITEM',
  'match_mode', 'RELAX_HOUSE_NUMBER',
  'show_coordinates', 'N')).to_clob
,p_version_scn=>37166093873575
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(77044824287237930471)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_MAP_REGION'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_vector_tile_layers', 'N')).to_clob
,p_version_scn=>37166093873575
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(77046636181393983607)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_DATE_PICKER_APEX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_behavior', 'MONTH-PICKER:YEAR-PICKER',
  'days_outside_month', 'VISIBLE',
  'show_on', 'FOCUS',
  'time_increment', '15')).to_clob
,p_version_scn=>37166093873575
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(77099551788169011961)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SINGLE_CHECKBOX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', 'Y',
  'unchecked_value', 'N')).to_clob
,p_version_scn=>37166093873575
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(77530210735416229216)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_ADFBC'
,p_version_scn=>37166093873573
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(78044663667272012110)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_style', 'SWITCH',
  'off_value', 'N',
  'on_value', 'Y')).to_clob
,p_version_scn=>37166093873575
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(78691014786572896549)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'include_slider', 'N')).to_clob
,p_version_scn=>37166093873575
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(78757714817463178650)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'actions_menu_structure', 'IG')).to_clob
,p_version_scn=>37166093873575
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(78843595794929124527)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'mode', 'FULL')).to_clob
,p_version_scn=>37166093873575
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(79254372059398124617)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'PLUGIN_COM.ORACLE.FLOTLINECHART2'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', '3',
  'attribute_02', '1.333')).to_clob
,p_version_scn=>37166093873575
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(79274070335438385599)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'PLUGIN_COM.ORACLE.APEX.D3.BARCHART51253'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', '3',
  'attribute_02', '1.333',
  'attribute_03', '480',
  'attribute_04', 'WINDOW',
  'attribute_05', 'Y',
  'attribute_06', 'Y')).to_clob
,p_version_scn=>37166093873575
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(79299054790042343593)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'PLUGIN_COM.ORACLE.APEX.D3.BUBBLE.TEST'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', '1.333',
  'attribute_02', '3')).to_clob
,p_version_scn=>37166093873575
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(79299314567329441223)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'PLUGIN_COM.ORACLE.APEX.D3.TREEMAP48914'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', '1.33',
  'attribute_02', '3')).to_clob
,p_version_scn=>37166093873575
);
wwv_flow_imp.component_end;
end;
/
