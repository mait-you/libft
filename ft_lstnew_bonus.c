/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstnew_bonus.c                                  :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mait-you <mait-you@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/10/25 17:48:40 by mait-you          #+#    #+#             */
/*   Updated: 2024/12/11 11:07:16 by mait-you         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

t_list	*ft_lstnew(void *content)
{
	t_list	*new_nod;

	new_nod = (t_list *)ft_calloc(1, sizeof(t_list));
	if (!new_nod)
		return (NULL);
	new_nod->content = content;
	new_nod->next = NULL;
	return (new_nod);
}
