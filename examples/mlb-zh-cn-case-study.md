# MLB Simplified Chinese Case Study

## Motivation

The original practical need was simple:

- MLB player names in Simplified Chinese needed to be more accurate
- existing translations were inconsistent
- some outputs were visibly unreasonable
- ad hoc fixes were not scaling

## Example Problem Cases

- `Kyle Schwarber` needed `凯尔 舒瓦伯`
- `Will Smith` needed `威尔 史密斯`
- `Henderson` needed a stable mainland-oriented rendering such as `亨德森`

## Process Summary

1. export the real roster scope
2. audit current coverage
3. separate manual overrides from generated coverage
4. prioritize high-exposure players first
5. promote stable reviewed names into a generated full-name map
6. back up confirmed states

## Key Structural Decisions

- keep manual and generated full-name maps separate
- use token maps only for safe repeated patterns
- treat fallback as a temporary safety layer
- move audit artifacts out of the repository root and into dedicated artifact folders

## Failure Modes Encountered

- shell output made valid UTF-8 text look corrupted
- syntax drift between generation output and audit parsing caused misleading audit counts
- root-level artifact sprawl made the working state harder to understand

## Lessons

- high-exposure names should be fixed before long-tail names
- audit and promotion logic must stay aligned
- terminal appearance alone should not trigger destructive rewrites
- every successful round should end with a backup snapshot
