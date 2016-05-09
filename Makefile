MLDIR = /Applications/Mathematica.app/Contents/SystemFiles/Links/WSTP/DeveloperKit/MacOSX-x86-64/CompilerAdditions/
MMALIBDIR = $(MLDIR)


CC = g++
LD = g++
CFLAGS = -Wall -O3
LIBS = -Llib -L$(MLDIR) -L$(MMALIBDIR) -lWSTPi4 -stdlib=libstdc++ -framework Foundation -lc++
INCLUDE = -Iinclude -I$(MLDIR)
OBJS  = $(patsubst src/%.cc,lib/%.o,$(wildcard src/*.cc))
EXECS = $(patsubst exe/%.cc,bin/%,$(wildcard exe/*.cc))
EXEOBJS  = $(patsubst exe/%.cc,lib/%.o,$(wildcard exe/*.cc))
MLOBJS  = $(patsubst wstp/%.tm,lib/%_tm.o,$(wildcard wstp/*.tm))
MLCCS  = $(patsubst wstp/%.tm,wstp/%_tm.cc,$(wildcard wstp/*.tm))


MPREP = $(MLDIR)/wsprep


all: $(MLCCS) $(MLOBJS) $(OBJS) $(EXEOBJS) $(EXECS)

print:
	echo $(MLCCS)
	echo $(MLOBJS)
	echo $(OBJS)
	echo $(EXEOBJS)
	echo $(EXECS)


wstp/%_tm.cc : wstp/%.tm
	$(MPREP) $< -o $@

lib/%.o : src/%.cc
	$(CC) -Wall $(CFLAGS) $(INCLUDE) -c $< -o $@

lib/%.o : exe/%.cc
	$(CC) -Wall $(CFLAGS) $(INCLUDE) -c $< -o $@

lib/%.o : $(MLCCS)
	$(CC) -Wall $(CFLAGS) $(INCLUDE) -c $< -o $@


bin/% : $(MLOBJS) $(OBJS) $(EXEOBJS)
	$(LD) $(LIBS) $(OBJS) $(MLOBJS) lib/$*.o -o bin/$*





clean:
	rm -f $(MLCCS) $(MLOBJS) $(OBJS) $(EXEOBJS) $(EXECS)

