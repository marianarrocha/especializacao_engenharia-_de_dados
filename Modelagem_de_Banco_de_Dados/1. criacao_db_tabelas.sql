CREATE DATABASE logistica
go

USE logistica
go

/*==============================================================*/
/* Table: SHIPPING_INFO                                         */
/*==============================================================*/
create table SHIPPING_INFO (
   NUMERO_CARGA         int                  not null,
   PORTO_DESTINO        varchar(100)         not null,
   PESO_KG_             decimal(10,2)        not null,
   DATA_MAXIMA_DESEMBARQUE_ datetime         not null,
   DATA_EMBARQUE_       datetime,         
   DIAS_ATRASO_         int,                 
   COD_AGENTE_RECEPTOR_ varchar(10)          not null,
   DATA_VALIDADE_       datetime             null,
   TEMPERATURA_MAXIMA   decimal(4,1)         null,
   constraint PK_SHIPPING_INFO primary key (NUMERO_CARGA)
)
go

/*==============================================================*/
/* Table: SHIP_SCHEDULE                                         */
/*==============================================================*/
create table SHIP_SCHEDULE (
   ID_NAVIO             int                  not null,
   PORTO_DESTINO        varchar(100)         not null,
   DATA_EMBARQUE        datetime             not null,
   DATA_DESEMBARQUE     datetime             not null,
   constraint PK_SHIP_SCHEDULE primary key (ID_NAVIO)
)
go

