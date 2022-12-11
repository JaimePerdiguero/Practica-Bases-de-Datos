Apartado 1

select * from Productor inner join Central ON Productor.Codigo_Autorización = Central.Codigo_Autorización where Productor.Codigo_Autorización is NOT NULL and Central.Denominación like '%S.A%' ;

Apartado 2

select * from Eólica e where e.Producción_Media > (select avg(Producción_Media) from Eólica) and e.T_Acumulada_Mensual > 0;

Apartado 3

select max(e.T_Acumulada_Mensual) from Eólica e;

select avg(e.T_Acumulada_Mensual) as Media from Eólica e;

Apartado 4

select * from Alertas a inner join Central c on a.Id_Central = c.Id_Central where a.Tipo = 'N';

Apartado 5

set @estacion := 'Estacion1';

select * from Central c inner join Productor p on c.Codigo_Autorización = p.Codigo_Autorización inner join Reparto r on p.Codigo_Reparto = r.Codigo_Reparto inner join Estación_primaria es on r.Nombre = es.Nombre
where es.Nombre = @estacion;

Apartdado 6

set @zona := 'FGHY45097';

set @provincia := 'Badajoz';
 
select zs.consumo_medio from Central c inner join Productor p on c.Codigo_Autorización = p.Codigo_Autorización

inner join Reparto r on p.Codigo_Reparto = r.Codigo_Reparto inner join Estación_primaria es

on r.Nombre = es.Nombre inner join red_distribución rd on rd.Nombre = es.Nombre

inner join lineas l on l.Nº_Red = rd.Nº_Red inner join subestación sb on sb.Nº_Secuencial = l.Nº_Secuencial

inner join distribuye d on sb.ID_Subestación = d.ID_Subestación

inner join zona_de_servicio zs on zs.Id_Zona_Servicio = d.Id_Zona_Servicio inner join provincias pr

on pr.Id_Zona_Servicio = zs.Id_Zona_Servicio where zs.Id_Zona_Servicio = @zona and pr.Nombre = @provincia;
