prompt --application/create_application
begin
--   Manifest
--     FLOW: 274326
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.8'
,p_default_workspace_id=>76915847067537899948
,p_default_application_id=>274326
,p_default_id_offset=>76916220240599916839
,p_default_owner=>'WKSP_WBGAPEXDEV'
);
wwv_imp_workspace.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_owner=>nvl(wwv_flow_application_install.get_schema,'WKSP_WBGAPEXDEV')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'Sample Charts')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'SAMPLE-CHARTS')
,p_application_group=>wwv_flow_imp.id(76921071426238465983)
,p_application_group_name=>'Sample Apps'
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'819AF279A51271862EE4DBFB2E2934664253791AF028E6C782E7061E27B3B9F4'
,p_checksum_salt_last_reset=>'19990804000000'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'24.2'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_direction_right_to_left=>'N'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_documentation_banner=>wwv_flow_string.join(wwv_flow_t_varchar2(
'1.0.7 -> 1.0.8: Added "SQL Source" show/hide region to all pages.',
'1.0.9 -> 1.0.10: Changed Authentication scheme to use new "ORA_WWV_PACKAGED_APPLICATIONS" cookie',
'1.0.12 -> 1.0.13: Added D3 Collapsible Treemap region to page 16'))
,p_authentication_id=>wwv_flow_imp.id(85116918302975146763)
,p_application_tab_set=>0
,p_logo_type=>'T'
,p_logo_text=>'Sample Charts'
,p_public_user=>'APEX_PUBLIC_USER'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'24.2.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable at this time.'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'S'
,p_deep_linking=>'Y'
,p_runtime_api_usage=>'T'
,p_pass_ecid=>'N'
,p_authorize_public_pages_yn=>'Y'
,p_rejoin_existing_sessions=>'P'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'N'
,p_tokenize_row_search=>'N'
,p_substitution_string_01=>'APP_NAME'
,p_substitution_value_01=>'Sample Charts'
,p_substitution_string_02=>'GETTING_STARTED_URL'
,p_substitution_value_02=>'https://www.oracle.com/technetwork/developer-tools/apex/index.html'
,p_substitution_string_03=>'JET_COOKBOOK_URL'
,p_substitution_value_03=>'https://www.oracle.com/webfolder/technetwork/jet/jetCookbook.html'
,p_substitution_string_04=>'OJCHART_API_URL'
,p_substitution_value_04=>'https://www.oracle.com/webfolder/technetwork/jet/jsdocs/oj.ojChart.html'
,p_substitution_string_05=>'JET_GET_STARTED_URL'
,p_substitution_value_05=>'https://www.oracle.com/webfolder/technetwork/jet/index.html?_ojCoreRouter=getstarted'
,p_substitution_string_06=>'OJCHART_ITEM_API_URL'
,p_substitution_value_06=>'https://www.oracle.com/webfolder/technetwork/jet/jsdocs/oj.ojChartItem.html'
,p_substitution_string_07=>'PRODUCT_NAME'
,p_substitution_value_07=>'Oracle APEX'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>9
,p_version_scn=>15660774090921
,p_print_server_type=>'INSTANCE'
,p_file_storage=>'DB'
,p_is_pwa=>'N'
,p_copyright_banner=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Name: #APP_NAME#',
'Copyright (c) 2012, #YEAR# Oracle and/or its affiliates.',
'Licensed under the Universal Permissive License v 1.0 as shown',
'at https://oss.oracle.com/licenses/upl/',
'',
'This script makes use of the Oracle JavaScript Extension Toolkit(JET). ',
'Refer to THIRD_PARTY_LICENSES.txt in the top directory of this project',
'or at https://github.com/oracle/apex-samples for license information.'))
);
wwv_flow_imp.component_end;
end;
/
