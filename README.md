# Proyecto de Control Académico

## Crear contenedor de docker

En terminal: docker-compose up --build

## Conexion en mysql workbench

Username: root
Password: controlacademico

## Ejecutar contenedor de docker

Abrir Docker
En terminal: docker-compose up

## Cerrar contenedor de docker

Abrir Docker
En terminal: docker-compose down




## 1. Descripción General

El proyecto consiste en poblar y consultar las tablas creadas basadas en el diagrama entidad relación generado del enunciado.

## 2. Objetivos

### Objetivo General

Ingresar y consultar información a las tablas resultantes del diseño de base de datos del diagrama generado utilizando información real de los estudiantes del grupo. Utilizar comandos DML y SQL para ingresar, actualizar, eliminar y consultar información.

### Objetivos Específicos

- Poblar las tablas con información real de los estudiantes, ingresando información que pertenece a estudiantes del grupo, las notas pueden ser ficticias.
- Realizar consultas sobre la información cargada a la base de datos.

## 3. Lineamientos

- Utilizar un diseño de base de datos del modelo resultante del caso de estudio.
- El proyecto se realizará por 2 grupos de 4 personas y 2 grupos de 3 personas, utilizando los mismos grupos del primer proyecto.

## 4. Contenido del Proyecto

1. Ingresar el pensum actual completo de la carrera de Ingeniería en Computer Science dentro del sistema.
2. Ingresar información correspondiente a las asignaciones de los estudiantes del grupo. La información ingresada debe corresponder al pensum real, las notas pueden ser ficticias.
3. La información necesaria se obtendrá del listado de notas de cada alumno.
4. La información debe cargarse en la base de datos en la máquina designada por el grupo. Investigar la mejor forma de realizar la carga, es decir, la forma más rápida.
5. Pueden utilizar la base de datos que deseen, debe estar instalada en al menos una máquina del grupo para realizar las actividades requeridas.

## Caso de Estudio "Control Académico"

La universidad necesita un sistema para el control académico de todos sus alumnos. La universidad cuenta con facultades en las cuales hay carreras, que tienen su código, nombre, descripción. Cada carrera tiene un pensum con un período de vigencia, es necesario tener histórico de los diferentes pensum que se han utilizado en la carrera.

Los pensum tienen cursos, que se identifican con un código, pero a la vez tienen nombre, descripción, créditos teóricos y créditos prácticos. Un curso puede ser prerrequisito de otros cursos y a la vez tener otros cursos como prerrequisitos.

La universidad realiza la programación de sus cursos en ciclos, cuatro por año, dos ciclos y dos inter ciclos. Los cursos pueden o no programarse en los ciclos, quedando calendarizados en horarios. Un horario incluye qué curso se va a impartir, en qué salón de qué edificio, qué días y su hora inicial y final, además del costo del curso para ese horario. Adicional a la programación, se debe indicar quién es el catedrático que impartirá el curso y la sección del curso, si estuviera programado más de una vez por ciclo.

Una vez que estén establecidos los horarios, los estudiantes, que se identifican con carné y de quien además se guarda nombres, apellidos, sexo, fecha de nacimiento, dirección, teléfono, correo electrónico y número de cuenta corriente, se pueden asignar los cursos que estén programados.

Para las asignaciones es necesario saber si el estudiante aprobó el curso, con qué nota o si realizó retiro del curso al final de cada ciclo.

Para el proyecto se utilizará la información del pensum actual, con información real de cada integrante del grupo.

Nota: Para cada entidad que identifique, puede colocar los atributos adicionales que considere necesarios.

## 5. Consultas

1. Cuál es el curso y la sección que tiene el mayor promedio en el curso “Curso favorito del grupo”.
2. Muestre información completa del curso que tiene más prerrequisitos.
3. En el segundo ciclo de 2023, en qué jornada se programaron más cursos de la carrera de Ingeniería en Computer Science. La jornada matutina inicia a las 7:00 am, la jornada vespertina inicia a las 14:00 horas. La jornada nocturna inicia a las 18:00 horas.
4. Muestre información completa del curso que es prerrequisito de más cursos.
5. Cuál es el promedio de los 3 alumnos del grupo; en el segundo ciclo de 2023.
6. Cuál es el nombre del curso, su promedio y mayor nota, para el curso que tenga el mayor promedio en las asignaciones completas del año 2023.
7. Qué edificio tuvo mayor cantidad de salones utilizados en el primer ciclo de 2023.
8. Qué catedrático impartió más cursos en la carrera de Ingeniería en Computer Science durante el año 2023.
9. Cuántos créditos prácticos se obtuvieron en total por todos los estudiantes en el primer ciclo de 2023.
10. Cuál es el curso que más y que menos créditos teóricos posee
