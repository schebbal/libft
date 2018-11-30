/* ************************************************************************** */
/*                                                          LE - /            */
/*                                                              /             */
/*   ft_strdup.c                                      .::    .:/ .      .::   */
/*                                                 +:+:+   +:    +:  +:+:+    */
/*   By: schebbal <marvin@le-101.fr>                +:+   +:    +:    +:+     */
/*                                                 #+#   #+    #+    #+#      */
/*   Created: 2018/10/02 15:37:36 by schebbal     #+#   ##    ##    #+#       */
/*   Updated: 2018/10/09 17:25:07 by schebbal    ###    #+. /#+    ###.fr     */
/*                                                         /                  */
/*                                                        /                   */
/* ************************************************************************** */

#include "libft.h"

char	*ft_strdup(const char *src)
{
	char	*dest;
	int		len;

	len = 0;
	while (src[len])
		len++;
	if ((dest = (char*)malloc(sizeof(*src) * (len + 1))) != NULL)
	{
		len = 0;
		while (src[len])
		{
			dest[len] = src[len];
			len++;
		}
		dest[len] = '\0';
	}
	return (dest);
}
