############################################################################
# apps/external/sqlite/Makefile
#
#   Copyright 2018 Sony Video & Sound Products Inc.
#   Author: Masayuki Ishikawa <Masayuki.Ishikawa@jp.sony.com>
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions
# are met:
#
# 1. Redistributions of source code must retain the above copyright
#    notice, this list of conditions and the following disclaimer.
# 2. Redistributions in binary form must reproduce the above copyright
#    notice, this list of conditions and the following disclaimer in
#    the documentation and/or other materials provided with the
#    distribution.
# 3. Neither the name NuttX nor the names of its contributors may be
#    used to endorse or promote products derived from this software
#    without specific prior written permission.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
# "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
# LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
# FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
# COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
# INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
# BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS
# OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED
# AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
# LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
# ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
# POSSIBILITY OF SUCH DAMAGE.
#
############################################################################

-include $(TOPDIR)/.config
-include $(TOPDIR)/Make.defs
include $(APPDIR)/Make.defs

CFLAGS += -DNUTTX -DNDEBUG=1
CFLAGS += -DSQLITE_MAX_MEMORY=262144
CFLAGS += -I. -I./src -I./ext/rtree -I./ext/icu -I./ext/fts3 -I./ext/async

ASRCS	=
CSRCS	=

CSRCS  += ./parse.c
CSRCS  += ./src/vdbe.c
CSRCS  += ./src/alter.c
CSRCS  += ./src/analyze.c
CSRCS  += ./src/attach.c
CSRCS  += ./src/auth.c
CSRCS  += ./src/backup.c
CSRCS  += ./src/bitvec.c
CSRCS  += ./src/btmutex.c
CSRCS  += ./src/btree.c
CSRCS  += ./src/build.c
CSRCS  += ./src/callback.c
CSRCS  += ./src/complete.c
CSRCS  += ./src/ctime.c
CSRCS  += ./src/date.c
CSRCS  += ./src/dbpage.c
CSRCS  += ./src/dbstat.c
CSRCS  += ./src/delete.c
CSRCS  += ./src/expr.c
CSRCS  += ./src/fault.c
CSRCS  += ./src/fkey.c
CSRCS  += ./ext/fts3/fts3.c
CSRCS  += ./ext/fts3/fts3_aux.c
CSRCS  += ./ext/fts3/fts3_expr.c
CSRCS  += ./ext/fts3/fts3_hash.c
CSRCS  += ./ext/fts3/fts3_icu.c
CSRCS  += ./ext/fts3/fts3_porter.c
CSRCS  += ./ext/fts3/fts3_snippet.c
CSRCS  += ./ext/fts3/fts3_tokenizer.c
CSRCS  += ./ext/fts3/fts3_tokenizer1.c
CSRCS  += ./ext/fts3/fts3_tokenize_vtab.c
CSRCS  += ./ext/fts3/fts3_unicode.c
CSRCS  += ./ext/fts3/fts3_unicode2.c
CSRCS  += ./ext/fts3/fts3_write.c
CSRCS  += ./fts5.c
CSRCS  += ./src/func.c
CSRCS  += ./src/global.c
CSRCS  += ./src/hash.c
#CSRCS  += ./ext/icu/icu.c
CSRCS  += ./src/insert.c
CSRCS  += ./ext/misc/json1.c
CSRCS  += ./src/legacy.c
CSRCS  += ./src/loadext.c
CSRCS  += ./src/main.c
CSRCS  += ./src/malloc.c
CSRCS  += ./src/mem0.c
CSRCS  += ./src/mem1.c
CSRCS  += ./src/mem2.c
CSRCS  += ./src/mem3.c
CSRCS  += ./src/mem5.c
CSRCS  += ./src/memdb.c
CSRCS  += ./src/memjournal.c
CSRCS  += ./src/mutex.c
CSRCS  += ./src/mutex_noop.c
CSRCS  += ./src/mutex_unix.c
CSRCS  += ./src/notify.c
CSRCS  += ./opcodes.c
CSRCS  += ./src/os.c
CSRCS  += ./src/os_unix.c
CSRCS  += ./src/pager.c
CSRCS  += ./src/pcache.c
CSRCS  += ./src/pcache1.c
CSRCS  += ./src/pragma.c
CSRCS  += ./src/prepare.c
CSRCS  += ./src/printf.c
CSRCS  += ./src/random.c
CSRCS  += ./src/resolve.c
CSRCS  += ./src/rowset.c
CSRCS  += ./ext/rtree/rtree.c
CSRCS  += ./src/select.c
CSRCS  += ./ext/rbu/sqlite3rbu.c
CSRCS  += ./src/status.c
CSRCS  += ./ext/misc/stmt.c
CSRCS  += ./src/table.c
CSRCS  += ./src/threads.c
CSRCS  += ./src/tokenize.c
CSRCS  += ./src/treeview.c
CSRCS  += ./src/trigger.c
CSRCS  += ./src/update.c
CSRCS  += ./src/upsert.c
CSRCS  += ./ext/userauth/userauth.c
CSRCS  += ./src/util.c
CSRCS  += ./src/vacuum.c
CSRCS  += ./src/vdbeapi.c
CSRCS  += ./src/vdbeaux.c
CSRCS  += ./src/vdbeblob.c
CSRCS  += ./src/vdbemem.c
CSRCS  += ./src/vdbesort.c
CSRCS  += ./src/vdbetrace.c
#CSRCS  += ./src/wal.c
CSRCS  += ./src/walker.c
CSRCS  += ./src/where.c
CSRCS  += ./src/wherecode.c
CSRCS  += ./src/whereexpr.c
CSRCS  += ./src/utf.c
CSRCS  += ./src/vtab.c
CSRCS  += ./src/window.c
CSRCS  += ./ext/session/sqlite3session.c

AOBJS	= $(ASRCS:.S=$(OBJEXT))
COBJS	= $(CSRCS:.c=$(OBJEXT))

SRCS	= $(ASRCS) $(CSRCS)
OBJS	= $(AOBJS) $(COBJS)

ifeq ($(CONFIG_WINDOWS_NATIVE),y)
  BIN	= $(TOPDIR)\staging\libsqlite$(LIBEXT)
else
ifeq ($(WINTOOL),y)
  BIN	= $(TOPDIR)\\staging\\libsqlite$(LIBEXT)
else
  BIN	= $(TOPDIR)/staging/libsqlite$(LIBEXT)
endif
endif

ROOTDEPPATH	= --dep-path .

# Common build

VPATH	=

all: .built
.PHONY: context depend clean distclean preconfig
.PRECIOUS: $(TOPDIR)/staging/libsqlite$(LIBEXT)

$(AOBJS): %$(OBJEXT): %.S
	$(call ASSEMBLE, $<, $@)

$(COBJS): %$(OBJEXT): %.c
	$(call COMPILE, $<, $@)

.built: $(OBJS)
	$(call ARCHIVE, $(BIN), $(OBJS))
	$(Q) touch .built

install:

context:

.depend: Makefile $(SRCS)
	$(Q) $(MKDEP) $(ROOTDEPPATH) "$(CC)" -- $(CFLAGS) -- $(SRCS) >Make.dep
	$(Q) touch $@

depend: .depend

clean:
	$(call DELFILE, .built)
	$(call CLEAN)

distclean: clean
	$(call DELFILE, Make.dep)
	$(call DELFILE, .depend)

preconfig:

-include Make.dep
