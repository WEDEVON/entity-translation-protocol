# Orchestration Example

## Goal

This document shows how `prompts/prompt-manifest.json` can drive an actual agent workflow.

The example assumes:

- the repository already contains a manual map
- the repository already contains a generated map
- a current source snapshot exists
- artifacts and backup locations are defined

## Core Idea

The prompt manifest is not only documentation. It can be treated as an execution plan.

An orchestrator can:

1. read `prompts/prompt-manifest.json`
2. resolve the ordered `prompt_sequence`
3. load each prompt file
4. inject the required inputs for that stage
5. validate the required outputs before moving to the next stage

## Example Agent Workflow

### Stage 1: Setup

Prompt:

- `00-system-goal`

Inputs:

- repository structure
- source-priority policy
- manual map path
- generated map path
- artifact locations
- backup policy

Expected outputs:

- translation objective summary
- policy acknowledgement
- separation acknowledgement
- audit and backup acknowledgement

Why this stage exists:

- it ensures the model is operating under the correct contract before any edits or audits begin

### Stage 2: Policy Freeze

Prompt:

- `10-source-priority`

Inputs:

- target locale
- target region
- source classes
- editorial constraints
- fallback policy

Expected outputs:

- ordered source-priority list
- locale statement
- region statement
- fallback statement

Why this stage exists:

- later decisions about manual placement and promotion depend on this ordering

### Stage 3: Audit

Prompt:

- `20-audit-round`

Inputs:

- source dataset
- manual map
- generated map
- token maps
- normalization rules
- artifact directory

Expected outputs:

- entity-level audit table
- summary counts
- high-exposure gap list
- parser or encoding note

Why this stage exists:

- this is the main discovery stage that decides what the next correction batch should target

### Stage 4: Manual Review

Prompt:

- `30-manual-map-round`

Inputs:

- latest audit output
- latest review queue
- source-priority policy
- current manual map

Expected outputs:

- proposed manual additions
- manual placement reasons
- evidence flags
- non-manual decisions

Why this stage exists:

- it captures consensus names and high-exposure exceptions before broader promotion happens

### Stage 5: Promotion

Prompt:

- `40-promotion-round`

Inputs:

- reviewed audit output
- current generated map
- current manual map
- source-priority policy
- release acceptance rules

Expected outputs:

- promotion approval list
- promotion rejection list
- generated-map patch block
- promotion risk note

Why this stage exists:

- it upgrades stable reviewed entities into the generated layer without polluting the manual layer

### Stage 6: Review

Prompt:

- `50-review-round`

Inputs:

- latest audit output
- latest manual changes
- latest generated changes
- review queue
- release criteria

Expected outputs:

- unresolved ambiguity list
- risky token addition list
- remaining fallback list
- classification mismatch list
- next-round recommendation

Why this stage exists:

- it prevents the workflow from quietly accumulating risk before release

### Stage 7: Release

Prompt:

- `60-release-round`

Inputs:

- latest audit summary
- latest audit artifacts
- release criteria
- backup destination
- release note template

Expected outputs:

- audit rerun confirmation
- acceptance check confirmation
- backup status
- release note summary
- unresolved risk summary

Why this stage exists:

- it guarantees the round ends in a reproducible and recoverable state

## Minimal Orchestrator Logic

An orchestrator does not need to understand all translation details itself.

At minimum it should:

1. load the manifest
2. iterate through `prompt_sequence`
3. load each markdown prompt by `path`
4. provide the required inputs declared in the manifest
5. verify that each required output has been produced
6. stop or escalate if completion criteria are not met

## Suggested Validation Rules

For each stage:

- fail if any declared required input is missing
- fail if any declared required output is missing
- fail if the agent attempts promotion before audit
- fail if the agent attempts release before backup

## Example Pseudocode

```text
load manifest
for prompt_id in manifest.prompt_sequence:
  prompt = find prompt by id
  inputs = gather required inputs for prompt.stage
  result = run agent(prompt.path, inputs)
  assert required outputs exist in result
  record result in artifacts
if final stage completed:
  mark round successful
```

## Practical Note

In a real implementation, the orchestrator can also map stages to tools:

- audit stage -> audit script
- promotion stage -> promotion script
- release stage -> backup and release-note generation

This keeps the prompts as policy and decision layers, while scripts handle deterministic file operations.
