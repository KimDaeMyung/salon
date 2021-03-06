CREATE TABLE `designtopf_naver.com`.member
(
    mb_no int(11) PRIMARY KEY NOT NULL COMMENT '회원번호' AUTO_INCREMENT,
    mb_email varchar(128) NOT NULL COMMENT '이메일',
    mb_passwd varchar(256) NOT NULL COMMENT '비밀번호',
    mb_name varchar(256) DEFAULT '' NOT NULL COMMENT '본명',
    mb_tel_mobile varchar(64) NOT NULL COMMENT '관리자 휴대폰번호',
    mb_tel_office varchar(64) NOT NULL COMMENT '관리자 사무실번호',
    mb_corp_name varchar(255) NOT NULL COMMENT '관리자회사명',
    mb_datetime datetime NOT NULL COMMENT '회원가입일',
    mb_status tinyint(4) NOT NULL COMMENT '회원상태',
    mb_leave datetime NOT NULL COMMENT '회원탈퇴일',
    mb_update datetime NOT NULL COMMENT '회원정보수정일'
);
CREATE UNIQUE INDEX mb_email ON `designtopf_naver.com`.member (mb_email);
INSERT INTO `designtopf_naver.com`.member (mb_no, mb_email, mb_passwd, mb_name, mb_tel_mobile, mb_tel_office, mb_corp_name, mb_datetime, mb_status, mb_leave, mb_update) VALUES (1, 'kevinpark@webace.co.kr', '*A4B6157319038724E3560894F7F932C8886EBFCF', '최고관리자', '01012345678', '05112345678', '(주)시옷', '2018-09-06 19:28:18', 0, null, '2018-09-06 19:28:18');
INSERT INTO `designtopf_naver.com`.member (mb_no, mb_email, mb_passwd, mb_name, mb_tel_mobile, mb_tel_office, mb_corp_name, mb_datetime, mb_status, mb_leave, mb_update) VALUES (2, 'designtopf@naver.com', '*0E6FD44C7B722784DAE6E67EF8C06FB1ACB3E0A6', '1234', '', '1234', '', '2018-11-01 02:06:15', 0, null, '2018-11-01 02:06:15');
CREATE TABLE `designtopf_naver.com`.pages
(
    pg_no int(11) unsigned PRIMARY KEY NOT NULL COMMENT 'KEY' AUTO_INCREMENT,
    pg_path varchar(256) NOT NULL COMMENT 'page path',
    pg_type varchar(64) DEFAULT '' NOT NULL COMMENT 'page type',
    pg_archive tinyint(3) unsigned DEFAULT 0 NOT NULL COMMENT 'page history',
    pg_order tinyint(3) unsigned DEFAULT 0 NOT NULL COMMENT 'page element order',
    pg_param varchar(256) DEFAULT '' NOT NULL COMMENT 'page parameter',
    pg_kind varchar(32) DEFAULT '' NOT NULL COMMENT 'text,string,list,image,board,latest,...',
    pg_config varchar(512) DEFAULT '' NOT NULL COMMENT 'page config',
    pg_name varchar(64) NOT NULL COMMENT 'page name',
    pg_display_name varchar(256) NOT NULL COMMENT 'display name',
    pg_content text DEFAULT '' NOT NULL COMMENT 'page contents',
    pg_datetime datetime DEFAULT current_timestamp() NOT NULL COMMENT 'page create time',
    pg_update datetime DEFAULT current_timestamp() NOT NULL COMMENT 'page update time'
);
CREATE INDEX pg_path_pg_order ON `designtopf_naver.com`.pages (pg_path, pg_type, pg_archive, pg_order);
INSERT INTO `designtopf_naver.com`.pages (pg_no, pg_path, pg_type, pg_archive, pg_order, pg_param, pg_kind, pg_config, pg_name, pg_display_name, pg_content, pg_datetime, pg_update) VALUES (1, 'index.html', 'front', 0, 0, '', 'list', '{
  "desc": "왼쪽 아이콘을 클릭하여 드래그 하면 순서를 변경할 수 있습니다. 파일을 다시 업로드하면 변경됩니다.",
  "content": [
    {
      "type": "image",
      "name": "image"
    },
    {
      "type": "string",
      "name": "subject",
      "size": "20"
    },
    {
      "type": "string",
      "name": "desc",
      "size": "20"
    }
  ]
}', 'main-visual-col1', '메인비쥬얼 (Col1)', '{"list":[{"subject":"3D \\ud504\\ub9b0\\ud130","desc":"desc","image":{"file_module":"page-admin","file_name":"12.jpg","file_local_name":"c18ca5e8c7999e7186f9_12.jpg","file_size":1607547,"file_type":"image\\/jpeg","file_datetime":"2018-12-09 13:24:07"}}]}', '2018-11-22 20:48:27', '2018-12-09 07:10:12');
INSERT INTO `designtopf_naver.com`.pages (pg_no, pg_path, pg_type, pg_archive, pg_order, pg_param, pg_kind, pg_config, pg_name, pg_display_name, pg_content, pg_datetime, pg_update) VALUES (2, 'about.html', 'front', 0, 1, '', 'text', '', 'corporate-identity', 'Corporate Identity _', '<p><strong>Topf 는 독일어로 단지, 항아리를 의미</strong>하며 디자인을 담는 단지, 또는 큰 그릇을 표방합니다.</p><p>창의적인 발상과 수준 높은 디자인 솔루션으로 고객께 만족스러운 결과를 드릴 수 있는 큰 단지가 되고자 하는</p><p><strong>‘디자인 토프’의 기업가치</strong>를 담고 있습니다.</p>', '2018-12-07 00:53:50', '2018-12-08 22:13:43');
INSERT INTO `designtopf_naver.com`.pages (pg_no, pg_path, pg_type, pg_archive, pg_order, pg_param, pg_kind, pg_config, pg_name, pg_display_name, pg_content, pg_datetime, pg_update) VALUES (3, 'about.html', 'front', 0, 2, '', 'text', '', 'introduction', 'Introduction', '<p><strong>디자인 토프</strong>는 제품디자인 전문회사로서 다년간의 중소기업 및 대기업의 디자인 개발 경험을 가진 전문 인력으로<br>구성되어있으며, 사회 전반의 다양한 트렌드 리서치를 통해 고객의 요구와 라이프 스타일을 제대로 반영하여<br>고객과 소비자 모두에게 감동을 주는 제품을 개발하는데 전사적으로 노력하고 있습니다.</p><p><strong>디자인 경쟁력 강화</strong>를 위해서는</p><p>첫째, 기능 중심의 전략에서 <strong>디자인 중심의 전략</strong>으로 바꾸어야 합니다.</p><p>둘째, <strong>선행디자인 개념</strong>을 도입하여 소비자의 감성적 욕구를 충족시키고, 새로운 비전을 제시해야 합니다.</p><p>셋째, 신뢰를 바탕으로 하는 <strong>고객과의 파트너십</strong>으로 디자인 혁신을 이루어야 합니다.</p>', '2018-12-07 09:58:03', '2018-12-08 22:13:45');
INSERT INTO `designtopf_naver.com`.pages (pg_no, pg_path, pg_type, pg_archive, pg_order, pg_param, pg_kind, pg_config, pg_name, pg_display_name, pg_content, pg_datetime, pg_update) VALUES (4, 'about.html', 'front', 0, 3, '', 'image', '{
  "num": "1",
  "desc": "이미지 파일을 다시 업로드하면 이미지가 변경됩니다."
}', 'introduction-image', 'Introduction Image', '{"file_module":"page-admin","file_name":"about-introduction.png","file_local_name":"31af1934a8ba840ea599_about-introduction.png","file_size":27090,"file_type":"image/png","file_datetime":"2018-12-08 12:13:48"}', '2018-12-07 09:59:33', '2018-12-08 22:13:47');
INSERT INTO `designtopf_naver.com`.pages (pg_no, pg_path, pg_type, pg_archive, pg_order, pg_param, pg_kind, pg_config, pg_name, pg_display_name, pg_content, pg_datetime, pg_update) VALUES (5, 'about.html', 'front', 0, 4, '', 'text', '', 'philosophy', 'Phlosophy _', '<p><strong>혁신적 디자인</strong>이란<br>사람에 대한 지속적인 관찰과 연구를 통해 얻어진 정보와 창의적인 아이디어를 결합하여<br>주어진 문제를 해결해냄으로써 사람들에게 놀라움과 감동을 느끼게 하는 것이라고 생각합니다.</p><p><strong>굿 디자인의 조건</strong>은<br><strong>첫째,</strong> 보기만 좋은 것이 아니라 사용하기에도 좋으며 만들기도 좋아야 합니다.<br><strong>둘째,</strong> 친환경적이며 세월이 흘러도 변치 않는 보존적 가치를 가지고 있어야 합니다.<br><strong>셋째,</strong> 아름답고 실용적인 디자인은 언제나 사람들의 선택을 받을 것입니다.</p>', '2018-12-07 01:08:17', '2018-12-08 22:13:48');
INSERT INTO `designtopf_naver.com`.pages (pg_no, pg_path, pg_type, pg_archive, pg_order, pg_param, pg_kind, pg_config, pg_name, pg_display_name, pg_content, pg_datetime, pg_update) VALUES (6, 'about.html', 'front', 0, 5, '', 'text', '', 'design-process', 'Design Process _', '<p>아래와 같은 프로세스를 통해서 리스크를 최소화하고 제품의 완성도를 높이며,<br>디자인 성공전략에 기여할 수 있습니다.</p>', '2018-12-07 01:08:49', '2018-12-08 22:13:50');
INSERT INTO `designtopf_naver.com`.pages (pg_no, pg_path, pg_type, pg_archive, pg_order, pg_param, pg_kind, pg_config, pg_name, pg_display_name, pg_content, pg_datetime, pg_update) VALUES (7, 'about.html', 'front', 0, 6, '', 'list', '{
  "desc": "왼쪽 아이콘을 클릭하여 드래그 하면 순서를 변경할 수 있습니다.",
  "content": [
    {
      "type": "string",
      "name": "num",
      "size": "2"
    },
    {
      "type": "string",
      "name": "title",
      "size": "20"
    },
    {
      "type": "checkbox",
      "name": "Active"
    }
  ]
}', 'design-process-step', 'Design Process Steps', '{"list":[{"num":"1","title":"Contact","Active":"1"},{"num":"2","title":"Research & Analysis","Active":"0"},{"num":"3","title":"Concept & Idea sketch","Active":"0"},{"num":"4","title":"Rendering","Active":"0"},{"num":"5","title":"Mock up","Active":"0"},{"num":"6","title":"Engineering process","Active":"0"},{"num":"7","title":"Follow up","Active":"0"}]}', '2018-12-07 01:09:16', '2018-12-09 13:17:36');
INSERT INTO `designtopf_naver.com`.pages (pg_no, pg_path, pg_type, pg_archive, pg_order, pg_param, pg_kind, pg_config, pg_name, pg_display_name, pg_content, pg_datetime, pg_update) VALUES (8, 'about.html', 'front', 0, 7, '', 'list', '{
  "desc": "왼쪽 아이콘을 클릭하여 드래그 하면 순서를 변경할 수 있습니다.",
  "content": [
    {
      "type": "string",
      "name": "company",
      "size": "20"
    },
    {
      "type": "string",
      "name": "product",
      "size": "40"
    }
  ]
}', 'design-project-digital', 'Design Project (Digital)', '{"list":[{"company":"\\u321c\\ub3d9\\uad11\\uc804\\uc790","product":"\\ubc29\\uc1a1\\uc7a5\\ube44"},{"company":"\\u321c\\uc560\\ub2c8\\ud1a0\\uc774","product":"\\ud640\\ub85c\\ud130\\ubbf8\\ub110"},{"company":"\\ud37c\\ud50c","product":"\\uc6b4\\ub3d9\\ud654\\ub048\\ucee4\\ud130\\uae30"},{"company":"\\ub0b4\\uac00\\ucf54\\ub9ac\\uc544","product":"\\uace8\\ud504\\ud37c\\ud305\\uae30"},{"company":"\\u321c\\ucf00\\uc774\\ub7a9\\uc2a4","product":"3D\\ud504\\ub9b0\\ud130"},{"company":"\\u321c\\ub300\\ub9bc\\ud14c\\ud06c","product":"\\ubb34\\uc120\\ubc29\\uc1a1\\uc218\\uc2e0\\uae30"}]}', '2018-12-07 01:14:35', '2018-12-08 22:13:52');
INSERT INTO `designtopf_naver.com`.pages (pg_no, pg_path, pg_type, pg_archive, pg_order, pg_param, pg_kind, pg_config, pg_name, pg_display_name, pg_content, pg_datetime, pg_update) VALUES (9, 'about.html', 'front', 0, 8, '', 'list', '{
  "desc": "왼쪽 아이콘을 클릭하여 드래그 하면 순서를 변경할 수 있습니다.",
  "content": [
    {
      "type": "string",
      "name": "company",
      "size": "20"
    },
    {
      "type": "string",
      "name": "product",
      "size": "40"
    }
  ]
}', 'design-project-home', 'Design Project (Home)', '{"list":[{"company":"\\uc11c\\uc601\\ud14c\\ud06c\\u321c","product":"\\uc77c\\uccb4\\ud615\\ubc0f\\ub69c\\uaed1\\ud615\\uc8fc\\uc2a4\\uc790\\ub3d9\\ub2f4\\uae30"},{"company":"\\u321c\\uace0\\uc2a4\\ub514\\uc790\\uc778","product":"\\uc120\\ud48d\\uae30 \\/ \\uc81c\\uc2b5\\uae302\\uc885 \\/ \\uae30\\ud654\\uc2dd\\uac00\\uc2b5\\uae30"},{"company":"\\u321cESN","product":"UV\\ucef5\\uc0b4\\uade0\\uae30 \\/ UV\\uc816\\ubcd1\\uc0b4\\uade0\\uae30 \\/ UV\\uc0b4\\uade0\\uac00\\uc2b5\\uae30 \\/ \\uc2f1\\uae00\\ud615\\ubc0f\\uba40\\ud2f0\\ud615UV\\uc816\\ubcd1\\uc0b4\\uade0\\uae30"},{"company":"\\u321c\\ud3ec\\uc5d0\\uc2a4\\ud14d","product":"\\uad6c\\uac15\\uc138\\uc815\\uae30 \\/ \\uc9c4\\uacf5\\ud38c\\ud504\\uae30 \\/ \\uc18c\\ud615\\ubbf9\\uc11c\\uae30 \\ubbf8\\uc564\\uccad\\ucf54\\ub9ac\\uc544 \\ud654\\uc7a5\\uc194\\uc138\\ucc99\\uae30"},{"company":"\\ubaac\\uc2a4\\ud130\\ud3ab","product":"\\ubc18\\ub824\\ub3d9\\ubb3c\\uc815\\uc218\\uae30"},{"company":"\\uc778\\ubc14\\uc774\\ub514\\uc790\\uc778","product":"\\ud734\\ub300\\uc6a9UV\\uc816\\ubcd1\\uc0b4\\uade0\\uae30"}]}', '2018-12-07 01:14:35', '2018-12-08 22:13:54');
INSERT INTO `designtopf_naver.com`.pages (pg_no, pg_path, pg_type, pg_archive, pg_order, pg_param, pg_kind, pg_config, pg_name, pg_display_name, pg_content, pg_datetime, pg_update) VALUES (10, 'about.html', 'front', 0, 9, '', 'list', '{
  "desc": "왼쪽 아이콘을 클릭하여 드래그 하면 순서를 변경할 수 있습니다.",
  "content": [
    {
      "type": "string",
      "name": "company",
      "size": "20"
    },
    {
      "type": "string",
      "name": "product",
      "size": "40"
    }
  ]
}', 'design-project-medical', 'Design Project (Medical)', '{"list":[{"company":"\\uc9c0\\ud53c\\ucf54","product":"\\uce58\\uacfc\\uc6a9\\ud0c0\\uad6c\\uc0b4\\uade0\\uae30"},{"company":"\\ube0c\\ub808\\uc778\\uba54\\ub4dc","product":"LED\\uc5ec\\ub4dc\\ub984 \\uce58\\ub8cc\\uae30 \\/ \\uba54\\uc870\\ud14c\\ub77c\\ud53c\\uc758\\ub8cc\\uc7a5\\ube44"},{"company":"THKC","product":"\\ubaa9\\uc695\\uc758\\uc7902\\uc885 \\/ \\uc774\\ub3d9\\ubcc0\\uae302\\uc885 \\/ \\uc548\\uc804\\uc190\\uc7a1\\uc774 \\/ \\ubb34\\ub98e\\ubcf4\\uc870\\uae302\\uc885"},{"company":"\\u321c\\uc560\\ub2c8\\ud1a0\\uc774","product":"\\uc778\\ubc14\\ub514\\uc2dc\\uc2a4\\ud15c \\/ S-tick\\uc6b4\\ub3d9\\uad00\\ub9ac\\uae30 \\/ S-tick\\uc2a4\\ub9c8\\ud2b8\\ud3f0\\ud640\\ub354 \\/ \\uc790\\ub3d9\\ud615\\ubc0f\\uc218\\ub3d9\\ud615\\ubcf4\\ud589\\ubcf4\\uc870\\uae302\\uc885"},{"company":"\\uc0bc\\uc778\\uc815\\ubc00","product":"\\uc774\\ub3d9\\ubcc0\\uae30 \\/ \\uc548\\uc804\\uc190\\uc7a1\\uc774 \\/ \\ud658\\uc790\\uc774\\uc1a1\\ub9ac\\ud504\\ud2b8"}]}', '2018-12-07 01:14:35', '2018-12-08 22:13:55');
INSERT INTO `designtopf_naver.com`.pages (pg_no, pg_path, pg_type, pg_archive, pg_order, pg_param, pg_kind, pg_config, pg_name, pg_display_name, pg_content, pg_datetime, pg_update) VALUES (11, 'about.html', 'front', 0, 10, '', 'list', '{
  "desc": "왼쪽 아이콘을 클릭하여 드래그 하면 순서를 변경할 수 있습니다.",
  "content": [
    {
      "type": "string",
      "name": "company",
      "size": "20"
    },
    {
      "type": "string",
      "name": "product",
      "size": "40"
    }
  ]
}', 'design-project-equipment', 'Design Project (Equipment)', '{"list":[{"company":"\\ud14c\\ud06c\\ub178\\ub77c\\uc774\\uc988","product":"CNC\\uc804\\uadf9\\uac00\\uacf5\\uae30"},{"company":"\\uba54\\uce74\\ud2b8\\ub85c\\ucf54\\ub9ac\\uc544","product":"\\uc0c1\\uc555\\ud50c\\ub77c\\uc988\\ub9c8\\ud45c\\uba74\\ucc98\\ub9ac\\uc7a5\\uce58"},{"company":"\\ub514\\uc5b4\\ub85c\\ub9dd","product":"\\uac00\\uc815\\uc6a9\\ud648\\ubc14"},{"company":"\\ud1a0\\ub124\\uc774\\ub3c4\\ud14c\\ud06c","product":"\\uc0b0\\uc5c5\\uc6a9\\ud761\\ubc30\\uae30\\uc7a5\\uce58"},{"company":"\\uc5f0\\uc9c0\\ucef4\\ud37c\\ub2c8","product":"\\uc2a4\\ud06c\\ub9b0\\ud544\\ub984\\ud310\\ub9e4\\ubd80\\uc2a4"},{"company":"\\u321c\\uc6b0\\ucc3d","product":"\\uad74\\uc0ad\\uae30\\uc2dc\\ud2b8 \\/ \\ud2b8\\ub799\\ud130\\uc2dc\\ud2b8"},{"company":"\\uc774\\uc988\\ud380","product":"\\uc57c\\uad6c\\ud53c\\uce6d\\uc544\\ucf00\\uc774\\ub4dc\\uac8c\\uc784\\uae30"},{"company":"\\uc608\\uc2a4\\ub85c\\ubd07","product":"\\uc591\\ud314\\ud615\\ub85c\\ubcf4\\ud2b8\\ud314"},{"company":"\\u321c\\uc560\\ub2c8\\ud1a0\\uc774","product":"\\uc0b0\\uc5c5\\uc6a9\\uc81c\\uc2b5\\uae30 \\/ \\uae30\\ub9bd\\ubcf4\\uc870\\uae30 \\/ \\uc3d8\\ub098\\uc7a5\\ube44\\ubb34\\uc778\\uc120\\ubc15"},{"company":"\\uc0bc\\uc77c\\uc5f0\\ub9c8\\uacf5\\uc5c5\\uc8fc\\uc2dd\\ud68c\\uc0ac","product":"\\uc591\\uad6c\\ud615\\ubc0f\\ub2e8\\uad6c\\ud615\\uac00\\uc2a4\\ub9c8\\uc2a4\\ud06c \\/ \\uc9c1\\uacb0\\uc2dd\\uccb4\\uacb0\\ud544\\ud130 \\/ \\uc548\\uba74\\uc5ec\\uacfc\\uc2dd\\ubc29\\uc9c4\\ub9c8\\uc2a4\\ud06c \\/ \\uc811\\uc774\\ud615\\uc548\\uba74\\uc5ec\\uacfc\\uc2dd\\ubc29\\uc9c4\\ub9c8\\uc2a4\\ud06c"},{"company":"\\ub514\\uc5d0\\uc2a4\\ub514","product":"\\ud558\\uc774\\ub4dc\\ub85c\\ud3ec\\uc77c\\uc18c\\ud615\\ub808\\uc800\\ubcf4\\ud2b8"},{"company":"\\uad6d\\ub9bd\\ubd80\\uc0b0\\uad6d\\uc545\\uc6d0","product":"\\ub514\\uc9c0\\ud138\\uc778\\ud3ec\\uba54\\uc774\\uc158\\ub514\\uc2a4\\ud50c\\ub808\\uc774(DID)"}]}', '2018-12-07 01:14:35', '2018-12-08 22:13:57');
INSERT INTO `designtopf_naver.com`.pages (pg_no, pg_path, pg_type, pg_archive, pg_order, pg_param, pg_kind, pg_config, pg_name, pg_display_name, pg_content, pg_datetime, pg_update) VALUES (12, 'about.html', 'front', 0, 11, '', 'list', '{
  "desc": "왼쪽 아이콘을 클릭하여 드래그 하면 순서를 변경할 수 있습니다.",
  "content": [
    {
      "type": "string",
      "name": "company",
      "size": "20"
    },
    {
      "type": "string",
      "name": "product",
      "size": "40"
    }
  ]
}', 'design-project-others', 'Design Project (The Others)', '{"list":[{"company":"\\u321c\\uc560\\ub2c8\\ud1a0\\uc774","product":"\\ub85c\\ubd07\\uce90\\ub9ad\\ud130\\uc644\\uad6c \\/ \\uc2a4\\ub9c8\\ud2b8\\ud3f0\\uce90\\ub9ad\\ud130\\ud551\\uac70\\ub9c1 \\/ \\ube0c\\ub77c\\uc0ac\\uc774\\uc988\\uce21\\uc815\\uae30"},{"company":"\\uc0bc\\uc77c\\uc5f0\\ub9c8\\uacf5\\uc5c5\\uc8fc\\uc2dd\\ud68c\\uc0ac","product":"\\ud669\\uc0ac\\ub9c8\\uc2a4\\ud06c"},{"company":"\\ub098\\uc774\\uc2a4\\uc8fc\\ud0dd\\u321c","product":"\\ubb3c\\ud758\\ub7ec\\ub0b4\\ub9bc\\ubc29\\uc9c0\\uc190\\ubaa9\\ubc34\\ub4dc"},{"company":"\\u321c\\uc2e0\\ud654\\ud640\\ub529\\uc2a4","product":"\\uc9c4\\uacf5\\uc6a9\\uae30\\ucee4\\ubc843\\uc885"},{"company":"\\ud478\\ub4dc\\ub791","product":"\\uce94\\ub514\\uba38\\uc2e0"},{"company":"\\uc778\\ubc14\\uc774\\ub514\\uc790\\uc778","product":"\\ud669\\uc0ac\\ub9c8\\uc2a4\\ud06c\\uac00\\ub4dc\\ud329 \\/ \\uc2a4\\ud380\\uc9c0\\uc120\\ubc18"}]}', '2018-12-07 01:14:35', '2018-12-09 07:08:41');
INSERT INTO `designtopf_naver.com`.pages (pg_no, pg_path, pg_type, pg_archive, pg_order, pg_param, pg_kind, pg_config, pg_name, pg_display_name, pg_content, pg_datetime, pg_update) VALUES (13, 'about.html', 'front', 0, 0, '', 'image', '{
  "num": "1",
  "desc": "이미지 파일을 다시 업로드하면 이미지가 변경됩니다."
}', 'about-top', 'About 페이지 상단 로고이미지', '{"file_module":"page-admin","file_name":"about-identity.png","file_local_name":"181841825e69112074b1_about-identity.png","file_size":14959,"file_type":"image\\/png","file_datetime":"2018-12-10 10:07:13"}', '2018-12-07 00:53:50', '2018-12-10 01:07:13');
INSERT INTO `designtopf_naver.com`.pages (pg_no, pg_path, pg_type, pg_archive, pg_order, pg_param, pg_kind, pg_config, pg_name, pg_display_name, pg_content, pg_datetime, pg_update) VALUES (14, 'index.html', 'front', 0, 1, '', 'list', '{
  "desc": "왼쪽 아이콘을 클릭하여 드래그 하면 순서를 변경할 수 있습니다.",
  "content": [
    {
      "type": "image",
      "name": "image"
    },
    {
      "type": "string",
      "name": "subject",
      "size": "20"
    },
    {
      "type": "string",
      "name": "desc",
      "size": "20"
    }
  ]
}', 'main-visual-col2', '메인비쥬얼 (Col2)', '{"list":[{"subject":"\\uace8\\ud504\\ud37c\\ud305\\uc5f0\\uc2b5\\uae30","desc":"","image":{"file_module":"page-admin","file_name":"3.jpg","file_local_name":"6f0809ad78c2ee1c9adb_3.jpg","file_size":1482957,"file_type":"image\\/jpeg","file_datetime":"2018-12-09 16:11:47"}},{"subject":"\\ub514\\uc9c0\\ud138\\uc561\\uc790","desc":"","image":{"file_module":"page-admin","file_name":"6-1.jpg","file_local_name":"c6940b766242113c5009_6-1.jpg","file_size":1399096,"file_type":"image\\/jpeg","file_datetime":"2018-12-09 16:11:47"}},{"subject":"\\ud558\\uc774\\ud328\\uc2a4 \\ub2e8\\ub9d0\\uae30","desc":"","image":{"file_module":"page-admin","file_name":"6-2.jpg","file_local_name":"063dd898ad62750930b6_6-2.jpg","file_size":1116263,"file_type":"image\\/jpeg","file_datetime":"2018-12-09 16:12:05"}},{"subject":"\\ud640\\ub85c\\ud130\\ubbf8\\ub110","image":{"file_module":"page-admin","file_name":"9-2.jpg","file_local_name":"52d91b304193ee21704c_9-2.jpg","file_size":1359402,"file_type":"image\\/jpeg","file_datetime":"2018-12-09 21:21:29"},"desc":""}]}', '2018-11-22 20:48:27', '2018-12-09 12:21:29');
INSERT INTO `designtopf_naver.com`.pages (pg_no, pg_path, pg_type, pg_archive, pg_order, pg_param, pg_kind, pg_config, pg_name, pg_display_name, pg_content, pg_datetime, pg_update) VALUES (15, 'index.html', 'front', 0, 2, '', 'list', '{
  "desc": "왼쪽 아이콘을 클릭하여 드래그 하면 순서를 변경할 수 있습니다.",
  "content": [
    {
      "type": "image",
      "name": "image"
    },
    {
      "type": "string",
      "name": "subject",
      "size": "20"
    },
    {
      "type": "string",
      "name": "desc",
      "size": "20"
    }
  ]
}', 'main-visual-col3', '메인비쥬얼 (Col3)', '{"list":[{"subject":"UV\\ucef5\\uc0b4\\uade0\\uae30","image":{"file_module":"page-admin","file_name":"14.jpg","file_local_name":"21bf8844a5032d87cf9d_14.jpg","file_size":1317510,"file_type":"image\\/jpeg","file_datetime":"2018-12-09 20:04:04"},"desc":""}]}', '2018-11-22 20:48:27', '2018-12-09 11:04:04');
INSERT INTO `designtopf_naver.com`.pages (pg_no, pg_path, pg_type, pg_archive, pg_order, pg_param, pg_kind, pg_config, pg_name, pg_display_name, pg_content, pg_datetime, pg_update) VALUES (16, 'index.html', 'front', 0, 3, '', 'list', '{
  "desc": "왼쪽 아이콘을 클릭하여 드래그 하면 순서를 변경할 수 있습니다.",
  "content": [
    {
      "type": "image",
      "name": "image"
    },
    {
      "type": "string",
      "name": "subject",
      "size": "20"
    },
    {
      "type": "string",
      "name": "desc",
      "size": "20"
    }
  ]
}', 'main-visual-col4', '메인비쥬얼 (Col4)', '{"list":[{"subject":"\\ud654\\uc7a5\\uc194\\uc138\\ucc99\\uae30","image":{"file_module":"page-admin","file_name":"10.jpg","file_local_name":"d27c02f833e3ea471db9_10.jpg","file_size":1758620,"file_type":"image\\/jpeg","file_datetime":"2018-12-09 20:35:27"},"desc":""},{"subject":"\\ub2f4\\ub07c","image":{"file_module":"page-admin","file_name":"12-1.jpg","file_local_name":"679d8f1e17d9a39bebca_12-1.jpg","file_size":1592995,"file_type":"image\\/jpeg","file_datetime":"2018-12-09 20:35:27"},"desc":""}]}', '2018-11-22 20:48:27', '2018-12-09 11:35:27');
INSERT INTO `designtopf_naver.com`.pages (pg_no, pg_path, pg_type, pg_archive, pg_order, pg_param, pg_kind, pg_config, pg_name, pg_display_name, pg_content, pg_datetime, pg_update) VALUES (17, 'index.html', 'front', 0, 5, '', 'string', '{
  "desc": "",
  "content": [
    {
      "name": "title",
      "desc":"타이틀(한글)"
    },
    {
      "name": "desc",
      "desc": "설명(영문)"
    }
  ]
}', 'strategy1', '메인화면 전략1', '{"title":"\\ub514\\uc790\\uc778 \\uc911\\uc2ec\\uc758 \\uc804\\ub7b5","desc":"Design centered strategy"}', '2018-11-22 20:48:27', '2018-12-09 13:13:44');
INSERT INTO `designtopf_naver.com`.pages (pg_no, pg_path, pg_type, pg_archive, pg_order, pg_param, pg_kind, pg_config, pg_name, pg_display_name, pg_content, pg_datetime, pg_update) VALUES (18, 'index.html', 'front', 0, 6, '', 'string', '{
  "desc": "",
  "content": [
    {
      "name": "title",
      "desc":"타이틀(한글)"
    },
    {
      "name": "desc",
      "desc": "설명(영문)"
    }
  ]
}', 'strategy2', '메인화면 전략2', '{"title":"\\uc120\\ud589\\ub514\\uc790\\uc778 \\uac1c\\ub150","desc":"Concept of preceding design"}', '2018-11-22 20:48:27', '2018-12-10 00:25:57');
INSERT INTO `designtopf_naver.com`.pages (pg_no, pg_path, pg_type, pg_archive, pg_order, pg_param, pg_kind, pg_config, pg_name, pg_display_name, pg_content, pg_datetime, pg_update) VALUES (19, 'index.html', 'front', 0, 7, '', 'string', '{
  "desc": "",
  "content": [
    {
      "name": "title",
      "desc":"타이틀(한글)"
    },
    {
      "name": "desc",
      "desc": "설명(영문)"
    }
  ]
}', 'strategy3', '메인화면 전략3', '{"title":"\\uace0\\uac1d\\uacfc\\uc758 \\ud30c\\ud2b8\\ub108\\uc2ed","desc":"Partnership with Customers"}', '2018-11-22 20:48:27', '2018-12-10 00:25:40');
INSERT INTO `designtopf_naver.com`.pages (pg_no, pg_path, pg_type, pg_archive, pg_order, pg_param, pg_kind, pg_config, pg_name, pg_display_name, pg_content, pg_datetime, pg_update) VALUES (20, 'index.html', 'front', 0, 8, '', 'string', '{
  "desc": "",
  "content": [
    {
      "name": "title",
      "desc":"슬로건"
    }
  ]
}', 'slogan', '슬로건', '{"title":"\\"PRODUCT DESIGN STUDIO ; TOPF\\""}', '2018-11-22 20:48:27', '2018-12-10 00:27:26');
INSERT INTO `designtopf_naver.com`.pages (pg_no, pg_path, pg_type, pg_archive, pg_order, pg_param, pg_kind, pg_config, pg_name, pg_display_name, pg_content, pg_datetime, pg_update) VALUES (21, 'index.html', 'front', 0, 10, '', 'list', '{
  "desc": "왼쪽 아이콘을 클릭하여 드래그 하면 순서를 변경할 수 있습니다. 파일을 다시 업로드하면 변경됩니다.",
  "content": [
    {
      "type": "image",
      "name": "image"
    },
    {
      "type": "string",
      "name": "subject",
      "size": "20"
    },
    {
      "type": "string",
      "name": "desc",
      "size": "20"
    },
    {
      "type": "string",
      "name": "link",
      "size": "40"
    },
    {
      "type": "string",
      "name": "position",
      "size": "10"
    }
  ]
}', 'works-category', '5종류 works category image', '{"list":[{"subject":"Digital appliance","desc":"","link":"\\/portfolio.html#digital","position":"0","image":{"file_module":"page-admin","file_name":"12.jpg","file_local_name":"6d67ebda8e71430389cb_12.jpg","file_size":1607547,"file_type":"image\\/jpeg","file_datetime":"2018-12-10 09:33:34"}},{"subject":"Home appliance","desc":"","link":"\\/portfolio.html#home","position":"230","image":{"file_module":"page-admin","file_name":"14.jpg","file_local_name":"983071de2a7550285792_14.jpg","file_size":1317510,"file_type":"image\\/jpeg","file_datetime":"2018-12-10 09:36:17"}},{"subject":"Medical appliance","desc":"","link":"\\/portfolio.html#medical","position":"460","image":{"file_module":"page-admin","file_name":"01_01.jpg","file_local_name":"6d6fe022cbd12e5ff648_01_01.jpg","file_size":1336343,"file_type":"image\\/jpeg","file_datetime":"2018-12-10 09:36:17"}},{"subject":"Equipment appliance","desc":"","link":"\\/portfolio.html#equipment","position":"690","image":{"file_module":"page-admin","file_name":"01_01 (1).jpg","file_local_name":"5253b623377a8ad42bc3_01_01_%281%29.jpg","file_size":2348779,"file_type":"image\\/jpeg","file_datetime":"2018-12-10 09:36:17"}},{"subject":"The others","desc":"","link":"\\/portfolio.html#other","position":"920","image":{"file_module":"page-admin","file_name":"6-1.jpg","file_local_name":"3832c6507acd6a745e17_6-1.jpg","file_size":1399096,"file_type":"image\\/jpeg","file_datetime":"2018-12-10 09:37:05"}}]}', '2018-11-22 20:48:27', '2018-12-10 01:01:07');
INSERT INTO `designtopf_naver.com`.pages (pg_no, pg_path, pg_type, pg_archive, pg_order, pg_param, pg_kind, pg_config, pg_name, pg_display_name, pg_content, pg_datetime, pg_update) VALUES (22, 'index.html', 'front', 0, 9, '', 'string', '{
  "desc": "",
  "content": [
    {
      "name": "title",
      "desc":"타이틀(한글)"
    },
    {
      "name": "desc",
      "desc": "설명(영문)"
    }
  ]
}', 'works', 'OUR WORKS', '{"title":"SOME OF OUR FEATURED WORKS","desc":"We have worked on some Awesome Projects that are worth boasting of."}', '2018-11-22 20:48:27', '2018-12-10 00:31:41');
INSERT INTO `designtopf_naver.com`.pages (pg_no, pg_path, pg_type, pg_archive, pg_order, pg_param, pg_kind, pg_config, pg_name, pg_display_name, pg_content, pg_datetime, pg_update) VALUES (23, 'index.html', 'front', 0, 12, '', 'image', '{
  "num": "1",
  "desc": "이미지 파일을 다시 업로드하면 이미지가 변경됩니다."
}', 'bottom-logo', '메인하단 로고', '{"file_module":"page-admin","file_name":"index-bottom-logo.png","file_local_name":"d9920b1cda698b62f30d_index-bottom-logo.png","file_size":13045,"file_type":"image\\/png","file_datetime":"2018-12-10 09:57:52"}', '2018-12-07 00:53:50', '2018-12-10 00:57:52');
INSERT INTO `designtopf_naver.com`.pages (pg_no, pg_path, pg_type, pg_archive, pg_order, pg_param, pg_kind, pg_config, pg_name, pg_display_name, pg_content, pg_datetime, pg_update) VALUES (24, 'contact.html', 'front', 0, 0, '', 'text', '', 'address', 'Address', '<p>46958 부산광역시 사상구 백양대로 700번길 140 (괘법동, 신라대학교 마린바이오센터 309-1호)<br>#309-1 Marine-Bio Center, 140, Baegyang-daero 700beon-gil, Sasang-gu, Busan 46958, Korea<br><strong>T</strong> 051-939-4081 <strong>F</strong> 051-939-4082 <strong>M</strong> 010-7124-4081<br><strong>E</strong> <a href="mailto:designtopf@naver.com">designtopf@naver.com</a> <strong>H</strong> www.designtopf.com</p>', '2018-12-07 00:53:50', '2018-12-10 01:10:47');
INSERT INTO `designtopf_naver.com`.pages (pg_no, pg_path, pg_type, pg_archive, pg_order, pg_param, pg_kind, pg_config, pg_name, pg_display_name, pg_content, pg_datetime, pg_update) VALUES (25, 'contact.html', 'front', 0, 1, '', 'string', '{
  "desc": "",
  "content": [
    {
      "name": "key",
      "desc":"Key"
    }
  ]
}', 'map-key', '구글맵 키', '{"key":"AIzaSyD6tGaPaSuBFsIo_0A4vJEvq-89VQ-AbQc"}', '2018-12-07 00:53:50', '2018-12-10 04:35:10');
INSERT INTO `designtopf_naver.com`.pages (pg_no, pg_path, pg_type, pg_archive, pg_order, pg_param, pg_kind, pg_config, pg_name, pg_display_name, pg_content, pg_datetime, pg_update) VALUES (26, 'contact.html', 'front', 0, 2, '', 'string', '{
  "desc": "",
  "content": [
    {
      "name": "address",
      "desc":"주소"
    }
  ]
}', 'map-address', '구글맵 주소', '{"address":"\\ubd80\\uc0b0\\uad11\\uc5ed\\uc2dc \\uc0ac\\uc0c1\\uad6c \\ubc31\\uc591\\ub300\\ub85c 700\\ubc88\\uae38 140 (\\uad18\\ubc95\\ub3d9, \\uc2e0\\ub77c\\ub300\\ud559\\uad50 \\ub9c8\\ub9b0\\ubc14\\uc774\\uc624\\uc13c\\ud130 309-1\\ud638)"}', '2018-12-07 00:53:50', '2018-12-10 04:20:24');
INSERT INTO `designtopf_naver.com`.pages (pg_no, pg_path, pg_type, pg_archive, pg_order, pg_param, pg_kind, pg_config, pg_name, pg_display_name, pg_content, pg_datetime, pg_update) VALUES (27, 'contact.html', 'front', 0, 3, '', 'text', '', 'map-popup', '지도아이콘 클릭시 나타나는 팝업내용', '<p>마린바이오센터 309호입니다.</p>', '2018-12-07 00:53:50', '2018-12-10 04:51:59');