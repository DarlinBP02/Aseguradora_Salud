--CONSULTAS

--Consulta 1: Mostrar un historial de ventas por tipo de seguro--

select poliza.plan as tipo_seguro, extract (year from seguro.fecha_seguro)as año,
count(seguro.id_cliente)as total from seguro
inner join poliza on poliza.id_seguro = seguro.id_seguro
group by poliza.plan, extract (year from seguro.fecha_seguro) 

--Consulta 2:Mostrar el Historial de retiros que haya en la aseguradora--

select estado, extract (year from fecha_seguro)as año, count (id_cliente) as retirados from seguro
where estado = 'Retirado'
group by estado, fecha_seguro;

--Consulta 3: Mostrar cuantas personas se atendieron por especialidades--

select especialidad.tipo_especialidad, extract (year from atencion.fecha_atencion)as año, count(atencion.id_atencion)as total from especialidad
inner join atencion on atencion.id_atencion = especialidad.id_atencion
inner join clinica on atencion.id_clinica = clinica.id_clinica
group by especialidad.tipo_especialidad, extract (year from atencion.fecha_atencion);

--Consulta 4:Mostrar el historial de servicio vendidos por la institucion.--

select servicio.tipo_servicio, extract(year from factura.fecha_factura)as año, sum(detalle.precio_detalle)as total from servicio
inner join detalle on detalle.id_servicio = servicio.id_servicio
inner join factura on factura.id_factura = detalle.id_factura
group by servicio.tipo_servicio, extract (year from factura.fecha_factura);