#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>
#include <unistd.h>
#include <sys/types.h>
#include <semaphore.h>
#include <pthread.h>

#define L 100

typedef struct threadData {
	pthread_t threadId;
	int id;
	int lines;
	int sum;
	FILE *fp;
} threadData ;

static void *readFile (void *);

sem_t sem;


int main (int argc, char *argv[]) {
	int i, nT, total, lines;
	threadData *td;
	void *retval;
	FILE *fp;

	nT = atoi (argv[1]);
	td = (threadData *) malloc(nT * sizeof (threadData));
	
	fp = fopen (argv[2], "r");
	if (fp==NULL) {
		fprintf (stderr, "Error Opening File.\n");
		exit (1);
	}

	sem_init (&sem, 0, 1);

	for (i=0; i<nT; i++) {
		td[i].id = i;
		td[i].fp = fp; // Same fp for all Threads
		td[i].lines = td[i].sum = 0;
		pthread_create (&(td[i].threadId),
		NULL, readFile, (void *) &td[i]);
	}

	total = lines = 0;
	
	for (i=0; i<nT; i++) {
		pthread_join (td[i].threadId, &retval);
		total += td[i].sum;
		lines += td[i].lines;
	}

	fprintf (stdout, "Total: Sum=%d #Lines=%d\n", total, lines);
	sem_destroy (&sem);
	fclose (fp);
	return (1);
}

static void *readFile (void *arg){
	int n, retVal;
	threadData *td;
	td = (threadData *) arg;

	while (1) {
		sem_wait (&sem);
		retVal = fscanf (td->fp, "%d", &n);
		sem_post (&sem);
		
		if (retVal == EOF)
			break;
		
		td->lines++;
		td->sum += n;
		sleep (1); // Delay Threads
	}

	fprintf (stdout, "Thread: %d Sum=%d #Lines=%d\n", td->id, td->sum, td->lines);
	pthread_exit ((void *) 1);
}
