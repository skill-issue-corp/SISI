---
name: ss14-guidebook-translation
description: Translate remaining English text in SS14 XML guidebooks under Resources/ServerInfo into Russian.
---

1. Resolve the requested name or path under `Resources/ServerInfo/**/*.xml`. Ask for the exact path if missing or ambiguous.
2. Translate only human-readable English. Preserve existing Russian unless the user requests revisions. Match tone, humor, sarcasm, formality and capitalization without adding information. Use `.opencode/docs/GLOSSARY.md` and consult translated guidebooks for unclear fork terminology.
3. Preserve XML structure, tag names, identifiers, BBCode parameters and hotkeys such as `:j`. Translate visible text inside markup, including readable `Caption` values on `<GuideEntityEmbed>` and the display text in `[textlink="text" link="Anchor"]`. Preserve entity IDs and link targets.
4. Compare counts of each opening and closing XML and BBCode tag with the original after translation.
