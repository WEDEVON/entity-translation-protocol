# Versioning

## Goal

This repository uses lightweight semantic versioning for protocol and prompt-pack evolution.

Format:

`MAJOR.MINOR.PATCH`

## Meaning

### MAJOR

Increase the major version when:

- prompt contracts change incompatibly
- repository structure changes incompatibly
- protocol stages are added, removed, or renamed in a breaking way
- downstream automation would need manual migration

### MINOR

Increase the minor version when:

- new prompts are added
- new examples are added
- protocol guidance expands without breaking existing usage
- new templates or checklists are added
- manifest fields are added in backward-compatible ways

### PATCH

Increase the patch version when:

- wording is clarified
- typos are fixed
- examples are corrected without changing workflow meaning
- prompt wording improves without changing the contract shape
- metadata values are corrected

## Current Guidance

- use `0.x.y` while the repository is still evolving quickly
- treat minor bumps as notable operator-facing improvements
- record all meaningful updates in `CHANGELOG.md`

## Release Rule

Every tagged version should have:

- an updated `CHANGELOG.md`
- an updated prompt manifest version
- a short summary of any operator-facing changes
