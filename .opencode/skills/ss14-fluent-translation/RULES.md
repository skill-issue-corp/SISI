# English-to-Russian Fluent rules

- Preserve meaning, tone, emotion, humor, sarcasm and formality. Use idiomatic Russian without adding information. Apply the same rules to attribute values such as `.desc` and `.suffix`.
- Preserve keys, attribute and variant names, message structure, placeables, variables, function names and argument order, tags and parameters, separators, escapes and technical punctuation. Translate visible text inside tags. Replace `{THE($item)}` with `{$item}`. Keep all other function calls intact.
- Preserve line order, indentation, line breaks and `#` comments. Avoid added spacing, separators or Markdown.
- Match the source capitalization pattern across the entire translation regardless of word count. Preserve ALL CAPS, Title Case (capitalize every translated word), sentence case and lowercase.
- Keep numbers, signs, percentages, ranges and decimal separators exactly as written. Use a hyphen or en dash in prose. Convert ordinary double quotes to «», preserving technical quotes.
- Address players as «вы». Use «ты» in dialogue only when clearly familiar or informal.
- Use mandatory terms from `.opencode/docs/GLOSSARY.md` consistently, inflecting them as needed. During planning, list missing SS14 terms and propose translations. Get explicit confirmation before adding glossary entries.
- Adapt existing English count selectors to Russian plural forms, e.g. `[one] предмет`, `[few] предмета`, `*[many] предметов`. Adding missing plural variants requires no separate approval.
