# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mait-you <mait-you@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/11/08 11:26:17 by mait-you          #+#    #+#              #
#    Updated: 2024/12/11 10:51:59 by mait-you         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

LIBC_FILES			= ft_isalpha.c ft_isdigit.c ft_isalnum.c ft_isascii.c \
	ft_isprint.c ft_strlen.c ft_memset.c ft_bzero.c ft_memcpy.c ft_memmove.c \
	ft_strlcpy.c ft_strlcat.c ft_toupper.c ft_tolower.c ft_strchr.c ft_strrchr.c \
	ft_strncmp.c ft_memchr.c ft_memcmp.c ft_strnstr.c ft_atoi.c ft_calloc.c \
	ft_strdup.c ft_substr.c ft_strjoin.c ft_strtrim.c ft_split.c ft_itoa.c \
	ft_strmapi.c ft_striteri.c ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c \
	ft_putnbr_fd.c

BONUS_FILES			= ft_lstnew_bonus.c ft_lstadd_front_bonus.c ft_lstsize_bonus.c ft_lstlast_bonus.c \
	ft_lstadd_back_bonus.c ft_lstdelone_bonus.c ft_lstclear_bonus.c ft_lstiter_bonus.c ft_lstmap_bonus.c

CC					= cc
CFLAGS				= -Wall -Wextra -Werror
LIBC_OBJS			:= $(LIBC_FILES:%.c=%.o)
BONUS_OBJS			:= $(BONUS_FILES:%.c=%.o)
AR					= ar rcs
RM					= rm -f
NAME				= libft.a

all: $(NAME)

$(NAME): $(LIBC_OBJS)
	$(AR) $(NAME) $(LIBC_OBJS)

bonus: ._bonus

._bonus: $(BONUS_OBJS)
	$(AR) $(NAME) $(BONUS_OBJS)
	touch ._bonus

%.o: %.c libft.h
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	$(RM) $(LIBC_OBJS) $(BONUS_OBJS)

fclean: clean
	$(RM) $(NAME) ._bonus

re: fclean all

.PHONY: clean