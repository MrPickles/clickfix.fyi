#!/bin/sh

# ClickFix.fyi educational demonstration
# This script only writes text to the terminal and exits.

printf '\n\033[1;33mClickFix.fyi safe demonstration\033[0m\n\n'
printf 'A website-provided command successfully downloaded and ran this script.\n'
printf 'In a real ClickFix attack, the same step could run malware instead.\n\n'
printf '\033[0;36mThis demonstration did not:\033[0m\n'
printf '  - collect or transmit data\n'
printf '  - create or modify files\n'
printf '  - change system settings\n'
printf '  - install persistence\n'
printf '  - download additional content\n\n'
printf '\033[0;32mThe script is finished. You may close this terminal.\033[0m\n\n'
