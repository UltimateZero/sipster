# This file is generated by gyp; do not edit.

TOOLSET := target
TARGET := sipster
DEFS_Debug := \
	'-DNODE_GYP_MODULE_NAME=sipster' \
	'-DUSING_UV_SHARED=1' \
	'-DUSING_V8_SHARED=1' \
	'-DV8_DEPRECATION_WARNINGS=1' \
	'-DV8_DEPRECATION_WARNINGS' \
	'-DV8_IMMINENT_DEPRECATION_WARNINGS' \
	'-D_LARGEFILE_SOURCE' \
	'-D_FILE_OFFSET_BITS=64' \
	'-D__STDC_FORMAT_MACROS' \
	'-DOPENSSL_NO_PINSHARED' \
	'-DOPENSSL_THREADS' \
	'-DBUILDING_NODE_EXTENSION' \
	'-DDEBUG' \
	'-D_DEBUG' \
	'-DV8_ENABLE_CHECKS'

# Flags passed to all source files.
CFLAGS_Debug := \
	-fPIC \
	-pthread \
	-Wall \
	-Wextra \
	-Wno-unused-parameter \
	-m64 \
	-g \
	-O0

# Flags passed to only C files.
CFLAGS_C_Debug :=

# Flags passed to only C++ files.
CFLAGS_CC_Debug := \
	-fno-rtti \
	-fno-exceptions \
	-std=gnu++1y \
	-flto \
	-fPIC \
	-DPJ_AUTOCONF=1 \
	-flto \
	-fPIC \
	-DPJ_IS_BIG_ENDIAN=0 \
	-DPJ_IS_LITTLE_ENDIAN=1 \
	-fPIC \
	-I/usr/local/include \
	-fexceptions \
	-Wno-maybe-uninitialized \
	-fPIC \
	-flto

INCS_Debug := \
	-I/home/taha/.cache/node-gyp/14.15.5/include/node \
	-I/home/taha/.cache/node-gyp/14.15.5/src \
	-I/home/taha/.cache/node-gyp/14.15.5/deps/openssl/config \
	-I/home/taha/.cache/node-gyp/14.15.5/deps/openssl/openssl/include \
	-I/home/taha/.cache/node-gyp/14.15.5/deps/uv/include \
	-I/home/taha/.cache/node-gyp/14.15.5/deps/zlib \
	-I/home/taha/.cache/node-gyp/14.15.5/deps/v8/include \
	-I$(srcdir)/src \
	-I$(srcdir)/node_modules/nan

DEFS_Release := \
	'-DNODE_GYP_MODULE_NAME=sipster' \
	'-DUSING_UV_SHARED=1' \
	'-DUSING_V8_SHARED=1' \
	'-DV8_DEPRECATION_WARNINGS=1' \
	'-DV8_DEPRECATION_WARNINGS' \
	'-DV8_IMMINENT_DEPRECATION_WARNINGS' \
	'-D_LARGEFILE_SOURCE' \
	'-D_FILE_OFFSET_BITS=64' \
	'-D__STDC_FORMAT_MACROS' \
	'-DOPENSSL_NO_PINSHARED' \
	'-DOPENSSL_THREADS' \
	'-DBUILDING_NODE_EXTENSION'

# Flags passed to all source files.
CFLAGS_Release := \
	-fPIC \
	-pthread \
	-Wall \
	-Wextra \
	-Wno-unused-parameter \
	-m64 \
	-O3 \
	-fno-omit-frame-pointer

# Flags passed to only C files.
CFLAGS_C_Release :=

# Flags passed to only C++ files.
CFLAGS_CC_Release := \
	-fno-rtti \
	-fno-exceptions \
	-std=gnu++1y \
	-flto \
	-fPIC \
	-DPJ_AUTOCONF=1 \
	-flto \
	-fPIC \
	-DPJ_IS_BIG_ENDIAN=0 \
	-DPJ_IS_LITTLE_ENDIAN=1 \
	-fPIC \
	-I/usr/local/include \
	-fexceptions \
	-Wno-maybe-uninitialized \
	-fPIC \
	-flto

INCS_Release := \
	-I/home/taha/.cache/node-gyp/14.15.5/include/node \
	-I/home/taha/.cache/node-gyp/14.15.5/src \
	-I/home/taha/.cache/node-gyp/14.15.5/deps/openssl/config \
	-I/home/taha/.cache/node-gyp/14.15.5/deps/openssl/openssl/include \
	-I/home/taha/.cache/node-gyp/14.15.5/deps/uv/include \
	-I/home/taha/.cache/node-gyp/14.15.5/deps/zlib \
	-I/home/taha/.cache/node-gyp/14.15.5/deps/v8/include \
	-I$(srcdir)/src \
	-I$(srcdir)/node_modules/nan

OBJS := \
	$(obj).target/$(TARGET)/src/binding.o \
	$(obj).target/$(TARGET)/src/SIPSTERAccount.o \
	$(obj).target/$(TARGET)/src/SIPSTERCall.o \
	$(obj).target/$(TARGET)/src/SIPSTERMedia.o \
	$(obj).target/$(TARGET)/src/SIPSTERTransport.o

# Add to the list of files we specially track dependencies for.
all_deps += $(OBJS)

# CFLAGS et al overrides must be target-local.
# See "Target-specific Variable Values" in the GNU Make manual.
$(OBJS): TOOLSET := $(TOOLSET)
$(OBJS): GYP_CFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_C_$(BUILDTYPE))
$(OBJS): GYP_CXXFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_CC_$(BUILDTYPE))

# Suffix rules, putting all outputs into $(obj).

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(srcdir)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# Try building from generated source, too.

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj).$(TOOLSET)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# End of this set of suffix rules
### Rules for final target.
LDFLAGS_Debug := \
	-pthread \
	-rdynamic \
	-m64

LDFLAGS_Release := \
	-pthread \
	-rdynamic \
	-m64

LIBS := \
	-L/usr/local/lib \
	-lpjsua2 \
	-lstdc++ \
	-lpjsua \
	-lpjsip-ua \
	-lpjsip-simple \
	-lpjsip \
	-lpjmedia-codec \
	-lpjmedia \
	-lpjmedia-videodev \
	-lpjmedia-audiodev \
	-lpjnath \
	-lpjlib-util \
	-lsrtp \
	-lresample \
	-lgsmcodec \
	-lspeex \
	-lilbccodec \
	-lg7221codec \
	-lpj \
	-lm \
	-lrt \
	-lpthread

$(obj).target/sipster.node: GYP_LDFLAGS := $(LDFLAGS_$(BUILDTYPE))
$(obj).target/sipster.node: LIBS := $(LIBS)
$(obj).target/sipster.node: TOOLSET := $(TOOLSET)
$(obj).target/sipster.node: $(OBJS) FORCE_DO_CMD
	$(call do_cmd,solink_module)

all_deps += $(obj).target/sipster.node
# Add target alias
.PHONY: sipster
sipster: $(builddir)/sipster.node

# Copy this to the executable output path.
$(builddir)/sipster.node: TOOLSET := $(TOOLSET)
$(builddir)/sipster.node: $(obj).target/sipster.node FORCE_DO_CMD
	$(call do_cmd,copy)

all_deps += $(builddir)/sipster.node
# Short alias for building this executable.
.PHONY: sipster.node
sipster.node: $(obj).target/sipster.node $(builddir)/sipster.node

# Add executable to "all" target.
.PHONY: all
all: $(builddir)/sipster.node
