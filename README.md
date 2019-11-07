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