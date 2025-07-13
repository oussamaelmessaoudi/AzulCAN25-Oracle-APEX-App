prompt --application/shared_components/navigation/search_config/search_restaurants
begin
--   Manifest
--     SEARCH CONFIG: Search_Restaurants
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
 p_id=>wwv_flow_imp.id(8558331527234544)
,p_label=>'Search_Restaurants'
,p_static_id=>'search_restaurants'
,p_search_type=>'SIMPLE'
,p_location=>'LOCAL'
,p_query_type=>'TABLE'
,p_query_owner=>'WKSP_AZULCAN25'
,p_query_table=>'RESTAURANTS'
,p_searchable_columns=>'RESTAURANT_NAME'
,p_pk_column_name=>'ID_RESTAURANT'
,p_title_column_name=>'RESTAURANT_NAME'
,p_icon_source_type=>'INITIALS'
,p_version_scn=>44964049300620
,p_created_on=>wwv_flow_imp.dz('20250628221317Z')
,p_updated_on=>wwv_flow_imp.dz('20250628221854Z')
,p_created_by=>'ILYASS'
,p_updated_by=>'ILYASS'
);
wwv_flow_imp.component_end;
end;
/
