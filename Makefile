# **************************************************************************** #
#                                                           LE - /             #
#                                                               /              #
#    Makefile                                         .::    .:/ .      .::    #
#                                                  +:+:+   +:    +:  +:+:+     #
#    By: gulandre <gulandre@student.le-101.fr>      +:+   +:    +:    +:+      #
#                                                  #+#   #+    #+    #+#       #
#    Created: 2019/07/23 12:09:28 by gulandre     #+#   ##    ##    #+#        #
#    Updated: 2019/11/13 14:53:07 by gulandre    ###    #+. /#+    ###.fr      #
#                                                          /                   #
#                                                         /                    #
# **************************************************************************** #

SRCS = 	ft_atoi.c					\
		ft_isalnum.c				\
		ft_isalpha.c				\
		ft_isascii.c				\
		ft_isdigit.c				\
		ft_isprint.c				\
		ft_memset.c					\
		ft_strchr.c					\
		ft_strlcat.c				\
		ft_strlcpy.c				\
		ft_strlen.c					\
		ft_strncmp.c				\
		ft_strnstr.c				\
		ft_strrchr.c				\
		ft_tolower.c				\
		ft_toupper.c				\
		ft_bzero.c					\
		ft_memcpy.c					\
		ft_memccpy.c 				\
		ft_memmove.c				\
		ft_memchr.c					\
		ft_memcmp.c 				\
		ft_strdup.c					\
		ft_calloc.c					\
		ft_strjoin.c 				\
		ft_strtrim.c 				\
		ft_split.c 					\
		ft_itoa.c					\
		ft_strmapi.c 				\
		ft_putchar_fd.c 			\
		ft_putstr_fd.c 				\
		ft_putendl_fd.c				\
		ft_putnbr_fd.c				\
		ft_substr.c					\
		

HEADER	= libft.h

OBJS	= ${SRCS:.c=.o}

NAME	= libft.a


CC		= gcc

CFLAGS	= -Wall -Wextra -Werror

%o		:	%c ${HEADER}
			${CC} ${CFLAGS} -c $< -o ${<:.c=.o}

all		:	${NAME}

$(NAME)	:	${OBJS}
			ar rc ${NAME} ${OBJS}

clean	:
			rm -rf ${OBJS}

fclean	:	clean
			rm  -rf ${NAME}

re 		:	fclean all

.PHONY	:	all clean fclean re
