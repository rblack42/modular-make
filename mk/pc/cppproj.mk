USRCS	:= $(wildcard src/*.cpp)
UOBJS	:= $(USRCS:.cpp=.o)

all:	$(TARGET)

$(TARGET):	$(UOBJS)
	$(CXX) -o $@ $^ 

%.o:	%.cpp
	$(CXX) -c -o $@ $<

