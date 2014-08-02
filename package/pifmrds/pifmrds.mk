######################
# pifmrds
##################

PIFMRDS_VERSION = a985b7db02338b1a3073a15f292cec0e2ae3343a
PIFMRDS_SITE = $(call github,ChristopheJacquet,PiFmRds,$(PIFMRDS_VERSION))

define PIFMRDS_BUILD_CMDS
	$(MAKE) CC="$(TARGET_CC)" LD="$(TARGET_LD)" -C "$(@D)/src" app
endef

define PIFMRDS_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 "$(@D)/src/pi_fm_rds" "$(TARGET_DIR)/usr/bin/"
endef

$(eval $(generic-package))
