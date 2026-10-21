# Runefold (룬폴드)

타일 격자 위에서 소대를 움직이는 전술 전투에, 카드로 행동하고 유닛·카드를 합성하며 유물로 빌드를 굴리는
판타지 로그라이크. **Steam 출시용 네이티브 PC 게임**이다(웹 게임 아님). 이름은 가칭이다.

- 한 줄 요약: XCOM·라피스식 타일 전술 + 슬레이 더 스파이어식 카드·유물 + 합성 승급(TFT·Super Auto Pets 참고)
- 아트: 2D 도트, 캐릭터·몬스터 움직임 최소(걷기 프레임 없음, 대기 2~4프레임 + 트윈)
- 상태: **계획 단계(M0 이전)**. 코드 없음. 2026-10-21 기준

## 지금 (2026-10-21)

- 단계: A 사전 검증(M0 전). 다음 관문: G0 종이 프로토타입 판정(RUNE-41).
- 사용자가 할 일: ① 종이 프로토타입 기본형 3판([docs/paper-prototype.md](docs/paper-prototype.md)) ② 상표 조회 KIPRIS·USPTO(RUNE-34) ③ 세무 상담(올해 말, RUNE-33)  — Home1 Claude 로그인(RUNE-12)은 Home1 합류 때
- 에이전트가 하는 일: 해상도 목업(RUNE-42), 합성 빈도 계산(RUNE-24, 코드 작성 승인 필요)
- 답을 기다리는 질문: 아래 「아직 정해지지 않은 것」과 검토 결과 구조 결정(정본 규칙·개발 장소·일정 구조·틱 카운터)
- 막힌 것: 없음. M0 는 맥에서 시작한다. Home1 상시 가동(WSL 자동 종료, RUNE-69)은 보류

## 정본과 문서

이슈·문서의 정본은 Jira 와 Confluence 이고, 이 저장소의 문서는 사본이다. 어긋나면 Confluence 쪽이 맞다. 사본 문서 첫 줄에 정본 페이지와 마지막 동기화일을 적는다(2026-10-21 결정).

| 무엇 | 어디 |
|---|---|
| 이슈 | [Jira RUNE](https://sworkspace-45084199.atlassian.net/jira/software/projects/RUNE/boards) — 에픽 RUNE-1~7·9·38~40 = 마일스톤(M0~M6 와 M5a·M5b·M5.5·M5.9), RUNE-10 = 행정·출시 준비 |
| 스페이스 홈 | [Confluence RUNE](https://sworkspace-45084199.atlassian.net/wiki/spaces/RUNE/overview) |
| 게임 설계(정본) | [01 게임 설계](https://sworkspace-45084199.atlassian.net/wiki/spaces/RUNE/pages/8814593) — 사본: [docs/design.md](docs/design.md) |
| 결정 장부 | [02 결정 장부](https://sworkspace-45084199.atlassian.net/wiki/spaces/RUNE/pages/8716299) — RUNE-DEC01~11 |
| 개발 환경 현황 | [03 개발 환경](https://sworkspace-45084199.atlassian.net/wiki/spaces/RUNE/pages/8847361) |
| 출시 로드맵 | [04 출시 로드맵](https://sworkspace-45084199.atlassian.net/wiki/spaces/RUNE/pages/8552481) — 사본: [docs/roadmap.md](docs/roadmap.md) |
| 종이 프로토타입 | [05 종이 프로토타입](https://sworkspace-45084199.atlassian.net/wiki/spaces/RUNE/pages/9175071) — 사본: [docs/paper-prototype.md](docs/paper-prototype.md) |

## 지금까지 정한 것 (요약, 상세는 결정 장부)

| 결정 | 상태 |
|---|---|
| Steam 출시용 네이티브 PC 게임 | 확정 |
| 엔진 Godot 4(GDScript, Steam 연동은 GodotSteam). 버전·URL 은 설치 시점에 공식 사이트에서 확인해 기록 | 확정 |
| 승급은 **항상 같은 것 3개 → 1개**(유닛·카드), 단계 1~3, 최대까지 같은 것 9개 | 확정 |
| 조합식: 서로 다른 재료 2~3개 → 새것(고정 레시피표), 유닛·카드 대상, 결과 ★1 | 잠정(G3 에서 비교) |
| 등급 4단계: 일반·고급·희귀·전설(합성해도 등급은 안 바뀜) | 잠정 |
| 2D 도트, 기준 해상도 640×360 정수 배율, 타일 32px | 도트는 확정, 해상도·타일은 잠정(2026-10-21 목업으로 변경, RUNE-20 에서 32px 에셋 확인 후 확정) |
| 로그라이크 구조 유지, 판 길이와 합성 빈도는 실측 후 조정 | 잠정 |
| 이름 Runefold(룬폴드) | 잠정 |

설계 요약: 한 판 30~45분 목표, 직업 4종(기사·레인저·마법사·성직자), 이동은 공짜이고 행동만 카드와 에너지로
제한한다. 규칙 엔진은 렌더링과 분리해 화면 없이 헤드리스로 시험한다.

## 마일스톤

| 단계 | Jira | 내용 | 완료 기준 |
|---|---|---|---|
| M0 | RUNE-1 | 엔진 확정, 프로젝트 뼈대, 헤드리스 시험, Windows exe 내보내기 | 시험 통과, exe 실행 |
| M1 | RUNE-2 | 격자·이동·사거리·적 1종 | 이동·피격 규칙 시험 통과 |
| M2 | RUNE-3 | 카드·에너지·손패·적 AI | 1전투 끝까지 플레이 |
| M3 | RUNE-4 | 지도·보상·상점·유물 8~10종 | 1막 한 판 완주 |
| M4 | RUNE-5 | 합성(승급 3→1 + 조합식) | 합성 규칙 시험, 야영 화면 |
| M5 | RUNE-6 | 직업 4종·유물 30종·보스·저장 | 수직 슬라이스 |
| M5a | RUNE-38 | 콘텐츠 완성(2·3막, 보스, 튜토리얼, 문자열 동결) — 신설 | 전 막 완주 |
| M5b | RUNE-39 | Steam 뼈대(앱·SteamPipe·Coming Soon·Playtest) — 신설 | 비공개 빌드 업로드 |
| M5.5 | RUNE-9 | 데모·Next Fest — 신설 | 데모 공개 |
| M5.9 | RUNE-40 | 안정화·베타 — 신설 | 데모 피드백 반영 |
| M6 | RUNE-7 | 업적·클라우드·Deck 점검, 심사 제출 | 심사 통과 |

세부 일정과 재미 확인 관문(G1~G3)은 [docs/roadmap.md](docs/roadmap.md) 참조.

## 작업 규칙

- 작업은 Jira `RUNE` 이슈 단위다. 브랜치는 `main` + 작업 브랜치 `<type>/RUNE-<n>-<slug>`.
- 커밋: `<type>(<scope>): 한국어 요약 50자 이내`, 본문에 `Refs RUNE-n`, AI 작성 시 끝에 `Co-Authored-By:` 줄.
- 비밀 값(비밀번호·키·토큰)과 `.env*` 는 저장소와 문서에 올리지 않는다.
- 참고 게임(XCOM·라피스·아르카나 택틱스·슬레이 더 스파이어) 분석은 별도 REA 프로젝트에서 한다. 이 저장소에는
  **우리 말로 요약한 결론만** 두고, 상대 게임의 코드 조각·에셋·바이너리·디컴파일 출력은 올리지 않는다.
- 완료는 시험·실행으로만 선언한다. 안 돌렸으면 NOT RUN 이다.

## 개발 환경

- 원격: GitHub `Jaewon94/runefold`(비공개), 전용 deploy key 로 Home1 에서 push 한다.
- M0 는 맥에서 로컬 Godot 로 시작한다(2026-10-21 결정). Home1 `game-dev` 는 상시 가동 환경(RUNE-69)이 준비되면 합류한다.
- Home1 에 게임 전용 Windows 일반 계정 `game` 과 전용 WSL `game-dev`(Ubuntu 24.04)를 만들었다(Windows 드라이브
  마운트·interop 차단, 화면 없음). Orca 서버, 전용 deploy key, 클론, Claude Code 설치까지 끝났고 Claude 로그인(사용자가 직접)과
  다른 계정의 임시 사본 정리가 남았다. 진행 현황은 Confluence 「03 개발 환경」에 둔다.
- 헤드리스 시험·Windows 내보내기는 처음에는 맥에서, Home1 합류 뒤에는 WSL 에서도 한다. Windows 실행 확인은 Home1 모니터에서 한다(exe 를
  공용 폴더로 복사해 모니터에 로그인된 계정에서 실행).
- 시스템 설치 없이 사용자 폴더 안 포터블 실행 파일만 쓴다. 회사 자료 경로는 건드리지 않는다.

## 아직 정해지지 않은 것

- 전설 유닛 존재 여부, 단계별 능력치 증가폭, 조합식 레시피 개수와 구성 (수동 합성과 출전 4+대기석 6 은 잠정 결정)
- 노드 수와 전투 길이(M3 에서 실측), 합성 빈도(M4 에서 실측)
- 참고 게임 분석: 1단계(공개 자료)는 완료, 2단계(플레이 관찰)는 보류, 3a 는 2단계 뒤로 미룸. 대상 목록과 결과 정본 위치는 사용자 답 대기
- 출시 목표 시기(현재 해석: 마감 없음, 품질 우선), 세무·사업자 상담 시기(현재 해석: 2026년 말) — 사용자 확인 대기
- 이름 확정, 등급별 출현 확률과 가격(M3)

## 저장소 구성

```
README.md        이 문서
docs/design.md   게임 설계 사본(정본은 Confluence 01 게임 설계)
docs/roadmap.md  출시 로드맵 사본(정본은 Confluence 04 출시 로드맵)
docs/paper-prototype.md  종이 프로토타입 규칙·카드·시나리오(정본은 Confluence 05)
docs/reference-research/  참고작 1단계 공개 자료 조사(우리 말 요약, Jira RUNE-8)
```
