#!/bin/bash

# ./crear_usuarios.sh <nombre de grupo secundario> <ruta de fichero con los usuarios indicados por cada línea>

# Pseudocodigo:
# si el numero de argumentos es distinto de 2
# 	mostrar mensaje de error
# si el grupo secundario no existe
# 	crear grupo secundario
# para cada linea del fichero de usuarios
# 	si el usuario no existe
# 		crear usuario con grupo secundario
# 	si el usuario existe
# 		le añadimos el grupo secundario

error ()
{
	echo "$1" >&2
	exit $2
}

(( $# != 2 )) && error "Numero de argumentos incorrecto" 1

grupo_secundario=$1
fichero_usuarios=$2

(( $(grep -c "^$grupo_secundario:" /etc/group) == 0 )) && groupadd $grupo_secundario

while read usuario
do
	(( $(grep -c "^$usuario:" /etc/passwd) == 0 )) && useradd -g $grupo_secundario $usuario || usermod -a -G $grupo_secundario $usuario
done < $fichero_usuarios

exit 0