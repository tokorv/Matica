CC = g++  # C compiler
CFLAGS = -fPIC -Wall -Wextra -O2 -g  # C flags
LDFLAGS = -shared   # linking flags
RM = rm -f   # rm command
TARGET_LIB = lib/libmatica.so  # target lib

SRCS = $(wildcard src/*.cpp)
OBJS = $(SRCS:src/%.cpp=lib/%.o)

.PHONY: all

all: $(TARGET_LIB)

$(TARGET_LIB): %.o
	$(CC) $(LDFLAGS) -o $@ lib/$(OBJS)

%.o: %.cpp
	$(CC) $(CFLAGS) -o lib/$@ $<


