VERSION = 1.2.26
RELEASE = 5

SRC_DIR = $(srcdir)/src
SRC_TARBALL = rrdtool-$(VERSION).tar.gz
SRPM = $(DEST_SRPM)/rrdtool-$(VERSION)-$(RELEASE).src.rpm
RPMS = \
	$(DEST_RPM)/rrdtool-$(VERSION)-$(RELEASE).@RPM_TARGET_ARCH@.rpm \
	$(DEST_RPM)/rrdtool-perl-$(VERSION)-$(RELEASE).@RPM_TARGET_ARCH@.rpm
	$(DEST_RPM)/rrdtool-devel-$(VERSION)-$(RELEASE).@RPM_TARGET_ARCH@.rpm

SPEC_FILE = rrdtool.spec

all : PRINT_HEADER $(SRPM) $(RPMS) PRINT_FOOTER

$(RPM_SOURCES_DIR)/% : %
	cp $< $@

.PHONY: build-rpms
build-rpms:
	cp $(SRC_DIR)/$(SRC_TARBALL) @RPMBUILD_TOPDIR@/SOURCES
	cp $(SRC_DIR)/$(SPEC_FILE) @RPMBUILD_TOPDIR@/SPECS
	rpmbuild -ba --target @RPM_TARGET_ARCH@-none-linux @RPMBUILD_TOPDIR@/SPECS/$(SPEC_FILE)

$(SRPM): build-rpms
	mv @RPMBUILD_TOPDIR@/SRPMS/`basename $@` $@

$(RPMS): build-rpms
	mv @RPMBUILD_TOPDIR@/RPMS/@RPM_TARGET_ARCH@/`basename $@` $@

.PHONY: PRINT_HEADER
PRINT_HEADER :
	@printf "\n================================================================================\n"
	@printf "Building Package:\n"
	@printf "\tNAME = %s\n" "$(PACKAGE)"
	@printf "\tVERSION = %s\n" "$(VERSION)"
	@printf "\tRELEASE = %s\n" "$(RELEASE)"
	@printf "\tARCH = %s\n" "@RPM_TARGET_ARCH@"
	@printf "\tStarted building of %s at %s\n" "$(PACKAGE)" "$(shell date)"
	@printf "================================================================================\n"

.PHONY: PRINT_FOOTER
PRINT_FOOTER :
	@printf "\n================================================================================\n"
	@printf "Finished Building Package %s at %s\n" "$(PACKAGE)" "$(shell date)"
	@printf "\tBinary RPMS can be found under %s\n" "@RPMBUILD_TOPDIR@"
	@printf "================================================================================\n"
