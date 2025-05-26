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



/*Exemplo Prof 3*/
SELECT nome_animal AS Nome, peso_animal AS Peso, sexo_animal AS `Sexo Animal`, descricao_raca AS Raça 
FROM animal AS a 
INNER JOIN raca AS r 
ON r.id_raca = a.fk_raca;



/*EX4*/
SELECT nome_animal, peso_animal, sexo_animal, descricao_raca, nome_cliente
FROM animal
INNER JOIN raca ON fk_raca = id_raca
INNER JOIN cliente ON fk_cliente = id_cliente
order by peso_animal;



/*Exemplo Prof 4*/




/*EX5*/
USE radiov2;
SELECT nome_cantor_banda, nome_Musica
FROM vercao
INNER JOIN musica ON fk_musica_ID_musica = id_musica
INNER JOIN cantor_banda ON fk_cantor_banda_ID_cantor_banda = ID_cantor_banda;