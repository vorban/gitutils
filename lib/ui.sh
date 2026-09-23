# SPDX-FileCopyrightText: 2026 Valentin Orban
#
# SPDX-License-Identifier: BSD-3-Clause

# Output helpers for the gitutils scripts. Source it, don't execute it.

if [ -t 1 ] && [ -z "${NO_COLOR-}" ] && command -v tput >/dev/null 2>&1; then
	ui_bold=$(tput bold) ui_red=$(tput setaf 1) ui_green=$(tput setaf 2)
	ui_yellow=$(tput setaf 3) ui_reset=$(tput sgr0)
else
	ui_bold='' ui_red='' ui_green='' ui_yellow='' ui_reset=''
fi

info()    { printf '%s%s%s\n' "$ui_bold" "$*" "$ui_reset"; }
success() { printf '%s%s%s\n' "$ui_green" "$*" "$ui_reset"; }
warn()    { printf '%s%s%s%s\n' "$ui_bold" "$ui_yellow" "$*" "$ui_reset"; }
danger()  { printf '%s%s%s%s\n' "$ui_bold" "$ui_red" "$*" "$ui_reset"; }

confirm() {
	printf 'Continue? (Enter to proceed, Ctrl+C to abort) '
	read _
}
