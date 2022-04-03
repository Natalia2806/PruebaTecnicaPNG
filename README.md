# Prueba Técnica Desarrollador C# .Net - PNG

## Pasos para la ejecución del servicio

1. Al momento de clonar el repositorio se le descargarán tres archivos importantes

  * **cine.sql**: Este archivo es un script en donde se encuentra toda la base de datos(Tablas y sus relaciones), cabe resaltar que para la implementación de este             servicios se hizo uso de **stored procedure**, los cuales vienen creados en el script
  
  *  **DatalayerCine**: Esta carpeta contiene tres bibliotecas de clases, las cuales son usadas para el acceso a datos aquí se encuntran los modelos, la implementacion        de los stored procedure y una configuración para la cadena de conexión
  
  *  **Cine.WebApi**: En esta carpeta de encuntran los controladores, al momento de ejecurtarlos aparecera una documentacion de swagger para cada uno de los endpoint          creados
  
2. Despúes de haber clonado el respositorio se debe ejecutar el script (cine.sql) para la creación de las tablas sus relaciones y los procedmientos almacenados.
3. Cambiar la cadena de conexión a la base de datos en el archivo appsettings.json de cine.WebApi
4. Luego Ejecutar la api cine.WebApi y probar los servicios que aparecen en la documentación de swagger

 


