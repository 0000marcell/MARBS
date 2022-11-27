// C program to implement
// the above approach
#include <stdio.h>
#include <stdlib.h>
#include <string.h>


// Driver code
int main()
{

  char currentline[256];
  FILE *file = fopen("tmp", "r");

  int aftertoken = 0;

  while (fgets(currentline, sizeof(currentline), file) != NULL) {
    printf("%s", currentline);
    if(strcmp(currentline, "# scripts\n") == 0) {
      aftertoken = 1;
    }
    if(aftertoken) {

    }
  }
	fclose(file);
	return 0;
}
