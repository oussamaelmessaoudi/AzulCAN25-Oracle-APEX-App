prompt --application/pages/page_00025
begin
--   Manifest
--     PAGE: 00025
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
 p_id=>25
,p_name=>'Car Rental'
,p_alias=>'CAR-RENTAL'
,p_step_title=>'Car Rental'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'23'
,p_created_on=>wwv_flow_imp.dz('20250629064853Z')
,p_last_updated_on=>wwv_flow_imp.dz('20250629114607Z')
,p_created_by=>'ILYASS'
,p_last_updated_by=>'ILYASS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8962915447328141)
,p_plug_name=>'Car Rental'
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2072724515482255512
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'VUE_ENTREPRISE_VOITURE'
,p_include_rowid_column=>false
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_created_on=>wwv_flow_imp.dz('20250629064853Z')
,p_updated_on=>wwv_flow_imp.dz('20250629114607Z')
,p_created_by=>'ILYASS'
,p_updated_by=>'ILYASS'
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(8963412681328141)
,p_region_id=>wwv_flow_imp.id(8962915447328141)
,p_layout_type=>'GRID'
,p_title_adv_formatting=>false
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>false
,p_second_body_column_name=>'ADRESSE'
,p_media_adv_formatting=>false
,p_media_source_type=>'STATIC_URL'
,p_media_url=>'&PHOTO_CARE.'
,p_media_display_position=>'FIRST'
,p_media_appearance=>'WIDESCREEN'
,p_media_sizing=>'COVER'
,p_updated_on=>wwv_flow_imp.dz('20250629114607Z')
,p_updated_by=>'ILYASS'
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(8733876464552640)
,p_card_id=>wwv_flow_imp.id(8963412681328141)
,p_action_type=>'BUTTON'
,p_position=>'PRIMARY'
,p_display_sequence=>10
,p_label=>unistr('\202FView Offer')
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:28:&SESSION.::&DEBUG.:CR,:P28_OFFER_ID,P28_ENTREPRIS_ID,P28_CAR_ID:\&ID_OFFRE.\,\&ID_ENTREPRISE.\,\&ID_VOITURE.\'
,p_button_display_type=>'TEXT'
,p_is_hot=>false
,p_updated_on=>wwv_flow_imp.dz('20250629114607Z')
,p_updated_by=>'ILYASS'
);
wwv_flow_imp.component_end;
end;
/
