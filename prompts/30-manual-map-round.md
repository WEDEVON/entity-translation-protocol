# Manual Map Round Prompt

## Purpose

Use this prompt to decide which unresolved entities should enter the manual full-name map rather than waiting for token-level or generated-map handling.

## Required Inputs

- latest audit output
- latest review queue
- current source-priority policy
- current manual map

## Required Outputs

- one list of proposed manual-map additions
- one reason for each addition
- one flag for any unresolved evidence requirement
- one note for anything that should remain outside the manual map

## Per-Entity Output Fields

- source entity
- normalized key
- proposed translation
- reason for manual placement
- evidence status
- follow-up note

## Prompt

Take the current high-exposure unresolved entities and decide which ones belong in the manual full-name map.

For every proposed addition, state:

- source entity
- proposed translation
- why manual placement is preferred
- whether follow-up evidence is still needed

## Completion Criteria

This prompt is complete when the proposed manual entries are clear enough to patch without guessing their placement later.
