CREATE DATABASE IF NOT EXISTS BaseEscuela;
USE BaseEscuela;

  CREATE TABLE IF NOT EXISTS DimColegio(
									ID_COLEGIO INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
                                    NOMBRE VARCHAR (255) NOT NULL,
                                    DIRECCION VARCHAR (255) NOT NULL);
CREATE TABLE IF NOT EXISTS DimCursos(
									ID_CURSO INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
                                    ORIENTACION VARCHAR (255) NOT NULL,
                                    ANIO INT NOT NULL,
                                    ID_COLEGIO INT NOT NULL,
                                    FOREIGN KEY (ID_COLEGIO) REFERENCES DimColegio(ID_COLEGIO));
CREATE TABLE IF NOT EXISTS DimAlumnos(
									ID_ALUMNO INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
                                    NOMBRE VARCHAR (255) NOT NULL,
                                    APELLIDO VARCHAR (255) NOT NULL,
                                    DNI INT NOT NULL,
                                    EDAD INT NOT NULL,
                                    ID_COLEGIO INT NOT NULL,
                                    FOREIGN KEY (ID_COLEGIO) REFERENCES DimColegio(ID_COLEGIO),
                                    ID_CURSO INT NOT NULL,
                                    FOREIGN KEY (ID_CURSO) REFERENCES DimCursos(ID_CURSO));
 CREATE TABLE IF NOT EXISTS DimMaterias(
									ID_MATERIA INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
                                    NOMBRE VARCHAR (255) NOT NULL,
                                    ID_CURSO INT NOT NULL,
                                    FOREIGN KEY (ID_CURSO) REFERENCES DimCursos(ID_CURSO));
 CREATE TABLE IF NOT EXISTS DimProfesores(
									ID_PROFESOR INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
                                    NOMBRE VARCHAR (255) NOT NULL,
                                    APELLIDO VARCHAR (255) NOT NULL,
                                    DNI INT NOT NULL,
                                    EDAD INT NOT NULL,
                                    ID_COLEGIO INT NOT NULL,
                                    FOREIGN KEY (ID_COLEGIO) REFERENCES DimColegio(ID_COLEGIO),
                                    ID_MATERIA INT NOT NULL,
                                    FOREIGN KEY (ID_MATERIA) REFERENCES DimMaterias(ID_MATERIA));