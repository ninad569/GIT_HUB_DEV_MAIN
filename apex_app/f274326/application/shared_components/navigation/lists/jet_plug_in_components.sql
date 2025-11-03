prompt --application/shared_components/navigation/lists/jet_plug_in_components
begin
--   Manifest
--     LIST: JET Plug-in Components
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.8'
,p_default_workspace_id=>76915847067537899948
,p_default_application_id=>274326
,p_default_id_offset=>76916220240599916839
,p_default_owner=>'WKSP_WBGAPEXDEV'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(80575957069214193630)
,p_name=>'JET Plug-in Components'
,p_list_status=>'PUBLIC'
,p_version_scn=>1089078564
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(80575957294368193630)
,p_list_item_display_sequence=>15
,p_list_item_link_text=>'Oracle JET Legend Component as a Plug-in - Page 26'
,p_list_item_link_target=>'f?p=&APP_ID.:26:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-plug'
,p_list_text_01=>'This example demonstrates the Oracle JET Legend, as an APEX plug-in'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
