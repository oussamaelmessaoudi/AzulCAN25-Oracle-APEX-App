prompt --application/shared_components/user_interface/templates/region/hospital_cards
begin
--   Manifest
--     REGION TEMPLATE: HOSPITAL_CARDS
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.5'
,p_default_workspace_id=>7794158111401143
,p_default_application_id=>105
,p_default_id_offset=>0
,p_default_owner=>'WKSP_AZULCAN25'
);
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(8042804989892239)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item">',
'  <div class="t-Card shadow-lg rounded-xl transition-transform hover:scale-105">',
'    <a href="#CARD_LINK#" class="t-Card-wrap block p-4">',
'      <div class="t-Card-icon u-color #CARD_COLOR# flex items-center justify-center mb-4">',
'        <span class="t-Icon fa fa-hospital-o text-2xl">',
'          <span class="t-Card-initials font-bold uppercase tracking-wider" role="presentation">',
'            #PHARMACY_INITIALS#',
'          </span>',
'        </span>',
'      </div>',
'      <div class="t-Card-titleWrap mb-2 text-center">',
'        <h3 class="t-Card-title text-xl font-semibold">#PHARMACY_NAME#</h3>',
'        <h4 class="t-Card-subtitle text-sm text-gray-500">#CITY#</h4>',
'      </div>',
'      <div class="t-Card-body text-sm text-gray-700">',
'        <div class="t-Card-desc mb-2">#ADDRESS#</div>',
'        <div class="t-Card-info text-xs font-medium text-gray-500">INPE: #INPE#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #CARD_COLOR#"></span>',
'    </a>',
'  </div>',
'</li>',
''))
,p_page_plug_template_name=>'Hospital Cards'
,p_internal_name=>'HOSPITAL_CARDS'
,p_theme_id=>42
,p_theme_class_id=>13
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_imp.component_end;
end;
/
