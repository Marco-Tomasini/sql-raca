USE clinica_veterinaria_Marco;


/* S1 */
SELECT nome_animal FROM animal;


/* S2 */
SELECT nome_cliente, sobrenome_cliente 
FROM cliente
WHERE sobrenome_cliente = "Silva";


/* S3 */
SELECT nome_funcionario, email_institucional_funcionario FROM funcionario;


/* S4 */
SELECT nome_animal, idade_animal, sexo_animal
FROM animal
WHERE sexo_animal = "Fêmea";


/* S5 */
SELECT nome_medicamento, dose_medicamento
FROM medicamento;




/* O1 */
SELECT nome_animal, peso_animal
FROM animal
WHERE peso_animal > 20
ORDER BY peso_animal;


/* O2 */
SELECT id_exame, data_exame 
FROM exame
WHERE data_exame > '2024-01-01';


/* O3 */
SELECT nome_animal, data_nascimento_animal
FROM animal
WHERE data_nascimento_animal > '2020-01-01'
ORDER BY nome_animal;


/* O4 */
SELECT nome_cliente, telefone_alternativo_cliente
FROM cliente
WHERE telefone_alternativo_cliente != '';


/* O5 */
SELECT nome_medicamento
FROM medicamento
WHERE descricao_funcao_medicamento like '%antibiótico%';




/* IJ1 */
SELECT nome_animal, nome_cliente
FROM animal
INNER JOIN cliente ON (fk_cliente = id_cliente);


/* IJ2 */
SELECT nome_funcionario, sobrenome_funcionario, observacoes_administracao_medicamento
FROM funcionario
INNER JOIN administracao_medicamento ON (fk_funcionario = id_funcionario);


/* IJ3 */
SELECT  nome_animal, nome_funcionario
FROM internacao
INNER JOIN animal ON (fk_animal = id_animal)
INNER JOIN funcionario ON (fk_funcionario_responsavel = id_funcionario);


/* IJ4 */
SELECT  nome_animal, dose_administracao_medicamento, data_administracao_medicamento
FROM administracao_medicamento
INNER JOIN animal ON fk_animal = id_animal;


/* IJ5 */
SELECT preco_exame, data_exame, horario_exame, nome_animal, nome_cliente, descricao_tipo_exame
FROM exame
INNER JOIN animal ON (fk_animal = id_animal)
INNER JOIN cliente ON (exame.fk_cliente = id_cliente)
INNER JOIN tipo_exame ON (fk_tipo_exame = id_tipo_exame);