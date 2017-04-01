NAME = libft.a

CC = gcc

FLAGS = -Wall -Werror -Wextra

INCLUDES = "includes"

OBJ = ft_putchar.o \
      ft_putstr.o \
	  ft_putendl.o \
	  ft_putnbr.o \
	  ft_toupper.o \
	  ft_tolower.o

all: $(NAME)

$(NAME): $(OBJ)
	ar rc $(NAME) $(OBJ)
	ranlib $(NAME)

$(OBJ): %.o: %.c
	$(CC) -c $(FLAGS) $< -o $@ -I $(INCLUDES)

clean:
	-/bin/rm -f $(OBJ)

fclean: clean
	-/bin/rm -f $(NAME)

re: fclean all
