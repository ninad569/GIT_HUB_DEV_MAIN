prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
--   Manifest
--     MENU:  Breadcrumb
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.8'
,p_default_workspace_id=>76915847067537899948
,p_default_application_id=>274326
,p_default_id_offset=>76916220240599916839
,p_default_owner=>'WKSP_WBGAPEXDEV'
);
wwv_flow_imp_shared.create_menu(
 p_id=>wwv_flow_imp.id(85116919603826146773)
,p_name=>' Breadcrumb'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(76931674676218621825)
,p_parent_id=>wwv_flow_imp.id(80575613775538440910)
,p_short_name=>'Sorting'
,p_link=>'f?p=&APP_ID.:42:&SESSION.::&DEBUG.:::'
,p_page_id=>42
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(77100438376521003389)
,p_parent_id=>wwv_flow_imp.id(80575613775538440910)
,p_short_name=>'Stack Grouping'
,p_link=>'f?p=&APP_ID.:44:&SESSION.'
,p_page_id=>44
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(77100475138897266032)
,p_parent_id=>wwv_flow_imp.id(80575613775538440910)
,p_short_name=>'Declarative Font Formatting'
,p_link=>'f?p=&APP_ID.:45:&SESSION.'
,p_page_id=>45
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(77205366602011916215)
,p_short_name=>'Box Plot'
,p_link=>'f?p=&APP_ID.:41:&SESSION.'
,p_page_id=>41
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(77205713695803755977)
,p_short_name=>'Pyramid'
,p_link=>'f?p=&APP_ID.:43:&SESSION.'
,p_page_id=>43
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(77277146438589406219)
,p_short_name=>'Data Densification'
,p_link=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.:::'
,p_page_id=>14
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(77312687601303507322)
,p_parent_id=>wwv_flow_imp.id(80575613775538440910)
,p_short_name=>'Chart Links'
,p_link=>'f?p=&APP_ID.:49:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>49
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(77639383324071538719)
,p_parent_id=>wwv_flow_imp.id(79280703464107018983)
,p_short_name=>'Manage Sample Data'
,p_link=>'f?p=&APP_ID.:27:&SESSION.'
,p_page_id=>27
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(77853014477147464296)
,p_short_name=>'Area'
,p_link=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:::'
,p_page_id=>2
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(77853014941568472807)
,p_short_name=>'Combination'
,p_link=>'f?p=&APP_ID.:25:&SESSION.::&DEBUG.:::'
,p_page_id=>25
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(77853015236842476875)
,p_short_name=>'Dashboard - Pies'
,p_link=>'f?p=&APP_ID.:24:&SESSION.::&DEBUG.:::'
,p_page_id=>24
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(77853015826599479926)
,p_short_name=>'Funnel'
,p_link=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.:::'
,p_page_id=>22
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(77853021892619526009)
,p_short_name=>'Line with Area'
,p_link=>'f?p=&APP_ID.:18:&SESSION.::&DEBUG.:::'
,p_page_id=>18
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(77853022087852527467)
,p_short_name=>'Polar'
,p_link=>'f?p=&APP_ID.:19:&SESSION.::&DEBUG.:::'
,p_page_id=>19
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(77853022272871532875)
,p_short_name=>'Radar'
,p_link=>'f?p=&APP_ID.:21:&SESSION.::&DEBUG.:::'
,p_page_id=>21
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(77853022439217536270)
,p_short_name=>'Range'
,p_link=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.:::'
,p_page_id=>23
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(77853024916690548537)
,p_short_name=>'Stock'
,p_link=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:::'
,p_page_id=>7
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(77915980988241922612)
,p_parent_id=>wwv_flow_imp.id(80575613775538440910)
,p_short_name=>'Customizing Tooltip Labels'
,p_link=>'f?p=&APP_ID.:48:&SESSION.'
,p_page_id=>48
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(77953271754410221642)
,p_parent_id=>wwv_flow_imp.id(79496899567339477424)
,p_short_name=>'Tasks per Project'
,p_link=>'f?p=&APP_ID.:47:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>47
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(78220891357466426436)
,p_parent_id=>wwv_flow_imp.id(79496899567339477424)
,p_short_name=>'Interactive Report'
,p_link=>'f?p=&APP_ID.:13:&SESSION.'
,p_page_id=>13
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(78221883262065861858)
,p_short_name=>'Line'
,p_link=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.:::'
,p_page_id=>15
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(78544217231532444513)
,p_short_name=>'Bubble'
,p_link=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.:::'
,p_page_id=>11
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(79048283919066128725)
,p_short_name=>'Status Meter Gauge'
,p_link=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:::'
,p_page_id=>5
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(79050401212460499287)
,p_short_name=>'Application Theme Style'
,p_link=>'f?p=&APP_ID.:10:&SESSION.'
,p_page_id=>10
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(79211304512784084468)
,p_parent_id=>wwv_flow_imp.id(79509474457028328901)
,p_short_name=>'Employees Report'
,p_link=>'f?p=&APP_ID.:29:&SESSION.::&DEBUG.:::'
,p_page_id=>29
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(79280703464107018983)
,p_short_name=>'Administration'
,p_link=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.:::'
,p_page_id=>17
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(79496899567339477424)
,p_short_name=>'Pie'
,p_link=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:::'
,p_page_id=>4
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(79497147569039507074)
,p_short_name=>'Gantt'
,p_link=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:::'
,p_page_id=>3
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(79498743273727865537)
,p_short_name=>'Dashboard'
,p_link=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:::'
,p_page_id=>6
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(79500298154340060792)
,p_short_name=>'Scatter'
,p_link=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.:::'
,p_page_id=>8
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(79509474457028328901)
,p_short_name=>'Bar'
,p_link=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.:::'
,p_page_id=>9
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(80163740842648251790)
,p_parent_id=>wwv_flow_imp.id(85116920015674146776)
,p_short_name=>'Help'
,p_link=>'f?p=&FLOW_ID.:12:&SESSION.'
,p_page_id=>12
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(80575516772413140723)
,p_short_name=>'JET Plug-in'
,p_link=>'f?p=&APP_ID.:26:&SESSION.::&DEBUG.:::'
,p_page_id=>26
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(80575613775538440910)
,p_short_name=>'Reference'
,p_link=>'f?p=&APP_ID.:28:&SESSION.::&DEBUG.:::'
,p_page_id=>28
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(80575613985675442905)
,p_parent_id=>wwv_flow_imp.id(80575613775538440910)
,p_short_name=>'JavaScript Code Customizations'
,p_link=>'f?p=&APP_ID.:30:&SESSION.::&DEBUG.:::'
,p_page_id=>30
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(80575934617426041251)
,p_parent_id=>wwv_flow_imp.id(80575613775538440910)
,p_short_name=>'Dynamic Actions'
,p_link=>'f?p=&APP_ID.:31:&SESSION.::&DEBUG.:::'
,p_page_id=>31
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(80575943240232083308)
,p_parent_id=>wwv_flow_imp.id(80575613775538440910)
,p_short_name=>'Series Color'
,p_link=>'f?p=&APP_ID.:32:&SESSION.'
,p_page_id=>32
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(80575952978713129820)
,p_parent_id=>wwv_flow_imp.id(80575613775538440910)
,p_short_name=>'Y2 Axis'
,p_link=>'f?p=&APP_ID.:33:&SESSION.'
,p_page_id=>33
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(80575956722359188650)
,p_parent_id=>wwv_flow_imp.id(80575613775538440910)
,p_short_name=>'JET Plug-in Component'
,p_link=>'f?p=&APP_ID.:34:&SESSION.'
,p_page_id=>34
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(80575964678505244532)
,p_parent_id=>wwv_flow_imp.id(80575613775538440910)
,p_short_name=>'Time Axis'
,p_link=>'f?p=&APP_ID.:35:&SESSION.'
,p_page_id=>35
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(80575969490810272473)
,p_parent_id=>wwv_flow_imp.id(80575613775538440910)
,p_short_name=>'Zoom & Scroll'
,p_link=>'f?p=&APP_ID.:36:&SESSION.'
,p_page_id=>36
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(80578317874412892001)
,p_parent_id=>wwv_flow_imp.id(80575613775538440910)
,p_short_name=>'Customizing Data Labels'
,p_link=>'f?p=&APP_ID.:37:&SESSION.::&DEBUG.:::'
,p_page_id=>37
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(80578355126522014562)
,p_parent_id=>wwv_flow_imp.id(80575613775538440910)
,p_short_name=>'Formatting Values'
,p_link=>'f?p=&APP_ID.:38:&SESSION.'
,p_page_id=>38
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(80866835539315336811)
,p_parent_id=>wwv_flow_imp.id(80575613775538440910)
,p_short_name=>'3D Effect'
,p_link=>'f?p=&APP_ID.:39:&SESSION.'
,p_page_id=>39
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(85116920015674146776)
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_page_id=>1
);
wwv_flow_imp.component_end;
end;
/
