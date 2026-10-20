#include "unity.h"
#include <stdbool.h>
#include <stdlib.h>
#include "../../examples/autotest-validate/autotest-validate.h"
#include "../../assignment-autotest/test/assignment1/username-from-conf-file.h"

/**
* This function should:
*   1) Call the my_username() function in autotest-validate.c to get your hard coded username.
*   2) Obtain the value returned from function malloc_username_from_conf_file() in username-from-conf-file.h within
*       the assignment autotest submodule at assignment-autotest/test/assignment1/
*   3) Use unity assertion TEST_ASSERT_EQUAL_STRING_MESSAGE to verify the two strings are equal.  See
*       the [unity assertion reference](https://github.com/ThrowTheSwitch/Unity/blob/master/docs/UnityAssertionsReference.md)
*/
void test_validate_my_username()
{

    //Get the Hardcoded username 
    const char *userName = my_username();

    //Read the username from the conf
    char *config_userName = malloc_username_from_conf_file();

    //Verify both usernames are identical 
    TEST_ASSERT_EQUAL_STRING_MESSAGE(
        userName,
        config_userName,
        "GitHub username does not match config file"
    );

    //free memory allocated 
    free(config_userName);
}
