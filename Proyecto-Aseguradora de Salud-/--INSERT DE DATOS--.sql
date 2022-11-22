--INSERT DE DATOS--

--INSERT DE LA TABLA ASESOR--
insert into asesor (id_asesor, cedula_asesor, nombre_asesor, telefono_asesor, correo_asesor, direccion_asesor) 
values (1, '13189654382', 'Alonso', '0945678999', 'alonso@gmail.com', 'Manta');
insert into asesor (id_asesor, cedula_asesor, nombre_asesor, telefono_asesor, correo_asesor, direccion_asesor) 
values (2, '1302578932', 'Maria', '0976885433', 'maria@gmail.com', 'Los Esteros');
insert into asesor (id_asesor, cedula_asesor, nombre_asesor, telefono_asesor, correo_asesor, direccion_asesor) 
values (3, '1316789544', 'Luis', '0978453301', 'luis22@gmail.com', 'Manta');
insert into asesor (id_asesor, cedula_asesor, nombre_asesor, telefono_asesor, correo_asesor, direccion_asesor) 
values (4, '1316700654', 'Patricia', '0967235644', 'patricia1@gmail.com', 'Portoviejo');
insert into asesor (id_asesor, cedula_asesor, nombre_asesor, telefono_asesor, correo_asesor, direccion_asesor) 
values (5, '1304578985', 'Pedro', '0995941468', 'pedro@gmail.com', 'Los Esteros');

--INSERT DE LA TABLA CLIENTE--
insert into cliente (id_cliente, cedula_cliente, nombre_cliente, telefono_cliente, correo_cliente, tipo_sangre) 
values (1, '1313336691', 'Marco Bravo', '0991173823', 'marcob@gmail.com', 'o+');
insert into cliente (id_cliente, cedula_cliente, nombre_cliente, telefono_cliente, correo_cliente, tipo_sangre) 
values (2, '1307764538', 'Raul Espinal', '0994722863', 'raule@gmail.com', 'ab+');
insert into cliente (id_cliente, cedula_cliente, nombre_cliente, telefono_cliente, correo_cliente, tipo_sangre) 
values (3, '1314567323', 'Luisa Alvarado', '0992401754', 'luisaa@gmail.com', 'a-');
insert into cliente (id_cliente, cedula_cliente, nombre_cliente, telefono_cliente, correo_cliente, tipo_sangre) 
values (4, '1319974075', 'Jenny Gomez', '0991043248', 'jennyg@gmail.com', 'b+');
insert into cliente (id_cliente, cedula_cliente, nombre_cliente, telefono_cliente, correo_cliente, tipo_sangre) 
values (5, '1302284654', 'Juan Zambrano', '0991008439', 'juanz@gmail.com', 'o-');

--INSERT DE LA TABLA PATOLOGIA--
insert into patologia (id_patologia, id_cliente, tipo_patologia) 
values (1, 1, 'Pie diabético');
insert into patologia (id_patologia, id_cliente, tipo_patologia) 
values (2, 2, 'Enfermedad cerebrovascular');
insert into patologia (id_patologia, id_cliente, tipo_patologia) 
values (3, 3, 'Varices');
insert into patologia (id_patologia, id_cliente, tipo_patologia) 
values (4, 4, 'Embolia');
insert into patologia (id_patologia, id_cliente, tipo_patologia) 
values (5, 5, 'Epilepsia compleja');

--INSERT DE LA TABLA SEGURO--
insert into seguro (id_seguro, id_cliente,id_asesor,pendiente, estado, fecha_seguro, precio_seguro) 
values (1, 1,1,0, 'Seguro', '2022-10-28', '59,99');
insert into seguro (id_seguro, id_cliente,id_asesor,pendiente, estado, fecha_seguro, precio_seguro) 
values (2, 2,1,1, 'Seguro', '2022-10-19', '60,99');
insert into seguro (id_seguro, id_cliente,id_asesor,pendiente, estado, fecha_seguro, precio_seguro) 
values (3, 3,2,0, 'Retirado', '2022-11-15', '39,99');
insert into seguro (id_seguro, id_cliente,id_asesor,pendiente, estado, fecha_seguro, precio_seguro) 
values (4, 4,3,0, 'Retirado', '2022-12-02', '50,00');
insert into seguro (id_seguro, id_cliente,id_asesor,pendiente, estado, fecha_seguro, precio_seguro) 
values (5, 5,4,1, 'Seguro', '2022-11-19', '29,99');
insert into seguro (id_seguro, id_cliente,id_asesor,pendiente, estado, fecha_seguro, precio_seguro) 
values (6, 5,5,1, 'Retirado', '2022-12-09', '40,99');


--INSERT DE LA TABLA POLIZA--
insert into poliza (id_poliza, id_seguro, plan) 
values (1, 1, 'Familiar');
insert into poliza (id_poliza, id_seguro, plan) 
values (2, 2, 'Personal');
insert into poliza (id_poliza, id_seguro, plan) 
values (3, 3, 'Familiar');
insert into poliza (id_poliza, id_seguro, plan) 
values (4, 4, 'Personal');
insert into poliza (id_poliza, id_seguro, plan) 
values (5, 5, 'Familiar');
insert into poliza (id_poliza, id_seguro, plan) 
values (6, 5, 'Familiar');

--INSERT DE LA TABLA SERVICIO--
insert into servicio (id_servicio, id_seguro, tipo_servicio, precio_servicio) 
values (1, 1, 'venta de ticket', '109,99');
insert into servicio (id_servicio, id_seguro, tipo_servicio, precio_servicio) 
values (2, 2, 'venta de ticket', '99,99');
insert into servicio (id_servicio, id_seguro, tipo_servicio, precio_servicio) 
values (3, 3, 'venta de bonos', '174,99');
insert into servicio (id_servicio, id_seguro, tipo_servicio, precio_servicio) 
values (4, 4, 'hospitalizacion', '150,50');
insert into servicio (id_servicio, id_seguro, tipo_servicio, precio_servicio) 
values (5, 5, 'venta de ticket', '70,00');

--INSERT DE LA TABLA CLINICA--
insert into clinica (id_clinica, nombre_clinica, telefono_clinica, direccion_clinica) 
values (1, 'Seguros Equinoccial', '0955421358', '3748+25H, Av. 24, Manta');
insert into clinica (id_clinica, nombre_clinica, telefono_clinica, direccion_clinica) 
values (2, 'Latina Seguros ', '0945258123', '26RV+V93, Ruta del Spondylus');
insert into clinica (id_clinica, nombre_clinica, telefono_clinica, direccion_clinica) 
values (3, 'QBE Seguros Colonial', '0978453212', 'R3HV+HQH, Guayaquil 090511');
insert into clinica (id_clinica, nombre_clinica, telefono_clinica, direccion_clinica) 
values (4, 'Liberty Seguros Ecuador', '0994562138', 'Av. 9, Guayaquil 090512');
insert into clinica (id_clinica, nombre_clinica, telefono_clinica, direccion_clinica) 
values (5, 'Tecniseguros ', '0956123513', 'Av. Malecón y Calle 16 esquina, Manta');

--INSERT DE LA TABLA ATENCION--
insert into atencion (id_atencion, id_seguro, id_clinica, motivo_atencion, fecha_atencion, precio_atencion) 
values (1, 1, 1, 'Diabetes', '2022-12-02', '25,00');
insert into atencion (id_atencion, id_seguro, id_clinica, motivo_atencion, fecha_atencion, precio_atencion) 
values (2, 2, 2, 'Flujo de sangre del cerebro', '2022-11-15', '49,99');
insert into atencion (id_atencion, id_seguro, id_clinica, motivo_atencion, fecha_atencion, precio_atencion) 
values (3, 3, 3, 'atencion por Varices', '2022-12-14', '30,00');
insert into atencion (id_atencion, id_seguro, id_clinica, motivo_atencion, fecha_atencion, precio_atencion) 
values (4, 4, 4, 'antencion de embolia', '2023-01-28', '90,30');
insert into atencion (id_atencion, id_seguro, id_clinica, motivo_atencion, fecha_atencion, precio_atencion) 
values (5, 5, 5, 'antencion de Epilepsia', '2023-02-01', '20,00');

--INSERT DE LA TABLA DOCTOR--
insert into doctor (id_doctor, cedula_doctor, nombre_doctor, telefono_doctor, correo_doctor, direccion_doctor) 
values (1, '1302355048', 'Martha Santana', '0999847666', 'martha@gmail.com', 'Guayaquil');
insert into doctor (id_doctor, cedula_doctor, nombre_doctor, telefono_doctor, correo_doctor, direccion_doctor) 
values (2, '1312029963', 'Ivan Tubay', '0991640603', 'ivan@wigmailsc.com', 'Manta');
insert into doctor (id_doctor, cedula_doctor, nombre_doctor, telefono_doctor, correo_doctor, direccion_doctor) 
values (3, '1318943446', 'Erick Castro', '0999112884', 'erick@gmail.com', 'Guayaquil');
insert into doctor (id_doctor, cedula_doctor, nombre_doctor, telefono_doctor, correo_doctor, direccion_doctor) 
values (4, '1315469914', 'Willian Zambrano', '0992143919', 'willian@gmail.com', 'Quito');
insert into doctor (id_doctor, cedula_doctor, nombre_doctor, telefono_doctor, correo_doctor, direccion_doctor) 
values (5, '1314541344', 'Steven Jonas', '0992838904', 'steven@gmail.com', 'Manta');

--INSERT DE LA TABLA ESPECIALIDAD--
insert into especialidad (id_especialidad, id_doctor, id_atencion, tipo_especialidad) 
values (1, 1, 1, 'Nutricionista');
insert into especialidad (id_especialidad, id_doctor, id_atencion, tipo_especialidad) 
values (2, 2, 2, 'Neurologo');
insert into especialidad (id_especialidad, id_doctor, id_atencion, tipo_especialidad) 
values (3, 3, 3, 'Alergologo');
insert into especialidad (id_especialidad, id_doctor, id_atencion, tipo_especialidad) 
values (4, 4, 4, 'Neurologo');
insert into especialidad (id_especialidad, id_doctor, id_atencion, tipo_especialidad) 
values (5, 5, 5, 'Neurologo');

--INSERT DE LA TABLA FACTURA--
insert into factura (id_factura, id_seguro, fecha_factura) 
values (1, 1, '2022-10-30');
insert into factura (id_factura, id_seguro, fecha_factura) 
values (2, 2, '2022-10-29');
insert into factura (id_factura, id_seguro, fecha_factura) 
values (3, 3, '2022-12-01');
insert into factura (id_factura, id_seguro, fecha_factura) 
values (4, 4, '2023-01-10');
insert into factura (id_factura, id_seguro, fecha_factura) 
values (5, 5, '2022-12-10');

--INSERT DE LA TABLA DETALLE--
insert into detalle (id_detalle, id_poliza, id_servicio, id_factura, descripcion, precio_detalle) 
values (1, 1, 1, 1, 'Detalle de factura', '60,00');
insert into detalle (id_detalle, id_poliza, id_servicio, id_factura, descripcion, precio_detalle) 
values (2, 2, 2, 2, 'Detalle de factura', '70,00');
insert into detalle (id_detalle, id_poliza, id_servicio, id_factura, descripcion, precio_detalle) 
values (3, 3, 3, 3, 'Detalle de factura', '44,00');
insert into detalle (id_detalle, id_poliza, id_servicio, id_factura, descripcion, precio_detalle) 
values (4, 4, 4, 4, 'Detalle de factura', '55,00');
insert into detalle (id_detalle, id_poliza, id_servicio, id_factura, descripcion, precio_detalle) 
values (5, 5, 5, 5, 'Detalle de factura', '35,99');