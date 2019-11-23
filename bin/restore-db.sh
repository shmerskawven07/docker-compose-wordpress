#!/usr/bin/env bash

 
# Restore database to db container
cmd='exec mysql -uroot -prootPassword wordpress'
docker exec -i wordpress-db sh -c "$cmd" < dump.sql
 
# Replace LIVE_URL using WP-CLI in wp container
#cmd='wp --allow-root search-replace "$DEV_URL" "$LIVE_URL" --skip-columns=guid'
#docker-compose exec wp sh -c "$cmd"