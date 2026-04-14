# Workflow

## Full Round Sequence

1. Freeze the target standard.
2. Refresh the source dataset.
3. Normalize input keys.
4. Run the audit.
5. Review `fallback` and `partial_fallback`.
6. Patch high-exposure entities first.
7. Expand token maps when the pattern is safe and reusable.
8. Promote stable results into the generated full-name map.
9. Re-run the audit.
10. Create a backup snapshot.
11. Build and spot-check.
12. Publish only after acceptance criteria are met.

## Why This Order Matters

This sequence prevents common failure patterns:

- editing before source scope is known
- hiding fallback growth
- mixing manual and generated changes
- finishing a round without a recoverable state

## Recommended Round Types

### Audit Round

- pull source data
- generate audit outputs
- identify unresolved exposure-first issues

### Manual Patch Round

- add high-confidence consensus translations
- add editorial exceptions

### Pattern Expansion Round

- add stable token-level mappings
- reduce recurring fallback

### Promotion Round

- move reviewed stable results into the generated full-name map

### Release Round

- re-run audit
- make backup
- record release note
