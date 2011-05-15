if GetLocale() == "koKR" then

	-- update needed msg
	TukuiL.option_update = "Tukui가 변경되었기 때문에 설정 인터페이스도 업데이트해야 합니다, www.tukui.org 에 방문하세요."

	-- general
	TukuiL.option_general = "일반"
	TukuiL.option_general_uiscale = "자동 인터페이스 크기"
	TukuiL.option_general_override = "저해상도에서 고해상도 버전 화면배열 사용"
	TukuiL.option_general_overridelow = "고해상도에서 저해상도 버전 화면배열 사용"
	TukuiL.option_general_multisample = "멀티샘플링 1배 유지 (깨끗한 1px 선)"
	TukuiL.option_general_customuiscale = "인터페이스 크기 (자동 인터페이스 크기를 사용하지 않는다면)"
	TukuiL.option_general_classcolor = "직업 색상 사용"
	TukuiL.option_general_backdropcolor = "기본 배경 색상"
	TukuiL.option_general_bordercolor = "기본 선 색상"

	-- nameplate
	TukuiL.option_nameplates = "이름표"
	TukuiL.option_nameplates_enable = "Tukui 이름표"
	TukuiL.option_nameplates_enhancethreat = "위협 수준 색상 사용, 당신의 역할에 따라 자동 변경"
	TukuiL.option_nameplates_showhealth = "생명력 표시"
	TukuiL.option_nameplates_combat = "전투 중에만 이름표 표시"
	TukuiL.option_nameplates_goodcolor = "좋은 위협 수준 색상"
	TukuiL.option_nameplates_badcolor = "나쁜 위협 수준 색상"
	TukuiL.option_nameplates_transitioncolor = "중간 위협 수준 색상"

	-- merchant
	TukuiL.option_merchant = "상점"
	TukuiL.option_merchant_autosell = "회색 아이템 자동판매"
	TukuiL.option_merchant_autorepair = "자동수리"
	TukuiL.option_merchant_sellmisc = "지정한 아이템 자동판매"

	-- bags
	TukuiL.option_bags = "가방"
	TukuiL.option_bags_enable = "Tukui 단일가방"

	-- datatext
	TukuiL.option_datatext = "정보글자"
	TukuiL.option_datatext_24h = "24시간으로 표시"
	TukuiL.option_datatext_localtime = "시스템 시간으로 표시"
	TukuiL.option_datatext_bg = "전장정보 표시"
	TukuiL.option_datatext_hps = "초당 치유량 (0은 표시안함)"
	TukuiL.option_datatext_guild = "접속 중인 길드 원의 수 (0은 표시안함)"
	TukuiL.option_datatext_mem = "총 메모리 사용량 (0은 표시안함)"
	TukuiL.option_datatext_bags = "소지품 여유 공간 (0은 표시안함)"
	TukuiL.option_datatext_fontsize = "정보글자 글꼴 크기"
	TukuiL.option_datatext_fps_ms = "프레임율과 지연시간 (0은 표시안함)"
	TukuiL.option_datatext_armor = "방어도 (0은 표시안함)"
	TukuiL.option_datatext_avd = "완방 수치 (0은 표시안함)"
	TukuiL.option_datatext_power = "전투력 또는 주문력 (0은 표시안함)"
	TukuiL.option_datatext_haste = "가속도 (0은 표시안함)"
	TukuiL.option_datatext_friend = "접속 중인 친구의 수 (0은 표시안함)"
	TukuiL.option_datatext_time = "시간 (0은 표시안함)"
	TukuiL.option_datatext_gold = "보유 중인 골드 (0은 표시안함)"
	TukuiL.option_datatext_dps = "초당 피해량 (0은 표시안함)"
	TukuiL.option_datatext_crit = "치명타 및 주문 극대화 적중도 (0은 표시안함)"
	TukuiL.option_datatext_dur = "장비 내구도 (0은 표시안함)"
	TukuiL.option_datatext_currency = "화폐 (0은 표시안함)"
	TukuiL.option_datatext_micromenu = "메뉴 (0은 표시안함)"
	TukuiL.option_datatext_hit = "적중도 (0은 표시안함)"
	TukuiL.option_datatext_mastery = "특화도 (0은 표시안함)"

	-- unit frames
	TukuiL.option_unitframes_unitframes = "개체창"
	TukuiL.option_unitframes_combatfeedback = "생명력바에 피해량 및 치유량 표시"
	TukuiL.option_unitframes_totalhpmp = "생명력, 마나 등을 '현재|전체'로 표시"
	TukuiL.option_unitframes_showperhp = "생명력바에 생명력 백분율 표시"
	TukuiL.option_unitframes_playeraggro = "위협 수준이 증가하면 강조"
	TukuiL.option_unitframes_smooth = "부드러운 바"
	TukuiL.option_unitframes_portrait = "초상화 표시"
	TukuiL.option_unitframes_enable = "Tukui 개체창"
	TukuiL.option_unitframes_enemypower = "PVP대상만 마나, 분노, 기력 및 집중 표시"
	TukuiL.option_unitframes_enemyhostilitycolor = "적대감에 의존한 대상 생명력바 색상"
	TukuiL.option_unitframes_focus = "주시대상의 대상 표시"
	TukuiL.option_unitframes_bordercolor = "기본 선 색상"
	TukuiL.option_unitframes_manalow = "마나가 낮으면 경고"
	TukuiL.option_unitframes_unicolor = "통합 색상 사용 (회색 생명력바)"
	TukuiL.option_unitframes_classbar = "직업바"
	TukuiL.option_unitframes_combobar = "연계점수바"
	TukuiL.option_unitframes_weakenedsoulbar = "약화된 영혼바 (사제)"
	TukuiL.option_unitframes_altpowerbar = "상황 표시바"
	TukuiL.option_unitframes_arenaframes = "투기장 상대 플레이어창"

	-- raid frames
	TukuiL.option_raidframes = "파티창과 공격대창"
	TukuiL.option_raidframes_enablerange = "거리 투명도 사용"
	TukuiL.option_raidframes_range = "거리에 따른 투명도"
	TukuiL.option_raidframes_gridonly = "격자모양 공격대창 (치유 담당 공격대창)"
	TukuiL.option_raidframes_symbol = "전술 목표 아이콘 표시"
	TukuiL.option_raidframes_aurawatch = "공격대 약화 효과 표시 (치유 담당 공격대창)"
	TukuiL.option_raidframes_cooldown = "공격대 약화 효과 시간 표시 (치유 담당 공격대창)"
	TukuiL.option_raidframes_hpvertical = "생명력바가 세로로 줄어듦 (치유 담당 공격대창)"
	TukuiL.option_raidframes_raidaggro = "위협 수준이 높은 공격대원 강조"
	TukuiL.option_raidframes_playerparty = "파티창에 플레이어 표시"
	TukuiL.option_raidframes_gridscale = "공격대창 크기"
	TukuiL.option_raidframes_healcomm = "Healcomm 기능"
	TukuiL.option_raidframes_maintank = "방어 전담창"
	TukuiL.option_raidframes_mainassist = "지원공격 전담창"
	TukuiL.option_raidframes_role = "공격대원 역할 표시"
	TukuiL.option_raidframes_boss = "우두머리창"
	TukuiL.option_raidframes_showperpw = "우두머리 기력 백분율 표시"

	-- castbar
	TukuiL.option_castbar = "시전바"
	TukuiL.option_castbar_enable = "Tukui 시전바"
	TukuiL.option_castbar_latency = "지연시간 표시"
	TukuiL.option_castbar_icon = "아이콘 표시"
	TukuiL.option_castbar_ufcastbar = "개체창 위에 시전바 표시"
	TukuiL.option_castbar_focus = "주시대상창에 시전바 표시"
	TukuiL.option_castbar_boss = "우두머리창에 시전바 표시"
	TukuiL.option_castbar_arena = "투기장 상대 플레이어창에 시전바 표시"
	TukuiL.option_castbar_defaultcolor = "기본 색상"

	-- loot
	TukuiL.option_loot = "전리품"
	TukuiL.option_loot_enableloot = "Tukui 전리품 획득창"
	TukuiL.option_loot_autogreed = "자동 차비 또는 자동 마력 추출 (최고 레벨)"
	TukuiL.option_loot_enableroll = "Tukui 주사위창"

	-- map
	TukuiL.option_map = "지도"
	TukuiL.option_map_enable = "Tukui 세계 지도"
	TukuiL.option_map_mlocation = "미니맵 지역정보"

	-- tooltip
	TukuiL.option_tooltip = "툴팁"
	TukuiL.option_tooltip_enable = "Tukui 툴팁"
	TukuiL.option_tooltip_hidecombat = "전투 중 툴팁 숨김"
	TukuiL.option_tooltip_hidebutton = "행동 단축버튼 툴팁 숨김"
	TukuiL.option_tooltip_hideuf = "개체창 툴팁 숨김"
	TukuiL.option_tooltip_cursor = "커서 위치에 툴팁 표시"
	TukuiL.option_tooltip_showtalent = "툴팁에 특성 표시"
	TukuiL.option_tooltip_talentonlyinparty = "파티나 공격대 중일 때만 특성 표시"
	TukuiL.option_tooltip_showitemlvl = "툴팁에 아이템 레벨 표시"
	TukuiL.option_tooltip_whotargetting = "선택한 대상 표시"

	-- reminder
	TukuiL.option_reminder = "강화 효과 추적"
	TukuiL.option_reminder_enable = "직업 강화 효과 추적"
	TukuiL.option_reminder_sound = "직업 강화 효과 경고소리"
	TukuiL.option_reminder_raidbuffreminder = "공격대 강화 효과 추적"
	TukuiL.option_reminder_onlyininstance = "던전안에서만 공격대 강화 효과 추적 표시"

	-- action bar
	TukuiL.option_actionbar = "행동 단축바"
	TukuiL.option_actionbar_hidess = "특수 기술 단축바 숨김"
	TukuiL.option_actionbar_showgrid = "빈 행동 단축바 표시"
	TukuiL.option_actionbar_enable = "Tukui 행동 단축바"
	TukuiL.option_actionbar_hk = "단축키 표시"
	TukuiL.option_actionbar_bt = "버튼 이름 표시 (매크로)"
	TukuiL.option_actionbar_buttonsize = "행동 단축버튼의 크기"
	TukuiL.option_actionbar_buttonspacing = "행동 단축버튼의 간격"
	TukuiL.option_actionbar_petbuttonsize = "소환수/특수 기술 단축버튼의 크기"

	-- pvp
	TukuiL.option_pvp = "플레이어 대 플레이어"
	TukuiL.option_pvp_ii = "방해 아이콘 표시"

	-- cooldowns
	TukuiL.option_cooldown = "재사용 대기시간"
	TukuiL.option_cooldown_enable = "Tukui 재사용 대기시간 문자"
	TukuiL.option_cooldown_th = "X초 이하일 때 소수점까지 표시"

	-- chat
	TukuiL.option_chat = "대화창"
	TukuiL.option_chat_enable = "Tukui 대화창"
	TukuiL.option_chat_whispersound = "귓속말 알림 소리"
	TukuiL.option_chat_background = "대화창 배경"
	TukuiL.option_chat_justify = "우측 대화창 정렬"
	TukuiL.option_chat_height = "대화창 높이"
	TukuiL.option_chat_rightchat = "우측 대화창"
	TukuiL.option_chat_bubbles = "말풍선 스킨"

	-- buff
	TukuiL.option_auras = "강화 및 약화 효과"
	TukuiL.option_auras_player = "화면 상단 강화 및 약화 효과 표시"
	TukuiL.option_auras_auratimer = "개체창 강화 및 약화 효과"
	TukuiL.option_auras_aurascale = "강화 및 약화 효과 지속시간 글꼴 크기"
	TukuiL.option_auras_playeraura = "플레이어창에 강화 및 약화 효과 표시"
	TukuiL.option_auras_targetaura = "대상창에 강화 및 약화 효과 표시"
	TukuiL.option_auras_focusdebuff = "주시대상창에 약화 효과 표시"
	TukuiL.option_auras_bossdebuff = "우두머리 개체창에 약화 효과 표시"
	TukuiL.option_auras_arenadebuff = "투기장 상대 플레이어창에 약화 효과 표시"
	TukuiL.option_auras_buffrows = "플레이어, 대상창 강화 효과 줄의 수"
	TukuiL.option_auras_debuffrows = "플레이어, 대상창 약화 효과 줄의 수"
	TukuiL.option_auras_debuffnums = "주시대상, 우두머리, 투기장 상대 플레이어창 약화 효과 개수"
	TukuiL.option_auras_totdebuffs = "대상의 대상의 약화 효과 표시 (고해상도)"
	TukuiL.option_auras_onlyselfdebuffs = "대상창에 자신의 약화 효과만 표시"

	-- panels
	TukuiL.option_panels = "창"
	TukuiL.option_panels_infowidth = "정보창 너비"
	TukuiL.option_panels_bottompanel = "하단 배경창"
	TukuiL.option_panels_toppanel = "상단 배경창"
	TukuiL.option_panels_location = "상단 지역정보"
	TukuiL.option_panels_blizzardskins = "블리자드 인터페이스 스킨"

	-- misc
	TukuiL.option_misc = "기타"
	TukuiL.option_misc_autoinvite = "길드원이나 친구의 초대 자동수락"
	TukuiL.option_misc_autocustomlagtolerance = "블리자드 주문 예약 시간 설정을 당신의 지연시간에 맞게 설정"
	TukuiL.option_misc_altpowerbar = "좌측 정보창에 상황 표시바 표시"
	TukuiL.option_misc_threatbar = "우측 정보창에 위협수준바 표시"
	TukuiL.option_misc_errorenable = "화면 중앙의 오류 메시지 숨김"

	-- buttons
	TukuiL.option_button_reset = "초기화"
	TukuiL.option_button_load = "적용"
	TukuiL.option_button_close = "닫기"
	TukuiL.option_button_color = "색상 선택"
	TukuiL.option_setsavedsetttings = "캐릭터별로 저장"
	TukuiL.option_resetchar = "해당 캐릭터의 설정을 기본 설정으로 초기화하시겠습니까?"
	TukuiL.option_resetall = "모든 캐릭터의 설정을 기본 설정으로 초기화하시겠습니까?"
	TukuiL.option_perchar = "설정을 캐릭터별로 저장하시겠습니까?"
	TukuiL.option_makeselection = "계속하기전에 선택을 해야합니다."
end