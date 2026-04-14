# Translation Process

[![Status](https://img.shields.io/badge/status-active-2ea44f)](#)
[![Protocol](https://img.shields.io/badge/protocol-versioned-0969da)](./protocol/core.md)
[![Prompts](https://img.shields.io/badge/prompts-agent_ready-8250df)](./prompts/)
[![Manifest](https://img.shields.io/badge/manifest-machine_readable-1f883d)](./prompts/prompt-manifest.json)
[![Schema](https://img.shields.io/badge/schema-json-0ea5e9)](./prompts/schema.json)
[![License](https://img.shields.io/badge/license-MIT-f59e0b)](./LICENSE.md)

`translate_process/` is an open-source-ready template for building translation systems that are:

- source-aware
- auditable
- layered
- recoverable
- prompt-automatable
- reusable across languages, sports, and domains

It was shaped by a real MLB Simplified Chinese localization effort, then generalized into a reusable workflow for person names and other entity-heavy translation problems.

## Why This Repository Exists

Many translation projects begin as ad hoc string tables and later run into the same problems:

- no frozen source-priority policy
- no separation between manual and generated output
- no audit trail for fallback logic
- no repeatable review workflow
- no backup discipline after a good round
- no clean prompt contract for LLM-assisted execution

This repository starts with those operational requirements instead of discovering them too late.

## What You Get

- `docs/`
  Orientation, quick start, and prompt automation guidance.
- `protocol/`
  Core method, workflow, decision rules, source policy, normalization, failure handling, release policy, and acceptance criteria.
- `examples/`
  Case studies and transfer examples across languages and domains.
- `prompts/`
  Agent-ready prompts with explicit input and output contracts, plus a machine-readable manifest and schema.
- `checklists/`
  Operational checklists for setup, audit rounds, release, and incident response.
- `templates/`
  Reusable templates for maps, review queues, source tracking, release notes, and decision logs.
- `scripts/`
  Scaffolds for audit, promotion, backup, and artifact organization.

## Start Here

1. Read [docs/overview.md](./docs/overview.md).
2. Read [protocol/core.md](./protocol/core.md).
3. Follow [protocol/workflow.md](./protocol/workflow.md).
4. Study [examples/mlb-zh-cn-case-study.md](./examples/mlb-zh-cn-case-study.md).
5. Read [orchestration-example.md](./orchestration-example.md).
6. Use the prompt pack under [prompts/](./prompts/) if you want agent-assisted execution.

## Repository Structure

```text
translate_process/
  README.md
  CONTRIBUTING.md
  LICENSE.md
  ROADMAP.md
  docs/
  protocol/
  examples/
  orchestration-example.md
  prompts/
  checklists/
  templates/
  scripts/
```

## Who This Is For

This template is strongest for:

- person-name translation systems
- team and organization name localization
- venue and location naming
- metadata vocabulary localization
- multilingual entity catalogs

It can also be adapted to product names, institution names, medical terminology, legal entity catalogs, and other controlled translation domains.

## Automation Model

This repository is designed to support both:

- human-operated translation rounds
- agent-assisted translation rounds driven by explicit prompts and artifact contracts

The prompts are intentionally structured so they can be plugged into an agent workflow without requiring hidden context.

See:

- [prompts/prompt-manifest.json](./prompts/prompt-manifest.json)
- [prompts/schema.json](./prompts/schema.json)
- [orchestration-example.md](./orchestration-example.md)

## Current Status

- protocol structure: established
- prompt pack: established
- templates: established
- examples: established
- script scaffolds: established
- implementation adapters: left to downstream projects

## Roadmap

See [ROADMAP.md](./ROADMAP.md) for the current planned improvements.

## Contributing

See [CONTRIBUTING.md](./CONTRIBUTING.md) for contribution expectations and repository conventions.

## License

See [LICENSE.md](./LICENSE.md).
