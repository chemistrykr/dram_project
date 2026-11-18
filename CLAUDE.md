# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository state

This repository is a scaffold with almost no content yet. There is no build system, no simulator scripts, and no README. Update this file as real code, tools, and commands are added.

## Layout

The directory names point to a hardware design and verification project, with SystemVerilog and UVM implied by the names:

- `Design/`: RTL design sources (empty)
- `Verification/UVM/`: UVM testbench (empty)
- `Verification/sv_test/`: plain SystemVerilog tests (empty)
- `Verification/lib/`: shared verification libraries (empty)
- `Verification/common/init`: bash environment/setup script, currently only a placeholder (`echo "hello"`)
- `project/`: project-level files (empty)

Git does not track empty directories, so only `Verification/common/init` (and top-level files) are tracked right now.

## Commands

No build, lint, simulation, or test commands are defined yet. Don't assume a simulator (VCS, Xcelium, Questa, Verilator, etc.) or a regression flow. Ask the user, or look for newly added scripts or Makefiles first.

## Git

- Remote: `origin` → https://github.com/chemistrykr/dram_project.git
- The main branch is `main`. Local and remote both use `main`.
- `.gitignore` excludes vim swap files (`*.swp`, `*.swo`, `*~`). Never commit them.

### Trigger keyword: `커밋푸쉬`

When the user's message contains `커밋푸쉬` (or `commit push`), run the full flow below without asking for confirmation:

1. Run `git status` and `git diff` to review all changes, including untracked files.
2. Stage the changed files by name. Leave out swap files, simulator outputs (waveforms, logs, work libraries), and anything that may hold secrets. If something suspicious is present, mention it and skip it.
3. Write a concise commit message that summarizes the changes. If the user's message includes text after the keyword, use that text as the commit message (or its basis).
4. Commit, then run `git push origin <current branch>`. Use `-u` if the branch has no upstream yet.
5. Report the commit hash, the branch, and the push result. If the push fails (auth, rejected, etc.), show the error and don't force-push.

If there are no changes, say so and stop.
