CC := gcc
LD := gcc
AR := ar
top := $(shell pwd)
inc := -I$(top)/include
cflags := -c -O $(inc)
ldflags :=
arflags :=
objs := $(patsubst %.c,%.o,$(wildcard *.c))
dirs :=
ifneq($(dirs),)
libs := $(foreach dir,$(dirs),$(dir)/lib$(dir).a) 
endif
target := helloword
all:$(target) 
$(target):$(objs)
  $(LD) $(ldflags) $^ -o $@
.c.o:
  $(CC) $(cflags) $< -o $@
lib:$(dirs)
ifneq($(dirs),)
  -make $(MAKECMDGOALS) -C $@
endif
.PHONY:all clean lib
  -rm $(objs)
  -rm $(target)
