#!/usr/bin/env python3
"""Check YAML structure, untranslated English and message-only diffs.

Usage: python3 verify.py <file> <from> <to> [allowed_words ...]"""

import re
import subprocess
import sys

from _lib import entry_bounds, find_span, load_entries, pr_of, read_lines

DEFAULT_ALLOW = {
    "vgroid",
    "https",
    "github",
    "com",
    "reagent",
    "name",
    "unknown",
    "trauma",
    "station",
    "issues",
    "goonstation",
}


def check_region(path, frm, to, allow):
    _, entries = load_entries(path)
    first, last = find_span(entries, frm, to)
    problems = []
    if first is None or last is None:
        return [f"PR {frm} or PR {to} missing"]
    if first > last:
        first, last = last, first
    for i in range(first, last + 1):
        e = entries[i]
        for c in e.get("changes", []):
            msg = c.get("message", "")
            words = [
                w for w in re.findall(r"\b[a-z]{3,}\b", msg) if w not in allow
            ]
            if words:
                problems.append(
                    f"PR {pr_of(e)} id={e.get('id')}: remaining English: "
                    f"{words} :: {msg}"
                )
    return problems


def check_structure(path):
    problems = []
    try:
        data, entries = load_entries(path)
    except Exception as ex:  # noqa: BLE001
        return [f"Invalid YAML: {ex}"]

    raw = read_lines(path)
    author_lines = sum(1 for l in raw if l.startswith("- author:"))
    if len(entries) != author_lines:
        problems.append(
            f"YAML entry count ({len(entries)}) != count of lines matching '- author:' "
            f"({author_lines})"
        )

    bounds = entry_bounds(raw)
    header = [l for l in raw[: bounds[1]] if l.strip()]
    if isinstance(data, dict):
        if "Entries" not in data:
            problems.append("header missing key 'Entries'")
    for l in header:
        key = l.split(":", 1)[0]
        if key and key not in ("Entries",):
            # Check each header key in the parsed mapping
            if isinstance(data, dict) and key not in data:
                problems.append(f"header missing key '{key}'")
    return problems


def check_git_diff(path):
    try:
        res = subprocess.run(
            ["git", "diff", "--unified=0", "--", path],
            capture_output=True,
            text=True,
        )
    except FileNotFoundError:
        return []
    if res.returncode != 0:
        return []
    problems = []
    for line in res.stdout.split("\n"):
        if not line or line[0] not in "+-":
            continue
        if line.startswith("+++") or line.startswith("---"):
            continue
        body = line[1:]
        if re.match(r"^\s*message:", body):
            continue
        if body.startswith("      "):
            continue
        problems.append(f"git diff changed a non-message line: {line}")
    return problems


def main():
    if len(sys.argv) < 4:
        print(__doc__)
        return 2
    path, frm, to = sys.argv[1], int(sys.argv[2]), int(sys.argv[3])
    allow = set(DEFAULT_ALLOW) | set(sys.argv[4:])

    problems = []
    problems += check_structure(path)
    problems += check_region(path, frm, to, allow)
    problems += check_git_diff(path)

    if problems:
        print(f"PROBLEMS ({len(problems)}):")
        for p in problems:
            print(" -", p)
        return 1
    print(f"OK: {path}, span {frm}..{to} fully translated")
    return 0


if __name__ == "__main__":
    sys.exit(main())
