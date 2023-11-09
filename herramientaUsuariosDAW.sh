#!/bin/bash

#CREAREMOS LA CARPETA DONDE ALMACENAREMOS LAS HERRAMIENTAS:
mkdir herramientaUsuariosDAW

#DESCARGAREMOS LAS HERRAMIENTAS Y EL ARCHIVO DE REFERENCIA:
echo "Descargando las herramientas y el archivo de referencia..."
curl -s https://raw.githubusercontent.com/davidgb8246/practicaSistemas/main/infoAlumnos > herramientaUsuariosDAW/infoAlumnos
curl -s https://raw.githubusercontent.com/davidgb8246/practicaSistemas/main/crearAlumnosPrimeroDAW.sh > herramientaUsuariosDAW/crearAlumnosPrimeroDAW.sh
curl -s https://raw.githubusercontent.com/davidgb8246/practicaSistemas/main/borrarAlumnosPrimeroDAW.sh > herramientaUsuariosDAW/borrarAlumnosPrimeroDAW.sh
curl -s https://raw.githubusercontent.com/davidgb8246/practicaSistemas/main/actualizarArchivo-infoAlumnos.sh > herramientaUsuariosDAW/actualizarArchivo-infoAlumnos.sh

#DAREMOS PERMISOS DE EJECUCIÓN A LOS SCRIPTS:
chmod ug+x herramientaUsuariosDAW/crearAlumnosPrimeroDAW.sh herramientaUsuariosDAW/borrarAlumnosPrimeroDAW.sh herramientaUsuariosDAW/actualizarArchivo-infoAlumnos.sh
