**Ambiente teste Oracle Linux R8 com Database Oracle 21c Express Edition (XE)**
Scripts - Recovery RMAN
##  Dedicado à automação de rotinas de administração de database Oracle (Lab 21c Multitenant) ## 

O que este projeto faz?

🚀**Backup & Recovery (RMAN)**
- **Backup Full Automatizado:** Script `.rcv` configurado para backup comprimido de base + archivelogs.
- **Auto-Limpeza (Housekeeping):** Integração com o Linux via comando `HOST` para deletar logs antigos (>30 dias).
- **Validação de Integridade:** Comando `RESTORE... VALIDATE` incluso no workflow para garantir backups saudáveis.

🚀**Automação via Shell Script (.sh)**
- O script principal (exe_backup_days.sh) atua como o orquestrador da rotina no nível do Sistema Operacional, realizando as seguintes tarefas:
- Configuração de Ambiente (Environment): Carrega automaticamente as variáveis essenciais (ORACLE_HOME, ORACLE_SID e PATH), garantindo que o agendador de tarefas (Crontab) consiga localizar os executáveis do Oracle.
- Execução Silenciosa: Chama o utilitário RMAN passando o arquivo de comandos (.rcv) como parâmetro, permitindo a execução em background sem necessidade de intervenção humana.
- Logging Inteligente: Redireciona toda a saída do processo para arquivos de log datados (bkp_YYYYMMDD_HHMM.log) usando o comando tee, permitindo tanto o acompanhamento em tempo real quanto a auditoria posterior.
