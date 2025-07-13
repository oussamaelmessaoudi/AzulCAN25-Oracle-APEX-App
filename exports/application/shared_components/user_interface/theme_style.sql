prompt --application/shared_components/user_interface/theme_style
begin
--   Manifest
--     THEME STYLE: 105
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.5'
,p_default_workspace_id=>7794158111401143
,p_default_application_id=>105
,p_default_id_offset=>0
,p_default_owner=>'WKSP_AZULCAN25'
);
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(8004866513711979)
,p_theme_id=>42
,p_name=>'Vita (copy_1)'
,p_is_public=>true
,p_is_accessible=>true
,p_theme_roller_input_file_urls=>'#THEME_FILES#less/theme/Vita.less'
,p_theme_roller_config=>'{"classes":[],"vars":{"@g_Nav-Accent-BG":"#bd1616","@g_Nav-Accent-FG":"#ffffff","@g_Nav_Style":"dark"},"customCSS":"","useCustomLess":"N"}'
,p_theme_roller_output_file_url=>'#THEME_DB_FILES#8004866513711979.css'
,p_theme_roller_read_only=>false
);
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(8382547151913610)
,p_theme_id=>42
,p_name=>'Vita - Red (copy_1)'
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_FILES#less/theme/Vita-Red.less'
,p_theme_roller_config=>'{"classes":[],"vars":{"@g_Container-BorderRadius":"14px","@g_Nav_Style":"light","@g_Nav-Icon":"#b82211","@g_Nav-Icon-Active":"#b82211","@g_Header-BG":"#b82211","@g_Header-FG":"#ffffff","@g_Button-BG":"#b82211","@g_Button-Text":"#fbfbfb","@g_Button-Bo'
||'rderRadius":"6px","@Head-Height":"80px","@Nav-Exp":"15rem","@Actions-Exp":"12.5rem","@Side-Exp":"15rem","@g_Nav-BG":"#f0f0f0","@g_Nav-FG":"#b82211","@g_NavBarMenu-BG":"#ffffff","@g_NavBarMenu-FG":"#b82211","@g_Nav-Active-BG":"#e2c5c5","@g_Nav-Active-'
||'FG":"#b82211","@g_NavBarMenu-Active-BG":"#da1b1b","@g_NavBarMenu-Active-FG":"#fbf9f9"},"customCSS":"/* Completely hide hamburger menu and its container */\n.t-Header-controlsIcon,\n.t-Header-controlsIcon:before,\n.t-Header-controlsIcon::after {\n  di'
||'splay: none !important;\n  box-shadow: none !important;\n}\n\n/* Remove extra space left behind */\n.t-Header-controlsIcon {\n  padding-left: 0 !important;\n  margin-left: 0 !important;\n  margin-bottom: 0;\n}\n\n\n\n/* Increase font size of top navi'
||'gation bar items */\n.t-Header-nav .t-Header-nav-list .t-Header-nav-item a {\n  font-size: 18px !important;  /* Adjust as needed */\n  padding: 12px 16px;          /* Optional: more clickable area */\n}","useCustomLess":"N"}'
,p_theme_roller_output_file_url=>'#THEME_DB_FILES#8382547151913610.css'
,p_theme_roller_read_only=>false
,p_updated_on=>wwv_flow_imp.dz('20250629103500Z')
,p_updated_by=>'USAMAAZUL'
);
wwv_flow_imp.component_end;
end;
/
