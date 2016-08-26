PROJECT (USOS3)
CMAKE_MINIMUM_REQUIRED(VERSION 2.8)

SET(CMAKE_C_FLAGS_DEBUG "$ENV{CFLAGS} -static -O0 -Wall -g -ggdb")  #set debug mode c flags
SET(CMAKE_C_FLAGS_RELEASE "$ENV{CFLAGS} -static -O3 -Wall ")         #set release mode c flags
SET(CMAKE_BUILD_TYPE "Release")     #set Debug or Release


AUX_SOURCE_DIRECTORY(./Examples/POSIX/GNU/OS3 LIBSIM_SRC)


INCLUDE_DIRECTORIES(/workspace/repos/github/rtos/ucos/Micrium/Software/uC-CPU)
INCLUDE_DIRECTORIES(/workspace/repos/github/rtos/ucos/Micrium/Software/uC-CPU/Posix/GNU)
INCLUDE_DIRECTORIES(/workspace/repos/github/rtos/ucos/Micrium/Software/uCOS-III/Source)
INCLUDE_DIRECTORIES(/workspace/repos/github/rtos/ucos/Micrium/Software/uCOS-III/Ports/POSIX/GNU)
INCLUDE_DIRECTORIES(/workspace/repos/github/rtos/ucos/Micrium/Software/uC-LIB)
INCLUDE_DIRECTORIES(/workspace/repos/github/rtos/ucos/Micrium/Examples/POSIX/GNU/OS3)


ADD_EXECUTABLE(ucos ${LIBSIM_SRC})

TARGET_LINK_LIBRARIES(ucos /workspace/repos/github/rtos/ucos/Micrium/Software/uC-CPU)
TARGET_LINK_LIBRARIES(ucos /workspace/repos/github/rtos/ucos/Micrium/Software/uC-LIB)
TARGET_LINK_LIBRARIES(ucos /workspace/repos/github/rtos/ucos/Micrium/Software/uCOS-III)
TARGET_LINK_LIBRARIES(ucos /workspace/repos/github/rtos/ucos/Micrium/Examples)


