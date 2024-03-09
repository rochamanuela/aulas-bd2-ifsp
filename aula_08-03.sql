-- processamento mais rápido
select produto from produtos where idcor in (select id from cor);

-- junção
select * from produtos natural join cor;
