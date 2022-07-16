#include "gtest/gtest.h"
#include "../../libpair/include/stone_pair.h"

TEST(TestTest, testTest)
{
    EXPECT_EQ(0, 0);
}
int main(int argc, char **argv)
{
    ::testing::InitGoogleTest(&argc, argv);
    int ret = RUN_ALL_TESTS();
    return ret;
}
