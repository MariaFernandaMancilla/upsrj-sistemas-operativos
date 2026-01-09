#include <stdio.h>
#include "process.h"

int main() {
    int n;
    printf("Número de procesos: ");
    scanf("%d", &n);

    Process p[n];
    read_processes(p, n);
    init_processes(p, n);

    int time = 0;

    for (int i = 0; i < n; i++) {
        if (time < p[i].arrival_time) {
            time = p[i].arrival_time;
        }

        printf("Tiempo %d: Ejecutando P%d (BT=%d)\n",
               time, p[i].id, p[i].burst_time);

        p[i].waiting_time = time - p[i].arrival_time;
        time += p[i].burst_time;
        p[i].turnaround_time = p[i].waiting_time + p[i].burst_time;
        p[i].completed = 1;

        printf("   -> P%d terminó en tiempo %d\n", p[i].id, time);
    }

    print_results(p, n, "FCFS Scheduling");
    return 0;
}
