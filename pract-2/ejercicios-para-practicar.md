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
cut -d : -f 1,3 /etc/group | sort -t : -k 1
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
ps -e -o pid,ppid,user,pcpu,cputime,cmd --sort=cputime | tail -n 5
```

## EJERCICIOS AVANZADOS

### Buscar ficheros homónimos en varios directorios (dificultad baja)

En las carpetas `/usr/bin` y `/etc` existen varios ficheros homónimos (que tienen el mismo nombre), por ejemplo `/usr/bin/passwd` y `/etc/passwd`. Obtenga la lista de todos esos ficheros homónimos.

_Respuesta:_

```bash
ls /usr/bin/ /etc/ | sort | uniq -d
```

### Filtrar procesos (dificultad media)

En dos órdenes, muestre:

- Los 10 procesos que llevan más tiempo en el sistema.
- Los 10 procesos que han consumido más CPU hasta el momento.

En ambos casos, muestre la siguiente información de cada proceso: PID, PPID, orden que se lanzó, tiempo en el sistema y consumo acumulado de CPU. Ordene la lista por el criterio de filtrado que se solicita en cada caso (tiempo en el sistema o consumo de CPU).

_Respuesta:_

```bash
ps -e -o pid,ppid,comm,etime,cputime --sort=etime | tail -n 10
```

```bash
ps -e -o pid,ppid,comm,etime,cputime --sort=cputime | tail -n 10
```

### Propietarios en un directorio (dificultad media)

Obtenga la lista de usuarios que son propietarios de algún fichero en el directorio `una_carpeta`. Cumpla con estos requisitos:

- La búsqueda debe considerar cualquier tipo de fichero: regulares, dispositivos, directorios...
- No haga recorridos recursivos, sólo rastree los elementos que están directamente accesibles desde el directorio `una_carpeta`.
- El listado no debe mostrar duplicados (un usuario sólo puede aparecer una vez en la lista).

_Respueta:_

```bash
ls -l una_carpeta | cut -d ' ' -f 3 | sort | uniq
```

### Propietarios de múltiples ficheros (dificultad media)

Obtenga la lista de usuarios que son propietarios de más de un fichero en el directorio `/tmp` cumpliendo con estos requisitos:

1. La búsqueda debe considerar cualquier tipo de fichero: regulares, dispositivos, directorios...
2. No haga recorridos recursivos, sólo rastree los elementos que están directamente accesibles desde el directorio `/tmp`.
3. El listado no debe mostrar duplicados (un usuario sólo puede aparecer una vez en la lista).

_Respueta:_

```bash
ls -l /tmp | cut -d ' ' -f 3 | sort | uniq -d
```

### Comprimir ficheros grandes (dificultad media)

Comprima con `gzip` cada uno de los ficheros mayores de 10 KiB que existan bajo el directorio actual, de manera que cada fichero mayor de 10 KiB sea reemplazado por su versión comprimida.

_Respuesta:_

```bash
find . -size +10k -exec gzip {} \;
```

### Localizar documentos HTML (dificultad media-alta)

Obtenga la lista de todos los directorios del sistema que contienen documentos HTML. Los documentos HTML son aquellos que tienen extensión `.htm` o`.html`, sin distinguir mayúsculas.

_Respuesta:_

```bash
find / -regex '.*\.html?' -exec dirname {} \;
```

### Trasladar archivos grandes (dificultad alta)

Este ejercicio es difícil, así que lo plantearemos por iteraciones de complejidad creciente. Todas las versiones deben poder resolverse con una única orden. No se preocupe si no llega a realizar la iteración 4: en la asignatura lo máximo que le podríamos pedir es algo parecido a la versión 3 y normalmente será algo similar a la versión 2.

_Iteración 1._ Muestre las rutas todos los ficheros del sistema que midan más de 100MiB y que no hayan sido accedidos en el último mes.

_Iteración 2._ Elimine todos los ficheros que cumplan con los criterios de la versión 1.

_Iteración 3._ Traslade cada uno de esos ficheros a la carpeta `/grandes-sin-usar`, cambiando su nombre por`fichero.YYYYMMDD`, donde `fichero` es el nombre original y`YYYYMMDD` es la fecha actual (hoy) en formato año-mes-día.

> Ejemplo: si ejecutamos el script el día 12/10/2015, el fichero `penicula.mkv` se traslada a`/grandes-sin-usar/penicula.mkv.20151012`.

_Iteración 4 (final)._ Lo mismo que la versión 3, pero el nombre del fichero trasladado debe ser `nombre.YYYYMMDD.extensión`, donde `nombre` es el nombre original del fichero sin su extensión, `YYYYMMDD` es la fecha de último acceso el fichero y`extensión` son los últimos caracteres del nombre del fichero, después del carácter `.`, si existe.

> Ejemplo: el fichero `penicula.mkv`, accedido por última vez el día 7/1/2014, se convertirá en`penicula.20140107.mkv`.

_Respuesta:_

```bash
find / -size +100M -atime +30
```

```bash
find / -size +100M -atime +30 -exec rm {} \;
```

```bash
find / -size +100M -atime +30 -exec mv {} /grandes-sin-usar/{}.$(date +%Y%m%d) \;
```

```bash
find / -size +100M -atime +30 -exec mv {} /grandes-sin-usar/$(basename {} .$(basename {} | cut -d . -f 2)).$(date +%Y%m%d).$(basename {} | cut -d . -f 2) \;
```
