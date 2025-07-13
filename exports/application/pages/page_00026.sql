prompt --application/pages/page_00026
begin
--   Manifest
--     PAGE: 00026
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
 p_id=>26
,p_name=>'Pharmacies'
,p_alias=>'PHARMACIES'
,p_step_title=>'Pharmacies'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'22'
,p_last_updated_on=>wwv_flow_imp.dz('20250629115048Z')
,p_last_updated_by=>'ILYASS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8386675215929651)
,p_plug_name=>'Pharmacies'
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--hideHeader js-addHiddenHeadingRoleDesc:t-CardsRegion--styleC'
,p_plug_template=>2072724515482255512
,p_plug_display_sequence=>20
,p_query_type=>'TABLE'
,p_query_table=>'PHARMACIES'
,p_include_rowid_column=>false
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_updated_on=>wwv_flow_imp.dz('20250629115048Z')
,p_updated_by=>'ILYASS'
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(8387113765929653)
,p_region_id=>wwv_flow_imp.id(8386675215929651)
,p_layout_type=>'GRID'
,p_title_adv_formatting=>false
,p_title_column_name=>'PHARMACY_NAME'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_body_column_name=>'ADDRESS'
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
,p_pk1_column_name=>'PHARMACY_NAME'
,p_updated_on=>wwv_flow_imp.dz('20250629115048Z')
,p_updated_by=>'ILYASS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9135288605606737)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source_type=>'NATIVE_FACETED_SEARCH'
,p_filtered_region_id=>wwv_flow_imp.id(8386675215929651)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'batch_facet_search', 'N',
  'compact_numbers_threshold', '10000',
  'display_chart_for_top_n_values', '10',
  'show_charts', 'Y',
  'show_current_facets', 'N',
  'show_total_row_count', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250629114920Z')
,p_updated_on=>wwv_flow_imp.dz('20250629115007Z')
,p_created_by=>'ILYASS'
,p_updated_by=>'ILYASS'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9135307938606738)
,p_name=>'P26_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(9135288605606737)
,p_prompt=>'Search'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_SEARCH'
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'input_field', 'FACET',
  'search_type', 'ROW')).to_clob
,p_fc_show_chart=>false
,p_created_on=>wwv_flow_imp.dz('20250629114921Z')
,p_updated_on=>wwv_flow_imp.dz('20250629114921Z')
,p_created_by=>'ILYASS'
,p_updated_by=>'ILYASS'
);
wwv_flow_imp.component_end;
end;
/
