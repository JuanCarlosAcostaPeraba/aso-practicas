# Ejercicios básicos con órdenes

## Determinar en qué archivos se encuentra la cadena `PATH`

```bash
grep -r PATH /
```

## Obtener todos los procesos del sistema

```bash
ps -A
```

## Obtener todos los procesos del usuario actual

```bash
ps -u $USER
```

## Finalizar un proceso con un identificador de proceso dado

```bash
kill -9 <ID>
```

## Finalizar todos los procesos que consisten en la ejecución de un determinado fichero ejecutable

```bash
killall -9 vi
```

## Lanzar el programa Firefox y matarlo desde una terminal

```bash
firefox&
ps -A | grep firefox
killall -9 firefox
```

## Verificar que el contenido de dos archivos coincide

```bash
diff archivo1 archivo2
```

## Hacer que todos los archivos existentes en mi directorio actual sólo puedan ser ejecutados por su propietario

```bash
chmod u+x,go-x *
```

## Crear un archivo vacío de nombre `prueba`

```bash
touch prueba
```

## Cambiar la fecha de la última actualización al fichero `prueba` a 15/01/2002

```bash
touch -t 200201150000 prueba
```

> Nota: la fecha debe ser en formato `YYYYMMDDhhmm` (año, mes, día, hora, minuto)

## Cambiar el propietario del fichero `prueba`

```bash
chown root prueba
```

## Cambiar el grupo propietario del fichero `prueba`

```bash
chgrp root prueba
```

## Localizar a partir del directorio actual todos los archivos propiedad del usuario root

```bash
find ./ -user root
```

## Localizar todos los archivos en el sistema cuyo nombre contenga la cadena `rc`

```bash
find / -name "*rc*"
```

## Localizar todos los archivos del sistema que hayan sido modificados en el día de hoy

```bash
find / -mtime -1
```

## Borrar todos los ficheros regulares con extensión `.txt` del directorio `/tmp` que tengan más de dos días de antigüedad

```bash
find /tmp -name "*.txt" -mtime +2 -exec rm {} \;
```
