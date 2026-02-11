# Client Contract Matrix

## Clients in scope
- User app: `recl-rn`
- Rider app: `recl-rider-rn`

## Contract checks
### User app (`recl-rn`)
- primary immutable queries:
  - `serviceAvailableLocations`
  - `availablePickupDays`
- key hook paths:
  - `src/features/serviceAvailableLocation/useServiceAvailableLocations.ts`
  - `src/features/pickup/useAvailablePickupDays.ts`

### Rider app (`recl-rider-rn`)
- pickup/schedule related query surfaces:
  - `src/features/pickup/useGetMyPickup.ts`
  - `src/features/pickup/usePickup.ts`
  - additional pickup hooks under `src/features/pickup/`
- check for shape/semantic changes that impact rider workflows.

## Verdict rule
- SAFE: no shape/semantic risk in both apps
- WARN: shape same, semantic risk in either app
- FAIL: shape incompatibility in either app
