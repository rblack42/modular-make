HDRS	:= $(shell python mk/pyfind.py include .h)

USRCS	:= $(wildcard src/*.cpp)
LSRCS	:= $(shell python mk/pyfind.py lib .cpp)
TSRCS	:= $(wildcard tests/*.cpp)
SRCS    := $(USRCS) $(LSRCS) $(TSRCS)

UOBJS   := $(USRCS:.cpp=.o)
LOBJS   := $(LSRCS:.cpp=.o)
TOBJS   := $(TSRCS:.cpp=.o)
OBJS    := $(UOBJS) $(LOBJS) $(TOBJS)
ifeq ($(PLATFORM), Windows)
	DOBJS = $(subst /,\,$(OBJS))
else
	DOBJS = OBJS
endif


CXXFLAGS	:= -std=c++11 -Iinclude

.PHONY: all
all: $(TARGET) ## build application (default)

$(TARGET):	$(UOBJS) $(LOBJS)
	$(CXX) -o $@ $^ $(LFLAGS)

%.o:	%.cpp
	$(CXX) -c -o $@ $< $(CXXFLAGS)

.PHONY: clean ## remove all build artifacts
	$(DEL) $(DOBJS)

