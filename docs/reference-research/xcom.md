# XCOM 시리즈 전술 격자 전투 조사 (Runefold 설계 참고, 1단계: 공개 자료)

- 확인일: 2026-10-20 (아래 모든 항목 동일)
- 조사 방법: WebSearch/WebFetch만 사용. 게임 파일/에셋 접근 없음. 문장은 모두 한국어 요약.
- 한계: Fandom XCOM 위키는 접근 시 HTTP 402로 막혀 읽지 못함(우회 시도 안 함). 그래서 XCOM 2 수치(특히 치명타, 고저차)는 1차 위키 대신 2차/팬 자료 의존이 큼. 확신도를 그에 맞춰 낮게 적음.
- 약칭: EU = XCOM: Enemy Unknown(2012, Windows/Steam; Enemy Within 확장 포함 여부는 항목별 표기), X2 = XCOM 2(2016-02-04), CS = XCOM: Chimera Squad(2020-04-24)

---

## 0. 대상 식별

| 작품 | 개발/배급 | 출시 | 한 줄 요약 | 출처 |
|---|---|---|---|---|
| XCOM: Enemy Unknown (EU) | Firaxis / 2K | 2012-10-11 | 분대(최대 6) 전술전투 + 베이스/지구 전략 층. 타일 격자, 행동 2회, 엄폐 | Steam 상점 https://store.steampowered.com/app/200510/XCOM_Enemy_Unknown/ (출시일, 확신도 높음); 위키피디아 https://en.wikipedia.org/wiki/XCOM:_Enemy_Unknown (중간) |
| XCOM 2 (X2) | Firaxis / 2K | 2016-02-04 | 외계 점령 후 저항군. 은폐(concealment), 절차생성 맵, 턴 제한 임무, 5개 병과 | Steam 상점 https://store.steampowered.com/app/268500/XCOM_2/ (높음) |
| XCOM: Chimera Squad (CS) | Firaxis / 2K | 2020-04-24 | 스핀오프. 교차(interleaved) 턴, 돌입(breach) 단계, 고정 캐릭터 | 위키피디아 https://en.wikipedia.org/wiki/XCOM:_Chimera_Squad (중간) |

참고: 판 구분이 필요한 곳은 표에 EU/EW/X2/CS로 표시. "EU2012 Ufopaedia"는 2012년 원판 기준의 팬 위키(수치 상세)이며 X2에 그대로 이식되지 않을 수 있다.

---

## 1. 전술 격자 전투 구성

| 항목 | 사실(요약) | 작품 | 출처 | 확신도 |
|---|---|---|---|---|
| 격자 도입 | 개발 중 재작업("Combat 2.0")에서 이동용 타일 격자를 도입했고, 2009년 수직 슬라이스는 시간 단위(TU) 방식이라 너무 복잡해 폐기. 각진 엄폐, 사격 경로선 등도 삭제 | EU | https://en.wikipedia.org/wiki/XCOM:_Enemy_Unknown | 중간 |
| 소대 인원 (EU) | 1~6명. 개발진이 더 큰 소대를 시험했으나 한 수의 의미가 줄고 템포가 나빠져 6명으로 제한. 시작은 4명, 장교 훈련 학교 업그레이드로 확장 | EU | 위 위키피디아; 시작 4명/6명 확장: https://gamebanshee.com/d63 (중간); Game Informer(4명 시작, 중사 승진 시 5번째 칸) https://gameinformer.com/games/xcom_enemy_unknown/b/xbox360/archive/2012/09/28/surviving-xcom-enemy-unknown-39-s-first-three-hours.aspx (중간) | 중간 |
| 소대 인원 (X2) | 시작 4명, 길라 전술 학교(GTS)에서 5명, 6명으로 확장(해금에는 고계급 병사 필요). 일부 자료는 확장 수와 조건 표현이 불일치 | X2 | 검색 요약이 가리킨 Fandom GTS 문서(직접 읽기 실패); 간접: https://www.destructoid.com/very-quick-tips-xcom-2/ (미열람, 검색 스니펫만) | 낮음~중간 |
| 소대 인원 (CS) | 임무당 정확히 4명 필수. 로스터 최대 8명(튜토리얼 켜면 시작 4명 고정, 이후 4명 영입). 한 명이 쓰러지면 임무 실패 | CS | Ufopaedia https://ufopaedia.org/Agents_(Chimera) ; 4명 필수: https://www.gamepressure.com/xcom-chimera-squad/ | 중간(두 출처 일치) |
| 로스터 규모 (CS) | 위키피디아는 "11명의 캐릭터"로 서술(고정 영웅). 위 Ufopaedia는 영입 가능 최대 8명이라 함. 서로 어긋남(11명은 전체 등장 가능 풀, 8명은 한 회차 로스터 상한으로 추정되나 확인 못함) | CS | https://en.wikipedia.org/wiki/XCOM:_Chimera_Squad ; https://www.gameinformer.com/index.php/review/xcom-chimera-squad/xcom-chimera-squad-review-a-new-kind-of-goon-squad (11명 사전 제작) | 낮음 |
| 맵/격자 규모 (EU) | 총 격자 크기 수치 미확인. 대부분 수작업 맵을 무작위로 골라 쓰고 적 배치는 무작위 | EU | https://en.wikipedia.org/wiki/XCOM:_Enemy_Unknown | 맵 방식: 중간 / 크기: 미확인 |
| 맵/격자 규모 (X2) | 절차 생성(plot -> parcel). 모더 설명으로 parcel(구획) 크기가 16x16, 16x32, 32x32 타일. 전체 맵 크기는 미확인. 공식 근거는 GDC 2018 Brian Hess 발표 "Plot and Parcel"(내용 미열람, 설명문만 확인) | X2 | https://gdcvault.com/play/1025213/Plot-and-Parcel-Procedural-Level (발표 존재/주제: 높음); 타일 수치는 검색 결과로 확인된 Steam 모딩 토론(직접 열람 못함) | parcel 크기: 낮음 |
| 턴 구조 | 아군 전원이 행동한 뒤 적 턴(진영 단위 턴). 병사별 행동 2회. 공격 또는 긴 질주(dash)를 하면 그 병사 턴 종료 | EU | https://ufopaedia.org/Gameplay_Mechanics_(EU2012) ; https://en.wikipedia.org/wiki/XCOM:_Enemy_Unknown | 높음 |
| 이동 + 행동 | 파란 이동(1행동)과 노란 이동(질주, 2행동 전부 소모). 공격은 이동 뒤에 가능(질주 후에는 불가, 일부 능력 예외: Assault의 Run & Gun 등) | EU/X2 | EU: https://ufopaedia.org/Gameplay_Mechanics_(EU2012) ; X2: https://pixeltwelve.com/guides/xcom-2-beginner-guide-first-mission-cover-overwatch | 높음 |
| 이동 거리 수치 | 이동 스탯 12 기준 파란 이동 직선 7칸/대각 5칸, 노란 이동 직선 15칸/대각 11칸. 대각선 비용은 직선의 약 1.41배(2.12 vs 1.50). 이동력 범위 8~34 | EU | https://ufopaedia.org/Movement_(EU2012) | 높음(EU) / X2 미확인 |
| 행동 종류 | 이동, 공격, 오버워치(경계사격), 재장전, 치료, 수류탄, 특수 능력, 웅크리기(hunker down) | EU | https://en.wikipedia.org/wiki/XCOM:_Enemy_Unknown ; https://en.wikipedia.org/wiki/XCOM_2 (X2도 이동/공격/오버워치/재장전/웅크리기) | 높음 |
| 오버워치 | 남은 행동을 소모해 턴 종료, 적의 이동에 반응해 1회 사격. 사격 명중 보정은 Aim x0.7(질주 표적엔 x0.5), 치명타 불가. 같은 위키의 다른 페이지는 "-20% aim 패널티"로 서술해 어긋남 | EU | https://ufopaedia.org/Overwatch_(EU2012) (x0.7/x0.5) ; https://ufopaedia.org/Gameplay_Mechanics_(EU2012) (-20%) | 중간(두 서술 상충, 둘 다 기록) |
| 사거리/시야 | 시야는 안개(fog of war)로 가려지고 시야선이 닿아야 적이 보임. 최대 시야 타일 수는 미확인. 표적 거리 보정은 사거리가 가까울수록 명중 증가(소총류 인접 +37% 안팎, 샷건 +50%, 저격총은 근거리 -24%) | EU | https://en.wikipedia.org/wiki/XCOM:_Enemy_Unknown (안개) ; https://ufopaedia.org/Aim_(EU2012) (거리 보정, 페이지가 "공식이 완전히 정확하지 않을 수 있다"고 명시) | 중간 |
| 소리 | 이동/사격 소리를 양측이 감지. 창 부수기/문 걷어차기는 적이 조사하러 올 확률을 올림 | EU | https://ufopaedia.org/Gameplay_Mechanics_(EU2012) | 중간 |
| 교차 턴 (CS) | 진영 단위 턴 대신, 자동 선공권(initiative) 타임라인에 아군/적이 번갈아 배치되어 한 유닛씩 행동. 일부 능력으로 순서를 바꾸고, 임무당 1회 특정 유닛을 다음 차례로 당길 수 있음 | CS | https://en.wikipedia.org/wiki/XCOM:_Chimera_Squad ; https://www.gameinformer.com/index.php/review/xcom-chimera-squad/xcom-chimera-squad-review-a-new-kind-of-goon-squad (조율이 어려워졌다는 평) | 중간~높음 |
| 돌입(breach) (CS) | 전투 시작 시 진입 지점을 고르는 계획 단계. 지점마다 이점/불이점이 다르고, 시작 직후 무료 사격 기회가 있음. 맵에 안개가 없어 전투 시작 시 적이 모두 보임 | CS | 위 위키피디아; 안개 없음/범위: https://www.gamepressure.com/xcom-chimera-squad/ ; 2K FAQ는 403으로 못 읽음 | 중간 |
| 행동 수 (CS) | 리뷰 1건이 "턴당 행동 2회(서두르지 않으면)"로 서술. 공식 수치는 미확인 | CS | 검색 결과 스니펫(리뷰 사이트, 개별 페이지 직접 열람 못함) | 낮음 |
| 시간 압박 (X2) | 다수 임무에 턴 제한. 포럼 제보: 게릴라 작전 8턴, 의회 임무 12턴(맵 크기/유형과 무관). 독일 매체 GameStar는 대체로 8~12턴이라고 보도(열람 403, 검색 스니펫 기준). WotC 확장에서 턴 제한 2배 옵션 추가라는 제보 | X2 | https://steamcommunity.com/app/268500/discussions/0/1698293255129519888 | 중간(포럼 제보, 공식 표 아님) |
| 시간 압박 (EU) | 일부 임무만 턴 제한(예: 폭탄 해체). 제한 없는 임무가 다수 | EU | https://gameinformer.com/games/xcom_enemy_unknown/b/xbox360/archive/2012/09/28/surviving-xcom-enemy-unknown-39-s-first-three-hours.aspx ; https://ufopaedia.org/Gameplay_Mechanics_(EU2012) | 중간 |
| 시간 압박 (CS) | 많은 임무가 시간 제한 없음, 일부(정보 수집 등)만 라운드 제한 | CS | https://www.gamepressure.com/xcom-chimera-squad/ | 중간 |
| 타이머 도입 취지 | 총괄 프로듀서 Garth DeAngelis: 임무마다 목표를 다르게 하려 했고, 게릴라 전쟁 설정에 어울린다고 설명. 타이머가 플레이어를 갈랐다는 점은 예상 밖이었다고 함 | X2 | https://www.pcgamesn.com/xcom-2/xcom-2-out-of-concealment-mission-timers-bugs-and-why-the-percentages-arent-lying-to-you | 높음(개발자 발언 요약) |
| 타이머 부작용 | 팬 사이에서 "오버워치로 기다리는 플레이(거북이 전술)를 막으려는 장치"라는 해석이 있으나 개발자 발언 근거는 못 찾음. 팬 반응은 호불호 | X2 | https://tvtropes.org/pmwiki/pmwiki.php/YMMV/XCOM2 (해석, 낮음) | 낮음 |

---

## 2. 엄폐 / 고저차 / 명중률 / 치명타 / 적 예고·은폐

| 항목 | 사실(요약) | 작품 | 출처 | 확신도 |
|---|---|---|---|---|
| 명중 산식 구조 | 명중% = 사수 Aim - 표적 Defense(엄폐 포함), 음수면 1%로 하한 -> 그 뒤 거리 보정을 더함. 하한 때문에 완전 엄폐에도 완전히 빗나가지는 않음 | EU | https://ufopaedia.org/Aim_(EU2012) ; https://www.trueachievements.com/game/XCOM-Enemy-Unknown/walkthrough/6 (Aim - Defense, 검색 스니펫) | 높음 |
| 엄폐 수치 | 낮은(half) 엄폐 -20, 높은(full) 엄폐 -40 명중. 조건: 엄폐물에 인접하고 적과의 사이에 엄폐 모서리가 있을 때만 적용 | EU | https://ufopaedia.org/index.php/Cover_(EU2012) | 높음 |
| 엄폐 수치 어긋남 | 한 설계 분석 글은 X2에서 부분 엄폐 25%, 완전 엄폐 50% 감소라고 서술. 위 Ufopaedia(EU)의 20/40과 다르고, X2 1차 위키는 읽지 못해 어느 쪽이 맞는지 확정 못함. 팬 계산기는 X2도 20/40이라고 적음(비공식) | EU vs X2 | https://www.gamedeveloper.com/design/a-deep-dive-into-xcom-and-xcom-2 (25/50) ; https://west-games.com/xcom-hit-chance-calculator/ (20/40, 검색 결과 스니펫) | 낮음(둘 다 기록) |
| 측면(flank) | 측면 공격자는 엄폐 방어를 무시. 엄폐 아이콘이 노랑/빨강으로 바뀜. 높은 곳에서 내려다본다고 측면이 되지는 않음. 엄폐 두 개가 겹치면 공격자에 더 가까운 쪽만 적용 | EU(ufopaedia), X2도 유사 | https://ufopaedia.org/index.php/Cover_(EU2012) ; X2 아이콘: https://xcom2.wiki.fextralife.com/Combat | 높음(EU)/중간(X2) |
| 엄폐 파괴 | 빗나간 탄과 폭발이 엄폐물을 손상. 큰 물체는 두 번 맞아야 하고 첫 타로 높은 엄폐가 낮은 엄폐로 격하되기도 함. 일부(바닥, 계단 등)는 파괴 불가 | EU/X2 | https://ufopaedia.org/index.php/Cover_(EU2012) (수치: 소총 20, 저격 30, 샷건 40, 로켓 500 등 "대략") | 중간 |
| 웅크리기 | 엄폐 및 방어구 보너스 2배(능력 보너스 제외), 치명타 면역(측면이면 무시) | EU | https://ufopaedia.org/index.php/Aim_(EU2012) ; https://ufopaedia.org/index.php/Critical_Hits_(EU2012) | 높음 |
| 고저차 (EU) | 높은 지형의 사수는 낮은 표적에 +20 Aim. 저격수 능력 "Damn Good Ground"는 고지에서 Aim +10, Defense +10 | EU(2012) | https://ufopaedia.org/index.php/Aim_(EU2012) | 높음 |
| 고저차 (X2) | 모더 증언상 기본 게임은 높이 우위에 일정 +20 Aim(수직 각도와 무관). 낮은 쪽 패널티는 모드 설정의 -10을 인용한 것으로 바닐라 수치 아님. 1차 위키 미열람 | X2 | 검색 결과의 Steam 모딩 토론(직접 열람 못함) | 낮음 |
| 낙하 | 지붕에서 높이 3단계 미만이면 뛰어내릴 수 있음 | EU | https://ufopaedia.org/Gameplay_Mechanics_(EU2012) | 중간 |
| 치명타 (EU) | 치명타 피해는 일반의 약 150%(내림). 노출(엄폐 없음) 또는 측면 시 치명타 확률 +50%(2차 옵션 Absolutely Critical은 +100%). 표시 치명타%는 명중을 제외한 값이라 실제 = 명중x치명타. 고강도 유닛(Hardened) -60% | EU | https://ufopaedia.org/index.php/Critical_Hits_(EU2012) ; https://ufopaedia.org/index.php/Cover_(EU2012) | 높음 |
| 치명타 (X2) | 치명타 피해는 배율이 아니라 고정 가산 보너스라는 서술. 측면 치명타 보너스는 33/40이라는 서술과 설정 파일값 30이라는 서술이 엇갈림(출처가 Fandom 위키라 직접 열람 실패, 요약 스니펫 기준) | X2 | https://xcom.fandom.com/wiki/Critical_hit_(XCOM_2) (402로 미열람; 검색 스니펫만) | 낮음 |
| 표시 확률의 정직성 | 총괄 프로듀서: 화면 명중률은 정확하며, 95%가 빗나가는 체감은 기억 편향이라고 설명. 다만 일부 영향 요인이 UI에 숨어 있다는 서술도 있고 구체 요인은 확인 못함 | X2 | https://www.pcgamesn.com/xcom-2/xcom-2-out-of-concealment-mission-timers-bugs-and-why-the-percentages-arent-lying-to-you ; 표시값과 실계산이 약간 다를 수 있다는 서술: https://en.wikipedia.org/wiki/XCOM_2 | 중간 |
| 단계적 하이브리드 | 모든 외계인의 기본 Aim이 엄폐 최대 보정보다 높아 "높은 엄폐=안전"이 아님 | EU | https://ufopaedia.org/index.php/Cover_(EU2012) (검색 스니펫 기준 서술) | 중간 |
| 적 은폐/예고 (EU) | 적은 깨어나기 전에는 공격하지 않음. 일단 자극받으면 이동만 하고 공격/오버워치는 못 함(팩 단위 배치). 미탐색 타일에 팩이 스폰될 수 있어 탐색이 새 조우를 부름 | EU | https://ufopaedia.org/Gameplay_Mechanics_(EU2012) | 중간 |
| 은폐(concealment) (X2) | 소대가 숨은 채 시작. 적 시야에 들어가거나 공격, 창/문 파괴, 측면 노출 시 해제. 은폐 중 오버워치를 건 뒤 공격해 매복. 적 순찰은 계속되어 예측이 어려움. 한 번 풀리면 다시 숨지 못함(Reaper/Ranger는 예외) | X2 | https://xcom2.wiki.fextralife.com/Combat ; https://xcom2.wiki.fextralife.com/Tactics ; https://www.gamedeveloper.com/design/a-deep-dive-into-xcom-and-xcom-2 ; https://cogconnected.com/preview/xcom-2-hands-on-preview-developer-interview-strategic-combat-intensified | 중간~높음 |
| 이동 예고 | 이동 구역에 빨간 눈 아이콘이 있으면 그 타일에서 적에게 발각됨. 파란 이동(은폐 안전 지대) 위주 | X2 | https://pixeltwelve.com/guides/xcom-2-beginner-guide-first-mission-cover-overwatch | 높음 |
| 팩(pod) 활성 | 팩은 비활성 상태에서 은폐 안 된 병사가 팩 구성원을 시야에 넣으면 활성. 활성 시 "scamper"(엄폐로 흩어짐), 연쇄 활성 가능. 활성은 되돌릴 수 없음(롱워 모드 문서 서술, 바닐라와 다를 수 있음) | X2 | https://xcom2.wiki.fextralife.com/Tactics ; https://ufopaedia.org/Alien_Pod_Mechanics_(LWR) (검색 스니펫, 모드) ; https://strategywiki.org/wiki/XCOM_2/Alien_Forces (403 미열람) | 중간 |
| 적 행동 예고 | EU/X2는 적의 다음 행동을 UI로 미리 보여주지 않음(오버워치/팩 위치로 추측). 교차 턴이 도입된 CS는 타임라인에 다음 행동 순서를 표시 | EU/X2 vs CS | 부재 확인 자료는 직접 없음(미확인); CS: https://www.gameinformer.com/index.php/review/xcom-chimera-squad/xcom-chimera-squad-review-a-new-kind-of-goon-squad | EU/X2 "없음"은 낮음, CS는 중간 |

---

## 3. 전투/임무/캠페인 길이

| 항목 | 사실(요약) | 작품 | 출처 | 확신도 |
|---|---|---|---|---|
| 한 전투의 턴 수 | 일반 임무의 평균 턴 수는 공식/집계 자료 없음. 제한 턴이 있는 X2 임무는 8~12턴 상한이 보고됨(항목 1 참조) | X2 | https://steamcommunity.com/app/268500/discussions/0/1698293255129519888 | 상한만 중간, 평균은 미확인 |
| 한 임무의 실시간 | 분 단위 평균은 미확인. 단서: EU의 큰 맵은 신중히 하면 임무 하나에 1시간 넘을 수 있다는 한 유저 후기 | EU | 검색 결과의 Steam 토론 https://steamcommunity.com/app/200510/discussions/0/864948299992169522 (스니펫만) | 낮음 |
| 캠페인 길이 EU | 메인 스토리 약 27시간(gg.deals 평균), EW 포함 약 26시간. 커뮤니티 후기는 20~30시간대 | EU/EW | https://gg.deals/gb/game/xcom-enemy-unknown/ (스니펫) | 중간~낮음 |
| 캠페인 길이 X2 | 메인 약 33시간, 메인+추가 48시간(Dekudeals가 인용한 HowLongToBeat), 완주 89.5시간. 포럼 후기는 첫 회차 20~50시간으로 편차 큼 | X2 | https://www.dekudeals.com/items/xcom-2-collection (스니펫) ; https://steamcommunity.com/app/268500/discussions/0/1354868867712426282 (직접 열람) | 중간 |
| 캠페인 길이 CS | 메인 약 20시간(위키피디아 및 복수 매체), 20~25시간(gamepressure), 일부 32시간(outlier) | CS | https://en.wikipedia.org/wiki/XCOM:_Chimera_Squad ; https://www.gamepressure.com/xcom-chimera-squad/ | 중간 |
| 임무 수 | 확정치 없음. EU 상점 문구는 "70개 이상의 고유 임무". 롱워 2 모드는 100~120 임무라는 개발자 언급(모드 기준) | EU / 모드 | https://store.steampowered.com/app/200510/XCOM_Enemy_Unknown/ (EU) ; https://www.pcgamesn.com/xcom-2/xcom-2-long-war-mod (모드, 스니펫) | EU 문구는 높음, 실제 플레이 수는 미확인 |
| 지도 층 만료 | X2의 일부 임무는 지구 지도에서 7~14일 유지(낮은 신뢰도 가이드) | X2 | https://cyberpost.co/how-long-do-missions-stay-on-the-map-xcom-2/ (스니펫) | 낮음 |
| 큰 시간 압박 | Avatar Project(패배 조건)가 베이스 관리 중 서서히 진행, 방해 공작으로 지연. 고정 턴/일수 미확인 | X2 | https://en.wikipedia.org/wiki/XCOM_2 | 중간 |

---

## 4. 병과(클래스)와 승급

| 항목 | 사실(요약) | 작품 | 출처 | 확신도 |
|---|---|---|---|---|
| EU 병과 | 4개: Assault, Support, Heavy, Sniper. 신병은 첫 승급 때 무작위 배정되고 변경 불가. 일부는 사이킥 | EU | https://en.wikipedia.org/wiki/XCOM:_Enemy_Unknown ; 배정 방식 불일치: GameBanshee 리뷰는 무작위, Factions 위키는 부족한 병과 쪽 가중, MobyGames는 첫 임무 행동 기반 | 무작위: 중간(어긋나는 출처 있음, 위 기술) |
| EU 승급 | 경험치로 계급이 오르고 대부분 계급에서 2개 중 1개 선택. Squaddie와 Major만 선택 없이 1개 고정. 영구 사망 | EU | https://en.wikipedia.org/wiki/XCOM:_Enemy_Unknown | 중간 |
| X2 병과 | 5개 기본: Ranger(근접/은폐), Grenadier(폭발물), Specialist(드론/해킹/치료), Sharpshooter(저격), Psi Operative(전투 대신 훈련으로 성장, 능력 해금 무작위). DLC로 SPARK | X2 | https://xcom2.wiki.fextralife.com/Soldier+Classes ; https://store.steampowered.com/app/268500/XCOM_2/ ("5개 병과, 병과별 스킬 트리") | 높음 |
| X2 신병 | Rookie로 시작해 Squaddie 승급 때 무작위 병과 배정, 또는 GTS에서 5일 걸려 지정 | X2 | https://xcom2.wiki.fextralife.com/Soldier+Classes | 중간 |
| X2 승급 | 승급으로 기술 트리와 외형 아이템 해금. 킬/어시스트가 경험치. 계급 이름은 Squaddie~Colonel로 알려졌으나 킬 기준 수치는 난이도별로 달라 확정 못함. 능력 포인트 비용도 미확인 | X2 | https://en.wikipedia.org/wiki/XCOM_2 ; 계급표: 검색 결과(Fandom/Fextralife 병사 페이지, 직접 열람 못함) | 중간~낮음 |
| X2 성장 속도/의존 | 한 분석은 "병과 하나가 빠지면 전술 하나가 사라진다"와 "최상위 병사를 잃으면 손실이 크다"를 지적. 개발자는 X2에서 승급을 EU보다 느리게 설계했다고 언급(Legend 난이도 관련) | X2 | https://www.gamedeveloper.com/design/a-deep-dive-into-xcom-and-xcom-2 ; https://cogconnected.com/preview/xcom-2-hands-on-preview-developer-interview-strategic-combat-intensified | 중간 |
| CS 병과 | 병과 없음. 고정 캐릭터마다 고유 능력, 능력끼리 조합 | CS | https://en.wikipedia.org/wiki/XCOM:_Chimera_Squad | 중간 |
| CS 승급 | Cadet -> Deputy -> Field -> Special -> Senior -> Principal 6계급(= Cadet 포함). Field와 Senior에서 2개 중 1개 능력 선택, Special과 Principal에서 개인 훈련(영구 효과). XP는 임무 완료로 획득 | CS | https://ufopaedia.org/Agents_(Chimera) | 중간~높음 |
| CS 부상/흉터 | 심하게 다치면 능력치 감소 흉터가 남고 훈련으로 제거 가능 | CS | https://ufopaedia.org/Agents_(Chimera) | 중간 |

---

## 5. 설계 교훈 (개발자 발언 또는 널리 알려진 분석)

| 교훈 | 근거(요약) | 출처 | 확신도 |
|---|---|---|---|
| 복잡함(complex)과 번거로움(complicated)은 다르다. 시스템은 단순한 규칙에서 복잡한 결과가 나오게 | Jake Solomon: 초기 비전이 지나치게 복잡했다고 인정하고 단순화(Combat 2.0). 타일 격자와 엄폐를 넣고 손봄 | https://www.gamebanshee.com/94k4 (단순 규칙 선호) ; 단순화 서술: https://en.wikipedia.org/wiki/XCOM:_Enemy_Unknown | 중간 |
| 소대 규모 상한은 의미 있는 한 수를 위해 | 더 큰 소대는 한 수의 의미를 떨어뜨리고 템포를 해쳐 6명 상한 | https://en.wikipedia.org/wiki/XCOM:_Enemy_Unknown | 중간 |
| 엄폐는 "가장 중요한 방어"로 쓰고, 방어구는 체력으로 돌림 | 분석 글: 엄폐가 핵심 방어, 장갑은 피격 확률 대신 체력 증가, 맵은 엄폐 지점을 중심으로 설계되어 측면 공격이 어렵다는 점도 지적 | https://www.gamedeveloper.com/design/a-deep-dive-into-xcom-and-xcom-2 | 중간 |
| 타이머는 템포를 만들지만 양날 | 개발자는 임무 다양화/게릴라 서사를 이유로 들었고, 팬 반응은 갈림. 후속에서 타이머 완화/2배 옵션 추가 제보 | https://www.pcgamesn.com/xcom-2/xcom-2-out-of-concealment-mission-timers-bugs-and-why-the-percentages-arent-lying-to-you ; https://steamcommunity.com/app/268500/discussions/0/1698293255129519888 | 중간 |
| 은폐 + 팩 활성: 첫 접촉을 플레이어가 고르는 감각 | 개발진은 교전 시점을 플레이어가 통제하는 느낌을 목표로 함. 반면 순찰 때문에 준비 전에 들키는 경우도 있다고 서술 | https://cogconnected.com/preview/xcom-2-hands-on-preview-developer-interview-strategic-combat-intensified | 중간 |
| 확률 표시는 정직하게, 단 체감은 별개 | 화면 확률은 정확하다고 못 박았지만 "95% 빗나감"은 기억에 오래 남는다는 점을 인정 | https://www.pcgamesn.com/xcom-2/xcom-2-out-of-concealment-mission-timers-bugs-and-why-the-percentages-arent-lying-to-you | 높음(발언 요약) |
| 진영 단위 턴의 한계를 교차 턴으로 풀 수 있음 | 플레이어 불만에서 출발, Sid Meier가 초기 프로토타입을 만들었다고 서술. 반면 평가는 "조율이 어려워져 후반 전술이 반복된다"는 시각도 | https://en.wikipedia.org/wiki/XCOM:_Chimera_Squad ; https://www.gameinformer.com/index.php/review/xcom-chimera-squad/xcom-chimera-squad-review-a-new-kind-of-goon-squad | 중간 |
| 개발 중 카드/타워디펜스 아이디어를 전략 층에서 검토 | 위키피디아가 EU 전략 층 재설계 때 타워 디펜스/카드 게임 요소를 구상했다고 서술(채택 안 됨) | https://en.wikipedia.org/wiki/XCOM:_Enemy_Unknown | 낮음~중간 |

Jake Solomon의 GDC 발표는 검색에서 확인되지 않았다(PAX East 2017 강연, 인터뷰 위주). 공식 근거가 되는 GDC 자료는 Brian Hess의 "Plot and Parcel"(절차 생성 맵)만 확인.

---

## 6. Runefold에 시사하는 점

Runefold 설계: 8x8 안팎 타일 격자, 유닛 3~4명, 이동은 스탯으로 공짜 + 행동은 카드/에너지로 제한, 엄폐, 고저차, 사거리 모양, 적 행동 예고.

1. 규모는 XCOM이 이미 작은 편이다. EU 상한 6, X2 시작 4, CS 임무당 정확히 4. Runefold의 3~4명은 XCOM 초기와 CS에 해당하는 규모이며, "소대가 커지면 한 수의 의미가 줄고 템포가 나빠진다"는 EU 개발진 판단은 8x8 격자에서 더 강하게 적용될 가능성이 크다.
2. 엄폐는 큰 단계 2개(낮음 -20 / 높음 -40, EU 기준)로 충분했다. 명중 하한 1%, 거리 보정 추가라는 구조를 단순화해서 Runefold에서는 "완전 엄폐=피해 감소 또는 명중률 상한" 같은 단순 규칙이 알맞을 수 있다. 측면 공격이 엄폐를 무효로 하는 구조가 위치 선정의 핵심이므로, 8x8에서는 측면 접근이 가능한 맵 형태 설계가 필요하다(분석 글은 XCOM 맵이 엄폐 중심이라 측면이 어렵다고 지적).
3. 이동(공짜) + 행동(제한)의 분리는 XCOM의 "이동 후 행동, 질주하면 행동 상실" 구조와 취지가 같다. XCOM은 이동 거리를 행동 비용에 묶지만 Runefold는 이동을 스탯으로 풀고 카드/에너지를 행동에 묶는다. 따라서 "질주 패널티(질주한 표적은 맞추기 어려움)"나 "이동 후 행동 불가 능력"은 카드 효과로 번역할 수 있다.
4. 고저차: EU에서 +20 Aim 단일 값이 단순하고 이해하기 쉬웠다. X2는 수직 각도와 무관한 일정 보너스라는 불만(모더)이 있다. Runefold는 높이를 "단계 차이 x 고정 보정" 또는 "사거리 모양 확장"으로 표현하면 직관적일 것이다.
5. 적 행동 예고: XCOM(EU/X2)은 적 행동을 사전에 노출하지 않고 은폐/팩으로 불확실성을 만든다. CS의 타임라인은 순서만 예고한다. Runefold의 "적 행동 예고"는 XCOM에 없는 방향이므로(오히려 Slay the Spire류) XCOM에서 가져올 교훈은 "정보를 줄 때 조율의 어려움이 커질 수 있다(CS 후반 반복 전술 평)" 정도이다.
6. 시간 압박: X2 턴 제한(8~12턴)은 8x8 소규모 전투에서는 과하다. 다만 "기다리기 전략을 막는 장치가 필요하다"는 교훈은 유효. 오버워치 기반 거북이 전술이 문제가 된 사례이므로, 카드 게임에서도 "적이 증원하거나 장면이 악화되는 카운트다운"을 쓸 때는 타이머의 호불호 사례를 고려해 완화 옵션을 준비.
7. 승급: EU/X2는 병과 무작위 배정(CS는 고정 캐릭터 + 6계급, 2개 중 1개 선택). 로그라이크에서는 영구 사망 + 성장 구조가 런 단위로 압축되므로, "계급마다 2택1" 구조(EU, CS 모두 사용)는 짧은 런에 맞는 최소 단위다.
8. 확률 표시 신뢰: 화면 수치는 정직해야 하고, 그래도 큰 확률이 빗나가면 불만이 생긴다. Runefold는 명중 확률 대신 카드 효과 확정성이 높아 이 문제를 줄일 수 있고, 확률 요소가 있다면 표시값 정직성과 "연속 빗나감 보호" 같은 장치를 미리 정할 것.

---

## 7. 미확인 목록

- EU/X2 전투 맵의 정확한 타일 크기, 소대 시야(타일 수), 교전 거리 평균
- X2 바닐라의 정확한 엄폐/높이/측면 치명타 수치(Fandom 위키를 읽지 못함). 엄폐 20/40 vs 25/50 중 X2 실제값
- 한 임무의 평균 실시간(분)과 평균 턴 수, 임무 수, 평균 소대 전투 횟수
- X2 계급별 능력 선택 구조(몇 계급, 몇 개 선택), 경험치 곡선
- CS의 행동 포인트 수와 공식 치명타/엄폐 수치, 임무당 시간
- EU/X2가 적 행동을 UI로 예고하는지 여부를 직접 확인한 문헌(없음으로 간주하되 직접 근거 못 찾음)
- Jake Solomon GDC 발표 존재 여부 및 내용, PAX East 2017 강연 본문
- 2K CS FAQ(403), StrategyWiki X2(403), GameStar 타이머 기사(403)는 원문을 못 읽음
- 화면 표시 확률과 실제 계산 사이의 숨은 보정 항목

---

## 8. 2단계(플레이 관찰) 때 확인할 질문

1. 한 전투가 몇 턴/몇 분에 끝나는가(턴당 평균 몇 번의 의사결정, 한 병사당 보통 몇 칸 이동)?
2. 8x8 안팎 맵을 상정할 때 XCOM의 소형 맵 한 구획(예: 16x16)에서 실제로 교전이 벌어지는 반경이 몇 칸인가?
3. 엄폐가 실제 화면에서 어떻게 보이는가(아이콘, 방향 표시)? 측면 판정을 플레이어가 한눈에 읽는가?
4. 높이 차이를 UI에서 얼마나 명확히 전달하는가? 고지대 효과가 체감되는가?
5. 오버워치, 질주, 은폐 해제의 위험을 플레이어가 어떻게 학습하는가(첫 3개 임무의 튜토리얼 흐름)?
6. 팩 활성 직후의 긴장(scamper)과 첫 접촉 선택권을 연출로 어떻게 표현하는가?
7. 타이머 임무에서 플레이어의 행동이 실제로 달라지는가(공격적 전진 vs 대기)?
8. CS의 타임라인 UI가 정보 부하를 어떻게 다루는가(적 행동 예고에 가장 가까운 사례)?
9. 승급 화면에서 2택1 선택이 얼마나 빨리 이해되는가? 영구 사망이 감정적으로 어떻게 작동하는가?
10. 실패했을 때 재시도/후퇴 옵션과 전체 캠페인 압박(Avatar Project 같은 대형 타이머)의 연결 방식.
