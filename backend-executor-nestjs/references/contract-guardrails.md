# Contract Guardrails

## Must not change
- serviceAvailableLocations response shape
- availablePickupDays response shape

## Verification
- Snapshot comparison before and after backend changes.
- Any shape drift => FAIL gate.
