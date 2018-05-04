#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <semaphore.h>
#include <pthread.h>

void semaphoreWait (int *S) {
			char ctr;

			//If the pipe is empty, read() waits
			if (read (S[0], &ctr, sizeof(char)) != 1) {
				printf (“Error”);
				exit (-1);
			}

			return;
		}


void semaphoreSignal (int *S) {
			char ctr = 'X';

			//Writes a single character, i.e., increments the semaphore counter k
			if (write(S[1], &ctr, sizeof(char)) != 1) {
				printf (“Error”);
				exit (-1);
			}
			return;
		}


		void semaphoreInit (int *S, int k) {
			char ctr = 'X';
			int i;
			if (pipe (S) == -1) {
				printf (“Error”);
				exit (-1);
			}

			// Writes k characters, i.e., initializes the semaphore counter to k
			for(i=0;i<k,i++)
				if (write(S[1], &ctr, sizeof(char)) != 1) {
				printf (“Error”);
				exit (-1);
			}
			return;
		}		

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