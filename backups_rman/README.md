## 📁 Como usar
- Para executar o backup principal estando no diretório do arquivo .rcv
`rman target / @RMAN-Backup_full.rcv | tee nomedolog_$(date +%Y%m%d_%H%M).log`

- Para rodar o backup principal fora da pasta raiz
`rman target / @/caminho/do/seu/script.rcv | tee -a /caminho/do/nomelog_$(date +%Y%m%d_%H%M).log`

Detalhes:
- Gestão de Retenção (DELETE OBSOLETE): Garante a limpeza automática de backups que não são mais necessários para cumprir a janela de recuperação (configurada para 7 dias). Isso evita o esgotamento do storage.
- Sincronização de Catálogo (CROSSCHECK): Verifica se os arquivos de backup registrados no Control File ainda existem fisicamente no disco. Caso um arquivo tenha sido removido manualmente, o comando o marca como EXPIRED.
- Limpeza de Metadados (DELETE EXPIRED): Remove do catálogo os registros de backups que falharam no Crosscheck, mantendo o repositório de informações do RMAN sempre limpo e preciso.
- Otimização de Espaço: O uso de AS COMPRESSED BACKUPSET reduz drasticamente o tamanho final dos arquivos, ideal para ambientes de laboratório com recursos limitados.

#
- Retention Management (DELETE OBSOLETE): Automatically purges backups that are no longer required to meet the recovery window policy (7 days), optimizing disk space.
- Catalog Synchronization (CROSSCHECK): Validates the physical existence of backup pieces on disk against the RMAN catalog. It marks missing files as EXPIRED.
- Metadata Cleanup (DELETE EXPIRED): Removes entries of missing backup pieces from the Control File, ensuring a consistent and accurate backup history.
- Storage Optimization: The AS COMPRESSED BACKUPSET clause is used to minimize the storage footprint, which is crucial for lab environments.
