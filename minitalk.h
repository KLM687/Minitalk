/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   minitalk.h                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: flee <marvin@42.fr>                        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/09/16 11:02:54 by flee              #+#    #+#             */
/*   Updated: 2021/09/27 15:27:45 by flee             ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef MINITALK_H
# define MINITALK_H
# include <stdio.h>
# include <unistd.h>
# include <stdlib.h>
# include <signal.h>
# include <sys/types.h>
# include <time.h>

int			ft_atoi(const char *str);
void		ft_putnbr(int n);
void		ft_killbinary(int value, pid_t pid);
void		ft_sendprocess(char *str, pid_t pid);
int			ft_convdec(int value);
void		ft_conv(char *str);
int			ft_fill(char *str, int nb);

#endif
