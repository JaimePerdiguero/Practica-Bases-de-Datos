insert into Estación_Primaria (Nombre) values ('Estacion1');

insert into Reparto (Codigo_Reparto,Nombre) values ('KDWI7392','Estacion1');

insert into Zona_de_Servicio (Id_Zona_Servicio,Categoria,consumo_medio,nº_consumidores) values ('HUWB72827', 'particular', 78.90, 1000);

insert into Provincias (Código_Provincia_, Nombre,Id_Zona_Servicio) values ('CU-0003', 'Cuenca','HUWB72827');
insert into Red_Distribución (Nº_Red, Nombre) values ('78398','Estacion1');
insert into Lineas (Longitud, Nº_Secuencial,Nº_Red) values (27, '67','78398');

insert into Subestación (ID_Subestación, Nº_Secuencial) values ('SU-627357','67');

insert into distribuye (ID_Subestación,Id_Zona_Servicio) values ('SU-627357','HUWB72827');

insert into Productor (Codigo_Autorización, Denominación, Dirección, Teléfono, Fecha_Validez, Fecha_Fin_Validez, Tipo_Compañia,Codigo_Reparto) values ('QP-84990', 'Productor1', 'Calle Fuente Reinosa 54', '681749921', (TO_TIMESTAMP('01-01-2022','DD-MM-YYYY')), (TO_TIMESTAMP('31-12-2022','DD-MM-YYYY')), 'Solar','KDWI7392');

insert into Central (Id_Central, Denominación, Dirección_Postal, Coordenadas_GPS,Correo, Twitter, Whatsapp, Diaria, Mensual, Anual,Codigo_Autorización) values ('CE-78938', 'CENTRAL1 S.A', 'Calle Ayala 63', '(76.74292,8.949200)', 'central1@gmail.com', '@central1', '693757312',  '8.5', '255', '3060','QP-84990');

insert into Responsable (DNI,Nombre,Correo,Correo_Urgencias,Ubi_Oficina,Antigüedad,Teléfono_Urgencias,Teléfono,Fecha_Nombramiento,Id_Central) values ('74829875T', 'Juan Pedros Conde', 'juan.pedros@gmail.com', 'Juanpc-urgencias@gmail.com', 'Calle de los Pirineos 55', '10 años', '682747299','646183664',(TO_TIMESTAMP('02-01-1989','DD-MM-YYYY')),'CE-78938');

insert into Alertas (Código_Alerta, Tipo,Código_Central, Coord_GPS, Fecha_Activación, Fecha_Desactivación, Intervención,Id_Central) values ('BT-98390', 'S', 'TY-8745', '(34.635729,-15.93794)',(TO_TIMESTAMP('22-10-2022','DD-MM-YYYY')),(TO_TIMESTAMP('22-10-2022','DD-MM-YYYY')), 'IN-0004','CE-78938');
insert into Hidroelécetrica (Volumen_Agual_Almacenada,Nº_Turbinas,Id_Central) values (78.90, 7,'CE-78938');
insert into Solar (Superficie_Paneles_Instalados, Media_Horas_Radiacion_Solar, Tipo_Radiación,Id_Central) values (100,8,'Fotovoltaica','CE-78938');

insert into Eólica (Nº_Aerogeneradores, Ubicación, Velocidad_R, Producción_Media,T_Acumulada_Mensual,Id_Central) values (20, 'Castilla y Leon', 90.00, 6.02, 208,'CE-78938');

insert into Térmica (Ciclo_Combinado, M3_Gas_Consumido, Tiempo_Anual_Inyección_Red_Eléctrica, Tiempo_Mensual_Inyección_Red_Electrica, Volumen_Anual_Acum_CO2_Emitido,Id_Central) values ('SI', 0.54, 2500.00, 208.33, 0.74,'CE-78938');
insert into Nuclear (Volumen_de_Materia_Prima_Construida, Nº_Reactores, Volumen_de_Residuos,Id_Central) values (1788.00, 2, 2000.00,'CE-78938');

insert into Empresa_de_Transporte (NIF, Nombre, Codigo_Autorización, Fecha_Validez, Correo) values ('73762983C','DHL', 'AB-83763',(TO_TIMESTAMP('31-12-2012','DD-MM-YYYY')), 'juan.lopez@gmail.com');

insert into Entrega (Id_Central,NIF) values ('CE-78938','73762983C');

insert into Suministrador (Nombre, País,NIF) values ('Borja Perez Alonso', 'Lituania','73762983C');

