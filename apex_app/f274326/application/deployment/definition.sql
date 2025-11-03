prompt --application/deployment/definition
begin
--   Manifest
--     INSTALL: 274326
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.8'
,p_default_workspace_id=>76915847067537899948
,p_default_application_id=>274326
,p_default_id_offset=>76916220240599916839
,p_default_owner=>'WKSP_WBGAPEXDEV'
);
wwv_flow_imp_shared.create_install(
 p_id=>wwv_flow_imp.id(79489144652076530873)
,p_deinstall_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'drop procedure eba_demo_chart_data;',
'',
'drop table eba_demo_chart_tasks cascade constraints;',
'drop table eba_demo_chart_projects cascade constraints;',
'drop table eba_demo_chart_emp cascade constraints;',
'drop table eba_demo_chart_dept cascade constraints;',
'drop table eba_demo_chart_population cascade constraints;',
'drop table eba_demo_chart_stocks cascade constraints;',
'drop table eba_demo_chart_bball cascade constraints;',
'drop table eba_demo_chart_orders cascade constraints;',
'drop table eba_demo_chart_products cascade constraints;',
'drop table eba_demo_chart_stats cascade constraints;',
'drop table eba_demo_chart_grades;',
'drop table eba_demo_chart_samples;',
'drop table eba_demo_chart_sample_data cascade constraints;',
'drop table eba_demo_chart_sample_names;',
'',
'begin',
'    wwv_flow_api.create_or_remove_file( ',
'        p_location => ''APPLICATION'',',
'        p_name     => ''charts_candlestick.jpg'',',
'        p_mode     => ''REMOVE'',',
'        p_type     => ''IMAGE'');',
'end;',
'/',
'',
'begin',
'    wwv_flow_api.create_or_remove_file( ',
'        p_location => ''APPLICATION'',',
'        p_name     => ''charts_bar.jpg'',',
'        p_mode     => ''REMOVE'',',
'        p_type     => ''IMAGE'');',
'end;',
'/',
'',
'begin',
'    wwv_flow_api.create_or_remove_file( ',
'        p_location => ''APPLICATION'',',
'        p_name     => ''charts_combination.jpg'',',
'        p_mode     => ''REMOVE'',',
'        p_type     => ''IMAGE'');',
'end;',
'/',
'',
'',
'begin',
'    wwv_flow_api.create_or_remove_file( ',
'        p_location => ''APPLICATION'',',
'        p_name     => ''charts_gantt.jpg'',',
'        p_mode     => ''REMOVE'',',
'        p_type     => ''IMAGE'');',
'end;',
'/',
'',
'begin',
'    wwv_flow_api.create_or_remove_file( ',
'        p_location => ''APPLICATION'',',
'        p_name     => ''charts_gauge.jpg'',',
'        p_mode     => ''REMOVE'',',
'        p_type     => ''IMAGE'');',
'end;',
'/',
'',
'begin',
'    wwv_flow_api.create_or_remove_file( ',
'        p_location => ''APPLICATION'',',
'        p_name     => ''charts_map.jpg'',',
'        p_mode     => ''REMOVE'',',
'        p_type     => ''IMAGE'');',
'end;',
'/',
'',
'begin',
'    wwv_flow_api.create_or_remove_file( ',
'        p_location => ''APPLICATION'',',
'        p_name     => ''charts_pie.jpg'',',
'        p_mode     => ''REMOVE'',',
'        p_type     => ''IMAGE'');',
'end;',
'/',
'',
'',
'begin',
'    wwv_flow_api.create_or_remove_file( ',
'        p_location => ''APPLICATION'',',
'        p_name     => ''charts_scatter.jpg'',',
'        p_mode     => ''REMOVE'',',
'        p_type     => ''IMAGE'');',
'end;',
'/',
''))
,p_required_free_kb=>100
,p_required_sys_privs=>'CREATE PROCEDURE:CREATE TABLE:CREATE TRIGGER:CREATE VIEW'
,p_required_names_available=>'EBA_DEMO_CHART_TASKS:EBA_DEMO_CHART_PROJECTS:EBA_DEMO_CHART_EMP:EBA_DEMO_CHART_DEPT:EBA_DEMO_CHART_POPULATION:EBA_DEMO_CHART_STOCKS:EBA_DEMO_CHART_GRADES:EBA_DEMO_CHART_SAMPLES:EBA_DEMO_CHART_SAMPLE_NAMES:EBA_DEMO_CHART_SAMPLE_DATA'
);
wwv_flow_imp.component_end;
end;
/
