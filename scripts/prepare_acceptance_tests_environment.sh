#!/bin/bash

cd /app/web/app/plugins/pressbooks
printf "Deleting test database... \n"
mysql -uroot -h database -e "DROP DATABASE IF EXISTS tests"
printf "Creating test database... \n"
mysqladmin create tests --user=root --password="" --host=database

printf "Importing test database... \n"
mysql -uroot -h database tests < tests/_data/pressbooks_fixture.sql

printf "Creating test config file... \n"
rm .env.testing
cp /app/files/.env.testing .env.testing

