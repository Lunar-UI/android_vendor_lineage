# (C) 2023-2024 LunarUI

ANDROID_VERSION := 14
LUNARVERSION := 1.1

LUNAR_BUILD_TYPE ?= UNOFFICIAL
LUNAR_MAINTAINER ?= Astronaut
LUNAR_DATE_YEAR := $(shell date -u +%Y)
LUNAR_DATE_MONTH := $(shell date -u +%m)
LUNAR_DATE_DAY := $(shell date -u +%d)
LUNAR_DATE_HOUR := $(shell date -u +%H)
LUNAR_DATE_MINUTE := $(shell date -u +%M)
LUNAR_BUILD_DATE := $(LUNAR_DATE_YEAR)$(LUNAR_DATE_MONTH)$(LUNAR_DATE_DAY)-$(LUNAR_DATE_HOUR)$(LUNAR_DATE_MINUTE)
TARGET_PRODUCT_SHORT := $(subst lunar_,,$(LUNAR_BUILD))
LUNAR_VERSION := $(LUNARVERSION)-$(LUNAR_BUILD)-$(LUNAR_BUILD_DATE)-VANILLA
ifeq ($(WITH_GAPPS), true)
LUNAR_VERSION := $(LUNARVERSION)-$(LUNAR_BUILD)-$(LUNAR_BUILD_DATE)-GAPPS
endif
LUNAR_MOD_VERSION :=$(ANDROID_VERSION)-$(LUNARVERSION)
LUNAR_DISPLAY_VERSION := LunarUI-$(LUNARVERSION)

# LunarUI configs
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
  ro.lunar.version=$(LUNAR_DISPLAY_VERSION) \
  ro.modversion=$(LUNAR_MOD_VERSION) \
  ro.lunar.build.date=$(LUNAR_BUILD_DATE) \
  ro.lunar.device=$(LUNAR_BUILD) \
  ro.lunar.maintainer=$(LUNAR_MAINTAINER)
