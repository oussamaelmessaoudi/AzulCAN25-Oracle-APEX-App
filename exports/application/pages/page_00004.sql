prompt --application/pages/page_00004
begin
--   Manifest
--     PAGE: 00004
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
 p_id=>4
,p_name=>'Hotel Details'
,p_alias=>'HOTEL-DETAILS'
,p_page_mode=>'MODAL'
,p_step_title=>'Hotel Details'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'03'
,p_created_on=>wwv_flow_imp.dz('20250628204243Z')
,p_last_updated_on=>wwv_flow_imp.dz('20250629041731Z')
,p_created_by=>'USAMAAZUL'
,p_last_updated_by=>'ILYASS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8730914774552611)
,p_plug_name=>'MAP'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_lazy_loading=>true
,p_plug_source_type=>'NATIVE_MAP_REGION'
,p_created_on=>wwv_flow_imp.dz('20250629030701Z')
,p_updated_on=>wwv_flow_imp.dz('20250629041731Z')
,p_created_by=>'ILYASS'
,p_updated_by=>'ILYASS'
);
wwv_flow_imp_page.create_map_region(
 p_id=>wwv_flow_imp.id(8731092022552612)
,p_region_id=>wwv_flow_imp.id(8730914774552611)
,p_height=>640
,p_navigation_bar_type=>'FULL'
,p_navigation_bar_position=>'END'
,p_init_position_zoom_type=>'QUERY_RESULTS'
,p_layer_messages_position=>'BELOW'
,p_legend_position=>'END'
,p_features=>'SCALE_BAR:INFINITE_MAP:RECTANGLE_ZOOM'
,p_updated_on=>wwv_flow_imp.dz('20250629041731Z')
,p_updated_by=>'ILYASS'
);
wwv_flow_imp_page.create_map_region_layer(
 p_id=>wwv_flow_imp.id(8731138940552613)
,p_map_region_id=>wwv_flow_imp.id(8731092022552612)
,p_name=>'new'
,p_layer_type=>'POINT'
,p_display_sequence=>10
,p_location=>'LOCAL'
,p_query_type=>'TABLE'
,p_table_name=>'HOTELS'
,p_where_clause=>'HOTEL_ID= :P4_ID'
,p_include_rowid_column=>true
,p_has_spatial_index=>false
,p_pk_column=>'HOTEL_ID'
,p_geometry_column_data_type=>'LONLAT_COLUMNS'
,p_longitude_column=>'COORDINATES_LONGITUDE'
,p_latitude_column=>'COORDINATES_LATITUDE'
,p_fill_color=>'#d30a0a'
,p_point_display_type=>'SVG'
,p_point_svg_shape=>'Default'
,p_feature_clustering=>false
,p_tooltip_adv_formatting=>true
,p_tooltip_html_expr=>'<h6>&HOTEL_NAME.</h6>'
,p_info_window_adv_formatting=>false
,p_allow_hide=>true
,p_updated_on=>wwv_flow_imp.dz('20250629041731Z')
,p_updated_by=>'ILYASS'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(8731619251552618)
,p_name=>'More Information'
,p_parent_plug_id=>wwv_flow_imp.id(8730914774552611)
,p_display_sequence=>10
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'       PHONE,',
'       STARS,',
'       ADDRESS,',
'       PRICE_USD,',
'       HOTEL_NAME,',
'       DISTANCE_TO_STADIUM_KM',
'  from HOTELS',
' where HOTEL_ID= :P4_ID'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P4_ID'
,p_lazy_loading=>false
,p_query_row_template=>2115772683903439354
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
,p_created_on=>wwv_flow_imp.dz('20250629040511Z')
,p_updated_on=>wwv_flow_imp.dz('20250629041259Z')
,p_created_by=>'ILYASS'
,p_updated_by=>'ILYASS'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8731803801552620)
,p_query_column_id=>1
,p_column_alias=>'PHONE'
,p_column_display_sequence=>20
,p_column_heading=>'Phone'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20250629041218Z')
,p_updated_by=>'ILYASS'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8731975322552621)
,p_query_column_id=>2
,p_column_alias=>'STARS'
,p_column_display_sequence=>30
,p_column_heading=>'Stars'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20250629041218Z')
,p_updated_by=>'ILYASS'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8732091199552622)
,p_query_column_id=>3
,p_column_alias=>'ADDRESS'
,p_column_display_sequence=>40
,p_column_heading=>'Address'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20250629041218Z')
,p_updated_by=>'ILYASS'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8732367043552625)
,p_query_column_id=>4
,p_column_alias=>'PRICE_USD'
,p_column_display_sequence=>70
,p_column_heading=>'Price Usd'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20250629041218Z')
,p_updated_by=>'ILYASS'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8732474882552626)
,p_query_column_id=>5
,p_column_alias=>'HOTEL_NAME'
,p_column_display_sequence=>80
,p_column_heading=>'Hotel Name'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20250629041218Z')
,p_updated_by=>'ILYASS'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8732992111552631)
,p_query_column_id=>6
,p_column_alias=>'DISTANCE_TO_STADIUM_KM'
,p_column_display_sequence=>130
,p_column_heading=>'Distance To Stadium Km'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20250629041218Z')
,p_updated_by=>'ILYASS'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8730742038552609)
,p_name=>'P4_ID'
,p_item_sequence=>10
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250629030351Z')
,p_updated_on=>wwv_flow_imp.dz('20250629030357Z')
,p_created_by=>'ILYASS'
,p_updated_by=>'ILYASS'
);
wwv_flow_imp.component_end;
end;
/
