insert into Estación_Primaria (nombre) 
values ('Estacion3');

insert into Red_Distribución (Nº_Red, Nombre) 
values ('88654','Estacion3');

insert into Lineas (Longitud, Nº_Secuencial,Nº_Red) 
values (11,'95','88654');

insert into Subestación (ID_Subestación, Nº_Secuencial)
values ('SU-756487','95');

insert into Zona_de_Servicio (Id_Zona_Servicio, Categoria, consumo_medio,nº_consumidores) 
values ('BBYY12345','Pública',93.64,2500);

insert into Provincias (Código_Provincia_,Nombre, Id_Zona_Servicio) 
values ('VLC-1200','Valencia','BBYY12345');

insert into distribuye (ID_Subestación, Id_Zona_Servicio) 
values ('SU-756487','BBYY12345');

insert into Reparto (Codigo_Reparto, Nombre) 
values ('HGAF9832','Estacion3');

insert into Productor (Codigo_Autorización, Denominación, Dirección, Teléfono, Fecha_Validez, Fecha_Fin_Validez, Tipo_Compañia, Codigo_Reparto) 
values ('AP-99045','Productor3','Paseo Castellana 100','648535386',(TO_TIMESTAMP('12-12-2020','DD-MM-YYYY')),(TO_TIMESTAMP('12-12-2030','DD-MM-YYYY')),'Particular','HGAF9832');

insert into Central (Id_Central, Denominación, Dirección_Postal, Coordenadas_GPS, Correo, Twitter, Whatsapp, Diaria, Mensual, Anual, Codigo_Autorización) 
values ('CN-77645','CENTRAL3 S.A','Buganvilla del rey 45','(67.75648,6.897464)','central3@gmail.com','@central3','678645775','10.5','315.3','3724','AP-99045');

insert into Responsable (DNI, Nombre, Correo, Correo_Urgencias, Ubi_Oficina, Antigüedad, Teléfono_Urgencias, Teléfono, Fecha_Nombramiento, Id_Central) 
values ('06630228N','Daniel Martin López','danielml@gmail.com','dml-urgencias@gmail.com','Calle Tramontana, 4','6 años','647598988','645353987',(TO_TIMESTAMP('13-08-2017','DD-MM-YYYY')),'CN-77645');

insert into Alertas (Código_Alerta, Tipo, Código_Central, Coord_GPS, Fecha_Activación, Fecha_Desactivación, Intervención, Id_Central) 
values ('AL-90080','Y','VL-2005','(-14.7750, 106.6708)',(TO_TIMESTAMP('25-09-2015','DD-MM-YYYY')),(TO_TIMESTAMP('25-09-2025','DD-MM-YYYY')),'IN-0010','CN-77645');

insert into Hidroelécetrica (Volumen_Agual_Almacenada, Nº_Turbinas, Id_Central) 
values(90.98,50,'CN-77645');

insert into Solar (Superficie_Paneles_Instalados, Media_Horas_Radiacion_Solar, Tipo_Radiación, Id_Central) 
values (205.33,8.5,'Térmica','CN-77645');

insert into Eólica (Nº_Aerogeneradores, Ubicación, Velocidad_R, Producción_Media, T_Acumulada_Mensual, Id_Central) 
values (25,'Extremadura',35.7,105.02,3000,'CN-77645');

insert into Térmica (Ciclo_Combinado, M3_Gas_Consumido, Tiempo_Anual_Inyección_Red_Eléctrica, Tiempo_Mensual_Inyección_Red_Electrica, Volumen_Anual_Acum_CO2_Emitido, Id_Central) 
values ('NO',34.30,2400.30,200.01,0.85,'CN-77645');

insert into Nuclear (Volumen_de_Materia_Prima_Construida, Nº_Reactores, Volumen_de_Residuos, Id_Central) 
values (300.6,1,0.76,'CN-77645');

insert into Empresa_de_Transporte (NIF, Nombre, Codigo_Autorización, Fecha_Validez, Correo) 
values ('08834667H','TresGuerras','TP-20999',(TO_TIMESTAMP('28/11/2021','DD-MM-YYYY')),'tresguerras-sl@gmail.com');

insert into Suministrador (Nombre, País, NIF) 
values ('Alberto Montorio Parra','Montenegro','08834667H');

insert into Entrega (Id_Central, NIF) 
values ('CN-77645','08834667H');
