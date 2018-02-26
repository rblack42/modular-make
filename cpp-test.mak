# Makefile definitions for testing C++ projects using catch.hpp

TPROG   :=  test-pgm

TSRCS   :=  $(wildcard tests/*.cpp)
TOBJS   :=  $(TSRCS:.cpp=.o)

ALLOBJS	+=	$(TOBJS)

TARGET	+=	$(TPROG)

$(TPROG):   $(TOBJS) 
	$(CXX) -o $@ $^

.PHONY:	tclean
tclean:	## clean C++ test files
	$(RM) $(TPROG) $(TOBJS)
