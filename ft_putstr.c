#include "libft.h"

void	ft_putstr(char *string)
{
	int	i;

	i = 0;
	while (string[i])
	{
		ft_putchar(string[i]);
		i++;
	}
}
