prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
--   Manifest
--     MENU: Breadcrumb
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.5'
,p_default_workspace_id=>7794158111401143
,p_default_application_id=>105
,p_default_id_offset=>0
,p_default_owner=>'WKSP_AZULCAN25'
);
wwv_flow_imp_shared.create_menu(
 p_id=>wwv_flow_imp.id(7836661364589275)
,p_name=>'Breadcrumb'
,p_updated_on=>wwv_flow_imp.dz('20250629092530Z')
,p_updated_by=>'ABDELLAH'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(7836815260589276)
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(7930713476034918)
,p_short_name=>'HOTELS'
,p_link=>'f?p=&APP_ID.:15:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>15
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(8400879513942945)
,p_parent_id=>wwv_flow_imp.id(7836815260589276)
,p_short_name=>'buses'
,p_link=>'f?p=&APP_ID.:27:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>27
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(8462735393497818)
,p_short_name=>'Restaurants'
,p_link=>'f?p=&APP_ID.:40:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>40
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(8518564814891203)
,p_short_name=>'Fan Zone'
,p_link=>'f?p=&APP_ID.:5:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>5
,p_created_on=>wwv_flow_imp.dz('20250628211603Z')
,p_updated_on=>wwv_flow_imp.dz('20250628211603Z')
,p_created_by=>'USAMAAZUL'
,p_updated_by=>'USAMAAZUL'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(8962776116328140)
,p_short_name=>'Car Rental'
,p_link=>'f?p=&APP_ID.:25:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>25
,p_created_on=>wwv_flow_imp.dz('20250629064853Z')
,p_updated_on=>wwv_flow_imp.dz('20250629064853Z')
,p_created_by=>'ILYASS'
,p_updated_by=>'ILYASS'
);
wwv_flow_imp.component_end;
end;
/
