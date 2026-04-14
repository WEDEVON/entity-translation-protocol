# Prompt Run Example

## Example Sequence

1. load `prompts/00-system-goal.md`
2. load `prompts/10-source-priority.md`
3. run `prompts/20-audit-round.md`
4. if high-exposure fallback exists, run `prompts/30-manual-map-round.md`
5. run `prompts/40-promotion-round.md`
6. run `prompts/50-review-round.md`
7. run `prompts/60-release-round.md`

## Expected Model Behavior

- audit before broad edits
- explain why an entity belongs in manual or generated storage
- record unresolved ambiguity
- update artifacts
- create a release-ready summary at the end of the round
