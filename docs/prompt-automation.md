# Prompt Automation

## Why Prompt Automation Matters

This workflow was designed not only for hand editing, but also for LLM-assisted execution.

A good prompt layer can help with:

- source-aware review
- audit interpretation
- map promotion decisions
- release readiness checks
- backup discipline

## Prompt Pack Structure

The prompt files in `prompts/` are arranged as an operator workflow:

1. `00-system-goal.md`
2. `10-source-priority.md`
3. `20-audit-round.md`
4. `30-manual-map-round.md`
5. `40-promotion-round.md`
6. `50-review-round.md`
7. `60-release-round.md`

## Good Automation Targets

- reading audit outputs
- grouping unresolved entities by priority
- drafting manual-map additions
- preparing generated-map promotions
- writing round summaries

## Tasks That Still Need Guardrails

- changing source policy
- accepting disputed consensus
- deleting backups
- shipping with unresolved high-exposure fallback
