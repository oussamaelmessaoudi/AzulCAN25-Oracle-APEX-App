prompt --application/shared_components/user_interface/lovs/unified_task_list_lov_type
begin
--   Manifest
--     UNIFIED_TASK_LIST.LOV.TYPE
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.5'
,p_default_workspace_id=>7794158111401143
,p_default_application_id=>105
,p_default_id_offset=>0
,p_default_owner=>'WKSP_AZULCAN25'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(8858542138888876)
,p_lov_name=>'UNIFIED_TASK_LIST.LOV.TYPE'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val',
'  from table ( apex_human_task.get_lov_type )',
' order by insert_order'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'VAL'
,p_display_column_name=>'DISP'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
,p_version_scn=>44965228206498
,p_created_on=>wwv_flow_imp.dz('20250629053540Z')
,p_updated_on=>wwv_flow_imp.dz('20250629053540Z')
,p_created_by=>'ILYASS'
,p_updated_by=>'ILYASS'
);
wwv_flow_imp.component_end;
end;
/
