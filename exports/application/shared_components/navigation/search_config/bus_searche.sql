prompt --application/shared_components/navigation/search_config/bus_searche
begin
--   Manifest
--     SEARCH CONFIG: Bus_Searche
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
 p_id=>wwv_flow_imp.id(8831623937483331)
,p_label=>'Bus_Searche'
,p_static_id=>'bus_searche'
,p_search_type=>'SIMPLE'
,p_location=>'LOCAL'
,p_query_type=>'TABLE'
,p_query_table=>'BUSES_NETWORK'
,p_searchable_columns=>'ID:TYPE:PROPERTIES_TO:PROPERTIES__ID:PROPERTIES_BIN:PROPERTIES_BUS:PROPERTIES_HGV:PROPERTIES_LIT:PROPERTIES_REF:PROPERTIES_FOOT'
,p_pk_column_name=>'ID_1'
,p_title_column_name=>'GEOMETRY'
,p_icon_source_type=>'INITIALS'
,p_version_scn=>44964971191908
,p_created_on=>wwv_flow_imp.dz('20250629042804Z')
,p_updated_on=>wwv_flow_imp.dz('20250629042815Z')
,p_created_by=>'NOUREDDINE'
,p_updated_by=>'NOUREDDINE'
);
wwv_flow_imp.component_end;
end;
/
