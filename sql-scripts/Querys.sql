USE ControlAcademico;
-- Selecciona la base de datos ControlAcademico para realizar las operaciones/consultas.

-- CONSULTA #1 - ¿Cuál es el curso y la sección que tiene el mayor promedio en el curso “Automation Testing”?

SELECT Horario.Seccion, AVG(Asignacion.Nota) as Promedio
-- Selecciona la columna 'Seccion' de la tabla 'Horario' y calcula el promedio de 'Nota' de la tabla 'Asignacion'.
FROM Asignacion
-- Indica que se están utilizando datos de la tabla 'Asignacion'.
JOIN Horario ON Asignacion.Horario_Codigo = Horario.Codigo
-- Realiza un JOIN con la tabla 'Horario' basándose en que el 'Horario_Codigo' en 'Asignacion' corresponde al 'Codigo' en 'Horario'.
JOIN Curso ON Horario.Curso_Codigo = Curso.codigo
-- Realiza un JOIN con la tabla 'Curso' basándose en que el 'Curso_Codigo' en 'Horario' corresponde al 'codigo' en 'Curso'.
WHERE Curso.nombre = 'Automation Testing'
-- Filtra los resultados para incluir solo aquellos donde el nombre del curso es 'Automation Testing'.
GROUP BY Horario.Seccion
-- Agrupa los resultados por la columna 'Seccion' en la tabla 'Horario'.
HAVING AVG(Asignacion.Nota) = (
-- Filtra los grupos para incluir solo aquellos donde el promedio de notas es igual al máximo promedio encontrado.
    SELECT MAX(Promedio)
    FROM (
        SELECT AVG(Asignacion.Nota) as Promedio
        FROM Asignacion
        JOIN Horario ON Asignacion.Horario_Codigo = Horario.Codigo
        JOIN Curso ON Horario.Curso_Codigo = Curso.codigo
        WHERE Curso.nombre = 'Automation Testing'
        GROUP BY Horario.Seccion
    ) as Subconsulta
);
-- La subconsulta calcula el promedio de notas para cada sección del curso 'Automation Testing'.
-- Luego, selecciona el máximo promedio de todas estas secciones.
-- Finalmente, la cláusula HAVING asegura que solo se devuelven las secciones cuyo promedio de notas es igual a este máximo promedio.

-- Resultado Esperado:
-- Muestra la sección que tiene el mayor promedio en el curso "Automation Testing".
-- Muestra el valor del mayor promedio de notas en este curso.

-- CONSULTA #2 - Muestre información completa del curso que tiene más prerrequisitos.

SELECT Curso.*, COUNT(Curso_Prerequisito.Curso_Prerequisito) AS Numero_Prerrequisitos
-- Selecciona todos los campos de la tabla 'Curso' y cuenta el número de prerrequisitos asociados con cada curso.
FROM Curso
-- Indica que se están utilizando datos de la tabla 'Curso'.
LEFT JOIN Curso_Prerequisito ON Curso.codigo = Curso_Prerequisito.Curso_Codigo
-- Realiza un LEFT JOIN con la tabla 'Curso_Prerequisito' para contar los prerrequisitos de cada curso.
GROUP BY Curso.codigo
-- Agrupa los resultados por 'codigo' en la tabla 'Curso'.
HAVING Numero_Prerrequisitos = (
    SELECT MAX(sub.Numero_Prerrequisitos)
    FROM (
        SELECT COUNT(Curso_Prerequisito.Curso_Prerequisito) AS Numero_Prerrequisitos
        FROM Curso
        LEFT JOIN Curso_Prerequisito ON Curso.codigo = Curso_Prerequisito.Curso_Codigo
        GROUP BY Curso.codigo
    ) AS sub
);
-- Filtra los grupos para incluir solo aquellos cursos que tienen el máximo número de prerrequisitos.

-- Resultado Esperado:
-- Devuelve todos los campos de los cursos que tienen el máximo número de prerrequisitos y muestra cuantos prerrequisitos tiene cada uno de estos cursos.

-- CONSULTA #3 - En el segundo ciclo de 2023, en qué jornada se programaron más cursos de la carrera de Ingeniería en Computer Science. La jornada matutina inicia a las 7:00 am, la jornada vespertina inicia a las 14:00 horas. La jornada nocturna inicia a las 18:00 horas

SELECT 
    CASE
        WHEN TIME(Horario.hora_inicio) >= '07:00' AND TIME(Horario.hora_inicio) < '14:00' THEN 'Matutina'
        WHEN TIME(Horario.hora_inicio) >= '14:00' AND TIME(Horario.hora_inicio) < '18:00' THEN 'Vespertina'
        ELSE 'Nocturna'
    END as Jornada,
-- Utiliza CASE para categorizar la 'hora_inicio' en jornadas: 'Matutina', 'Vespertina' o 'Nocturna'.
    COUNT(*) as Numero_Cursos
-- Cuenta el número total de cursos en cada jornada.
FROM Horario
-- Indica que se están utilizando datos de la tabla 'Horario'.
JOIN HistorialCiclos ON Horario.Curso_Codigo = HistorialCiclos.Curso_Codigo
-- Realiza un JOIN con 'HistorialCicls' para conectar los cursos con sus ciclos.
JOIN Ciclo ON HistorialCiclos.Ciclo_Codigo = Ciclo.codigo
-- Realiza un JOIN con 'Ciclo' para especificar el ciclo de interés.
WHERE Ciclo.codigo = 'CIC202303'
-- Filtra por el ciclo específico 'CIC202303'.
GROUP BY Jornada
-- Agrupa los resultados por 'Jornada'.
ORDER BY Numero_Cursos DESC;
-- Ordena los resultados por el número de cursos, de mayor a menor.

-- Resultado Esperado:
-- Para jornada 'Matutina', 'Vespertina', o 'Nocturna' muestra cuantos cursos se programaron en cada jornada para la carrera durante el ciclo especificado.

-- CONSULTA #4 - Muestra información completa del curso que es prerrequisito de más cursos.

SELECT Curso.*, COUNT(Curso_Prerequisito.Curso_Codigo) as Numero_Veces_Prerrequisito
-- Selecciona todos los campos de la tabla 'Curso' y cuenta cuántas veces cada curso es utilizado como prerrequisito.
FROM Curso
-- Indica que se están utilizando datos de la tabla 'Curso'.
INNER JOIN Curso_Prerequisito ON Curso.codigo = Curso_Prerequisito.Curso_Prerequisito
-- Realiza un INNER JOIN con 'Curso_Prerequisito' para encontrar las conexiones de prerrequisitos.
GROUP BY Curso.codigo
-- Agrupa los resultados por 'codigo' en la tabla 'Curso'.
ORDER BY Numero_Veces_Prerrequisito DESC;
-- Ordena los resultados por el número de veces que cada curso es prerrequisito, de mayor a menor.

-- Resultado Esperado:

-- Devuelve todos los campos de los cursos que son prerrequisitos de otros cursos.
-- Muestra cuantas veces cada curso es utilizado como prerrequisito.

-- CONSULTA #5 - ¿Cuál es el promedio de los 4 alumnos del grupo; en el segundo ciclo de 2023?

SELECT AVG(Asignacion.Nota)
-- Calcula el promedio de las notas de un grupo de estudiantes.
FROM Asignacion
-- Indica que se están utilizando datos de la tabla 'Asignacion'.
JOIN Horario ON Asignacion.Horario_Codigo = Horario.Codigo
-- Realiza un JOIN con 'Horario' para conectar las asignaciones con los horarios de los cursos.
JOIN HistorialCiclos ON Horario.Curso_Codigo = HistorialCiclos.Curso_Codigo
-- Realiza un JOIN con 'HistorialCicls' para especificar los cursos y ciclos.
JOIN Ciclo ON HistorialCiclos.Ciclo_Codigo = Ciclo.codigo
-- Realiza un JOIN con 'Ciclo' para filtrar por el ciclo específico.
WHERE Ciclo.codigo = "CIC202303" AND Asignacion.Carne_Estudiante IN ("20220289", "20220565", "20220668","20200442");
-- Filtra por el ciclo 'CIC202303' y por un grupo específico de estudiantes por su 'Carne_Estudiante'.

-- Resultado Esperado:
-- El promedio de las notas de los 4 estudiantes especificados durante el ciclo 'CIC202303'.

-- CONSULTA #6 - ¿Cuál es el nombre del curso, su promedio y mayor nota, para el curso que tenga el mayor promedio en las asignaciones completas del año 2023?

SELECT Curso.nombre, AVG(Asignacion.Nota) AS Promedio, MAX(Asignacion.Nota) AS Maxima_Nota
-- Selecciona el nombre del curso, el promedio de notas y la nota más alta para cada curso.
FROM Asignacion
-- Indica que se están utilizando datos de la tabla 'Asignacion'.
JOIN Horario ON Asignacion.Horario_Codigo = Horario.Codigo
-- Realiza un JOIN con 'Horario' para conectar las asignaciones con los horarios de los cursos.
JOIN Curso ON Horario.Curso_Codigo = Curso.codigo
-- Realiza un JOIN con 'Curso' para obtener el nombre de cada curso.
JOIN HistorialCiclos ON Horario.Curso_Codigo = HistorialCiclos.Curso_Codigo
-- Realiza un JOIN con 'HistorialCicls' para conectar los cursos con sus ciclos históricos.
JOIN Ciclo ON HistorialCiclos.Ciclo_Codigo = Ciclo.codigo
-- Realiza un JOIN con 'Ciclo' para filtrar por el año del ciclo.
WHERE Ciclo.Ano = 2023
-- Filtra los cursos que se impartieron en el año 2023.
GROUP BY Curso.nombre
-- Agrupa los resultados por el nombre del curso.
HAVING Promedio = (
    SELECT MAX(Promedio)
    FROM (
        SELECT AVG(Asignacion.Nota) AS Promedio
        FROM Asignacion
        JOIN Horario ON Asignacion.Horario_Codigo = Horario.Codigo
        JOIN Curso ON Horario.Curso_Codigo = Curso.codigo
        JOIN HistorialCiclos ON Horario.Curso_Codigo = HistorialCiclos.Curso_Codigo
        JOIN Ciclo ON HistorialCiclos.Ciclo_Codigo = Ciclo.codigo
        WHERE Ciclo.Ano = 2023
        GROUP BY Curso.codigo
    ) AS subquery
);
-- Filtra para incluir solo el curso o los cursos con el máximo promedio de notas en el año 2023.

-- Resultado Esperado:
-- Muestra nombre del curso con el mayor promedio de notas en 2023.
-- Muestra el mayor promedio de notas de ese curso.
-- Muestra la nota más alta obtenida en ese curso durante el año.

-- CONSULTA #7 - Qué edificio tuvo mayor cantidad de salones utilizados en el primer ciclo de 2023.

SELECT 
    Horario.edificio,
    COUNT(DISTINCT Horario.salon) as Numero_Salones
-- Selecciona el edificio y cuenta el número de salones distintos utilizados en cada edificio.
FROM Horario
-- Indica que se están utilizando datos de la tabla 'Horario'.
JOIN HistorialCiclos ON Horario.Curso_Codigo = HistorialCiclos.Curso_Codigo
-- Realiza un JOIN con 'HistorialCicls' para especificar los cursos y ciclos.
JOIN Ciclo ON HistorialCiclos.Ciclo_Codigo = Ciclo.codigo
-- Realiza un JOIN con 'Ciclo' para especificar el ciclo de interés.
WHERE Ciclo.codigo = 'CIC202301'
-- Filtra por el ciclo 'CIC202301'.
GROUP BY Horario.edificio
-- Agrupa los resultados por el 'edificio' en la tabla 'Horario'.
ORDER BY Numero_Salones DESC;
-- Ordena los resultados por el número de salones distintos, de mayor a menor.

-- Resultado Esperado:
-- Muestra el edificio que tuvo el mayor número de salones distintos utilizados.
-- Muestra cuantos salones distintos fueron utilizados en ese edificio.

-- CONSULTA #8 - ¿Qué catedrático impartió más cursos en la carrera de Ingeniería en Computer Science durante el año 2023?

SELECT 
    Catedratico.nombre,
    COUNT(DISTINCT Horario.Curso_Codigo) AS Numero_Cursos
-- Selecciona el nombre del catedrático y cuenta el número de cursos distintos que impartió.
FROM Catedratico
-- Indica que se están utilizando datos de la tabla 'Catedratico'.
JOIN Horario ON Catedratico.codigo = Horario.Catedratico_Codigo
-- Realiza un JOIN con 'Horario' para conectar los catedráticos con los horarios de los cursos.
JOIN HistorialCiclos ON Horario.Curso_Codigo = HistorialCiclos.Curso_Codigo
-- Realiza un JOIN con 'HistorialCicls' para especificar los cursos y ciclos.
JOIN Ciclo ON HistorialCiclos.Ciclo_Codigo = Ciclo.codigo
-- Realiza un JOIN con 'Ciclo' para filtrar por el año del ciclo.
WHERE Ciclo.Ano = 2023
-- Filtra por el año 2023.
GROUP BY Catedratico.nombre
-- Agrupa los resultados por el nombre del catedrático.
HAVING Numero_Cursos = (
    SELECT MAX(sub.Numero_Cursos)
    FROM (
        SELECT COUNT(DISTINCT Horario.Curso_Codigo) AS Numero_Cursos
        FROM Catedratico
        JOIN Horario ON Catedratico.codigo = Horario.Catedratico_Codigo
        JOIN HistorialCiclos ON Horario.Curso_Codigo = HistorialCiclos.Curso_Codigo
        JOIN Ciclo ON HistorialCiclos.Ciclo_Codigo = Ciclo.codigo
        WHERE Ciclo.Ano = 2023
        GROUP BY Catedratico.codigo
    ) AS sub
);
-- Filtra para incluir solo el catedrático o los catedráticos que impartieron el mayor número de cursos distintos en el año.

-- Resultado Esperado:
-- Muestre nombre del catedrático que impartió el mayor número de cursos distintos en 2023.
-- Muestra cuantos cursos distintos impartió ese catedrático.

-- CONSULTA #9

-- Cuántos créditos prácticos se obtuvieron en total por todos los estudiantes en el primer ciclo de 2023.
SELECT SUM(Curso.creditos_practicos) as Total_Creditos_Practicos
-- Calcula la suma total de créditos prácticos de todos los cursos tomados por los estudiantes.
FROM Asignacion
-- Indica que se están utilizando datos de la tabla 'Asignacion'.
JOIN Horario ON Asignacion.Horario_Codigo = Horario.Codigo
-- Realiza un JOIN con 'Horario' para conectar las asignaciones con los horarios de los cursos.
JOIN Curso ON Horario.Curso_Codigo = Curso.codigo
-- Realiza un JOIN con 'Curso' para obtener los créditos prácticos de cada curso.
JOIN HistorialCiclos ON Horario.Curso_Codigo = HistorialCiclos.Curso_Codigo
-- Realiza un JOIN con 'HistorialCicls' para conectar los cursos con sus ciclos históricos.
JOIN Ciclo ON HistorialCiclos.Ciclo_Codigo = Ciclo.codigo
-- Realiza un JOIN con 'Ciclo' para filtrar por el ciclo específico.
WHERE Ciclo.codigo = 'CIC202301';
-- Filtra por el ciclo 'CIC202301'.

-- Resultado Esperado:
-- Se muestra la suma total de los créditos prácticos obtenidos por todos los estudiantes en el ciclo 'CIC202301'.

-- CONSULTA #10 - ¿Cuál es el curso que más créditos teóricos posee?

SELECT Curso.nombre, Curso.creditos_teoricos
-- Selecciona el nombre del curso y los créditos teóricos para cada curso.
FROM Curso
-- Indica que se están utilizando datos de la tabla 'Curso'.
WHERE Curso.creditos_teoricos = (
    SELECT MAX(Curso.creditos_teoricos)
    FROM Curso
);
-- Filtra para incluir solo el curso o los cursos con el máximo número de créditos teóricos.

-- Resultado Esperado:
-- Muestra el nombre del curso que tiene el máximo número de créditos teóricos.
-- Muestra cuantos créditos teóricos tiene ese curso.

-- CONSULTA #11 - ¿Cuál es el curso que menos créditos teóricos posee?

SELECT Curso.nombre, Curso.creditos_teoricos
-- Selecciona el nombre del curso y los créditos teóricos para cada curso.
FROM Curso
-- Indica que se están utilizando datos de la tabla 'Curso'.
WHERE Curso.creditos_teoricos = (
    SELECT MIN(Curso.creditos_teoricos)
    FROM Curso
);
-- Filtra para incluir solo el curso o los cursos con el mínimo número de créditos teóricos.

-- Resultado Esperado:
-- Muestra el nombre del curso que tiene el mínimo número of créditos teóricos.
-- Muestra el cuantos créditos teóricos tiene ese curso.
