#!/bin/bash

error()
{
	echo $1
	exit $2
}

IFS=:
min=$1
max=$2

(( $# != 2 )) && error "Error en el número de parámetros" 1

exec 3<"/etc/passwd"

while read -u3 user x uid resto
do
	(( $min < $uid )) && (( $uid < $max )) && echo "$user [$uid]"
done

exec 3<&-
