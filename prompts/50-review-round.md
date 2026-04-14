# Review Round Prompt

## Purpose

Use this prompt to inspect the current round for quality, policy, and process risks before release.

## Required Inputs

- latest audit output
- latest manual-map changes
- latest generated-map changes
- review queue
- release criteria

## Required Outputs

- one list of unresolved ambiguity
- one list of risky token-level additions
- one list of remaining fallback-dependent entities
- one list of mismatches between visible output and audit classification
- one recommendation for the next round

## Prompt

Review the current round and identify:

- unresolved ambiguity
- risky token-level additions
- entities that still rely on fallback
- any mismatch between visible output and audit classification

## Completion Criteria

This prompt is complete when unresolved risk is visible enough for an operator to decide whether to keep iterating or move to release checks.
