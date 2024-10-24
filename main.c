#include <unistd.h>
#include <stdio.h>
#include <errno.h>
#include <string.h> // For strerror

#include "libasm.h"

int main()
{
	/*
	int x = ft_write(-1, "Hello\n", 6);    
	printf("Return value: %d\n", x);
	printf("Error number: %d\n", errno);
	printf("Error message: %s\n", strerror(errno));
	*/

	/*
	char buffer[10];
	ft_read(0,buffer,6);
	ft_write(1,buffer,6);
	*/

	/*
	printf("%d\n",ft_strlen(""));
	*/

	/*
	char dest[255];
	printf("%s\n",ft_strcpy(dest,"Hello1"));
	*/

	printf("%d\n",ft_strcmp("b","e"));
	printf("%d\n",strcmp("b","e"));
    return 0;
}

