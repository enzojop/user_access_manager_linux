# 🐧 SCRIPT DE GERENCIAMENTO DE USUÁRIOS E PERMISSÕES LINUX
Este repositório contém um script em Bash desenvolvido para automatizar a criação de diretórios, grupos e usuários em sistemas Linux, além de configurar permissões de forma organizada e segura.

O objetivo é facilitar a administração de usuários e acessos em ambientes multiusuários, garantindo boas práticas de segurança.

##  Passo a Passo de Utilização

### 1° PASSO:

FAZER O LOGIN COMO USUÁRIO ROOT

```bash
sudo su
```

### 2° PASSO:

CRIAR UM ARQUIVO .bash PARA ESCREVER OS COMANDOS

```bash
cd /script/
```

```bash
nano iac1.sh
```

### 3° PASSO:

## CONTEÚDO DO SCRIPT

### 4° PASSO:

EXECUTANDO O SCRIPT:

```bash
chmod +x iac1.sh
```

```bash
./iac1.sh
```

## EXPLICAÇÃO DETALHADA

### 1. (#!/bin/bash)

- Indica o interpretador Bash para execução do script
    - Essencial para o sistema identificar como executar o script

### 2. Criação de Diretórios

- Comando mkdir cria quatro diretórios:
    - /publico - Acesso público
    - /adm - Para grupo administrativo
    - /ven - Para grupo de vendas
    - /sec - Para grupo de secretariado

### 3. Criação de Grupos

- Comando groupadd cria três grupos:
    - GRP_ADM - Grupo Administrativo
    - GRP_VEN - Grupo de Vendas
    - GRP_SEC - Grupo de Secretariado

### 4. Criação de Usuários

Parâmetros do comando useradd:

- -m: Cria diretório home
- -s /bin/bash: Define shell padrão
- -p: Define senha criptografada
- -G: Adiciona ao grupo específico

### 5. Configuração de Permissões

Comando chmod:

- 770: Permissões restritas
    - 7 (Owner): Leitura, escrita e execução
    - 7 (Group): Leitura, escrita e execução
    - 0 (Others): Sem acesso
- 777: Acesso total para diretório público

### 5. Executando o script

- comando chmod +x nome_arquivo.sh
- abrindo o arquivo ./nome_arquivo.sh

## RESUMO GERAL

- ✅ Cria diretórios específicos
- ✅ Estabelece grupos de usuários
- ✅ Cria e configura usuários
- ✅ Define permissões de acesso
- ✅ Diretório público com acesso total
- ✅ Diretórios específicos com acesso restrito por grupo
