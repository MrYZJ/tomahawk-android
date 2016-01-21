find_package(PkgConfig)
pkg_check_modules(PC_MICROHTTPD libmicrohttpd)

find_path(MICROHTTPD_INCLUDE_DIR microhttpd.h
    HINTS
        ${PC_MICROHTTPD_INCLUDEDIR}
        ${PC_MICROHTTPD_INCLUDE_DIRS}
)

find_library(MICROHTTPD_LIBRARY NAMES microhttpd
    HINTS
    ${PC_MICROHTTPD_LIBDIR}
    ${PC_MICROHTTPD_LIBRARY_DIRS}
)

set(MICROHTTPD_VERSION ${PC_MICROHTTPD_VERSION})

find_package_handle_standard_args(Microhttpd
    REQUIRED_VARS MICROHTTPD_INCLUDE_DIR MICROHTTPD_LIBRARY
    VERSION_VAR MICROHTTPD_VERSION
)
