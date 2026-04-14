# Failure Handling

## Common Failure Modes

- encoding corruption
- terminal mojibake that looks like corruption
- generated map overwriting manual data
- audit script not matching the current file format
- source dataset moving or changing schema
- fallback growth going unnoticed

## First Response

1. stop broad manual edits
2. verify the failure type
3. restore or regenerate from clean artifacts if needed
4. re-run audit before resuming normal work

## Important Distinction

Terminal mojibake is not always file corruption.

Operators should verify:

- actual file bytes
- a second viewer or editor
- audit behavior
- UI behavior

before deciding whether the file itself is damaged.
