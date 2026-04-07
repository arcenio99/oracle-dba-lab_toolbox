#!/bin/bash

# 1. Configura o ambiente do Oracle (Ajuste os caminhos para a sua VM)
export ORACLE_HOME=/u01/app/oracle/product/21c/dbhome_1
export ORACLE_SID=CDB
export PATH=$ORACLE_HOME/bin:$PATH

# 2. Define o diretório onde o backup deve rodar
cd /home/oracle/dumps/scripts/

# 3. Dispara o RMAN e gera o log com data e hora (aquele comando que a gente ajustou!)

$ORACLE_HOME/bin/rman target / @/home/oracle/dumps/scripts/namefile.rcv | tee -a  /home/oracle/dumps/scripts/nomelog_$(date +%Y%m%d_%H%M).log
