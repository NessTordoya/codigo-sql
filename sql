-- Crear base de datos
CREATE DATABASE control_personal;

-- Seleccionar base de datos (según sistema, puedes usar USE control_personal;)
USE control_personal;

-- Tabla empleados
CREATE TABLE empleados (
  id INT PRIMARY KEY,
  pais VARCHAR(100),
  oficina VARCHAR(100),
  campaña VARCHAR(100),
  cargo VARCHAR(100),
  supervisor VARCHAR(100),
  colaborador VARCHAR(100),
  dni_cedula VARCHAR(50),
  entrada TIME,
  salida TIME,
  horas_programadas TIME, -- Puedes usar TIME o almacenar minutos como INT
  user_windows VARCHAR(100),
  estado VARCHAR(50)
);

-- Tabla ausencias_licencias
CREATE TABLE ausencias_licencias (
  id_ausencia INT PRIMARY KEY,
  id_empleado INT,
  tipo_ausencia VARCHAR(100),
  fecha_inicio DATE,
  fecha_fin DATE,
  justificante VARCHAR(255),
  observaciones TEXT,
  estado VARCHAR(50),
  FOREIGN KEY (id_empleado) REFERENCES empleados(id)
);

-- Tabla usuarios
CREATE TABLE usuarios (
  id INT PRIMARY KEY,
  user_windows VARCHAR(100),
  dni_cedula VARCHAR(50),
  id_empleado INT,
  estado VARCHAR(50),
  FOREIGN KEY (id_empleado) REFERENCES empleados(id)
);
