cmd_scripts/mod/modpost.o := gcc -Wp,-MMD,scripts/mod/.modpost.o.d -Wall -Wmissing-prototypes -Wstrict-prototypes -O2 -fomit-frame-pointer -std=gnu11 -Wdeclaration-after-statement  -O2 -I/builder/shared-workdir/build/staging_dir/host/include  -Wall -Wmissing-prototypes -Wstrict-prototypes   -I/builder/shared-workdir/build/staging_dir/host/include  -c -o scripts/mod/modpost.o scripts/mod/modpost.c

source_scripts/mod/modpost.o := scripts/mod/modpost.c

deps_scripts/mod/modpost.o := \
    $(wildcard include/config/MODVERSIONS) \
    $(wildcard include/config/MODULE_SRCVERSION_ALL) \
    $(wildcard include/config/RELOCATABLE) \
    $(wildcard include/config/MODULE_STRIPPED) \
    $(wildcard include/config/MODULE_UNLOAD) \
    $(wildcard include/config/RETPOLINE) \
    $(wildcard include/config/SECTION_MISMATCH_WARN_ONLY) \
  /builder/shared-workdir/build/staging_dir/host/include/elf.h \
  scripts/mod/modpost.h \
  scripts/mod/elfconfig.h \
  scripts/mod/../../include/linux/license.h \

scripts/mod/modpost.o: $(deps_scripts/mod/modpost.o)

$(deps_scripts/mod/modpost.o):
