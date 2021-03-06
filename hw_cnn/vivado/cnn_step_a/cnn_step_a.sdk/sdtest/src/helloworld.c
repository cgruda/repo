
#include <string.h>
#include "platform.h"
#include "xparameters.h"
#include "xil_printf.h"
#include "ff.h"
#include "xdevcfg.h"
#include <string.h>
#include <stdio.h>
#include <stdbool.h>

static FATFS fatfs;

int SD_Init()
{
    FRESULT rc;

    rc = f_mount(&fatfs, "", 0);
    if(rc) {
        xil_printf("ERROR : f_mount returned %d\r\n",rc);
        return XST_FAILURE;
    }
    return XST_SUCCESS;
}

#define TEMP_LEN 40

int SD_Transfer_read(char *path, float *buff, int rows, int cols)
{
    FIL fptr;
    FRESULT rc;
    UINT br;
    char temp[TEMP_LEN] = {0};
    char *p;

    rc = f_open(&fptr, path, FA_OPEN_EXISTING | FA_READ);
    if(rc) {
        xil_printf("ERROR : f_open returned %d!\r\n", rc);
        return XST_FAILURE;
    }

    rc = f_lseek(&fptr, 0);
    if(rc) {
        xil_printf("ERROR : f_lseek returned %d!\r\n", rc);
        return XST_FAILURE;
    }

    for (int i = 0; i < rows; i++) {
    	for (int j = 0; j < cols; j++) {
    		memset(temp, 0, TEMP_LEN);
    		p = temp;
    		while (1) {
    			rc = f_read(&fptr, (void*)p, 1, &br);
    			if(rc) {
					xil_printf("ERROR : f_read returned %d!\r\n", rc);
					return XST_FAILURE;
				}
    			if (*p == ',' || *p == '\n') {
    				*p = 0;
    				break;
    			}
    			p++;
    			if ((p - temp) == TEMP_LEN) {
					xil_printf("ERROR : temp buffer overrun!\r\n", rc);
					return XST_FAILURE;
    			}
    		}
    		sscanf(temp, "%g", &buff[i * cols +j]);
    	}
    }

    rc = f_close(&fptr);
    if(rc) {
        xil_printf(" ERROR : f_close returned %d\r\n", rc);
        return XST_FAILURE;
    }
    return XST_SUCCESS;
}

#define abs(a) (((a) < 0) ? -(a) : (a))
#define FLOAT_RES 100000

void print_float(float fnum)
{
	bool negative = fnum < 0;
	int w = fnum;
	int f = abs(fnum - w) * FLOAT_RES;
	if (negative) {
		xil_printf("-%d.%05d", w, f);
	} else {
		xil_printf("%d.%05d", w, f);
	}
}

int main()
{
    init_platform();
    xil_printf("csv scan test\r\n");

    //SD_Init();

    float kernel[9] = {0};
    float img[54 * 54] = {0};
    SD_Init();

    xil_printf("------\r\n");

    SD_Transfer_read("cnn_vals/conv0kernel.csv", kernel, 3, 3);
	for (int i = 0; i < 3; i++) {
		for (int j = 0; j < 3; j++) {
			print_float(kernel[i * 3 + j]);
			xil_printf("\r\n");
		}
	}

    xil_printf("------\r\n");

    SD_Transfer_read("data/0/img10.csv", img, 54, 54);

    for (int i = 0; i < 54; i++) {
    	for (int j = 0; j < 54; j++) {
    		if (img[i * 54 + j]) {
    			print_float(img[i * 54 + j]);
				xil_printf("\r\n");
    		}
    	}
    }





    cleanup_platform();
    return 0;
}
