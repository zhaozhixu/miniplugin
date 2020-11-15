LN_ROOT ?= /home/zhixu/workspace/projects/LightNet
BUILDTOOLS_DIR := $(LN_ROOT)/tools/buildtools
include $(LN_ROOT)/config.mk
include $(BUILDTOOLS_DIR)/common.mk

TARGET := mini-plugin
SRC := plugin_op.c lrelu_cuda.c

.PHONY: all lib

all: lib

lib: $(OBJDIR)/$(TARGET).so

$(BUILD_DIR):
	$(AT)mkdir -p $@

$(OBJS): | $(BUILD_DIR)

$(OBJDIR)/$(TARGET).so: $(OBJS)
	$(call ld-so)

include $(BUILDTOOLS_DIR)/common_recipe.mk
