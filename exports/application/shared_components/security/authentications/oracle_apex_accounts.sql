prompt --application/shared_components/security/authentications/oracle_apex_accounts
begin
--   Manifest
--     AUTHENTICATION: Oracle APEX Accounts
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.5'
,p_default_workspace_id=>7794158111401143
,p_default_application_id=>105
,p_default_id_offset=>0
,p_default_owner=>'WKSP_AZULCAN25'
);
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(7836371712589275)
,p_name=>'Oracle APEX Accounts'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>44963302081188
,p_created_on=>wwv_flow_imp.dz('20250628203727Z')
,p_updated_on=>wwv_flow_imp.dz('20250628203727Z')
,p_created_by=>'ABDELLAH'
,p_updated_by=>'ABDELLAH'
);
wwv_flow_imp.component_end;
end;
/
