all:
	cd srcs && docker-compose up --build
clean:
	cd srcs && sudo docker-compose down --volumes
fclean: clean
	sudo rm -rf /home/tle/data/mariadb/*
	sudo rm -rf /home/tle/data/wordpress/*
re: fclean all

.PHONY: all clean re fclean