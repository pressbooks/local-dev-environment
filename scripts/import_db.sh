#!/bin/bash
# Safe automatic DB import for Lando with optional force import
# Usage:
#   ./import_db.sh /app/pb_local_db.sql       # safe import, skips if DB exists
#   ./import_db.sh --force /app/pb_local_db.sql  # force re-import

FORCE=false
SQL_FILE=""

# Parse arguments
for arg in "$@"; do
  case $arg in
    --force|-f)
      FORCE=true
      shift
      ;;
    *)
      SQL_FILE="$arg"
      shift
      ;;
  esac
done

if [ -z "$SQL_FILE" ]; then
  echo "Usage: $0 [--force|-f] <file.sql>"
  exit 1
fi

# Load environment variables from .env
set -a
source /app/.env
set +a

if [ "$FORCE" = false ]; then
  # Check if database exists
  DB_EXISTS=$(mysql -h "$DB_HOST" -P 3306 -u "$DB_USER" -p"$DB_PASSWORD" -e "SHOW DATABASES LIKE '$DB_NAME';" | grep "$DB_NAME")

  if [ -n "$DB_EXISTS" ]; then
    echo "Database '$DB_NAME' exists. Skipping import."
    exit 0
  fi
fi

echo "Database '$DB_NAME' will be created/imported..."

# Drop and recreate DB if force is true
if [ "$FORCE" = true ]; then
  mysql -h "$DB_HOST" -P 3306 -u "$DB_USER" -p"$DB_PASSWORD" -e "DROP DATABASE IF EXISTS $DB_NAME;"
fi

# Ensure database exists
mysql -h "$DB_HOST" -P 3306 -u "$DB_USER" -p"$DB_PASSWORD" -e "CREATE DATABASE IF NOT EXISTS $DB_NAME;"

# Import SQL
mysql -h "$DB_HOST" -P 3306 -u "$DB_USER" -p"$DB_PASSWORD" "$DB_NAME" < "$SQL_FILE"

echo "Import complete!"