# Cheat Sheet de SQL

## Ordem de escrita

```sql
SELECT   colunas
FROM     tabela
JOIN     outra ON condicao
WHERE    filtro_de_linhas
GROUP BY colunas
HAVING   filtro_de_grupos
ORDER BY colunas
LIMIT    n;
```

## Ordem lógica de execução

`FROM` → `JOIN` → `WHERE` → `GROUP BY` → `HAVING` → `SELECT` → `DISTINCT` → `ORDER BY` → `LIMIT`

Por isso um alias do `SELECT` não pode ser usado no `WHERE`.

## Joins

| Tipo | Retorna |
|---|---|
| `INNER JOIN` | só linhas com correspondência nos dois lados |
| `LEFT JOIN` | todas da esquerda + correspondentes da direita (nulos quando não há) |
| `RIGHT JOIN` | o inverso do `LEFT` |
| `FULL JOIN` | todas de ambos os lados |

Anti-join: `LEFT JOIN ... WHERE direita.id IS NULL`

## Agregações

```sql
COUNT(*)              -- conta linhas
COUNT(coluna)         -- ignora NULL
COUNT(DISTINCT col)   -- valores únicos
SUM(), AVG(), MIN(), MAX()
```

## NULL

```sql
coluna IS NULL
coluna IS NOT NULL
COALESCE(coluna, 0)
NULLIF(a, b)
-- NULL = NULL é desconhecido, nunca verdadeiro
```

## CASE WHEN

```sql
CASE
  WHEN valor < 100 THEN 'baixo'
  WHEN valor < 1000 THEN 'médio'
  ELSE 'alto'
END AS faixa
```

## CTE

```sql
WITH vendas_mes AS (
  SELECT ...
)
SELECT * FROM vendas_mes;
```

## Window functions

```sql
ROW_NUMBER() OVER (PARTITION BY dep ORDER BY salario DESC)
RANK()       OVER (...)
DENSE_RANK() OVER (...)
LAG(valor)   OVER (ORDER BY mes)
SUM(valor)   OVER (ORDER BY mes)               -- acumulado
AVG(valor)   OVER (ORDER BY mes ROWS BETWEEN 2 PRECEDING AND CURRENT ROW)
```

## DDL e DML

```sql
CREATE TABLE t (id INT PRIMARY KEY, nome TEXT NOT NULL);
ALTER TABLE t ADD COLUMN idade INT;
INSERT INTO t (id, nome) VALUES (1, 'Ana');
UPDATE t SET nome = 'Bia' WHERE id = 1;   -- sempre com WHERE!
DELETE FROM t WHERE id = 1;               -- sempre com WHERE!
```

## Transação

```sql
BEGIN;
UPDATE ...;
-- conferiu? COMMIT; errou? ROLLBACK;
COMMIT;
```

## Diferenças entre bancos (conferir na documentação)

| Tarefa | PostgreSQL | SQLite |
|---|---|---|
| Truncar data para mês | `DATE_TRUNC('month', d)` | `strftime('%Y-%m', d)` |
| Concatenar | `a \|\| b` | `a \|\| b` |
| Limitar | `LIMIT n` | `LIMIT n` |
