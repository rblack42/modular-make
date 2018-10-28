ifeq ($(OS), Windows_NT)
	EXT = .exe
	PREFIX =
	RM	= del
	WHICH = where
	PLATFORM = Windows
    PROJPATH = $(CURDIR)
	include $(wildcard mk/pc/*.mk)
else
	EXT =
	RM 	= rm -f
	PREFIX = ./
	WHICH = which
	UNAME_S := $(shell uname -s)
	ifeq ($(UNAME_S), Linux)
	 	PLATFORM = Linux
	include $(wildcard mk/linux/*.mk)
	endif
	ifeq ($(UNAME_S), Darwin)
		PLATFORM = Mac
	include $(wildcard mk/mac/*.mk)
	endif
endif

