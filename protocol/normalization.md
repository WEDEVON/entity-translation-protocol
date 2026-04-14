# Normalization

## Goal

Lookups should not fail because the input used different punctuation, casing, spacing, or accents.

## Normalize Before Lookup

Recommended normalization steps:

- lowercase
- remove diacritics when appropriate
- normalize apostrophes and quotation marks
- normalize hyphens and separators
- collapse duplicate whitespace
- remove or standardize suffixes such as `Jr.`, `Sr.`, `II`, `III`

## Important Distinction

Normalization is for key matching, not for display.
