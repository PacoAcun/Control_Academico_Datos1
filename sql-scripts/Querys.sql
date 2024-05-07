USE ControlAcademico;

-- Cuál es el curso y la sección que tiene el mayor promedio en el curso “Automation Testing”.
SELECT Horario.Seccion, AVG(Asignacion.Nota)
FROM Asignacion
JOIN Horario ON Asignacion.Horario_Codigo = Horario.Codigo
JOIN Curso ON Horario.Curso_Codigo = Curso.codigo
WHERE Curso.nombre = 'Automation Testing'
GROUP BY Horario.Seccion
ORDER BY AVG(Asignacion.Nota) DESC;

-- Muestre información completa del curso que tiene más prerrequisitos.
SELECT Curso.*, COUNT(Curso_Prerequisito.Curso_Prerequisito) as Numero_Prerrequisitos
FROM Curso
LEFT JOIN Curso_Prerequisito ON Curso.codigo = Curso_Prerequisito.Curso_Codigo
GROUP BY Curso.codigo
ORDER BY Numero_Prerrequisitos DESC;

-- En el segundo ciclo de 2023, en qué jornada se programaron más cursos de la carrera de Ingeniería en Computer Science. La jornada matutina inicia a las 7:00 am, la jornada vespertina inicia a las 14:00 horas. La jornada nocturna inicia a las 18:00 horas
SELECT 
    CASE
        WHEN TIME(Horario.hora_inicio) >= '07:00' AND TIME(Horario.hora_inicio) < '14:00' THEN 'Matutina'
        WHEN TIME(Horario.hora_inicio) >= '14:00' AND TIME(Horario.hora_inicio) < '18:00' THEN 'Vespertina'
        ELSE 'Nocturna'
    END as Jornada,
    COUNT(*) as Numero_Cursos
FROM Horario
JOIN HistorialCiclos ON Horario.Curso_Codigo = HistorialCiclos.Curso_Codigo
JOIN Ciclo ON HistorialCiclos.Ciclo_Codigo = Ciclo.codigo
WHERE Ciclo.codigo = 'CIC202303'
GROUP BY Jornada
ORDER BY Numero_Cursos DESC;

-- Muestre información completa del curso que es prerrequisito de más cursos.
SELECT Curso.*, COUNT(Curso_Prerequisito.Curso_Prerequisito) as Numero_Veces_Prerrequisito
FROM Curso
LEFT JOIN Curso_Prerequisito ON Curso.codigo = Curso_Prerequisito.Curso_Prerequisito
GROUP BY Curso.codigo
ORDER BY Numero_Veces_Prerrequisito DESC;

-- Cuál es el promedio de los 3 alumnos del grupo; en el segundo ciclo de 2023.
SELECT AVG(Asignacion.Nota)
FROM Asignacion
JOIN Horario ON Asignacion.Horario_Codigo = Horario.Codigo
JOIN HistorialCiclos ON Horario.Curso_Codigo = HistorialCiclos.Curso_Codigo
JOIN Ciclo ON HistorialCiclos.Ciclo_Codigo = Ciclo.codigo
WHERE Ciclo.codigo = 'CIC202303' AND Asignacion.Carne_Estudiante IN ('20220289', '20220565', '20220668');

-- Cuál es el nombre del curso, su promedio y mayor nota, para el curso que tenga el mayor promedio en las asignaciones completas del año 2023.
SELECT Curso.nombre, AVG(Asignacion.Nota), MAX(Asignacion.Nota)
FROM Asignacion
JOIN Horario ON Asignacion.Horario_Codigo = Horario.Codigo
JOIN Curso ON Horario.Curso_Codigo = Curso.codigo
JOIN HistorialCiclos ON Horario.Curso_Codigo = HistorialCiclos.Curso_Codigo
JOIN Ciclo ON HistorialCiclos.Ciclo_Codigo = Ciclo.codigo
WHERE Ciclo.Ano = 2023
GROUP BY Curso.nombre
ORDER BY AVG(Asignacion.Nota) DESC;

-- Qué edificio tuvo mayor cantidad de salones utilizados en el primer ciclo de 2023.
SELECT 
    Horario.edificio,
    COUNT(DISTINCT Horario.salon) as Numero_Salones
FROM Horario
JOIN HistorialCiclos ON Horario.Curso_Codigo = HistorialCiclos.Curso_Codigo
JOIN Ciclo ON HistorialCiclos.Ciclo_Codigo = Ciclo.codigo
WHERE Ciclo.codigo = 'CIC202301'
GROUP BY Horario.edificio
ORDER BY Numero_Salones DESC;

-- Qué catedrático impartió más cursos en la carrera de Ingeniería en Computer Science durante el año 2023.
SELECT 
    Catedratico.nombre,
    COUNT(DISTINCT Horario.Curso_Codigo) as Numero_Cursos
FROM Catedratico
JOIN Horario ON Catedratico.codigo = Horario.Catedratico_Codigo
JOIN HistorialCiclos ON Horario.Curso_Codigo = HistorialCiclos.Curso_Codigo
JOIN Ciclo ON HistorialCiclos.Ciclo_Codigo = Ciclo.codigo
WHERE Ciclo.Ano = 2023
GROUP BY Catedratico.nombre
ORDER BY Numero_Cursos DESC;

-- Cuántos créditos prácticos se obtuvieron en total por todos los estudiantes en el primer ciclo de 2023.
SELECT SUM(Curso.creditos_practicos) as Total_Creditos_Practicos
FROM Asignacion
JOIN Horario ON Asignacion.Horario_Codigo = Horario.Codigo
JOIN Curso ON Horario.Curso_Codigo = Curso.codigo
JOIN HistorialCiclos ON Horario.Curso_Codigo = HistorialCiclos.Curso_Codigo
JOIN Ciclo ON HistorialCiclos.Ciclo_Codigo = Ciclo.codigo
WHERE Ciclo.codigo = 'CIC202301';

-- Cuál es el curso que más créditos teóricos posee.
SELECT Curso.nombre, Curso.creditos_teoricos
FROM Curso
ORDER BY Curso.creditos_teoricos DESC;

-- Cuál es el curso que menos créditos teóricos posee.
SELECT Curso.nombre, Curso.creditos_teoricos
FROM Curso
ORDER BY Curso.creditos_teoricos ASC;