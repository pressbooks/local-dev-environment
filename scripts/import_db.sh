#!/bin/bash
# Safe automatic DB import for Lando
# Usage: ./import_db.sh /app/pb_local_db.sql

SQL_FILE="$1"

if [ -z "$SQL_FILE" ]; then
  echo "Usage: $0 <file.sql>"
  exit 1
fi

# Load environment variables from .env
set -a
source /app/.env
set +a

# Check if database exists
DB_EXISTS=$(mysql -h "$DB_HOST" -P 3306 -u "$DB_USER" -p"$DB_PASSWORD" -e "SHOW DATABASES LIKE '$DB_NAME';" | grep "$DB_NAME")

if [ -n "$DB_EXISTS" ]; then
  echo "Database '$DB_NAME' exists. Skipping import."
  exit 0
fi

echo "Database '$DB_NAME' does not exist. Creating and importing..."

# Create database if missing
mysql -h "$DB_HOST" -P 3306 -u "$DB_USER" -p"$DB_PASSWORD" -e "CREATE DATABASE IF NOT EXISTS $DB_NAME;"

# Import SQL
mysql -h "$DB_HOST" -P 3306 -u "$DB_USER" -p"$DB_PASSWORD" "$DB_NAME" < "$SQL_FILE"

echo "Import complete!"