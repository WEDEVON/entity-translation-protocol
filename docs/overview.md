# Overview

## Problem

Entity translation projects often fail for the same reasons:

- the target standard is not frozen early
- translations from different sources get mixed together
- generated output and manual overrides are stored in the same place
- no one knows what still depends on fallback logic
- encoding issues are discovered only after UI breakage

## Solution

This template treats translation as a controlled pipeline:

1. freeze the target standard
2. normalize all inputs
3. separate manual and generated assets
4. audit against real source data
5. prioritize high-exposure fixes first
6. promote stable results into generated maps
7. back up confirmed states
8. validate before release

## Intended Users

- engineers building multilingual products
- localization leads
- data teams maintaining name dictionaries
- editorial teams that want repeatable translation rules
- LLM workflow designers who need prompts plus operational safeguards

## Reading Order

If you are new:

1. `docs/quickstart.md`
2. `protocol/core.md`
3. `protocol/workflow.md`
4. `examples/mlb-zh-cn-case-study.md`

If you want automation:

1. `docs/prompt-automation.md`
2. `prompts/00-system-goal.md`
3. `prompts/20-audit-round.md`
4. `prompts/40-promotion-round.md`
