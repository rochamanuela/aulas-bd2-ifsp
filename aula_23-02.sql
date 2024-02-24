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

-- 2. Criar um select usando uma das funções de agregação.
select count(nome_musica) as total_de_musicas from musica;

-- 3. Por meio do select criar uma consulta usando as duas instruções: between e in.
select * from musica where nome_musica between 'a%' and 'c%' order by nome_musica;

-- 4. Criar uma view contendo, pelo menos, 3 relacionamentos entre tabelas.
create view musica_cd_autor as select 
