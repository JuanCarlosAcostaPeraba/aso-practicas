#!/bin/bash

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
	if (( $(grep -c "^$usuario:" /etc/passwd) == 0 ))
	then
		useradd -g $grupo_secundario $usuario
	else
		usermod -aG $grupo_secundario $usuario
	fi
done < $fichero_usuarios

echo "Users:"
echo $(tail -3 /etc/passwd)
echo "Group:"
echo $(tail -1 /etc/group)

exit 0