prompt --application/pages/page_00015
begin
--   Manifest
--     PAGE: 00015
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
 p_id=>15
,p_name=>'HOTELS'
,p_alias=>'HOTELS'
,p_step_title=>'HOTELS'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>'fa-star'
,p_step_template=>2526643373347724467
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'22'
,p_last_updated_on=>wwv_flow_imp.dz('20250629092429Z')
,p_last_updated_by=>'ABDELLAH'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7930903343034919)
,p_plug_name=>'Search Results'
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--hideHeader js-addHiddenHeadingRoleDesc:t-CardsRegion--styleB:t-Form--noPadding:t-Form--xlarge'
,p_plug_template=>2072724515482255512
,p_plug_display_sequence=>20
,p_query_type=>'TABLE'
,p_query_table=>'HOTELS'
,p_include_rowid_column=>false
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_updated_on=>wwv_flow_imp.dz('20250629032044Z')
,p_updated_by=>'ILYASS'
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(7934281794034926)
,p_region_id=>wwv_flow_imp.id(7930903343034919)
,p_layout_type=>'GRID'
,p_title_adv_formatting=>false
,p_title_column_name=>'HOTEL_NAME'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_body_column_name=>'ADDRESS'
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
,p_media_source_type=>'STATIC_URL'
,p_media_url=>'&PHOTO.'
,p_media_display_position=>'FIRST'
,p_media_appearance=>'WIDESCREEN'
,p_media_sizing=>'COVER'
,p_updated_on=>wwv_flow_imp.dz('20250629032044Z')
,p_updated_by=>'ILYASS'
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(7943180506096809)
,p_card_id=>wwv_flow_imp.id(7934281794034926)
,p_action_type=>'BUTTON'
,p_position=>'PRIMARY'
,p_display_sequence=>10
,p_label=>'View Details'
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:CR,4:P4_ID:&HOTEL_ID.'
,p_button_display_type=>'TEXT'
,p_is_hot=>false
,p_updated_on=>wwv_flow_imp.dz('20250629032044Z')
,p_updated_by=>'ILYASS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7931017279034919)
,p_plug_name=>'Search'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>4
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_source_type=>'NATIVE_FACETED_SEARCH'
,p_filtered_region_id=>wwv_flow_imp.id(7930903343034919)
,p_landmark_label=>'Filters'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'batch_facet_search', 'N',
  'compact_numbers_threshold', '10000',
  'current_facets_selector', '#active_facets',
  'display_chart_for_top_n_values', '10',
  'show_charts', 'Y',
  'show_current_facets', 'E',
  'show_total_row_count', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7933071686034923)
,p_plug_name=>'Button Bar'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noPadding:t-ButtonRegion--noUI'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>'<div id="active_facets"></div>'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7933586224034924)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(7933071686034923)
,p_button_name=>'RESET'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:15:&APP_SESSION.::&DEBUG.:RR,15::'
,p_icon_css_classes=>'fa-undo'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7931579143034919)
,p_name=>'P15_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(7931017279034919)
,p_prompt=>'Search'
,p_source=>'CITY,PHONE,ADDRESS,WEBSITE,HOTEL_ID,HOTEL_NAME,PRICE_RANGE,NEAREST_STADIUM'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_SEARCH'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'collapsed_search_field', 'N',
  'input_field', 'FACET',
  'search_type', 'ROW')).to_clob
,p_fc_collapsible=>false
,p_fc_initial_collapsed=>false
,p_fc_show_chart=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7931986829034920)
,p_name=>'P15_STARS'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(7931017279034919)
,p_prompt=>'Stars'
,p_source=>'STARS'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov_sort_direction=>'ASC'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
,p_fc_collapsible=>false
,p_fc_initial_collapsed=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>7
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_chart=>true
,p_fc_initial_chart=>false
,p_fc_actions_filter=>true
,p_fc_display_as=>'INLINE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7932337964034921)
,p_name=>'P15_PRICE_USD'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(7931017279034919)
,p_prompt=>'Price Usd'
,p_source=>'PRICE_USD'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_RANGE'
,p_lov=>'STATIC2:<100;|100,100 - 150;100|150,150 - 200;150|200,200 - 300;200|300,>=300;300|'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'manual_entry', 'N',
  'select_multiple', 'Y')).to_clob
,p_fc_collapsible=>false
,p_fc_initial_collapsed=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>7
,p_fc_filter_values=>false
,p_fc_show_chart=>true
,p_fc_initial_chart=>false
,p_fc_actions_filter=>true
,p_fc_display_as=>'INLINE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7932776259034923)
,p_name=>'P15_DISTANCE_TO_STADIUM_KM'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(7931017279034919)
,p_prompt=>'Distance To Stadium Km'
,p_source=>'DISTANCE_TO_STADIUM_KM'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_RANGE'
,p_lov=>'STATIC2:<3;|3,3 - 4#D#2;3|4.2,4#D#2 - 5;4.2|5,5 - 6;5|6,>=6;6|'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'manual_entry', 'N',
  'select_multiple', 'Y')).to_clob
,p_fc_collapsible=>false
,p_fc_initial_collapsed=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>7
,p_fc_filter_values=>false
,p_fc_show_chart=>true
,p_fc_initial_chart=>false
,p_fc_actions_filter=>true
,p_fc_display_as=>'INLINE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8425635974116724)
,p_name=>'New_1'
,p_event_sequence=>20
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function afficherMessage() {',
'  console.log("Hello Zord");',
'}',
'',
'',
''))
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function afficherMessage() {',
'  console.log("Hello Zord");',
'}',
''))
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_created_on=>wwv_flow_imp.dz('20250629045923Z')
,p_updated_on=>wwv_flow_imp.dz('20250629045923Z')
,p_created_by=>'NOUREDDINE'
,p_updated_by=>'NOUREDDINE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8425786996116725)
,p_event_id=>wwv_flow_imp.id(8425635974116724)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'JAVASCRIPT_EXPRESSION'
,p_affected_elements=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function afficherMessage() {',
'  console.log("Hello Zord");',
'}',
''))
,p_client_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_client_condition_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function afficherMessage() {',
'  console.log("Hello Zord");',
'}',
''))
,p_created_on=>wwv_flow_imp.dz('20250629045923Z')
,p_updated_on=>wwv_flow_imp.dz('20250629045923Z')
,p_created_by=>'NOUREDDINE'
,p_updated_by=>'NOUREDDINE'
);
wwv_flow_imp.component_end;
end;
/
