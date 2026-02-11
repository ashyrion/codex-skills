# Pattern Catalog (Commonly Used)

## A. GraphQL Client Hook Pattern
Observed in current apps (`recl-rn`, `recl-rider-rn`):
- define query with `gql`
- wrap with `useQuery` / `useLazyQuery` / `useMutation`
- expose typed hook from feature path

Example shape:
- `useServiceAvailableLocations`
- `useAvailablePickupDays`
- rider-side pickup hooks (`useGetMyPickup`, `usePickup`)

## B. Contract Invariant Pattern
When backend scheduling logic changes:
- keep immutable query response shape
- allow internal source table changes
- enforce snapshot diff gate

## C. Domain Refactor Pattern
- move computation source first (backend)
- keep API contract stable (clients)
- update admin interaction constraints
- validate with test matrix + release gate

## D. Multi-Client Scope Pattern
Current scope includes two mobile clients:
- user app: `recl-rn`
- rider app: `recl-rider-rn`

Any API change must be checked against both client surfaces.
