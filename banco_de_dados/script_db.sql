/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     20/06/2021 16:40:38                          */
/*==============================================================*/


drop table if exists Avaliacoes;

drop table if exists Credenciais;

drop table if exists Estabelecimento;

drop table if exists Feed;

drop table if exists Login_Social;

drop table if exists Usuario;

/*==============================================================*/
/* Table: Avaliacoes                                            */
/*==============================================================*/
create table Avaliacoes
(
   id_avaliacao         int not null,
   id_usuario           int not null,
   id_estabelecimento   int not null,
   nota                 int,
   comentario_usuario   text,
   resposta_estabelecimento text
);

alter table Avaliacoes
   add primary key (id_avaliacao);

/*==============================================================*/
/* Table: Credenciais                                           */
/*==============================================================*/
create table Credenciais
(
   id_usuario           int not null,
   id_estabelecimento   int not null,
   usuario              char(8),
   senha                varchar(12)
);

/*==============================================================*/
/* Table: Estabelecimento                                       */
/*==============================================================*/
create table Estabelecimento
(
   id_estabelecimento   int not null,
   nome_estabelecimento text,
   email_estabelecimento text,
   cnpj_estabelecimento int,
   foto_perfil_estabelecimento longblob,
   telefone_estabelecimento int
);

alter table Estabelecimento
   add primary key (id_estabelecimento);

/*==============================================================*/
/* Table: Feed                                                  */
/*==============================================================*/
create table Feed
(
   id_usuario           int not null,
   post                 longtext,
   contagem_likes       int
);

/*==============================================================*/
/* Table: Login_Social                                          */
/*==============================================================*/
create table Login_Social
(
   id_usuario           int not null,
   token_google         longtext,
   token_facebook       longtext
);

/*==============================================================*/
/* Table: Usuario                                               */
/*==============================================================*/
create table Usuario
(
   id_usuario           int not null,
   nome_usuario         text,
   email_usuario        text,
   telefone_usuario     int,
   foto_perfil_usuario  longblob
);

alter table Usuario
   add primary key (id_usuario);

alter table Avaliacoes add constraint FK_possui foreign key (id_estabelecimento)
      references Estabelecimento (id_estabelecimento) on delete restrict on update restrict;

alter table Avaliacoes add constraint FK_possui foreign key (id_usuario)
      references Usuario (id_usuario) on delete restrict on update restrict;

alter table Credenciais add constraint FK_possui foreign key (id_estabelecimento)
      references Estabelecimento (id_estabelecimento) on delete restrict on update restrict;

alter table Credenciais add constraint FK_possui foreign key (id_usuario)
      references Usuario (id_usuario) on delete restrict on update restrict;

alter table Feed add constraint FK_possui foreign key (id_usuario)
      references Usuario (id_usuario) on delete restrict on update restrict;

alter table Login_Social add constraint FK_possui foreign key (id_usuario)
      references Usuario (id_usuario) on delete restrict on update restrict;

