#include "../TinyJS.h"
int main() {
	int a = CTinyJS::runJS("var a = 4; exports = a;");
	printf("result: %d", a);
}
