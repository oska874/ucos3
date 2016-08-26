
AUX_SOURCE_DIRECTORY(./Source LIBOS3_SRC)
AUX_SOURCE_DIRECTORY(./Ports/POSIX/GNU LIBOS3_SRC_1)
list(APPEND LIBOS3_SRC ${LIBOS3_SRC_1})

INCLUDE_DIRECTORIES(/workspace/repos/github/rtos/ucos/Micrium/Software/uC-CPU)
INCLUDE_DIRECTORIES(/workspace/repos/github/rtos/ucos/Micrium/Software/uC-LIB)
INCLUDE_DIRECTORIES(Source)
INCLUDE_DIRECTORIES(Ports/POSIX/GNU)


add_library(libos  ${LIBOS3_SRC})
