# Administración de Sistemas Operativos

Prácticas de la asignatura de Administración de Sistemas Operativos.

**Desarrollado en bash**

## Prácticas

<details>
   <summary>
      <a href="./pract-2/2.2-ejercicios-basicos-con-ordenes/">2.2 Ejercicios básicos con órdenes</a>
   </summary>

1.  [Determinar en qué archivos se encuentra la cadena `PATH`](./pract-2/2.2-ejercicios-basicos-con-ordenes/1.md)
2.  [Obtener todos los procesos del sistema](./pract-2/2.2-ejercicios-basicos-con-ordenes/2.md)
3.  [Obtener todos los procesos del usuario actual](./pract-2/2.2-ejercicios-basicos-con-ordenes/3.md)
4.  [Finalizar un proceso con un identificador de proceso dado](./pract-2/2.2-ejercicios-basicos-con-ordenes/4.md)
5.  [Finalizar todos los procesos que consisten en la ejecución de un determinado fichero ejecutable](./pract-2/2.2-ejercicios-basicos-con-ordenes/5.md)
6.  [Lanzar el programa Firefox y matarlo desde una terminal](./pract-2/2.2-ejercicios-basicos-con-ordenes/6.md)
7.  [Verificar que el contenido de dos archivos coincide](./pract-2/2.2-ejercicios-basicos-con-ordenes/7.md)
8.  [Hacer que todos los archivos existentes en mi directorio actual sólo puedan ser ejecutados por su propietario](./pract-2/2.2-ejercicios-basicos-con-ordenes/8.md)
9.  [Crear un archivo vacío de nombre `prueba`](./pract-2/2.2-ejercicios-basicos-con-ordenes/9.md)
10. [Cambiar la fecha de la última actualización al fichero `prueba` a 15/01/2002](./pract-2/2.2-ejercicios-basicos-con-ordenes/10.md)
11. [Cambiar el propietario del fichero `prueba`](./pract-2/2.2-ejercicios-basicos-con-ordenes/11.md)
12. [Cambiar el grupo propietario del fichero `prueba`](./pract-2/2.2-ejercicios-basicos-con-ordenes/12.md)
13. [Localizar a partir del directorio actual todos los archivos propiedad del usuario root](./pract-2/2.2-ejercicios-basicos-con-ordenes/13.md)
14. [Localizar todos los archivos en el sistema cuyo nombre contenga la cadena `rc`](./pract-2/2.2-ejercicios-basicos-con-ordenes/14.md)
15. [Localizar todos los archivos del sistema que hayan sido modificados en el día de hoy](./pract-2/2.2-ejercicios-basicos-con-ordenes/15.md)
16. [Borrar todos los ficheros regulares con extensión `.txt` del directorio `/tmp` que tengan más de dos días de antigüedad](./pract-2/2.2-ejercicios-basicos-con-ordenes/16.md)

</details>

<details>
   <summary>
      <a href="./pract-2/2.3-ejercicios-con-cut-sort-y-grep/">2.3 Ejercicios con cut, sort y grep</a>
   </summary>

1.  [Mostrar un listado en pantalla con el primer y el quinto campo de todas las líneas del fichero `/etc/passwd`](./pract-2/2.3-ejercicios-con-cut-sort-y-grep/1.md)
2.  [Mostrar un listado en pantalla que contenga desde el primer byte hasta el tercero y desde el quinto hasta el octavo del fichero `/etc/passwd`](./pract-2/2.3-ejercicios-con-cut-sort-y-grep/2.md)
3.  [Mostar un listado en pantalla con el primer y el quinto campo de todas las líneas del fichero `/etc/passwd`. El listado debe estar ordenado alfabéticamente por el segundo campo](./pract-2/2.3-ejercicios-con-cut-sort-y-grep/3.md)
4.  [Mostrar un listado en pantalla con el primer, el tercer y el quinto campo de todas las líneas del fichero `/etc/passwd`. El listado debe estar ordenado por el identificador de usuario](./pract-2/2.3-ejercicios-con-cut-sort-y-grep/4.md)
5.  [Mostrar un listado en pantalla con el primer, el tercer y el quinto campo de todas las líneas del fichero `/etc/passwd`. El listado debe estar ordenado según el contenido de los caracteres 2, 3 y 4 de cada línea](./pract-2/2.3-ejercicios-con-cut-sort-y-grep/5.md)
6.  [Mostrar un listado con el primer y el quinto campo del fichero `/etc/passwd` que incluya solamente aquellas líneas que contengan la cadena `root` y esté ordenado alfabéticamente por el primer campo](./pract-2/2.3-ejercicios-con-cut-sort-y-grep/6.md)
7.  [Mostrar un listado ordenado por el identificador de usuario de todas las líneas del fichero `/etc/passwd` que contengan la cadena `bash`](./pract-2/2.3-ejercicios-con-cut-sort-y-grep/7.md)
8.  [Mostrar un listado numerado de todas las líneas del fichero `/etc/passwd` que contengan la cadena `bash`](./pract-2/2.3-ejercicios-con-cut-sort-y-grep/8.md)
9.  [Mostrar el número de líneas del fichero `/etc/passwd` que contengan la cadena `bash`](./pract-2/2.3-ejercicios-con-cut-sort-y-grep/9.md)

</details>

<details>
   <summary>
      <a href="./pract-2/2.4-ejercicios-con-ps-y-find/">2.4 Ejercicios con ps y find</a>
   </summary>

1.  [Mostrar un listado que contenga el PID de todos los procesos lanzados en el sistema que en el campo `command`tengan la cadena`bash`](./pract-2/2.4-ejercicios-con-ps-y-find/1.md)
2.  [Obtener el número de procesos que hay lanzados en el sistema que en el campo `command` tengan la cadena `bash`](./pract-2/2.4-ejercicios-con-ps-y-find/2.md)
3.  [Mostrar un listado con todos los procesos que se estén ejecutando en el sistema. Cada línea contendrá el identificador y la orden asociada al proceso correspondiente. El listado deberá estar ordenado por el identificador de proceso](./pract-2/2.4-ejercicios-con-ps-y-find/3.md)
4.  [Mostrar el tiempo de sistema consumido, el identificador del proceso y la orden ejecutada para todos los procesos que se estén ejecutando en el sistema. El listado debe estar ordenado por el tiempo del sistema consumido](./pract-2/2.4-ejercicios-con-ps-y-find/4.md)
5.  [Mostrar todos los procesos pertenecientes al usuario `root` que se estén ejecutando en el sistema, pero solo aquellos que se han lanzado en una terminal (`tty`) y ordenados por el nombre de la terminal](./pract-2/2.4-ejercicios-con-ps-y-find/5.md)
6.  [Mostrar todos los procesos que se están ejecutando en el sistema, que no pertenezcan al usuario `root`, con los siguientes atributos: su tamaño en memoria virtual, su identificador de proceso, el nombre del usuario y la orden ejecutada](./pract-2/2.4-ejercicios-con-ps-y-find/6.md)
7.  [Mostrar un listado de todos los archivos contenidos en el directorio `/root` cuyo propietario sea el usuario `root` y que sean de tipo regular o directorio](./pract-2/2.4-ejercicios-con-ps-y-find/7.md)
8.  [Realizar una búsqueda en el directorio `/root` de todos los ficheros regulares del usuario `root` y mostrar los permisos para cada uno de ellos](./pract-2/2.4-ejercicios-con-ps-y-find/8.md)
9.  [Obtener los archivos del sistema que no sean propiedad del usuario `root` ni del grupo `root` y cuyo tamaño supere los 1024 KiB](./pract-2/2.4-ejercicios-con-ps-y-find/9.md)
10. [Obtener los archivos del sistema que sean propiedad del usuario `root` que sean ejecutables y tengan un tamaño que supere los 1024 KiB](./pract-2/2.4-ejercicios-con-ps-y-find/10.md)
11. [Listar los archivos de los directorios `/bin`, `/sbin` y `/usr/bin` cuyos permisos sean 777](./pract-2/2.4-ejercicios-con-ps-y-find/11.md)

</details>

<details>
   <summary>
      <a href="./pract-2/2.5-ejercicios-sobre-expresiones-regulares/">2.5 Ejercicios sobre expresiones regulares</a>
   </summary>

1. [Palabras que empiezan por vocal](./pract-2/2.5-ejercicios-sobre-expresiones-regulares/1.md)
2. [Palabras que tienen exactamente cinco letras](./pract-2/2.5-ejercicios-sobre-expresiones-regulares/2.md)
3. [Palabras que tienen menos de cinco letras](./pract-2/2.5-ejercicios-sobre-expresiones-regulares/3.md)
4. [Palabras que empiezan por vocal y terminan en `tion`](./pract-2/2.5-ejercicios-sobre-expresiones-regulares/4.md)
5. [Palabras que empiezan por vocal, terminan en `tion` y tienen hasta ocho letras](./pract-2/2.5-ejercicios-sobre-expresiones-regulares/5.md)
6. [Palabras que no contienen vocales](./pract-2/2.5-ejercicios-sobre-expresiones-regulares/6.md)
7. [Palabras en las que `sh` aparece al menos dos veces](./pract-2/2.5-ejercicios-sobre-expresiones-regulares/7.md)

</details>

<details>
   <summary>
      <a href="./pract-2/2.6-ejercicios-sobre-filtros-y-tuberias/">2.6 Ejercicios sobre filtros y tuberías</a>
   </summary>

1. [Obtener los nombres de las cuentas de usuario del sistema, ordenados alfabéticamente. (pista: `cut`)](./pract-2/2.6-ejercicios-sobre-filtros-y-tuberias/1.md)
2. [Obtener los nombres de cuentas de usuario del sistema que contengan alguna letra mayúscula. (pista: `grep`)](./pract-2/2.6-ejercicios-sobre-filtros-y-tuberias/2.md)
3. [Encontrar los GID que se utilizan más de una vez en el fichero `/etc/passwd». El GID es el campo número 4. Hay que devolver la lista de GID que se repiten. (pista: `uniq`)](./pract-2/2.6-ejercicios-sobre-filtros-y-tuberias/3.md)
4. [Quitar los comentarios de un fichero de texto. Un comentario empieza por el carácter `#» y llega hasta el final de la línea. La salida de la orden debe ser el contenido del fichero original, con todos los comentarios eliminados. (pista: `cut`)](./pract-2/2.6-ejercicios-sobre-filtros-y-tuberias/4.md)
5. [](./pract-2/2.6-ejercicios-sobre-filtros-y-tuberias/5.md)
6. [](./pract-2/2.6-ejercicios-sobre-filtros-y-tuberias/6.md)
7. [](./pract-2/2.6-ejercicios-sobre-filtros-y-tuberias/7.md)
8. [](./pract-2/2.6-ejercicios-sobre-filtros-y-tuberias/8.md)
9. [](./pract-2/2.6-ejercicios-sobre-filtros-y-tuberias/9.md)
10. [](./pract-2/2.6-ejercicios-sobre-filtros-y-tuberias/10.md)
11. [](./pract-2/2.6-ejercicios-sobre-filtros-y-tuberias/11.md)
12. [](./pract-2/2.6-ejercicios-sobre-filtros-y-tuberias/12.md)
13. [](./pract-2/2.6-ejercicios-sobre-filtros-y-tuberias/13.md)

</details>

<details>
   <summary>
      <a href="./pract-2/2.7-ejercicios-sobre-filtros-y-tuberias/">2.6 Ejercicios sobre filtros y tuberías</a>
   </summary>

1. [](./pract-2/2.6-ejercicios-sobre-filtros-y-tuberias/1.md)
2. [](./pract-2/2.6-ejercicios-sobre-filtros-y-tuberias/2.md)
3. [](./pract-2/2.6-ejercicios-sobre-filtros-y-tuberias/3.md)
4. [](./pract-2/2.6-ejercicios-sobre-filtros-y-tuberias/4.md)
5. [](./pract-2/2.6-ejercicios-sobre-filtros-y-tuberias/5.md)
6. [](./pract-2/2.6-ejercicios-sobre-filtros-y-tuberias/6.md)
7. [](./pract-2/2.6-ejercicios-sobre-filtros-y-tuberias/7.md)
8. [](./pract-2/2.6-ejercicios-sobre-filtros-y-tuberias/8.md)
9. [](./pract-2/2.6-ejercicios-sobre-filtros-y-tuberias/9.md)
10. [](./pract-2/2.6-ejercicios-sobre-filtros-y-tuberias/10.md)
11. [](./pract-2/2.6-ejercicios-sobre-filtros-y-tuberias/11.md)
12. [](./pract-2/2.6-ejercicios-sobre-filtros-y-tuberias/12.md)
13. [](./pract-2/2.6-ejercicios-sobre-filtros-y-tuberias/13.md)

</details>
