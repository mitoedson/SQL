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
São comandos que gerenciam que ocorre alteração no banco de dados. 
<p><br>
<ul><li>COMMIT</li>
Salva as alterações realizadas no banco de dados. Ela é sempre posicionada após a realização de alterações.
<p><br>
Sintaxe:<br>
COMMIT
</p>
<p><br>
<li>ROLLBACK</li>
Reverte as alterações realizadas no banco de dados. Lembrando que a reversão só pode ser realizada se ela não foi salva anteriormente.
<p><br>
Sintaxe:<br>
ROLLBACK
</p>

<li>SAVEPOINT</li>
<li>SET Transaction</li>
<li>SET Constrain</li>
</ul>

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



