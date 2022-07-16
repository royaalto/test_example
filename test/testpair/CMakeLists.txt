file(GLOB SRCS *.cpp)

ADD_EXECUTABLE(test_stonepair ${SRCS})

include(../../libpair/include/stone_pair.h)

TARGET_LINK_LIBRARIES(test_stonepair
    stonepair
    libgtest
)

add_test(NAME test_stonepair
        COMMAND test_stonepair)
