Backup & Recovery (RMAN) Automation

Esta seção contém a automação completa do ciclo de vida dos backups físicos, garantindo a integridade dos dados e a otimização do armazenamento.

🚀Como Usar 🛡️

Principais Funcionalidades:

Agendamento via Crontab: Execução programada (ex: 06h e 18h) sem intervenção manual.

Gestão de Variáveis de Ambiente: Scripts Shell (.sh) configurados com ORACLE_HOME e PATH para execução autônoma em background.

Backup Full Comprimido: Utilização de AS COMPRESSED BACKUPSET para reduzir o consumo de storage no Lab.

Housekeeping Inteligente: * CROSSCHECK: Sincronização entre o catálogo RMAN e os arquivos físicos no disco.

DELETE EXPIRED: Remoção automática de registros de backups inexistentes.

DELETE OBSOLETE: Expurgo de arquivos antigos baseado na política de retenção (7 dias).

Logs Detalhados: Redirecionamento de saída para arquivos de log datados (bkp_YYYYMMDD.log) para auditoria e troubleshooting.

___________________________________________________________________________________________________________________________________________________________________

🚀 How to Use 🛡️

Grant execution permission to the shell script:

- chmod +x scripts/exe_backup_days.sh

Configure the Crontab for the oracle user:

- crontab -u oracle -e

Add the execution line (example for 9:15 PM):

00 6,18 * * * /path/to/your/script/exe_backup_days.sh

exemplo: 00 06,18 * * * /home/oracle/dumps/scripts/exe_backup_days.sh

#	Anatomia do seu Agendamento:

- Minuto	00 -> No minuto 30 /
- Hora	06,10 -> às 6 da manhã e às 18 da tarde / 
-Dia do Mês	*	  	|Todos os dias do mês.
-Mês	*			    	|Todos os meses do ano.
-Dia da Semana	*	|De domingo a domingo.

Monitor the output in the logs folder:
- tail -f logs/bkp_$(date +%Y%m%d).log
