---
name: ss14-fluent-translation
description: Translate SS14 Fluent changes from a specified commit into Russian.
---

1. Inspect the requested commit with `git show --first-parent`. Track each affected `Resources/Locale/ru-RU/**/*.ftl` file as pending or done. If none qualify, report this and stop without an empty commit.
2. Translate only added or changed text in that diff. Leave deleted lines, missing keys and unrelated Russian text alone. Skip other locales entirely, including en-US. Apply [RULES.md](RULES.md) and the repository glossary at `.opencode/docs/GLOSSARY.md`.
3. For generated updates, translate the current English value below `# AUTOGEN-End TODO(Update_Locale):`. Reuse wording from the commented Russian version where the meaning still matches. Remove the entire block from `# AUTOGEN-Start` through the end marker once its key is translated. Keep pending blocks intact.
4. Mark each file done immediately and resume from the checklist after interruptions. Review once using `git diff` and `git diff --check`. Match changed paths to the checklist (plus any approved glossary edits). Verify translated keys have no generated blocks left and retain key and attribute names and counts, variables, placeables and function calls subject to RULES.md. For individual doubts, inspect only the relevant hunk.
5. Commit as `Translate Fluent changes from <short-commit-sha>` using the requested commit's short SHA. Omit AI labels and Co-authored-by trailers.
