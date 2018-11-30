# **************************************************************************** #
#                                                           LE - /             #
#                                                               /              #
#    Makefile                                         .::    .:/ .      .::    #
#                                                  +:+:+   +:    +:  +:+:+     #
#    By: schebbal <marvin@le-101.fr>                +:+   +:    +:    +:+      #
#                                                  #+#   #+    #+    #+#       #
#    Created: 2018/10/04 13:37:57 by schebbal     #+#   ##    ##    #+#        #
#    Updated: 2018/10/22 18:54:14 by schebbal    ###    #+. /#+    ###.fr      #
#                                                          /                   #
#                                                         /                    #
# **************************************************************************** #

NAME = libft.a

PATH_SRC = ./
HEADER = ./libft.h

FLAGS = -Werror -Wall -Wextra

SRCF = ft_putstr.c \
	  ft_strcmp.c \
	  ft_strlen.c \
	  ft_atoi.c \
	  ft_strcat.c ft_strcpy.c ft_strncmp.c ft_strstr.c \
	  ft_strdup.c ft_strncat.c ft_strncpy.c ft_putchar.c \
	  ft_strlcat.c ft_putnbr.c ft_bzero.c ft_memset.c \
	  ft_memcpy.c ft_memccpy.c  ft_memmove.c ft_memchr.c \
	  ft_isalpha.c ft_isdigit.c ft_isalnum.c ft_isascii.c \
	  ft_isprint.c ft_toupper.c ft_tolower.c ft_strnstr.c \
	  ft_strchr.c ft_strrchr.c ft_memcmp.c ft_putendl.c \
	  ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c \
	  ft_putnbr_fd.c ft_memalloc.c ft_itoa.c ft_memdel.c \
	  ft_strnew.c ft_strdel.c ft_strclr.c ft_striter.c \
	  ft_striteri.c ft_strmap.c ft_strmapi.c ft_strequ.c \
	  ft_strnequ.c ft_strsub.c ft_strjoin.c ft_strtrim.c \
	  ft_strsplit.c \
	  ft_lstnew.c ft_lstdelone.c ft_lstdel.c ft_lstadd.c \
	  ft_lstiter.c ft_lstmap.c \
	  ft_strndup.c ft_countwords.c

SRC = $(addprefix $(PATH_SRC), $(SRCF))

OBJ = $(SRC:.c=.o)

all: $(NAME)

$(NAME): $(OBJ)
	ar ruc $(NAME) $?
	ranlib $(NAME)

%.o:%.c
	gcc -c $(FLAGS) -I $(HEADER) $*.c

clean: 
	/bin/rm -f $(OBJ)

fclean: clean
	/bin/rm -f $(NAME)

re: fclean all
