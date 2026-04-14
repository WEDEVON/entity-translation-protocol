# Decision Rules

## Rule 1: Freeze Source Priority First

Before editing, define the source order.

## Rule 2: Prefer Manual Full-Name Entries For Consensus Names

Put an entity in the manual full-name map if:

- there is strong local-language consensus
- the entity is high exposure
- the entity is likely to be disputed if generated

## Rule 3: Prefer Generated Full-Name Entries For Stable Reviewed Output

Promote an entity to the generated full-name map if:

- it passed one or more review rounds
- the translation is stable
- the entity no longer needs custom manual handling

## Rule 4: Use Token Maps Only When Reuse Is Clearly Safe

Add a token to a reusable map only if it is frequent, stable, and low-risk.

## Rule 5: Exposure Beats Alphabetical Order

Fix order should be:

1. high-exposure entities
2. repeated patterns
3. structural edge cases
4. long-tail entities

## Rule 6: Record Ambiguity Explicitly

If a translation is uncertain:

- do not silently guess
- keep the safest current output
- record the ambiguity in a queue or decision log
