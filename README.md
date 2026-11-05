<div align="center">

# 🛠️ Painel de Suporte Técnico

**Um kit de ferramentas de linha de comando para agilizar rotinas de suporte e manutenção no Windows.**

![Windows](https://img.shields.io/badge/Windows-10%20%7C%2011-0078D4?style=for-the-badge&logo=windows&logoColor=white)
![Batch](https://img.shields.io/badge/Script-Batch-4D4D4D?style=for-the-badge&logo=windows-terminal&logoColor=white)
![PowerShell](https://img.shields.io/badge/PowerShell-CIM-5391FE?style=for-the-badge&logo=powershell&logoColor=white)
![License](https://img.shields.io/badge/Licen%C3%A7a-MIT-green?style=for-the-badge)

</div>

---

## 📌 Sobre o projeto

O **Painel de Suporte Técnico** é uma ferramenta desenvolvida em Batch (`.bat`) que reúne, em um único menu, comandos e rotinas comuns do suporte técnico em ambientes Windows.

Com ele, é possível realizar tarefas de limpeza, diagnóstico, manutenção, consulta de informações do sistema e rede, verificação de segurança e backup de logs — sem precisar memorizar ou executar cada comando manualmente.

> **Criado por Felipe Wehmuth.**

## 📚 Índice

- [Funcionalidades](#-funcionalidades)
- [Otimizador de Memória](#-otimizador-de-memória-opção-27)
- [Requisitos](#-requisitos)
- [Como usar](#-como-usar)
- [Configuração](#️-configuração)
- [Cuidados e observações](#️-cuidados-e-observações)
- [Tecnologias](#️-tecnologias)
- [Registro de atividades](#-registro-de-atividades)
- [Licença](#-licença)
- [Contribuição](#-contribuição)

---

## ✨ Funcionalidades

O menu principal disponibiliza **27 ferramentas**, organizadas para facilitar as tarefas mais comuns de manutenção e atendimento.

| Nº | Ferramenta | Descrição |
|:--:|---|---|
| 01 | Limpeza de arquivos temporários | Remove arquivos temporários do sistema. |
| 02 | Limpeza de disco | Abre o utilitário `cleanmgr`. |
| 03 | Verificação de arquivos do sistema | Executa a verificação SFC. |
| 04 | Reparo da imagem do Windows | Utiliza o DISM para verificar e reparar a imagem do sistema. |
| 05 | Reset do Windows Update | Reinicia componentes relacionados ao Windows Update. |
| 06 | Reset de configurações de rede | Restaura configurações de rede. |
| 07 | Atualização das políticas de grupo | Atualiza as políticas de grupo (GPO). |
| 08 | Limpeza de logs de eventos | Executa a rotina de limpeza dos logs de eventos. |
| 09 | Informações do sistema | Abre o `msinfo32`. |
| 10 | Gerenciador de dispositivos | Abre o Gerenciador de Dispositivos. |
| 11 | Adaptadores de rede | Exibe os adaptadores de rede. |
| 12 | Programas instalados | Consulta e permite atualizar programas via `winget`. |
| 13 | Processos em execução | Exibe os processos ativos. |
| 14 | Serviços do Windows | Consulta o status dos principais serviços. |
| 15 | Verificação do disco | Executa o CHKDSK no disco `C:`. |
| 16 | PowerShell | Abre uma janela do PowerShell. |
| 17 | Configuração IP | Exibe informações do `ipconfig`. |
| 18 | Velocidade da internet | Realiza um teste de velocidade da conexão. |
| 19 | Espaço em disco | Consulta o espaço disponível nas unidades. |
| 20 | Status do antivírus | Consulta o status do antivírus. |
| 21 | Conectividade | Testa a conexão com o Google. |
| 22 | Backup dos logs | Gera uma cópia dos logs de eventos. |
| 23 | Dispositivos USB | Lista os dispositivos USB conectados. |
| 24 | Uso de memória e CPU | Consulta o consumo de memória e processador. |
| 25 | Download via HTTPS | Permite baixar um arquivo por HTTPS. |
| 26 | Relatório de políticas | Gera um relatório de políticas de grupo com `gpresult`. |
| 27 | Otimizador de Memória | Abre um submenu dedicado à liberação de memória RAM. |

### 🛡️ Execução com confirmação

Antes de executar cada rotina, o painel apresenta informações para ajudar o técnico a tomar uma decisão consciente:

- **Finalidade:** o que o comando ou procedimento faz.
- **Tempo estimado:** previsão de duração da operação.
- **Impacto:** indicação sobre possíveis efeitos nos arquivos pessoais.

---

## 🧠 Otimizador de Memória (opção 27)

O otimizador abre um submenu próprio, permitindo acessar ações de gerenciamento de memória sem sair do painel principal.

| Opção | Ação | O que faz |
|:--:|---|---|
| 01 | Exibir uso de memória | Mostra memória total, livre e em uso. |
| 02 | Fechar processos pesados | Permite fechar processos de Chrome, Edge, Firefox, Opera, Discord, Spotify, Teams, Steam e OneDrive. |
| 03 | Limpar arquivos temporários | Executa a limpeza de arquivos temporários. |
| 04 | Esvaziar Lixeira | Remove os itens da Lixeira. |
| 05 | Reiniciar Windows Explorer | Reinicia o processo do Windows Explorer. |
| 06 | Otimização completa | Executa as opções de 2 a 6 em sequência, conforme descrito no menu do projeto. |
| 00 | Voltar | Retorna ao menu principal. |

---

## 💻 Requisitos

Antes de executar o painel, verifique se o ambiente atende aos requisitos:

- Windows 10 ou Windows 11.
- PowerShell disponível no `PATH` — normalmente já incluído no Windows.
- Permissão de **Administrador**.
- Conexão com a internet para atualização de programas, teste de velocidade e downloads.

> **Importante:** o script verifica automaticamente se está sendo executado com privilégios elevados e não continua sem essa permissão.

## 🚀 Como usar

1. Baixe ou clone este repositório.
2. Localize o arquivo `.bat` do painel.
3. Execute-o **como Administrador**.
4. Leia as informações apresentadas antes de cada operação.
5. Digite o número da ferramenta desejada e siga as instruções na tela.

```text
Menu principal
     │
     ▼
Escolha a ferramenta
     │
     ▼
Leia a descrição e os avisos
     │
     ▼
Confirme a operação, quando solicitado
     │
     ▼
Execute e consulte o resultado
```

## ⚙️ Configuração

As principais variáveis de configuração ficam no início do script e podem ser ajustadas antes da execução.

Exemplo da variável de versão:

```bat
set "VERSAO=1.3.0"
```

Altere o valor conforme a versão do script que estiver utilizando.

## ⚠️ Cuidados e observações

Algumas operações podem alterar configurações do Windows, exigir reinicialização ou afetar o funcionamento de componentes do sistema.

Tenha atenção especial às rotinas de:

- CHKDSK;
- redefinição das configurações de rede;
- redefinição do Windows Update;
- limpeza de logs;
- encerramento de processos;
- esvaziamento da Lixeira.

As operações consideradas mais sensíveis solicitam uma confirmação adicional (`S/N`) antes da execução.

**Recomendação:** leia cada aviso, salve seu trabalho e, quando necessário, faça backup dos dados antes de prosseguir.

## 🧰 Tecnologias

| Tecnologia | Aplicação no projeto |
|---|---|
| **Batch (`cmd.exe`)** | Interface em menu e execução das rotinas. |
| **PowerShell** | Consultas e operações administrativas do Windows. |
| **CIM (`Get-CimInstance`)** | Coleta de informações do sistema por meio de consultas modernas. |
| **winget** | Consulta e atualização de programas instalados. |

## 📝 Registro de atividades

Durante a execução, o painel cria o arquivo:

```text
painel_log.txt
```

O arquivo fica na mesma pasta do script e registra as ações executadas, facilitando o acompanhamento das rotinas realizadas.

## 🤝 Contribuição

Sugestões, correções e melhorias são bem-vindas!

Se quiser contribuir:

1. Abra uma *Issue* para relatar um problema ou sugerir uma funcionalidade.
2. Faça um *Fork* do repositório.
3. Implemente sua melhoria.
4. Envie um *Pull Request* com uma descrição clara das alterações.

---

<div align="center">

**Painel de Suporte Técnico**  

</div>
