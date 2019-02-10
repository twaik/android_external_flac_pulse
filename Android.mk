LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

OGG_DIR := external/libogg_pulse

LOCAL_SRC_FILES:= \
	src/libFLAC/bitmath.c \
	src/libFLAC/bitreader.c \
	src/libFLAC/bitwriter.c \
	src/libFLAC/cpu.c \
	src/libFLAC/crc.c \
	src/libFLAC/fixed.c \
	src/libFLAC/float.c \
	src/libFLAC/format.c \
	src/libFLAC/lpc.c \
	src/libFLAC/memory.c \
	src/libFLAC/metadata_object.c \
	src/libFLAC/md5.c \
	src/libFLAC/ogg_decoder_aspect.c \
	src/libFLAC/stream_decoder.c \
	src/libFLAC/stream_encoder.c \
	src/libFLAC/stream_encoder_framing.c \
	src/libFLAC/window.c

LOCAL_C_INCLUDES += \
	$(LOCAL_PATH)/include \
	$(LOCAL_PATH)/android \
	\
	$(LOCAL_PATH)/src/libFLAC/include \
	$(OGG_DIR)/include $(OGG_DIR)/android

LOCAL_CFLAGS += -DHAVE_CONFIG_H -DFLAC__NO_MD5 -DFLAC__INTEGER_ONLY_LIBRARY
LOCAL_CFLAGS += -D_REENTRANT -DPIC -DU_COMMON_IMPLEMENTATION -fPIC
LOCAL_CFLAGS += -O3 -funroll-loops -finline-functions

LOCAL_ARM_MODE := arm

LOCAL_MODULE := libFLAC_pulse

LOCAL_MODULE_TAGS := optional

include $(BUILD_STATIC_LIBRARY)
