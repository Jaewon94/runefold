# 무료 에셋 후보와 출처 대장 초안 (RUNE-20, 2026-10-21)

조사 에이전트가 페이지 본문만 읽고 정리한 결과다. 파일은 내려받지 않았다. OpenGameArt 는 조사 내내 서버 오류로 열리지 않아 그쪽 항목은
검색 요약에만 근거한다(낮음~중간). **사용 전에 라이선스 원문을 직접 읽고 아래 대장에 기록한다.** 확신도는 페이지를 직접 읽었으면 높음이다.

## 결론: 32px 는 "조건부 가능, 확정 보류"

| 요소 | 32px | 비고 |
|---|---|---|
| 타일 | 가능 | Dungeon Crawl 32x32(CC0, 일부 타일 라이선스 불확실 → 제외 목록 필요), Roguey(타일 40), Pipoya·Cainos·Kao |
| 적 4~6종 | 가능 | Roguey 20종, DCSS 몬스터, Hexany 64종(1비트 단색), Pipoya 몬스터 |
| 직업 4종 | 부분 | 기사·마법사·궁수는 가능. **성직자는 Pipoya·Minzinn 에서 확인 못 함**, Roguey 영웅 12종에 있는지는 미확인 |
| 대기 애니 2~4프레임 | 부분 | Roguey·DCSS·Hexany 는 정지, Pipoya 는 걷기만, AnGav 은 idle 5프레임이나 2종뿐 |
| 스타일 일관성 | 약함 | 팩을 섞으면 밀도·외곽선이 달라진다 |
| CC0 만으로 | 불충분 | 32px CC0 의 직업·애니가 부족. CC-BY(크레딧 필수)를 허용하면 Roguey 로 시작 가능 |

16px 는 쉽다: Kenney(Tiny Dungeon·Roguelike Characters), Ninja Adventure(CC0, 그림·소리·UI·폰트가 한 팩), 0x72 DungeonTilesetII(CC0, 기사·마법사·궁수·고블린·오크, idle 있음), Puny Characters(CC0, 32x32 캔버스에 16px급 몸체, 애니 풍부)가 모두 CC0 한 라이선스로 모인다.

**판단:** 640×360 + 타일 32px 잠정은 유지하되, 사용자가 Roguey 의 영웅 12종을 확인하기 전에는 확정하지 않는다. 안 맞으면 16px(카드 공간이 넓은 쪽)로 돌아간다. 그림은 나중에 교체할 임시이므로 큰 비중을 두지 않는다.

## 후보 (페이지를 직접 읽은 것 위주)

| 이름 | 라이선스(원문 요지) | 상업·크레딧 | 쓸 점 / 위험 |
|---|---|---|---|
| Roguey Assets (hairic) https://hairic.itch.io/roguey | CC-BY 4.0 | 가능, **크레딧 필수** | 영웅 12·적 20·타일 40·아이템 16, 32x32, 정지. 직업 일치 미확인 |
| Pipoya Free RPG Character Sprites 32x32 https://pipoya.itch.io/pipoya-free-rpg-character-sprites-32x32 | "For commercial or personal use. Use and edit freely. Not redistribute or resell." | 가능, 크레딧 의무 없음 | 64종, 4방향 걷기, 성직자 불확실. 개조 허용 |
| Dungeon Crawl 32x32 tiles (OGA) | CC0(저장소: 일부 타일은 라이선스 불확실) | 가능 | 3000개+, 스타일 불균일, **불확실 타일 제외 필수**. OGA 미확인 |
| Hexany's Monster Menagerie https://hexany-ives.itch.io/hexanys-monster-menagerie | CC0 | 가능 | 몬스터 64종 1비트 단색, 재채색 필요 |
| Cainos Pixel Art Icon Pack RPG | "free and commercial… modify… Credit not needed" 재배포 금지 | 가능 | 32px 아이콘 107종 |
| Shikashi's Fantasy Icons | CC-BY 4.0(작가·game-icons.net 크레딧) | 가능, 크레딧 필수 | 32px 아이콘 284개 |
| Kenney (Pixel UI 등) | CC0 | 가능 | UI 9-slice 패널. 카드 프레임 전용 팩은 못 찾음 |
| **LPC 계열** | CC-BY-SA·GPL 혼합 | **파생물에 SA 전염** | **사용하지 않는다** |
| craftpix 무료 | 맞춤 약관(재판매 금지, AI 학습 금지 조항 있음) | 팩별 확인 필요 | 약관 미확인 |

## 폰트(한글 비트맵)
- **Galmuri**(OFL-1.1, https://github.com/quiple/galmuri): Galmuri9 = 10px(본문 후보, 해상도 목업 결과와 일치), Galmuri11 = 12px, Galmuri14 = 15px, Galmuri7 = 8px(한글 4,358자 제한). 임베딩·상업 가능(폰트 단독 판매 불가).
- **Neo둥근모**(OFL-1.1, https://github.com/neodgm/neodgm): 16px 배수. 제목용 후보.
- 둘 다 OFL 이므로 라이선스 전문을 배포물에 포함한다. 예약 폰트명(RFN) 선언과 11,172자 커버리지는 원문을 직접 읽어 확인한다(미확인).

## 소리
- Kenney Audio(CC0), Ninja Adventure(CC0, 효과음 100+·BGM 37곡), freesound 는 **CC0 필터만**, Incompetech(CC-BY, 크레딧 필수).
- OGA 항목은 미확인.

## 출처 대장 열
에셋 이름 | URL | 작가 | 라이선스 정식 이름 | 원문 스크린샷 위치 | 확인일 | 다운로드 버전·날짜 | 사용처 | 개조 여부(팔레트 스왑 등) | 크레딧 필요 | 크레딧 문구 | 비고

절차: ① 페이지 라이선스를 읽고 스크린샷 저장 ② zip 안 license/readme 와 대조(다르면 엄격한 쪽) ③ NC·ND·SA 는 제외 ④ 혼합 라이선스(DCSS)는 제외 목록으로 거른다 ⑤ 사용 파일·작가를 대장에 기록 ⑥ 크레딧 화면 문구를 미리 쓴다(예: "Roguey Assets by hairic (CC BY 4.0)") ⑦ 출시 전에 페이지를 다시 확인한다(itch.io 는 작가가 라이선스를 바꿀 수 있다).

## 사용자가 직접 확인할 것
1. Roguey zip 의 영웅 12종에 기사·레인저·마법사·성직자가 있는지, 정지 스프라이트에 대기 2프레임을 그릴 수 있는지.
2. Pipoya 64종에 성직자풍이 있는지.
3. 맞춤 약관 팩(Pipoya·Cainos·LimeZu·Kao)의 "재배포 금지"가 Steam 배포 번들에 해당하는지(작가 문의).
4. 폰트 OFL 전문과 RFN.
5. 카드 프레임: 무료 CC0 전용 팩을 못 찾았으므로 직접 제작 또는 Kenney Pixel UI 응용.
6. 보고서에서 낮음·중간으로 표시한 항목(OGA 전부, Senpai 아이콘, Fusion Pixel 등)은 사용 전에 직접 읽는다.
