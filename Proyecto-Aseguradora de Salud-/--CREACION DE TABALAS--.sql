--CREACION DE TABALAS--

--Creacion de la tabla Asesor
create table ASESOR (
   ID_ASESOR            INT4                 not null,
   CEDULA_ASESOR        VARCHAR(11)          null,
   NOMBRE_ASESOR        VARCHAR(40)          null,
   TELEFONO_ASESOR      VARCHAR(11)          null,
   CORREO_ASESOR        VARCHAR(40)          null,
   DIRECCION_ASESOR     VARCHAR(40)          null,
   constraint PK_ASESOR primary key (ID_ASESOR)
);
--Creacion del index 
create unique index ASESOR_PK on ASESOR (
ID_ASESOR
);

--Creacion de la tabla Cliente
create table CLIENTE (
   ID_CLIENTE           INT4                 not null,
   CEDULA_CLIENTE       VARCHAR(11)          null,
   NOMBRE_CLIENTE       VARCHAR(40)          null,
   TELEFONO_CLIENTE     VARCHAR(11)          null,
   CORREO_CLIENTE       VARCHAR(40)          null,
   TIPO_SANGRE          VARCHAR(3)           null,
   constraint PK_CLIENTE primary key (ID_CLIENTE)
);
--Creacion del index 
create unique index CLIENTE_PK on CLIENTE (
ID_CLIENTE
);


--Creacion de la tabla Patologia
create table PATOLOGIA (
   ID_PATOLOGIA         INT4                 not null,
   ID_CLIENTE           INT4                 null,
   TIPO_PATOLOGIA       VARCHAR(45)          null,
   constraint PK_PATOLOGIA primary key (ID_PATOLOGIA)
);
--Creacion del index 
create unique index PATOLOGIA_PK on PATOLOGIA (
ID_PATOLOGIA
);
create  index CLIENTE_PATOLOGIA_FK on PATOLOGIA (
ID_CLIENTE
);

--Creacion de la tabla Seguro
create table SEGURO (
   ID_SEGURO            INT4                 not null,
   ID_CLIENTE           INT4                 null,
   ID_ASESOR            INT4                 null,
   PENDIENTE            INT4                 null,
   ESTADO               VARCHAR(40)          null,
   FECHA_SEGURO         DATE                 null,
   PRECIO_SEGURO        MONEY                null,
   constraint PK_SEGURO primary key (ID_SEGURO)
);
--Creacion del index 
create unique index SEGURO_PK on SEGURO (
ID_SEGURO
);
create  index CLIENTE_SEGURO_FK on SEGURO (
ID_CLIENTE
);
create  index ASESOR_CONTRATO_FK on SEGURO (
ID_ASESOR
);

--Creacion de la tabla Poliza
create table POLIZA (
   ID_POLIZA            INT4                 not null,
   ID_SEGURO            INT4                 null,
   PLAN                 VARCHAR(40)          null,
   constraint PK_POLIZA primary key (ID_POLIZA)
);
--Creacion del index 
create unique index POLIZA_PK on POLIZA (
ID_POLIZA
);
create  index SEGURO_POLIZA_FK on POLIZA (
ID_SEGURO
);

--Creacion de la tabla Servicio
create table SERVICIO (
   ID_SERVICIO          INT4                 not null,
   ID_SEGURO            INT4                 null,
   ID_ASESOR            INT4                 null,
   TIPO_SERVICIO        VARCHAR(40)          null,
   PRECIO_SERVICIO      MONEY                null,
   constraint PK_SERVICIO primary key (ID_SERVICIO)
);
--Creacion del index 
create unique index SERVICIO_PK on SERVICIO (
ID_SERVICIO
);
create  index SEGURO_SERVICIO_FK on SERVICIO (
ID_SEGURO
);
create  index ASESOR_SERVICIO_FK on SERVICIO (
ID_ASESOR
);

--Creacion de la tabla Detalle
create table DETALLE (
   ID_DETALLE           INT4                 not null,
   ID_POLIZA            INT4                 null,
   ID_SERVICIO          INT4                 null,
   ID_FACTURA           INT4                 null,
   DESCRIPCION          VARCHAR(40)          null,
   PRECIO_DETALLE       MONEY                null,
   constraint PK_DETALLE primary key (ID_DETALLE)
);
--Creacion del index 
create unique index DETALLE_PK on DETALLE (
ID_DETALLE
);
create  index POLIZA_DETALLE_FK on DETALLE (
ID_POLIZA
);
create  index SERVICIO_DETALLE_FK on DETALLE (
ID_SERVICIO
);
create  index FACTURA_DETALLE_FK on DETALLE (
ID_FACTURA
);

--Creacion de la tabla Clinica
create table CLINICA (
   ID_CLINICA           INT4                 not null,
   NOMBRE_CLINICA       VARCHAR(40)          null,
   TELEFONO_CLINICA     VARCHAR(11)          null,
   DIRECCION_CLINICA    VARCHAR(40)          null,
   constraint PK_CLINICA primary key (ID_CLINICA)
);
--Creacion del index 
create unique index CLINICA_PK on CLINICA (
ID_CLINICA
);

--Creacion de la tabla Atencion
create table ATENCION (
   ID_ATENCION          INT4                 not null,
   ID_SEGURO            INT4                 null,
   ID_CLINICA           INT4                 null,
   MOTIVO_ATENCION      VARCHAR(45)          null,
   FECHA_ATENCION       DATE                 null,
   PRECIO_ATENCION      MONEY                null,
   constraint PK_ATENCION primary key (ID_ATENCION)
);
--Creacion del index 
create unique index ATENCION_PK on ATENCION (
ID_ATENCION
);
create  index SEGURO_ATENCION_FK on ATENCION (
ID_SEGURO
);
create  index CLINICA_ATENCION_FK on ATENCION (
ID_CLINICA
);

--Creacion de la tabla Especialidad
create table ESPECIALIDAD (
   ID_ESPECIALIDAD      INT4                 not null,
   ID_DOCTOR            INT4                 null,
   ID_ATENCION          INT4                 null,
   TIPO_ESPECIALIDAD    VARCHAR(40)          null,
   constraint PK_ESPECIALIDAD primary key (ID_ESPECIALIDAD)
);
--Creacion del index 
create unique index ESPECIALIDAD_PK on ESPECIALIDAD (
ID_ESPECIALIDAD
);
create  index DOCTOR_ESPECIALIDAD_FK on ESPECIALIDAD (
ID_DOCTOR
);
create  index ATENCION_ESPECIALIDAD_FK on ESPECIALIDAD (
ID_ATENCION
);

--Creacion de la tabla Doctor
create table DOCTOR (
   ID_DOCTOR            INT4                 not null,
   CEDULA_DOCTOR        VARCHAR(11)          null,
   NOMBRE_DOCTOR        VARCHAR(40)          null,
   TELEFONO_DOCTOR      VARCHAR(40)          null,
   CORREO_DOCTOR        VARCHAR(40)          null,
   DIRECCION_DOCTOR     VARCHAR(40)          null,
   constraint PK_DOCTOR primary key (ID_DOCTOR)
);
--Creacion del index 
create unique index DOCTOR_PK on DOCTOR (
ID_DOCTOR
);

--Creacion de la tabla Factura 
create table FACTURA (
   ID_FACTURA           INT4                 not null,
   ID_SEGURO            INT4                 null,
   FECHA_FACTURA        DATE                 null,
   constraint PK_FACTURA primary key (ID_FACTURA)
);
--Creacion del index 
create unique index FACTURA_PK on FACTURA (
ID_FACTURA
);
create  index SEGURO_FACTURA_FK on FACTURA (
ID_SEGURO
);

--Creacion de los Alter Table de las tablas
alter table ATENCION
   add constraint FK_ATENCION_CLINICA_A_CLINICA foreign key (ID_CLINICA)
      references CLINICA (ID_CLINICA)
      on delete restrict on update restrict;

alter table ATENCION
   add constraint FK_ATENCION_SEGURO__SEGURO foreign key (ID_SEGURO)
      references SEGURO (ID_SEGURO)
      on delete restrict on update restrict;

alter table CLIENTE
   add constraint FK_CLIENTE_ASESOR_CL_ASESOR foreign key (ID_ASESOR)
      references ASESOR (ID_ASESOR)
      on delete restrict on update restrict;

alter table SEGURO
   add constraint FK_SEGURO_CLIENTE_C_CLIENTE foreign key (ID_CLIENTE)
      references CLIENTE (ID_CLIENTE)
      on delete restrict on update restrict;

alter table SEGURO
   add constraint FK_SEGURO_ASESOR_ASESOR foreign key (ID_ASESOR)
      references ASESOR (ID_ASESOR)
      on delete restrict on update restrict;

alter table DETALLE
   add constraint FK_DETALLE_FACTURA_D_FACTURA foreign key (ID_FACTURA)
      references FACTURA (ID_FACTURA)
      on delete restrict on update restrict;

alter table DETALLE
   add constraint FK_DETALLE_POLIZA_DE_POLIZA foreign key (ID_POLIZA)
      references POLIZA (ID_POLIZA)
      on delete restrict on update restrict;

alter table DETALLE
   add constraint FK_DETALLE_SERVICIO__SERVICIO foreign key (ID_SERVICIO)
      references SERVICIO (ID_SERVICIO)
      on delete restrict on update restrict;

alter table ESPECIALIDAD
   add constraint FK_ESPECIAL_ATENCION__ATENCION foreign key (ID_ATENCION)
      references ATENCION (ID_ATENCION)
      on delete restrict on update restrict;

alter table ESPECIALIDAD
   add constraint FK_ESPECIAL_DOCTOR_ES_DOCTOR foreign key (ID_DOCTOR)
      references DOCTOR (ID_DOCTOR)
      on delete restrict on update restrict;

alter table FACTURA
   add constraint FK_FACTURA_SEGURO__SEGURO foreign key (ID_SEGURO)
      references SEGURO (ID_SEGURO)
      on delete restrict on update restrict;

alter table PATOLOGIA
   add constraint FK_PATOLOGI_CLIENTE_P_CLIENTE foreign key (ID_CLIENTE)
      references CLIENTE (ID_CLIENTE)
      on delete restrict on update restrict;

alter table POLIZA
   add constraint FK_POLIZA_SEGURO__CONTRATO foreign key (ID_SEGURO)
      references SEGURO (ID_SEGURO)
      on delete restrict on update restrict;

alter table SERVICIO
   add constraint FK_SERVICIO_SEGURO__SEGURO foreign key (ID_SEGURO)
      references SEGURO (ID_SEGURO)
      on delete restrict on update restrict;

alter table SERVICIO
   add constraint FK_SERVICIO_ASESOR__ASESOR foreign key (ID_ASESOR)
      references ASESOR (ID_ASESOR)
      on delete restrict on update restrict;  