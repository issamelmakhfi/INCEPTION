NGINX = my_nginx_container

WORDPRESS = my_wordpress_container

DB = my_mariadb_container

all : compose

compose :
	docker compose up --build -d

re : vclean all

execn :
	docker exec -it $(NGINX) bash

execw :
	docker exec -it $(WORDPRESS) /bin/bash

execm :
	docker exec -it $(DB) bash

clean :
	docker stop $(NGINX) $(DB) $(WORDPRESS)

fclean: clean
	docker rm $(NGINX) $(DB) $(WORDPRESS)

vclean: fclean
	docker volume rm srcs_wordpressV
	docker network rm srcs_unix
