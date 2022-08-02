all:
	cd srcs && sudo dco up --build
clean:
	cd srcs && sudo dco down --volumes
fclean: clean
	sudo rm -rf /home/tle.42.fr/data/mariadb/*
	sudo rm -rf /home/tle.42.fr/data/wordpress/*
re: fclean all

.PHONY: all clean re fclean