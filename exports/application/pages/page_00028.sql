prompt --application/pages/page_00028
begin
--   Manifest
--     PAGE: 00028
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
 p_id=>28
,p_name=>'info_offre'
,p_alias=>'INFO-OFFRE'
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\202FSee Offer')
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Drawer {',
'    background-color: #ffffff; /* White background for better contrast */',
'    color: #161616; /* Dark text for readability */',
'    font-size: 29px; /* Increase font size for visibility */',
'    padding: 2px; /* Add padding for spacing */',
'    border: 1px solid #cccccc; /* Add a subtle border */',
'    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Add a shadow for depth */',
'}',
'.a-CardView-item {',
'    margin-top: 5%;',
'    margin-bottom: 12%;',
'    height: 80%;',
'    width: 90% ;',
'    background-color: ##D6CAC4;',
'}'))
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'23'
,p_created_on=>wwv_flow_imp.dz('20250629082229Z')
,p_last_updated_on=>wwv_flow_imp.dz('20250629114646Z')
,p_created_by=>'ILYASS'
,p_last_updated_by=>'ILYASS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8734179553552643)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--removeHeader js-removeLandmark:t-Form--standardPadding:t-Form--xlarge:t-Form--stretchInputs:t-Region-orderBy--center:margin-bottom-none:margin-left-md:margin-right-sm'
,p_plug_template=>2072724515482255512
,p_plug_display_sequence=>40
,p_query_type=>'TABLE'
,p_query_table=>'VUE_ENTREPRISE_VOITURE'
,p_query_where=>'ID_ENTREPRISE = :P28_ENTREPRIS_ID'
,p_include_rowid_column=>false
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_ajax_items_to_submit=>'P28_ENTREPRIS_ID'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
,p_created_on=>wwv_flow_imp.dz('20250629084145Z')
,p_updated_on=>wwv_flow_imp.dz('20250629113708Z')
,p_created_by=>'ILYASS'
,p_updated_by=>'ILYASS'
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(9056745873057642)
,p_region_id=>wwv_flow_imp.id(8734179553552643)
,p_layout_type=>'ROW'
,p_title_adv_formatting=>false
,p_title_column_name=>'MODELE'
,p_sub_title_adv_formatting=>false
,p_sub_title_column_name=>'MARQUE'
,p_body_adv_formatting=>false
,p_body_column_name=>'PRIX'
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
,p_media_source_type=>'STATIC_URL'
,p_media_url=>'&IMAGE.'
,p_media_display_position=>'BODY'
,p_media_sizing=>'FIT'
,p_updated_on=>wwv_flow_imp.dz('20250629100842Z')
,p_updated_by=>'ILYASS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9131982483606704)
,p_plug_name=>'Reserve Now'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>60
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250629102430Z')
,p_updated_on=>wwv_flow_imp.dz('20250629114133Z')
,p_created_by=>'ILYASS'
,p_updated_by=>'ILYASS'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9132885726606713)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(9131982483606704)
,p_button_name=>'New'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Reserve '
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
,p_created_on=>wwv_flow_imp.dz('20250629103110Z')
,p_updated_on=>wwv_flow_imp.dz('20250629114133Z')
,p_created_by=>'ILYASS'
,p_updated_by=>'ILYASS'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9134757738606732)
,p_name=>'P28_OFFER_ID'
,p_item_sequence=>70
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250629113603Z')
,p_updated_on=>wwv_flow_imp.dz('20250629114646Z')
,p_created_by=>'ILYASS'
,p_updated_by=>'ILYASS'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9134815892606733)
,p_name=>'P28_CAR_ID'
,p_item_sequence=>80
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250629113603Z')
,p_updated_on=>wwv_flow_imp.dz('20250629114646Z')
,p_created_by=>'ILYASS'
,p_updated_by=>'ILYASS'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9134929357606734)
,p_name=>'P28_ENTREPRIS_ID'
,p_item_sequence=>90
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250629113603Z')
,p_updated_on=>wwv_flow_imp.dz('20250629114646Z')
,p_created_by=>'ILYASS'
,p_updated_by=>'ILYASS'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9135062635606735)
,p_name=>'P28_DATEDEBUT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(9131982483606704)
,p_prompt=>'Datedebut'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250629114133Z')
,p_updated_on=>wwv_flow_imp.dz('20250629114133Z')
,p_created_by=>'ILYASS'
,p_updated_by=>'ILYASS'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9135140058606736)
,p_name=>'P28_DATEFIN'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(9131982483606704)
,p_prompt=>'Datefin'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250629114133Z')
,p_updated_on=>wwv_flow_imp.dz('20250629114133Z')
,p_created_by=>'ILYASS'
,p_updated_by=>'ILYASS'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9132954818606714)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(9132885726606713)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_created_on=>wwv_flow_imp.dz('20250629103237Z')
,p_updated_on=>wwv_flow_imp.dz('20250629114228Z')
,p_created_by=>'ILYASS'
,p_updated_by=>'ILYASS'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9134689757606731)
,p_event_id=>wwv_flow_imp.id(9132954818606714)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'INSERT INTO RESERVATION (',
'    ID_VOITURE,',
'    ID_OFFRE,',
'    ID_CARE,',
'    ID_USER,',
'    DATE_DEBUT,',
'    DATE_FIN',
') VALUES (',
'    :P28_ENTREPRIS_ID,           -- ID_VOITURE',
'    :P28_OFFER_ID,           -- ID_OFFRE',
'    :P28_CAR_ID,           -- ID_CARE',
'    :APP_USER,           -- ID_USER',
'    :P28_DATEDEBUT,  -- DATE_DEBUT',
'    :P28_DATEFIN  -- DATE_FIN',
');',
''))
,p_attribute_02=>'P28_ENTREPRIS_ID,P28_OFFER_ID,P28_CAR_ID,P28_DATEDEBUT,P28_DATEFIN'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_created_on=>wwv_flow_imp.dz('20250629112438Z')
,p_updated_on=>wwv_flow_imp.dz('20250629114228Z')
,p_created_by=>'ILYASS'
,p_updated_by=>'ILYASS'
);
wwv_flow_imp.component_end;
end;
/
