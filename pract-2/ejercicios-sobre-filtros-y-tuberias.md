# Ejercicios sobre filtros y tuberías

## Obtener los nombres de las cuentas de usuario del sistema, ordenados alfabéticamente. (pista: `cut`)

```bash
cut -d : -f 1 /etc/passwd | sort
```

## Obtener los nombres de cuentas de usuario del sistema que contengan alguna letra mayúscula. (pista: `grep`)

```bash
cut -d : -f 1 /etc/passwd | grep -E "[A-Z]"
```

## Encontrar los GID que se utilizan más de una vez en el fichero `/etc/passwd`. El GID es el campo número 4. Hay que devolver la lista de GID que se repiten. (pista: `uniq`)

```bash
cut -d : -f 4 /etc/passwd | uniq -d
```

## Quitar los comentarios de un fichero de texto. Un comentario empieza por el carácter `#` y llega hasta el final de la línea. La salida de la orden debe ser el contenido del fichero original, con todos los comentarios eliminados. (pista: `cut`)

```bash
cut -d "#" -f 1 fichero.txt
```

## Contar el número de apariciones de una palabra dentro de un fichero de texto. La palabra se pasa como argumento en la orden. Se considera que una palabra es un grupo de caracteres sin espacios ni tabuladores: el espacio o el tabulador actúan como separadores de palabras. (pista: usar `tr` para transformar espacios en saltos de línea)

```bash
tr " " "\n" < fichero.txt | grep -c palabra
```

## Determinar cuántos shells distintos se están usando en fichero `/etc/passwd`. (pista: `sort`, `uniq`, `wc`)

```bash
cut -d ":" -f 7 /etc/passwd | sort | uniq | wc -l
```

## Descubrir si existen varios usuarios con el mismo UID. (pista: `sort`, `uniq`)

```bash
cut -d ":" -f 3 /etc/passwd | sort -n | uniq -d
```

## ¿Cuántos dispositivos de tipo carácter o bloque hay definidos en el sistema? (pista: los dispositivos que reconoce el sistema están en `/dev`)

```bash
ls -l /dev | grep -E "^c|^b" -c
```

## Obtener el número de procesos que hay actualmente ejecutándose en el sistema resolviendo funciones del escritorio Gnome (nota: todos los programas del entorno Gnome comienzan por `gnome-`)

```bash

```

## De los procesos propiedad del usuario `usuario1`, obtener sus identificadores y el tiempo que llevan ejecutándose. La relación debe estar en orden inverso por el tiempo de ejecución. (pista: uso combinado `ps`y`sort`)

```bash

```

## Listar los archivos del usuario `usuario1` a los que se ha accedido en los últimos siete días. (pista: `find` y expresiones numéricas)

```bash

```

## Encontrar los ficheros del usuario `usuario1` que terminan con extensión `.change` y en la misma orden cambiar su propietario a `root`. (pista: `find` con ejecución de orden en cada hallazgo)

```bash

```

## Encontrar los ficheros del usuario `usuario1` que terminan con extensión `.sh` y concatenarlos todos en un único fichero llamado `mis_scripts.txt`. (pista: `find` con ejecución de orden en cada hallazgo)

```bash

```
