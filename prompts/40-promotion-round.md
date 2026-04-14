# Promotion Round Prompt

## Purpose

Use this prompt to move stable reviewed entities into the generated full-name map without weakening the manual/generated separation.

## Required Inputs

- latest reviewed audit output
- current generated map
- current manual map
- source-priority policy
- release acceptance rules

## Required Outputs

- one list of entities approved for promotion
- one list of entities explicitly not promoted
- one generated-map patch block or equivalent structured output
- one note on any promotion risk or ambiguity

## Promotion Eligibility Rules

Promotion is allowed only when:

- the translation is stable
- the translation fits project rules
- the entity no longer needs manual-only handling

## Prompt

Take the latest reviewed audit output and promote stable entities into the generated full-name map.

Promotion is allowed only when:

- the translation is stable
- the translation fits project rules
- the entity no longer needs manual-only handling

## Completion Criteria

This prompt is complete when the promotion set is explicit, reproducible, and clearly separated from manual exceptions.
