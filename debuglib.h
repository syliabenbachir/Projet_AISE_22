#include <stdint.h>
#include <sys/types.h>


/* Print out a message, prefixed by the process ID.
*/
void procmsg(const char* format, ...);


/* Run the given program in a child process with exec() and tracing
** enabled.
*/
void run_target(const char* programname);


/* Retrieve the child process's current instruction pointer value.
*/
long get_child_eip(pid_t pid);

