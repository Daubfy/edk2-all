[Defines]
  PLATFORM_NAME                  = a24
  PLATFORM_GUID                  = 30ac5eb8-bec2-444f-b624-3f7e7c77d440
  PLATFORM_VERSION               = 0.1
  DSC_SPECIFICATION              = 0x00010019
  OUTPUT_DIRECTORY               = Build/$(PLATFORM_NAME)
  SUPPORTED_ARCHITECTURES        = AARCH64
  BUILD_TARGETS                  = DEBUG|RELEASE
  SKUID_IDENTIFIER               = DEFAULT
  FLASH_DEFINITION               = Platform/memetek/unified.fdf
  DEVICE_DXE_FV_COMPONENTS       = Platform/memtek/unified.fdf.inc

!include Platform/memetek/unified.dsc

[BuildOptions.common]
  GCC:*_*_AARCH64_CC_FLAGS = -DENABLE_SIMPLE_INIT -DENABLE_LINUX_SIMPLE_MASS_STORAGE

[PcdsFixedAtBuild.common]

  gQcomTokenSpaceGuid.PcdMipiFrameBufferAddress|0xFAC00000
  gQcomTokenSpaceGuid.PcdMipiFrameBufferWidth|1080
  gQcomTokenSpaceGuid.PcdMipiFrameBufferHeight|2400

  gRenegadePkgTokenSpaceGuid.PcdDeviceVendor|"Samsung"
  gRenegadePkgTokenSpaceGuid.PcdDeviceProduct|"Galaxy A24"
  gRenegadePkgTokenSpaceGuid.PcdDeviceCodeName|"a24"

  # Simple Init
  gSimpleInitTokenSpaceGuid.PcdGuiDefaultDPI|512
