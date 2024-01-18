# Ejercicios con `ps` y `find`

## Mostrar un listado que contenga el PID de todos los procesos lanzados en el sistema que en el campo `command`tengan la cadena`bash`

```bash
ps -e -o pid,comm | grep bash | tr -s ' ' | cut -d ' ' -f 2
```

## Obtener el número de procesos que hay lanzados en el sistema que en el campo `command` tengan la cadena `bash`

```bash
ps -e -o comm | grep bash | wc -l
```

## Mostrar un listado con todos los procesos que se estén ejecutando en el sistema. Cada línea contendrá el identificador y la orden asociada al proceso correspondiente. El listado deberá estar ordenado por el identificador de proceso

```bash
ps -e -o pid,comm | sort -n
```

## Mostrar el tiempo de sistema consumido, el identificador del proceso y la orden ejecutada para todos los procesos que se estén ejecutando en el sistema. El listado debe estar ordenado por el tiempo del sistema consumido

```bash
ps -e -o time,pid,comm | sort -n
```

## Mostrar todos los procesos pertenecientes al usuario `root` que se estén ejecutando en el sistema, pero solo aquellos que se han lanzado en una terminal (`tty`) y ordenados por el nombre de la terminal

```bash
ps -e -u root -o tty,pid,comm | grep -v '?' | sort -t ' ' -k 1
```

## Mostrar todos los procesos que se están ejecutando en el sistema, que no pertenezcan al usuario `root`, con los siguientes atributos: su tamaño en memoria virtual, su identificador de proceso, el nombre del usuario y la orden ejecutada

```bash
ps -e -o vsz,pid,user,comm | grep -v root
```

## Mostrar un listado de todos los archivos contenidos en el directorio `/root` cuyo propietario sea el usuario `root` y que sean de tipo regular o directorio

```bash
find /root -user root -type f -o -type d
```

## Realizar una búsqueda en el directorio `/root` de todos los ficheros regulares del usuario `root` y mostrar los permisos para cada uno de ellos

```bash
find /root -user root -type f -exec ls -l {} \;
```

## Obtener los archivos del sistema que no sean propiedad del usuario `root` ni del grupo `root` y cuyo tamaño supere los 1024 KiB

```bash
find / ! -user root ! -group root -size +1024k
```

## Obtener los archivos del sistema que sean propiedad del usuario `root` que sean ejecutables y tengan un tamaño que supere los 1024 KiB

```bash
find / -user root -type f -perm /u+x -size +1024k
```

## Listar los archivos de los directorios `/bin`, `/sbin` y `/usr/bin` cuyos permisos sean 777

```bash
find /bin /sbin /usr/bin -perm 777
```
