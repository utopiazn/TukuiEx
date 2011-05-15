local T, C, L = unpack(select(2, ...)) -- Import: T - functions, constants, variables; C - config; L - locales

if T.client == "koKR" then
	BINDING_HEADER_TUKUI = "Tukui"
	BINDING_NAME_TUKUIRAIDMARKER = "전술 목표 아이콘 도우미"
 
	L.chat_BATTLEGROUND_GET = "[B]"
	L.chat_BATTLEGROUND_LEADER_GET = "[B]"
	L.chat_BN_WHISPER_GET = "[FR]"
	L.chat_BN_WHISPER_INFORM_GET = "[TO]"
	L.chat_GUILD_GET = "[G]"
	L.chat_OFFICER_GET = "[O]"
	L.chat_PARTY_GET = "[P]"
	L.chat_PARTY_GUIDE_GET = "[P]"
	L.chat_PARTY_LEADER_GET = "[P]"
	L.chat_RAID_GET = "[R]"
	L.chat_RAID_LEADER_GET = "[R]"
	L.chat_RAID_WARNING_GET = "[W]"
	L.chat_WHISPER_GET = "[FR]"
	L.chat_WHISPER_INFORM_GET = "[TO]"
	L.chat_FLAG_AFK = "[AFK]"
	L.chat_FLAG_DND = "[DND]"
	L.chat_FLAG_GM = "[GM]"
	--L.chat_ERR_FRIEND_ONLINE_SS = "|cff298F00접속|r했습니다"
	--L.chat_ERR_FRIEND_OFFLINE_S = "|cffff0000접속종료|r했습니다"
 
	L.chat_general = "일반"
	L.chat_trade = "거래"
	L.chat_defense = "수비"
	L.chat_recrutment = "길드모집"
	L.chat_lfg = "파티찾기"
 
	L.disband = "공격대를 해체합니다."
	L.raidutil_show = "공격대 도우미"
	L.raidutil_disband = "공격대 해체"
 
	L.datatext_download = "다운로드: "
	L.datatext_bandwidth = "대역폭: "
	L.datatext_guild = "길드"
	L.datatext_noguild = "길드 없음"
	L.datatext_bags = "소지품: "
	L.datatext_friends = "친구"
	L.datatext_online = "온라인: "
	L.datatext_wow = "월드 오브 워크래프트"
	L.datatext_armor = "방어구"
	L.datatext_dur = "내구도"
	L.datatext_earned = "수입:"
	L.datatext_spent = "지출:"
	L.datatext_deficit = "적자:"
	L.datatext_profit = "흑자:"
	L.datatext_timeto = "전투 시간"
	L.datatext_friendlist = "친구 목록:"
	L.datatext_playersp = "주문력"
	L.datatext_playerap = "전투력"
	L.datatext_playerhaste = "가속도"
	L.datatext_playermastery = "특화도"
	L.datatext_playerhit = "적중도"
	L.datatext_dps = "dps"
	L.datatext_hps = "hps"
	L.datatext_session = "이번 접속:"
	L.datatext_character = "캐릭터:"
	L.datatext_server = "서버:"
	L.datatext_totalgold = "전체:"
	L.datatext_savedraid = "공격대 정보"
	L.datatext_normal = "일반"
	L.datatext_hard = "영웅"
	L.datatext_currency = "화폐:"
	L.datatext_fps = " fps & "
	L.datatext_ms = " ms"
	L.datatext_playercrit = " 치명타율"
	L.datatext_avoidancebreakdown = "완방 수치"
	L.datatext_lvl = "레벨"
	L.datatext_boss = "우두머리"
	L.datatext_miss = "빗맞힘"
	L.datatext_dodge = "회피율"
	L.datatext_block = "방패 막기"
	L.datatext_parry = "무기 막기"
	L.datatext_playeravd = "완방: "
	L.datatext_servertime = "서버 시간: "
	L.datatext_localtime = "시스템 시간: "
	L.datatext_mitigation = "레벨에 따른 경감수준: "
	L.datatext_healing = "치유량: "
	L.datatext_damage = "피해량: "
	L.datatext_honor = "명예 점수: "
	L.datatext_killingblows = "결정타: "
	L.datatext_ttstatsfor = "점수: "
	L.datatext_ttkillingblows = "결정타:"
	L.datatext_tthonorkills = "명예 승수:"
	L.datatext_ttdeaths = "죽은 수:"
	L.datatext_tthonorgain = "획득한 명예:"
	L.datatext_ttdmgdone = "피해량:"
	L.datatext_tthealdone = "치유량:"
	L.datatext_basesassaulted = "거점 공격:"
	L.datatext_basesdefended = "거점 방어:"
	L.datatext_towersassaulted = "경비탑 점령:"
	L.datatext_towersdefended = "경비탑 방어:"
	L.datatext_flagscaptured = "깃발 쟁탈:"
	L.datatext_flagsreturned = "깃발 반환:"
	L.datatext_graveyardsassaulted = "무덤 점령:"
	L.datatext_graveyardsdefended = "무덤 방어:"
	L.datatext_demolishersdestroyed = "파괴한 파괴전차:"
	L.datatext_gatesdestroyed = "파괴한 관문:"
	L.datatext_totalmemusage = "총 메모리 사용량:"
	L.datatext_control = "점령 진영:"	
 
	L.Slots = {
	  [1] = {1, "머리", 1000},
	  [2] = {3, "어깨", 1000},
	  [3] = {5, "가슴", 1000},
	  [4] = {6, "허리", 1000},
	  [5] = {9, "손목", 1000},
	  [6] = {10, "손", 1000},
	  [7] = {7, "다리", 1000},
	  [8] = {8, "발", 1000},
	  [9] = {16, "주장비", 1000},
	  [10] = {17, "보조장비", 1000},
	  [11] = {18, "원거리", 1000}
	}
 
	L.popup_disableui = "Tukui는 현재 해상도에 최적화 되어 있지 않습니다. Tukui를 비활성화하겠습니까? (다른 해상도로 시도해보려면 취소)"
	L.popup_2raidactive = "2개의 공격대창이 사용 중입니다. 한 가지만 사용하셔야 합니다."
 
	L.merchant_repairnomoney = "수리에 필요한 돈이 충분하지 않습니다!"
	L.merchant_repaircost = "모든 장비가 수리되었습니다:"
	L.merchant_trashsell = "불필요한 아이템이 판매되었습니다:"
	L.merchant_guild = "길드 은행"
 
	L.goldabbrev = "|cffffd700골|r"
	L.silverabbrev = "|cffc7c7cf실|r"
	L.copperabbrev = "|cffeda55f코|r"
 
	L.unitframes_ouf_offline = "오프라인"
	L.unitframes_ouf_dead = "죽음"
	L.unitframes_ouf_ghost = "유령"
	L.unitframes_ouf_lowmana = "마나 적음"
	L.unitframes_ouf_threattext = "현재 대상에 대한 위협 수준:"
	L.unitframes_ouf_deaddps = "|cffff0000[죽음]|r"
	L.unitframes_ouf_wrathspell = "천벌"
	L.unitframes_ouf_starfirespell = "별빛섬광"
	L.unitframes_ouf_trinketready = "장신구 준비: "
	L.unitframes_ouf_trinketused = "장신구 사용: "
	L.unitframes_ouf_wotfused = "포세이큰의 의지 사용: "
 
	L.tooltip_count = "개수"
	L.tooltip_whotarget = "선택한 대상"
	L.tooltip_whocast = "시전자"
	L.tooltip_itemlevel = "아이템 레벨"
	L.tooltip_equip = " (착용)"
	L.tooltip_notalents = "특성 없음"
	L.tooltip_loading = "불러오는 중..."
 
	L.bags_noslots = "소지품이 가득 찼습니다."
	L.bags_costs = "가격: %.2f 골"
	L.bags_buyslots = "가방 보관함을 추가로 구매하려면 /bags purchase yes를 입력하세요."
	L.bags_openbank = "먼저 은행을 열어야 합니다."
	L.bags_sort = "열려있는 가방이나 은행에 있는 아이템을 정리합니다."
	L.bags_stack = "띄엄띄엄 있는 아이템을 정리합니다."
	L.bags_buybankslot = "가방 보관함을 추가로 구매합니다."
	L.bags_search = "검색"
	L.bags_sortmenu = "분류"
	L.bags_sortspecial = "특수물품 분류"
	L.bags_stackmenu = "정리"
	L.bags_stackspecial = "특수물품 정리"
	L.bags_showbags = "가방 보기"
	L.bags_sortingbags = "분류 완료."
	L.bags_nothingsort= "분류할 것이 없습니다."
	L.bags_bids = "사용 중인 가방: "
	L.bags_stackend = "재정리 완료."
	L.bags_rightclick_search = "검색하려면 오른쪽 클릭"
	
	L.mail_message = "통의 편지"
	L.mail_needmailbox = "우체통 근처에 있어야 합니다."
	L.mail_complete = "모든 편지를 열어보았습니다."
	L.mail_invfull = "가방이 꽉 찼습니다."
	
	L.time_day = "일"
	L.time_hour = "시간"
	L.time_minute = "분"
	L.time_second = "초"
	
	L.autoinv_enable = "자동초대 활성화: 초대"
	L.autoinv_enable_c = "자동초대 활성화: "
	L.autoinv_disable = "자동초대 비활성화"
	L.autoinv_invite = "초대"
 
	L.chat_invalidtarget = "잘못된 대상"
	
	L.core_title = "|cffC495DDTukui|r |cffff8000Extended Edition|r"
	L.core_tukui = "|cffC495DDTukui:|r "
	L.core_website = "|cff16FF5Dcafe.naver.com/tukui|r"	
	L.core_addonnotfound = "|cffff0000오류, 애드온을 찾을 수 없습니다.|r"
	
	L.symbol_CLEAR = "초기화"
	L.symbol_SKULL = "해골"
	L.symbol_CROSS = "가위표"
	L.symbol_SQUARE = "네모"
	L.symbol_MOON = "달"
	L.symbol_TRIANGLE = "세모"
	L.symbol_DIAMOND = "다이아몬드"
	L.symbol_CIRCLE = "동그라미"
	L.symbol_STAR = "별"
	
	L.bind_binding = "단축"
	L.bind_key = "키"
	L.bind_nobind = "단축키 지정 안 됨"
	L.bind_combat = "전투 중에는 단축키를 지정할 수 없습니다."
	L.bind_saved = "새로 지정한 모든 단축키가 저장되었습니다."
	L.bind_discard = "새로 지정한 모든 단축키가 저장되지 않았습니다."
	L.bind_instruct = "커서가 위치한 단축버튼에 단축키를 지정할 수 있습니다. 오른쪽 클릭으로 해당 단축버튼의 단축키를 초기화할 수 있습니다."
	L.bind_save = "저장"
	L.bind_discardbind = "취소"
	
	L.move_tooltip = "툴팁 이동"
	L.move_minimap = "미니맵 이동"
	L.move_watchframe = "임무 추적창 이동"
	L.move_gmframe = "대기표 이동"
	L.move_buffs = "플레이어 강화 효과 이동"
	L.move_debuffs = "플레이어 약화 효과 이동"
	L.move_shapeshift = "특수 기술 단축바 이동"
	L.move_achievements = "업적창 이동"
	L.move_roll = "전리품 주사위창 이동"
	L.move_vehicle = "탈것 자리 표시기 이동"
	L.move_playercastbar = "플레이어 시전바"
	L.move_targetcastbar = "대상 시전바"
	L.move_focuscastbar = "주시대상 시전바"
	L.move_focustargetcastbar = "주시대상의 대상 시전바"
	
	-- tuto/install
	L.install_header_1 = "환영합니다"
	L.install_header_2 = "필수사항"
	L.install_header_3 = "개체창"
	L.install_header_4 = "특징"
	L.install_header_5 = "알아야 할 것"
	L.install_header_6 = "명령어"
	L.install_header_7 = "완료"
	L.install_header_8 = "필수요소"
	L.install_header_9 = "대화창"
	L.install_header_10= "창"
	L.install_header_11= "성공!"

	L.install_init_line_1 = "|cffC495DDTukui|r |cffff8000Extended Edition|r을 사용해주셔서 감사합니다!"
	L.install_init_line_2 = "몇 단계의 간단한 설치과정을 진행할 것입니다. 각 단계의 설정적용 여부를 선택할 수 있습니다."
	L.install_init_line_3 = "설치를 하기 전에 간단한 설명을 통해 Tukui의 몇 가지 기능을 볼 수 있습니다."
	L.install_init_line_4 = "설명을 보고 싶다면 '설명'을 누르고, 설명을 건너뛰고 싶으면 '설치'를 누르세요."

	L.tutorial_step_1_line_1 = "앞으로 설명을 통해 Tukui의 기능을 보여줄 것입니다."
	L.tutorial_step_1_line_2 = "먼저, 이 UI를 사용하기 전에 알아야 할 필수사항입니다."
	L.tutorial_step_1_line_3 = "이 설치 과정은 대부분 캐릭터별로 저장됩니다. 반면, 설치 후 적용하는 설정들은 계정별로 적용됩니다. 새로운 캐릭터에 Tukui 설정을 적용시키기 위해 설치 과정을 진행해야 합니다. 설치 과정은 Tukui를 처음 사용하는 캐릭터가 로그인할 때 자동으로 나타납니다."
	L.tutorial_step_1_line_4 = "전문가는 고급 기능(Lua 수정 등)을 사용할 수 있는 사용자를 말합니다. 초보자는 일반 사용자를 말하며 프로그래밍 능력을 요구하지는 않습니다. 초보자는 소스 수정보다 설정 인터페이스(/tukui)를 사용하는 것을 추천합니다."

	L.tutorial_step_2_line_1 = "Tukui는 Haste에 의해 개발된 oUF 모듈을 포함하고 있습니다. 이 모듈은 화면상에 모든 개체창, 강화 및 약화 효과, 직업별 특정 요소들을 표시해줍니다."
	L.tutorial_step_2_line_2 = "oUF에 대한 자세한 정보를 원하면 wowinterface.com 에 방문해서 찾아보기 바랍니다."
	L.tutorial_step_2_line_3 = "만약 치유 담당이나 진행자라면 치유 담당 공격대창(/heal)을 추천합니다. 치유 담당 공격대창은 공격대의 자세한 정보를 보여줍니다. 단순한 공격대창을 원하면 공격 및 방어 담당 공격대창(/dps)을 추천합니다. 어떤 것도 사용하길 원치 않는 분이나 다른 애드온을 사용하는 분은 캐릭터 선택 화면 외부 인터페이스에서 사용하지 않음으로 설정하면 됩니다."
	L.tutorial_step_2_line_4 = "개체창 위치 이동을 원한다면, /moveui를 입력하기 바랍니다."

	L.tutorial_step_3_line_1 = "Tukui는 블리자드 UI를 재구성한 것입니다. 기본 UI에서 볼 수 있는 거의 모든 기능은 Tukui를 통해 가능합니다. 기본 UI와 다르게 추가된 기능은 화면에선 볼 수 없는 몇 가지 자동 기능입니다. 상점에서 불필요한 아이템 판매와 가방 아이템 자동 정리를 예를 들 수 있습니다."
	L.tutorial_step_3_line_2 = "모든 사용자가 피해량 미터기, 공격대 경보, 위협 수준 미터기 등을 선호하는 게 아니므로 포함되어 있지 않습니다. Tukui는 모든 직업, 역할, 사양, 게임 스타일, 사용자의 취향 등을 최대한 맞추도록 노력하였습니다. 그것이 바로 Tukui가 현재 가장 선호하는 UI 중 하나인 이유입니다. 모든 사용자는 게임 스타일에 맞게 최대한 수정 가능합니다. 또한, 애드온에 의존하지 않고 자신만의 맞춤 UI를 만들기 원하는 사용자를 위해 디자인되었습니다. 현재 많은 사용자들이 2009년부터 Tukui를 토대로 자신만의 UI 사용 중입니다. Tukui 웹사이트에 Edited Packages를 한번 살펴보세요!"
	L.tutorial_step_3_line_3 = "추가 기능을 원하는 분은 Tukui 웹사이트 AddOns 포럼 또는 wowinterface.com 에 방문해서 찾아보기 바랍니다."
	L.tutorial_step_3_line_4 = ""

	L.tutorial_step_4_line_1 = "하단 행동 단축바의 줄의 수를 설정하려면 상하좌우에 커서를 대면 나타나는 버튼을 클릭하면 됩니다. 우측 행동 단축바는 상단과 하단에 버튼이 나타납니다. 대화창을 복사하려면 대화창 우측 상단 모서리에 커서를 대면 나타나는 버튼을 클릭하면 됩니다."
	L.tutorial_step_4_line_2 = "미니맵 선 색상이 새 편지를 받으면 녹색으로, 달력 초대를 받으면 붉은색으로, 새 편지와 달력 초대가 동시에 있으면 주황색으로 변경됩니다."
	L.tutorial_step_4_line_3 = "정보글자의 대부분은 마우스 왼쪽 클릭을 통해 블리자드의 다양한 창을 볼 수 있습니다. 친구와 길드 정보글자는 마우스 오른쪽 클릭으로 추가 기능을 사용할 수 있습니다."
	L.tutorial_step_4_line_4 = "몇몇 하위 메뉴를 사용할 수 있습니다. 가방 닫기 버튼을 오른쪽 클릭하면 하위 메뉴가 나타나며 가방 보기, 아이템 정리, 열쇠고리 등이 나타납니다. 미니맵에 마우스 가운데 버튼을 누르면 블리자드 기본 메뉴가 나타납니다."

	L.tutorial_step_5_line_1 = "마지막으로, Tukui는 유용한 명령어를 포함하고 있습니다. 아래 목록을 참고하세요."
	L.tutorial_step_5_line_2 = "/moveui는 거의 모든 Tukui 창을 이동할 수 있게 합니다. /enable과 /disable은 빠르게 Tukui를 활성화 또는 비활성화할 수 있습니다. /rl은 UI를 재시작합니다. /heal은 치유 담당 공격대창을 활성화, /dps는 공격 및 방어 담당 공격대창을 활성화합니다."
	L.tutorial_step_5_line_3 = "/tt는 대상에게 귓속말을 보낼때, /rc는 전투 준비, /rd 파티나 공격대 해체, /bags 명령어는 가방에 대한 몇가지 기능을 보여줍니다. /ainv 귓속말 대상 자동 초대를 가능하게 합니다. (/ainv off) 자동초대 기능을 비활성화 합니다."
	L.tutorial_step_5_line_4 = "/gm은 도움 요청(지식 열람실, GM 요청하기) 창 열기, /install, /resetui 또는 /tutorial은 설치 과정을 불러옵니다. /frame은 커서가 위치한 창의 이름과 추가 정보를 보여줍니다."

	L.tutorial_step_6_line_1 = "설명 과정이 완료되었습니다. 다시 보시려면 언제든지 /tutorial 입력하면 됩니다."
	L.tutorial_step_6_line_2 = "config/config.lua 파일을 살펴보거나 /Tukui 입력을 통해 인터페이스 설정을 하기 바랍니다."
	L.tutorial_step_6_line_3 = "아직 설치가 완료되지 않았다면 설치 과정을 진행하십시오!"
	L.tutorial_step_6_line_4 = ""

	L.install_step_1_line_1 = "이 단계는 Tukui의 정확한 설정을 적용할 것 입니다."
	L.install_step_1_line_2 = "처음으로 필수요소를 설정합니다."
	L.install_step_1_line_3 = "특정 설정을 적용할 것이 아니라면, |cffff0000추천|r합니다."
	L.install_step_1_line_4 = "이 설치를 적용하려면 '계속'을 누르고, 건너뛰려면 '건너뛰기'를 누르세요."

	L.install_step_2_line_0 = "다른 대화창 애드온을 사용하시기 때문에 이 단계는 건너뛰기 될 것입니다. 설치 진행을 위해 '건너뛰기'를 누르세요."
	L.install_step_2_line_1 = "다음으로 대화창을 설정합니다."
	L.install_step_2_line_2 = "이 단계는 처음이신 사용자에게 추천합니다. 기존 사용자는 건너뛰어도 됩니다."
	L.install_step_2_line_3 = "설치 도중에는 대화창 글꼴이 크게 보여집니다. 설치를 마치면 다시 정상적으로 나타납니다."
	L.install_step_2_line_4 = "이 설치를 적용하려면 '계속'을 누르고, 건너뛰려면 '건너뛰기'를 누르세요."

	L.install_step_3_line_1 = "마지막으로 기본 창 위치를 설정합니다."
	L.install_step_3_line_2 = "이 단계는 처음이신 사용자에게 추천합니다."
	L.install_step_3_line_3 = ""
	L.install_step_3_line_4 = "이 설치를 적용하려면 '계속'을 누르고, 건너뛰려면 '건너뛰기'를 누르세요."

	L.install_step_4_line_1 = "설치가 완료되었습니다."
	L.install_step_4_line_2 = "UI 재시작을 위해 '마침'을 누르세요."
	L.install_step_4_line_3 = ""
	L.install_step_4_line_4 = "수고하셨습니다. 자세한 사항은 cafe.naver.com/tukui 에 방문하면 확인 가능합니다."

	L.install_button_tutorial = "설명"
	L.install_button_install = "설치"
	L.install_button_next = "다음"
	L.install_button_skip = "건너뛰기"
	L.install_button_continue = "계속"
	L.install_button_finish = "마침"
	L.install_button_close = "종료"
end
