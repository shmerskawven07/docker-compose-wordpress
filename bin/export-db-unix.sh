#!/usr/bin/env bash

this_dir=$(cd `dirname $0` && pwd)
file="$this_dir/dump.sql"

# Create dump file
cmd='exec mysqldump wordpress -uroot -prootPassword'
docker exec wordpress-db sh -c "$cmd" > $file

# Remove password warning from the file
sed -i '.bak' 1,1d $file && rm "$file.bak"



#docker exec CONTAINER /usr/bin/mysqldump -u root --password=root DATABASE > backup.sql

#cat backup.sql | docker exec -i CONTAINER /usr/bin/mysql -u root --password=root DATABASE

