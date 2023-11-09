#!/bin/bash

#SOLICITAMOS AL USUARIO EL NOMBRE DEL ARCHIVO DONDE ESTÁ ALMACENANDO LA INFORMACIÓN DE LOS ALUMNOS PARA ACTUALIZARLO
echo "Dime el nombre del achivo donde se almacena la información de los alumnos para actualizarlo desde el repositorio principal: "
read fileName

#OBTENDRÉMOS EL ARCHIVO DEL REPOSITORIO PRINCIPAL Y LO ACTUALIZAREMOS
curl -s https://main--davidgb8246-practica-sistemas.netlify.app/infoAlumnos > $fileName
echo "¡Fichero actualizado!"
