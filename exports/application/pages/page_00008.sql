prompt --application/pages/page_00008
begin
--   Manifest
--     PAGE: 00008
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
 p_id=>8
,p_name=>'Fan Zones'
,p_alias=>'FAN-ZONES'
,p_page_mode=>'MODAL'
,p_step_title=>'Fan Zones'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'03'
,p_created_on=>wwv_flow_imp.dz('20250629021226Z')
,p_last_updated_on=>wwv_flow_imp.dz('20250629035814Z')
,p_created_by=>'USAMAAZUL'
,p_last_updated_by=>'USAMAAZUL'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(8606688531422614)
,p_name=>'new'
,p_template=>4072358936313175081
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'fz.LOCATION,',
'  ac.ACTIVITE',
'FROM FAN_ZONE fz',
'JOIN ACTIVITIES ac',
'ON fz.zone_id = ac.id_zone',
'where fz.FIXTURE_ID= :P8_ID ',
';',
'',
''))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P8_ID'
,p_lazy_loading=>false
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
,p_created_on=>wwv_flow_imp.dz('20250629024720Z')
,p_updated_on=>wwv_flow_imp.dz('20250629035814Z')
,p_created_by=>'USAMAAZUL'
,p_updated_by=>'USAMAAZUL'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8607848251422626)
,p_query_column_id=>1
,p_column_alias=>'LOCATION'
,p_column_display_sequence=>10
,p_column_heading=>'Location'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20250629035501Z')
,p_updated_by=>'USAMAAZUL'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8607933273422627)
,p_query_column_id=>2
,p_column_alias=>'ACTIVITE'
,p_column_display_sequence=>20
,p_column_heading=>'Activite'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20250629035501Z')
,p_updated_by=>'USAMAAZUL'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8606506800422613)
,p_name=>'P8_ID'
,p_item_sequence=>10
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250629024720Z')
,p_updated_on=>wwv_flow_imp.dz('20250629030753Z')
,p_created_by=>'USAMAAZUL'
,p_updated_by=>'USAMAAZUL'
);
wwv_flow_imp.component_end;
end;
/
