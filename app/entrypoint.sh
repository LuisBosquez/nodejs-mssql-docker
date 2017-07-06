set -e
run_cmd="nodejs app.js"
db_migrate="/opt/mssql-tools/bin/sqlcmd -S db -U sa -P Luis9000 -i ./setup/setup.sql"

until $db_migrate; do
>&2 echo "SQL Server is starting up. Running initial db configuration"
sleep 1
done

>&2 echo "SQL Server is up - starting app"
exec $run_cmd