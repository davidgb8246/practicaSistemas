#!/bin/bash

#CREAREMOS LA CARPETA DONDE ALMACENAREMOS LAS HERRAMIENTAS:
mkdir herramientaUsuariosDAW

#SOLICITAREMOS AL USUARIO EL NOMBRE DEL ARCHIVO DONDE SE ALMACENARÁN LA INFORMACIÓN DE LOS ALUMNOS.
echo "Dime el nombre del archivo para almacenar la información de los alumnos:"
read alumnosFileName

#DESCARGAREMOS LAS HERRAMIENTAS Y EL ARCHIVO DE REFERENCIA:
echo "Descargando las herramientas y el archivo de referencia..."
curl -s https://main--davidgb8246-practica-sistemas.netlify.app/README > herramientaUsuariosDAW/README
curl -s https://main--davidgb8246-practica-sistemas.netlify.app/infoAlumnos > herramientaUsuariosDAW/$alumnosFileName
curl -s https://main--davidgb8246-practica-sistemas.netlify.app/crearAlumnosPrimeroDAW.sh > herramientaUsuariosDAW/crearAlumnosPrimeroDAW.sh
curl -s https://main--davidgb8246-practica-sistemas.netlify.app/borrarAlumnosPrimeroDAW.sh > herramientaUsuariosDAW/borrarAlumnosPrimeroDAW.sh
curl -s https://main--davidgb8246-practica-sistemas.netlify.app/actualizarArchivo-infoAlumnos.sh > herramientaUsuariosDAW/actualizarArchivo-infoAlumnos.sh
echo "¡Descarga finalizada!"

#DAREMOS PERMISOS DE EJECUCIÓN A LOS SCRIPTS:
chmod ug+x herramientaUsuariosDAW/crearAlumnosPrimeroDAW.sh herramientaUsuariosDAW/borrarAlumnosPrimeroDAW.sh herramientaUsuariosDAW/actualizarArchivo-infoAlumnos.sh

#MOSTRAREMOS LA INFORMACIÓN DEL README:
cat herramientaUsuariosDAW/README
