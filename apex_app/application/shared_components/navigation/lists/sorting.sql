prompt --application/shared_components/navigation/lists/sorting
begin
--   Manifest
--     LIST: Sorting
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
 p_id=>wwv_flow_imp.id(77464697562959571656)
,p_name=>'Sorting'
,p_list_status=>'PUBLIC'
,p_version_scn=>1089078564
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(77464697727679571658)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Bar Chart (Series Colors) - Page 9'
,p_list_item_link_target=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-area-chart'
,p_list_text_01=>'Four Bar charts demonstrate the various methods of defining colors on a chart, and each of the charts demonstrates a different style of sorting.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(77464698156200571659)
,p_list_item_display_sequence=>15
,p_list_item_link_text=>'Area Chart (Stacked) - Page 2'
,p_list_item_link_target=>'f?p=&APP_ID.:18:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-line-chart'
,p_list_text_01=>'This example demonstrates sorting the chart by the x-axis labels, descending.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(77464699477330594019)
,p_list_item_display_sequence=>25
,p_list_item_link_text=>'Donut Chart (Sorting) - Page 9'
,p_list_item_link_target=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.::::'
,p_list_text_01=>'This example demonstrates sorting the chart by the values, ascending.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
