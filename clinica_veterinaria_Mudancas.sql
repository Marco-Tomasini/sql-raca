USE clinica_veterinaria_Marco;
/* 1 */
SELECT id_funcionario, nome_funcionario, sobrenome_funcionario, descricao_funcao
FROM funcionario INNER JOIN funcao ON (fk_funcao = id_funcao)
ORDER BY funcionario.id_funcionario;



/* 2 */
SELECT idade_animal, peso_animal, nome_animal, descricao_raca
FROM animal INNER JOIN raca ON (fk_raca = raca.id_raca)
ORDER BY raca.id_raca;



/* 3 */
SELECT id_animal, nome_animal, peso_animal
FROM animal
WHERE peso_animal > 5 and peso_animal <12
ORDER BY peso_animal;

