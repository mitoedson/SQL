<h2>Comandos do SQL</h2>

Utilizamos os comandos para interagir com o banco de dados. Podemos classificar os comandos por meio das sintaxes:

<h3>DDL: Data Definition Language</h3>
Comandos responsáveis por definir e modificar a estrutura de um banco de dados. Podemos alterar, apagar e modificar objetos de um banco de dados, como tabelas, índices e esquemas.
<p>
<ul><li>CREATE</li>
Criação de um novo objeto em um banco de dados. Os objetos podem ser tabelas (TABLE)
<p><br>
Sintaxe:<br>
<pre>CREATE objeto nome_do_objeto (tipo_de_dados_coluna1, tipo_de_dados_coluna2, ...)</pre>
</p>
<p><br>
<ul><li>ALTER</li>
Utilizado para modificar um objeto de banco de dados existente, como adicionar, excluir ou modificar colunas em uma tabela existente.
<p><br>
Sintaxe para adicionar uma coluna em uma tabela:<br>
<pre>ALTER TABLE nome_da_tabela ADD nome_da_coluna tipo_de_dados</pre>
</p>
<p>Sintaxe para modificar uma coluna em uma tabela:<br>
<pre>ALTER TABLE nome_da_tabela MODIFY COLUMN nome_da_coluna tipo_de_dados</pre>
</p>

<p><br>
<ul><li>DROP</li>
Utilizado para excluir um objeto de banco de dados existente, como uma tabela, uma exibição ou outros objetos.
<p><br>
Sintaxe:<br>
<pre>DROP TABLE nome_da_tabela</pre>
</p>
  
<p><br>
<ul><li>TRUNCATE</li>
Utilizado para excluir todos os dados de uma tabela, mas a estrutura da tabela permanece. É uma maneira rápida de limpar dados grandes de uma tabela.
<p><br>
Sintaxe:<br>
<pre>TRUNCATE TABLE nome_da_tabela;</pre>
</p>
  
<p><br>
<ul><li>COMMENT</li>
Usado para adicionar comentários ao dicionário de dados.
<p><br>
Sintaxe:<br>
<pre>COMMENT ON TABLE nome_da_tabela IS 'Este é um comentário.';</pre>
</p>
<p><br>
<ul><li>RENAME</li>
Usado para renomear um objeto de banco de dados existente.
<p><br>
Sintaxe:<br>
<pre>RENAME TABLE nome_da_tabela_antigo TO nome_da_tabela_novo;
</pre>
</p>
</ul>

<p><br></p>
<h3>DML: Data Manipulation Language</h3>
Comandos responsáveis pela adição, alteração e exclusão de dados em um banco de dados.
<p>
<ul><li>INSERT</li>
Insere novas linhas (registros) em um banco de dados.
<p><br>
Sintaxe:<br>
<pre>INSERT INTO nome_da_tabela (coluna_1, coluna_2,..., coluna_n) VALUES (valor_1, valor_2,...,valor_n, ...)</pre>
</p>
<p><br>
<li>UPDATE</li>
Comando realiza modificações nos registros de um banco de dados, de acordo com as condições especificadas.
<p><br>
Sintaxe:<br>
<pre>UPDATE nome_da_tabela SET coluna_1 = valor_1, coluna_2 = valor_2, ..., coluna_n = valor_n WHERE condição</pre>
<p>
Note que sem declarar WHERE, todos os registros serão atualizados.
</p></p>
<p><br>
<li>DELETE</li>
Comando apaga linhas de um banco de dados, especificando quais deverão ser deletadas.
<p><br>
Sintaxe:<br>
<pre>DELETE FROM nome_da_tabela WHERE condição</pre>
</p>
<p><br>
<li>SELECT</li>
Comando comumente categorizado em outras sintaxes, o comando SELECT consulta e seleciona os dados de acordo com as condições solicitadas. 
<p><br>
Sintaxe:<br>
<pre>SELECT coluna_1, coluna_2, ..., coluna_n FROM nome_da_tabela WHERE condição;</pre>
</p>
</ul>

<p><br></p>
<h3>DCL: Data Control Language</h3>
Comandos que, em um ambiente multiusuários, concede ou revoga direitos de acesso de dados, garantindo segurança e controle em um banco de dados.
<p>
<ul><li>GRANT</li>
Concede aos usuários privilégios de acesso ao banco de dados, como selecionar, inserir, atualizar, excluir etc. 
<p><br>
Sintaxe:<br>
<pre>GRANT privilégio ON nome_do_objeto TO nome_do_usuário</pre>
</p>
<p><br>
<li>REVOKE</li>
Restringe aos usuários privilégios de acesso ao banco de dados, como selecionar, inserir, atualizar, excluir etc. 
<p><br>
Sintaxe:<br>
<pre>GRANT privilégio ON nome_do_objeto TO nome_do_usuário</pre>
</p>
</ul>


<p><br>
<h3>TCL: Transaction Control Language</h3>
São comandos que gerenciam as transações que ocorrem no banco de dados. 
<p>
<ul><li>BEGIN TRANSACTION (ou apenas BEGIN)</li>
Comando que inicia uma nova transação em um banco de dados. Nem sempre ele é utilizada pois seu uso fica implícito. 
<p><br>
Sintaxe:<br>
<pre>BEGIN TRANSACTION</pre>
</p>
<p><br>
<li>COMMIT</li>
Salva as transações permanentemente no banco de dados. Ela é sempre posicionada após a realização de alterações.
<p><br>
Sintaxe:<br>
<pre>COMMIT</pre>
</p>
<p><br>
<li>ROLLBACK</li>
Reverte as transações realizadas no banco de dados. Lembrando que a reversão só pode ser realizada se ela não foi salva anteriormente.
<p><br>
Sintaxe:<br>
<pre>ROLLBACK</pre>
</p>
<p><br>
<li>SAVEPOINT</li>
Cria posições dentro das transações de modo que qualquer alteração realizada na posição indicada possa ser revertida. Seu uso torna o controle mais complexo, isolando trechos selecionados dentro da transação.
<p><br>
Sintaxe:<br>
<pre>SAVEPOINT nome_do_savepoint</pre>
</p>
<p><br>
<li>SET TRANSACTION</li>
Comando especifica as características de uma transação.
<p><br>
Sintaxe:<br>
<pre>SET TRANSACTION característica</pre>
</p>
<p><br>
<li>SET CONSTRAINS</li>
Define o comportamento da verificação de restrições (constrains) dentro da transação atual. 
<p><br>
Sintaxe:<br>
<pre>SET CONSTRAINS < nome / ALL> < DEFERRED / IMMEDIATE ></pre>
</p>
</ul>
<p><br>
<h3>DQL: Data Query Language</h3>
São comandos de obtenção e organização de dados de um banco de dados, permitindo que se faça consultas e recuperação de dados. O principal comando do DQL é o SELECT 
<p><br>
<ul><li>SELECT</li>
Utilizamos para extrair dados para execução a partir de condições específicas. Como resultado, uma tabela temporária será criada, com a finalidade exibir dados através do SELECT.
<p><br>
Sintaxe:<br>
<pre>SELECT coluna_1,coluna_2,...,coluna_n FROM nome_da_tabela WHERE condição</pre>
</p>
<p>
Utilizando o símbolo *, dizemos que todas as colunas de uma tabela serão selecionadas.<br>
<pre>SELECT * FROM nome_da_tabela WHERE condição</pre>
</p>
<p>
JOIN permite combinar linhas de mais de uma tabela, tomando como base uma coluna que relaciona entre elas. As opções de JOIN são: INNER JOIN, LEFT JOIN, RIGHT JOIN, FULL JOIN.<br>
<pre>SELECT coluna_1,coluna_2,...,coluna_n FROM nome_da_tabela_1 [tipo_de_JOIN] nome_da_tabela_2 WHERE nome_da_tabela_1.coluna_n = nome_da_tabela_2.coluna_n</pre>
</p>
<p>
GROUP BY utilizamos com funções de agregação, como COUNT, MAX, MIN, SUM, AVG. Tem como objetivo agrupar um conjunto de resultados por uma ou mais colunas<br>
<pre>SELECT coluna1, função_agregada(coluna2) FROM nome_tabela GROUP BY coluna1</pre>
</p>
<p>
ORDER BY: usada para classificar o conjunto de resultados em ordem crescente ou decrescente.<br>
<pre>SELECT coluna1, coluna2 FROM nome_tabela ORDER BY coluna1 [ASC|DESC], coluna2 [ASC|DESC]</pre>
</p>
</ul>

<p><br>
Fontes:<br>
https://www.w3schools.com/<br>
https://www.mygreatlearning.com/blog/sql-commands/<br>
https://www.postgresql.org/docs/current/sql-set-constraints.html/
