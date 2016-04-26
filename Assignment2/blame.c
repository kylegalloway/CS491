/*
* Blame server. Assigns blame to the person of your choice.
*
* Usage: blame
* (reads one line from standard input)
*
* To compile:
* gcc blame.c -o blame
*
* Copyright 2016 by Feckless C. Coder, PhD.
*/
#include <stdio.h>
#include <string.h>
#define INPUT_BUFFER 256 /* maximum name size */

/*
* read input, copy into s
* gets() is insecure and prints a warning
* so we use this instead
*/
void grabline(char *s)
{
	int c;
	while ((c=getchar()) != EOF) {
		*s++ = c;
	}
	*s = '\0';
}

/*
* convert newlines to nulls in place
*/
void purgenewlines(char *s)
{
	int l;
	l = strlen(s);
	while (l--)
		if (s[l] == '\n')
			s[l] = '\0';
}

int main()
{
	char scapegoat[INPUT_BUFFER];
        printf("%p", &scapegoat);
	grabline(scapegoat);
	/* this check ensures there's no buffer overflow */
	if (strlen(scapegoat) < INPUT_BUFFER) {
		purgenewlines(scapegoat);
		printf("It's all %s's fault.\n", scapegoat);
	}

	return 0;
}
