#!/bin/bash

# ClickFix.fyi Educational Demo Script
# Using printf for better portability and colors for specific impact

# Define colors
Y='\033[1;33m' # Yellow
R='\033[0;31m' # Red
G='\033[0;32m' # Green
C='\033[0;36m' # Cyan
NC='\033[0m'   # No Color

printf "\n"
printf "${Y}! This is a SAFE demonstration script from ClickFix.fyi${NC}\n"
printf "\n"
printf "If this were a real ClickFix attack, malware would now be:\n"
printf "${R}  • Stealing your browser passwords${NC}\n"
printf "${R}  • Copying your cryptocurrency wallets${NC}\n"
printf "${R}  • Harvesting your session cookies${NC}\n"
printf "${R}  • Installing persistent backdoors${NC}\n"
printf "\n"
printf "${G}✓ But this is just an educational demo. You're safe!${NC}\n"
printf "\n"
printf "${C}🛡 Remember: NEVER copy and run commands from websites you don't trust.${NC}\n"
printf "\n"
