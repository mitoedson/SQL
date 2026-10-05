# Exercícios: Fase 7: Window functions e otimização

## Convenção

Um arquivo `.sql` por exercício, numerado: `01_descricao_curta.sql`.
Comece cada arquivo com um comentário contendo o enunciado:

```sql
-- Enunciado: liste os clientes de São Paulo ordenados por nome.
-- Fonte: SQLZoo / dataset X
SELECT nome
FROM clientes
WHERE cidade = 'São Paulo'
ORDER BY nome;
```

## Sugestões de exercícios

- Top N por grupo
- Variação em relação ao período anterior
- Soma acumulada
- Remoção de duplicados com `ROW_NUMBER`
- Comparar o `EXPLAIN` antes e depois de criar um índice

## Progresso

- [ ] Meta de quantidade atingida
