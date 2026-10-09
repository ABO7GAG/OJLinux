#!/usr/bin/env bash
set -euo pipefail

license_tmp="$(mktemp)"
trap 'rm -f "$license_tmp"' EXIT

curl --fail --location --silent --show-error \
  https://www.gnu.org/licenses/gpl-3.0.txt \
  --output "$license_tmp"

{
  cat <<'NOTICE'
OJLinux (OJL)
Copyright (C) 2026 OJLinux (OJL) contributors

This project is licensed under the GNU General Public License
version 3 or (at your option) any later version.
SPDX-License-Identifier: GPL-3.0-or-later

The GNU General Public License text below is reproduced unmodified.

NOTICE
  cat "$license_tmp"
} > LICENSE

printf 'Created %s/LICENSE\n' "$PWD"
