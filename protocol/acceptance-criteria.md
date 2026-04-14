# Acceptance Criteria

## Release Acceptance

A release-ready translation set should satisfy:

- `fallback` is zero for the intended release scope, or explicitly accepted
- `partial_fallback` is zero for the intended release scope, or explicitly accepted
- no unexpected foreign-script contamination exists
- no encoding corruption exists
- high-exposure entities match the target regional convention
- a backup snapshot exists

## Documentation Acceptance

A publishable protocol package should also include:

- at least one end-to-end case study
- prompt files with clear operator intent
- templates for review and source tracking
- explicit failure-handling guidance
