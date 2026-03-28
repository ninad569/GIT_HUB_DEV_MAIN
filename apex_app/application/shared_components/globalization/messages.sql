prompt --application/shared_components/globalization/messages
begin
--   Manifest
--     MESSAGES: 274326
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.8'
,p_default_workspace_id=>76915847067537899948
,p_default_application_id=>274326
,p_default_id_offset=>76916220240599916839
,p_default_owner=>'WKSP_WBGAPEXDEV'
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(79491429975005843252)
,p_name=>'HELP'
,p_message_text=>'Help'
,p_version_scn=>37166093873590
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(79491468649163845218)
,p_name=>'LOGOUT'
,p_message_text=>'Logout'
,p_version_scn=>37166093873590
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(79583793350021077766)
,p_name=>'USER'
,p_message_text=>'User'
,p_version_scn=>37166093873590
);
wwv_flow_imp.component_end;
end;
/
