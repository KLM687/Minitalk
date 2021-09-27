# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: flee <marvin@42.fr>                        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/09/10 14:27:13 by flee              #+#    #+#              #
#    Updated: 2021/09/27 15:35:06 by flee             ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = minitalk

SRC =		client.c \
			ft_atoi.c \
			ft_putnbr.c \
			server.c \

SRCBONUS =	client_bonus.c \
			server_bonus.c \
			ft_atoi.c \
			ft_putnbr.c \

OBJS = $(SRC:.c=.o)

OBJSBONUS = $(SRCBONUS:.c=.o)

all:        $(NAME)

$(NAME):    $(OBJS)
	ar rc $(NAME) $(OBJS)

bonus:    $(OBJSBONUS)
	ar rc $(NAME) $(OBJSBONUS)
.c.o:
		gcc -Wall -Wextra -Werror -c $< -o $(<:.c=.o)
clean:
		/bin/rm -f $(OBJS)    $(OBJSBONUS)

fclean:	clean
	/bin/rm -f $(NAME)

re:	fclean all

.PHONY: all clean fclean re

