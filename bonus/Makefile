##
## EPITECH PROJECT, 2017
## Makefile
## File description:
## Makefile
##

SRC			=	main.c			\

SRCASM		=	src/sys.asm		\

CC			=	gcc

ASM			=	nasm

NAME		=	test

OBJASM		=	$(SRCASM:.asm=.o)

OBJ			=	$(SRC:.c=.o)

ASMFLAGS	=	-f elf64

RM			=	rm -rf

%.o: %.asm
			$(ASM) -o $@ $< $(ASMFLAGS)

all:		$(NAME)

$(NAME):	$(OBJASM) $(OBJ)
	 		$(CC) -o $(NAME) $(CFLAGS) $(OBJ) $(OBJASM)

clean:
			$(RM) $(OBJ) $(OBJASM)

fclean:			clean
			$(RM) $(NAME)

re:			fclean all

.PHONY:			all clean fclean re
