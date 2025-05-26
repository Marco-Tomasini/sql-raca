/* Exemplo Prof */
SELECT id_animal, nome_animal, peso_animal
FROM animal
WHERE peso_animal > 5 and peso_animal <12
ORDER BY peso_animal;

SELECT count(*) FROM animal;



/* Exemplo Prof 2 */
SELECT id_animal, nome_animal, nome_cliente, id_cliente
FROM animal 
INNER JOIN cliente 
ON fk_cliente = id_cliente
ORDER BY id_cliente;

/* Sintaxe Inner Join
	SELECT <nomeColunas>
    FROM <tabelaA>
    INNER JOIN <tabelaB>
    ON <condição de junção>alter
    [WHERE <condição de filtro>];
*/



/*EX3*/
SELECT nome_animal, peso_animal, sexo_animal, descricao_raca
FROM animal
INNER JOIN raca
ON fk_raca = id_raca
order by peso_animal;