prompt --application/shared_components/security/app_access_control/adminprincipale
begin
--   Manifest
--     ACL ROLE: AdminPrincipale
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.5'
,p_default_workspace_id=>7794158111401143
,p_default_application_id=>105
,p_default_id_offset=>0
,p_default_owner=>'WKSP_AZULCAN25'
);
wwv_flow_imp_shared.create_acl_role(
 p_id=>wwv_flow_imp.id(7877330103778543)
,p_static_id=>'ADMINPRINCIPALE'
,p_name=>'AdminPrincipale'
,p_version_scn=>44963001041348
);
wwv_flow_imp.component_end;
end;
/
