#!/bin/bash

echo "Dime el nombre del archivo donde está almacenada la info de los alumnos: (Estructura: [home username])"
read nombreArchivo

echo "Dime el nombre para el grupo de los alumnos: "
read groupAlumnos

cantidadAlumnos=$(wc -l $nombreArchivo | cut -d " " -f1)
groupadd $groupAlumnos

for ((i=1; i<=cantidadAlumnos; i++))
do
	usuActual=$(head -n $i $nombreArchivo | tail -n 1 | cut -d " " -f1)
	
 	usuPart1=$(echo $usuActual | rev | cut -c 2- | rev)
	usuPart2=$(echo $usuActual | rev | cut -c 1)

	usuPass=$(echo "DAW"$usuPart1"2023"$usuPart2)
	homeUsuActual=$(head -n $i $nombreArchivo | tail -n 1 | cut -d " " -f2)

	#CREAREMOS CADA USUARIO DEL FICHERO DE REFERENCIA
	useradd -m -s /bin/bash -g $groupAlumnos -d $homeUsuActual $usuActual
	echo "$usuActual:$usuPass" | chpasswd
done
