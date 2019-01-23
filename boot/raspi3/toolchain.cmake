
include(CMakeForceCompiler)
set(CMAKE_SYSTEM_NAME Generic)
set(CMAKE_SYSTEM_VERSION 1)
set(CFLAGS "-mcpu=cortex-a53")
set(CMAKE_C_FLAGS "-ffreestanding" CACHE STRING "" FORCE)
set(CMAKE_CXX_FLAGS "-ffreestanding -std=c++14" CACHE STRING "" FORCE)
set(CMAKE_ASM_FLAGS "-ffreestanding " CACHE STRING "" FORCE)
set(CMAKE_EXE_LINKER_FLAGS "-ffreestanding -nostdlib -Wl,-T,${CMAKE_SOURCE_DIR}/boot/raspi3/kernel.ld" CACHE STRING "" FORCE)
set(CMAKE_C_COMPILER aarch64-elf-gcc)
set(CMAKE_CXX_COMPILER aarch64-elf-g++)
set(CMAKE_OBJCOPY aarch64-elf-objcopy CACHE STRING "" FORCE)
