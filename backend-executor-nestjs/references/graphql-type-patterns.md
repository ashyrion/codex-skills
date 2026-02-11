# GraphQL Type and Naming Patterns

Observed patterns in current backend (`recl-api`):
- domain service + resolver split
- DTO naming:
  - request: `request.*.dto.ts`
  - response: `response.*.dto.ts`
- query service via `@nestjs-query` + custom query service utilities

## Practical rules
- Keep request/response DTO names explicit and stable.
- Prefer adding new internal DTOs over changing client-facing response DTOs.
- Any contract-affecting change requires snapshot evidence in gates.
