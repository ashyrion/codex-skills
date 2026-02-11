# Snapshot Protocol

- Capture baseline fixtures for mobile-facing queries.
- Re-run after backend change.
- Compare:
  - field names
  - nullability
  - nested object structure
- Any mismatch => FAIL and block release gate.
