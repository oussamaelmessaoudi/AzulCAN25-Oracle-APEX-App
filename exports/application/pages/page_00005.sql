prompt --application/pages/page_00005
begin
--   Manifest
--     PAGE: 00005
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.5'
,p_default_workspace_id=>7794158111401143
,p_default_application_id=>105
,p_default_id_offset=>0
,p_default_owner=>'WKSP_AZULCAN25'
);
wwv_flow_imp_page.create_page(
 p_id=>5
,p_name=>'Fan Zone'
,p_alias=>'FAN-ZONE'
,p_step_title=>'Fan Zone'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'11'
,p_created_on=>wwv_flow_imp.dz('20250628211603Z')
,p_last_updated_on=>wwv_flow_imp.dz('20250629094708Z')
,p_created_by=>'USAMAAZUL'
,p_last_updated_by=>'ABDELLAH'
);
wwv_flow_imp.component_end;
end;
/
