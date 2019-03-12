##
## EPITECH PROJECT, 2019
## ASM_minilibc_2018
## File description:
## Makefile
##

NAME	=	libasm.so

SRC		=	src/memcpy.asm		\
			src/memmove.asm		\
			src/memset.asm		\
			src/rindex.asm		\
			src/strcasecmp.asm	\
			src/strchr.asm		\
			src/strcmp.asm		\
			src/strcspn.asm		\
			src/strlen.asm		\
			src/strncmp.asm		\
			src/strpbrk.asm		\
			src/strstr.asm

ASM		=	nasm

AFLAGS	=	-f elf64

LD		=	gcc

CFLAGS	=	-fPIC -shared

OBJ	=	$(SRC:.asm=.o)

%.o:	%.asm
	$(ASM) $(AFLAGS) $< -o $@

all:		$(NAME)

$(NAME):	$(OBJ)
		$(LD) $(CFLAGS) -o $(NAME) $(OBJ)

clean:
		rm -f $(OBJ)
		rm -f a.out

fclean:		clean
		rm -f $(NAME)

re:			fclean all