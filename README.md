# Wolken 

  (English version coming soon...)

  Software del proyecto Sistema de observación de nubes
  del departamento de Física Aplicada de la Universidad de Córdoba.

  Consta de:

    - Aplicación de captura de imágenes
    - Aplicación web para la visualización de las capturas realizadas
    - Archivo cron para la automatización de capturas
    - Script SQL para la inicialización manual de la base de datos
    - Archivo de configuración XDG

  Tras la instalación del paquete deberán seguirse estos pasos para
  el correcto funcionamiento de este software:

    - Crear una base de datos MySQL e importar el script SQL ubicado en
     /usr/share/wolken/wolken/wolken.sql
    - Editar el archivo de configuración /etc/xdg/wolken/wolken.conf
    - Editar el fichero /etc/cron.d/wolken para personalizar la
     automatización de capturas.
    - Reiniciar cron: sudo service cron restart

  ¡Aviso!
  Este paquete creará automáticamennte el usuario wolken en el sistema y
  lo añadirá a los grupos correspondientes para poder tener acceso a los
  dispositivos de vídeo. Este usuario será eliminado automáticamente al
  desinstalar este paquete.


## Concept

![Alt text](http://shoden.es/img/wolken_diagram-en.png "Wolken Diagram")


## Software

  This project has three source code repositories:

  * wolken[1]: Configuration files
  * wolken-capture[2]: Image capture application
  * wolken-gallery[3]: Web application for viewing captured images

  [1] <https://github.com/shoden/wolken>
  [2] <https://github.com/shoden/wolken-capture>
  [3] <https://github.com/shoden/wolken-gallery>


## Install

  The content of each repository can be installed by hand or by generating a DEB
  package for each one using the debuild command.


## Project page

  https://github.com/shoden/wolken
