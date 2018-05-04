#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <semaphore.h>
#include <pthread.h>

int main() {
	int S[2];
	pid_t pid;
	semaphoreInit (S, 0);

	pid = fork();
	// Check for correctness
	if (pid == 0) { // child process
		semaphoreWait (S);
		printf("Wait done.\n");
	} else { // parent process
		printf("Sleep 3s.\n");
		sleep (3);
		semaphoreSignal (S);
		printf("Signal done.\n");
	}

	return 0;
}