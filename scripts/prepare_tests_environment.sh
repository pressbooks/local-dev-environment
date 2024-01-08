#!/bin/bash
# Drop test database
mysql -uroot -h database -e "DROP DATABASE IF EXISTS pressbooks_tests"

bash /app/web/app/plugins/pressbooks/bin/install-wp-tests.sh pressbooks_tests root '' database latest
