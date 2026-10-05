# Nível Intermediário

Meta: até 10 minutos por problema.

| # | Problema | O que treina | Feito | Tempo |
|---|---|---|---|---|
| i01 | Liste clientes que nunca fizeram um pedido. | `LEFT JOIN ... IS NULL` ou `NOT EXISTS` | [ ] | |
| i02 | Liste produtos que nunca foram vendidos. | anti-join | [ ] | |
| i03 | Encontre o segundo maior salário **sem** usar window functions. | subconsulta | [ ] | |
| i04 | Liste funcionários que ganham mais que a média do próprio departamento. | subconsulta correlacionada ou CTE | [ ] | |
| i05 | Encontre e-mails duplicados na tabela de clientes. | `GROUP BY`, `HAVING COUNT(*) > 1` | [ ] | |
| i06 | Liste cada funcionário com o nome do seu gerente (inclusive quem não tem gerente). | auto-junção, `LEFT JOIN` | [ ] | |
| i07 | Classifique pedidos pagos em faixas: até 500 "baixo", até 3000 "médio", acima "alto". | `CASE WHEN`, CTE | [ ] | |
| i08 | Receita total por categoria de produto, considerando só pedidos pagos. | 3 joins, filtro | [ ] | |
| i09 | Receita mensal de pedidos pagos. | agrupamento por data | [ ] | |
| i10 | Clientes que fizeram mais de um pedido pago. | `HAVING`, `JOIN` | [ ] | |
| i11 | Para cada cliente, a data do primeiro e do último pedido. | `MIN`, `MAX` | [ ] | |
| i12 | Quantos clientes compraram produtos de **todas** as categorias? | divisão relacional | [ ] | |
| i13 | Percentual de pedidos cancelados sobre o total. | `CASE` dentro de `AVG`/`SUM` | [ ] | |
| i14 | Liste funcionários admitidos nos últimos 2 anos de forma relativa à data mais recente da tabela. | subconsulta em data | [ ] | |
| i15 | Produto mais vendido (em quantidade) de cada categoria, sem window functions. | subconsulta/CTE | [ ] | |

## Armadilhas para observar

- i01: `NOT IN` com subconsulta que retorna `NULL` devolve vazio. Compare com `NOT EXISTS`.
- i03: e se houver salários empatados no topo? Defina o que é "segundo maior" antes de escrever.
- i05: repare que 'paula@email.com' aparece duas vezes. Cuidado com `NULL` (que não é duplicado de `NULL`).
- i08: se você filtrar o status no `WHERE` depois de um `LEFT JOIN`, ele vira `INNER JOIN` na prática.
- i13: divisão de inteiros. Faça um cast para decimal.
