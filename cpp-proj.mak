# Make definitions for C++ projects

CXX			:=	g++
CXXFLAGS 	:=	-std=c++11 -Iinclude
TARGET		:=	$(PROJNAME)

SSRCS   	:=  $(wildcard src/*.cpp)
LSRCS   	:=  $(wildcard lib/*.cpp)

SOBJS   	:=  $(SSRCS:.cpp=.o)
LOBJS   	:=  $(LSRCS:.cpp=.o)
ALLOBJS 	:=  $((COBJS) $(LOBJS)

%.o:    %.cpp
	$(CXX) -c $(CXXFLAGS) -o $@ $<


.PHONY: cclean
cclean:	## clean C++ project object files
	$(RM) $(ALLOBJS) $(TARGET)

