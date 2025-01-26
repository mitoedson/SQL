<h1>SQL Curingas (Wildcards)</h1>

O curinga SQL é extremamente útil quando queremos filtrar dentro de um banco de dados, algum dado específico. Utilizamos os curingas com o operador LIKE na cláusula WHERE de uma consulta para filtrar dados.
<p>
Há dois caracteres curingas importantes:
<ul>
  <li>O caracter underline _</li>
  <p>Representa um simples caracter qualquer. Podemos fazer uma busca descobrindo se dentro de uma tabela, existem dados que contenham uma sequência de caracteres desejados.</p> 
  <p>
  <pre>SELECT * FROM clientes WHERE nome LIKE ‘_ada’;</pre>
  </p>
  <p>
  Este primeiro caso, a seleção é feita na tabela clientes, cuja coluna nome tenha algum dado cujo nome termine em 'ada', mas que inicie com um caracter. Se posicionarmos o caracter underline após 'ada', a seleção será feita para todos os dados que contenham 'ada', e um caracter posterior. 
  </p>
  <p>
  <pre>SELECT * FROM clientes WHERE nome NOT LIKE ‘_ada’;</pre>
  </p>
  <p>
  Utilizando NOT LIKE, a seleção será feita quando algum dado cujo nome não termine em 'ada'.
  </p>
  
  <p><br>
  <li>O caracter de porcentagem %</li>Representa um ou mais caracteres. 
  </p>
  <p>
  <pre>SELECT * FROM clientes WHERE nome LIKE ‘%ada’;</pre>
  </p>
  <p>
  Este primeiro caso, a seleção é feita na tabela clientes, cuja coluna nome tenha qualquer dado cujo nome termine em 'ada'. 
  </p>
  <p>
  <pre>SELECT * FROM clientes WHERE nome NOT LIKE ‘%ada’;</pre>
  </p>
  <p>
  Utilizando NOT LIKE, a seleção será feita quando qualquer dado cujo nome não termine em 'ada'.
  </p>
</ul>
Podemos combinar os dois caracteres curinga, dependendo do tipo de informação desejamos.  Por outro lado, se não utilizarmos LIKE, os caracteres curingas tornarão apenas um caracter literal.
<p>
Fontes:<br> 
https://www.w3schools.com/sql/sql_wildcards.asp
</p>
