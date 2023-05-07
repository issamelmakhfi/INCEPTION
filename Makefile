NGINX = my_nginx_container

WORDPRESS = my_wordpress_container

DB = my_mariadb_container

REDIS = my_redis_container

all : compose

compose :
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

clean :
	docker stop $(NGINX) $(DB) $(WORDPRESS) $(REDIS)

fclean: clean
	docker rm $(NGINX) $(DB) $(WORDPRESS) $(REDIS)

vclean: fclean
	@docker volume rm srcs_wordpressV
	@docker volume rm srcs_wordpress_db
	@docker network rm srcs_containers_net
	@# docker system prune -a
