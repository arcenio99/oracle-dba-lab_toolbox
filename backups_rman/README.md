## 📁 Como usar
- Para executar o backup principal estando no diretório do arquivo .rcv
`rman target / @RMAN-Backup_full.rcv | tee nomedolog_$(date +%Y%m%d_%H%M).log`

- Para rodar o backup principal fora da pasta raiz
`rman target / @/caminho/do/seu/script.rcv | tee -a /caminho/do/nomelog_$(date +%Y%m%d_%H%M).log`

Detalhes:
- Comando DELETE OBSOLETE respeita a política de retenção configurada no banco (7 dias)
- Crosscheck comando para checar a integridade antes de apagar algo, evitando erros no backup
