prompt --application/pages/page_00006
begin
--   Manifest
--     PAGE: 00006
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
 p_id=>6
,p_name=>'COMMENTS VIEW'
,p_alias=>'COMMENTS-VIEW'
,p_page_mode=>'MODAL'
,p_step_title=>'COMMENTS VIEW'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'03'
,p_created_on=>wwv_flow_imp.dz('20250628213934Z')
,p_last_updated_on=>wwv_flow_imp.dz('20250629031006Z')
,p_created_by=>'ILYASS'
,p_last_updated_by=>'USAMAAZUL'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(7947128645096849)
,p_name=>'New'
,p_template=>4072358936313175081
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:js-showMaximizeButton:t-Region--showIcon:t-Region--removeHeader js-removeLandmark:t-Region--stacked:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-MediaList--stack'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'r.RESTAURANT_NAME AS LIST_TITLE,',
'  c.MSG_COMMENT AS LIST_TEXT',
'FROM COMMENTS c',
'JOIN RESTAURANTS r ',
'ON c.ID_RESTAURANTS = r.ID_RESTAURANT',
'where r.ID_RESTAURANT= :P6_ID ',
';',
''))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P6_ID'
,p_lazy_loading=>false
,p_query_row_template=>2093604263195414824
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
,p_created_on=>wwv_flow_imp.dz('20250628231318Z')
,p_updated_on=>wwv_flow_imp.dz('20250629031006Z')
,p_created_by=>'ILYASS'
,p_updated_by=>'USAMAAZUL'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8631961047593507)
,p_query_column_id=>1
,p_column_alias=>'LIST_TITLE'
,p_column_display_sequence=>40
,p_column_heading=>'List Title'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20250629000632Z')
,p_updated_by=>'ILYASS'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8631845923593506)
,p_query_column_id=>2
,p_column_alias=>'LIST_TEXT'
,p_column_display_sequence=>30
,p_column_heading=>'List Text'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20250629000632Z')
,p_updated_by=>'ILYASS'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7947059288096848)
,p_name=>'P6_ID'
,p_item_sequence=>10
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250628230847Z')
,p_updated_on=>wwv_flow_imp.dz('20250629031006Z')
,p_created_by=>'ILYASS'
,p_updated_by=>'USAMAAZUL'
);
wwv_flow_imp.component_end;
end;
/
