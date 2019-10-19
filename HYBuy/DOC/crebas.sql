/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2019/10/17 21:36:13                          */
/*==============================================================*/


drop table if exists Announcement;

drop table if exists Moom;

drop table if exists Order;

drop table if exists Uname;

drop table if exists boxInfo;

drop table if exists controllers;

drop table if exists roles;

drop table if exists users;

/*==============================================================*/
/* Table: Announcement                                          */
/*==============================================================*/
create table Announcement
(
   Aid                  int not null,
   Cid                  int,
   Atitle               varchar(100),
   Atime                date,
   Acontext             text,
   Author               varchar(20),
   primary key (Aid)
);

/*==============================================================*/
/* Table: Moom                                                  */
/*==============================================================*/
create table Moom
(
   Mid                  int not null,
   Mname                varchar(100),
   Mcontact             varchar(100),
   Mbelong              varchar(20),
   primary key (Mid)
);

/*==============================================================*/
/* Table: "Order"                                               */
/*==============================================================*/
create table Order
(
   Oid                  int not null,
   Ufname               varchar(20),
   Bxid                 int,
   Odate                date,
   Opaysta              int,
   primary key (Oid)
);

/*==============================================================*/
/* Table: Uname                                                 */
/*==============================================================*/
create table Uname
(
   Ufname               varchar(20) not null,
   Ufsex                int,
   Ufsheng              varchar(20),
   Ufshi                varchar(20),
   Ufphone              varchar(20),
   Ufaddre              varchar(40),
   Ufmail               varchar(50,
   UfIdType             varchar(30),
   UfIdNumber           varchar(50),
   primary key (Ufname)
);

/*==============================================================*/
/* Table: boxInfo                                               */
/*==============================================================*/
create table boxInfo
(
   Bxid                 int not null,
   Mid                  int,
   Bxname               varchar(50),
   bxprice              int,
   bxpath               varchar(100),
   bxtype               varchar(20),
   bxMoom               char(10),
   primary key (Bxid)
);

/*==============================================================*/
/* Table: controllers                                           */
/*==============================================================*/
create table controllers
(
   Cid                  int not null,
   Roleid               int,
   Cname                varchar(20) not null,
   Cpwd                 varchar(50) not null,
   Csex                 int,
   Croleid              varchar(20),
   primary key (Cid)
);

/*==============================================================*/
/* Table: roles                                                 */
/*==============================================================*/
create table roles
(
   Roleid               int not null,
   Rolename             varchar(20),
   primary key (Roleid)
);

/*==============================================================*/
/* Table: users                                                 */
/*==============================================================*/
create temporary table users
(
   Uname                varchar(20) not null,
   Roleid               int,
   Ufname               varchar(20),
   Upwd                 varchar(50),
   primary key (Uname)
);

alter table users comment '用户表存储用户信息';

alter table Announcement add constraint FK_Reference_6 foreign key (Cid)
      references controllers (Cid) on delete restrict on update restrict;

alter table Order add constraint FK_Reference_3 foreign key (Ufname)
      references Uname (Ufname) on delete restrict on update restrict;

alter table Order add constraint FK_Reference_4 foreign key (Bxid)
      references boxInfo (Bxid) on delete restrict on update restrict;

alter table boxInfo add constraint FK_Reference_5 foreign key (Mid)
      references Moom (Mid) on delete restrict on update restrict;

alter table controllers add constraint FK_Reference_7 foreign key (Roleid)
      references roles (Roleid) on delete restrict on update restrict;

alter table users add constraint FK_Reference_1 foreign key (Roleid)
      references roles (Roleid) on delete restrict on update restrict;

alter table users add constraint FK_Reference_2 foreign key (Ufname)
      references Uname (Ufname) on delete restrict on update restrict;

