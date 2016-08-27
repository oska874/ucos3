PROJECT (USOS3)
CMAKE_MINIMUM_REQUIRED(VERSION 2.8)

SET(CMAKE_C_COMPILER "gcc")
SET(CMAKE_C_FLAGS_DEBUG "$ENV{CFLAGS} -static -O0 -Wall -g -ggdb ")#-fno-builtin -ffreestanding  ")  #set debug mode c flags
SET(CMAKE_C_FLAGS_RELEASE "$ENV{CFLAGS} -static -O3 -Wall ")         #set release mode c flags
SET(CMAKE_EXE_LINKER_FLAGS "$ENV{LDFLAGS} -T /workspace/repos/github/rtos/ucos/Micrium/ucos3.lds -Bstatic -defsym " )
SET(CMAKE_BUILD_TYPE "Debug")     #set Debug or Release


AUX_SOURCE_DIRECTORY(./Examples/POSIX/GNU/OS3 LIBSIM_SRC)

ADD_SUBDIRECTORY(Software/uC-CPU/Posix/GNU)
ADD_SUBDIRECTORY(Software/uC-CPU/)
#ADD_SUBDIRECTORY(Software/uCOS-III)
ADD_SUBDIRECTORY(Software/uCOS-III/Source)
ADD_SUBDIRECTORY(Software/uCOS-III/Ports/POSIX/GNU)
ADD_SUBDIRECTORY(Software/uC-LIB)


INCLUDE_DIRECTORIES(/workspace/repos/github/rtos/ucos/Micrium/Software/uC-CPU)
INCLUDE_DIRECTORIES(/workspace/repos/github/rtos/ucos/Micrium/Software/uC-CPU/Posix/GNU)
INCLUDE_DIRECTORIES(/workspace/repos/github/rtos/ucos/Micrium/Software/uCOS-III/Source)
INCLUDE_DIRECTORIES(/workspace/repos/github/rtos/ucos/Micrium/Software/uCOS-III/Ports/POSIX/GNU)
INCLUDE_DIRECTORIES(/workspace/repos/github/rtos/ucos/Micrium/Software/uC-LIB)
INCLUDE_DIRECTORIES(/workspace/repos/github/rtos/ucos/Micrium/Examples/POSIX/GNU/OS3)


ADD_EXECUTABLE(ucos ${LIBSIM_SRC})

TARGET_LINK_LIBRARIES(ucos os1)
TARGET_LINK_LIBRARIES(ucos os2)
TARGET_LINK_LIBRARIES(ucos hw1)
TARGET_LINK_LIBRARIES(ucos hw2)
TARGET_LINK_LIBRARIES(ucos uc)
TARGET_LINK_LIBRARIES(ucos pthread)


#TARGET_LINK_LIBRARIES(ucos /workspace/repos/github/rtos/ucos/Micrium/Software/uC-CPU)
#TARGET_LINK_LIBRARIES(ucos /workspace/repos/github/rtos/ucos/Micrium/Software/uC-CPU/Posix/GNU)
#TARGET_LINK_LIBRARIES(ucos /workspace/repos/github/rtos/ucos/Micrium/Software/uC-LIB)
#TARGET_LINK_LIBRARIES(ucos /workspace/repos/github/rtos/ucos/Micrium/Software/uCOS-III/Source)
#TARGET_LINK_LIBRARIES(ucos /workspace/repos/github/rtos/ucos/Micrium/Software/uCOS-III/Ports/POSIX/GNU)
#TARGET_LINK_LIBRARIES(ucos /workspace/repos/github/rtos/ucos/Micrium/Examples)


