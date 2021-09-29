# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: flee <marvin@42.fr>                        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/09/10 14:27:13 by flee              #+#    #+#              #
#    Updated: 2021/09/29 11:54:33 by flee             ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME_SERVER =	server

NAME_CLIENT =	client

NAME_SERVER_BONUS =	server_bonus

NAME_CLIENT_BONUS =	client_bonus

SRC_SERVER =	server.c \
			ft_atoi.c \
			ft_putnbr.c \

SRC_CLIENT =	 client.c \
			ft_atoi.c \

SRC_SERVER_BONUS =	server_bonus.c \
			ft_atoi.c \
			ft_putnbr.c \

SRC_CLIENT_BONUS =	client.c \
				ft_atoi.c \

CC = gcc

CFLAGS = -Werror -Wextra -Wall

OBJS_SERVER = $(SRC_SERVER:.c=.o)

OBJS_CLIENT = $(SRC_CLIENT:.c=.o)

OBJS_SERVER_BONUS =	$(SRC_SERVER_BONUS:.c=.o)
			
OBJS_CLIENT_BONUS =	$(SRC_CLIENT_BONUS:.c=.o)

all:        $(NAME_SERVER) $(NAME_CLIENT)

$(NAME_SERVER):    $(OBJS_SERVER)
	$(CC) $(CFLAGS) -o $(NAME_SERVER) $(OBJS_SERVER)

$(NAME_CLIENT):    $(OBJS_CLIENT)
	$(CC) $(CFLAGS) -o $(NAME_CLIENT) $(OBJS_CLIENT)


bonus:    $(NAME_SERVER_BONUS) $(NAME_CLIENT_BONUS)

$(NAME_SERVER_BONUS): $(OBJS_SERVER_BONUS)
	 $(CC) $(CFLAGS) -o $(NAME_SERVER_BONUS) $(OBJS_SERVER_BONUS)

$(NAME_CLIENT_BONUS): $(OBJS_CLIENT_BONUS)
	$(CC) $(CFLAGS) -o $(NAME_CLIENT_BONUS) $(OBJS_CLIENT_BONUS)

clean:
		/bin/rm -f $(OBJS_SERVER) $(OBJS_CLIENT) $(OBJS_SERVER_BONUS) $(OBJS_CLIENT_BONUS)

fclean:	clean
	/bin/rm -f $(NAME_SERVER) $(NAME_CLIENT) $(NAME_CLIENT_BONUS) $(NAME_SERVER_BONUS)

re:	fclean all

.PHONY: all clean fclean re
