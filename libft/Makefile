# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: juhuck <juhuck@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/10/13 11:48:04 by jhuck             #+#    #+#              #
#    Updated: 2025/08/02 12:33:44 by juhuck           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME			= libft.a

# ─── Directories ──────────────────────────────────────────────────────────────
INC				= inc
SRC_DIR			= src
OBJ_DIR			= obj

# ─── Tools ────────────────────────────────────────────────────────────────────
CC				= gcc
CFLAGS			= -Wall -Wextra -Werror
RM				= rm -f
AR				= ar rcs
MKDIR_P			= mkdir -p

# ─── Source Files ─────────────────────────────────────────────────────────────
FTIS_DIR		=	ft_is/ft_isalnum.c ft_is/ft_isspace.c ft_is/ft_ishexdigit.c \
					ft_is/ft_isalpha.c ft_is/ft_isascii.c ft_is/ft_isdigit.c ft_is/ft_isprint.c 

FTMEM_DIR		=	ft_mem/ft_bzero.c ft_mem/ft_calloc.c ft_mem/ft_memchr.c \
					ft_mem/ft_memcmp.c ft_mem/ft_memmove.c ft_mem/ft_memset.c 

FTPUT_DIR		=	ft_put/ft_putchar_fd.c ft_put/ft_putendl_fd.c \
					ft_put/ft_putnbr_fd.c ft_put/ft_putstr_fd.c 

FTTO_DIR		=	ft_to/ft_atoi.c ft_to/ft_itoa.c ft_to/ft_tolower.c ft_to/ft_toupper.c

FTSTR_DIR		=	ft_str/ft_split.c ft_str/ft_strchr.c ft_str/ft_strdup.c ft_str/ft_striteri.c \
					ft_str/ft_strjoin.c ft_str/ft_strlcat.c ft_str/ft_strlcpy.c ft_str/ft_strlen.c \
					ft_str/ft_strmapi.c ft_str/ft_strncmp.c ft_str/ft_strncpy.c ft_str/ft_strnstr.c \
					ft_str/ft_strrchr.c ft_str/ft_strtrim.c ft_str/ft_substr.c 

FTLST_DIR		=	ft_lst/ft_lstadd_back.c ft_lst/ft_lstadd_front.c ft_lst/ft_lstclear.c \
					ft_lst/ft_lstdelone.c ft_lst/ft_lstiter.c ft_lst/ft_lstlast.c ft_lst/ft_lstmap.c \
					ft_lst/ft_lstnew.c ft_lst/ft_lstsize.c 

FTPRINTF_DIR	=	ft_printf/ft_printf.c ft_printf/ft_handle_char.c ft_printf/ft_handle_string.c \
					ft_printf/ft_handle_int.c ft_printf/ft_handle_unsigned.c ft_printf/ft_handle_pointer.c \
					ft_printf/ft_handle_hex.c ft_printf/ft_handle_percent.c ft_printf/ft_printf_utils.c

GNL_DIR			=	get_next_line/get_next_line.c 

SRC_FILES		= $(FTIS_DIR) $(FTMEM_DIR) $(FTPUT_DIR) $(FTTO_DIR) $(FTSTR_DIR) \
				  $(FTLST_DIR) $(FTPRINTF_DIR) $(GNL_DIR)

SRC				= $(addprefix $(SRC_DIR)/, $(SRC_FILES))
OBJ				= $(addprefix $(OBJ_DIR)/, $(SRC_FILES:.c=.o))

# ─── Rules ────────────────────────────────────────────────────────────────────
all: $(NAME)

$(NAME): $(OBJ)
	@echo "📦 Archiving $@"
	@$(AR) $@ $^

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c
	@$(MKDIR_P) $(@D)
	@echo "🔧 Compiling $<"
	@$(CC) $(CFLAGS) -I$(INC) -c $< -o $@

clean:
	@$(RM) -r $(OBJ_DIR)
	@$(RM) .cache_exists

fclean: clean
	@$(RM) $(NAME)

re: fclean all

.PHONY: all clean fclean re
