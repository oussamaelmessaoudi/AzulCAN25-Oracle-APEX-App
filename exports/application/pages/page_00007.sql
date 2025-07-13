prompt --application/pages/page_00007
begin
--   Manifest
--     PAGE: 00007
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
 p_id=>7
,p_name=>'Give_comments'
,p_alias=>'GIVE-COMMENTS'
,p_page_mode=>'MODAL'
,p_step_title=>'Give Comments'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'11'
,p_created_on=>wwv_flow_imp.dz('20250628214148Z')
,p_last_updated_on=>wwv_flow_imp.dz('20250629030127Z')
,p_created_by=>'ILYASS'
,p_last_updated_by=>'ILYASS'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8636265657593550)
,p_button_sequence=>40
,p_button_name=>'SUBMIT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Submit'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
,p_created_on=>wwv_flow_imp.dz('20250629020236Z')
,p_updated_on=>wwv_flow_imp.dz('20250629020236Z')
,p_created_by=>'ILYASS'
,p_updated_by=>'ILYASS'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8633063968593518)
,p_name=>'P7_ID'
,p_item_sequence=>30
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250629005731Z')
,p_updated_on=>wwv_flow_imp.dz('20250629011857Z')
,p_created_by=>'ILYASS'
,p_updated_by=>'ILYASS'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8634963722593537)
,p_name=>'P7_NEW'
,p_item_sequence=>10
,p_use_cache_before_default=>'NO'
,p_prompt=>'entre comment'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#:js-hidePasswordVisibility:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--preTextBlock'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250629011629Z')
,p_updated_on=>wwv_flow_imp.dz('20250629030127Z')
,p_created_by=>'ILYASS'
,p_updated_by=>'ILYASS'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8730112236552603)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(8636265657593550)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_created_on=>wwv_flow_imp.dz('20250629023000Z')
,p_updated_on=>wwv_flow_imp.dz('20250629025759Z')
,p_created_by=>'ILYASS'
,p_updated_by=>'ILYASS'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8730492458552606)
,p_event_id=>wwv_flow_imp.id(8730112236552603)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'INSERT INTO COMMENTS (MSG_COMMENT, ID_RESTAURANTS)',
'VALUES (:P7_NEW, :P7_ID);',
''))
,p_attribute_02=>'P7_NEW'
,p_attribute_03=>'P7_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_created_on=>wwv_flow_imp.dz('20250629023000Z')
,p_updated_on=>wwv_flow_imp.dz('20250629023025Z')
,p_created_by=>'ILYASS'
,p_updated_by=>'ILYASS'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8730673704552608)
,p_event_id=>wwv_flow_imp.id(8730112236552603)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P7_NEW,P7_ID'
,p_created_on=>wwv_flow_imp.dz('20250629024348Z')
,p_updated_on=>wwv_flow_imp.dz('20250629025759Z')
,p_created_by=>'ILYASS'
,p_updated_by=>'ILYASS'
);
wwv_flow_imp.component_end;
end;
/
