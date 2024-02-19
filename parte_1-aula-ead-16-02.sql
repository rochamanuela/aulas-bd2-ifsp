-- 1. Consulta SQL com o uso de inner join.
SELECT TabelaA.Nome AS nomeA, TabelaB.Nome AS nomeB
FROM TabelaA
INNER JOIN TabelaB ON TabelaA.Nome = TabelaB.Nome;

-- 2. Consulta SQL com o uso de left join.
SELECT TabelaA.Nome AS nomeA, TabelaB.Nome AS nomeB
FROM TabelaA
LEFT JOIN TabelaB ON TabelaA.Nome = TabelaB.Nome;

-- 3. Consulta SQL com o uso de right join.
SELECT TabelaA.Nome AS nomeA, TabelaB.Nome AS nomeB
FROM TabelaA
RIGHT JOIN TabelaB ON TabelaA.Nome = TabelaB.Nome;

-- 4. Consulta SQL com o uso de full join
SELECT TabelaA.Nome AS nomeA, TabelaB.Nome AS nomeB
FROM TabelaA
LEFT JOIN TabelaB ON TabelaA.Nome = TabelaB.Nome
UNION
SELECT TabelaA.Nome AS nomeA, TabelaB.Nome AS nomeB
FROM TabelaA
RIGHT JOIN TabelaB ON TabelaA.Nome = TabelaB.Nome;

-- 5. Consulta SQL usando função de agregação count.
SELECT COUNT(*) AS total_cadastros
FROM TabelaA;

-- 6. Consulta SQL usando função de agregação count e inner join.
SELECT COUNT(*) AS total_cadastros
FROM TabelaA
INNER JOIN TabelaB ON TabelaA.Nome = TabelaB.Nome;

-- 7. Consulta SQL usando função de agregação count e a cláusula like (revisão de conteúdo).
SELECT COUNT(*) AS total_pessoas_com_e
FROM TabelaB
WHERE Nome LIKE '%e%';


