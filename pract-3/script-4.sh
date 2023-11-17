#!/bin/bash

error()
{
	echo $1
	exit $2
}

IFS=:
min=$1
max=$2

(( $# != 2 )) && max=$(grep "^UID_MAX" /etc/login.defs | tr -s " " | cut -d " " -f 2) && min=$(grep "^UID_MIN" /etc/login.defs | tr -s " " | cut -d " " -f 2)

exec 3<"/etc/passwd"

while read -u3 user x uid resto
do
	(( $min < $uid )) && (( $uid < $max )) && echo "$user [$uid]"
done

exec 3<&-
