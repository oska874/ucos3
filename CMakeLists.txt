PROJECT (USOS3)
CMAKE_MINIMUM_REQUIRED(VERSION 2.8)

set(TARGET_EXE_Z "ucos")
SET(CMAKE_C_FLAGS_DEBUG "$ENV{CFLAGS} -static -O0 -g3 -Wall -fmessage-length=0  ")  #set debug mode c flags
SET(CMAKE_C_FLAGS_RELEASE "$ENV{CFLAGS} -O3 -Wall ")         #set release mode c flags
SET(CMAKE_BUILD_TYPE "Debug")     #set Debug or Release


set(UCOS3_SOURCE_DIR ${PROJECT_SOURCE_DIR})

INCLUDE_DIRECTORIES(${UCOS3_SOURCE_DIR}/Software/uC-CPU)
INCLUDE_DIRECTORIES(${UCOS3_SOURCE_DIR}/Software/uC-CPU/Posix/GNU)

INCLUDE_DIRECTORIES(${UCOS3_SOURCE_DIR}/Software/uCOS-III/Source)
INCLUDE_DIRECTORIES(${UCOS3_SOURCE_DIR}/Software/uCOS-III/Ports/POSIX/GNU)

INCLUDE_DIRECTORIES(${UCOS3_SOURCE_DIR}/Software/uC-LIB)

INCLUDE_DIRECTORIES(${UCOS3_SOURCE_DIR}/Examples/POSIX/GNU/OS3)

ADD_SUBDIRECTORY(Software/uC-CPU/Posix/GNU)
ADD_SUBDIRECTORY(Software/uC-CPU/)

#ADD_SUBDIRECTORY(Software/uCOS-III)
ADD_SUBDIRECTORY(Software/uCOS-III/Source)
ADD_SUBDIRECTORY(Software/uCOS-III/Ports/POSIX/GNU)

ADD_SUBDIRECTORY(Software/uC-LIB)

#ADD_SUBDIRECTORY(Examples/POSIX/GNU/OS3)

AUX_SOURCE_DIRECTORY(./Examples/POSIX/GNU/OS3 LIBSIM_SRC)

ADD_EXECUTABLE(${TARGET_EXE_Z} ${LIBSIM_SRC})

#LINK_LIBRARIES(${TARGET_EXE_Z} em)
TARGET_LINK_LIBRARIES(${TARGET_EXE_Z} libos1)
TARGET_LINK_LIBRARIES(${TARGET_EXE_Z} libos2)
TARGET_LINK_LIBRARIES(${TARGET_EXE_Z} libhw1)
TARGET_LINK_LIBRARIES(${TARGET_EXE_Z} libhw2)
TARGET_LINK_LIBRARIES(${TARGET_EXE_Z} libuc)
TARGET_LINK_LIBRARIES(${TARGET_EXE_Z} pthread)


