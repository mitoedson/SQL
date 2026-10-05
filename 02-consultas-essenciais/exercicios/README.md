# Exercícios: Fase 2: Consultas essenciais

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

- Filtros combinados com `AND` e `OR` (atenção aos parênteses)
- Busca por padrão com `LIKE`
- Tratar valores nulos
- Ordenar por múltiplas colunas
- Listar valores distintos

## Progresso

- [ ] Meta de quantidade atingida
