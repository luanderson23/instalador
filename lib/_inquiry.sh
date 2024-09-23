#!/bin/bash

get_instancia_add() {
  
  print_banner
  printf "${WHITE} 💻 Nome da Instância/Empresa (letras minúsculas, sem espaços ou caracteres especiais):${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " instancia_add
}

get_max_whats() {
  
  # Define automaticamente o número de conexões como 9999
  max_whats=9999
  printf "${WHITE} 💻 Qtde de Conexões/Whats para ${instancia_add} definido automaticamente como: ${max_whats}${GRAY_LIGHT}\n\n"
}

get_max_user() {
  
  # Define automaticamente o número de usuários como 9999
  max_user=9999
  printf "${WHITE} 💻 Qtde de Usuarios/Atendentes para ${instancia_add} definido automaticamente como: ${max_user}${GRAY_LIGHT}\n\n"
}

get_frontend_url() {
  
  print_banner
  printf "${WHITE} 💻 Digite o domínio do FRONTEND/PAINEL para a ${instancia_add}:${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " frontend_url
}

get_backend_url() {
  
  print_banner
  printf "${WHITE} 💻 Digite o domínio do BACKEND/API para a ${instancia_add}:${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " backend_url
}

get_frontend_port() {
  
  # Define automaticamente a porta do frontend como 3000
  frontend_port=3000
  printf "${WHITE} 💻 Porta do FRONTEND para ${instancia_add} definida automaticamente como: ${frontend_port}${GRAY_LIGHT}\n\n"
}

get_backend_port() {
  
  # Define automaticamente a porta do backend como 4000
  backend_port=4000
  printf "${WHITE} 💻 Porta do BACKEND para ${instancia_add} definida automaticamente como: ${backend_port}${GRAY_LIGHT}\n\n"
}

get_redis_port() {
  
  # Define automaticamente a porta do Redis como 5000
  redis_port=5000
  printf "${WHITE} 💻 Porta do REDIS para ${instancia_add} definida automaticamente como: ${redis_port}${GRAY_LIGHT}\n\n"
}

get_urls() {
  get_instancia_add
  get_max_whats
  get_max_user
  get_frontend_url
  get_backend_url
  get_frontend_port
  get_backend_port
  get_redis_port
}

software_delete() {
  get_empresa_delete
  deletar_tudo
}

software_bloquear() {
  get_empresa_bloquear
  configurar_bloqueio
}

software_desbloquear() {
  get_empresa_desbloquear
  configurar_desbloqueio
}

software_dominio() {
  get_empresa_dominio
  get_alter_frontend_url
  get_alter_backend_url
  get_alter_frontend_port
  get_alter_backend_port
  configurar_dominio
}

inquiry_options() {
  
  print_banner
  printf "${WHITE} 💻 Bem vindo(a) ao Whaticket SaaS, Selecione abaixo a proxima ação!${GRAY_LIGHT}"
  printf "\n\n"
  printf "   [1] Instalar Whaticket SaaS \n"
  printf "   [2] Deletar Whaticket SaaS \n"
  printf "   [3] Bloquear Whaticket SaaS \n"
  printf "   [4] Desbloquear Whaticket SaaS \n"
  printf "   [5] Alterar dominio Whaticket SaaS \n"
  printf "\n"
  read -p "> " option

  case "${option}" in
    1) get_urls ;;

    2) 
      software_delete 
      exit
      ;;
    3) 
      software_bloquear 
      exit
      ;;
    4) 
      software_desbloquear 
      exit
      ;;
    5) 
      software_dominio 
      exit
      ;;        

    *) exit ;;
  esac
}

