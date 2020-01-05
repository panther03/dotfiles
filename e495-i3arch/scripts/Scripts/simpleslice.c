#include <stdio.h>
#include <string.h>

int main() {
	char str[28];

	scanf("%s", str);
	str[strlen(str)]=0;
	printf("%s", str);

	return 0;
}
