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

<h4><li>DCL: Data Control Language</h4>
<ul><li>GRANT</li>
<li>REVOKE</li>
</ul>

<h3>TCL: Transaction Control Language</h3>
São comandos que gerenciam as transações que ocorrem no banco de dados. 
<p>
<ul><li>BEGIN TRANSACTION (ou apenas BEGIN)</li>
Comando que inicia uma nova transação em um banco de dados. Nem sempre ele é utilizada pois seu uso fica implícito. 
<p><br>
Sintaxe:<br>
BEGIN TRANSACTION
</p>
<p><br>
<li>COMMIT</li>
Salva as transações permanentemente no banco de dados. Ela é sempre posicionada após a realização de alterações.
<p><br>
Sintaxe:<br>
COMMIT
</p>
<p><br>
<li>ROLLBACK</li>
Reverte as transações realizadas no banco de dados. Lembrando que a reversão só pode ser realizada se ela não foi salva anteriormente.
<p><br>
Sintaxe:<br>
ROLLBACK
</p>
<p><br>
<li>SAVEPOINT</li>
Cria posições dentro das transações de modo que qualquer alteração realizada na posição indicada possa ser revertida. Seu uso torna o controle mais complexo, isolando trechos selecionados dentro da transação.
<p><br>
Sintaxe:<br>
SAVEPOINT nome_do_savepoint
</p>
<p><br>
<li>SET TRANSACTION</li>
Comando especifica as características de uma transação.
<p><br>
Sintaxe:<br>
SET TRANSACTION característica
</p>
<p><br>
<li>SET Constrain</li>
<p><br>
Sintaxe:<br>
</p>
</ul>
<p><br>
<h3>DQL: Data Query Language</h3>
São comandos de obtenção e organização de dados de um banco de dados. 
<p><br>
<ul><li>SELECT</li>
  Utilizamos para extrair dados para execução. Como resultado, uma tabela temporária será criada, com a finalidade exibir dados através do SELECT.
<p><br>
Sintaxe:<br>
SELECT expressão FROM tabela WHERE condição
</p>
</ul>



