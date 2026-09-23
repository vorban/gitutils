<!--
SPDX-FileCopyrightText: 2026 Valentin Orban

SPDX-License-Identifier: BSD-3-Clause
-->

# gitutils
Collection of git scripts and useful configs.

## Installation

Clone the repo and add its `bin/` directory to your `PATH`:

```sh
git clone <repo> /path/to/repo
echo 'export PATH="/absolute/path/to/repo/bin:$PATH"' >> ~/.zshrc   # or ~/.bashrc
```

Git runs any executable named `git-<name>` found on your `PATH` as `git <name>`, so no aliases are needed. New scripts are picked up automatically after a `git pull`.

> If you previously installed these as `[alias]` entries in your git config, you can remove them. The `git-*` commands on `PATH` take precedence over them.

## Commands

- `git reprune`: delete local branches whose upstream is gone.
- `git savepoint`: commit all current changes as a `SAVEPOINT` commit, skipping hooks.
- `git undo`: pop the last commit back into the working tree (`reset --mixed HEAD~1`).
- `git vlog`: compact graph log. Accepts any `git log` arguments.
- `git yeet`: discard all current changes, including untracked files. They stay recoverable through the reflog.

To add a command, drop an executable `bin/git-<name>` into the repo.
