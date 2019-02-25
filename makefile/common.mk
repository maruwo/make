TAGDIR  := ../build
OBJDIR  := $(TAGDIR)/obj

ifeq ($(BUILD_TYPE),LIB)

#$(warning ========== LIB ==========)
LDFLAGS += -shared -fPIC

else ifeq ($(BUILD_TYPE),USE_LIB)

#$(warning ========== USE ==========)
INCLUDE += -I../lib
LDFLAGS += -L$(TAGDIR) -lmylib

else

#$(warning ========== ELS ==========)
# nop()

endif

INCLUDE += -Ilib
CFLAGS  += -g -O0 -Wall -MMD -MP
CFLAGS  += $(INCLUDE)
LDFLAGS += -lpthread

OBJS   := $(SRCS:%.c=$(OBJDIR)/%.o)
DEPS   := $(OBJS:%.o=$(OBJDIR)/%.d)
TARGET := $(TAGDIR)/$(TAGNAME)

$(OBJDIR)/%.o: %.c
	@mkdir -p $(dir $@)
	@$(CC) $(CFLAGS) -c $< -o $@ 

$(TARGET): $(OBJS)
	@mkdir -p $(dir $@)
	@$(CC) $(OBJS) -o $@ $(LDFLAGS)

.PHONY: all
all: $(TARGET)

.PHONY: clean
clean:
	@rm -rf $(TAGDIR)/*
