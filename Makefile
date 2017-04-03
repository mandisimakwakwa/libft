# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mmakwakw <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/01/03 14:44:02 by mmakwakw          #+#    #+#              #
#    Updated: 2017/01/03 15:39:32 by mmakwakw         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

PATH_SRC = ./
PATH_LIB = ./libft/

CC = gcc
CFLAGS = -Wall -Wextra -Werror -I ./include/

OBJ = ft_atoi.o \
	  ft_bzero.o \
	  ft_isalnum.o \
	  ft_isalpha.o \
	  ft_isascii.o \
	  ft_isdigit.o \
	  ft_isesc.o \
	  ft_ishex.o \
	  ft_islower.o \
	  ft_isprint.o \
	  ft_isupper.o \
	  ft_memalloc.o \
	  ft_memccpy.o \
	  ft_memchr.o \
	  ft_memcmp.o \
	  ft_memcpy.o \
	  ft_memdel.o \
	  ft_memmove.o \
	  ft_memset.o \
	  ft_putchar.o \
	  ft_putendl.o \
	  ft_putchar_fd.o \
	  ft_putendl_fd.o \
	  ft_putnbr.o \
	  ft_putnbr_fd.o \
	  ft_putstr.o \
	  ft_putstr_fd.o \
	  ft_strcat.o \
	  ft_strchr.o \
	  ft_strclr.o \
	  ft_strcmp.o \
	  ft_strcpy.o \
	  ft_strdel.o \
	  ft_strdup.o \
	  ft_strequ.o \
	  ft_striter.o \
	  ft_striteri.o \
	  ft_strjoin.o \
	  ft_strlcat.o \
	  ft_strlen.o \
	  ft_strmap.o \
	  ft_strmapi.o \
	  ft_strncat.o \
	  ft_strncmp.o \
	  ft_strncpy.o \
	  ft_strnequ.o \
	  ft_strnew.o \
	  ft_strnstr.o \
	  ft_strrchr.o \
	  ft_strrev.o \
	  ft_strsplit.o \
	  ft_strstr.o \
	  ft_strsub.o \
	  ft_strtrim.o \
	  ft_tolower.o \
	  ft_toupper.o \
	  ft_strbchr.o \
	  ft_chrpos.o \
	  ft_putchar_endl.o \
	  ft_putnbr_endl.o \
	  ft_puthex.o \
	  ft_nbrlen.o \
	  ft_puthex_pf.o \
	  ft_putoctal.o \
	  ft_putunsigned.o

SRC = $(patsubst %.o, %.c, $(OBJ));

all: $(NAME)

$(NAME): $(OBJ)
		 ar rc $(NAME) $(OBJ)
		 @echo ""
		 ranlib $(NAME)
		 @echo ""

clean:
	rm -f $(OBJ)
	rm -f main.o

fclean: clean
	rm -f $(NAME)

re: fclean all
