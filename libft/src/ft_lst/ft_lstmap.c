/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstmap.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: juhuck <juhuck@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/10/13 11:57:16 by jhuck             #+#    #+#             */
/*   Updated: 2025/07/30 17:24:26 by juhuck           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../inc/libft.h"

t_list	*ft_lstmap(t_list *lst, void *(*f)(void *), void (*del)(void *))
{
	t_list	*new_list;
	t_list	*current_node;

	if (!lst)
		return (NULL);
	new_list = NULL;
	while (lst)
	{
		current_node = ft_lstnew(f(lst->content));
		if (!current_node)
		{
			ft_lstclear(&new_list, del);
			return (NULL);
		}
		ft_lstadd_back(&new_list, current_node);
		lst = lst->next;
	}
	return (new_list);
}
