prompt --application/pages/page_00027
begin
--   Manifest
--     PAGE: 00027
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
 p_id=>27
,p_name=>'buses'
,p_alias=>'BUSES'
,p_step_title=>'buses'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
,p_last_updated_on=>wwv_flow_imp.dz('20250629082751Z')
,p_last_updated_by=>'NOUREDDINE'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8401052686942945)
,p_plug_name=>'buses'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>3371237801798025892
,p_plug_display_sequence=>20
,p_location=>null
,p_lazy_loading=>true
,p_plug_source_type=>'NATIVE_MAP_REGION'
,p_updated_on=>wwv_flow_imp.dz('20250629082751Z')
,p_updated_by=>'NOUREDDINE'
);
wwv_flow_imp_page.create_map_region(
 p_id=>wwv_flow_imp.id(8401438308942945)
,p_region_id=>wwv_flow_imp.id(8401052686942945)
,p_height=>640
,p_navigation_bar_type=>'FULL'
,p_navigation_bar_position=>'END'
,p_init_position_zoom_type=>'QUERY_RESULTS'
,p_init_zoomlevel_static=>'14'
,p_layer_messages_position=>'BELOW'
,p_legend_position=>'END'
,p_features=>'SCALE_BAR:INFINITE_MAP:RECTANGLE_ZOOM'
,p_updated_on=>wwv_flow_imp.dz('20250629082751Z')
,p_updated_by=>'NOUREDDINE'
);
wwv_flow_imp_page.create_map_region_layer(
 p_id=>wwv_flow_imp.id(8401908441942946)
,p_map_region_id=>wwv_flow_imp.id(8401438308942945)
,p_name=>'buses'
,p_layer_type=>'LINE'
,p_display_sequence=>10
,p_location=>'LOCAL'
,p_query_type=>'SQL'
,p_layer_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'  B.*,',
'  ''#'' || SUBSTR(STANDARD_HASH(B.PROPERTIES_REF, ''MD5''), 1, 6) AS COLOR_HEX',
'FROM ',
'  BUSES_NETWORK B',
'WHERE ',
'  :P27_NEW_1 is null or B.PROPERTIES_REF = :P27_NEW_1',
''))
,p_items_to_submit=>'P27_NEW_1'
,p_has_spatial_index=>false
,p_pk_column=>'ID_1'
,p_geometry_column_data_type=>'GEOJSON'
,p_geometry_column=>'GEOMETRY'
,p_stroke_color=>'&COLOR_HEX.'
,p_stroke_width=>2
,p_stroke_style=>'SOLID'
,p_tooltip_adv_formatting=>false
,p_tooltip_column=>'PROPERTIES_NAME'
,p_info_window_adv_formatting=>false
,p_allow_hide=>true
,p_updated_on=>wwv_flow_imp.dz('20250629081217Z')
,p_updated_by=>'ILYASS'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8733508020552637)
,p_name=>'P27_NEW_1'
,p_item_sequence=>10
,p_prompt=>'New'
,p_display_as=>'NATIVE_SELECT_ONE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT PROPERTIES_FROM,PROPERTIES_REF FROM BUSES_NETWORK',
'WHERE ROWNUM <=20 ',
''))
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'fetch_on_search', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250629071745Z')
,p_updated_on=>wwv_flow_imp.dz('20250629080921Z')
,p_created_by=>'ILYASS'
,p_updated_by=>'ILYASS'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8733696083552638)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P27_NEW_1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_created_on=>wwv_flow_imp.dz('20250629072645Z')
,p_updated_on=>wwv_flow_imp.dz('20250629074610Z')
,p_created_by=>'ILYASS'
,p_updated_by=>'ILYASS'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8733728236552639)
,p_event_id=>wwv_flow_imp.id(8733696083552638)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(8401052686942945)
,p_attribute_01=>'N'
,p_created_on=>wwv_flow_imp.dz('20250629072645Z')
,p_updated_on=>wwv_flow_imp.dz('20250629074610Z')
,p_created_by=>'ILYASS'
,p_updated_by=>'ILYASS'
);
wwv_flow_imp.component_end;
end;
/
