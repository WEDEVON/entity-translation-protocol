# Release Round Prompt

## Purpose

Use this prompt to close a translation round in a reproducible and recoverable way.

## Required Inputs

- latest audit summary
- latest audit artifacts
- release criteria
- backup destination
- release-note template

## Required Outputs

- confirmation that audit was re-run
- confirmation that acceptance criteria were checked
- backup path or backup status
- release-note summary
- unresolved risk summary

## Prompt

Before closing the round:

1. re-run the audit
2. confirm acceptance criteria
3. create a backup snapshot
4. update the release note
5. summarize unresolved risks

## Completion Criteria

This prompt is complete only when the round has both a valid audit state and a recoverable backup state.
