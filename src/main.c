#include <stdlib.h>
int main()
{
    char* p = (char*)malloc(16);
    free(p);

    return 0;
}
