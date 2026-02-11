# Semantic Drift Checklist

Even if shape is identical, fail/warn when:
- field meaning changes without client handling updates
- available/assignable flags invert behavior
- date/time interpretation changes affect scheduling UI
- state/quota semantics diverge between backend and client expectations
