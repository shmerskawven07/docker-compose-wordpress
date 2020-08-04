# docker-compose-wordpress


Three hierarchy : 

Prowebx
|--wp_content/       //wordpress content will be copied 
|--wp_data?			//dump of database
|--bin/				//useful scripts
|--config/			//external config files
|--Dockerfile		//tag the image with it's content  
|--docker-compose	//deploy mysql and wordpress image



* All this project should be on GIT as Prowebx
* The Dockerfile will build and tag an image by copying the wp-content in the image
* Transfert the image manually or via a remote repo?
* On prod, the docker compose file will be available, just execute it and it's ok
* Source code should never be put on prod, only the docker image is deployed + some config files.

à ferifier
Docker-gen : We'll use docker-gen to generate the configuration of the reverse proxy.

//copy the nginx.tmpl that we downloaded to the container ./nginx_config/nginx.tmpl:/etc/docker-gen/templates/nginx.tmpl

//generate the default.conf on the reverse proxy container using the nginx.tmpl from the docker-gen container. command: -notify-sighup reverse-proxy -watch /etc/docker-gen/templates/nginx.tmpl /etc/nginx/conf.d/default.conf

-->hist:
j'ai supprimer les autres branch sur le remote depuis l'interface web de github le site, mais je les vois tjrs dans le git du vps.
le vps pointe tjrs sur develepement, j'ai pucher cette branch local (car elle foctionne) directement sur le matster, mais j'ai pas taguer ni resynchroniser le local sur le master.
je commit les change depuis l'interface sur develepeomnt
