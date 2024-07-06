/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_putstr.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: eviala <eviala@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/05/25 12:11:44 by eviala            #+#    #+#             */
/*   Updated: 2024/05/25 14:05:55 by eviala           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../ft_printf.h"

int	ft_putstr(char *str)
{
	int	count;

	if (!str)
	{
		count = ft_putstr("(null)");
		return (count);
	}
	count = 0;
	while (str[count])
		count += ft_putchar(str[count]);
	return (count);
}
