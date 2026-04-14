# Audit Round Prompt

## Purpose

Use this prompt to turn the current source snapshot and translation assets into a measurable audit result.

## Required Inputs

- source dataset or source snapshot
- manual map
- generated map
- token maps, if present
- normalization rules
- current artifact directory

## Required Outputs

- one entity-level audit table or CSV-compatible structure
- one summary with `full_map`, `composed`, `partial_fallback`, and `fallback`
- one prioritized list of unresolved high-exposure entities
- one note on suspicious parser or encoding behavior, if any

## Entity-Level Output Fields

For each entity, produce:

- original source value
- normalized key
- resolved translation
- classification
- resolution layer
- notes

## Prompt

Audit the current translation system against the real source dataset.

For each entity, produce:

- original source value
- normalized key
- resolved translation
- classification

Then summarize:

- full_map count
- composed count
- partial_fallback count
- fallback count

## Completion Criteria

This prompt is complete only when the round produces both detailed audit output and an actionable next correction batch.
