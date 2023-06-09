CC   := gcc
NAME := hashmap
ARGS :=

LOGFILE := compileLog

AVX2FLAGS := -mavx2

CFLAGS := $(AVX2FLAGS) -D _DEBUG  -std=c++20 -O3 -g -Wall -Wextra -Weffc++ -Waggressive-loop-optimizations -Wc++14-compat -Wmissing-declarations -Wcast-align -Wcast-qual -Wchar-subscripts -Wconditionally-supported -Wconversion -Wctor-dtor-privacy -Wempty-body -Wfloat-equal -Wformat-nonliteral -Wformat-security -Wformat-signedness -Wformat=2 -Winline -Wlogical-op -Wnon-virtual-dtor -Wopenmp-simd -Woverloaded-virtual -Wpacked -Wpointer-arith -Winit-self -Wredundant-decls -Wshadow -Wsign-conversion -Wsign-promo -Wstrict-null-sentinel -Wstrict-overflow=2 -Wsuggest-attribute=noreturn -Wsuggest-final-methods -Wsuggest-final-types -Wsuggest-override -Wswitch-default -Wswitch-enum -Wsync-nand -Wundef -Wunreachable-code -Wunused -Wuseless-cast -Wvariadic-macros -Wno-literal-suffix -Wno-missing-field-initializers -Wno-narrowing -Wno-old-style-cast -Wno-varargs -fcheck-new -fsized-deallocation -fstack-protector -fstrict-overflow -flto-odr-type-merging -fno-omit-frame-pointer -Wstack-usage=8192 -fPIE -Wstack-protector -Wpedantic -Wlarger-than=8192 #-fprofile-use
SANITIZERS := #-fsanitize=address,leak #,alignment,bool,bounds,enum,float-cast-overflow,float-divide-by-zero,integer-divide-by-zero,leak,nonnull-attribute,null,object-size,return,returns-nonnull-attribute,shift,signed-integer-overflow,undefined,unreachable,vla-bound,vptr
LFLAGS := -lpthread #-lasan

SRCDIR := src
SRCDIR := $(shell find $(SRCDIR) -type d)

OBJDIR := objects
INCDIR := include
INCDIR := $(shell find $(INCDIR) -type d)

DEPDIR := dependences

SOURCES     := $(wildcard $(addsuffix /*.cpp, $(if $(SRCDIR), $(SRCDIR), .)) )
OBJECTS     := $(patsubst %.cpp, $(if $(OBJDIR), $(OBJDIR)/%.o, ./%.o), $(notdir $(SOURCES)) )
DEPENDENCES := $(patsubst %.cpp, $(if $(DEPDIR), $(DEPDIR)/%.d, ./%.d), $(notdir $(SOURCES)) )

VPATH := $(SRCDIR)

.PHONY: clean cleanLog run  dependences cleanDependences makeDependencesDir \
				objects check openLog rebuild execute

$(NAME):  dependences objects $(OBJECTS) Hash cleanDependences
	@$(if $(OBJECTS), $(CC) $(OBJECTS) objects/asm_Hash.o $(LFLAGS) -o $@ #2>>$(LOGFILE))

clean:
	@rm -rf $(OBJECTS) $(DEPENDENCES) $(DEPDIR) $(NAME)

cleanLog:
	@rm -rd .log/

openLog:
	@xdg-open $(shell ls .log/*.html -t | head -1)

check: clean $(NAME)
	@$(if $(NAME), valgrind         \
				 --tool=callgrind 				\
         ./$(NAME) $(ARGS))

rebuild: clean $(NAME)

run: $(NAME)
	@$(if $(NAME), ./$(NAME) $(ARGS))

dependences: makeDependencesDir $(DEPENDENCES)

makeDependencesDir:
	@$(if $(DEPDIR), mkdir -p $(DEPDIR))

$(if $(DEPDIR), $(DEPDIR)/%.d, %.d): %.cpp
	@$(CC) -M $(addprefix -I, $(INCDIR)) $< -o $@ #2>>$(LOGFILE)

cleanDependences:
	@rm -rf $(DEPENDENCES) $(DEPDIR)

Hash: src/Hash.asm
	@nasm -f elf64 -g src/Hash.asm -O3 -o objects/asm_Hash.o

objects:
	@$(if $(OBJDIR), mkdir -p $(OBJDIR))

$(if $(OBJDIR), $(OBJDIR)/%.o, %.o): %.cpp
	@$(CC) -c $(addprefix -I, $(INCDIR)) -save-temps $(CFLAGS) $(SANITIZERS) $< -o $@ #2>>$(LOGFILE)

include $(wildcard $(DEPDIR)/*.d)
