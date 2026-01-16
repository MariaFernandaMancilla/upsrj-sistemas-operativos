#!/bin/bash

# ============================================================
# Práctica: Exploración del Scheduler Real en Linux
# Alumna: Maria Fernanda Barrientos Mancilla
# Sistema: Ubuntu 22.04
# Scheduler: Completely Fair Scheduler (CFS)
# ============================================================

echo "EXPLORACION DEL SCHEDULER REAL DE LINUX"
echo "--------------------------------------"
echo "Linux no implementa directamente FCFS, SJF o RR."
echo "Utiliza un scheduler moderno llamado CFS."
echo

# ------------------------------------------------------------
# PASO 1: LOCALIZAR EL CODIGO FUENTE DEL KERNEL
# ------------------------------------------------------------

echo "PASO 1: Localizando el codigo fuente del kernel"
echo "El kernel NO se encuentra en /home"
echo "Normalmente se localiza en /usr/src"
echo

pwd
cd /usr/src || exit

echo "Contenido de /usr/src:"
ls
echo

# ------------------------------------------------------------
# PASO 2: NAVEGAR A LA ESTRUCTURA DEL KERNEL
# ------------------------------------------------------------

echo "PASO 2: Entrando al codigo fuente del kernel"
echo "Se utiliza el kernel source descomprimido"
echo

cd linux-source-5.15.0 || exit

echo "Directorio actual:"
pwd
echo

# ------------------------------------------------------------
# PASO 3: LOCALIZAR EL SCHEDULER PRINCIPAL
# ------------------------------------------------------------

echo "PASO 3: Localizando el scheduler principal"
echo "El scheduler se encuentra en kernel/sched"
echo

cd kernel/sched || exit

echo "Archivos del scheduler:"
ls
echo

echo "El archivo fair.c implementa el Completely Fair Scheduler (CFS)"
echo

# ------------------------------------------------------------
# PASO 4: MOSTRAR CODIGO FUENTE REAL DEL SCHEDULER
# ------------------------------------------------------------

echo "PASO 4: Mostrando el codigo fuente real del scheduler"
echo "Archivo: kernel/sched/fair.c"
echo

echo "Aqui realizamos un cat a fair > cat fair.c"


# ------------------------------------------------------------
# ANALISIS DEL CODIGO (DOCUMENTADO EN EL SCRIPT)
# ------------------------------------------------------------

# El archivo fair.c contiene comentarios del propio kernel
# donde se explica el funcionamiento del Completely Fair Scheduler.
#
# Se identifican conceptos como:
# - Fairness: reparto justo del tiempo de CPU
# - Virtual Runtime (vruntime): tiempo virtual consumido por un proceso
#
# Relacion con algoritmos teoricos:
#
# FCFS:
# - Ejecuta procesos en orden de llegada
# - CFS no sigue ese orden
#
# SJF:
# - Requiere conocer la duracion del proceso
# - CFS no conoce el tiempo real de ejecucion
#
# Round Robin:
# - Usa un quantum fijo
# - CFS ajusta dinamicamente el tiempo de ejecucion

# ------------------------------------------------------------
# PREGUNTA DE REFLEXION (OBLIGATORIA)
# ------------------------------------------------------------

# ¿Por que Linux no implementa directamente FCFS, SJF o RR?
#
# Porque son algoritmos teoricos y simplificados.
# En sistemas reales existen miles de procesos,
# no se conoce su tiempo de ejecucion,
# y se requiere equidad, eficiencia y escalabilidad.
#
# El CFS es una solucion practica para sistemas modernos.

echo
echo "--------------------------------------"
echo "FIN DE LA PRACTICA"
echo "Scheduler analizado: CFS"
echo "--------------------------------------"
