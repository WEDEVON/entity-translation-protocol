# Quick Start

## Minimum Setup

1. Copy the `translate_process/` folder into your project or repository.
2. Create a locale-specific manual map from `templates/locale-manual-map.ts`.
3. Create a generated map from `templates/generated-full-map.ts`.
4. Prepare a source dataset and register it in `templates/source-register.csv`.
5. Run an audit pass using `scripts/audit-entities.ps1` as your starting point.
6. Create a review queue using `templates/review-queue.csv`.
7. Promote reliable rows into the generated map.
8. Re-run the audit and store the outputs under `artifacts/`.

## Minimum Rules

- always define source priority before editing
- always normalize input keys before lookup
- always keep manual and generated assets separate
- always keep a backup after a good audit round
- always validate before release

## Next Reading

- `protocol/core.md`
- `protocol/workflow.md`
- `checklists/project-setup.md`
