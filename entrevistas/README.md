# Preparação para Entrevistas de SQL

Banco de problemas típicos de processos seletivos, organizados por nível. Todos usam o mesmo esquema (`00_schema.sql`), então você monta o banco uma vez e resolve tudo.

## Estrutura

```
entrevistas/
├── README.md
├── 00_schema.sql          # tabelas e dados de exemplo
├── 01-basico.md           # filtros, joins simples, agregações
├── 02-intermediario.md    # joins com nulos, subconsultas, CTEs, CASE
├── 03-avancado.md         # window functions e padrões clássicos
├── 04-conceituais.md      # perguntas teóricas de entrevista
├── 05-live-coding.md      # como se comportar em entrevista ao vivo
└── solucoes/              # SUAS soluções, um arquivo por problema
```

## Como usar

1. Rode `00_schema.sql` no seu banco (PostgreSQL ou SQLite).
2. Resolva cada problema **sem olhar nada**, com cronômetro.
3. Salve em `solucoes/` com o nome `b01.sql`, `i03.sql`, `a05.sql` etc. (b = básico, i = intermediário, a = avançado).
4. Marque o checkbox e anote o tempo.
5. Depois de resolver, escreva um comentário no topo do arquivo: qual foi a ideia e o que quase te derrubou.

## Metas de tempo

| Nível | Tempo por problema |
|---|---|
| Básico | até 5 min |
| Intermediário | até 10 min |
| Avançado | até 15 min |

## Progresso

- [ ] Básico (15 problemas)
- [ ] Intermediário (15 problemas)
- [ ] Avançado (12 problemas)
- [ ] Conceituais respondidas com minhas palavras
- [ ] Pelo menos 2 simulações de live coding feitas com outra pessoa

## Registro de erros

Mantenha um `erros-comuns.md` na raiz desta pasta. Entrevistadores valorizam quem sabe onde costuma errar (ex.: esquecer que `COUNT(coluna)` ignora nulos).
