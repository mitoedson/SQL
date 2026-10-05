# Perguntas Conceituais

Responda cada uma com suas palavras, em 2 a 4 linhas, **sem consultar**. Depois confira e ajuste. Escreva as respostas no arquivo `respostas-conceituais.md`.

## Fundamentos
- [ ] Qual a diferença entre chave primária e chave estrangeira?
- [ ] O que é normalização? Cite a 1ª, 2ª e 3ª formas normais em linguagem simples.
- [ ] Quando faz sentido desnormalizar?
- [ ] Qual a diferença entre `DELETE`, `TRUNCATE` e `DROP`?
- [ ] O que é `NULL` e como ele se comporta em comparações?

## Consultas
- [ ] Qual a diferença entre `WHERE` e `HAVING`?
- [ ] Qual a ordem lógica de execução de uma consulta (`FROM`, `WHERE`, `GROUP BY`, `HAVING`, `SELECT`, `ORDER BY`)? Por que um alias do `SELECT` não funciona no `WHERE`?
- [ ] Diferença entre `INNER JOIN`, `LEFT JOIN`, `RIGHT JOIN` e `FULL JOIN`.
- [ ] Diferença entre `UNION` e `UNION ALL`. Qual é mais rápido e por quê?
- [ ] `COUNT(*)`, `COUNT(coluna)` e `COUNT(DISTINCT coluna)`: o que cada um conta?
- [ ] Qual a diferença entre subconsulta e CTE? Quando usar cada uma?
- [ ] O que acontece com um `JOIN` quando há chaves duplicadas dos dois lados?
- [ ] Diferença entre `RANK`, `DENSE_RANK` e `ROW_NUMBER`.

## Desempenho e integridade
- [ ] O que é um índice e qual o custo de criá-lo?
- [ ] Para que serve o `EXPLAIN`?
- [ ] O que é uma transação? O que significa ACID?
- [ ] O que é uma view? Qual a diferença para uma tabela?
- [ ] O que é um *deadlock*?

## Dica de resposta

Estrutura que funciona: **definição curta, exemplo concreto, quando usar ou cuidado**.

Exemplo para `WHERE` vs `HAVING`: "`WHERE` filtra linhas antes do agrupamento; `HAVING` filtra grupos depois da agregação. Por isso, para filtrar por `SUM(valor) > 1000`, uso `HAVING`."
