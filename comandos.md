<h2>Comandos do SQL</h2>

Utilizamos os comandos para interagir com o banco de dados. Podemos classificar os comandos por meio das sintaxes:

<h4><li>DDL: Data Definition Language</h4>
<ul><li>CREATE</li>
<li>DROP</li>
<li>ALTER</li>
<li>TRUNCATE</li>
<li>RENAME</li>
</ul>

<h4><li>DML: Data Manipulation Language</h4>
<ul><li>INSERT</li>
<li>UPDATE</li>
<li>DELETE</li>
<li>CALL</li>
<li>LOCK</li>
</ul>

<p><br></p>
<h3>DCL: Data Control Language</h3>
Comandos que, em um ambiente multiusuários, concede ou revoga direitos de acesso de dados, garantindo segurança em um banco de dados.
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
</ul>

<p><br>
Fontes:<br>
https://www.w3schools.com/<br>
https://www.mygreatlearning.com/blog/sql-commands/<br>
https://www.postgresql.org/docs/current/sql-set-constraints.html/
