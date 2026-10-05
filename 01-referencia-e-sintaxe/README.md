# SQL - Referência e Sintaxe

## 01 - Introdução ao SQL

### Parte 1: Uma Introdução

Imagine que um banco de dados é um grande arquivo digital de uma empresa, cheio de gavetas e pastas organizadas. Cada pasta guarda informações específicas — por exemplo, uma pasta para "Clientes", outra para "Produtos" e outra para "Vendas".

O **SQL** (pronunciado como *"sequel"* ou falando as letras *S-Q-L*, sigla para *Structured Query Language*) é simplesmente a **língua internacional usada para conversar com esse arquivo digital**. 

Para entender de forma intuitiva, pense no SQL como se você estivesse em um restaurante:
* Você senta à mesa e lê o cardápio.
* Em vez de ir até a cozinha, procurar os ingredientes no armário e cozinhar você mesmo, você faz o pedido ao garçom: *"Quero uma massa com molho de tomate e sem cebola"*.
* O garçom leva o pedido até a cozinha, os cozinheiros preparam e trazem o prato pronto para você.

No SQL funciona exatamente assim: você não precisa saber em qual setor do disco rígido o dado está guardado ou como o computador vai procurá-lo linha por linha. Você apenas escreve um comando em texto dizendo **o que você quer** (por exemplo: *"mostre o nome e o e-mail de todos os clientes do estado de SP"*) e o sistema de banco de dados busca e entrega o resultado na sua tela.

### Parte 2: Aprofundando nos Termos Técnicos

Agora que o conceito geral está claro, podemos avançar para a estrutura técnica e os termos que os profissionais de dados e tecnologia usam no dia a dia.

#### 1. O Modelo Relacional e a Estrutura dos Dados
A maioria dos bancos de dados tradicionais utiliza o **modelo relacional**, proposto pelo pesquisador Dr. Edgar F. Codd na IBM na década de 1970. Esse modelo organiza as informações em **tabelas** interconectadas por meio de dados em comum:
* **Tabela (ou Relação)**: É a estrutura bidimensional onde os dados ficam armazenados, composta por linhas e colunas.
* **Linha (Registro ou Tupla)**: Representa uma ocorrência individual e única no banco de dados (ex.: a linha que contém os dados específicos do cliente "João Silva").
* **Coluna (Atributo)**: Guarda um tipo específico de dado compartilhado por todas as linhas (ex.: `nome`, `cidade`, `data_nascimento`).
* **Chave Primária (*Primary Key*)**: É um campo (ou combinação de campos) que identifica cada linha de uma tabela de forma única e exclusiva (como o CPF de um cidadão ou o código numérico de um cliente), impedindo registros duplicados.
* **Chave Estrangeira (*Foreign Key*)**: É uma coluna em uma tabela que aponta para a chave primária de outra tabela. Ela cria o elo entre informações distintas (por exemplo, associando o ID do cliente à tabela de "Pedidos"), garantindo a chamada **integridade referencial**.

#### 2. Linguagem Declarativa (Não-Procedural)
Diferente de linguagens de programação procedurais (como Python, C ou Java), onde você precisa programar a sequência de passos lógicos de *como* processar os dados, o SQL é uma linguagem **declarativa/não-procedural**. Você apenas declara o **resultado desejado** (*o que*).

Quem determina a estratégia de busca no armazenamento físico é um componente interno do banco de dados chamado **Otimizador de Consultas (*Query Optimizer*)**. Ele analisa os índices disponíveis e o tamanho das tabelas para escolher o plano de execução mais rápido.

#### 3. Categorias e Sublinguagens do SQL
Para organizar os diferentes tipos de operações, o SQL é dividido em quatro sublinguagens principais:
* **DQL (*Data Query Language*)**: Focada na consulta e extração de dados. Seu comando principal é o `SELECT`.
* **DML (*Data Manipulation Language*)**: Responsável por manipular os dados armazenados nas tabelas com os comandos `INSERT` (inserir), `UPDATE` (atualizar) e `DELETE` (remover).
* **DDL (*Data Definition Language*)**: Utilizada para definir e alterar a estrutura do banco de dados (criar ou apagar tabelas e índices) com os comandos `CREATE`, `ALTER` e `DROP`.
* **DCL (*Data Control Language*) e Transações**: Controla permissões de acesso dos usuários (`GRANT`, `REVOKE`) e o gerenciamento de transações para manter a consistência dos dados (`COMMIT`, `ROLLBACK`).

#### 4. Anatomia e Ordem Lógica de uma Consulta (`SELECT`)
Quando você escreve uma consulta simples em SQL, a sintaxe básica segue este padrão:

```sql
SELECT nome, cidade
FROM cliente
WHERE estado = 'SP'
ORDER BY nome;
```

Embora a instrução comece com o comando `SELECT`, o banco de dados avalia e processa as cláusulas em uma **ordem lógica interna** diferente para otimizar o resultado:
1. **`FROM`**: Localiza a tabela (ou tabelas) de onde os dados serão extraídos.
2. **`WHERE`**: Filtra as linhas individuais com base nas condições especificadas.
3. **`GROUP BY`**: Agrupa as linhas filtradas (caso haja operações de agregação, como somas ou médias).
4. **`HAVING`**: Aplica filtros sobre os grupos gerados.
5. **`SELECT`**: Seleciona quais colunas ou expressões finais serão exibidas no resultado.
6. **`ORDER BY`**: Ordena as linhas do resultado final.

💡 *Gostaria de ver um exemplo prático criando tabelas com chaves relacionais ou prefere praticar a escrita de comandos de consulta (`SELECT`) com filtros e ordenação?*



