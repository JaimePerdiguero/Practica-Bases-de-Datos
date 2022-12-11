SQL CORRESPONDIENTE

CREATE TABLE Empresa_de_Transporte
(
  NIF VARCHAR(50) NOT NULL,
  Nombre VARCHAR(50) NOT NULL,
  Codigo_Autorización VARCHAR(50) NOT NULL,
  Fecha_Validez DATE NOT NULL,
  Correo VARCHAR(50) NOT NULL,
  PRIMARY KEY (NIF)
);

CREATE TABLE Suministrador
(
  Nombre VARCHAR(50) NOT NULL,
  País VARCHAR(50) NOT NULL,
  NIF VARCHAR(50) NOT NULL,
  PRIMARY KEY (Nombre),
  FOREIGN KEY (NIF) REFERENCES Empresa_de_Transporte(NIF)
);

CREATE TABLE Estación_Primaria
(
  Nombre VARCHAR(50) NOT NULL,
  PRIMARY KEY (Nombre)
);

CREATE TABLE Red_Distribución
(
  Nº_Red VARCHAR(50) NOT NULL,
  Nombre VARCHAR(50) NOT NULL,
  PRIMARY KEY (Nº_Red),
  FOREIGN KEY (Nombre) REFERENCES Estación_Primaria(Nombre)
);

CREATE TABLE Lineas
(
  Longitud FLOAT NOT NULL,
  Nº_Secuencial VARCHAR(50) NOT NULL,
  Nº_Red VARCHAR(50) NOT NULL,
  PRIMARY KEY (Nº_Secuencial),
  FOREIGN KEY (Nº_Red) REFERENCES Red_Distribución(Nº_Red)
);

CREATE TABLE Subestación
(
  ID_Subestación VARCHAR(50) NOT NULL,
  Nº_Secuencial VARCHAR(50) NOT NULL,
  PRIMARY KEY (ID_Subestación),
  FOREIGN KEY (Nº_Secuencial) REFERENCES Lineas(Nº_Secuencial)
);

CREATE TABLE Zona_de_Servicio
(
  Id_Zona_Servicio VARCHAR(50) NOT NULL,
  Categoria VARCHAR(50) NOT NULL,
  consumo_medio FLOAT NOT NULL,
  nº_consumidores INT NOT NULL,
  PRIMARY KEY (Id_Zona_Servicio)
);

CREATE TABLE Provincias
(
  Código_Provincia_ VARCHAR(50) NOT NULL,
  Nombre VARCHAR(50) NOT NULL,
  Id_Zona_Servicio VARCHAR(50) NOT NULL,
  PRIMARY KEY (Código_Provincia_),
  FOREIGN KEY (Id_Zona_Servicio) REFERENCES Zona_de_Servicio(Id_Zona_Servicio)
);

CREATE TABLE Reparto
(
  Codigo_Reparto VARCHAR(50) NOT NULL,
  Nombre VARCHAR(50) NOT NULL,
  PRIMARY KEY (Codigo_Reparto),
  FOREIGN KEY (Nombre) REFERENCES Estación_Primaria(Nombre)
);

CREATE TABLE distribuye
(
  ID_Subestación VARCHAR(50) NOT NULL,
  Id_Zona_Servicio VARCHAR(50) NOT NULL,
  PRIMARY KEY (ID_Subestación, Id_Zona_Servicio),
  FOREIGN KEY (ID_Subestación) REFERENCES Subestación(ID_Subestación),
  FOREIGN KEY (Id_Zona_Servicio) REFERENCES Zona_de_Servicio(Id_Zona_Servicio)
);

CREATE TABLE Productor
(
  Codigo_Autorización VARCHAR(50) NOT NULL,
  Denominación VARCHAR(50) NOT NULL,
  Dirección VARCHAR(50) NOT NULL,
  Teléfono VARCHAR(50) NOT NULL,
  Fecha_Validez DATE NOT NULL,
  Fecha_Fin_Validez DATE NOT NULL,
  Tipo_Compañia VARCHAR(50) NOT NULL,
  Codigo_Reparto VARCHAR(50) NOT NULL,
  PRIMARY KEY (Codigo_Autorización),
  FOREIGN KEY (Codigo_Reparto) REFERENCES Reparto(Codigo_Reparto)
);

CREATE TABLE Central
(
  Id_Central VARCHAR(50) NOT NULL,
  Denominación VARCHAR(50) NOT NULL,
  Dirección_Postal VARCHAR(50) NOT NULL,
  Coordenadas_GPS VARCHAR(50) NOT NULL,
  Correo VARCHAR(50) NOT NULL,
  Twitter VARCHAR(50) NOT NULL,
  Whatsapp VARCHAR(50) NOT NULL,
  Diaria VARCHAR(50) NOT NULL,
  Mensual VARCHAR(50) NOT NULL,
  Anual VARCHAR(50) NOT NULL,
  Codigo_Autorización VARCHAR(50) NOT NULL,
  PRIMARY KEY (Id_Central),
  FOREIGN KEY (Codigo_Autorización) REFERENCES Productor(Codigo_Autorización)
);

CREATE TABLE Eólica
(
  Nº_Aerogeneradores INT NOT NULL,
  Ubicación VARCHAR(50) NOT NULL,
  Velocidad_R FLOAT NOT NULL,
  Producción_Media FLOAT NOT NULL,
  T_Acumulada_Mensual FLOAT NOT NULL,
  Id_Central VARCHAR(50) NOT NULL,
  PRIMARY KEY (Id_Central),
  FOREIGN KEY (Id_Central) REFERENCES Central(Id_Central)
);

CREATE TABLE Hidroelécetrica
(
  Volumen_Agual_Almacenada FLOAT NOT NULL,
  Nº_Turbinas INT NOT NULL,
  Id_Central VARCHAR(50) NOT NULL,
  PRIMARY KEY (Id_Central),
  FOREIGN KEY (Id_Central) REFERENCES Central(Id_Central)
);

CREATE TABLE Solar
(
  Superficie_Paneles_Instalados FLOAT NOT NULL,
  Media_Horas_Radiacion_Solar FLOAT NOT NULL,
  Tipo_Radiación VARCHAR(50) NOT NULL,
  Id_Central VARCHAR(50) NOT NULL,
  PRIMARY KEY (Id_Central),
  FOREIGN KEY (Id_Central) REFERENCES Central(Id_Central)
);

CREATE TABLE Nuclear
(
  Volumen_de_Materia_Prima_Construida FLOAT NOT NULL,
  Nº_Reactores INT NOT NULL,
  Volumen_de_Residuos FLOAT NOT NULL,
  Id_Central VARCHAR(50) NOT NULL,
  PRIMARY KEY (Id_Central),
  FOREIGN KEY (Id_Central) REFERENCES Central(Id_Central)
);

CREATE TABLE Térmica
(
  Ciclo_Combinado VARCHAR(50),
  M3_Gas_Consumido FLOAT NOT NULL,
  Tiempo_Anual_Inyección_Red_Eléctrica FLOAT NOT NULL,
  Tiempo_Mensual_Inyección_Red_Electrica FLOAT NOT NULL,
  Volumen_Anual_Acum_CO2_Emitido FLOAT NOT NULL,
  Id_Central VARCHAR(50) NOT NULL,
  PRIMARY KEY (Id_Central),
  FOREIGN KEY (Id_Central) REFERENCES Central(Id_Central)
);

CREATE TABLE Responsable
(
  DNI VARCHAR(20) NOT NULL,
  Nombre VARCHAR(50) NOT NULL,
  Correo VARCHAR(50) NOT NULL,
  Correo_Urgencias VARCHAR(50) NOT NULL,
  Ubi_Oficina VARCHAR(50) NOT NULL,
  Antigüedad VARCHAR(50) NOT NULL,
  Teléfono_Urgencias VARCHAR(50) NOT NULL,
  Teléfono VARCHAR(50) NOT NULL,
  Fecha_Nombramiento DATE NOT NULL,
  Id_Central VARCHAR(50) NOT NULL,
  PRIMARY KEY (DNI),
  FOREIGN KEY (Id_Central) REFERENCES Central(Id_Central)
);

CREATE TABLE Alertas
(
  Código_Alerta VARCHAR(50) NOT NULL,
  Tipo VARCHAR(50) NOT NULL,
  Código_Central VARCHAR(50) NOT NULL,
  Coord_GPS VARCHAR(50) NOT NULL,
  Fecha_Activación DATE NOT NULL,
  Fecha_Desactivación DATE NOT NULL,
  Intervención VARCHAR(50) NOT NULL,
  Id_Central VARCHAR(50) NOT NULL,
  PRIMARY KEY (Código_Alerta),
  FOREIGN KEY (Id_Central) REFERENCES Central(Id_Central)
);

CREATE TABLE Entrega
(
  Id_Central VARCHAR(50) NOT NULL,
  NIF VARCHAR(50) NOT NULL,
  PRIMARY KEY (Id_Central, NIF),
  FOREIGN KEY (Id_Central) REFERENCES Nuclear(Id_Central),
  FOREIGN KEY (NIF) REFERENCES Empresa_de_Transporte(NIF)
);
