/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_isesc.c                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mmakwakw <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2016/08/09 08:56:37 by mmakwakw          #+#    #+#             */
/*   Updated: 2016/08/09 08:58:29 by mmakwakw         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

int		ft_isesc(int c)
{
	if (c >= 7 && c <= 13)
		return (1);
	if (c == 32)
		return (1);
	return (0);
}
