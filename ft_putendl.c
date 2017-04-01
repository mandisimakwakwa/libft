#include "libft.h"

void	ft_putendl(char *string)
{
	int	i;

	i = 0;
	while (string[i])
	{
		ft_putchar(string[i]);
		i++;
	}
	ft_putchar(10);
}
