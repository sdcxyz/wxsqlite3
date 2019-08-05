# Alternative GNU Make project makefile autogenerated by Premake

ifndef config
  config=debug_x32
endif

ifndef verbose
  SILENT = @
endif

.PHONY: clean prebuild

SHELLTYPE := posix
ifeq (.exe,$(findstring .exe,$(ComSpec)))
	SHELLTYPE := msdos
endif

# Configurations
# #############################################

RESCOMP = windres
FORCE_INCLUDE +=
ALL_CPPFLAGS += $(CPPFLAGS) -MMD -MP $(DEFINES) $(INCLUDES)
ALL_RESFLAGS += $(RESFLAGS) $(DEFINES) $(INCLUDES)
LINKCMD = $(CXX) -o "$@" $(OBJECTS) $(RESOURCES) $(ALL_LDFLAGS) $(LIBS)
include config.gcc

define PREBUILDCMDS
endef
define PRELINKCMDS
endef
define POSTBUILDCMDS
endef

ifeq ($(config),debug_x32)
TARGETDIR = bin/x32/Debug
TARGET = $(TARGETDIR)/treeviewd.exe
OBJDIR = obj/x32/Debug/treeview
DEFINES += -D_WINDOWS -D_CRT_SECURE_NO_WARNINGS -D_CRT_SECURE_NO_DEPRECATE -D_CRT_NONSTDC_NO_DEPRECATE -DDEBUG -D_DEBUG -DWXUSINGLIB_WXSQLITE3 -D_UNICODE -D__WXDEBUG__ -D__WXMSW__
INCLUDES += -I"$(wxRootDir)/lib/$(wxCompilerPrefix)$(wxArchSuffix)_lib/msw$(wxSuffix)" -I"$(wxRootDir)/include" -I../samples/treeview -I../include
ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -m32 -g
ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -m32 -g
LIBS += ../lib/gcc_lib/libwxsqlite3$(wxFlavour)d.a -l$(wxToolkitLibNamePrefix)adv -l$(wxToolkitLibNamePrefix)core -l$(wxBaseLibNamePrefix)_xml -l$(wxBaseLibNamePrefix) -lwxjpeg$(wxSuffixDebug) -lwxpng$(wxSuffixDebug) -lwxzlib$(wxSuffixDebug) -lwxtiff$(wxSuffixDebug) -lwxexpat$(wxSuffixDebug) -lwxregex$(wxSuffix) -lcomctl32 -lrpcrt4 -lshell32 -lgdi32 -lkernel32 -luser32 -lcomdlg32 -lole32 -loleaut32 -ladvapi32 -loleacc -lwinspool -lwinmm -lshlwapi -luuid -lversion -lwsock32 -lwininet -luxtheme
LDDEPS += ../lib/gcc_lib/libwxsqlite3$(wxFlavour)d.a
ALL_LDFLAGS += $(LDFLAGS) -L"$(wxRootDir)/lib/$(wxCompilerPrefix)$(wxArchSuffix)_lib" -L/usr/lib32 -m32 -mwindows

else ifeq ($(config),debug_x64)
TARGETDIR = bin/x64/Debug
TARGET = $(TARGETDIR)/treeviewd.exe
OBJDIR = obj/x64/Debug/treeview
DEFINES += -D_WINDOWS -D_CRT_SECURE_NO_WARNINGS -D_CRT_SECURE_NO_DEPRECATE -D_CRT_NONSTDC_NO_DEPRECATE -DDEBUG -D_DEBUG -DWXUSINGLIB_WXSQLITE3 -D_UNICODE -D__WXDEBUG__ -D__WXMSW__
INCLUDES += -I"$(wxRootDir)/lib/$(wxCompilerPrefix)$(wxArchSuffix)_lib/msw$(wxSuffix)" -I"$(wxRootDir)/include" -I../samples/treeview -I../include
ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -m64 -g
ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -m64 -g
LIBS += ../lib/gcc_x64_lib/libwxsqlite3$(wxFlavour)d.a -l$(wxToolkitLibNamePrefix)adv -l$(wxToolkitLibNamePrefix)core -l$(wxBaseLibNamePrefix)_xml -l$(wxBaseLibNamePrefix) -lwxjpeg$(wxSuffixDebug) -lwxpng$(wxSuffixDebug) -lwxzlib$(wxSuffixDebug) -lwxtiff$(wxSuffixDebug) -lwxexpat$(wxSuffixDebug) -lwxregex$(wxSuffix) -lcomctl32 -lrpcrt4 -lshell32 -lgdi32 -lkernel32 -luser32 -lcomdlg32 -lole32 -loleaut32 -ladvapi32 -loleacc -lwinspool -lwinmm -lshlwapi -luuid -lversion -lwsock32 -lwininet -luxtheme
LDDEPS += ../lib/gcc_x64_lib/libwxsqlite3$(wxFlavour)d.a
ALL_LDFLAGS += $(LDFLAGS) -L"$(wxRootDir)/lib/$(wxCompilerPrefix)$(wxArchSuffix)_lib" -L/usr/lib64 -m64 -mwindows

else ifeq ($(config),release_x32)
TARGETDIR = bin/x32/Release
TARGET = $(TARGETDIR)/treeview.exe
OBJDIR = obj/x32/Release/treeview
DEFINES += -D_WINDOWS -D_CRT_SECURE_NO_WARNINGS -D_CRT_SECURE_NO_DEPRECATE -D_CRT_NONSTDC_NO_DEPRECATE -DNDEBUG -DWXUSINGLIB_WXSQLITE3 -D_UNICODE -D__WXMSW__
INCLUDES += -I"$(wxRootDir)/lib/$(wxCompilerPrefix)$(wxArchSuffix)_lib/msw$(wxSuffix)" -I"$(wxRootDir)/include" -I../samples/treeview -I../include
ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -m32 -O2
ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -m32 -O2
LIBS += ../lib/gcc_lib/libwxsqlite3$(wxFlavour).a -l$(wxToolkitLibNamePrefix)adv -l$(wxToolkitLibNamePrefix)core -l$(wxBaseLibNamePrefix)_xml -l$(wxBaseLibNamePrefix) -lwxjpeg$(wxSuffixDebug) -lwxpng$(wxSuffixDebug) -lwxzlib$(wxSuffixDebug) -lwxtiff$(wxSuffixDebug) -lwxexpat$(wxSuffixDebug) -lwxregex$(wxSuffix) -lcomctl32 -lrpcrt4 -lshell32 -lgdi32 -lkernel32 -luser32 -lcomdlg32 -lole32 -loleaut32 -ladvapi32 -loleacc -lwinspool -lwinmm -lshlwapi -luuid -lversion -lwsock32 -lwininet -luxtheme
LDDEPS += ../lib/gcc_lib/libwxsqlite3$(wxFlavour).a
ALL_LDFLAGS += $(LDFLAGS) -L"$(wxRootDir)/lib/$(wxCompilerPrefix)$(wxArchSuffix)_lib" -L/usr/lib32 -m32 -mwindows -s

else ifeq ($(config),release_x64)
TARGETDIR = bin/x64/Release
TARGET = $(TARGETDIR)/treeview.exe
OBJDIR = obj/x64/Release/treeview
DEFINES += -D_WINDOWS -D_CRT_SECURE_NO_WARNINGS -D_CRT_SECURE_NO_DEPRECATE -D_CRT_NONSTDC_NO_DEPRECATE -DNDEBUG -DWXUSINGLIB_WXSQLITE3 -D_UNICODE -D__WXMSW__
INCLUDES += -I"$(wxRootDir)/lib/$(wxCompilerPrefix)$(wxArchSuffix)_lib/msw$(wxSuffix)" -I"$(wxRootDir)/include" -I../samples/treeview -I../include
ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -m64 -O2
ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -m64 -O2
LIBS += ../lib/gcc_x64_lib/libwxsqlite3$(wxFlavour).a -l$(wxToolkitLibNamePrefix)adv -l$(wxToolkitLibNamePrefix)core -l$(wxBaseLibNamePrefix)_xml -l$(wxBaseLibNamePrefix) -lwxjpeg$(wxSuffixDebug) -lwxpng$(wxSuffixDebug) -lwxzlib$(wxSuffixDebug) -lwxtiff$(wxSuffixDebug) -lwxexpat$(wxSuffixDebug) -lwxregex$(wxSuffix) -lcomctl32 -lrpcrt4 -lshell32 -lgdi32 -lkernel32 -luser32 -lcomdlg32 -lole32 -loleaut32 -ladvapi32 -loleacc -lwinspool -lwinmm -lshlwapi -luuid -lversion -lwsock32 -lwininet -luxtheme
LDDEPS += ../lib/gcc_x64_lib/libwxsqlite3$(wxFlavour).a
ALL_LDFLAGS += $(LDFLAGS) -L"$(wxRootDir)/lib/$(wxCompilerPrefix)$(wxArchSuffix)_lib" -L/usr/lib64 -m64 -mwindows -s

else ifeq ($(config),debug_wxdll_x32)
TARGETDIR = bin/x32/Debug_wxDLL
TARGET = $(TARGETDIR)/treeviewd.exe
OBJDIR = obj/x32/Debug_wxDLL/treeview
DEFINES += -D_WINDOWS -D_CRT_SECURE_NO_WARNINGS -D_CRT_SECURE_NO_DEPRECATE -D_CRT_NONSTDC_NO_DEPRECATE -DDEBUG -D_DEBUG -DWXUSINGLIB_WXSQLITE3 -D_UNICODE -D__WXDEBUG__ -DWXUSINGDLL -D__WXMSW__
INCLUDES += -I"$(wxRootDir)/lib/$(wxCompilerPrefix)$(wxArchSuffix)_dll/msw$(wxSuffix)" -I"$(wxRootDir)/include" -I../samples/treeview -I../include
ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -m32 -g
ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -m32 -g
LIBS += ../lib/gcc_lib_wxdll/libwxsqlite3$(wxFlavour)d.a -l$(wxToolkitLibNamePrefix)adv -l$(wxToolkitLibNamePrefix)core -l$(wxBaseLibNamePrefix)_xml -l$(wxBaseLibNamePrefix) -lwxjpeg$(wxSuffixDebug) -lwxpng$(wxSuffixDebug) -lwxzlib$(wxSuffixDebug) -lwxtiff$(wxSuffixDebug) -lwxexpat$(wxSuffixDebug) -lwxregex$(wxSuffix) -lcomctl32 -lrpcrt4 -lshell32 -lgdi32 -lkernel32 -luser32 -lcomdlg32 -lole32 -loleaut32 -ladvapi32 -loleacc -lwinspool -lwinmm -lshlwapi -luuid -lversion -lwsock32 -lwininet -luxtheme
LDDEPS += ../lib/gcc_lib_wxdll/libwxsqlite3$(wxFlavour)d.a
ALL_LDFLAGS += $(LDFLAGS) -L"$(wxRootDir)/lib/$(wxCompilerPrefix)$(wxArchSuffix)_dll" -L/usr/lib32 -m32 -mwindows

else ifeq ($(config),debug_wxdll_x64)
TARGETDIR = bin/x64/Debug_wxDLL
TARGET = $(TARGETDIR)/treeviewd.exe
OBJDIR = obj/x64/Debug_wxDLL/treeview
DEFINES += -D_WINDOWS -D_CRT_SECURE_NO_WARNINGS -D_CRT_SECURE_NO_DEPRECATE -D_CRT_NONSTDC_NO_DEPRECATE -DDEBUG -D_DEBUG -DWXUSINGLIB_WXSQLITE3 -D_UNICODE -D__WXDEBUG__ -DWXUSINGDLL -D__WXMSW__
INCLUDES += -I"$(wxRootDir)/lib/$(wxCompilerPrefix)$(wxArchSuffix)_dll/msw$(wxSuffix)" -I"$(wxRootDir)/include" -I../samples/treeview -I../include
ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -m64 -g
ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -m64 -g
LIBS += ../lib/gcc_x64_lib_wxdll/libwxsqlite3$(wxFlavour)d.a -l$(wxToolkitLibNamePrefix)adv -l$(wxToolkitLibNamePrefix)core -l$(wxBaseLibNamePrefix)_xml -l$(wxBaseLibNamePrefix) -lwxjpeg$(wxSuffixDebug) -lwxpng$(wxSuffixDebug) -lwxzlib$(wxSuffixDebug) -lwxtiff$(wxSuffixDebug) -lwxexpat$(wxSuffixDebug) -lwxregex$(wxSuffix) -lcomctl32 -lrpcrt4 -lshell32 -lgdi32 -lkernel32 -luser32 -lcomdlg32 -lole32 -loleaut32 -ladvapi32 -loleacc -lwinspool -lwinmm -lshlwapi -luuid -lversion -lwsock32 -lwininet -luxtheme
LDDEPS += ../lib/gcc_x64_lib_wxdll/libwxsqlite3$(wxFlavour)d.a
ALL_LDFLAGS += $(LDFLAGS) -L"$(wxRootDir)/lib/$(wxCompilerPrefix)$(wxArchSuffix)_dll" -L/usr/lib64 -m64 -mwindows

else ifeq ($(config),release_wxdll_x32)
TARGETDIR = bin/x32/Release_wxDLL
TARGET = $(TARGETDIR)/treeview.exe
OBJDIR = obj/x32/Release_wxDLL/treeview
DEFINES += -D_WINDOWS -D_CRT_SECURE_NO_WARNINGS -D_CRT_SECURE_NO_DEPRECATE -D_CRT_NONSTDC_NO_DEPRECATE -DNDEBUG -DWXUSINGLIB_WXSQLITE3 -D_UNICODE -DWXUSINGDLL -D__WXMSW__
INCLUDES += -I"$(wxRootDir)/lib/$(wxCompilerPrefix)$(wxArchSuffix)_dll/msw$(wxSuffix)" -I"$(wxRootDir)/include" -I../samples/treeview -I../include
ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -m32 -O2
ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -m32 -O2
LIBS += ../lib/gcc_lib_wxdll/libwxsqlite3$(wxFlavour).a -l$(wxToolkitLibNamePrefix)adv -l$(wxToolkitLibNamePrefix)core -l$(wxBaseLibNamePrefix)_xml -l$(wxBaseLibNamePrefix) -lwxjpeg$(wxSuffixDebug) -lwxpng$(wxSuffixDebug) -lwxzlib$(wxSuffixDebug) -lwxtiff$(wxSuffixDebug) -lwxexpat$(wxSuffixDebug) -lwxregex$(wxSuffix) -lcomctl32 -lrpcrt4 -lshell32 -lgdi32 -lkernel32 -luser32 -lcomdlg32 -lole32 -loleaut32 -ladvapi32 -loleacc -lwinspool -lwinmm -lshlwapi -luuid -lversion -lwsock32 -lwininet -luxtheme
LDDEPS += ../lib/gcc_lib_wxdll/libwxsqlite3$(wxFlavour).a
ALL_LDFLAGS += $(LDFLAGS) -L"$(wxRootDir)/lib/$(wxCompilerPrefix)$(wxArchSuffix)_dll" -L/usr/lib32 -m32 -mwindows -s

else ifeq ($(config),release_wxdll_x64)
TARGETDIR = bin/x64/Release_wxDLL
TARGET = $(TARGETDIR)/treeview.exe
OBJDIR = obj/x64/Release_wxDLL/treeview
DEFINES += -D_WINDOWS -D_CRT_SECURE_NO_WARNINGS -D_CRT_SECURE_NO_DEPRECATE -D_CRT_NONSTDC_NO_DEPRECATE -DNDEBUG -DWXUSINGLIB_WXSQLITE3 -D_UNICODE -DWXUSINGDLL -D__WXMSW__
INCLUDES += -I"$(wxRootDir)/lib/$(wxCompilerPrefix)$(wxArchSuffix)_dll/msw$(wxSuffix)" -I"$(wxRootDir)/include" -I../samples/treeview -I../include
ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -m64 -O2
ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -m64 -O2
LIBS += ../lib/gcc_x64_lib_wxdll/libwxsqlite3$(wxFlavour).a -l$(wxToolkitLibNamePrefix)adv -l$(wxToolkitLibNamePrefix)core -l$(wxBaseLibNamePrefix)_xml -l$(wxBaseLibNamePrefix) -lwxjpeg$(wxSuffixDebug) -lwxpng$(wxSuffixDebug) -lwxzlib$(wxSuffixDebug) -lwxtiff$(wxSuffixDebug) -lwxexpat$(wxSuffixDebug) -lwxregex$(wxSuffix) -lcomctl32 -lrpcrt4 -lshell32 -lgdi32 -lkernel32 -luser32 -lcomdlg32 -lole32 -loleaut32 -ladvapi32 -loleacc -lwinspool -lwinmm -lshlwapi -luuid -lversion -lwsock32 -lwininet -luxtheme
LDDEPS += ../lib/gcc_x64_lib_wxdll/libwxsqlite3$(wxFlavour).a
ALL_LDFLAGS += $(LDFLAGS) -L"$(wxRootDir)/lib/$(wxCompilerPrefix)$(wxArchSuffix)_dll" -L/usr/lib64 -m64 -mwindows -s

else ifeq ($(config),dll_debug_x32)
TARGETDIR = bin/x32/DLL_Debug
TARGET = $(TARGETDIR)/treeviewd.exe
OBJDIR = obj/x32/DLL_Debug/treeview
DEFINES += -D_WINDOWS -D_CRT_SECURE_NO_WARNINGS -D_CRT_SECURE_NO_DEPRECATE -D_CRT_NONSTDC_NO_DEPRECATE -DDEBUG -D_DEBUG -DWXUSINGDLL_WXSQLITE3 -D_UNICODE -D__WXDEBUG__ -DWXUSINGDLL -D__WXMSW__
INCLUDES += -I"$(wxRootDir)/lib/$(wxCompilerPrefix)$(wxArchSuffix)_dll/msw$(wxSuffix)" -I"$(wxRootDir)/include" -I../samples/treeview -I../include
ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -m32 -g
ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -m32 -g
LIBS += ../lib/gcc_dll/libwxsqlite3$(wxFlavour)d.a -l$(wxToolkitLibNamePrefix)adv -l$(wxToolkitLibNamePrefix)core -l$(wxBaseLibNamePrefix)_xml -l$(wxBaseLibNamePrefix) -lwxjpeg$(wxSuffixDebug) -lwxpng$(wxSuffixDebug) -lwxzlib$(wxSuffixDebug) -lwxtiff$(wxSuffixDebug) -lwxexpat$(wxSuffixDebug) -lwxregex$(wxSuffix) -lcomctl32 -lrpcrt4 -lshell32 -lgdi32 -lkernel32 -luser32 -lcomdlg32 -lole32 -loleaut32 -ladvapi32 -loleacc -lwinspool -lwinmm -lshlwapi -luuid -lversion -lwsock32 -lwininet -luxtheme
LDDEPS += ../lib/gcc_dll/libwxsqlite3$(wxFlavour)d.a
ALL_LDFLAGS += $(LDFLAGS) -L"$(wxRootDir)/lib/$(wxCompilerPrefix)$(wxArchSuffix)_dll" -L/usr/lib32 -m32 -mwindows

else ifeq ($(config),dll_debug_x64)
TARGETDIR = bin/x64/DLL_Debug
TARGET = $(TARGETDIR)/treeviewd.exe
OBJDIR = obj/x64/DLL_Debug/treeview
DEFINES += -D_WINDOWS -D_CRT_SECURE_NO_WARNINGS -D_CRT_SECURE_NO_DEPRECATE -D_CRT_NONSTDC_NO_DEPRECATE -DDEBUG -D_DEBUG -DWXUSINGDLL_WXSQLITE3 -D_UNICODE -D__WXDEBUG__ -DWXUSINGDLL -D__WXMSW__
INCLUDES += -I"$(wxRootDir)/lib/$(wxCompilerPrefix)$(wxArchSuffix)_dll/msw$(wxSuffix)" -I"$(wxRootDir)/include" -I../samples/treeview -I../include
ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -m64 -g
ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -m64 -g
LIBS += ../lib/gcc_x64_dll/libwxsqlite3$(wxFlavour)d.a -l$(wxToolkitLibNamePrefix)adv -l$(wxToolkitLibNamePrefix)core -l$(wxBaseLibNamePrefix)_xml -l$(wxBaseLibNamePrefix) -lwxjpeg$(wxSuffixDebug) -lwxpng$(wxSuffixDebug) -lwxzlib$(wxSuffixDebug) -lwxtiff$(wxSuffixDebug) -lwxexpat$(wxSuffixDebug) -lwxregex$(wxSuffix) -lcomctl32 -lrpcrt4 -lshell32 -lgdi32 -lkernel32 -luser32 -lcomdlg32 -lole32 -loleaut32 -ladvapi32 -loleacc -lwinspool -lwinmm -lshlwapi -luuid -lversion -lwsock32 -lwininet -luxtheme
LDDEPS += ../lib/gcc_x64_dll/libwxsqlite3$(wxFlavour)d.a
ALL_LDFLAGS += $(LDFLAGS) -L"$(wxRootDir)/lib/$(wxCompilerPrefix)$(wxArchSuffix)_dll" -L/usr/lib64 -m64 -mwindows

else ifeq ($(config),dll_release_x32)
TARGETDIR = bin/x32/DLL_Release
TARGET = $(TARGETDIR)/treeview.exe
OBJDIR = obj/x32/DLL_Release/treeview
DEFINES += -D_WINDOWS -D_CRT_SECURE_NO_WARNINGS -D_CRT_SECURE_NO_DEPRECATE -D_CRT_NONSTDC_NO_DEPRECATE -DNDEBUG -DWXUSINGDLL_WXSQLITE3 -D_UNICODE -DWXUSINGDLL -D__WXMSW__
INCLUDES += -I"$(wxRootDir)/lib/$(wxCompilerPrefix)$(wxArchSuffix)_dll/msw$(wxSuffix)" -I"$(wxRootDir)/include" -I../samples/treeview -I../include
ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -m32 -O2
ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -m32 -O2
LIBS += ../lib/gcc_dll/libwxsqlite3$(wxFlavour).a -l$(wxToolkitLibNamePrefix)adv -l$(wxToolkitLibNamePrefix)core -l$(wxBaseLibNamePrefix)_xml -l$(wxBaseLibNamePrefix) -lwxjpeg$(wxSuffixDebug) -lwxpng$(wxSuffixDebug) -lwxzlib$(wxSuffixDebug) -lwxtiff$(wxSuffixDebug) -lwxexpat$(wxSuffixDebug) -lwxregex$(wxSuffix) -lcomctl32 -lrpcrt4 -lshell32 -lgdi32 -lkernel32 -luser32 -lcomdlg32 -lole32 -loleaut32 -ladvapi32 -loleacc -lwinspool -lwinmm -lshlwapi -luuid -lversion -lwsock32 -lwininet -luxtheme
LDDEPS += ../lib/gcc_dll/libwxsqlite3$(wxFlavour).a
ALL_LDFLAGS += $(LDFLAGS) -L"$(wxRootDir)/lib/$(wxCompilerPrefix)$(wxArchSuffix)_dll" -L/usr/lib32 -m32 -mwindows -s

else ifeq ($(config),dll_release_x64)
TARGETDIR = bin/x64/DLL_Release
TARGET = $(TARGETDIR)/treeview.exe
OBJDIR = obj/x64/DLL_Release/treeview
DEFINES += -D_WINDOWS -D_CRT_SECURE_NO_WARNINGS -D_CRT_SECURE_NO_DEPRECATE -D_CRT_NONSTDC_NO_DEPRECATE -DNDEBUG -DWXUSINGDLL_WXSQLITE3 -D_UNICODE -DWXUSINGDLL -D__WXMSW__
INCLUDES += -I"$(wxRootDir)/lib/$(wxCompilerPrefix)$(wxArchSuffix)_dll/msw$(wxSuffix)" -I"$(wxRootDir)/include" -I../samples/treeview -I../include
ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -m64 -O2
ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -m64 -O2
LIBS += ../lib/gcc_x64_dll/libwxsqlite3$(wxFlavour).a -l$(wxToolkitLibNamePrefix)adv -l$(wxToolkitLibNamePrefix)core -l$(wxBaseLibNamePrefix)_xml -l$(wxBaseLibNamePrefix) -lwxjpeg$(wxSuffixDebug) -lwxpng$(wxSuffixDebug) -lwxzlib$(wxSuffixDebug) -lwxtiff$(wxSuffixDebug) -lwxexpat$(wxSuffixDebug) -lwxregex$(wxSuffix) -lcomctl32 -lrpcrt4 -lshell32 -lgdi32 -lkernel32 -luser32 -lcomdlg32 -lole32 -loleaut32 -ladvapi32 -loleacc -lwinspool -lwinmm -lshlwapi -luuid -lversion -lwsock32 -lwininet -luxtheme
LDDEPS += ../lib/gcc_x64_dll/libwxsqlite3$(wxFlavour).a
ALL_LDFLAGS += $(LDFLAGS) -L"$(wxRootDir)/lib/$(wxCompilerPrefix)$(wxArchSuffix)_dll" -L/usr/lib64 -m64 -mwindows -s

else
  $(error "invalid configuration $(config)")
endif

# Per File Configurations
# #############################################


# File sets
# #############################################

CUSTOM :=
OBJECTS :=

CUSTOM += $(OBJDIR)/treeview.res
OBJECTS += $(OBJDIR)/foldertree.o
OBJECTS += $(OBJDIR)/projectlist.o
OBJECTS += $(OBJDIR)/treeviewapp.o
OBJECTS += $(OBJDIR)/treeviewsample.o

# Rules
# #############################################

all: $(TARGET)
	@:

$(TARGET): $(CUSTOM) $(OBJECTS) $(LDDEPS) | $(TARGETDIR)
	$(PRELINKCMDS)
	@echo Linking treeview
	$(SILENT) $(LINKCMD)
	$(POSTBUILDCMDS)

$(TARGETDIR):
	@echo Creating $(TARGETDIR)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) mkdir -p $(TARGETDIR)
else
	$(SILENT) mkdir $(subst /,\\,$(TARGETDIR))
endif

$(OBJDIR):
	@echo Creating $(OBJDIR)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) mkdir -p $(OBJDIR)
else
	$(SILENT) mkdir $(subst /,\\,$(OBJDIR))
endif

clean:
	@echo Cleaning treeview
ifeq (posix,$(SHELLTYPE))
	$(SILENT) rm -f  $(TARGET)
	$(SILENT) rm -rf $(OBJDIR)
else
	$(SILENT) if exist $(subst /,\\,$(TARGET)) del $(subst /,\\,$(TARGET))
	$(SILENT) if exist $(subst /,\\,$(OBJDIR)) rmdir /s /q $(subst /,\\,$(OBJDIR))
endif

prebuild: | $(OBJDIR)
	$(PREBUILDCMDS)

$(CUSTOM): | prebuild
ifneq (,$(PCH))
$(OBJECTS): $(GCH) | $(PCH_PLACEHOLDER)
$(GCH): $(PCH) | prebuild
	@echo $(notdir $<)
	$(SILENT) $(CXX) -x c++-header $(ALL_CXXFLAGS) -o "$@" -MF "$(@:%.gch=%.d)" -c "$<"
$(PCH_PLACEHOLDER): $(GCH) | $(OBJDIR)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) touch "$@"
else
	$(SILENT) echo $null >> "$@"
endif
else
$(OBJECTS): | prebuild
endif


# File Rules
# #############################################

$(OBJDIR)/foldertree.o: ../samples/treeview/foldertree.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/projectlist.o: ../samples/treeview/projectlist.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/treeview.res: ../samples/treeview/treeview.rc
	@echo $(notdir $<)
	$(SILENT) $(RESCOMP) $< -O coff -o "$@" $(ALL_RESFLAGS)
$(OBJDIR)/treeviewapp.o: ../samples/treeview/treeviewapp.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/treeviewsample.o: ../samples/treeview/treeviewsample.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"

-include $(OBJECTS:%.o=%.d)
ifneq (,$(PCH))
  -include $(PCH_PLACEHOLDER).d
endif