#!/bin/bash

error()
{
		echo $1 >&2
		exit $2
}

(( $# < 1 )) && error "Numero de parametros incorrecto" 1

for pais in $@
do
	if (( $pais < 10 || $pais > 99 ))
	then
		echo "$pais no es un codigo de pais valido" >&2
	else
		echo "El numero de apariciones del pais $pais es $(grep -c $pais barcode.txt | wc -l)"
	fi
done

exit 0