# Flaky Test Policy

- A flaky test cannot be silently ignored for release gates.
- Mark as flaky only with issue reference and owner.
- Gate policy:
  - Critical path flaky => FAIL
  - Non-critical flaky => BLOCKED until owner decision
