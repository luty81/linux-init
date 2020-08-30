#! /bin/bash



echo "Postgres admin password: (default is p4\$\$w0rd)"
read PG_PWD

if [ -z $PG_PWD ]; then
	PG_PWD="p4\$\$w0rd"
fi

echo "Starting Postgres container..."
docker run --name postgres --network vdev -e POSTGRES_PASSWORD='${PG_PWD}' -d postgres
