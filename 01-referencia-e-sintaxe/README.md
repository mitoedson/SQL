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

## 02 - Sintaxe
A sintaxe do **SQL** (Linguagem de Consulta Estruturada) define o conjunto de regras, palavras-chave e estruturas necessárias para construir comandos declarativos direcionados a um sistema gerenciador de banco de dados relacional. Por ser uma linguagem não-procedural, a sua sintaxe especifica **quais** dados ou modificações são desejados, deixando para o otimizador do banco a tarefa de determinar a melhor estratégia física de execução.

---

### 1. Organização Sintática por Sublinguagens

Na teoria e prática dos bancos de dados, os comandos SQL dividem-se em sublinguagens especializadas:

* **DDL (*Data Definition Language*)**: Define, altera e remove objetos e esquemas do banco.
  * **Sintaxe básica**:
    ```sql
    CREATE TABLE cliente (
        cliente_id INT PRIMARY KEY,
        nome VARCHAR(50) NOT NULL,
        email VARCHAR(100)
    );
    ALTER TABLE cliente ADD COLUMN telefone VARCHAR(20);
    DROP TABLE cliente;
    ```
  * **Comandos chave**: `CREATE`, `ALTER`, `DROP`. Os metadados gerados por essa sintaxe ficam armazenados no dicionário de dados.

* **DML (*Data Manipulation Language*)**: Manipula os registros armazenados nas tabelas.
  * **Sintaxe básica**:
    ```sql
    INSERT INTO cliente (cliente_id, nome, email) VALUES (1, 'Ana Silva', 'ana@email.com');
    UPDATE cliente SET email = 'ana.silva@email.com' WHERE cliente_id = 1;
    DELETE FROM cliente WHERE cliente_id = 1;
    ```
  * **Comandos chave**: `INSERT`, `UPDATE`, `DELETE`.

* **DQL (*Data Query Language*)**: Responsável pela extração e filtragem dos dados.
  * **Comando central**: `SELECT`.

* **DCL (*Data Control Language*) e Transações**: Gerencia segurança, permissões e atomicidade transacional.
  * **Comandos chave**: `GRANT`, `REVOKE`, `COMMIT`, `ROLLBACK`.

---

### 2. Anatomia e Cláusulas da Consulta (`SELECT`)

Uma instrução de consulta em SQL é formada por cláusulas sintáticas padronizadas:

```sql
SELECT DISTINCT c.nome, COUNT(p.pedido_id) AS total_pedidos
FROM cliente c
INNER JOIN pedido p ON c.cliente_id = p.cliente_id
WHERE p.data_pedido >= '2023-01-01'
GROUP BY c.nome
HAVING COUNT(p.pedido_id) > 5
ORDER BY total_pedidos DESC
LIMIT 10;
```

* **`SELECT`**: Determina as colunas, expressões, literais ou funções agregadas a serem projetadas no conjunto de resultados. Pode usar o modificador `DISTINCT` para eliminar duplicatas.
* **`FROM`**: Especifica a tabela de origem e as regras de associação/junção (`JOIN`, `INNER JOIN`, `LEFT JOIN`) entre tabelas.
* **`WHERE`**: Aplica predicados e filtros condicionais linha a linha.
* **`GROUP BY`**: Agrupa registros com valores idênticos nas colunas especificadas para realizar cálculos de agregação (como `COUNT`, `SUM`, `AVG`, `MIN`, `MAX`).
* **`HAVING`**: Aplica condições de filtro sobre os grupos gerados pelas agregações.
* **`ORDER BY`**: Define a ordenação do resultado final (crescente com `ASC` ou decrescente com `DESC`).
* **`LIMIT` / `OFFSET` / `TOP`**: Restringe o número de registros retornados na consulta.

---

### 3. Ordem Lógica de Avaliação Sintática

Embora a consulta seja escrita iniciando pela palavra-chave `SELECT`, o motor do banco de dados avalia e executa a sintaxe em uma **ordem lógica interna** específica:

1. **`FROM` e `JOIN`**: Carrega e junta as tabelas de origem.
2. **`WHERE`**: Filtra as linhas individuais brutas antes de qualquer agrupamento.
3. **`GROUP BY`**: Agrupa os registros restantes e calcula as agregações.
4. **`HAVING`**: Filtra os grupos consolidados com base no resultado das agregações.
5. **Funções de Janela (*Window Functions*)**: Calcula funções analíticas (como `OVER`, `RANK`, `ROW_NUMBER`).
6. **`SELECT`**: Executa a projeção final das colunas e expressões declaradas.
7. **`DISTINCT`**: Remove linhas duplicadas do resultado projetado.
8. **Operadores de Conjunto (`UNION`, `EXCEPT`, `INTERSECT`)**: Combina múltiplos conjuntos de dados.
9. **`ORDER BY`**: Aplica a ordenação final de exibição.
10. **`LIMIT` / `OFFSET`**: Trunca a quantidade de linhas exibidas na saída.

*Essa ordem explica, por exemplo, por que funções de agregação como `SUM()` não podem ser usadas na cláusula `WHERE`, devendo ser colocadas no `HAVING`*.

---

### 4. Elementos Sintáticos: Tipos, Operadores e Expressões

#### Tipos de Dados Suportados
A sintaxe exige que cada coluna seja declarada com um tipo de dado específico:
* **Numéricos**: `INTEGER`, `SMALLINT`, `BIGINT`, `DECIMAL`, `NUMERIC`, `FLOAT`, `REAL`.
* **Texto/Caractere**: `CHAR(n)`, `VARCHAR(n)`, `CLOB`.
* **Temporais**: `DATE`, `TIME`, `TIMESTAMP` / `DATETIME`.
* **Lógicos**: `BOOLEAN` (`TRUE` ou `FALSE`).

#### Operadores de Comparação e Lógicos
* **Comparação**: `=`, `!=` ou `<>`, `<`, `>`, `<=`, `>=`, `BETWEEN ... AND ...`, `IN (...)`, `LIKE` (com os caracteres curinga `%` para múltiplos caracteres e `_` para um caractere individual), `IS NULL` / `IS NOT NULL`.
* **Lógicos**: `AND`, `OR` e `NOT`. O uso de **parênteses** é fundamental para garantir a precedência correta em condições complexas.

#### Lógica Condicional (`CASE`)
A sintaxe do `CASE` permite avaliar condições lógicas diretamente dentro de instruções SQL:
```sql
SELECT nome,
       CASE 
           WHEN salario >= 10000 THEN 'Sênior'
           WHEN salario >= 5000 THEN 'Pleno'
           ELSE 'Júnior'
       END AS nivel_cargo
FROM funcionario;
```

---

### 5. Convenções e Estilo de Código

* **Comentários**:
  * Comentário em linha única: `-- texto do comentário`.
  * Comentário em bloco de múltiplas linhas: `/* texto do bloco */`.
* **Sensibilidade de Caixa (Case Sensitivity)**: A linguagem ignora maiúsculas e minúsculas para palavras-chave e nomes de colunas na maioria dos sistemas, mas por convenção de boa prática, as palavras-chave reservadas (`SELECT`, `FROM`, `WHERE`) são escritas em **MAIÚSCULAS** para legibilidade.


