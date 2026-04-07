### Ambiente teste 🚀 Oracle Linux R8 🚀 com Database Oracle 21c Express Edition (XE)
Scripts - Recovery RMAN
##  Dedicado à automação de rotinas de administração de database Oracle (Lab 21c Multitenant) ## 

🚀 O que este projeto faz?

### Backup & Recovery (RMAN) ###
- **Backup Full Automatizado:** Script `.rcv` configurado para backup comprimido de base + archivelogs.
- **Auto-Limpeza (Housekeeping):** Integração com o Linux via comando `HOST` para deletar logs antigos (>30 dias).
- **Validação de Integridade:** Comando `RESTORE... VALIDATE` incluso no workflow para garantir backups saudáveis.

### Automação RMAN ###
- 
