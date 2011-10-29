ifndef QCONFIG
QCONFIG=qconfig.mk
endif
include $(QCONFIG)

NAME=vorbisfile

#===== EXTRA_INCVPATH - a space-separated list of directories to search for include files.
EXTRA_INCVPATH+=$(PRODUCT_ROOT)/../include \
    $(PRODUCT_ROOT)/../lib \
    $(PRODUCT_ROOT)/../lib/modes \
    $(PRODUCT_ROOT)/../ogg/include

#===== EXTRA_SRCVPATH - a space-separated list of directories to search for source files.
EXTRA_SRCVPATH+=$(PRODUCT_ROOT)/../lib

EXCLUDE_OBJS=mdct.o smallft.o block.o envelope.o window.o lsp.o lpc.o analysis.o \
    synthesis.o psy.o info.o floor1.o floor0.o res0.o mapping0.o registry.o \
    codebook.o sharedbook.o lookup.o bitrate.o vorbisenc.o barkmel.o tone.o

INSTALLDIR=$(firstword $(INSTALLDIR_$(OS)) usr/lib)
	
include $(MKFILES_ROOT)/qtargets.mk

OPTIMIZE_TYPE_g=none
OPTIMIZE_TYPE=$(OPTIMIZE_TYPE_$(filter g, $(VARIANTS)))
