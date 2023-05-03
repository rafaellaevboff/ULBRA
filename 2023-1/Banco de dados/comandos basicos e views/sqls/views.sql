Lista de orçamentos por produto:
CREATE VIEW orcamentos_por_produto AS
SELECT p.nome AS produto_nome, COUNT(o.id)
FROM produtos p
INNER JOIN orcamento_itens oi ON oi.id_prod = p.id
INNER JOIN orcamentos o ON o.id = oi.id_orc;
GROUP BY p.nome

Valor total de produtos orçados por período:
CREATE VIEW valor_total_produtos_orcados AS
SELECT o.data_orcamento AS periodo,
  SUM(oi.valor_total_item) AS valor_total
FROM orcamentos o
  JOIN orcamento_itens oi ON oi.id_orc = o.id
  JOIN produtos p ON p.id = oi.id_prod
WHERE o.data_orcamento BETWEEN '2022-01-01' AND '2022-03-31'
GROUP BY o.data_orcamento;

Produtos que tem “Computador” no nome e que tem quantidade em estoque:
CREATE VIEW produtos_computador_com_estoque AS
SELECT nome, saldo AS estoque
FROM produtos
WHERE 
  nome LIKE '%Computador%'
  AND saldo > 0;

Os 10 produtos mais orçados no mês de setembro de 2014 e que ainda tem saldo em estoque. Somente os produtos com o valor acima de R$ 500.00:
CREATE VIEW produtos_mais_orcados AS
SELECT p.nome, COUNT(*) AS num_orcamentos
FROM produtos p
  JOIN orcamento_itens oi ON oi.id_prod = p.id
  JOIN orcamentos o ON o.id = oi.id_orc
WHERE 
  oi.valor_unit > 500.00
  AND oi.quantidade < p.saldo
  AND MONTH(o.data_orcamento) = 9 AND YEAR(o.data_orcamento) = 2014
GROUP BY p.id
ORDER BY num_orcamentos DESC
LIMIT 10


-- Faça uma consulta utilizando a view para acrescentar 20% nos produtos que o saldo em estoque é menor ou igual a 5.
UPDATE produtos p
SET preco = preco * 1.2
WHERE p.saldo_estoque <= 5 AND p.nome IN (
  SELECT produto_nome
  FROM orcamentos_por_produto
);

-- Delete todos os produtos que não foram orçados.
DELETE FROM produtos
WHERE id NOT IN (SELECT DISTINCT id_prod FROM orcamentos_itens)
o select distinct garante que não terá valor igual, faz com que seja selecionado somente valores diferentes
