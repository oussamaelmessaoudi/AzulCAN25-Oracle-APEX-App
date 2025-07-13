prompt --application/shared_components/navigation/lists/comments
begin
--   Manifest
--     LIST: Comments
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.5'
,p_default_workspace_id=>7794158111401143
,p_default_application_id=>105
,p_default_id_offset=>0
,p_default_owner=>'WKSP_AZULCAN25'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(8592610862325345)
,p_name=>'Comments'
,p_list_type=>'SQL_QUERY'
,p_list_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'  c.ID_COMMENTS,',
'  c.MSG_COMMENT,',
'  c.ID_RESTAURANTS,',
'  r.RESTAURANT_NAME',
'FROM COMMENTS c',
'JOIN RESTAURANTS r ON c.ID_RESTAURANTS = r.ID_RESTAURANT',
'WHERE r.ID_RESTAURANT = ID_RESTAURANT;',
''))
,p_list_status=>'PUBLIC'
,p_version_scn=>44964142120263
,p_created_on=>wwv_flow_imp.dz('20250628222825Z')
,p_updated_on=>wwv_flow_imp.dz('20250628225759Z')
,p_created_by=>'ILYASS'
,p_updated_by=>'ILYASS'
);
wwv_flow_imp.component_end;
end;
/
