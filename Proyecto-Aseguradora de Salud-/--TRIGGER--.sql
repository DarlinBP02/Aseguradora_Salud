--TRIGGER--

 /*Trigger que no permita el ingreso de cliente con 2 deudas atrasadas.*/

CREATE OR REPLACE FUNCTION tg_deuda() RETURNS TRIGGER AS $tg_deuda$
  DECLARE
  acumTemporario int;
	maximo int = 2;	
  BEGIN
 	select pendiente into acumTemporario from seguro where pendiente = new.pendiente;
	if(acumTemporario >= maximo) then
		RAISE EXCEPTION 'Cliente con deudas atrasadas';
	END if;
   RETURN new;
  END;

$tg_deuda$ 
LANGUAGE plpgsql;


CREATE TRIGGER tg_deuda BEFORE INSERT
    ON seguro FOR EACH ROW 
    EXECUTE PROCEDURE tg_deuda(); 
    
 drop trigger tg_deuda on seguro   

--Prueba--
insert into seguro (id_seguro, id_cliente,id_asesor,pendiente, estado, fecha_seguro, precio_seguro) 
values (9, 1, 1,3, 'Seguro', '2022-10-28', '59,99');