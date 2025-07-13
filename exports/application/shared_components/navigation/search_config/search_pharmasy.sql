prompt --application/shared_components/navigation/search_config/search_pharmasy
begin
--   Manifest
--     SEARCH CONFIG: Search_Pharmasy
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.5'
,p_default_workspace_id=>7794158111401143
,p_default_application_id=>105
,p_default_id_offset=>0
,p_default_owner=>'WKSP_AZULCAN25'
);
wwv_flow_imp_shared.create_search_config(
 p_id=>wwv_flow_imp.id(9157352371748297)
,p_label=>'Search_Pharmasy'
,p_static_id=>'search_pharmasy'
,p_search_type=>'SIMPLE'
,p_location=>'LOCAL'
,p_query_type=>'TABLE'
,p_query_table=>'PHARMACIES'
,p_searchable_columns=>'CITY:ADDRESS:PHARMACY_NAME'
,p_pk_column_name=>'ID'
,p_title_column_name=>'ADDRESS'
,p_icon_source_type=>'INITIALS'
,p_version_scn=>44966026970311
,p_created_on=>wwv_flow_imp.dz('20250629104534Z')
,p_updated_on=>wwv_flow_imp.dz('20250629104551Z')
,p_created_by=>'ILYASS'
,p_updated_by=>'ILYASS'
);
wwv_flow_imp.component_end;
end;
/
