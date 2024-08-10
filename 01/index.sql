-- Seleciona uma tabela
SELECT * NOME DO BANCO

-- Seleciona uma tupla da tabela
select * from amigos where id = 5;

-- Seleciona uma tupla da tabela com o nome aoarecendo

select amigos.nome, telefones.id_amigo
from amigos, telefones
where amigos.id = telefones.id_amigo
and telefones.id_amigo = 5;

-- selecionando apenas o telefone da cristina

select amigos.nome, telefones.numero
from amigos, telefones
where amigos.id = telefones.id_amigo
and amigos.nome = "Cristina";

-- quero a mesma query, maws com o nome da coluna igual ao nome da cristina
select telefones.numero 'Cristina'
from amigos, telefones
where amigos.id = telefones.id_amigo
and amigos.nome = "Cristina";

-- selecionando uma coluna da tabela

select nome from amigos;

-- obter dados dos clientes ordenados por ordem alfabetica do nome

select * from amigos order by nome asc;
select nome from amigos order by nome asc;



-- Quero todos os numeros que comecem com 5

select * from telefones where numero LIKE '5%';

select * from amigos where nome like 'j%';

-- selecionando dois atributos de uma mesma tabela

select id, nome from amigos;

-- select realiza multiplicaçaõ

select 10 * 5;

-- CRUD
-- Atualizar o nome cristina para Maria
UPDATE amigos set nome = "Maria"
where nome = "Cristina";



