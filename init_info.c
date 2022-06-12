/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   init_info.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: iannmari <iannmari@student.21-school.ru    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/05/10 12:10:14 by iannmari          #+#    #+#             */
/*   Updated: 2022/06/12 16:17:36 by iannmari         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "minishell.h"

void	init_info(t_info *info)
{
	ft_memset((void *)info, 0, sizeof(t_info));
	tcgetattr(0, &info->term.save);
}
