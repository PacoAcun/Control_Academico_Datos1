#!/bin/bash
(/opt/mssql/bin/sqlservr & ) | grep -q "Service Broker manager has started" \
&& /opt/mssql-tools/bin/sqlcmd -S localhost -U SA -P "$SA_PASSWORD" -Q "RESTORE DATABASE Control_Academico_Datos1 FROM DISK = '/db/Control_Academico_Datos1.bak' WITH MOVE 'Control_Academico_Datos1' TO '/var/opt/mssql/data/Control_Academico_Datos1.mdf', MOVE 'Control_Academico_Datos1_log' TO '/var/opt/mssql/data/Control_Academico_Datos1_log.ldf'"
