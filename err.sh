#!/bin/bash

echo -----------------------ALERT-----------------------
tail -1000 $ORACLE_ALERT/alert_test101.log | grep ORA-
echo
echo ---------------------DATAFILE----------------------
du -ah $ORACLE_BASE/oradata/TEST101 | grep dbf
echo
echo ----------------------ARCHIVE----------------------
du -ah $ORACLE_HOME/dbs | grep c-
echo
echo ---------------------DATABASE----------------------
echo "select dbid, name, open_mode from v\$database;" | sqlplus -s / as sysdba
