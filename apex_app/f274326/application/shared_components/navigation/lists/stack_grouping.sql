prompt --application/shared_components/navigation/lists/stack_grouping
begin
--   Manifest
--     LIST: Stack Grouping
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
 p_id=>wwv_flow_imp.id(77100441502221030586)
,p_name=>'Stack Grouping'
,p_list_status=>'PUBLIC'
,p_version_scn=>1089078564
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(77100441689874030586)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Bar Chart (Stack Label & Stack Category) - Page 9'
,p_list_item_link_target=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-dial-gauge-chart'
,p_list_text_01=>'This example demonstrates the new Stack Category and Stack Label attributes on a Bar chart, to render multiple stacks on a given chart and display the stack total value as a label above each stack.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
