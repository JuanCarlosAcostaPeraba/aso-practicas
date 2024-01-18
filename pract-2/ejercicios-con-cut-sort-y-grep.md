# Ejercicios con `cut`, `sort` y `grep`

## Mostrar un listado en pantalla con el primer y el quinto campo de todas las líneas del fichero `/etc/passwd`

```bash
cut -d ':' -f 1,5 /etc/passwd
```

## Mostrar un listado en pantalla que contenga desde el primer byte hasta el tercero y desde el quinto hasta el octavo del fichero `/etc/passwd`

```bash
cut -b 1-3,5-8 /etc/passwd
```

## Mostar un listado en pantalla con el primer y el quinto campo de todas las líneas del fichero `/etc/passwd`. El listado debe estar ordenado alfabéticamente por el segundo campo

```bash
cut -d ':' -f 1,5 /etc/passwd | sort -k 2 -t ':'
```

## Mostrar un listado en pantalla con el primer, el tercer y el quinto campo de todas las líneas del fichero `/etc/passwd`. El listado debe estar ordenado por el identificador de usuario

```bash
cut -d ':' -f 1,3,5 /etc/passwd | sort -k 2 -t ':' -n
```

## Mostrar un listado en pantalla con el primer, el tercer y el quinto campo de todas las líneas del fichero `/etc/passwd`. El listado debe estar ordenado según el contenido de los caracteres 2, 3 y 4 de cada línea

```bash
cut -d ':' -f 1,3,5 /etc/passwd | sort -k 1.2,1.4 -t ':'
```

## Mostrar un listado con el primer y el quinto campo del fichero `/etc/passwd` que incluya solamente aquellas líneas que contengan la cadena `root` y esté ordenado alfabéticamente por el primer campo

```bash
grep root /etc/passwd | cut -d ':' -f 1,5 | sort -t ':' -k 1
```

## Mostrar un listado ordenado por el identificador de usuario de todas las líneas del fichero `/etc/passwd` que contengan la cadena `bash`

```bash
grep bash /etc/passwd | sort -t ':' -k 3 -n
```

## Mostrar un listado numerado de todas las líneas del fichero `/etc/passwd` que contengan la cadena `bash`

```bash
grep bash /etc/passwd | nl
```

## Mostrar el número de líneas del fichero `/etc/passwd` que contengan la cadena `bash`

```bash
grep bash /etc/passwd | wc -l
```
