prompt --application/shared_components/navigation/lists/new_in_20_2
begin
--   Manifest
--     LIST: New in 20.2
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
 p_id=>wwv_flow_imp.id(77100428199147866533)
,p_name=>'New in 20.2'
,p_list_status=>'PUBLIC'
,p_version_scn=>1089078564
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(77100428359777866534)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Pareto Chart, pg 20'
,p_list_item_link_target=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-combo-chart'
,p_list_text_01=>'This example demonstrates a Pareto Chart, based on a declaratively defined Combination Chart, with a Bar series and a Line series, where individual values are represented in descending order by bars, and the cumulative total is represented by the lin'
||'e.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
