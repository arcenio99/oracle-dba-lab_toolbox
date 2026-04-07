#!/bin/bash

# 1. Configura o ambiente do Oracle (Ajuste os caminhos para a sua VM)
export ORACLE_HOME=/u01/app/oracle/product/21c/dbhome_1
export ORACLE_SID=CDB
export PATH=$ORACLE_HOME/bin:$PATH

# 2. Define o diretório onde o backup deve rodar
cd /home/oracle/dumps/scripts/

# 3. Dispara o RMAN e gera o log com data e hora (aquele comando que a gente ajustou!)
# --rman target / @backups_rman/RMAN-Backup-full.rcv | tee logs/bkp_$(date +%Y%m%d_%H%M).log

$ORACLE_HOME/bin/rman target / @/home/oracle/dumps/scripts/mybkp_full.rcv | tee -a  /home/oracle/dumps/scripts/bkp-full_$(date +%Y%m%d_%H%M).log
