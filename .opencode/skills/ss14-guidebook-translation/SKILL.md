---
name: ss14-guidebook-translation
description: Translate remaining English text in SS14 XML guidebooks under Resources/ServerInfo into Russian.
---

1. Resolve the requested name or path under `Resources/ServerInfo/**/*.xml`. Ask for the exact path if missing or ambiguous.
2. Translate only human-readable English. Preserve existing Russian unless the user requests revisions. Match tone, humor, sarcasm and formality without adding information. Use `.opencode/docs/GLOSSARY.md` and consult translated guidebooks for unclear fork terminology.
3. Preserve XML structure, tag names, identifiers, BBCode parameters and hotkeys such as `:j`. Translate visible text inside markup, including readable `Caption` values on `<GuideEntityEmbed>` and the display text in `[textlink="text" link="Anchor"]`. Preserve entity IDs and link targets.
4. Strictly preserve the source capitalization in all visible text, including headings, names in prose, captions and link labels. Preserve ALL CAPS, Title Case, sentence case, lowercase and mixed capitalization. Carry the case of each source word over to its Russian equivalent even if word order or count changes. For example, translate `Heretic Curses` as `Проклятья Еретика` and `List of curses` as `Список проклятий`.
5. Compare the capitalization of translated text and counts of each opening and closing XML and BBCode tag with the original before finishing.
