#!/bin/bash
# Usage: ./import_db.sh pb_local_db.sql

SQL_FILE="$1"

if [ -z "$SQL_FILE" ]; then
  echo "Usage: $0 <file.sql>"
  exit 1
fi

# Load environment variables from .env
set -a
source .env
set +a

# Import SQL using TCP host
mysql -h "$DB_HOST" -P 3306 -u "$DB_USER" -p"$DB_PASSWORD" "$DB_NAME" < "$SQL_FILE"
