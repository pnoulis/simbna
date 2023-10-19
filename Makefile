#!/usr/bin/make

# package
pkg_name:=simbna
pkg_version:=0.0.1
pkg_vversion:=v$(pkg_version)
pkg_distname:=$(app_name)-$(app_vversion)

# Make configuration
SHELL:=/usr/bin/bash
.DEFAULT_GOAL:=all
.ONESHELL:
.DELETE_ON_ERROR:
.EXPORT_ALL_VARIABLES:
.SECONDEXPANSION:

# package directories
pkgdir:=.
srcdir:=$(pkgdir)/src
templatesdir=$(pkgdir)/templates
confdir=$(pkgdir)/.sid
buildir=.

# Tools
## M4 is a macro expansion program
m4:=/usr/bin/m4
m4inc:=-I$(srcdir)
m4defs:=-DTEMPLATESDIR=$(templatesdir) -DCONFDIR=$(confdir) -DPKGNAME=$(pkg_name) \
-DVERSION=$(pkg_version) -DVVERSION=$(pkg_vversion)
m4opts:=
m4flags:= $(m4opts) $(m4inc) $(m4defs)

# Sources
VPATH:=$(srcdir)
OBJS:=$(srcdir)/rc.o $(srcdir)/templates.o $(srcdir)/simbna.o
MACROS:=macros.m4

# Outputs
EXECUTABLE:=$(pkg_name)

all: build

build: $(EXECUTABLE)

$(EXECUTABLE): $(OBJS)
	-cp -f $(srcdir)/$(EXECUTABLE).o $@
	-chmod 700 $@

%.o: $(MACROS) %.m4
	-$(m4) $(m4flags) $< > $@

clean:
	-find $(pkgdir) -iname '*.o' | xargs -I {} rm -f {}
