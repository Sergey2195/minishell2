# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: iannmari <iannmari@student.21-school.ru    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/06/08 16:19:08 by iannmari          #+#    #+#              #
#    Updated: 2022/06/12 16:38:01 by iannmari         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# NAME	=	minishell

# SRCS	=	add_history.c builtin.c builtin_utils.c builtin_utils2.c builtin_utils3.c builtin_utils4.c builtin_utils5.c builtin_utils6.c cmd_handler.c cmd_handler2.c cmd_handler3.c cursor_settings.c cursor_utils.c env_utils.c executor_utils.c executor_utils2.c executor_utils3.c executor_utils4.c executor_utils5.c executor.c ft_atoi.c ft_itoa.c ft_split.c ft_strdup.c ft_strjoin.c ft_strlen.c ft_strncmp.c ft_strrchr.c ft_substr.c init_env.c init_info.c main.c prepare_all.c prompt.c signal.c terminal.c token_handler.c token.c top_bot.c update_env.c utils_init.c utils.c utils2.c utils3.c

# SRCS = *.c

# OBJS = $(patsubst %.c, %.o, $(SRCS))

# HEADER	= minishell.h

# CC	=	gcc

# CFLAGS	=	-Wall -Werror -Wextra

# all: $(NAME)

# $(NAME) : $(OBJS)
# 	$(CC) $(CFLAGS) $(OBJS) -o $(NAME)

# %.o: %.c $(HEADER)
# 	$(CC) $(CFLAGS) -c $< -o $@

# .PHONY	:	all clean fclean re

# clean	:
# 	rm -f $(OBJS)

# fclean	:	clean
# 	rm -f $(OBJS) $(NAME)

# re		:	fclean all

NAME = minishell

HEADER	=	minishell.h

SRC	=	add_history.c builtin.c bultin_utils.c bultin_utils2.c bultin_utils3.c bultin_utils4.c bultin_utils5.c bultin_utils6.c cmd_handler.c cmd_handler2.c cmd_handler3.c cursor_settings.c cursor_utils.c env_utils.c executor_utils.c executor_utils2.c executor_utils3.c executor_utils4.c executor_utils5.c executor.c ft_atoi.c ft_itoa.c ft_split.c ft_strdup.c ft_strjoin.c ft_strlen.c ft_strncmp.c ft_strrchr.c ft_substr.c init_env.c init_info.c main.c prepare_all.c prompt.c signal.c terminal.c token_handler.c token.c top_bot.c update_env.c utils_init.c utils.c utils2.c utils3.c

CC 		= gcc

FLAGS	= -Wall -Wextra -Werror

LINKS	=	-lncurses

OBJS 	= $(SRC:.c=.o)

$(NAME): $(OBJS)
	$(CC) $(FLAGS) $(LINKS) $(SRC) -o $(NAME)

all: $(NAME) $(OBJS) $(HEADER)

%.o: %.c $(HEADER)
		$(CC) $(FLAGS) -c $< -o $@

clean:
	rm -rf $(OBJS)

fclean: clean
	rm -rf $(NAME)

re: fclean all

.PHONY: all clean fclean re