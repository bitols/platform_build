# Clang flags for mips arch, target or host.

CLANG_CONFIG_mips_EXTRA_ASFLAGS :=
CLANG_CONFIG_mips_EXTRA_CFLAGS :=
CLANG_CONFIG_mips_EXTRA_LDFLAGS :=

# Include common unknown flags
CLANG_CONFIG_mips_UNKNOWN_CFLAGS := \
  $(CLANG_CONFIG_UNKNOWN_CFLAGS) \
  -EL \
  -mips32 \
  -mips32r2 \
  -mhard-float \
  -fno-strict-volatile-bitfields \
  -fgcse-after-reload \
  -frerun-cse-after-loop \
  -frename-registers \
  -march=mips32r2 \
  -mtune=mips32r2 \
  -march=mips32 \
  -mtune=mips32 \
  -msynci \
  -mno-fused-madd

# We don't have any mips flags to substitute yet.
define subst-clang-incompatible-mips-flags
  $(1)
endef
