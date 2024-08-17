 
/*(INNER) Join == Registros de retorno que têm valores correspondentes em ambas as tabelas
 
LEFT JOIN == Retorna todos os registros da tabela da esquerda  e os registros combinados da tabela da direita
 
RIGHT JOIN == Retorna todos os registros da tabela da direita, e os registros
combinados da tabela da esquerda
 
FULL JOIN Devolve todos os registros quando há uma correspondência
na tabela da esquerda ou da direita
 
mostrar a tabela de conjuntos do joins
https://alyssontmv.wordpress.com/2014/09/30/representando-sql-joins-graficamente-exemplo-usado-em-aula/

== Relações==
encomendas x clientes
encomendas x colaboradores
encomendas_produtos x encomendas x produtos
*/

-- queremos dados sobre as encomendas de um cliente cujo o id = 20

select c. *, e.*
from clientes c
LEFT JOIN encomendas e 
on c.id = e.id_cliente
where c.id = 20;

--20 primeiros clientes que fizeram emcomendas na loja

select e.id, e.data_hora, c.nome, c.email
from encomendas e
LEFT JOIN clientes c 
on e.id_cliente = c.id
LIMIT 20;

-- detalhes da encomenda 3

--quando foi efetuado a compra

--que produtos coram comprados  e as quantidades

select
e.id
e.data_hora,
p.produto,
ep.quantidade
from encomendas_produtos ep LEFT JOIN
encomendas e
on e.id = ep.id_encomenda
LEFT JOIN produtos p
on p.id = ep.id_produto
where e.id = 3

select
e.id
e.data_hora,
p.produto,
ep.quantidade,
CONCAT(round(p.preco_unidade * ep.quantidade,2), 'R$') AS total
from encomendas_produtos ep LEFT JOIN
encomendas e
on e.id = ep.id_encomenda
LEFT JOIN produtos p
on p.id = ep.id_produto
where e.id = 3

--CONCAT == concatenação
--round  == vai arrendodar os valores para duas casas decimais.

/*
Outras formas de agregação
 
 
MIN - Permite ver o valor mínimo em um conjunto de resultado
MAX - Permite ver o valor máximo em um conjunto de resultado
 
*/
 
-- Quero saber qual é o primeiro cliente de Lisboa na tabela cliente.
select id, nome from clientes where cidade = "Lisboa" LIMIT 1;
Select MIN(id), nome from clientes where cidade = "Lisboa";
select MAX(id), nome from clientes where email like "%@gmail.com";

/*
AVG - Permite calcular a média de um conjunto de resultados NUMÉRICOS
SUM - Permite ver o somatório (calculo total) de um conjuto de resultados.
*/

-- média de preço dos produtpos
Select AVG(preco_unidade) preco_medio from produto;
Select round(AVG(preco_unidade),2) preco_medio from produto;

select SUM(preco_unidade) total_preco from produtos;




select
e.id,            --Atributo da tabela encomenda
e.data_hora,     --Atributo da tabela encomenda
p.produto,       --Atributo da tabela produto
p.preco_unidade, --Atributo da tabela produto
ep.quantidade
from encomendas_produtos ep
LEFT JOIN encomendas e 
on ep.id_encomenda = e.id
LEFT JOIN produtos p
on ep.id_produto = p.id
where e.id = 50;


select
e.id,           
e.data_hora,    
p.produto,      
p.preco_unidade, 
ep.quantidade,
SUM(round(p.preco_unidade * ep.quantidade,2)) as total
from encomendas_produtos ep
LEFT JOIN encomendas e 
on ep.id_encomenda = e.id
LEFT JOIN produtos p
on ep.id_produto = p.id
where e.id = 50;


--subuqery
select id_encomenda, id_cliente, SUM(total) total
from
(
    select
    ep.id_encomenda,
    e.id_cliente,
    ep.quantidade,
    p.produto,
    CAST(ep.quantidade *p. preco_unidade As decimal(10,2)) As total 
    from encomendas_produtos ep
    LEFT join produtos p on ep.id_produto = p.id
    LEFT join encomendas e on ep.id_encomenda = e.id
    where e.id = 50
)a
Group by id_encomenda


