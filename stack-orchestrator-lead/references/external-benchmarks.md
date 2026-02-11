# External Benchmarks (Applied)

## Source A: oh-my-opencode
- Repo: https://github.com/code-yeongyu/oh-my-opencode
- Applied patterns:
  - Specialist agents per role, orchestrated by a planner.
  - Context injection and rule layering for stable execution.
  - Background/parallel work model with explicit coordination points.

## Source B: oh-my-ag
- Repo: https://github.com/first-fluke/oh-my-ag
- Public overview: https://dev.to/gracefullight/stop-micro-managing-prompts-meet-oh-my-ag-the-multi-agent-orchestrator-for-antigravity-4k0g
- Applied patterns:
  - Role-based team structure (PM, FE/BE, Mobile, QA, Debug).
  - Human oversight checkpoints instead of single-agent autonomy.
  - Prompt standardization via role-specific skill bundles.

## How this skill set uses those patterns
- One orchestrator lead + specialist skills.
- Strict intake/handoff/gate schemas.
- Stage-level ownership with evidence-driven progression.
