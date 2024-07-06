# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: eviala <eviala@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/05/25 11:58:52 by eviala            #+#    #+#              #
#    Updated: 2024/06/14 11:32:41 by eviala           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRCS		= ft_printf.c \
		prints/ft_putchar.c \
		prints/ft_putstr.c \
		prints/ft_putptr.c \
		prints/ft_putnbr.c \
		prints/ft_putunbr.c \
		prints/ft_puthex.c

OBJS		= ${SRCS:.c=.o}
NAME		= libftprintf.a
CC			= cc -Wall -Wextra -Werror

%.o: %.c ft_printf.h
			${CC} -I. -c $< -o ${<:.c=.o}

all:		${NAME}

$(NAME):	${OBJS} ft_printf.h
			ar rcs ${NAME} ${OBJS}

# bonus:		${OBJS} ft_printf.h
# 			ar rcs ${NAME} ${OBJS}
clean:
			rm -f ${OBJS}

fclean:		clean
			rm -f ${NAME}

re:			fclean all

.PHONY:		all clean fclean re
