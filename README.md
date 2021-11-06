## Descripción

Proyecto de software hecho para la titulación del SENA en Análisis y Desarrollo de Sistemas Informáticos - Autor: Mauricio Alejandro Gonzalez Feria



## Puesta en Marcha

Una vez jenkins ejecute automaticamente el pipeline se correra el Docker Compose y creara 3 contenedores, el primero es la APP, el segundo es la BD MYSQL y el tercero el Administrador de BD PHPMyadmin.

Ingresamos al contenedor de phpmyadmin mediante la "IP_Server:puerto" e ingresamos con las credenciales que aparecen en el docker-compose.yml y ejecutamos los siguiente pasos:


    1. Procedemos a seleccionar la BD creada con el docker-compose llamada "andromeda"
    
    2. Seleccionamos importar BD
    
    3. Seleccionamos la BD que esta en el repo llamada "Andromeda_Inventory.sql"
    
    4. Finalizamos haciendo click en Import y se creara la BD
    
    5. Seleccionamos la opción Privilegios y creamos un nuevo usuario con nombre "root" y contraseña "mypass123" (se puede cambiar) y le damos todos los permisos
    
    6. Finalmente iniciamos la app en el navegador de su preferencia mediante "IP_Server:puerto" en el caso de DEV y QA, para el caso de Produccion esta expuesto en el puerto 80 mediante certificado SSL


