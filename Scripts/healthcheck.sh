#!/bin/bash
set -eo pipefail

DB_HOST_IP_ADDR=127.0.0.1
DB_HOST_PORT_NO=3306
DB_USER=root
DB_PASSWORD=$MYSQL_ROOT_PASSWORD

	# force mysql to not use the local "mysqld.sock" (test "external" connectibility)
args=(
	-h"${DB_HOST_IP_ADDR}"
	-p"${DB_HOST_PORT_NO}"
	-u"${DB_USER}"
	--silent
)

if select="$(echo 'SELECT 1' | mysql "${args[@]}")" && [ "$select" = '1' ]; then
	exit 0
fi

exit 1
