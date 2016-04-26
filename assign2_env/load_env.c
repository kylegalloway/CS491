#include <stdlib.h>
#include <string.h>
#include <unistd.h>

char code[] = 
	"\xeb\x19"
	"\x31\xc0"
	"\xb0\x04"
	"\x31\xdb"
	"\xb3\x01"
	"\x59"
	"\x31\xd2"
	"\xb2\x0f"
	"\xcd\x80"
	"\x31\xc0"
	"\xb0\x01"
	"\x31\xdb"
	"\xb3\x01"
	"\xcd\x80"
	"\xe8\xe2\xff\xff\xff"
	"\x48\x65\x6c\x6c\x6f\x2c\x20\x57"
	"\x6f\x72\x6c\x64\x21\x0d\x0a";

int main(void)
{
	char buf[512];

	memset(buf, 0x90, 512);

	memcpy(&buf[512-strlen(code)], code, strlen(code));

	setenv("PAYLOAD", buf, 1);
	putenv(buf);
	system("bash");
	return 0;
}