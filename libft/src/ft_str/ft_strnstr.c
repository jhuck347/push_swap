/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strnstr.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: juhuck <juhuck@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/10/13 12:07:29 by jhuck             #+#    #+#             */
/*   Updated: 2025/07/30 17:25:18 by juhuck           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../inc/libft.h"

char	*ft_strnstr(const char *big, const char *little, size_t n)
{
	size_t	little_len;

	little_len = ft_strlen(little);
	if (little_len == 0)
		return ((char *) big);
	while (*big != '\0' && n-- >= little_len)
	{
		if (*big == *little && ft_strncmp(big, little, little_len) == 0)
			return ((char *)big);
		big++;
	}
	return (NULL);
}
