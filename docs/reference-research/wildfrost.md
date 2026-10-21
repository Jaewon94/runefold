# Wildfrost 설계 참고 조사 (1단계: 공개 자료)

- 조사일/확인일: 2026-10-20 (모든 항목 동일)
- 방법: WebSearch/WebFetch만 사용. 게임 파일 접근 없음. 원문은 한국어로 요약했고 인용·에셋 복사 없음.
- 주의: WebFetch는 페이지를 요약 모델로 다시 요약한 결과다. 숫자와 이름은 위키 원문 대조를 못 했으므로 "높음"이라도 공식 위키 기준 1차 요약으로 본다.
- 약칭: WF = https://wildfrostwiki.com (팬 위키). 문서 표의 "rev"는 해당 위키 문서의 마지막 편집일이며 게임 버전이 아니다.

---

## 0. 대상 식별

| 항목 | 내용 | 출처 | 확신도 |
|---|---|---|---|
| 장르 | 전술 로그라이크 덱빌더. 카운트다운(카운터) 기반 자동 행동 | Steam https://store.steampowered.com/app/1811990/Wildfrost/ , WF https://wildfrostwiki.com/Wildfrost | 높음 |
| 개발 | Deadpan Games(Will Lewis, 프로그래머/디자이너) + Gaziter(아티스트/디자이너) | Steam, 공식 프레스킷 https://www.wildfrostgame.com/presskit/ , Chucklefish https://chucklefish.org/?p=3358 | 높음 |
| 퍼블리셔 | Chucklefish | Steam, 프레스킷 | 높음 |
| "Gaw Gaw Games" | 의뢰문에 적힌 이 이름은 검색한 모든 출처에서 확인되지 않음. 출처들은 개발사를 Deadpan Games와 Gaziter로 적음 | 위 출처들 + 검색 결과(일치 없음) | 확인 불가(미확인). 의뢰문 표기는 잘못일 가능성 있음 |
| Gaziter 본명 | Nintendo Life 한 기사가 "Asaf Gazit"로 적음. 다른 출처는 Gaziter만 표기 | https://www.nintendolife.com/news/2023/03/wildfrost-shuffles-charming-and-chilly-deck-building-on-switch-in-april | 낮음 |
| 개발 시작 | 2020-03 종이 프로토타입, 2020-09 본 개발 | Chucklefish https://chucklefish.org/?p=3358 , WF Wildfrost | 높음 |
| 출시 | 2023-04-12 PC(Steam)/Switch. Xbox/MS Store 2024-12-10. iOS/Android 2024-04-11 | WF https://wildfrostwiki.com/Version_History , Gematsu https://www.gematsu.com/2024/03/wildfrost-coming-to-ios-android-on-april-11 | 높음 |
| 가격 | PC 정가 약 $19.99(Gematsu류 목록). Steam 지역가 KRW 21,000 | SteamSpy/목록 검색 결과, Steam | 중간 |
| 최신 버전 | PC 1.2.3(2025-11-19), Switch 1.2.4, Windows/Xbox 1.2.7, 모바일 1.2.4 (위키 메인 기준). 직전 큰 콘텐츠: 1.2.0 "Friends & Foes"(2024-06) | WF https://wildfrostwiki.com/Main_Page , Version_History | 중간(위키 반영 시차 가능) |
| 평가 | Steam 전체 매우 긍정 91%(영어 리뷰 5,363건), 최근 30일 86%(22건), Metacritic 80. 출시 직후엔 약 60%로 낮았다는 기사도 있음 | Steam, https://thetacomaledger.com/2023/05/08/review-new-indie-game-wildfrost-receives-unwarranted-mixed-reviews/ | 높음(Steam) / 낮음(60% 수치, 1개 기사 인용) |
| Steam 태그 | Card Battler, Roguelike Deckbuilder, Difficult, Turn-Based Tactics, Base Building, Replay Value 등 | Steam | 높음 |
| 기준 버전 | 이하 사실은 문서별로 버전이 달라 각 행에 rev 날짜를 적음. 1.0.6(2023-08)과 1.1.0(2023-12)에서 구조가 크게 바뀌었으므로 2023 초 자료(초기 공략)는 구버전일 수 있음 | WF Version_History | 높음 |

---

## 1. 전투 구성

| 사실(요약) | 출처 | 확신도 / 버전·rev |
|---|---|---|
| 보드: 각 진영이 2행 x 3칸 = 6칸. 칸 번호는 위키 도식 기준 홀수가 위 행, 짝수가 아래 행이며 앞에서 뒤 순. (위키 설명이 일부 모호하다고 요약됨) | WF https://wildfrostwiki.com/Getting_Started | 중간 / rev 2024-07-29 (스텁 문서) |
| "전열/후열"이라는 용어보다 "상대 진영의 같은 줄(행) 맨 앞 카드"를 때리는 구조. 공격은 맞은편 행의 가장 앞 카드를 타격 | 동일 | 높음 / rev 2024-07-29 |
| 카운터 구조: 매 턴 모든 카드의 카운터가 1씩 감소, 0이 되면 자동 발동(공격/능력) 후 최대값으로 리셋. 적 카드가 먼저 카운트다운. 같은 진영 안에서는 위에서 아래, 앞에서 뒤 순으로 처리 | 동일 | 높음 / rev 2024-07-29 |
| 플레이어 한 턴에 손패에서 카드 1장만 낼 수 있음(턴 소모). 카운트다운은 그 뒤에 진행되는 것으로 보이나 단계별 순서는 위키가 명시하지 않음 | 동일 | 중간 |
| 턴을 소모하지 않는 예외 키워드: Noomlin(낼 때 턴 안 끝남), Zoomlin(턴 안 끝나고 사용 시 사라짐), Crown(전투 시작 시 리더와 함께 배치, 손패 뽑기 전 사용) | WF https://wildfrostwiki.com/Keywords (rev 2025-07-23), https://wildfrostwiki.com/Crowns (rev 2024-06-07) | 높음 |
| 손패: 전투 시작에 6장 드로우. 손패 다시 뽑기용 "Redraw Bell": 손패 전부 버리고 새로 6장 뽑되 턴 소모. 4턴 연속 안 쓰면 충전되어 턴 소모 없이 1회 사용 가능 | Getting_Started; WF https://wildfrostwiki.com/Bells (rev 2024-07-22) | 높음 |
| 덱 관리: 사용한 아이템은 버림 더미(discard pocket)로 감. 동료는 필드에 남고 언제든 "리콜"해 버림 더미로 되돌리면 디버프가 사라지고 체력 5 회복. 리콜한 동료는 다시 뽑히면 재배치 | Getting_Started; WF https://wildfrostwiki.com/Companions (rev 2024-02-12) | 높음 / 중간(체력 5 회복 수치는 위키 1개 출처) |
| 리셔플 규칙은 위키 문서에 명시 없음 | Getting_Started | 미확인 |
| 리더: 런 시작 시 3개 부족(Snowdwellers/Shademancers/Clunkmasters) 중 하나를 고르고 그 부족의 리더 후보 3명(무작위 생성 이름·능력·스탯) 중 선택. 항상 전투에 배치되고 리콜 불가. 리더가 죽으면 런 종료 | Getting_Started; WF https://wildfrostwiki.com/Leaders (rev 2024-07-04); Version_History(1.0.6에서 부족 선택 후 리더 3명 중 선택) | 높음 |
| 동료(Companion): 체력/공격/카운터 보유. 필드에 남아 주 딜러·지원 역할. 기본 보유(출전) 한도 3, Sun Bell of Fellowship로 증가. 한도 수치는 위키가 +1(총 4)이라 하고 1.0.6 패치노트(SteamDB 검색 요약)는 "+2"로 읽혀 서로 어긋남. 둘 다 기록 | 한도: 검색 요약(WF Bells / SteamDB https://steamdb.info/patchnotes/12060294 (직접 열람 불가, 403)) | 중간(한도 3) / 낮음(+1 vs +2) |
| 아이템/주문: 손패에서 사용 후 버림. 공격 수치가 있는 아이템은 손패 카드에 사용 불가 등 타겟 제한이 있음 | WF https://wildfrostwiki.com/Items (rev 2024-05-14) | 높음 |
| 클런커(Clunker): 체력 대신 Scrap. 1 이상 피해를 받으면 크기와 무관하게 Scrap 1 감소 → 고피해 방어용 | Getting_Started | 높음 |
| 펫: 리더 선택 후 1마리 선택(기본 Snoof, 이후 해금). 후반 성장은 약한 편이라는 평가 | Getting_Started, Companions | 중간 |
| 웨이브: 전투 시작 시 일부 적만 필드에 있고 시간이 지나면 증원. 우측 "Wave Bell"(적 카운트다운 표시)이 증원까지 남은 턴 표시. 기본 웨이브 카운터는 5(Horde Bell이면 4)로 읽힘. 1.0.6부터 웨이브 자동 투입이 아니라 플레이어가 벨을 눌러 다음 웨이브를 앞당길 수 있음 | Getting_Started; Bells; Version_History | 중간(웨이브 5는 간접 추정) |
| 일반 전투는 마지막 웨이브에 미니보스가 있고, 미니보스/보스를 처치하면 남은 적은 도망. 보스전은 보스가 처음부터 필드에 있음 | WF https://wildfrostwiki.com/Enemies (rev 2024-07-01) | 높음 |
| 적 카드도 같은 카운터 규칙. 적 키워드: Frontline/Backline(배치 위치 고정), Bombard(표시된 칸 전체 공격), Unmovable, Split, Absorb, Wild | Keywords | 높음 |
| 이동: 플레이어 턴 중 필드 카드 위치를 자유롭게 옮길 수 있음(공략: 부상 유닛을 후열로) | Companions; https://cardgamer.com/guides/wildfrost-tips/ | 중간 |
| 턴 순서 표시 버튼은 1.0.5(2023-06)에 추가 | Version_History | 높음 |

---

## 2. 카드·참(charm)·유물 등급 체계와 시너지 구조

### 2-1. 카드/참/벨 분류 (등급 체계)

| 사실(요약) | 출처 | 확신도 / 버전·rev |
|---|---|---|
| 카드 종류: 리더, 동료, 아이템, 클런커, 펫, 섀이드(Shade, 소환체). 참은 카드가 아니라 카드에 붙이는 장착물 | Getting_Started; Main_Page | 높음 |
| 희귀도(common/rare 등) 등급 표기: 위키의 아이템·동료·참 문서에 별도 희귀도 등급 서술이 없음. 즉 Slay the Spire식 일반/희귀/전설 등급 체계는 확인되지 않음. 대신 부족 전용 vs 공용("All") 구분, 해금 여부, 저주(Cursed) 구분이 있음 | Items, Companions, Charms 요약 | 중간(없음을 확인한 것이 아니라 못 찾은 것) |
| 유물에 해당하는 것은 "Sun Bell"(런 전체 규칙 변경 장치). 보스 처치(미니보스 제외) 후 보상으로 선택. 1번째 보스 후: Sun Bell 3 + 참 2 + 왕관 중 2개 선택. 2번째 보스 후: Sun Bell 3 + 참 2 중 2개. 3번째 보스 후: Sun Bell 4 중 2개 | WF https://wildfrostwiki.com/Sun_Bells (rev 2024-07-22) ; Version_History(1.0.6에서 도입) | 높음 |
| Sun Bell 예: Hands(손패 7장), Health(리더 체력 +6), Strength(덱의 아이템 공격 +2), Infinity(리드로우 충전 시 턴마다 추가 드로우), Noomlin(무작위 카드 2장에 Noomlin 부여), Time(웨이브 1턴 지연), Fellowship(동료 한도·참 한도 +) | Sun_Bells, Bells, Version_History | 높음 |
| 즉발형 Sun Bell은 한 번 적용 후 재계산되지 않아 이후 참 착용과 상호작용 순서가 중요 | Sun_Bells | 높음 |
| 상점: 일반 상점 Woolly Snail은 아이템·참·왕관 판매. Charm Merchant는 참 3개 + 참 달린 랜덤 카드 1장. 왕관은 상점 1개당 75 Bling(Blingsnail Bell 활성 시 80, 구매마다 +10) | WF https://wildfrostwiki.com/Map (rev 2025-04-21), https://wildfrostwiki.com/Bling (rev 2025-04-16), Crowns | 높음 |

### 2-2. 참 = 업그레이드 방식

| 사실(요약) | 출처 | 확신도 / 버전·rev |
|---|---|---|
| 참은 카드 1장에 영구히 붙는 장착물. 한 카드당 최대 3개(저주 참도 슬롯 차지). Chuckle Charm이 한도 해제 | WF https://wildfrostwiki.com/Charms (rev 2024-06-24) | 높음 |
| 한 번 붙이면 제거·되돌리기 불가. 붙이는 순서가 결과에 영향(효과가 부착 시점의 카드 상태에 적용) | Charms | 높음 |
| 획득: Charm Dispenser(무료 랜덤 1개), 상점, 보스 후 Sun Vault, 일부 적/보상에 사전 부착, Gloom Bell로 저주 참 부착 | Charms | 높음 |
| 효과 유형: 수치 증가(공격 +4, 체력 +5 등), 키워드 부여(Critical, Barrage, Consume), 상태이상 부여(Snow 등), 조건 발동(처치 시 회복), 기본 스탯 교체, 저주(페널티) | Charms | 높음 |
| 참은 런 사이에 이어지지 않음(예외: 실패한 런의 부상 동료) | Charms | 높음 |
| 공식 문구: "wobbly charms"로 카드를 업그레이드 가능(2022 발표 글) | Chucklefish https://chucklefish.org/?p=3358 | 높음 |
| 3→1 합성(같은 카드 3장을 합쳐 승급) 같은 구조는 확인되지 않음. 중복 카드는 Shade Sculptor(아이템·클런커 복제)나 Muncher(카드 최대 2장 제거) 이벤트로 다룸 | Map | 중간 |

### 2-3. 상태효과·키워드 시너지

| 사실(요약) | 출처 | 확신도 / 버전·rev |
|---|---|---|
| 버프: Block(피해 1회 무효 후 -1), Shell(피해 흡수 풀), Spice(다음 공격 가산, 공격 후 리셋), Teeth(맞으면 반격 피해), Lumin(수치 효과 2배, 한 카드에만 존재), Resist Snow | WF https://wildfrostwiki.com/Stats (rev 2024-06-03) | 높음 |
| 디버프: Snow(카운터와 반응 정지, 턴 끝 -1), Frost(공격 감소), Bom(받는 피해 증가), Demonize(다음 피해 2배), Haze(공격이 아군에게 향함), Ink(효과 비활성), Overburn(체력 이상이 되면 폭발해 같은 행 아군도 피해), Shroom(턴 끝 피해 후 -1) | Stats | 높음 |
| 처리 순서: Block → Shell → Health. Bom이 Demonize 배수보다 먼저. Lumin은 Shell/Spice/Teeth/Overburn을 증폭 | Stats | 높음 |
| 대표 키워드: 타겟(Aimless 무작위, Barrage 행 전체, Longshot 가장 먼 적), Consume(사용 후 소멸), Recycle X(정크 X개 필요), Smackback, Yank(앞으로 당김), Fury X(행에 혼자일 때 공격 증가), Critical(손패 가장 오른쪽이면 효과 2배), Draw X, Spark(배치 즉시 발동), Trash X(정크 생성) | WF https://wildfrostwiki.com/Keywords (rev 2025-07-23) | 높음 |
| 부족 정체성: Snowdwellers = Shroom/Shell/Spice/Snow, 회복·원소 제어. Shademancers = 섀이드 소환·희생, Teeth, Overburn. Clunkmasters = Scrap, Bom, Ink, Haze, Junk, 카드 파괴 시너지 | WF https://wildfrostwiki.com/Tribes (rev 2024-07-10) | 높음 |
| 시너지가 "카드 간 위치"에 걸리는 구조가 많음: 행 전체(Barrage, Overburn), 앞/뒤(Frontline, Yank, Fury), 가장 오른쪽 손패(Critical) | Keywords, Stats | 높음 |

---

## 3. 한 판 길이·전투 길이·지도 구조

| 사실(요약) | 출처 | 확신도 / 버전·rev |
|---|---|---|
| 지도: 3개 구역(Snowdwell/Tundra → Ice Caves → Frostlands). 각 스테이지는 두 갈래 경로 중 하나를 골라 그 경로의 모든 이벤트를 방문하고 끝은 보스 또는 미니보스. 경로 중간은 "strictly beneficial"한 이벤트 | WF https://wildfrostwiki.com/Map (rev 2025-04-21) | 높음 |
| 전투 사이 이벤트 수: Tundra 3~4개, Ice Caves 3~4개, Frostlands 1~2개 | Map | 높음 |
| 전투 목록: Tundra Fight 1~3, Ice Caves Fight 4~6, Frostlands Fight 7~9(Fight 8 = Eye of the Storm, Fight 9 = Heart of the Storm). 위 번호가 "한 런의 고정 전투 수 9개"인지 "구역별 조우 풀"인지 위키가 명시하지 않음. 따라서 한 런의 전투 총수는 미확인 | Map | 낮음(해석) |
| 보스: 첫 보스(Tundra 끝)에서 Bamboozle/Infernoko 등, 둘째(Ice Caves 끝)에서 Truffle/Krunker 등, 최종 Eye of the Storm. 이전 위키 문서는 Frost Guardian을 보스로 기재, 일부 출처는 Frost Guardian이 최종이라 함 → 출처 간 어긋남(버전 차이 가능) | Map, Enemies, 검색 요약 | 낮음 |
| 이벤트 종류: 전투, 보스전, Frozen Travellers(동료 3명 중 1명 필수 영입), Treasure Chest(아이템/클런커 3택1, 1.0.5부터 건너뛰기 가능), Charm Dispenser, Muncher(카드 최대 2장 제거), Shade Sculptor(복제), Blingsnail Cave(40~80 Bling), Gnome Traveller, 상점(Woolly Snail, Charm Merchant) | Map | 높음 |
| 일부 이벤트는 해금 필요: Gnome Traveller, Shade Sculptor, Charm Merchant는 Icebreaker Cabin | Map, Snowdwell | 높음 |
| 한 판 길이: 개발자 인터뷰에서 한 런을 약 30분~1시간으로 짧게 유지해 패배 부담을 줄였다고 서술 | MCV/DEVELOP https://mcvuk.com/?p=224506 (2023-06-27) | 중간(요약 모델 해석, 원문 직접 확인 못 함) |
| 클리어 시간 집계(HowLongToBeat 계열): 메인 약 11~14시간, 부가 포함 26~28시간, 완전 정복 48~52시간. 이는 여러 런을 합친 값이며 1런 길이가 아님 | https://isthereanydeal.com/game/wildfrost/info/ , https://dekudeals.com/items/wildfrost-switch | 중간 |
| 전투 1회 길이(분), 전투당 평균 턴 수: 공식·개발자 수치 미확인 | - | 미확인 |
| 통화 Bling: 적 처치로 획득(콤보 시 추가), 비보스 소량 기본 + 0~2, 미니보스 기본 13, 보스 기본 27. 런 간 이월 없음. 상점·왕관 구매에만 쓰임 | WF https://wildfrostwiki.com/Bling (rev 2025-04-16) | 높음 |

---

## 4. 난이도·해금 구조, 로그라이크 반복 설계

| 사실(요약) | 출처 | 확신도 / 버전·rev |
|---|---|---|
| 의도적으로 어렵게 설계. 개발자는 돌이켜보면 초반을 더 관대하게 했어야 했고 승천(ascension)식 시스템을 향후 후보로 언급 | MCV https://mcvuk.com/?p=224506 | 중간 |
| 1.0.6(2023-08-29): 리더 선택이 부족→후보 3명 방식으로, 보스 후 보상(Sun Bell/참/왕관 2택)이 도입, 웨이브가 자동이 아니라 플레이어 호출 가능해짐 | WF Version_History | 높음 |
| 1.1.0(2023-12-11, PC): 기본 난이도 인하 = 동료 부상(Companion Injuries) 제거. 부상은 선택형 "Storm Bell" 난이도 시스템으로 이동(벨 13종, 각 점수) | WF Version_History; https://nintendoeverything.com/wildfrost-the-storm-bell-update-announced-version-1-1-0-patch-notes (검색 요약) | 높음 |
| Storm Bell: 첫 클리어 후 해금, 리더 선택 때 선택해 런 전체에 불이익. 활성 가능 점수 한도는 5에서 시작해 한도 상태로 런을 클리어할 때마다 +1, 최대 10. 10점 달성 시 진짜 최종전(Lumin Goop, Broken Vase 등장) 해금. 전부 금테 달성 시 Overcrank Mode(전 벨 활성) | WF https://wildfrostwiki.com/Bells (rev 2024-07-22) | 높음(rev 기준) |
| 메타 진행(Snowdwell 마을): Tribe Hall(부족), Pet House(펫 5종 해금), Inventor's Hut(클런커·아이템), Icebreaker Cabin(이벤트), Hot Spring(동료), Frostoscope(최종 보스 미리보기), Challenge Shrine(참 해금). 대부분 건물 도전과제는 순차 진행, Challenge Shrine만 자유 순서 | WF https://wildfrostwiki.com/Snowdwell (rev 2025-09-24) | 높음 |
| 부족 해금: Snowdwellers 기본, Shademancers = 적 100마리 처치, Clunkmasters = 총 피해 1,000 (위키 Tribes 문서 rev 2024-07). 이후 패치에서 조건이 바뀌었을 수 있음 | WF Tribes | 중간 |
| 해금 내용은 주로 카드·아이템·펫·동료·참이며 레벨/스탯 같은 영구 파워업은 확인되지 않음(영구 스탯 강화 서술 없음) | Snowdwell | 중간 |
| 런 간 이월: 해금한 콘텐츠만. Bling과 참은 이월 없음. 사망 시 Snowdwell로 복귀 | Bling, Charms, Getting_Started | 높음 |
| Daily Voyage: 하루 1회, 모든 플레이어 같은 런. 덱 무작위화(1~2장 제거, 1~4장 추가, 참 0~3개) + 좋은/나쁜 모디파이어 4개 + Modifier Bell 2~3개 + Storm Bell 전부. 모든 카드·부족·이벤트·참이 해금된 상태 | WF https://wildfrostwiki.com/Daily_Voyage (rev 2024-06-09) | 높음 |
| 업데이트 이력: 1.0.5(2023-06) 확장 튜토리얼·밸런스, 1.2.0(2024-06) 적 13·전투 4·카드 20·참 12·도전과제 12 추가, 1.2.2(2024-07) 스팀 워크숍 모드 지원 | Version_History | 높음 |
| 출시 후 6개월 이내에 난이도 완화(1.1.0)를 단행. 즉 초기 난이도가 신규 유입의 장벽이었다는 증거로 읽힘(해석) | Version_History, Steam 평가 변화(약 60% → 91%) | 낮음(추론) |

---

## 5. Runefold에 시사하는 점

Runefold = 타일 격자 + 카드/에너지 + 3→1 합성 + 유물. 아래는 Wildfrost 사실에서 끌어낸 설계 후보이며, 검증은 2단계와 Runefold 자체 플레이테스트에서 한다.

1. 카운터 대 에너지: Wildfrost는 "플레이어는 턴당 카드 1장, 나머지는 카운터가 자동 진행"이라 계획 부담이 예측 가능한 시간축에 집중된다. Runefold는 에너지로 낼 수 있는 행동 수가 많으므로, 적 행동 예고(카운터 숫자 표시)만 차용해도 읽기 쉬운 전술이 된다. 에너지 방식에 카운터를 섞으면 계산량이 급증할 수 있어 한 축만 채택하는 쪽이 안전하다.
2. 위치가 곧 상호작용: Wildfrost의 키워드 다수가 "맨 앞 / 행 전체 / 가장 먼 적 / 혼자일 때"처럼 위치에 의존한다. 타일 격자라면 이 위치 키워드 사전(관통, 범위, 인접, 고립)을 처음부터 작게 정의해 두면 시너지 설계 비용이 줄어든다.
3. 용어 일관성: 개발자는 hit·status 등 용어를 일관되게 정한 점을 강조했다(MCV). 합성·유물·키워드 이름을 초기에 고정하는 것이 이후 확장 비용을 줄인다.
4. 업그레이드 철학: Wildfrost는 합성이 아니라 "영구 장착 + 제거 불가 + 슬롯 3개" 참이다. 위험(저주, 되돌릴 수 없음)과 보상을 같이 두어 선택의 무게를 만든다. Runefold의 3→1 합성은 반대로 "수집 압박 + 덱 얇아짐"을 만든다. 두 방식을 병행하면 중복되므로, 유물을 "참과 같은 영구 장착 슬롯형"으로 둘지 "런 전역 규칙(Sun Bell형)"으로 둘지 정해야 한다.
5. 런 전역 규칙형 유물(Sun Bell): 보스 후 3~4개 중 2택이라는 소수 선택 구조와 즉발형 효과의 순서 문제(이후 변경 미반영)는 유물 설계의 주의점이다. 유물을 "수치 보너스"로만 두지 않고 규칙(손패 +1, 웨이브 지연 등)을 바꾸는 형태로 두면 빌드 정체성이 생긴다.
6. 한 판 길이: 약 30~60분(개발자 서술, 중간 확신)에 보스 2~3회. 짧은 런 + 패배 시 마을 복귀 + 해금 반복이 Wildfrost의 반복 루프다. Runefold도 런 길이 목표를 먼저 정해야 합성(3→1)이 몇 전투 안에 성립하는지 계산할 수 있다.
7. 메타 진행은 "콘텐츠 해금"이 중심: 영구 스탯 강화가 아니라 카드·이벤트·펫 해금과 난이도 옵션(Storm Bell)으로 반복을 만든다. 해금을 순차 도전과제로 묶어 목표를 제시하는 방식은 도트 로그라이크에 이식하기 쉽다.
8. 난이도 교훈: 출시 직후 난이도 장벽 때문에 평가가 낮았고(약 60%, 단일 기사 인용), 1.1.0에서 기본 난이도를 낮추고 선택형 난이도로 옮겼다. Runefold는 처음부터 "기본은 관대, 어려움은 옵트인"으로 설계하는 편이 낫다는 근거가 된다.
9. 일일 도전: 시드 공유 런 + 모디파이어 + 전 콘텐츠 해금은 구현 비용 대비 재방문 효과가 크다는 선례로 볼 만하다(효과 크기는 데이터 미확인).
10. 안전장치: 리더 사망 = 런 종료 한 가지 패배 조건이 단순하고 이해하기 쉽다. 단 Runefold에 리더 개념이 없다면 대응하는 단일 패배 조건(예: 코어/타일 HP)이 필요한지 검토.

---

## 6. 미확인 목록

- 개발사 "Gaw Gaw Games": 어떤 출처에서도 확인되지 않음(Deadpan Games / Gaziter로 표기됨).
- 한 런의 총 전투 수·노드 수·실제 소요 시간 실측값(분). 개발자 서술 30~60분은 요약 기반이고 원문 미확인.
- 전투 1회 평균 길이(턴 수, 분).
- 덱 최소/최대 크기, 시작 덱 크기(부족별 시작 카드 목록은 Tribes 문서에 있으나 총량 규정은 미확인).
- 버림 더미 → 뽑을 더미 리셔플 규칙 정확한 설명.
- 동료 출전 한도 증가분(Fellowship): 위키 +1(총 4) vs 1.0.6 패치노트 요약 "+2" 불일치.
- 최종 보스: Eye/Heart of the Storm vs Frost Guardian 서술 불일치(버전 차이 추정).
- 희귀도 등급 유무(찾지 못했을 뿐 없음을 확인한 것 아님).
- 부족 해금 조건의 현행 값(위키 문서 rev 2024-07 기준).
- 1.2.x 이후 밸런스 변경 상세, 각 패치 공식 노트 원문(SteamDB는 403으로 열람 불가).
- Slay the Spire 등 타 작품과의 영감 관계: 개발자 발언 미확인. 인터뷰는 Monster Train에서 행 배치·팀 개념을 가져왔다고만 서술됨.
- 2행 구조를 택한 이유, 리더 사망 룰의 설계 의도.
- 일부 가이드(예: Magic Game World)는 발행 연도·내용 오류가 의심되어 근거로 쓰지 않음.

---

## 7. 2단계(플레이 관찰) 때 확인해야 할 질문

1. 한 턴의 정확한 순서: 카드 사용 → 카운트다운 → 적 행동의 순서, 카운터 0 카드의 발동 시점 표시가 얼마나 명확한가.
2. 첫 5분에 플레이어가 무엇을 이해해야 진행되나(튜토리얼 길이, 용어 수). 카운터 표시, 타겟 표시, 예고 UI 방식.
3. 손패 6장 + Redraw Bell 충전(4턴) 리듬이 실제 전투 템포에 어떤 영향을 주나. 덱을 얇게 유지하는 보상이 있는가.
4. 전투 1회 평균 턴 수와 시간. 한 런의 전투 수와 총 시간(스톱워치 측정).
5. 보스 후 보상 화면(Sun Bell/참/왕관 2택) UI와 선택 압박. 참 부착 화면에서 순서 효과가 이해 가능한가.
6. 참 3슬롯/제거 불가가 실제로 위험 감각을 주는가, 아니면 단순히 짜증을 주는가.
7. 시너지가 전투 중 눈에 보이는가(상태효과 아이콘, 증가량 표시), 키워드 툴팁 접근성.
8. 지도 UI: 두 경로 중 선택 시 이벤트 정보가 미리 보이나. 이벤트 종류 비율.
9. 사망 후 흐름: 복귀까지 몇 초, 무엇이 해금되는지 안내 방식, 재도전 마찰.
10. 난이도 곡선: 첫 보스에서 막히는 지점, Storm Bell 해금 안내 시점.
11. 일일 모험(Daily Voyage) 진입 동선과 보상 유무.
12. 모바일/컨트롤러 UI에서 드래그·턴 소모 확인 방식(Runefold 타일 격자 입력과 비교).
