<h1>SQL Curingas (Wildcards)</h1>

O curinga SQL é extremamente útil quando queremos filtrar dentro de um banco de dados, algum dado específico. Utilizamos os curingas com o operador LIKE na cláusula WHERE de uma consulta para filtrar dados.
<p>
Há dois caracteres curingas importantes:
<ul>
  <li>O caracter de porcentagem %</li>Representa um ou mais caracteres.
  <li>O caracter underline _</li>Representa um simples caracter.
</ul>
  
SELECT * FROM customers WHERE sobrenome LIKE ‘_os’;
Nossa consulta agora retorna todos os nossos sobrenomes, e podemos pular a escrita da declaração para cada combinação de palavras:

SELECT * FROM customers WHERE sobrenome IN (‘Kos’,’Tos’,’Los’);
Observe que a lista de sobrenomes acima não é de forma alguma exaustiva porque o curinga sublinhado substitui qualquer caractere — mesmo um que não seja uma letra!

Cuidado: usando curingas SQL sem o operador LIKE
Os curingas SQL funcionam apenas no operador LIKE. Se você colocar um curinga dentro de uma string comum que não seja um argumento para o operador LIKE, você verá que o SQL tratará esse curinga como um caractere literal que aparece na string. Por exemplo, considere esta consulta alternativa que não usa o operador LIKE:

SELECT * FROM customers WHERE sobrenome = ‘_os’;
Esta consulta pesquisaria todos os sobrenomes que literalmente equivalem a ‘_os’, e você pode apostar que não há tais registros em nossa tabela. Este é um erro típico de novato, então tenha cuidado ao usar curingas SQL.

Invertendo filtros curinga SQL
Para obter o inverso de um filtro curinga SQL, como encontrar todos os clientes cujos sobrenomes não são Los, Tos, Kos, etc., você simplesmente aplica uma negação, NOT, ao operador LIKE:

SELECT * FROM customers WHERE sobrenome NOT LIKE ‘_os’;

Usando curingas SQL para representar uma coleção de caracteres
O curinga sublinhado não é o único disponível em SQL. Um curinga SQL mais comumente usado é o sinal de porcentagem (%), que é usado para representar um ou mais caracteres. Então, se quisermos listar todos os clientes que moram em cidades alemãs que terminam em "burg", escreveríamos a seguinte consulta:

SELECT * FROM customers WHERE city LIKE ‘%burg’;
Esta consulta retornará todos os registros de clientes cuja cidade de residência é como Hamburgo, Augsburg, Oldenburg, Duisburg e outras.

Assim como negamos o curinga SQL sublinhado, também podemos negar o curinga SQL de porcentagem. Então, se quisermos extrair registros de clientes cuja cidade de residência não termina em "burg", escreveríamos:

SELECT * FROM customers WHERE city NOT LIKE ‘%burg’;
Nota: Evite usar o curinga de porcentagem no início de uma string com o operador LIKE, se possível. Esta construção é muito cara, pois o banco de dados precisa avaliar cada combinação de strings que correspondem a esse padrão final. O uso de % após alguns caracteres é menos dispendioso em termos de recursos do computador, pois o banco de dados já sabe o espaço de strings que precisa avaliar.

Combinando curingas em instruções LIKE
É importante observar que você pode combinar curingas SQL. Se quiser pesquisar todos os clientes cuja cidade de residência começa com "W", termina em "burg" e tem pelo menos uma letra entre "W" e "burg", você pode escrever:

SELECT * FROM customers WHERE city NOT LIKE "W_%burg";
Qual é o seu nível de SQL? Inscreva-se para um teste.
Enlouqueça com curingas SQL
Neste artigo, vimos como usar curingas SQL para filtrar tabelas. Cobrimos apenas o básico aqui. Para saber mais sobre curingas SQL, recomendo fortemente que você aprenda sobre expressões regulares. Mas tenha cuidado, porque há um ditado na ciência da computação: se você tentar resolver um problema usando expressões regulares, acabará com dois problemas. Expressões regulares são um tópico avançado, então tenha alguma experiência antes de tentar dominá-las.
