prompt --application/shared_components/navigation/lists/hotel_details
begin
--   Manifest
--     LIST: Hotel Details
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.5'
,p_default_workspace_id=>7794158111401143
,p_default_application_id=>105
,p_default_id_offset=>0
,p_default_owner=>'WKSP_AZULCAN25'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(8468733085528848)
,p_name=>'Hotel Details'
,p_list_status=>'PUBLIC'
,p_version_scn=>44963723879688
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(8470164021528851)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Step 1'
,p_list_item_link_target=>'f?p=&APP_ID.:41:&APP_SESSION.::&DEBUG.:::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(8474493791528867)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Step 2'
,p_list_item_link_target=>'f?p=&APP_ID.:42:&APP_SESSION.::&DEBUG.:::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(8479406837528871)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Step 3'
,p_list_item_link_target=>'f?p=&APP_ID.:43:&APP_SESSION.::&DEBUG.:::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
