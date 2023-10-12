# Ejercicios para practicar

## BLOQUE A: varios ejercicios de filtros, tuberías y redirecciones

### ¿Qué hace la siguiente orden? ¿Cuál es la diferencia con la siguiente orden?

```bash
date > /tmp/foo.txt ; who >> /tmp/foo.txt
```

```bash
date > /tmp/foo.txt ; who > /tmp/foo.txt
```

### ¿Qué hace la siguiente orden?

```bash
ls -lR /boot 2> /tmp/fichA > /tmp/fichB
```

### Combinando las órdenes head y tail, muestre la sexta línea del fichero `/etc/passwd`

```bash
head -n 6 /etc/passwd | tail -n 1
```

### Contar el número de ficheros del directorio `/boot` (y sólo `/boot`, sin recursividad) cuyo nombre contenga una o más letras mayúsculas (pista: grep, wc)

```bash

```

### Cada usuario del sistema tiene asignado un shell por defecto (último campo del fichero `/etc/passwd`). Escriba una lista ordenada alfabéticamente de los nombres de usuario (login name) que no usan `/bin/bash` como shell por defecto (pista: cut, grep, sort)

```bash

```

### ¿Qué hace la siguiente orden? Modifíquela para que sea más eficiente:

```bash
cat /etc/group | sort -t: -k1 | cut -d: -f1,3
```

### Enumere los shells que usan los usuarios de su sistema, sin que haya repeticiones (pista: sort y uniq)

```bash

```

## BLOQUE B: ejercicios con find, grep y ps

### ¿Qué hace la siguiente orden?

```bash
find /etc /boot -type f -newer /etc/passwd
```

### Localice todos los archivos que no pertenezcan al usuario `root` cuyo tamaño

sea mayor que 10 KiB y menor que 50 KiB

```bash

```

### Calcule la suma MD5 de cada uno de los ficheros bajo `/bin` y `/sbin` que sean de tamaño inferior a 10KiB o bien superior a 1MiB. El cálculo de la suma MD5 se realiza con la orden `md5sum`

```bash

```

### Localice todos los archivos del directorio `/root` que tengan permiso de lectura para el grupo propietario, independientemente del resto de permisos

```bash

```

### ¿Qué hace la siguiente orden?

```bash
cd ; find . -maxdepth 1 \( -empty -o -newer /etc/passwd \)
```

### Construye una expresión regular que reconozca direcciones de correo electrónico (por ejemplo hola-mundo@gmail.com). Utiliza el comando grep para que lea líneas de la entrada estándar (o un fichero de texto) y devuelva solamente aquellas cadenas de texto que son direcciones de correo. En caso de que la necesites, la especificación completa del formato de las direcciones de correo electrónico está en el [estándar RFC822 de Internet](https://www.w3.org/Protocols/rfc822/) (apartado 6.1)

```bash

```

### Muestre el tiempo transcurrido desde su lanzamiento, el PID y la orden de todos los procesos que se están ejecutando en el sistema

```bash

```

### Muestre el PID y el propietario de todos los procesos que estén ejecutando el programa bash. La lista debe estar ordenada por el nombre del propietario

```bash

```

### ¿Qué hace la siguiente orden?

```bash
ps -e --forest
```

### ¿Qué hace la siguiente orden?

```bash
ps -e -opid,ppid,user,pcpu,cputime,cmd --sort=cputime
```

### Localice los 5 procesos que han consumido más CPU hasta el momento

```bash

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
