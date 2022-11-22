--CURSOR--

--Cursor Por cada asesor cuantos seguros estan activos y cuanto estan retirados--

do
	$$
	Declare 
		datos RECORD;
		cursor_asesor cursor for
	Select
		sum ((select count (seguro.estado) from seguro where seguro.estado ='Seguro'
			 and id_seguro=servicio.id_seguro)) as Activos,
			 
		sum ((select count (seguro.estado) from seguro where seguro.estado ='Retirado'
			 and id_seguro=servicio.id_seguro)) as Retirados,
			 
	    count (ASESOR)  as Atendidos,
             asesor.nombre_asesor
              
        
	From servicio
		inner join seguro on seguro.id_seguro = servicio.id_seguro
        inner join asesor on asesor.id_asesor = seguro.id_asesor
        group by asesor.nombre_asesor;
	Begin 
		OPEN cursor_asesor;
		FETCH cursor_asesor INTO datos;
		WHILE (found) Loop
		RAISE NOTICE
		'Asesor: %
         Seguros Vendidos: %
         Seguros activos: %
         Seguros retirados: % 
         ',
	     datos.nombre_asesor,datos.Atendidos,datos.Activos,
         datos.Retirados;
		FETCH cursor_asesor INTO datos;
	end Loop;
end $$
language 'plpgsql';


