NAME = libft.a

CC = gcc

FLAGS = -Wall -Werror -Wextra

INCLUDES = "includes"

OBJ = ft_putchar.o \
      ft_putstr.o

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
