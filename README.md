# Codex Skills 운영 매뉴얼

이 문서는 `~/.codex/skills` 스킬 세트를 실제 프로젝트에 적용하고 유지보수하기 위한 운영 가이드다.

## 1) 목적
- 멀티 리포(backend/admin/mobile) 작업을 역할 기반으로 분담한다.
- 토픽별 리더 전환과 게이트 기반 진행(PASS/FAIL/BLOCKED)으로 작업 품질을 관리한다.
- 스킬 자체를 다른 프로젝트에서도 재사용할 수 있게 프로젝트 종속 설정을 분리한다.

## 2) 현재 구성된 스킬과 역할
### 총괄
- `stack-orchestrator-lead`
- 역할: 토픽 분류, 리더 지정, 단계 게이트 판정, 핸드오프 관리

### 문서
- `planner-doc-writer`
- 역할: 마스터 문서/태스크 문서 구조 유지, 추적성 매트릭스 관리

### 실행(전문)
- `backend-executor-nestjs`
- 역할: 백엔드 도메인/마이그레이션/테스트

- `admin-executor-react`
- 역할: 어드민 UI/상호작용 규칙/권한 UI

- `mobile-compat-guardian`
- 역할: 모바일 계약 불변성 검증, 앱 영향도 판정

### 검증/배포
- `test-automation-specialist`
- 역할: 단위/통합/E2E 자동화, 게이트 결과 리포트

- `qa-release-manager`
- 역할: 배포-마이그레이션-스모크 실행 및 GO/HOLD/NO-GO 판정

## 3) 폴더 구조
```text
~/.codex/skills/
├── README.md
├── .githooks/
│   └── commit-msg
├── scripts/
│   ├── setup-git-hooks.sh
│   └── validate-all-skills.sh
├── <skill-name>/
│   ├── SKILL.md
│   ├── agents/openai.yaml
│   ├── references/
│   │   ├── project-profile.template.md
│   │   ├── project-profile.md        # 로컬 전용(추적 제외)
│   │   └── *.md
│   ├── examples/
│   │   └── *.json
│   └── scripts/
│       └── *.sh
└── .system/                           # 내부 시스템 스킬
```

## 4) 빠른 시작
### 4.1 클론 후 초기 설정
```bash
cd ~/.codex/skills
./scripts/setup-git-hooks.sh
./scripts/validate-all-skills.sh
```

### 4.2 프로젝트 연결(필수)
각 스킬의 `references/project-profile.template.md`를 참고해 `project-profile.md`를 작성한다.

예시 위치:
- `~/.codex/skills/stack-orchestrator-lead/references/project-profile.md`
- `~/.codex/skills/backend-executor-nestjs/references/project-profile.md`
- `~/.codex/skills/admin-executor-react/references/project-profile.md`
- `~/.codex/skills/mobile-compat-guardian/references/project-profile.md`
- `~/.codex/skills/test-automation-specialist/references/project-profile.md`
- `~/.codex/skills/qa-release-manager/references/project-profile.md`
- `~/.codex/skills/planner-doc-writer/references/project-profile.md`

## 5) 기본 운영 순서(권장)
1. `stack-orchestrator-lead`로 토픽 인입/리더 지정
2. `planner-doc-writer`로 문서/태스크 동기화
3. 전문 스킬(backend/admin/mobile) 실행
4. `test-automation-specialist`로 게이트 검증
5. `qa-release-manager`로 배포/마이그레이션/스모크
6. `stack-orchestrator-lead`가 최종 판정

## 6) 커밋 규칙(강제)
- 형식: `<type>: <한국어 요약>`
- 허용 타입:
  - `feat`, `fix`, `refactor`, `docs`, `test`, `chore`, `perf`, `ci`, `build`, `revert`
- 커밋 메시지 첫 줄 한국어 필수
- 훅 파일: `~/.codex/skills/.githooks/commit-msg`

참고:
- 새 환경에서는 반드시 `./scripts/setup-git-hooks.sh` 실행

## 7) 다른 프로젝트에서 사용할 때 주의점
### 7.1 절대경로 하드코딩 금지
- SKILL.md/스크립트에 프로젝트 절대경로를 직접 넣지 않는다.
- 경로는 반드시 각 스킬의 `project-profile.md`에서 주입한다.

### 7.2 로컬 설정 파일은 Git에 올리지 않기
- `*/references/project-profile.md`는 `.gitignore`로 추적 제외된다.
- 팀 공유가 필요하면 `project-profile.template.md`만 업데이트한다.

### 7.3 계약 불변 항목 명확화
- 프로젝트마다 immutable query/response를 먼저 정의해야 한다.
- `mobile-compat-guardian`/`test-automation-specialist`가 이 기준으로 FAIL을 판정한다.

### 7.4 테스트 명령 차이 반영
- `npm`, `yarn`, `pnpm` 혼용 가능하나 profile에 실제 명령을 명시해야 한다.
- 스킬 실행 스크립트는 환경변수(`BACKEND_REPO`, `ADMIN_REPO`, `CONTRACT_CHECK_CMD`) 기반이다.

## 8) 스택이 달라질 때 대응 방법
스택이 달라지면 기존 스킬을 억지로 쓰지 말고, 아래 기준으로 분기한다.

### 8.1 백엔드가 NestJS가 아닌 경우
- 선택 1: `backend-executor-nestjs`를 복제해 신규 스킬 생성
  - 예: `backend-executor-fastapi`, `backend-executor-spring`
- 선택 2: 기존 스킬 유지 + references/scripts만 스택 맞춤 교체

권장:
- 도구/테스트/마이그레이션 방법이 크게 다르면 신규 스킬로 분리

### 8.2 프론트가 React/Vite가 아닌 경우
- `admin-executor-react`를 스택별로 분화
  - 예: `admin-executor-nextjs`, `admin-executor-vue`
- 레이아웃/권한/검증 규칙은 공통 reference로 재사용

### 8.3 모바일이 RN이 아닌 경우
- `mobile-compat-guardian`를 범용 `client-compat-guardian`으로 확장하거나 신규 생성
- 핵심은 "계약 불변성 검증 프로토콜" 유지

### 8.4 스택 전환 시 체크리스트
1. 새 스택 전용 실행 스킬 생성/분리 여부 결정
2. `project-profile.template.md` 갱신
3. 실행 스크립트 명령 변경
4. 테스트 매트릭스/리포트 스키마 갱신
5. `stack-orchestrator-lead`의 topic-routing 규칙 업데이트

## 9) 새 스킬 추가 절차
1. 목적/범위 정의
2. `SKILL.md` 작성(언제 쓰는지, read order, outputs)
3. `references/` 최소 2개 이상(정책+실행기준)
4. `examples/` 입력/출력 샘플 추가
5. `agents/openai.yaml` 작성
6. `./scripts/validate-all-skills.sh` 통과

## 10) 트러블슈팅
### 10.1 검증 스크립트 실패
- 가상환경 확인:
  - `~/.codex/skills/.venv-skill-tools`
- 재실행:
  - `./scripts/validate-all-skills.sh`

### 10.2 커밋이 거부됨
- 메시지가 `<type>: <한국어 요약>` 형식인지 확인
- 새 기기면 `./scripts/setup-git-hooks.sh` 실행

### 10.3 원격 push 실패
- SSH 인증 확인:
  - `ssh -T git@github.com`
- 원격 URL 확인:
  - `git remote -v`

## 11) 권장 운영 원칙
- 오케스트레이터를 건너뛰고 전문 스킬을 직접 실행하지 않는다.
- 문서-코드-테스트-배포 증거를 항상 연결한다.
- FAIL/BLOCKED 상태에서 다음 단계로 진행하지 않는다.
