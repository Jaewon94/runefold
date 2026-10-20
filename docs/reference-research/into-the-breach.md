# Into the Breach 설계 참고 조사 (Runefold 1단계)

- 조사일: 2026-10-20 (모든 "확인일"은 이 날짜)
- 방법: 공개 웹 자료(WebSearch/WebFetch)만 사용. 게임 파일 설치·분해 없음. 원문은 한국어로 요약.
- 한계: 팬 위키(fandom)는 접근이 막혀(HTTP 402) 직접 열람하지 못했고, 검색 결과 요약으로만 확인한 항목은 "검색요약 경유"로 표시했다. GDC 2019 발표 본편(GDC Vault/YouTube)은 영상이라 내용을 읽지 못했다(초록만 확인).
- 확신도 기준: 높음 = 공식 스토어/복수 독립 출처 일치, 중간 = 단일 신뢰 출처 또는 2차 출처 일치, 낮음 = 단일 2차 출처·일화·SEO 성격 사이트.

## 1. 대상 식별

| 항목 | 내용 | 출처 | 확신도 |
|---|---|---|---|
| 게임 | Into the Breach, 턴제 전략(메카 대 외계 생물 Vek). 개발·배급 Subset Games | https://store.steampowered.com/app/590380/Into_the_Breach/ | 높음 |
| 출시 | Windows 2018-02-27, macOS 2018-08-09, Switch 2018-08-28, Linux 2020-04-20, 모바일(Netflix) 2022-07-19 | https://en.wikipedia.org/wiki/Into_the_Breach | 높음(Steam 날짜는 스토어와 일치) |
| 디자이너 | Justin(Jay) Ma, Matthew Davis | https://en.wikipedia.org/wiki/Into_the_Breach | 높음 |
| 평가 | Metacritic PC 90, Switch 89 | 위 위키백과 | 중간(시점 의존) |
| 확장 | 2022-07 무료 "Advanced Edition": 분대 5개, 무기·장비 39종, 새 Vek 7, Psion 3, 보스전 10, 미션 12, 파일럿 4, "Unfair" 난이도 등. 버전 번호는 해당 글에 없음 | https://nintendoeverything.com/into-the-breach-advanced-edition-update-out-now-patch-notes/ , https://store.steampowered.com/app/590380/Into_the_Breach/ | 높음 (버전 번호는 미확인) |
| 별도 패치 | v1.2(2018): 모든 무기 비용을 평판 1로 인하 등 (AE와 별개) | https://gamespot.com/articles/new-into-the-breach-update-reduces-weapon-cost-ful/1100-6476307/ (검색요약 경유) | 낮음 |
| 개발 기간 | FTL 이후 약 4년 | https://www.gdcvault.com/play/1025772/-Into-the-Breach-Design | 높음 |

## 2. 항목 1 - 전술 격자 전투 구성

| 사실 | 출처 | 확신도 |
|---|---|---|
| 전투 맵은 8x8 격자. | https://en.wikipedia.org/wiki/Into_the_Breach ; Game Informer 리뷰 https://gameinformer.com/games/into_the_breach/b/pc/archive/2018/02/26/game-informer-review-into-the-breach ; Kotaku 리뷰 https://kotaku.com/into-the-breach-the-kotaku-review-1823365331 ; Game Developer https://www.gamedeveloper.com/design/reimagining-failure-in-strategy-game-design-in-i-into-the-breach-i- | 높음 |
| 플레이어 분대는 메카 3기(각각 파일럿이 탑승). 모든 분대가 메카 3기 구성이라는 서술도 있음. | 위키백과, Kotaku 리뷰, https://www.ludo.guide/guide/into-the-breach | 높음 |
| 8x8 맵을 택한 이유: 소형 맵 약 100개를 손으로 설계하는 편이 절차적 생성 시스템 구축보다 쌌다는 취지(기자의 서술). 디자이너가 직접 밝힌 8x8 선정 이유는 못 찾음. | https://www.gamedeveloper.com/design/reimagining-failure-in-strategy-game-design-in-i-into-the-breach-i- | 중간 |
| 짧은 전투를 만드는 제약 조합: 작은 격자 + 턴 카운트다운 + 낮은 체력 + 제한된 무기(리뷰어의 해석). | Game Informer 리뷰(위 URL) | 중간 |
| 턴 구조: 플레이어 턴에 각 메카가 이동 후 무기 1회 사용. 플레이어 턴이 끝나면 Vek가 행동하고 새 Vek가 등장. | 위키백과; Kotaku 팁 https://kotaku.com/four-key-tips-to-get-good-at-into-the-breach-1823399316 (이동 후 같은 라운드에 다른 적 공격 가능) | 높음 |
| Vek는 이동한 턴에는 공격하지 않고(이동과 공격이 분리), 방향을 정하면 그 칸에 있는 것은 아군·건물·다른 Vek 가리지 않고 맞힌다. | https://www.fandom.com/articles/into-the-breach-review (2차) ; https://gameluster.com/review-into-the-breach/ (검색요약 경유) | 중간 |
| 행동 종류: 이동(스탯 범위), 공격/밀기/당기기, 패시브 스킬. 이동 취소는 공격 전까지 횟수 제한 없이 가능, 공격은 취소 불가. | https://www.gamepressure.com/into-the-breach/beginners-guide-tips/zfaa76 ; https://kosgames.com/into-the-breach-beginners-guide-advice-2021-5557/ | 중간 |
| 위키백과는 "한 턴 쉬면(idle) 메카가 일부 피해를 회복"한다고 서술하나, 다른 가이드(gamepressure)는 수리 행동 설명이 없음. 전투 사이에는 메카 체력이 전부 회복. | 위키백과; gamepressure; Kotaku 리뷰 | 낮음(턴 중 수리 규칙은 어긋남, 미확정) |
| 메카 분류 5종: Prime(근접), Brute(직선 단일 대상), Ranged(포격형, 장애물 너머 사격, 인접 칸 공격 불가), Science(밀기·당기기·상태이상 위주), Cyborg(AE). | https://www.ludo.guide/guide/into-the-breach/mechs (같은 페이지에 Prime이 인접 칸을 못 친다는 모순된 서술이 있어 오류로 판단) | 낮음~중간 |
| 사거리 모양은 가이드마다 일관된 공식 정의를 찾지 못함. Ranged(포격)는 단일 타일 피해 + 인접 타일 밀기라는 무기 설명이 있음. | 위 ludo.guide; 검색요약 https://intothebreach.fandom.com/wiki/Weapons | 낮음 |
| 밀기/충돌: 적을 다른 유닛·산에 밀어 넣으면 충돌 피해가 나고 아군에도 적용. 가이드 하나는 "밀린 쪽 1, 부딪힌 대상도 1"이라고 서술. | gamepressure; kosgames(수치 1은 이 단일 가이드) | 충돌 피해 존재=높음, 수치 1=낮음 |
| 지형: 물·불 타일에 밀어 넣으면 비행 유닛 외에는 즉사. 산은 충돌체. 번개·용암·붕괴 등 환경 위험이 적도 해칠 수 있음. | gamepressure; Kotaku 리뷰; Kotaku 팁(위험 타일은 아군 메카도 죽임) | 높음~중간 |
| 건물: 시민 건물이 전력망. 건물에 적 공격이 맞으면 전력 1칸 감소, 한 타일에 건물 2채면 2. 화염은 건물을 해치지 않음. 건물은 영구 피해. 전력망 저항(피격 무시 확률)이 존재(시작 15%, 올리면 30% 넘음; 단일 가이드). | kosgames; Kotaku 리뷰(방어 확률 언급) | 중간~낮음 |
| 스폰 막기: 적이 올라올 칸에 서면 그 적의 등장을 막고 막은 쪽이 1 피해(gamepressure). Kotaku 팁은 "Vek가 다른 Vek 등장을 막고, 스폰 칸에 놓인 Vek는 피해"라고 서술. | gamepressure; Kotaku 팁 | 중간 |
| 2022 AE 신규 규칙: 균열 타일(재타격 시 타일 파괴), Boost(다음 공격 +1), 처치 시 추가효과(KO). | Nintendo Everything 패치노트(위 URL) | 높음 |

## 3. 항목 2 - 적 행동 예고(telegraph)

| 사실 | 출처 | 확신도 |
|---|---|---|
| 스토어 소개가 적 공격 예고를 핵심 특징으로 내세움("계획을 세울 수 있다"는 취지). | https://store.steampowered.com/app/590380/Into_the_Breach/ | 높음 |
| 예고 대상: 각 Vek의 공격 방향·피격 타일, 이동 범위, 남은 체력. 공격 순서도 표시(키 조작으로 확인: gamepressure는 ALT, Kotaku 팁은 TAB, 가이드 하나는 아이콘 마우스오버/CTRL로 이동범위·무기. 키는 출처마다 다름. 플랫폼·버전 차이로 추정되나 미확인). | 위키백과; gamepressure; Kotaku 팁; https://cliqist.com/2018/03/22/into-the-breach-10-tips-for-beginners/ | 높음(정보 종류) / 낮음(키 배치) |
| 턴 시작에 Vek가 의도를 공개하고 플레이어가 대응. 공격은 빗나감이 없고, 유일한 확률 요소는 건물의 방어 확률. 결과가 결정적. | https://kotaku.com/into-the-breach-the-kotaku-review-1823365331 | 높음 |
| 설계 의도(Ma): 죽음이 "내 잘못"처럼 느껴지게 하는 것이 목표이며, 플레이어 쪽 확률이 없으므로 전투가 읽을 수 있는 퍼즐이 됨. 규칙은 명확하게, 무작위는 FTL보다 줄이려 함. | https://gamedeveloper.com/game-platforms/road-to-the-igf-subset-games-i-into-the-breach-i- (요약 경유, 정확한 문구는 확인 못 함) | 중간 |
| 설계 의도(Ma): 모든 전략 게임이 가르치는 "유닛을 잃는 게 최악"이라는 인식을 버리게 하려 함. 진짜 실패는 도시 피해로 전력망이 닳는 것. 메카는 소모 가능, 전투 후 완전 회복. | https://www.gamedeveloper.com/design/reimagining-failure-in-strategy-game-design-in-i-into-the-breach-i- | 중간(기사 서술) |
| 효과: 적이 나올 칸과 공격 선을 읽어 "죽이기 / 선 밖으로 밀기 / 막기" 중에 고르게 됨. 밀기로 적끼리 서로 때리게 하는 플레이가 가능. 2차 분석은 "변위·예방·희생으로 이기는 퍼즐"로 평가. | 위키백과; Kotaku 팁; https://iga.outright.io/games/intothebreach/ (2차 분석) | 중간 |
| 설계 이유가 엮인 상세 발언(완전 정보라는 말을 직접 썼는지 등)은 GDC 발표 본편을 읽지 못해 미확인. | - | - |

## 4. 항목 3 - 한 판 길이, 전투 길이, 난이도, 되돌리기

| 사실 | 출처 | 확신도 |
|---|---|---|
| 전투마다 고정 턴 제한이 있고 끝까지 버티면 승리(Vek 후퇴). 일반 맵은 5턴이라는 리뷰 서술 다수. Kotaku 리뷰는 턴 수를 안 적었고, Game Informer 팁도 숫자를 안 줌. 미션 종류별 예외(예: 최종전 2단계)는 미확인. | 검색요약 https://godisageek.com/reviews/into-the-breach-review/ , https://www.nintendoworldreport.com/review/48016/into-the-breach-switch-review ; https://turnbasedlovers.com/review/into-the-breach-review/ ("five turns") | 중간 |
| 전투 하나의 시간: 10분 안팎이라는 서술(독자 댓글/SEO 사이트). 사이트가 한 페이지에서 5-10분, 10분, 10-15분을 섞어 적음. | https://turnbasedlovers.com/review/into-the-breach-review/ (댓글); https://www.games-genie.com/games/into-the-breach | 낮음 |
| 한 판(캠페인) 길이 서로 어긋남: (a) SEO 사이트 "15-40분"(games-genie), (b) Steam 일화 "성공 한 판 1~2.5시간", 첫 승리 약 2시간, 전 섬 어려운 판 4시간 이상. 둘 다 기록. (a)는 같은 페이지 내 수치도 불일치. | (a) https://www.games-genie.com/games/into-the-breach (b) https://steamcommunity.com/app/590380/discussions/0/1741103267297685557 | (a) 낮음 (b) 낮음(일화) |
| 승리 경로는 3가지: 섬 2개 + 최종 섬 / 3개 / 4개(길이와 난이도가 커짐). | Steam 일화(위 (b)); https://www.ludo.guide/guide/into-the-breach (2개 점령 후 Volcanic Hive "The Last Stand" 개방) ; Game Informer 리뷰 | 중간 |
| 섬은 총 4개(Archive, R.S.T., Pinnacle, Detritus) + 최종 Volcanic Hive. 첫 섬 완료 후 다음 섬 해금. 해금된 섬은 임의 순서 선택 가능. 어려운 섬일수록 보상이 큼. 최종전 난이도는 클리어한 섬 수에 비례. | https://www.ludo.guide/guide/into-the-breach ; https://gameranx.com/features/id/141847/article/into-the-breach-10-tips-to-help-you-crush-the-vek-beginners-guide/ ; 위키백과 ; Game Informer 리뷰 | 중간~높음 |
| 섬당 미션 수: 어긋남. ludo.guide는 "4개 미션 후 기업 본부 방어". 팬 위키 요약(검색요약 경유)은 how-to 페이지는 "가능한 7개 중 4개 + 미니보스", Missions 페이지는 "5개(구역 4 + 본부)"라고 달리 적음. | https://www.ludo.guide/guide/into-the-breach/roadmap ; 검색요약 https://intothebreach.fandom.com/wiki/How_To_Play_Guide_For_Into_The_Breach , https://intothebreach.fandom.com/wiki/Missions | 낮음(정리: 섬당 약 4~5전투로 보이나 확정 못 함) |
| 되돌리기 계층: (1) 이동 취소는 공격 전까지 무제한·무료. (2) 전체 턴 리셋(Reset Turn)은 전투당 1회라는 서술이 다수(Game Informer 팁, Steam 포럼, kosgames "한 번"). Kotaku 리뷰는 "라운드당 한 번", gameranx는 "미션당 한 번"이라고 달리 표현 - 사실상 같은 뜻으로 보이나 용어가 어긋남. (3) 실패 시 파일럿 1명을 시간여행으로 보내 새 판 시작. | https://www.gameinformer.com/b/features/archive/2018/02/27/23-tips-to-help-you-dominate-into-the-breach.aspx?amp ; https://steamcommunity.com/app/590380/discussions/0/1694914735991951243 ; Kotaku 리뷰 ; gameranx | 중간~높음 |
| 패배 조건: 전력망 0, 메카 3기 전멸, 특정 목표 실패. 전력망은 캠페인 전체 체력이며 섬 사이로 이월. 전투 후 복구되지 않음. 다만 일부 목표 보상/상점 구매로 소량 회복(평판 1당 1). | 위키백과; Kotaku 리뷰; kosgames; gameranx | 높음 |
| 난이도: Easy/Normal/Hard(베이스) + Unfair(AE). 해금 진행은 난이도 무관 공유(Game Informer). Unfair는 전력 회복이 2배, 적 스폰에 상한이 있어 일부 약한 적을 남기는 게 이득일 수 있다는 개발자 안내. | https://nintendoeverything.com/into-the-breach-advanced-edition-update-out-now-patch-notes/ ; Game Informer 리뷰 ; cliqist | 높음~중간 |

## 5. 항목 4 - 성장·보상, 로그라이크 반복

| 사실 | 출처 | 확신도 |
|---|---|---|
| 미션 보상: 평판(Reputation), 전력망 점수, 타임 포드(무기·파일럿·리액터 코어), 파워 코어 등. 평판은 섬이 끝나면 상점에서 써야 하며 이월되지 않음. | https://www.gamepressure.com/into-the-breach/beginners-guide-tips/zfaa76 ; https://www.ludo.guide/guide/into-the-breach/roadmap | 중간 |
| 상점 환율(ludo.guide): 장비/CorPilot +1, 파일럿 +2 평판. 평판 1 = 전력망 1 교환(팬 위키 검색요약 경유, Kotaku 리뷰도 "소량 구매 가능"). | https://www.ludo.guide/guide/into-the-breach/roadmap ; https://kotaku.com/into-the-breach-the-kotaku-review-1823365331 | 낮음~중간 |
| 리액터 코어: 타임 포드·목표·상점에서 획득. 메카 체력/이동/무기 업그레이드에 배분. 한 번 배치 후 출전하면 이동 불가. 코어는 시간여행(런 재시작) 시 유지되지 않고 런 안에서만 유효. | kosgames; 검색요약 https://intothebreach.fandom.com/wiki/Time_Pod | 중간 |
| 무기 업그레이드: 모든 경로가 쓸 만하지만 모든 능력치를 만렙으로 만들 수 없음(개발자 인터뷰 요약). AE에서 장비 리액터 요구량을 낮추고 평판 비용을 +1 올렸으며 첫 두 섬의 상점 선택지를 제한. | Game Developer(위 IGF 글); Nintendo Everything | 중간~높음 |
| 파일럿: 처치로 경험치, 2회 레벨업, 레벨업 보너스(이동 +1, 체력 +2, 리액터 +1, 전력망 방어 +3 중 선택). 메카가 파괴되면 파일럿이 죽고 AI 파일럿이 대신하되 경험치를 못 얻음. 주 파일럿은 시간여행 때 능력과 경험을 유지해 다음 판으로 이어짐. | kosgames; gameranx; 위키백과 | 중간~높음 |
| 스쿼드 선택·해금: 분대를 직접 고르거나 랜덤. 기본 8개(Rift Walkers, Rusting Hulks, Zenith Guard, Blitzkrieg, Steel Judoka, Flame Behemoths, Frozen Titans, Hazardous Mechs) + 비밀 분대(이 개수는 ludo.guide 단일 목록). 업적 코인으로 해금(AE에서 분대가 늘며 해금 코인 비용 인하). 분대는 업그레이드 전에 정체성이 정해져 있어 무작위성을 줄이고 균형을 맞추기 쉽다는 개발자 설명. | https://www.ludo.guide/guide/into-the-breach/mechs ; Kotaku 리뷰 ; Nintendo Everything ; https://www.gamedeveloper.com/design/-i-into-the-breach-s-i-designers-explain-how-to-follow-up-from-a-hit-game | 중간 |
| FTL의 함선 해금 방식이 분대 해금으로 이어졌다. | 위 Game Developer 기사 | 중간 |
| 무작위 요소: 타임 포드 내용·타이밍, 파일럿 능력, 맵 배치. 전투 자체는 결정적. | Kotaku 리뷰 | 높음 |
| 개발 중 삭제: 도시 건설, 복수 분대(초기), 연구 트리, 도시 수리, FTL식 텍스트 이벤트 등 약 60%를 덜어냄. 섬 지도(미션 선택·업그레이드 화면)는 5번 완전히 다시 만듦. 전투 격자 싸움이 확실히 되는 부분이라 그 위에 메타 게임을 쌓음. | https://kotaku.com/the-creators-of-into-the-breach-came-very-close-to-givi-1833498295 | 중간 |

## 6. Runefold에 시사하는 점

Runefold 설계 가정: 8x8 안팎 격자, 유닛 3~4명, 이동은 스탯으로 공짜 + 행동은 카드·에너지로 제한, 엄폐·고저차·사거리 모양, 적 행동 예고, 한 판 30~45분.

이하 1~5번은 위 조사 사실에서 이끈 시사점이고, 6~8번은 추측이라 2단계에서 검증이 필요하다.

1. 8x8 + 3기는 "한 화면에 다 읽히는 규모"의 검증된 선례다(확신 높음). 유닛 3~4명 가정은 문제 없어 보이며, 4명이면 읽는 비용이 늘어 예고 UI 부담이 커진다는 점이 추가 검토 대상.
2. 이동을 공짜로 두는 것은 Into the Breach와 같은 방향(이동은 스탯 범위, 공격 전까지 무료 취소). 단, 이동 취소가 공짜인 점이 "계획 실험"을 낳는다. Runefold에서 카드·에너지 소모 행동은 취소 불가로 하되, 이동은 취소 가능으로 두는 쪽이 같은 효과를 낼 수 있다(제안).
3. 예고는 "누가 어디를 어떤 순서로 때리는가 + 이동 범위 + 체력"까지 보여준다. Runefold도 최소 공격 타일·순서·피해량·이동범위를 보여줘야 "내 잘못" 감각이 선다. 예고가 있으면 확률(명중 굴림)을 플레이어 쪽에서 빼야 일관된다. 카드 뽑기의 무작위는 다른 층의 불확실성이라, 뽑기 후에는 결과가 결정적이어야 한다(제안).
4. 밀기와 지형 처치(물·불 즉사, 충돌 피해, 적끼리 공격)가 전투 깊이의 핵심 원천이다. Runefold의 엄폐·고저차는 "밀기 없이 쓸 수 있는 같은 급의 변수"가 필요한데, 밀기를 아예 빼면 위치 퍼즐의 대부분이 사라질 수 있다. 밀기 카드 몇 장은 두는 편을 검토.
5. 승패의 진짜 자원을 유닛 생존이 아닌 별도 자원(전력망)으로 둔 것이 "희생을 감수하는 선택"을 만든다. Runefold도 유닛 사망과 별개로 지켜야 할 대상/자원을 두면 같은 효과를 낼 수 있다(제안). 메카는 전투 후 완전 회복이라 수리 비용 압박이 없다.
6. 전투가 짧다(5턴 안팎)는 점이 반복 가능한 퍼즐을 만든다. 한 판 30~45분 목표는 Into the Breach의 일화 수치(1~2.5시간)보다 짧고, SEO 수치(15~40분)와는 비슷하나 신뢰도가 낮다. 전투 수와 전투당 길이를 따로 정해 곱해 보자: 예) 전투 6~8회 x 4~6분(추측).
7. 되돌리기는 "이동 무제한 / 턴 전체 1회 / 판 단위 시간여행" 3단 구조다. 카드 게임에서는 뽑기 무작위가 있어 턴 리셋이 뽑은 패를 되돌리는지가 설계 쟁점(미정, 질문으로 남김).
8. 성장은 소수 선택(코어 배분)과 분대 해금이 중심이라 가볍다. Runefold는 카드 덱 변화가 성장의 주된 축이 될 텐데, 이 경우 Into the Breach처럼 "다 올릴 수 없는 제약"과 "분대마다 정체성이 먼저 정해진 구성"을 참고할 만하다.

## 7. 미확인 목록

- GDC 2019 발표 본편 내용(영상). 8x8 격자·3기 선정 이유, 완전 정보 철학, 난이도·RNG 결정은 직접 확인 못 함. 초록만 확인.
- 턴 제한이 모든 미션에서 5턴인지, 미션별 차이가 있는지.
- 섬당 미션 수와 승리 경로별(2/3/4섬) 전투 총수. 팬 위키 설명이 서로 어긋남.
- 충돌 피해 정확한 수치(밀린 쪽 1, 부딪힌 쪽 1이라는 단일 가이드만 있음), 건물 HP 규칙.
- 턴 중 메카 수리 행동의 존재 여부(위키백과는 있다, gamepressure는 언급 없음).
- 무기 사거리 모양 전체 분류(근접·직선·포격·관통 등)와 포격의 장애물 무시 여부(ludo.guide만 서술).
- 한 판·전투 한 번의 실제 소요 시간의 신뢰할 수 있는 통계(전부 일화·SEO 수준).
- 리셋 턴이 AE 이후 1회 고정인지, 장비/파일럿으로 늘릴 수 있는지.
- Advanced Edition 정확한 버전 번호. 현재 Steam 최신 버전.
- 기본 분대 개수가 정확히 8개+비밀 1개인지(단일 목록).
- 전력망 시작값·최대값, 전력망 저항 수치(단일 가이드).
- 적 예고 확인 키(ALT/TAB/CTRL)가 어떤 플랫폼·버전의 차이인지.

## 8. 2단계(플레이 관찰) 때 확인해야 할 질문

1. 한 전투의 실제 턴 수와 소요 분. 첫 전투와 후반 전투를 각각 측정할 것.
2. 한 판(2섬 / 3섬 / 4섬) 총 전투 수와 총 시간. 전투 사이 메뉴·상점 시간은 얼마인가.
3. 한 턴에 화면이 보여주는 정보의 종류와 위치(공격 타일, 순서 번호, 피해량, 이동범위, 스폰 칸). 어떤 정보가 기본 노출이고 어떤 것이 키 입력이 필요한가.
4. 스폰 칸이 한 턴 앞서 보이는가. 막기 규칙은 정확히 어떻게 작동하나.
5. 이동 취소가 무제한인 것이 실제로 플레이에 어떤 탐색 행동을 낳는가. 턴 리셋은 언제 쓰고 몇 번이었나.
6. 밀기 충돌 피해 정확한 수치, 건물/산/물/구덩이 처리, 비행 유닛 예외.
7. 사거리 모양별 무기 종류(근접/직선/포격/관통)와 각각이 맵에서 만드는 위치 퍼즐 유형.
8. 한 번 지면(전력망 0) 어떤 정보가 이월되고 어떤 것이 사라지는가(파일럿, 코어, 평판).
9. 업그레이드 선택 지점이 한 판에 몇 번이고, 각 선택에 걸리는 시간은 얼마인가.
10. 첫 10분 안에 플레이어가 배우는 규칙의 수와 순서(튜토리얼 구조).
11. 전투 중 "나쁜 결과를 미리 알 수 있는" 순간과 "예상 밖이었던" 순간의 비율. 예고만으로 설명되지 않는 변수가 있었나.
12. Runefold 관점: 카드·에너지식 행동 제한이라면 "메카마다 무기 1개 사용"에 해당하는 제약을 어디서 느꼈나. 한 턴에 선택지가 몇 개 있었나.
