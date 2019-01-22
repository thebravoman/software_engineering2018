//------------------------------------------------------------------------
// NAME: Ilia Parvanov
// CLASS: XIa
// NUMBER: 13
// PROBLEM: #1
// FILE NAME: pipe.c
// FILE PURPOSE:
//------------------------------------------------------------------------

#include <sys/types.h>
#include <unistd.h>
#include <string.h>
#include <stdio.h>

int main() {
    char *msg = "Hello world\n";
    int pipefd[2];
    pipe(pipefd);

    pid_t pid = fork();
    if(pid == 0) {
        char *args[] = {"ls", "-l", 0};
        close(pipefd[0]);
        dup2(pipefd[1], STDOUT_FILENO);
        close(pipefd[1]);
        execvp(args[0], args);
    }
    else if(pid > 0) {
        char *args[] = {"wc", "-l", 0};
        close(pipefd[1]);
        dup2(pipefd[0], STDIN_FILENO);
        close(pipefd[0]);
        execvp(args[0], args);
    }
    
    return 0;
}