
AUX_SOURCE_DIRECTORY(. LIBOS3P_SRC)

INCLUDE_DIRECTORIES(/workspace/repos/github/rtos/ucos/Micrium/Software/uC-CPU)
INCLUDE_DIRECTORIES(/workspace/repos/github/rtos/ucos/Micrium/Software/uC-LIB)
INCLUDE_DIRECTORIES(/workspace/repos/github/rtos/ucos/Micrium/Software/uCOS-III/Ports/POSIX/GNU)
INCLUDE_DIRECTORIES(/workspace/repos/github/rtos/ucos/Micrium/Software/uC-CPU/Posix/GNU)
INCLUDE_DIRECTORIES(/workspace/repos/github/rtos/ucos/Micrium/Examples/POSIX/GNU/OS3)

add_library(libos2  ${LIBOS3P_SRC})
