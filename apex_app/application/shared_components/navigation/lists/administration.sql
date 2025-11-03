prompt --application/shared_components/navigation/lists/administration
begin
--   Manifest
--     LIST: Administration
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
 p_id=>wwv_flow_imp.id(79280704534059033025)
,p_name=>'Administration'
,p_list_status=>'PUBLIC'
,p_version_scn=>1089078564
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(77639388421612579259)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Manage Sample Data'
,p_list_item_link_target=>'f?p=&APP_ID.:27:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-edit'
,p_list_text_01=>'This application ships with sample data.  You can remove or recreate sample data using this administrative page.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(79280704788271033028)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Theme Styles'
,p_list_item_link_target=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:RP:::'
,p_list_item_icon=>'fa-desktop'
,p_list_text_01=>'Change user interface theme style for all users.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
