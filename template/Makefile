# refer:https://gist.github.com/urin/5971408

COMPILER = g++
CFLAGS   = -g -MMD -MP -Wall -Wextra -Winit-self -Wno-unused-parameter -Wfloat-equal
LDFLAGS  =
LIBS     =
INCLUDE  = -I../inc
TARGET   = ../bin/$(shell basename `readlink -f ..`)
OBJDIR   = ./obj
ifeq "$(strip $(OBJDIR))" ""
  OBJDIR = .
  endif
  SOURCES  = $(wildcard *.cpp)
  OBJECTS  = $(addprefix $(OBJDIR)/, $(SOURCES:.cpp=.o))
  DEPENDS  = $(OBJECTS:.o=.d)

$(TARGET): $(OBJECTS) $(LIBS)
	$(COMPILER) -o $@ $^ $(LDFLAGS)

$(OBJDIR)/%.o: %.cpp
	@[ -d $(OBJDIR) ] || mkdir -p $(OBJDIR)
	$(COMPILER) $(CFLAGS) $(INCLUDE) -o $@ -c $<

all: clean $(TARGET)

clean:
	rm -f $(OBJECTS) $(DEPENDS) $(TARGET)
	@rmdir --ignore-fail-on-non-empty `readlink -f $(OBJDIR)`

-include $(DEPENDS)

