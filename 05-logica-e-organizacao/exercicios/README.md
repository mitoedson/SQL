# Exercícios: Fase 5: Lógica e organização

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

- Criar faixas e categorias com `CASE WHEN`
- Calcular percentuais com `CASE` dentro de agregações
- Reescrever uma subconsulta aninhada como CTE
- Encadear 2 ou 3 CTEs
- Limpar dados sujos com funções de texto e `COALESCE`

## Progresso

- [ ] Meta de quantidade atingida
