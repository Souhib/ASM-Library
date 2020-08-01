##
## EPITECH PROJECT, 2017
## Makefile
## File description:
## Makefile
##

SRCMAIN	=	main.c			\

SRC		=	../src/strlen.asm	\
			../src/strcmp.asm	\
			../src/strchr.asm	\
			../src/memset.asm	\
			../src/memcpy.asm	\
			../src/strncmp.asm	\
			../src/memmove.asm	\
			../src/strcspn.asm	\
			../src/rindex.asm	\
			../src/strpbrk.asm	\
			../src/strstr.asm	\
			../src/strcasecmp.asm	\

CC		=	gcc

ASM		=	nasm

NAME		=	test

OBJ		=	$(SRC:.asm=.o)

OBJMAIN		=	$(SRCMAIN:.c=.o)

ASMFLAGS	=	-f elf64

RM		=	rm -rf

%.o: %.asm
			$(ASM) -o $@ $< $(ASMFLAGS)

all:			$(NAME)

$(NAME):	$(OBJ) $(OBJMAIN)
	 		$(CC) -o $(NAME) $(OBJMAIN) $(OBJ)

clean:
			$(RM) $(OBJ) $(OBJMAIN)

fclean:		clean
			$(RM) $(NAME)

re:			fclean all

.PHONY:			all clean fclean re
