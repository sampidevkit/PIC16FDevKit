#include "libcomp.h"

int main(int argc, char** argv)
{
    FILE *pHex=fopen("lastbuild.hex", "r");

    if(pHex==NULL)
        return EXIT_FAILURE;

    while(1)
    {
        int this_task_rslt=HEXPARSE_Tasks(fgetc(pHex));

        if(this_task_rslt==PROC_DONE)
        {
            printf("\nEnd file");
            break;
        }
        else if(this_task_rslt==PROC_ERR)
        {
            printf("\nHex File Error");
            break;
        }
        
        //LogTask();
    }

    fclose(pHex);
    printf("\n\n");

    return (EXIT_SUCCESS);
}

