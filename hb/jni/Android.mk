LOCAL_PATH := $(call my-dir)/..
include $(CLEAR_VARS)

LOCAL_C_INCLUDES += $(LOCAL_PATH)

LOCAL_SRC_FILES += hb-blob.cc
LOCAL_SRC_FILES += hb-buffer.cc
LOCAL_SRC_FILES += hb-common.cc
LOCAL_SRC_FILES += hb-face.cc
LOCAL_SRC_FILES += hb-fallback-shape.cc
LOCAL_SRC_FILES += hb-font.cc
LOCAL_SRC_FILES += hb-ft.cc
LOCAL_SRC_FILES += hb-ot-layout.cc
LOCAL_SRC_FILES += hb-ot-map.cc
LOCAL_SRC_FILES += hb-ot-shape-complex-arabic.cc
LOCAL_SRC_FILES += hb-ot-shape-complex-default.cc
LOCAL_SRC_FILES += hb-ot-shape-complex-indic-table.cc
LOCAL_SRC_FILES += hb-ot-shape-complex-indic.cc
LOCAL_SRC_FILES += hb-ot-shape-complex-myanmar.cc
LOCAL_SRC_FILES += hb-ot-shape-complex-sea.cc
LOCAL_SRC_FILES += hb-ot-shape-complex-thai.cc
LOCAL_SRC_FILES += hb-ot-shape-fallback.cc
LOCAL_SRC_FILES += hb-ot-shape-normalize.cc
LOCAL_SRC_FILES += hb-ot-shape.cc
LOCAL_SRC_FILES += hb-ot-tag.cc
LOCAL_SRC_FILES += hb-set.cc
LOCAL_SRC_FILES += hb-shape-plan.cc
LOCAL_SRC_FILES += hb-shape.cc
LOCAL_SRC_FILES += hb-shaper.cc
LOCAL_SRC_FILES += hb-ucdn.cc
LOCAL_SRC_FILES += hb-unicode.cc
LOCAL_SRC_FILES += ucdn.c

LOCAL_C_INCLUDES += $(LOCAL_PATH)/../Freetype/include

LOCAL_CFLAGS += -DHB_NO_MT -DHAVE_OT -DHAVE_UCDN
LOCAL_CFLAGS += -O3

LOCAL_MODULE := libhb
include $(BUILD_STATIC_LIBRARY)
