# Migration Runbook (NestJS/TypeORM)

## Before migration
- Confirm schema change scope and backward constraints.
- Verify migration script order and environment target.

## Execution
- Build artifact from tested commit.
- Deploy backend to test server.
- Run migration script.
- Validate schema version and critical query paths.

## After migration
- Run smoke endpoints.
- Attach migration logs to gate evidence.
- If failure: hotfix on new logic branch only.
