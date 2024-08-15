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

--Cresente
SELECT produto FROM produtos ORDER BY produto asc;
SELECT nome, email, cidade FROM clientes ORDER BY nome asc;
 
--Decrescente
SELECT produto FROM produtos ORDER BY produto DESC;
SELECT nome, email, cidade FROM clientes ORDER BY nome DESC;
 
--Desta forma a ordem vem por cidade e despois nome.
SELECT nome, email, cidade FROM clientes ORDER BY cidade, nome;
 
-- Para ordemar de forma simultanea usamos a seguinte query
SELECT nome, email, cidade FROM clientes ORDER BY cidade asc, nome asc;
SELECT nome, email, cidade FROM clientes ORDER BY cidade DESC, nome DESC;
SELECT nome, email, cidade FROM clientes ORDER BY cidade DESC, nome asc;
SELECT nome, email, cidade FROM clientes ORDER BY cidade asc, nome DESC;
 
-- Organizar a tabela "produto" do mais caro para o mais barato
SELECT id, produto, preco_unidade FROM produtos ORDER BY preco_unidade DESC,
 
-- encomendas mais recentes
SELECT * FROM encomendas ORDER BY data_hora DESC;
 
--Buscar os 10 primeiros nomes tabela
SELECT id, nome, email FROM clientes LIMIT 10;
 
----Buscar os 10 ultimos nomes tabela
SELECT id, nome, email FROM clientes order by id desc LIMIT 10;
 
-- ele pegara 20 dados a partir do id 6: (offset é apartir do que vc deseja, vai iguinorar do offsert para cima)
SELECT id, nome, email FROM clientes order by id desc LIMIT 20 offset 5;
SELECT id, nome, email FROM clientes LIMIT 20 offset 5;
SELECT id, nome, email FROM clientes LIMIT 10, 3;
 
--Buscando o produto mais barato da loja
SELECT * FROM produtos order by preco_unidade ASC LIMIT 1;
 
--Buscando o produto mais caro da loja
SELECT * FROM produtos order by preco_unidade DESC LIMIT 1;

-- 3 produtos mais caros
SELECT * FROM produtos order by preco_unidade DESC LIMIT 0,3;

-- DISTINCT = removewr valores duplicados
SELECT DISTINCT cidade from clientes;

-- Ordenar de forma alfabetica
SELECT DISTINCT cidade from clientes order by cidade;
-- IMPORTANTE: si alguma coluna estiver com valores nulos (null), 

-- Buscar apenas dos clientes que moram na cidade de LISBOA.
SELECT * from clientes where cidade = "lesboa";
SELECT * from clientes where sexo = "f";
--Homens que moram em coimbra
SELECT * from clientes where cidade = "coimbra" and sexo = "m";
--operadores logicos usando os diferentes(<>)
select * from clientes where sexo <> "f";
--produtos cuja o preço é superior A 1
SELECT * FROM produtos where preco_unidade > 1;
--buscando um intervalo de informacões
SELECT * from produtos where preco_unidade >=1 and preco_unidade <= 2;
-- neste caso só funciona com numeros e não com caracteres
--OR
SELECT nome, email from clientes where cidade = "paris" OR sexo = "m"
--NOT
SELECT nome from clientes where NOT sexo = "m";
--BETWEEN
SELECT * FROM produtos where preco_unidade BETWEEN 1 and 2;

--buscar as encomendas na ultima 24h do dia 08/03/2030.
SELECT * FROM encomendas where data_hora  BETWEEN '2030/03/08 00:00:00' and '2030/03/08 23:59:59';

--IN = Devolva todos os registros que estejam compreendidos dentro de uma coleçao de valores
SELECT nome, cidade from clientes where cidade IN("lisboa", "viseu");

--selecionando dados os caracteres específicos %

SELECT nome from clientes where nome LIKE "Daniel%";
--neste caso os caracteres que estiver entre a % será buscado na query
SELECT nome from clientes where nome LIKE "%Daniel%";

--neste caso será buscado o que estiverm depois da %
SELECT nome, email from clientes where email LIKE "%gmail.com";
--neste caso será feito uma busca dentro do campo onde o caracter começar com A e termina com S
SELECT nome from clientes where nome LIKE "A%S";
-- Neste caso será buscado o que estiver antes da % a o "_" será mostrado o caractere que representa o espaço (um caracter)
SELECT nome from clientes where nome LIKE "Francisco_%";
-- neste caso o "_" está buscando caracteres não especificados, poré o terceiro caracter deverá ser a letra "a"
SELECT nome from clientes where nome LIKE "__%";


-- -------------------------------- 15/08
-- Buscar as primeiras 5 encomendas, juntando duas tabelas: encomendas e clientes.
SELECT clientes.nome, encomendas * FROM clientes, encomendas WHERE clientes.id = encomendas.id_clientes LIMIT 5;
 
-- Mesma query com ALIAS
SELECT c.nome, e. * FROM clientes c, ecomendas e WHERE c.id = e.id_cliente LIMIT 5;
 
-- Concatenação entre as colunas CONCAT
SELECT CONCAT('O meu nome é ', nome, 'e meu email é: ', email) frase FROM clientes LIMIT 10;
 

 
--CRUD
-- Atualiza o nome Cristina para Maria (não deleta e sim substitui)
UPDATE amigos set nome = "Maria" where nome = "Cristina"; --para essa opção funcionar tem que desabilitar a segurança
UPDATE amigos set nome = "Maria" where id = "5";



