 
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
