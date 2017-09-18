
CC = gcc
OC = g++
PP = g++
LINK = g++

oc_files = main.m volumn.m
cc_files = format_output.c
cpp_files = stl.cc
obj_files = $(oc_files:%.m=%.o) $(cc_files:%.c=%.o) $(cpp_files:%.cc=%.o)
exe_files = trial

$(exe_files) : $(obj_files)
	$(LINK) -o $(exe_files) $(obj_files) -fconstant-string-class=NSConstantString -L/GNUstep/System/Library/Libraries -lobjc -lgnustep-base

%.o : %.c
	$(CC) -c $< -o $@

%.o : %.m
	$(OC) -c $< -o $@ -I/GNUstep/System/Library/Headers -fconstant-string-class=NSConstantString

%.o : %.cc
	$(PP) -c $< -o $@

clean:
	-rm $(exe_files).exe
	-rm *.o

