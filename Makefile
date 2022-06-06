##
## EPITECH PROJECT, 2022
## Makefile
## File description:
## Makefile
##

NAME_GEN	= 	generator/generator

SRCS_GEN	= 	src/generator/main.c\
		  		src/generator/print_map.c\
		  		src/generator/parfait.c\
		  		src/generator/imparfait.c\
		  		src/generator/build.c\

OBJS_GEN	= $(SRCS_GEN:.c=.o)

CC		= gcc

RM		= rm -rf

CFLAGS		= -Wall -Wextra -Iinclude

all:	$(NAME_GEN)

$(NAME_GEN): $(OBJS_GEN)
	mkdir -p generator
	$(CC) -o $(NAME_GEN) $(OBJS_GEN) $(CFLAGS)

clean:
	$(RM) $(OBJS_LAR) $(OBJS_A) $(OBJS_GEN)

fclean:		clean
	$(RM) $(NAME_GEN)
	$(RM) generator

re:		fclean all

test run:
	echo "salut"

.PHONY:		all clean fclean re
