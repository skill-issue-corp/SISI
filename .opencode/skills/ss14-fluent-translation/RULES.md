# English-to-Russian Fluent rules

- Preserve meaning, tone, emotion, humor, sarcasm and formality. Use idiomatic Russian without adding information. Apply the same rules to attribute values such as `.desc` and `.suffix`.
- Preserve keys, attribute and variant names, message structure, placeables, variables, function names and argument order, tags and parameters, separators, escapes and technical punctuation except for the adaptations below. Translate visible text inside tags. Replace `{THE($item)}` with `{$item}` and remove `INDEFINITE(...)` from Russian messages. Keep the noun or name that the article introduced.
- Preserve line order, indentation, line breaks and `#` comments. Avoid added spacing, separators or Markdown.
- Strictly preserve the capitalization of visible source text, including attribute values and selector branches. Preserve ALL CAPS, Title Case, sentence case, lowercase and mixed capitalization. Carry the case of each source word over to its Russian equivalent even if word order or count changes.
- Keep numbers, signs, percentages, ranges and decimal separators exactly as written. Use a hyphen or en dash in prose. Convert ordinary double quotes to «», preserving technical quotes.
- Address players as «вы». Use «ты» in dialogue only when clearly familiar or informal.
- Use mandatory terms from `.opencode/docs/GLOSSARY.md` consistently, inflecting them as needed. During planning, list missing SS14 terms and propose translations. Get explicit confirmation before adding glossary entries.
- Define new SIS-specific Fluent messages and terms, including helpers referenced by upstream messages, under `Resources/Locale/ru-RU/_SIS/`. The locale updater can overwrite additions to upstream files. Keep edits to existing upstream translations in their original files.
- Use native Fluent selectors on numeric variables for Russian plurals. Replace `MANY(...)` and `MAKEPLURAL(...)` in Russian messages with explicit forms in the appropriate grammatical case. Use `[one]`, `[few]`, `[many]` and `*[other]`, including the fractional form under `*[other]`. Use an exact branch such as `[1]` when the wording specifically means exactly one. Keep a dynamic name as a label next to its count when only one form is available. Keep these adaptations in `.ftl` files.

  ```ftl
  example-count = { $count } { $count ->
      [one] предмет
      [few] предмета
      [many] предметов
     *[other] предмета
  }
  ```
