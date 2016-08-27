
AUX_SOURCE_DIRECTORY(. LIBOS3_SRC)

INCLUDE_DIRECTORIES(/workspace/repos/github/rtos/ucos/Micrium/Software/uC-CPU)
INCLUDE_DIRECTORIES(/workspace/repos/github/rtos/ucos/Micrium/Software/uC-LIB)
INCLUDE_DIRECTORIES(/workspace/repos/github/rtos/ucos/Micrium/Software/uCOS-III/Ports/POSIX/GNU)
INCLUDE_DIRECTORIES(/workspace/repos/github/rtos/ucos/Micrium/Examples/POSIX/GNU/OS3)
INCLUDE_DIRECTORIES(../../uC-CPU)
INCLUDE_DIRECTORIES(../../uC-CPU/Posix/GNU)

add_library(libos1  ${LIBOS3_SRC})
