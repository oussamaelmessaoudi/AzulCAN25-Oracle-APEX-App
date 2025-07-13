prompt --application/pages/page_00001
begin
--   Manifest
--     PAGE: 00001
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
 p_id=>1
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'AZUL CAN 25'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.a-CardView-actions{',
'  display: absolute;',
'  justify-content: center; /* horizontal centering */',
'  align-items: center;     /* vertical centering */',
'}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'13'
,p_last_updated_on=>wwv_flow_imp.dz('20250629115046Z')
,p_last_updated_by=>'USAMAAZUL'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7977248666477907)
,p_plug_name=>'Hero'
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="',
'  background-image: url(''#APP_FILES#Untitled-3.png'');',
'  background-size: cover;',
'  background-position: center;',
'  background-repeat: no-repeat;',
'  min-height: 100vh;',
'  display: flex;',
'  flex-direction: column;',
'  align-items: center;',
'  justify-content: center;',
'  text-align: center;',
'  margin : -35px -35px 0px -36px;',
'',
'">',
'',
'  <img src="#APP_FILES#Untitled-1.png"',
'       alt="Logo"',
'       style="',
'         max-width: min(100vw, 1000px);',
'         height: auto;',
'         animation: logoFloat 6s ease-in-out infinite;',
'         margin-bottom: 20px;',
'         filter: drop-shadow(0 0 20px rgba(0,0,0,1.5));',
'         margin: -30px 0 0 0;',
'       ">',
'',
'  <div style="',
'  font-size: 30px;',
'  color: #fff;',
'  text-shadow: 0 0 5px rgba(0,0,0,1.5);',
'  font-family: ''Poppins'', sans-serif;',
'">',
'  Services you are looking for ...',
'</div>',
'</div>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_updated_on=>wwv_flow_imp.dz('20250629113342Z')
,p_updated_by=>'ABDELLAH'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7978029300477915)
,p_plug_name=>'Fixtures & Fanzones'
,p_plug_display_sequence=>60
,p_plug_new_grid_row=>false
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="padding-down:15px;height: 1px; background-color: #f2f2f2; width: 100%; margin: 1rem 0;"></div>',
'',
'<div style="display: flex; flex-direction: column; align-items: flex-start; padding: 1rem;">',
'  <h2 style="font-size: 2rem; font-weight: 700;">',
'    <span>Fixtures  </span>',
'    <span >& Fanzones</span>',
'  </h2>',
'  <p style="color: #444; max-width: 600px;">',
'Explore matchday schedules and vibrant fan zones designed to elevate your experience. From stadium fixtures to nearby entertainment, food, and essential amenities, everything is set to keep your passion alive and your comfort in check.  </p>',
'</div>',
''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250628213216Z')
,p_updated_on=>wwv_flow_imp.dz('20250629112119Z')
,p_created_by=>'USAMAAZUL'
,p_updated_by=>'USAMAAZUL'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8605392376422601)
,p_plug_name=>'new'
,p_parent_plug_id=>wwv_flow_imp.id(7978029300477915)
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--hideHeader js-addHiddenHeadingRoleDesc'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2072724515482255512
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'  t1.flag AS team1_flag,',
'  t1.name AS team1_name,',
'  t2.flag AS team2_flag,',
'  t2.name AS team2_name,',
'  f.stadium,',
'  TO_CHAR(f.date_, ''YYYY-MM-DD'') AS match_day,',
'  f.time AS match_time,',
'  f.round AS ROUND,',
'  f.ID as fixture_id',
'  ',
'FROM',
'  fixtures f',
'JOIN teams t1 ON f.team_id1 = t1.id',
'JOIN teams t2 ON f.team_id2 = t2.id',
'',
'ORDER BY f.date_;',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
,p_created_on=>wwv_flow_imp.dz('20250628224509Z')
,p_updated_on=>wwv_flow_imp.dz('20250629110012Z')
,p_created_by=>'USAMAAZUL'
,p_updated_by=>'USAMAAZUL'
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(8605415269422602)
,p_region_id=>wwv_flow_imp.id(8605392376422601)
,p_layout_type=>'GRID'
,p_grid_column_count=>2
,p_title_adv_formatting=>true
,p_title_html_expr=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="text-align: center; font-weight: bold; font-size: 16px;">',
'  &ROUND. ',
'</div>',
''))
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>true
,p_body_html_expr=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="font-size: 13px; text-align: center; color: #555;">',
unistr('  \D83C\DFDF\FE0F &STADIUM.<br>'),
unistr('  \D83D\DDD3\FE0F &MATCH_DAY. at &MATCH_TIME.'),
'</div>',
''))
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>true
,p_media_html_expr=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="display: flex; align-items: center; justify-content: center; gap: 16px; padding: 8px 0;">',
'  <div style="text-align: center;">',
'    <img src="&TEAM1_FLAG." alt="#TEAM1_NAME#" style="width: 90px; height: 60px; border-radius: 6px;"><br>',
'    <span style="font-size: 13px; font-weight: bold;">&TEAM1_NAME.</span>',
'  </div>',
'  <div style="font-size: 26px; font-weight: bold; color: #444;">vs</div>',
'  <div style="text-align: center;">',
'    <img src="&TEAM2_FLAG." alt="#TEAM2_NAME#" style="width: 90px; height: 60px; border-radius: 6px;"><br>',
'    <span style="font-size: 13px; font-weight: bold;">&TEAM2_NAME.</span>',
'  </div>',
'</div>',
''))
,p_media_display_position=>'BODY'
,p_pk1_column_name=>'TEAM1_FLAG'
,p_pk2_column_name=>'TEAM2_FLAG'
,p_updated_on=>wwv_flow_imp.dz('20250629100439Z')
,p_updated_by=>'USAMAAZUL'
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(8606057019422608)
,p_card_id=>wwv_flow_imp.id(8605415269422602)
,p_action_type=>'BUTTON'
,p_position=>'PRIMARY'
,p_display_sequence=>10
,p_label=>'View Fan Zones'
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.::P8_ID:&FIXTURE_ID.'
,p_link_attributes=>'&FIXTURE_ID.'
,p_button_display_type=>'TEXT'
,p_action_css_classes=>'.exampleCard-icon {   background-color: var(--ut-component-icon-background-color);   color: var(--ut-component-icon-color);   inline-size: 48px;   block-size: 48px;   font-size: 24px;   border-radius: inherit;   display: flex;   justify-content: cent'
||'er;  '
,p_is_hot=>true
,p_updated_on=>wwv_flow_imp.dz('20250629094933Z')
,p_updated_by=>'USAMAAZUL'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8846059509881310)
,p_plug_name=>'New'
,p_parent_plug_id=>wwv_flow_imp.id(7978029300477915)
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'  f.id AS fixture_id,',
'  f.stadium,',
'  TO_CHAR(f.date_, ''YYYY-MM-DD'') AS match_day,',
'  f.time AS match_time,',
'  f.round AS round,',
'  fz.zone_id,',
'  fz.location AS fan_zone_location,',
'  TO_CHAR(fz.date_, ''YYYY-MM-DD'') AS fan_zone_date,',
'  fz.opening_time,',
'  fz.closing_time,',
'  ac.id_acitivite,',
'  ac.activite',
'FROM',
'  fixtures f',
'LEFT JOIN fan_zone fz ON fz.fixture_id = f.id',
'LEFT JOIN activities ac ON ac.id_zone = fz.zone_id',
'ORDER BY f.date_;',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
,p_required_patch=>wwv_flow_imp.id(7836034754589275)
,p_created_on=>wwv_flow_imp.dz('20250629061650Z')
,p_updated_on=>wwv_flow_imp.dz('20250629110012Z')
,p_created_by=>'USAMAAZUL'
,p_updated_by=>'USAMAAZUL'
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(8846161701881311)
,p_region_id=>wwv_flow_imp.id(8846059509881310)
,p_layout_type=>'GRID'
,p_title_adv_formatting=>false
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
,p_updated_on=>wwv_flow_imp.dz('20250629062936Z')
,p_updated_by=>'USAMAAZUL'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9087628015301717)
,p_plug_name=>'New'
,p_plug_display_sequence=>50
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="padding-down:15px;height: 1px; background-color: #f2f2f2; width: 100%; margin: 1rem 0; padding_down:5px;"></div>',
'',
'<div style="display: flex; flex-direction: column; align-items: flex-start; padding: 1rem;">',
'  <h2 style="font-size: 2rem; font-weight: 700;">',
'    <span>Nearby  </span>',
'    <span >Services</span>',
'  </h2>',
'  <p style="color: #444; max-width: 600px;  padding-bottom: 13px;">',
'Essential services and amenities near medical facilities to support your healthcare needs and comfort.  </p>',
'</div>',
''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250629104345Z')
,p_updated_on=>wwv_flow_imp.dz('20250629113306Z')
,p_created_by=>'USAMAAZUL'
,p_updated_by=>'USAMAAZUL'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8609454929422642)
,p_plug_name=>'Nearby Pharmacies'
,p_parent_plug_id=>wwv_flow_imp.id(9087628015301717)
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2072724515482255512
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT * FROM (SELECT ',
'    PHARMACY_NAME,',
'    ADDRESS,',
'    CITY,',
'    ROUND(',
'        6371 * ACOS(',
'            LEAST(1, GREATEST(-1,',
'                COS(33.589886 * (3.14159265 / 180)) *',
'                COS((:P1_LATITUDE) * (3.14159265 / 180)) *',
'                COS(((:P1_LONGITUDE) - -7.603869) * (3.14159265 / 180)) +',
'                SIN(33.589886 * (3.14159265 / 180)) *',
'                SIN((:P1_LATITUDE) * (3.14159265 / 180))',
'            ))',
'        ), 2',
'    ) AS DISTANCE_KM',
'FROM PHARMACIES)',
'-- WHERE DISTANCE_KM <= 15',
'ORDER BY DISTANCE_KM',
'FETCH FIRST 10 ROWS ONLY;',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_ajax_items_to_submit=>'P1_LATITUDE,P1_LONGITUDE'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
,p_created_on=>wwv_flow_imp.dz('20250629041742Z')
,p_updated_on=>wwv_flow_imp.dz('20250629113200Z')
,p_created_by=>'USAMAAZUL'
,p_updated_by=>'USAMAAZUL'
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(9087887448301719)
,p_region_id=>wwv_flow_imp.id(8609454929422642)
,p_layout_type=>'GRID'
,p_title_adv_formatting=>false
,p_title_column_name=>'PHARMACY_NAME'
,p_sub_title_adv_formatting=>false
,p_sub_title_column_name=>'CITY'
,p_body_adv_formatting=>false
,p_body_column_name=>'ADDRESS'
,p_second_body_adv_formatting=>false
,p_icon_source_type=>'STATIC_CLASS'
,p_icon_css_classes=>'fa-map-marker-check-o'
,p_icon_position=>'START'
,p_badge_column_name=>'DISTANCE_KM'
,p_media_adv_formatting=>false
,p_updated_on=>wwv_flow_imp.dz('20250629113200Z')
,p_updated_by=>'USAMAAZUL'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9087756602301718)
,p_plug_name=>'New'
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_05'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html lang="en">',
'<head>',
'    <meta charset="UTF-8">',
'    <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'    <title>Footer</title>',
'    <!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.0/font/bootstrap-icons.css" rel="stylesheet"> -->',
'    <style>',
'        * {',
'            margin: 0;',
'            padding: 0;',
'            box-sizing: border-box;',
'        }',
'',
'        body {',
'            font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif;',
'            line-height: 1.5;',
'        }',
'',
'        .footer-clean {',
'            padding: 0.5rem 0;',
'            background-color: none;',
'',
'            width: 100%;',
'            margin: 0;',
'        }',
'',
'        .container {',
'            max-width: 100%;',
'            width: 100%;',
'            margin: 0;',
'            padding: 0 20px;',
'        }',
'',
'        .row {',
'            display: flex;',
'            flex-wrap: wrap;',
'            justify-content: center;',
'            margin: 0;',
'            width: 100%;',
'        }',
'',
'        .col-sm-4,',
'        .col-md-3,',
'        .col-lg-3 {',
'            flex: 0 0 auto;',
'            padding: 0 20px;',
'        }',
'',
'        .item {',
'            margin-bottom: 1.5rem;',
'        }',
'',
'        .item h3 {',
'            font-size: 1.25rem;',
'            margin-bottom: 1rem;',
'            color: #212529;',
'            font-weight: 600;',
'        }',
'',
'        .item ul {',
'            list-style: none;',
'            padding: 0;',
'        }',
'',
'        .item ul li {',
'            margin-bottom: 0.5rem;',
'        }',
'',
'        .item ul li a {',
'            color: #6c757d;',
'            text-decoration: none;',
'            transition: color 0.15s;',
'        }',
'',
'        .item ul li a:hover {',
'            color: #495057;',
'            text-decoration: underline;',
'        }',
'',
'        .social {',
'            text-align: center;',
'        }',
'',
'        .social a {',
'            display: inline-block;',
'            margin: 0 10px;',
'            color: #6c757d;',
'            font-size: 1.5rem;',
'            text-decoration: none;',
'            transition: color 0.15s;',
'        }',
'',
'        .social a:hover {',
'            color: #495057;',
'        }',
'',
'        .copyright {',
'            margin-top: 1rem;',
'            color: #6c757d;',
'            font-size: 0.875rem;',
'        }',
'',
'        .align {',
'            text-align: center;',
'        }',
'',
'        /* Responsive breakpoints */',
'        @media (min-width: 576px) {',
'            .col-sm-4 {',
'                width: 33.333333%;',
'            }',
'        }',
'',
'        @media (min-width: 768px) {',
'            .col-md-3 {',
'                width: 25%;',
'            }',
'        }',
'',
'        @media (min-width: 992px) {',
'            .col-lg-3 {',
'                width: 25%;',
'            }',
'        }',
'',
'        @media (max-width: 575px) {',
'            .col-sm-4,',
'            .col-md-3,',
'            .col-lg-3 {',
'                width: 100%;',
'                text-align: center;',
'                padding: 0 10px;',
'            }',
'            ',
'            .container {',
'                padding: 0 10px;',
'            }',
'            ',
'            .item {',
'                margin-bottom: 2rem;',
'            }',
'        }',
'    </style>',
'</head>',
'<body>',
'    <div class="footer-clean">',
'        <div class="container">',
'            <div class="row">',
'                <div class="col-sm-4 col-md-3 item">',
'                    <h3>Services</h3>',
'                    <ul>',
'                        <li><a href="#">Web design</a></li>',
'                        <li><a href="#">Development</a></li>',
'                        <li><a href="#">Hosting</a></li>',
'                    </ul>',
'                </div>',
'                <div class="col-sm-4 col-md-3 item">',
'                    <h3>About</h3>',
'                    <ul>',
'                        <li><a href="#">Company</a></li>',
'                        <li><a href="#">Team</a></li>',
'                        <li><a href="#">Legacy</a></li>',
'                    </ul>',
'                </div>',
'                <div class="col-sm-4 col-md-3 item">',
'                    <h3>Careers</h3>',
'                    <ul>',
'                        <li><a href="#">Job openings</a></li>',
'                        <li><a href="#">Employee success</a></li>',
'                        <li><a href="#">Benefits</a></li>',
'                    </ul>',
'                </div>',
'                <div class="col-lg-3 item social">',
'                    <a href="#"><i class="bi bi-facebook"></i></a>',
'                    <a href="#" class="tw"><i class="bi bi-twitter"></i></a>',
'                    <a href="#"><i class="bi bi-envelope" id="ma"></i></a>',
'                    <a href="#"><i class="bi bi-instagram" id="in"></i></a>',
unistr('                    <p class="copyright align">AzulCAN25 \00A9 2025</p>'),
'                    <p>Your comprehensive guide to CAN25 in Agadir. Discover, book, and experience the best of Morocco''s premier football tournament.</p>',
'                </div>',
'            </div>',
'        </div>',
'    </div>',
'</body>',
'</html>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250629104839Z')
,p_updated_on=>wwv_flow_imp.dz('20250629113935Z')
,p_created_by=>'USAMAAZUL'
,p_updated_by=>'ABDELLAH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8846252175881312)
,p_name=>'P1_LATITUDE'
,p_item_sequence=>30
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250629062936Z')
,p_updated_on=>wwv_flow_imp.dz('20250629112330Z')
,p_created_by=>'USAMAAZUL'
,p_updated_by=>'USAMAAZUL'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8846336725881313)
,p_name=>'P1_LONGITUDE'
,p_item_sequence=>40
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250629062936Z')
,p_updated_on=>wwv_flow_imp.dz('20250629112330Z')
,p_created_by=>'USAMAAZUL'
,p_updated_by=>'USAMAAZUL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8847664744881326)
,p_name=>'New'
,p_event_sequence=>30
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_created_on=>wwv_flow_imp.dz('20250629070506Z')
,p_updated_on=>wwv_flow_imp.dz('20250629094212Z')
,p_created_by=>'USAMAAZUL'
,p_updated_by=>'USAMAAZUL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8847858692881328)
,p_event_id=>wwv_flow_imp.id(8847664744881326)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_GET_CURRENT_POSITION'
,p_attribute_01=>'lat_long'
,p_attribute_03=>'P1_LATITUDE'
,p_attribute_04=>'P1_LONGITUDE'
,p_attribute_06=>'N'
,p_wait_for_result=>'Y'
,p_created_on=>wwv_flow_imp.dz('20250629070749Z')
,p_updated_on=>wwv_flow_imp.dz('20250629094212Z')
,p_created_by=>'USAMAAZUL'
,p_updated_by=>'USAMAAZUL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8847785981881327)
,p_event_id=>wwv_flow_imp.id(8847664744881326)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(8609454929422642)
,p_attribute_01=>'N'
,p_created_on=>wwv_flow_imp.dz('20250629070506Z')
,p_updated_on=>wwv_flow_imp.dz('20250629090319Z')
,p_created_by=>'USAMAAZUL'
,p_updated_by=>'USAMAAZUL'
);
wwv_flow_imp.component_end;
end;
/
