#!/bin/bash
#
# Print banner art.

#######################################
# Print a board. 
# Globals:
#   BG_BROWN
#   NC
#   WHITE
#   CYAN_LIGHT
#   RED
#   GREEN
#   YELLOW
# Arguments:
#   None
#######################################
print_banner() {

  clear

  printf "\n\n"

  printf "${GREEN}";
  printf "                                                     ▄▄█▀▀▀▀▀▀▀█▄▄  \n";
  printf "                                                   ${GREEN}▄█▀${NC}   ${WHITE}▄▄${NC}      ${GREEN}▀█▄\n";
  printf "                                                   ${GREEN}█${NC}    ${WHITE}███${NC}         ${GREEN}█\n";
  printf "                                                   ${GREEN}█${NC}    ${WHITE}██▄         ${GREEN}█${NC}\n";
  printf "                                                   ${GREEN}█${NC}     ${WHITE}▀██▄${NC} ${WHITE}██${NC}    ${GREEN}█\n";
  printf "                                                   ${GREEN}█${NC}       ${WHITE}▀███▀${NC}    ${GREEN}█\n";
  printf "                                                   ${GREEN}▀█▄           ▄█▀\n";
  printf "                                                    ▄█    ▄▄▄▄█▀▀  \n";
  printf "                                                    █  ▄█▀        \n";
  printf "                                                    ▀▀▀▀          \n";
  printf "${NC}";

  printf "\n"

  printf "${GREEN}";
  printf "██     ██ ██   ██  █████  ████████ ██  ██████ ██   ██ ███████ ████████\n";
  printf "██     ██ ██   ██ ██   ██    ██    ██ ██      ██  ██  ██         ██   \n";
  printf "██  █  ██ ███████ ███████    ██    ██ ██      █████   █████      ██   \n";
  printf "██ ███ ██ ██   ██ ██   ██    ██    ██ ██      ██  ██  ██         ██   \n";
  printf " ███ ███  ██   ██ ██   ██    ██    ██  ██████ ██   ██ ███████    ██   \n";
  printf "${NC}";

  printf "\n"
  
  printf "${GREEN}";
  printf "Compartilhar, vender ou fornecer essa solução\n";
  printf "sem autorização é crime previsto no artigo 184\n";
  printf "do código penal que descreve a conduta criminosa\n";
  printf "de infringir os direitos autorais.\n";
  printf "\n";
  printf "PIRATEAR ESSA SOLUÇÃO É CRIME.\n";
  printf "${NC}";

  printf "\n"
}

