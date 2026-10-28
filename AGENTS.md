# Runefold 에이전트 규칙 (초안, 사용자 승인 전 — RUNE-80)

이 파일은 OpenCode·Codex 같은 에이전트가 이 저장소에서 일할 때 읽는 규칙이다. 사람용 개요는 README.md 다.
Harness² 가 개선하는 "하네스"의 일부이므로, 바꿀 때는 이유를 커밋 본문에 남긴다.

## 지금 상태
- **계획·문서 단계다. 사용자가 풀기 전에는 게임 코드(`godot/game/`, `godot/ui/`)를 새로 짜지 않는다.** 문서와 설정 작업만 한다.
- 다음 관문은 G0 종이 프로토타입 판정(RUNE-41). 상세는 README.md 와 docs/roadmap.md.

## 정본과 사본
- 이슈·문서의 정본은 Jira `RUNE` 과 Confluence `RUNE` 스페이스다. 이 저장소의 `docs/` 는 사본이고, 어긋나면 Confluence 가 맞다.
- Jira·Confluence 읽기는 MCP(`atlassian`)로 한다. **쓰기(이슈 생성·수정, 페이지 수정)는 사용자 승인 후에만** 한다.
- 사본 문서 첫 줄의 정본 페이지와 마지막 동기화일을 지키고, 사본을 고치면 동기화일을 갱신한다.

## 하지 말 것
- 비밀 값(비밀번호·키·토큰)과 `.env*`, `*.pem`, `export_credentials.cfg` 를 읽거나 올리거나 출력하지 않는다. 키는 환경변수로만 쓴다.
- **이 저장소는 공개다.** 회사 자료 경로, 내부 계정·주소, 비공개 문서 내용을 넣지 않는다.
- 참고 게임(XCOM·라피스·아르카나 택틱스·슬레이 더 스파이어 등)은 **우리 말로 요약한 결론만** 둔다. 상대 게임의 코드·에셋·바이너리·디컴파일 출력은 올리지 않는다.
- 모델은 Fable 계열을 쓰지 않는다(사용자 2026-10-26). 허용 최고는 Opus.
- Home1(회사 PC)은 이 작업에 쓰지 않는다.
- `main` 에 직접 push 하지 않는다. 작업 브랜치와 PR 로 한다.

## 작업 순서
1. Jira `RUNE-n` 이슈를 확인한다. 이슈 없는 작업은 하지 않고 사용자에게 묻는다.
2. 브랜치: `<type>/RUNE-<n>-<slug>` (예: `docs/RUNE-80-agents-md`).
3. 커밋: `<type>(<scope>): 한국어 요약 50자 이내`, 본문에 `Refs RUNE-n`, AI 작성이면 끝에 `Co-Authored-By:` 줄.
4. 시험 → PR. CI(GitHub Actions의 헤드리스 GUT)가 병합 조건이다.
5. **완료는 시험·실행으로만 선언한다.** 안 돌렸으면 `NOT RUN` 이라고 쓴다. 확인 못 한 것은 `미확인` 이다.

## 코드 규약 (코드 단계가 열렸을 때)
- 엔진: Godot 4.7.2, GDScript(정적 타입 표기). Steam 연동은 M5b 이후 GodotSteam.
- 규칙 엔진은 렌더링과 분리하고 화면 없이 헤드리스로 시험한다. 규칙 코드는 `godot/game/` 아래에 둔다.
- **엔진 난수 금지.** `randi`, `randf`, `shuffle`, `pick_random` 등은 쓰지 않고 `godot/game/rng/seeded_rng.gd` 의 `SeededRng` 만 쓴다.
  감시 시험 `godot/tests/unit/test_no_engine_rng.gd` 가 `res://game` 을 검사한다.
- 시험: `scripts/run_tests.sh` (헤드리스 GUT, 종료 코드 0 = 통과). `GODOT_BIN` 으로 Godot 경로를 바꾼다.
- 내보내기: `scripts/export_windows.sh` (Windows exe, 내보내기 템플릿 필요).
- 새 서드파티는 `docs/third-party.md` 에 이름·버전·라이선스·출처·확인일을 적는다.

## 검토 (EGM)
- 큰 설계 문서는 EGM 검토 + 정량 검토를 병행한다(docs/egm-trial-result.md). 검토자(Goldfish)는 **읽기 전용**이며 대상 문서와 필요한 저장소 문서만 본다.
- 채택 기준과 한계는 docs/egm-trial.md. 검토 결과는 지적마다 확인 방법(어느 줄·어느 문서)을 적는다.
- EGM artifact directory: .egm

## Harness² 와의 관계
- 개선 대상(편집 가능): 이 파일, `.opencode/agents/`, `.opencode/skills/`, `opencode.json`.
- 개선 대상이 **아닌** 것: 정답 시험, 채점기, 채택 기준. 정답 시험은 에이전트에게 숨기고 이 저장소에 두지 않는다(훈련/시험 분리, docs/harness2-plan.md).
- 실행·비용 단계는 사용자가 지출 상한과 키 설정을 마치기 전에 시작하지 않는다.
