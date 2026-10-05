# SQL Journey

Registro público da minha jornada de aprendizado em SQL, do zero até projetos prontos para o mercado de trabalho.

**Autor:** [Seu Nome](https://github.com/seu-usuario) · [LinkedIn](https://linkedin.com/in/seu-perfil)
**Objetivo:** dominar o essencial do SQL, aplicá-lo em projetos reais e estar preparado para processos seletivos.
**Início:** DD/MM/AAAA
**Banco de dados principal:** PostgreSQL (ajuste conforme o seu)

---

## Projetos em destaque

| Projeto | O que demonstra | Status |
|---|---|---|
| [Análise de Vendas](projetos/01-analise-vendas) | Traduzir perguntas de negócio em consultas | ⬜ A fazer |
| [Modelagem de Banco](projetos/02-modelagem-banco) | Modelar, criar e popular um banco do zero | ⬜ A fazer |
| [Projeto Final](projetos/03-projeto-final) | Modelagem + análise + conclusões de negócio | ⬜ A fazer |

---

## Progresso da jornada

| Fase | Foco | Entregável | Status |
|---|---|---|---|
| [0. Setup](00-setup) | Ambiente e ferramentas | Ambiente documentado | ⬜ |
| [1. Fundamentos](01-fundamentos) | Tabelas, tipos, chaves | Notas + primeiras consultas | ⬜ |
| [2. Consultas essenciais](02-consultas-essenciais) | `SELECT`, filtros, ordenação | 20+ exercícios | ⬜ |
| [3. Agregações](03-agregacoes) | `GROUP BY`, `HAVING` | 15+ exercícios | ⬜ |
| [4. Joins](04-joins) | `INNER`, `LEFT`, nulos, duplicados | 20+ exercícios | ⬜ |
| [5. Lógica e organização](05-logica-e-organizacao) | `CASE`, subconsultas, CTEs | Consultas reescritas com CTEs | ⬜ |
| [6. Modelagem e DML](06-modelagem-e-dml) | Modelar, `INSERT/UPDATE/DELETE` | Projeto 2 | ⬜ |
| [7. Window functions e otimização](07-window-functions-e-otimizacao) | `OVER`, `LAG`, `EXPLAIN` | Problemas avançados | ⬜ |
| [Projetos](projetos) | Consolidação | Projetos 1 e 3 | ⬜ |
| [Entrevistas](entrevistas) | Prática sob pressão de tempo | 42 problemas + simulações | ⬜ |

Troque ⬜ por ✅ conforme concluir cada fase.

---

## Roteiro sugerido (3 a 4 meses)

| Semana | Atividade |
|---|---|
| 1 | Fases 0 e 1 |
| 2 | Fase 2 |
| 3 | Fase 3 |
| 4 a 5 | Fase 4 |
| 6 a 7 | Fase 5 |
| 8 a 9 | Fase 6 + Projeto 2 |
| 10 | Fase 7 |
| 11 a 13 | Projetos 1 e 3 |
| 14 a 16 | Pasta `entrevistas/` em paralelo e simulações |

A pasta `entrevistas/` pode ser iniciada a partir da fase 4, resolvendo apenas os problemas que já cobrem o conteúdo estudado.

---

## Estrutura do repositório

```
sql-journey/
├── README.md
├── 00-setup/
├── 01-fundamentos/
├── 02-consultas-essenciais/
├── 03-agregacoes/
├── 04-joins/
├── 05-logica-e-organizacao/
├── 06-modelagem-e-dml/
├── 07-window-functions-e-otimizacao/
├── projetos/
│   ├── README_TEMPLATE.md
│   ├── 01-analise-vendas/
│   ├── 02-modelagem-banco/
│   └── 03-projeto-final/
├── entrevistas/
│   ├── 00_schema.sql
│   ├── 01-basico.md
│   ├── 02-intermediario.md
│   ├── 03-avancado.md
│   ├── 04-conceituais.md
│   ├── 05-live-coding.md
│   └── solucoes/
└── recursos/
    ├── cheat-sheet.md
    ├── links.md
    └── guia-git.md
```

Cada pasta de fase contém:
- `notas.md`: checklist de tópicos e minhas anotações
- `exercicios/`: arquivos `.sql` numerados
- `erros-comuns.md`: registro dos meus erros e aprendizados

---

## Habilidades que este repositório demonstra

- Consultas com `SELECT`, filtros, ordenação e agregações
- `JOIN`s com tratamento de nulos e duplicados
- `CASE WHEN`, subconsultas e CTEs
- Window functions
- Modelagem relacional e normalização
- DDL e DML com restrições de integridade
- Noções de índices e leitura de plano de execução
- Comunicação de resultados e insights de negócio

---

## Como reproduzir

Cada projeto traz scripts numerados para rodar em ordem:

```
01_schema.sql → 02_dados.sql → 03_consultas.sql
```

---

## Contato

- LinkedIn: [seu-perfil](https://linkedin.com/in/seu-perfil)
- E-mail: seu@email.com
