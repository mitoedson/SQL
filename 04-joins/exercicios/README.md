# Exercícios: Fase 4: Joins

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

- Juntar 3 ou mais tabelas
- Encontrar registros sem correspondência (`LEFT JOIN ... IS NULL`)
- Provocar de propósito uma multiplicação de linhas e explicar por quê
- Comparar `INNER` e `LEFT` sobre o mesmo par de tabelas
- Hierarquia funcionário-gerente com auto-junção

## Progresso

- [ ] Meta de quantidade atingida
