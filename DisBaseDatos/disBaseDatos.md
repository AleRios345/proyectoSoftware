# Base de datos SPDMI-AIA

## *Entidades*

### pacientes **(ED)**
- id_paciente **(_PK_)**
- nombre_paciente
- apellido_paciente
- edad_paciente
- telefono
- id_archivo_medico
- enfermedad_cronica
- direccion

### archivos_medicos **(ED)**
- id_archivo_medico **(_PK_)**
- id_paciente **(_FK_)**
- nombre_archivo
- url_archivo

### tipos_enfermedades **(ED)**
- id_enfermedad **(_PK_)**
- nombre_enfermedad
- descripcion_enfermedad

### direcciones **(ED)**
- id_direccion **(_PK_)**
- calle
- colonia
- numero
- pais  
- ciudad

### ciudades **(EC)**
- id_ciudad **(_PK_)**
- nombre

### paises **(EC)**
- id_pais **(_PK_)**
- nombre

## Diagrama

### Modelo Relacional de la Base de Datos
![Modelo Relacional de la Base de Datos](./diagramas/DiagramaRelacionalBD.jpg)