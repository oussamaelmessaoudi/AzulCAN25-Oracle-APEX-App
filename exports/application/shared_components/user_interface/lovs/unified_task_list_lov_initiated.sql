prompt --application/shared_components/user_interface/lovs/unified_task_list_lov_initiated
begin
--   Manifest
--     UNIFIED_TASK_LIST.LOV.INITIATED
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
 p_id=>wwv_flow_imp.id(8862237398888879)
,p_lov_name=>'UNIFIED_TASK_LIST.LOV.INITIATED'
,p_lov_query=>'.'||wwv_flow_imp.id(8862237398888879)||'.'
,p_location=>'STATIC'
,p_version_scn=>44965228206741
,p_created_on=>wwv_flow_imp.dz('20250629053540Z')
,p_updated_on=>wwv_flow_imp.dz('20250629053540Z')
,p_created_by=>'ILYASS'
,p_updated_by=>'ILYASS'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(8862593937888880)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Last hour'
,p_lov_return_value=>'|1'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(8862925388888880)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Last 24 hours'
,p_lov_return_value=>'1|24'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(8863346551888880)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Last 7 days'
,p_lov_return_value=>'24|168'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(8863716260888880)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Last 30 days'
,p_lov_return_value=>'168|720'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(8864175908888881)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'Older than 30 days'
,p_lov_return_value=>'720|'
);
wwv_flow_imp.component_end;
end;
/
