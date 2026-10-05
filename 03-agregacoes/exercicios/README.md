# Exercícios: Fase 3: Agregações

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

- Contar registros por categoria
- Média, soma, mínimo e máximo por grupo
- Filtrar grupos com `HAVING`
- Agrupar por mais de uma coluna
- Agrupar por mês/ano a partir de datas

## Progresso

- [ ] Meta de quantidade atingida
