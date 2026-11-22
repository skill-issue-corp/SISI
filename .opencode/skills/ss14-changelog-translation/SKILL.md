---
name: ss14-changelog-translation
description: Translate SS14 changelog messages into Russian for a file or fork and a PR range.
---

1. For a fork or mod, identify its repository (e.g. Trauma-Station/Trauma-Station). Find all matching files with `rg -l -F "github.com/<owner>/<repo>/pull" Resources/Changelog`. Show the list and confirm before translating across all files.
2. In each file, take the inclusive chronological span from the first entry for the starting PR through the last for the ending PR. Include intervening entries regardless of PR number. Clarify missing endpoints or requests for strictly numeric filtering.
3. From the repository root, run the skill's `scripts/list_entries.py <file> <from> <to>` once per file. Track progress by entry ID because PRs and messages may repeat. Translate only `changes[].message`. Preserve tone, humor, case, tense (usually past), numbers, thresholds, percentages, expressions such as `16 > 1`, Markdown structure and literal localization keys. The type tag is independent of the wording.
4. Use `.opencode/docs/GLOSSARY.md` and check existing names in `Resources/Locale/ru-RU` by entity, reagent or job key. When a message needs context, consult the PR at its URL (description, files or comments) and translate the message itself.
5. Batch edits with `scripts/apply_translations.py <file> <translations.json>`, using one array per ID in change order, e.g. `{"123": ["Добавлено освещение"]}`. Mark entries done as applied. Preserve the header (including BOM), metadata, key order, timestamp quotes and scalar styles. Keep plain values on one line, quoting YAML-sensitive text as needed. Preserve block indicators and indentation.
6. Run `scripts/verify.py <file> <from> <to> [allowed_words ...]` after the batch. Resolve failures until it exits zero. Check YAML, entry count, header, remaining English (allow genuine names, abbreviations and URLs), and that the diff touches only messages and their continuations.
