ifeq ($(call my-dir),$(call project-path-for,qcom-audio))

ifneq ($(AUDIO_USE_STUB_HAL), true)
ifeq ($(TARGET_USES_QCOM_MM_AUDIO), true)

MY_LOCAL_PATH := $(call my-dir)

ifneq ($(wildcard vendor/qcom/proprietary/args),)
include $(MY_LOCAL_PATH)/hal/Android.mk
include $(MY_LOCAL_PATH)/hal/audio_extn/Android.mk
include $(MY_LOCAL_PATH)/audio-effects/Android.mk
endif

endif
endif

endif
