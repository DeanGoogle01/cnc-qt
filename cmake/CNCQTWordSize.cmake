# Detect the word-size for the current platform ...
MESSAGE(STATUS "checking the width of std::vector<>::size_type for this platform")

TRY_RUN(
    CNCQT_PLATFORM_SIZE_TYPE
    CNCQT_PLATFORM_SIZE_TYPE_COMPILE
    ${CMAKE_CURRENT_BINARY_DIR}
    ${CMAKE_CURRENT_SOURCE_DIR}/cmake/size_type.cpp)

MESSAGE(STATUS "  std::vector<>::size_type is ${CNCQT_PLATFORM_SIZE_TYPE} bits")

IF(CNCQT_PLATFORM_SIZE_TYPE EQUAL 32)
    SET(CNCQT_UINT_T_32_BITS 1)
ELSEIF(CNCQT_PLATFORM_SIZE_TYPE EQUAL 64)
    SET(CNCQT_UINT_T_64_BITS 1)
ELSE(CNCQT_PLATFORM_SIZE_TYPE EQUAL 32)
    MESSAGE(SEND_ERROR "Error detecting platform word-size.")
ENDIF(CNCQT_PLATFORM_SIZE_TYPE EQUAL 32)

