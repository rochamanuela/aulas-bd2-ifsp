-- 1. Por meio do select criar uma consulta usando subquery.

create table temp_gravadora(
  nome_gravadora varchar(60)
);

insert into temp_gravadora
select nome_gravadora from gravadora;

create table gravadora_musica(
  nome_gravadora varchar(60),
  nome_musica varchar(60)
);

insert into gravadora_musica
select gravadora.nome_gravadora, musica.nome_musica from musica, gravadora, musica_gravadora
where musica.codigo_musica=musica_gravadora.codigo_musica
and gravadora.codigo_gravadora=musica_gravadora.codigo_gravadora;
