/* ************************************************************************** */
/*                                                          LE - /            */
/*                                                              /             */
/*   ft_bzero.c                                       .::    .:/ .      .::   */
/*                                                 +:+:+   +:    +:  +:+:+    */
/*   By: gulandre <gulandre@student.le-101.fr>      +:+   +:    +:    +:+     */
/*                                                 #+#   #+    #+    #+#      */
/*   Created: 2019/10/10 10:29:55 by gulandre     #+#   ##    ##    #+#       */
/*   Updated: 2019/10/10 10:56:16 by gulandre    ###    #+. /#+    ###.fr     */
/*                                                         /                  */
/*                                                        /                   */
/* ************************************************************************** */

#include "libft.h"

void		ft_bzero(void *s, size_t n)
{
	char	*str;
	int		i;

	i = -1;
	if (n == 0)
		return ;
	str = (char *)s;
	while (++i != (int)n)
		str[i] = '\0';
}
