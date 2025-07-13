prompt --application/create_application
begin
--   Manifest
--     FLOW: 105
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.5'
,p_default_workspace_id=>7794158111401143
,p_default_application_id=>105
,p_default_id_offset=>0
,p_default_owner=>'WKSP_AZULCAN25'
);
wwv_imp_workspace.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_owner=>nvl(wwv_flow_application_install.get_schema,'WKSP_AZULCAN25')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'AZUL CAN 25')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'AZUL-CAN-25')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'19EB15A734E2E20E7FD5578A8EA4D0A83F9CA24D5B8FA01ECA995E84ACEA5B62'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'24.2'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_allow_feedback_yn=>'Y'
,p_date_format=>'DS'
,p_timestamp_format=>'DS'
,p_timestamp_tz_format=>'DS'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication_id=>wwv_flow_imp.id(7836371712589275)
,p_application_tab_set=>0
,p_logo_type=>'C'
,p_logo=>'<img src="#APP_FILES#icons/logo without back.png" style="width: 150px; height: 170px;  margin-left:-50px;">'
,p_public_user=>'APEX_PUBLIC_USER'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'Release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable at this time.'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'N'
,p_substitution_string_01=>'APP_NAME'
,p_substitution_value_01=>'AZUL CAN 25'
,p_last_updated_on=>wwv_flow_imp.dz('20250629115849Z')
,p_last_updated_by=>'ILYASS'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>30
,p_version_scn=>44966183770235
,p_print_server_type=>'NATIVE'
,p_file_storage=>'DB'
,p_is_pwa=>'Y'
,p_pwa_is_installable=>'Y'
,p_pwa_manifest_display=>'fullscreen'
,p_pwa_manifest_orientation=>'any'
,p_pwa_apple_status_bar_style=>'default'
,p_pwa_is_push_enabled=>'N'
);
wwv_flow_imp.component_end;
end;
/
