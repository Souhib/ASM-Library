##
## EPITECH PROJECT, 2017
## Makefile
## File description:
## Makefile
##

SRC		=	src/strlen.asm	\
			src/strcmp.asm	\
			src/strchr.asm	\
			src/memset.asm	\
			src/memcpy.asm	\
			src/strncmp.asm	\
			src/memmove.asm	\
			src/strcspn.asm	\
			src/rindex.asm	\
			src/strpbrk.asm	\
			src/strstr.asm	\
			src/strcasecmp.asm	\

CC		=	ld

ASM		=	nasm

NAME		=	libasm.so

OBJ		=	$(SRC:.asm=.o)

CFLAGS		=	-shared -fPIC

ASMFLAGS	=	-f elf64

RM		=	rm -rf

%.o: %.asm
			$(ASM) -o $@ $< $(ASMFLAGS)

all:		$(NAME)

$(NAME):	$(OBJ)
	 		$(CC) -o $(NAME) $(CFLAGS) $(OBJ)

test_run:
		$(MAKE) -C ./tests/criterion re
		$(MAKE) -C ./tests/criterion run

clean:
			$(RM) $(OBJ)

fclean:		clean
			$(RM) $(NAME)

re:			fclean all

.PHONY:			all clean fclean re
