#!/bin/bash

echo "Dime el nombre del archivo donde está almacenada la info de los alumnos: (Estructura: [home username])"
read nombreArchivo
cantidadAlumnos=$(wc -l $nombreArchivo | cut -d " " -f1)

for ((i=1; i<=cantidadAlumnos; i++))
do
	usuActual=$(head -n $i $nombreArchivo | tail -n 1 | cut -d " " -f1)
	homeUsuActual=$(head -n $i $nombreArchivo | tail -n 1 | cut -d " " -f2)

	#CREAREMOS CADA USUARIO DEL FICHERO "infoAlumnnos"
	userdel $usuActual
	rm -r $homeUsuActual
done
