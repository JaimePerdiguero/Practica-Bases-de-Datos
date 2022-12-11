insert into Estación_Primaria (Nombre) values ('Estacion2');

insert into Reparto (Codigo_Reparto,Nombre) values ('FGHR4587','Estacion2');

insert into Zona_de_Servicio (Id_Zona_Servicio,Categoria,consumo_medio,nº_consumidores) values ('FGHY45097', 'particular', 65.90, 1200);

insert into Provincias (Código_Provincia_, Nombre,Id_Zona_Servicio) values ('BA-0002', 'Badajoz','FGHY45097');

insert into Red_Distribución (Nº_Red, Nombre) values ('67584','Estacion2');

insert into Lineas (Longitud, Nº_Secuencial,Nº_Red) values (32, '45','67584');

insert into Subestación (ID_Subestación, Nº_Secuencial) values ('SU-875321','45');

insert into distribuye (ID_Subestación,Id_Zona_Servicio) values ('SU-875321','FGHY45097');

insert into Productor (Codigo_Autorización, Denominación, Dirección, Teléfono, Fecha_Validez, Fecha_Fin_Validez, Tipo_Compañia,Codigo_Reparto) values ('QP-45672', 'Productor2', 'Calle Velazquez 23', '64356789', (TO_TIMESTAMP('01-01-2022','DD-MM-YYYY')), (TO_TIMESTAMP('31-12-2022','DD-MM-YYYY')), 'Eólica','FGHR4587');

insert into Central (Id_Central, Denominación, Dirección_Postal, Coordenadas_GPS,Correo, Twitter, Whatsapp, Diaria, Mensual, Anual,Codigo_Autorización) values ('CE-45642', 'CENTRAL2 S.A', 'Paseo de la Castellana 35', '(54.74442,5.654200)', 'central2@gmail.com', '@central2', '722345671',  '5.6', '544', '3456','QP-45672');

insert into Responsable (DNI,Nombre,Correo,Correo_Urgencias,Ubi_Oficina,Antigüedad,Teléfono_Urgencias,Teléfono,Fecha_Nombramiento,Id_Central) values ('6657489W', 'Fernando Primo de Rivera', 'fernado12@gmail.com', 'FernandoPR-urgencias@gmail.com', 'Calle Claudio Coello 12', '23 años', '645675434','646183554',(TO_TIMESTAMP('02-01-1978','DD-MM-YYYY')),'CE-45642');

insert into Alertas (Código_Alerta, Tipo,Código_Central, Coord_GPS, Fecha_Activación, Fecha_Desactivación, Intervención,Id_Central) values ('BT-103023', 'A', 'TY-54643', '(54.635729,-8.93794)',(TO_TIMESTAMP('11-10-2022','DD-MM-YYYY')),(TO_TIMESTAMP('12-10-2022','DD-MM-YYYY')), 'IN-0005','CE-45642');

insert into Hidroelécetrica (Volumen_Agual_Almacenada,Nº_Turbinas,Id_Central) values (45.90, 9,'CE-45642');

insert into Solar (Superficie_Paneles_Instalados, Media_Horas_Radiacion_Solar, Tipo_Radiación,Id_Central) values (97,8,'TermoSolar','CE-45642');

insert into Eólica (Nº_Aerogeneradores, Ubicación, Velocidad_R, Producción_Media,T_Acumulada_Mensual,Id_Central) values (14, 'Extremadura', 50.00, 8.02, 145,'CE-45642');

insert into Térmica (Ciclo_Combinado, M3_Gas_Consumido, Tiempo_Anual_Inyección_Red_Eléctrica, Tiempo_Mensual_Inyección_Red_Electrica, Volumen_Anual_Acum_CO2_Emitido,Id_Central) values ('SI', 0.62, 3200.00, 178.33, 0.63,'CE-45642');

insert into Nuclear (Volumen_de_Materia_Prima_Construida, Nº_Reactores, Volumen_de_Residuos,Id_Central) values (2000.00, 4, 1500.00,'CE-45642');

insert into Empresa_de_Transporte (NIF, Nombre, Codigo_Autorización, Fecha_Validez, Correo) values ('5788994F','UPS', 'QP-45672',(TO_TIMESTAMP('23-10-2014','DD-MM-YYYY')), 'pedro.perez@gmail.com');

insert into Entrega (Id_Central,NIF) values ('CE-45642','5788994F');

insert into Suministrador (Nombre, País,NIF) values ('Jaime Gomez Fernandez', 'Belgica','5788994F');
















