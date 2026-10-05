# Exercícios: Fase 1: Fundamentos

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

- Explorar o banco de exemplo e descrever cada tabela
- Desenhar à mão as relações entre as tabelas
- Identificar chaves primárias e estrangeiras de 3 tabelas
- Rodar `SELECT * FROM tabela LIMIT 10;` em todas as tabelas

## Progresso

- [ ] Meta de quantidade atingida
