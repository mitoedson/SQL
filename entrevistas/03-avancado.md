# Nível Avançado

Meta: até 15 minutos por problema. Maioria usa window functions.

Antes de começar, estude: `OVER`, `PARTITION BY`, `ORDER BY` dentro do `OVER`, `ROW_NUMBER`, `RANK`, `DENSE_RANK`, `LAG`, `LEAD`, `SUM() OVER`, e a cláusula de frame (`ROWS BETWEEN`).

| # | Problema | O que treina | Feito | Tempo |
|---|---|---|---|---|
| a01 | Os 2 funcionários mais bem pagos de cada departamento. | `DENSE_RANK` + filtro em CTE | [ ] | |
| a02 | Segundo maior salário, tratando empates corretamente. | `DENSE_RANK` | [ ] | |
| a03 | Receita mensal e a variação percentual em relação ao mês anterior. | `LAG` | [ ] | |
| a04 | Receita acumulada (running total) por mês. | `SUM() OVER (ORDER BY ...)` | [ ] | |
| a05 | Para cada cliente, numere seus pedidos em ordem cronológica. | `ROW_NUMBER` | [ ] | |
| a06 | Dias entre pedidos consecutivos de cada cliente. | `LAG` + diferença de datas | [ ] | |
| a07 | Remova duplicados de clientes por e-mail, mantendo o mais antigo. | `ROW_NUMBER` para deduplicar | [ ] | |
| a08 | Média móvel de 3 meses da receita. | frame `ROWS BETWEEN 2 PRECEDING AND CURRENT ROW` | [ ] | |
| a09 | Participação de cada categoria no total da receita (%). | `SUM() OVER ()` | [ ] | |
| a10 | Clientes que compraram em meses consecutivos. | CTE + `LAG`/`LEAD` | [ ] | |
| a11 | Ranking de clientes por valor gasto, com posição e percentual do total. | `RANK` + `SUM() OVER` | [ ] | |
| a12 | Hierarquia: liste todos os subordinados (diretos e indiretos) de Ana Souza. | CTE recursiva | [ ] | |

## Diferença que sempre cai

Dado o conjunto de salários 15000, 11000, 9000, 9000, 8000:

| salário | ROW_NUMBER | RANK | DENSE_RANK |
|---|---|---|---|
| 15000 | 1 | 1 | 1 |
| 11000 | 2 | 2 | 2 |
| 9000 | 3 | 3 | 3 |
| 9000 | 4 | 3 | 3 |
| 8000 | 5 | 5 | 4 |

Saiba explicar isso com suas palavras.

## Observação

Funções de data variam entre bancos (`DATE_TRUNC` no PostgreSQL, `strftime` no SQLite). Anote qual você usou.
