#!/bain/bash

error()
{
	echo $1 >&2
	exit $2
}

(( $# != 1 )) && error "Error: Indique el nivel de copia" 1

dir="$HOME/Prueba"
backup="$HOME/Backups"
sufijo="nivel$1_$(date +%Y%m%d_%H%M)"
testigo="$backup/testigo.nivel0"

case $1 in
0)
	touch $testigo
	find $dir -print0 | \
	tar zcvf "$backup/backup$sufijo.tgz" --null --no-recursion -T- \
	> "$backup/catalogo$sufijo.txt" \
	2> "$backup/errores$sufijo.txt"
	;;
1)
	if [ -e $testigo ]
	then
		find $dir --newer $testigo -print0 | \
		tar zcvf "$backup/backup$sufijo.tgz" --null --no-recursion -T- \
		> "$backup/catalogo$sufijo.txt" \
		2> "$backup/errores$sufijo.txt"
	else
		$HOME/bin/backup.sh 0
	fi
	;;
*)
	error "Error: Nivel de copia incorrecto" 2
	;;
esac

exit 0