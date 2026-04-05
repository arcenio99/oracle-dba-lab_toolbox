Scripts - Recovery RMAN
##  Dedicado à automação de rotinas de administração de database Oracle (Lab 21c Multitenant) ## 

🚀 O que este projeto faz?

### Backup & Recovery (RMAN)
- **Backup Full Automatizado:** Script `.rcv` configurado para backup comprimido de base + archivelogs.
- **Auto-Limpeza (Housekeeping):** Integração com o Linux via comando `HOST` para deletar logs antigos (>30 dias).
- **Validação de Integridade:** Comando `RESTORE... VALIDATE` incluso no workflow para garantir backups saudáveis.

## 📁 Como usar
- Scripts gravando e mostrando logs no bash
- Para rodar o backup principal estando no diretório do arquivo .rcv
`rman target / @RMAN-Backup_full.rcv | tee nomedolog_$(date +%Y%m%d_%H%M).log`

- Para rodar o backup principal fora da pasta raiz
`rman target / @/caminho/do/seu/script.rcv | tee -a /caminho/do/nomelog_$(date +%Y%m%d_%H%M).log`
