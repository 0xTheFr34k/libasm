#include <unistd.h>
#include <stdio.h>
#include <errno.h>
#include <string.h> // For strerror

ssize_t ft_write(int fd, const void *buf, size_t count);
ssize_t ft_read(int fd, void *buf, size_t count);

int main()
{
/*
    int x = ft_write(-1, "Hello\n", 6);    
    printf("Return value: %d\n", x);
    printf("Error number: %d\n", errno);
    printf("Error message: %s\n", strerror(errno));
*/
	char buffer[10];
	ft_read(0,buffer,6);
	ft_write(1,buffer,6);
    return 0;
}

