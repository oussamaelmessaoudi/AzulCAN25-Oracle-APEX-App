prompt --application/shared_components/logic/application_items/user_role
begin
--   Manifest
--     APPLICATION ITEM: USER_ROLE
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.5'
,p_default_workspace_id=>7794158111401143
,p_default_application_id=>105
,p_default_id_offset=>0
,p_default_owner=>'WKSP_AZULCAN25'
);
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(7889934737961480)
,p_name=>'USER_ROLE'
,p_protection_level=>'I'
,p_version_scn=>44963083759366
);
wwv_flow_imp.component_end;
end;
/
