# Exercícios: Fase 6: Modelagem e manipulação de dados

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

- Modelar um domínio simples no papel antes de escrever SQL
- Criar as tabelas com todas as restrições
- Tentar violar as restrições de propósito e ler o erro
- Fazer `UPDATE` e `DELETE` dentro de uma transação e dar `ROLLBACK`
- Criar uma view para uma consulta que você usa muito

## Progresso

- [ ] Meta de quantidade atingida
