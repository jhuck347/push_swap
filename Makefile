# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: juhuck <juhuck@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2025/06/25 18:07:09 by juhuck            #+#    #+#              #
#    Updated: 2025/08/04 13:51:16 by juhuck           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME				= push_swap


LIBFT				= ./libft/libft.a
INC					= inc/
SRC_DIR				= srcs/
OBJ_DIR				= obj/


CC					= gcc
CFLAGS				= -Wall -Werror -Wextra -I
RM					= rm -f


COMMANDS_DIR		=	$(SRC_DIR)commands/push.c \
						$(SRC_DIR)commands/rev_rotate.c \
						$(SRC_DIR)commands/rotate.c \
						$(SRC_DIR)commands/sort_stacks.c \
						$(SRC_DIR)commands/sort_stacks_units.c \
						$(SRC_DIR)commands/sort_three.c \
						$(SRC_DIR)commands/swap.c

PUSH_SWAP_DIR		=	$(SRC_DIR)push_swap/handle_errors.c \
						$(SRC_DIR)push_swap/init_a_to_b.c \
						$(SRC_DIR)push_swap/init_b_to_a.c \
						$(SRC_DIR)push_swap/push_swap.c \
						$(SRC_DIR)push_swap/split.c \
						$(SRC_DIR)push_swap/stack_init.c \
						$(SRC_DIR)push_swap/stack_utils.c


SRCS 				= $(COMMANDS_DIR) $(PUSH_SWAP_DIR)


OBJ 				= $(patsubst $(SRC_DIR)%.c,$(OBJ_DIR)%.o,$(SRCS))


start:				
					@make all

$(LIBFT):
					@make -C ./libft

all: 				$(NAME)

$(NAME): 			$(OBJ) $(LIBFT) Makefile
					@echo "🔗 Linking $(NAME)..."
					@$(CC) $(CFLAGS) $(INC) $(OBJ) $(LIBFT) -o $(NAME)


$(OBJ_DIR)%.o:		$(SRC_DIR)%.c $(LIBFT)
					@mkdir -p $(@D)
					@echo "🛠️  Compiling $<"
					@$(CC) $(CFLAGS) $(INC) -c $< -o $@

clean:
					@$(RM) -r $(OBJ_DIR)
					@make clean -C ./libft

fclean: 			clean
					@$(RM) $(NAME)
					@$(RM) $(LIBFT)

re: 				fclean all


.PHONY: 			start all clean fclean re
