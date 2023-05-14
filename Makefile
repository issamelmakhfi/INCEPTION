NGINX		= nginx_container

WORDPRESS	= wordpress_container

DB			= mariadb_container

REDIS		= redis_container

FTP			= ftp_container

STATIC_WEB	= static_web_container

ADMINER		= adminer_container

NODE		= node_container

all : compose

compose :
	@sudo mkdir -p /home/ielmakhf/data/wordpress
	# @sudo chmod +x /home/ielmakhf/data/wordpress
	@sudo mkdir -p /home/ielmakhf/data/mariadb
	# @sudo chmod +x /home/ielmakhf/data/mariadb
	docker compose -f ./srcs/docker-compose.yml up --build -d

re : vclean all

execn :
	docker exec -it $(NGINX) bash

execw :
	docker exec -it $(WORDPRESS) bash

execm :
	docker exec -it $(DB) bash

execr :
	docker exec -it $(REDIS) bash

execf :
	docker exec -it $(FTP) bash

execs :
	docker exec -it $(STATIC_WEB) bash

execa :
	docker exec -it $(ADMINER) bash

execan :
	docker exec -it $(NODE) bash 

clean :
	docker stop $(NGINX) $(DB) $(WORDPRESS) $(REDIS) $(FTP) $(STATIC_WEB) $(ADMINER) $(NODE)

fclean: clean
	docker rm $(NGINX) $(DB) $(WORDPRESS) $(REDIS) $(FTP) $(STATIC_WEB) $(ADMINER) $(NODE)

vclean: fclean
	@docker volume rm srcs_wordpress_files
	@docker volume rm srcs_wordpress_db
	@docker network rm srcs_containers_net
