# Ejercicios para practicar

## BLOQUE A: varios ejercicios de filtros, tuberías y redirecciones

### ¿Qué hace la siguiente orden? ¿Cuál es la diferencia con la siguiente orden?

```bash
date > /tmp/foo.txt ; who >> /tmp/foo.txt
```

```bash
date > /tmp/foo.txt ; who > /tmp/foo.txt
```

_Repuesta:_

La primera orden obtiene la fecha actual y guarda el resultado en el fichero `/tmp/foo.txt` y después obtiene los usuarios que están conectados y los añade al final del fichero `/tmp/foo.txt`.

La segunda orden obtiene la fecha actual y guarda el resultado en el fichero `/tmp/foo.txt` y después obtiene los usuarios que están conectados y sobreescribe el fichero `/tmp/foo.txt`.

### ¿Qué hace la siguiente orden?

```bash
ls -lR /boot 2> /tmp/fichA > /tmp/fichB
```

_Respuesta:_

Obtiene un listado de todos los ficheros y directorios del directorio `/boot`, incluyendo los subdirectorios y ficheros internos, y guarda el resultado en el fichero `/tmp/fichB`. Si se produce algún error, lo guarda en el fichero `/tmp/fichA`.

### Combinando las órdenes head y tail, muestre la sexta línea del fichero `/etc/passwd`

_Respuesta:_

```bash
head -n 6 /etc/passwd | tail -n 1
```

### Contar el número de ficheros del directorio `/boot` (y sólo `/boot`, sin recursividad) cuyo nombre contenga una o más letras mayúsculas (pista: grep, wc)

_Respuesta:_

```bash
ls -l /boot | grep -E [A-Z] | wc -l
```

### Cada usuario del sistema tiene asignado un shell por defecto (último campo del fichero `/etc/passwd`). Escriba una lista ordenada alfabéticamente de los nombres de usuario (login name) que no usan `/bin/bash` como shell por defecto (pista: cut, grep, sort)

_Respuesta:_

```bash
cut -d : -f 1,7 /etc /etc/passwd | grep -v bash | sort -t : -k 1
```

### ¿Qué hace la siguiente orden? Modifíquela para que sea más eficiente

```bash
cat /etc/group | sort -t: -k1 | cut -d: -f1,3
```

_Respuesta:_

Este comando muestra el contenido del fichero `/etc/group`, lo ordena por el primer campo usando como separados los dos puntos `:` y corta los campos 1 y 3 usando como separador los dos puntos `:`.

```bash
cut -d : -f 1,3 /etc/passwd | sort -t : -k 1
```

### Enumere los shells que usan los usuarios de su sistema, sin que haya repeticiones (pista: sort y uniq)

_Respuesta:_

```bash
cut -d : -f 7 /etc/passwd | sort | uniq
```

## BLOQUE B: ejercicios con find, grep y ps

### ¿Qué hace la siguiente orden?

```bash
find /etc /boot -type f -newer /etc/passwd
```

_Respuesta:_

Busca archivos regulares `-type f` en los directorios `/etc` y `/boot` que sean más recientes `-newer` que el archivo `/etc/passwd`.

### Localice todos los archivos que no pertenezcan al usuario `root` cuyo tamaño sea mayor que 10 KiB y menor que 50 KiB

_Respuesta:_

```bash
find / -not -user root -size +10k -size -50k
```

### Calcule la suma MD5 de cada uno de los ficheros bajo `/bin` y `/sbin` que sean de tamaño inferior a 10KiB o bien superior a 1MiB. El cálculo de la suma MD5 se realiza con la orden `md5sum`

_Respuesta:_

```bash
find /bin /sbin -size -10k -o -size +1M -exec md5sum {} \;
```

### Localice todos los archivos del directorio `/root` que tengan permiso de lectura para el grupo propietario, independientemente del resto de permisos

_Respuesta:_

```bash
find /root -perm -g=r
```

### ¿Qué hace la siguiente orden?

```bash
cd ; find . -maxdepth 1 \( -empty -o -newer /etc/passwd \)
```

_Respuesta:_

Cambia el directorio en el que se encuentra el usuario por el directorio `home` y después busca archivos en el directorio actual que estén vacíos `-empty` o que sean más recientes `-newer` que el archivo `/etc/passwd`.

### Construye una expresión regular que reconozca direcciones de correo electrónico (por ejemplo <hola-mundo@gmail.com>). Utiliza el comando grep para que lea líneas de la entrada estándar (o un fichero de texto) y devuelva solamente aquellas cadenas de texto que son direcciones de correo. En caso de que la necesites, la especificación completa del formato de las direcciones de correo electrónico está en el [estándar RFC822 de Internet](https://www.w3.org/Protocols/rfc822/) (apartado 6.1)

_Respuesta:_

```bash
grep -E -o '[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}'
```

### Muestre el tiempo transcurrido desde su lanzamiento, el PID y la orden de todos los procesos que se están ejecutando en el sistema

_Respuesta:_

```bash
ps -e -o etime,pid,comm
```

### Muestre el PID y el propietario de todos los procesos que estén ejecutando el programa bash. La lista debe estar ordenada por el nombre del propietario

_Respuesta:_

```bash
ps -e -o pid,user,comm --sort=user | grep bash
```

### ¿Qué hace la siguiente orden?

```bash
ps -e --forest
```

_Respuesta:_

El comando `ps` muestra los procesos que se están ejecutando en el sistema. La opción `-e` muestra todos los procesos y la opción `--forest` muestra los procesos en forma de árbol.

### ¿Qué hace la siguiente orden?

```bash
ps -e -opid,ppid,user,pcpu,cputime,cmd --sort=cputime
```

_Respuesta:_

El comando `ps` muestra los procesos que se están ejecutando en el sistema. La opción `-e` muestra todos los procesos y la opción `-o` muestra los campos `pid` (id del proceso), `ppid` (id del proceso padre), `user` (nombre del usuario), `pcpu` (porcentaje de CPU usada), `cputime` (tiempo de CPU usado) y `cmd` (ruta del comando). La opción `--sort=cputime` ordena los procesos por el tiempo de CPU que han consumido.

### Localice los 5 procesos que han consumido más CPU hasta el momento

_Respuesta:_

```bash
ps -e -opid,ppid,user,pcpu,cputime,cmd --sort=cputime | tail -n 5
```

## EJERCICIOS AVANZADOS

### Buscar ficheros homónimos en varios directorios (dificultad baja)

En las carpetas `/usr/bin` y `/etc` existen varios ficheros homónimos (que tienen el mismo nombre), por ejemplo `/usr/bin/passwd` y `/etc/passwd`. Obtenga la lista de todos esos ficheros homónimos.

```bash
ls /usr/bin/ /etc/ | sort | uniq -d
```

###

```bash

```

###

```bash

```

###

```bash

```

###

```bash

```

###

```bash

```

###

```bash

```
