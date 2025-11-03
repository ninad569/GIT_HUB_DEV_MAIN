prompt --application/shared_components/user_interface/shortcuts/delete_confirm_msg
begin
--   Manifest
--     SHORTCUT: DELETE_CONFIRM_MSG
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.8'
,p_default_workspace_id=>76915847067537899948
,p_default_application_id=>274326
,p_default_id_offset=>76916220240599916839
,p_default_owner=>'WKSP_WBGAPEXDEV'
);
wwv_flow_imp_shared.create_shortcut(
 p_id=>wwv_flow_imp.id(78224633545535487588)
,p_shortcut_name=>'DELETE_CONFIRM_MSG'
,p_shortcut_type=>'TEXT_ESCAPE_JS'
,p_version_scn=>1089078566
,p_shortcut=>'Would you like to perform this delete action?'
);
wwv_flow_imp.component_end;
end;
/
