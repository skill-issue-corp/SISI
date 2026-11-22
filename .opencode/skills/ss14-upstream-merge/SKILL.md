---
name: ss14-upstream-merge
description: Plan or execute conflict resolution when merging Inky upstream into SIS.
---

For planning requests, deliver the plan for the next model and stop. The user chooses the model. For execution, follow the agreed plan and subsequent clarifications.

## Plan

1. From the repository root record target branch, upstream ref, full HEAD, MERGE_HEAD and merge-base SHAs, `git status --short` and `git ls-files -u -z`. Capture original statuses and unique relative paths before resolving anything (up to three stages per path). For a partially resolved merge, use its original inventory or reproduce the same parents and options in a separate worktree. Also use a separate worktree for pre-merge planning. Protect the current index, manual resolutions and submodule checkouts.
2. For every path, read both full versions, compare stages 2 (SIS) and 3 (Inky) against the base, and inspect the auto-merge around markers. Trace deletions and moves through history, old/new paths, callers and resources. Check SS14 prototype type/id pairs, inheritance, registered Partials and priorities, including related auto-merged changes.
3. Preserve required fork behavior and SIS comments. Where Inky already implements a fix, verify behavioral equivalence including defaults, adopt its implementation and author comments, and remove stale port reminders. Use clean Inky maps pending remapping unless the user directs otherwise. Prior role, weight and balance decisions apply to their snapshot.
4. Ask about unresolved intent, naming the file or mechanic, options and behavioral consequences. Group related questions and investigate independent files while waiting. Record answers. A plan with open questions is a draft.
5. Save the final plan in Russian as Markdown accessible to the next model and report its path. A file under `git rev-parse --absolute-git-dir` keeps it outside the commit. Transfer the file itself if execution uses another clone. Include:
   - Snapshot, branch, parents, base, unique path count and status breakdown.
   - User decisions and dependency order.
   - One fenced block under the exact heading **Исходные конфликтные пути**, with one full relative path per line. Verify exact set equality with the original inventory and no duplicates.
   - Per path or group, specify what to keep from either side, remove or move, exact destinations, values and comments. List additional affected paths separately with reasons to define the review scope.
   - Expected results and verification commands per group, accounting for current CI, engine version and affected features.

## Execute

1. Match active merge parents to the plan. Inspect index, working changes and resolved paths. If needed, execution authorizes starting a normal merge of the planned SHA into the target branch, stopping before commit. Revisit affected decisions if parents changed. If already committed, verify parents and resume at the first unfinished step. Protect user edits and agree on handling unrelated staged changes before including them.
2. Resolve in dependency order and stage verified paths individually. Keep auto-merged upstream changes staged. If the actual code changes an agreed decision's meaning, investigate and ask about the new choice. Use the relevant translation skill from AGENTS.md.
3. Run planned checks on the resolved tree before producing the review diff. Verify empty `git ls-files -u`, clean `git diff --cached --check`, no conflict markers or missed working edits. Report failed checks and fix merge regressions. Finish with a normal `git commit`, e.g. `Merge remote-tracking branch 'Inky/master' into upstream` using the actual refs. Verify SIS then Inky parent order with `git rev-list --parents -n 1 HEAD`. All task changes must now match the merge commit in both index and worktree.
4. Leave the exact second parent's versions in the worktree for review. Compare tree entries (including absence and mode) only for original conflict paths. Skip matches. Before restoring a differing regular file or symlink, check for unrelated edits, untracked files and file/directory collisions. From the root use `git --literal-pathspecs restore --source="$inky_sha" --worktree -- "$p"`. Inky-only paths may become untracked. Verify gitlink SHAs separately and preserve submodule checkouts. Avoid whole-tree restore, staging review changes, amending or another commit.
5. Verify unchanged HEAD, successful `git diff --cached --quiet` and review changes matching exactly the differing inventory paths. To check content including untracked files, initialize a fresh temporary index outside the worktree with `GIT_INDEX_FILE="$tmp_index" git read-tree HEAD`. Using that index throughout, add existing or tracked inventory paths with literal pathspecs and `git add -f -A`, then compare its inventory entries to Inky. Keep the real index clean. Report submodule states and unrelated edits separately.
6. Report merge SHA, check results and counts of original paths, matches and differences. The worktree holds Inky and HEAD holds the resolution. Use `git diff -R` for tracked changes from Inky to the resolution. Include untracked files and deletions in the full comparison with `git --literal-pathspecs diff "$inky_sha" "$merge_sha" -- "${conflicts[@]}"`, using the exact inventory paths. Leave the review diff for the user.
