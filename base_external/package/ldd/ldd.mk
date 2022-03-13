
##############################################################
#
# Linux Device Drivers
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 7 git contents
LDD_VERSION = '97a2a1e5678b08e97e81deb1e96a11c271c4e1a3'
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
LDD_SITE = 'git@github.com:cu-ecen-aeld/assignment-7-kamini2801.git'
LDD_SITE_METHOD = git
LDD_GIT_SUBMODULES = YES
# LDD_MODULE_SUBDIRS = misc-modules/
# LDD_MODULE_SUBDIRS += scull/

LDD_MODULE_SUBDIRS += aesd-char-driver/

LDD_OVERRIDE_SRCDIR = /home/kamini/AESD/assignments-3-and-later-kamini2801

#define LDD_BUILD_CMDS
#	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/misc-modules modules
#	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/scull modules
#endef

# TODO add your writer, finder and finder-test utilities/scripts to the installation steps below
define LDD_INSTALL_TARGET_CMDS
		
		
	# $(INSTALL) -m 0755 $(@D)/scull/scull_load $(TARGET_DIR)/usr/bin
	# $(INSTALL) -m 0755 $(@D)/scull/scull_unload $(TARGET_DIR)/usr/bin
	
	# $(INSTALL) -m 0755 $(@D)/misc-modules/module_load $(TARGET_DIR)/usr/bin
	# $(INSTALL) -m 0755 $(@D)/misc-modules/module_unload $(TARGET_DIR)/usr/bin
	
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_load $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_unload $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/assignment-autotest/test/assignment8-buildroot/* $(TARGET_DIR)/usr/bin
	
endef

$(eval $(kernel-module))
$(eval $(generic-package))


