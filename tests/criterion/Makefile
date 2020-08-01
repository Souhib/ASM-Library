##
## EPITECH PROJECT, 2018
## emacs
## File description:
## test_criterion
##

SRCS 	= 		src/test_strlen.c		\
			src/test_strchr.c		\
			src/test_strcmp.c		\
			src/test_strncmp.c		\
			src/test_strcspn.c		\

SRCASM 	=		../src/strlen.asm		\
			../src/strcmp.asm		\
			../src/strchr.asm		\
			../src/memset.asm		\
			../src/memcpy.asm		\
			../src/strncmp.asm		\
			../src/memmove.asm		\
			../src/strcspn.asm		\
			../src/rindex.asm		\
			../src/strpbrk.asm		\
			../src/strstr.asm		\
			../src/strcasecmp.asm	\

OBJASM = $(SRCASM:.asm=.o)

OBJS = $(SRCS:.c=.o)

CC := gcc

ASM := nasm

ASMFLAGS	=	-f elf64

CPPFLAGS += -I include

CFLAGS += -Wall -Wextra

LDFLAGS += -lcriterion

NAME = test

NAME_COVERAGE = test_coverage

FILE_COVERAGE = .coverage.info

DIRECTORY_COVERAGE = out

all: $(NAME)

%.o: %.asm
			$(ASM) -o $@ $< $(ASMFLAGS)

$(NAME): 	$(OBJS) $(OBJASM)
			$(CC) $(LDFLAGS) $(OBJS) $(OBJASM) -o $(NAME)
run:
	@ ./$(NAME) --verbose
cov:
	gcc $(SRCS) -I include -lcriterion --coverage -o $(NAME_COVERAGE)
	./$(NAME_COVERAGE)
	$(RM) $(NAME_COVERAGE)
	mv *.gcno coverage
	mv *.gcda coverage
	lcov --capture --directory coverage --output-file $(FILE_COVERAGE)
	genhtml $(FILE_COVERAGE) --output-directory $(DIRECTORY_COVERAGE)
	firefox $(addprefix $(DIRECTORY_COVERAGE)/, index.html)

clean:
	$(RM) $(OBJS)
	$(RM) $(OBJASM)
	$(RM) coverage/*.gcno
	$(RM) coverage/*.gcda

fclean: clean
	$(RM) $(NAME)
	$(RM) $(FILE_COVERAGE)
	$(RM) -rf $(DIRECTORY_COVERAGE)

re: fclean all

.PHONY: clean fclean run re cov
