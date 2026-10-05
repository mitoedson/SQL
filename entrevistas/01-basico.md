# Nível Básico

Meta: até 5 minutos por problema. Esquema em `00_schema.sql`.

| # | Problema | O que treina | Feito | Tempo |
|---|---|---|---|---|
| b01 | Liste todos os funcionários com salário acima de 8000, do maior para o menor. | `WHERE`, `ORDER BY` | [ ] | |
| b02 | Liste os 3 produtos mais caros. | `ORDER BY`, `LIMIT` | [ ] | |
| b03 | Liste as cidades distintas dos clientes. | `DISTINCT` | [ ] | |
| b04 | Liste clientes cujo nome começa com "M" ou "P". | `LIKE`, `OR` | [ ] | |
| b05 | Liste clientes sem e-mail cadastrado. | `IS NULL` | [ ] | |
| b06 | Quantos pedidos existem com status 'pago'? | `COUNT`, `WHERE` | [ ] | |
| b07 | Qual o salário médio por departamento? | `GROUP BY`, `AVG` | [ ] | |
| b08 | Liste departamentos com mais de 2 funcionários. | `GROUP BY`, `HAVING` | [ ] | |
| b09 | Liste o nome de cada funcionário com o nome do seu departamento. | `INNER JOIN` | [ ] | |
| b10 | Liste todos os departamentos e a quantidade de funcionários de cada um, incluindo os que têm zero. | `LEFT JOIN`, `COUNT` | [ ] | |
| b11 | Qual o valor total (quantidade x preço) de cada pedido? | `JOIN`, `SUM` | [ ] | |
| b12 | Liste produtos com preço entre 100 e 1000. | `BETWEEN` | [ ] | |
| b13 | Quantos clientes existem por cidade, ordenado do maior para o menor? | `GROUP BY`, `ORDER BY` | [ ] | |
| b14 | Liste pedidos feitos em março de 2024. | filtro de datas | [ ] | |
| b15 | Qual a quantidade total vendida de cada produto? | `JOIN`, `SUM`, `GROUP BY` | [ ] | |

## Armadilhas para observar

- b05: `= NULL` nunca funciona; use `IS NULL`.
- b08: filtro sobre agregação é `HAVING`, não `WHERE`.
- b10: se você usar `INNER JOIN`, o departamento vazio some. Perceba por quê.
- b11: o total de um pedido vem dos itens, não da tabela `pedidos`.
