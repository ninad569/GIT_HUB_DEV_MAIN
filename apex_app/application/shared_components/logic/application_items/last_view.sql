prompt --application/shared_components/logic/application_items/last_view
begin
--   Manifest
--     APPLICATION ITEM: LAST_VIEW
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.8'
,p_default_workspace_id=>76915847067537899948
,p_default_application_id=>274326
,p_default_id_offset=>76916220240599916839
,p_default_owner=>'WKSP_WBGAPEXDEV'
);
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(79280713824959102496)
,p_name=>'LAST_VIEW'
,p_protection_level=>'I'
,p_version_scn=>37166093873575
);
wwv_flow_imp.component_end;
end;
/
