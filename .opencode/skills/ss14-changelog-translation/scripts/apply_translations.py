#!/usr/bin/env python3
"""Replace messages in place by entry ID, preserving YAML layout.

Usage: python3 apply_translations.py <file> <translations.json>
Supply one array of translated messages per ID in change order."""

import json
import re
import sys

from _lib import entry_bounds, read_lines, yaml_plain


def main():
    if len(sys.argv) != 3:
        print(__doc__)
        return 2
    path, jpath = sys.argv[1], sys.argv[2]
    with open(jpath, encoding="utf-8") as f:
        translations = {int(k): v for k, v in json.load(f).items()}

    lines = read_lines(path)
    bounds = entry_bounds(lines)
    out = []
    used_ids = set()
    had_warning = False

    for si in range(len(bounds) - 1):
        a, b = bounds[si], bounds[si + 1]
        block = lines[a:b]
        if not block or not block[0].startswith("- author:"):
            out.extend(block)
            continue

        idm = None
        for l in block:
            m = re.match(r"^  id: (\d+)\s*$", l)
            if m:
                idm = int(m.group(1))
                break
        if idm is None or idm not in translations:
            out.extend(block)
            continue

        used_ids.add(idm)
        trans = translations[idm]
        ti = 0
        i = 0
        while i < len(block):
            l = block[i]
            m = re.match(r"^(    message:)(\s*)(.*)$", l)
            if m:
                val = m.group(3)
                if ti >= len(trans):
                    print(
                        f"WARNING: {path} id={idm}: extra message "
                        f"(line {a + i + 1})",
                        file=sys.stderr,
                    )
                    had_warning = True
                    out.append(l)
                    i += 1
                    continue
                t = trans[ti]
                ti += 1
                if val[:1] in (">", "|"):
                    j = i + 1
                    while j < len(block) and (
                        block[j].startswith("      ") or block[j].strip() == ""
                    ):
                        j += 1
                    out.append("    message: " + val)
                    out.append("      " + t)
                    i = j
                    continue
                out.append("    message: " + yaml_plain(t))
                i += 1
                continue
            out.append(l)
            i += 1

        if ti != len(trans):
            print(
                f"WARNING: {path} id={idm}: used {ti} translations "
                f"of {len(trans)}",
                file=sys.stderr,
            )
            had_warning = True

    missing = set(translations) - used_ids
    if missing:
        print(
            f"WARNING: {path}: missing IDs: {sorted(missing)}",
            file=sys.stderr,
        )
        had_warning = True

    with open(path, "w", encoding="utf-8") as f:
        f.write("\n".join(out))
    print(f"Done: {path} (entries changed: {len(used_ids)})")
    return 1 if had_warning else 0


if __name__ == "__main__":
    sys.exit(main())
