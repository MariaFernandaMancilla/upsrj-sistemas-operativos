#!/bin/bash


# Práctica: Exploración del Scheduler Real en Linux
# Alumna: Maria Fernanda Barrientos Mancilla
# Sistema: Ubuntu 22.04
# Scheduler: Completely Fair Scheduler (CFS)


echo " EXPLORACIÓN DEL SCHEDULER REAL DE LINUX"
echo "En esta práctica se analiza el scheduler real de Linux."
echo "Linux no implementa directamente FCFS, SJF o RR,"
echo "sino un scheduler moderno llamado CFS."
echo ""


# PASO 1: Ubicación del código fuente del kernel

echo "PASO 1: Localizando el código fuente del kernel"
echo "El código fuente del kernel NO está en /home"
echo "Normalmente se encuentra en el directorio /usr/src"
echo ""

pwd
cd /usr/src || exit

echo "Contenido de /usr/src:"
ls
echo ""


# PASO 2: Navegar a la carpeta de scheduling

echo "PASO 2: Navegando a la carpeta de scheduling"
echo "Dentro del kernel, la planificación de procesos"
echo "se encuentra en kernel/sched"
echo ""

# Seleccionar una carpeta de linux-headers (sin usar comandos no permitidos)
set -- linux-headers-*-generic
KERNEL_DIR=$1

echo "Kernel seleccionado:"
echo "$KERNEL_DIR"
echo ""

cd "$KERNEL_DIR/kernel/sched" || exit

echo "Ruta actual:"
pwd
echo ""

echo "Archivos dentro de sched:"
ls
echo ""


# PASO 3: Scheduler principal

echo "PASO 3: Identificando el scheduler principal"
echo "El archivo fair.c implementa el"
echo "Completely Fair Scheduler (CFS),"
echo "que es el scheduler por defecto de Linux."
echo ""

# PASO 4: Mostrar el código real del scheduler

echo "PASO 4: Mostrando el código fuente real del scheduler"
echo "Archivo: fair.c"
echo ""

cat fair.c

echo ""

echo " FIN DE LA EXPLORACIÓN DEL SCHEDULER"



# PREGUNTA DE REFLEXIÓN (RESPUESTA)

# ¿Por qué Linux no implementa directamente FCFS, SJF o RR?
#
# Linux no implementa directamente FCFS, SJF o RR porque
# estos algoritmos son modelos teóricos simplificados.
# En un sistema operativo real se requiere equidad,
# baja latencia, soporte para múltiples núcleos y buen
# rendimiento para procesos interactivos.
# El Completely Fair Scheduler (CFS) permite repartir
# el tiempo de CPU de manera más justa y eficiente
# que los algoritmos clásicos vistos en clase.
