# Core Protocol

## Principle

Treat translation as an audited data pipeline, not as ad hoc string replacement.

## Typical Scope

This protocol is strongest when the project contains many repeatable entities, such as:

- person names
- organization names
- venue names
- team names
- metadata labels

## Priority Order

Before editing, every project should define:

1. target locale
2. target regional convention
3. authoritative sources
4. consensus sources
5. fallback policy

## Required Layers

Every implementation should have four layers:

1. manual full-name map
2. generated full-name map
3. reusable token maps
4. conservative fallback

### Manual Full-Name Map

Use for:

- strong consensus translations
- editorial exceptions
- high-exposure names
- domain-specific conventions

### Generated Full-Name Map

Use for:

- reviewed stable outputs promoted from audit rounds
- entities that no longer need custom manual handling

### Reusable Token Maps

Use for:

- repeated given-name patterns
- repeated surname patterns
- stable domain tokens

### Conservative Fallback

Fallback exists to keep output readable. It is not the desired final state for high-exposure entities.

## Quality States

Recommended states:

- `full_map`
- `composed`
- `partial_fallback`
- `fallback`

These states should drive:

- review queues
- promotion eligibility
- release decisions

## Non-Negotiable Rules

- never change the target standard mid-round
- never merge generated content into the manual map without intent
- never trust terminal output alone for multilingual correctness
- never ship without an audit result
- never finish a successful round without a backup
