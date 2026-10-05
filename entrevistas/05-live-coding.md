# Guia para Live Coding

Em entrevista ao vivo, o processo pesa tanto quanto o resultado.

## Roteiro de 6 passos

1. **Repita a pergunta com suas palavras.** "Então preciso listar clientes sem nenhum pedido, certo?"
2. **Esclareça ambiguidades.** Empates contam? Pedidos cancelados entram? Há nulos? Qual é a granularidade da tabela?
3. **Inspecione as tabelas.** Pergunte quais são as chaves e como as tabelas se relacionam.
4. **Pense em voz alta.** "Vou juntar clientes com pedidos usando LEFT JOIN e filtrar os que ficaram sem pedido."
5. **Comece simples e refine.** Escreva a versão básica, rode, depois acrescente filtros e agregações.
6. **Valide.** Confira o resultado com 2 ou 3 linhas à mão. Pergunte-se: o resultado faz sentido? O `JOIN` multiplicou linhas?

## Se travar

- Diga o que você sabe e onde está a dúvida. Silêncio prolongado é pior do que pensar em voz alta.
- Quebre o problema em partes e resolva uma CTE por vez.
- Se esquecer uma função, descreva o que ela faz e peça para confirmar o nome. Isso é aceitável.

## Boas práticas visíveis

- Palavras-chave em maiúsculas, indentação consistente
- Aliases claros (`c` para clientes, `p` para pedidos)
- Nomear colunas calculadas (`AS receita_total`)
- Evitar `SELECT *` em resultados finais

## Checklist de simulação

- [ ] Fiz uma simulação cronometrada sozinho
- [ ] Fiz uma simulação com outra pessoa (amigo, colega, comunidade)
- [ ] Gravei a tela e revi meu próprio raciocínio
- [ ] Pratiquei explicar uma consulta pronta para uma pessoa leiga

## Onde treinar além deste repositório

- LeetCode (seção Database)
- HackerRank (SQL)
- StrataScratch e DataLemur (questões reais de entrevistas de empresas de tecnologia)
- SQLZoo e Mode SQL Tutorial
