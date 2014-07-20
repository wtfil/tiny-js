#include "../TinyJS.h"
#include <stdlib.h>
int main() {
	int a = CTinyJS::eval("./example/example.js");
	printf("result: %d", a);
}
