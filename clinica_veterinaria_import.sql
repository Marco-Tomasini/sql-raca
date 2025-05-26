SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Banco de dados: `clinica_veterinaria`
--

CREATE DATABASE clinica_veterinaria_Marco;

USE clinica_veterinaria_Marco;

-- --------------------------------------------------------

--
-- Estrutura da tabela `acompanhamento`
--

CREATE TABLE `acompanhamento` (
  `id_acompanhamento` smallint(6) NOT NULL,
  `descricao_acompanhamento` text NOT NULL,
  `data_acompanhamento` date NOT NULL,
  `horario_acompanhamento` time NOT NULL,
  `fk_animal` smallint(6) NOT NULL,
  `fk_funcionario` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `administracao_medicamento`
--

CREATE TABLE `administracao_medicamento` (
  `id_administracao_medicamento` smallint(6) NOT NULL,
  `data_administracao_medicamento` date DEFAULT NULL,
  `horario_administracao_medicamento` time NOT NULL,
  `dose_administracao_medicamento` varchar(10) NOT NULL,
  `observacoes_administracao_medicamento` text DEFAULT NULL,
  `fk_animal` smallint(6) NOT NULL,
  `fk_receita` smallint(6) DEFAULT NULL,
  `fk_funcionario` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `animal`
--

CREATE TABLE `animal` (
  `id_animal` smallint(6) NOT NULL,
  `nome_animal` varchar(50) DEFAULT NULL,
  `cor_pelagem_animal` varchar(100) DEFAULT NULL,
  `data_nascimento_animal` date DEFAULT NULL,
  `peso_animal` decimal(10,3) NOT NULL,
  `idade_animal` tinyint(4) DEFAULT NULL,
  `sexo_animal` enum('Fêmea','Macho') DEFAULT NULL,
  `fk_raca` smallint(6) DEFAULT NULL,
  `fk_cliente` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `animal`
--

INSERT INTO `animal` (`id_animal`, `nome_animal`, `cor_pelagem_animal`, `data_nascimento_animal`, `peso_animal`, `idade_animal`, `sexo_animal`, `fk_raca`, `fk_cliente`) VALUES
(1, 'Tobby', 'Marrom', '2019-01-05', '12.500', 4, 'Macho', 1, 1),
(2, 'Luna', 'Branco', '2020-03-12', '8.200', 2, 'Fêmea', 3, 2),
(3, 'Max', 'Preto', '2018-07-22', '15.700', 6, 'Macho', 2, 3),
(4, 'Bella', 'Amarelo', '2017-11-30', '10.100', 3, 'Fêmea', 1, 4),
(5, 'Rocky', 'Cinza', '2019-04-15', '14.300', 5, 'Macho', 8, 5),
(6, 'Molly', 'Marrom', '2020-08-01', '9.800', 2, 'Fêmea', 2, 6),
(7, 'Charlie', 'Branco', '2017-12-08', '13.200', 4, 'Macho', 1, 7),
(8, 'Lucy', 'Preto', '2018-06-25', '11.600', 5, 'Fêmea', 3, 8),
(9, 'Buddy', 'Amarelo', '2019-02-19', '16.400', 6, 'Macho', 2, 9),
(10, 'Daisy', 'Cinza', '2020-05-10', '3.900', 1, 'Fêmea', 4, 10),
(11, 'Cooper', 'Marrom', '2017-09-14', '11.300', 3, 'Macho', 3, 11),
(12, 'Sadie', 'Branco', '2018-11-18', '14.100', 4, 'Fêmea', 2, NULL),
(13, 'Bailey', 'Preto', '2019-03-27', '9.700', 1, 'Macho', 1, 13),
(14, NULL, 'Amarelo', NULL, '12.900', NULL, 'Fêmea', 3, 1),
(15, 'Duke', 'Cinza', '2017-10-02', '15.200', 5, 'Macho', 2, NULL),
(16, 'Zoe', 'Marrom', '2018-05-29', '10.800', 2, 'Fêmea', 1, 16),
(17, 'Bear', 'Branco', '2019-09-08', '13.700', 4, 'Macho', 3, 17),
(18, 'Lily', 'Preto', '2020-12-17', '8.400', 1, 'Fêmea', 2, 18),
(19, 'Jack', 'Amarelo', NULL, '16.100', NULL, 'Macho', 1, 19),
(20, 'Mia', 'Cinza', '2018-10-06', '9.300', 2, 'Fêmea', 3, 20),
(21, 'Tucker', 'Marrom', '2019-06-13', '12.200', 3, 'Macho', 2, 1),
(22, NULL, 'Branco', '2023-03-07', '14.900', 1, 'Fêmea', 1, 2),
(23, 'Oliver', 'Preto', '2017-07-01', '11.100', 4, 'Macho', NULL, 3),
(24, 'Sophie', 'Amarelo', '2018-09-10', '8.600', 1, 'Fêmea', 2, 4),
(25, 'Riley', 'Cinza', '2019-11-26', '15.500', 5, 'Macho', 1, 5),
(26, 'Penny', 'Marrom', '2020-04-04', '10.500', 2, 'Fêmea', 3, 6),
(27, 'Zeus', 'Branco', '2017-05-12', '13.400', 4, 'Macho', 2, 7),
(28, 'Chloe', 'Preto', '2018-08-20', '9.900', 3, 'Fêmea', 1, 18),
(29, 'Winston', 'Amarelo', '2019-12-30', '16.300', 6, 'Macho', 3, 9),
(30, 'Ruby', 'Cinza', '2017-06-06', '11.200', 3, 'Fêmea', 2, 10),
(31, 'Milo', 'Marrom', '2018-09-15', '14.800', 5, 'Macho', 1, 17),
(32, 'Abby', 'Branco', '2019-01-28', '8.500', 1, 'Fêmea', 3, 12),
(33, 'Loki', 'Preto', '2020-02-07', '12.100', 4, 'Macho', 6, 13),
(34, 'Sasha', 'Amarelo', '2017-04-16', '15.900', 6, 'Fêmea', 1, 10),
(35, 'Oscar', 'Cinza', '2018-07-23', '10.300', 2, 'Macho', 3, 15),
(36, 'Misty', 'Marrom', '2019-10-03', '13.600', 4, 'Fêmea', 6, 16),
(37, 'Gus', 'Branco', '2020-11-11', '9.100', 1, 'Macho', 1, 17),
(38, 'Zara', 'Preto', '2017-03-19', '16.200', 5, 'Fêmea', 7, 18),
(39, 'Simba', 'Amarelo', '2018-06-27', '11.700', 4, 'Macho', 2, 19),
(40, 'Rosie', 'Cinza', '2019-08-08', '14.500', 5, 'Fêmea', 1, 7),
(41, 'Teddy', 'Marrom', '2020-01-15', '9.800', 2, 'Macho', 3, 1),
(42, 'Cleo', 'Branco', '2017-11-24', '13.300', 4, 'Fêmea', 7, 2),
(43, 'Charlie', 'Preto', '2019-02-03', '8.700', 1, 'Macho', 4, 3),
(44, 'Lily', 'Amarelo', '2020-03-14', '12.800', 3, 'Fêmea', 3, 4),
(45, 'Bentley', 'Cinza', '2017-12-22', '15.100', 5, 'Macho', 2, 5),
(46, 'Nala', 'Marrom', '2018-08-04', '10.600', 2, 'Fêmea', 1, 6),
(47, 'Harley', 'Branco', '2019-09-13', '13.900', 11, 'Macho', 3, 7),
(48, 'Piper', 'Preto', '2020-10-22', '8.300', 1, 'Fêmea', 2, 8),
(49, 'Bruno', 'Amarelo', '2017-07-28', '16.500', 6, 'Macho', 5, 9),
(50, 'Lola', 'Cinza', '2018-11-06', '11.400', 3, 'Fêmea', 3, 10),
(51, 'Milo', 'Marrom', '2019-01-23', '14.200', 4, 'Macho', 2, 2),
(52, 'Penny', 'Branco', '2020-05-04', '9.500', 1, 'Fêmea', 1, 12),
(53, 'Rocky', 'Preto', '2017-10-10', '12.700', 3, 'Macho', 3, 13),
(54, 'Zoe', 'Amarelo', '2018-11-19', '15.400', 12, 'Fêmea', 9, 14),
(55, 'Charlie', 'Cinza', '2019-02-28', '10.200', 2, 'Macho', 1, 15),
(56, 'Luna', 'Marrom', '2020-06-08', '13.500', 4, 'Fêmea', 3, 16),
(57, 'Cooper', 'Branco', '2017-08-15', '8.800', 1, 'Macho', 2, 17),
(58, 'Sadie', 'Preto', '2018-12-24', '11.900', 3, 'Fêmea', 1, 18),
(59, 'Bailey', 'Amarelo', '2020-02-06', '14.700', 9, 'Macho', 3, 19),
(60, 'Lola', 'Cinza', '2017-09-13', '9.200', 2, 'Fêmea', 5, 12);

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `id_cliente` smallint(6) NOT NULL,
  `nome_cliente` varchar(100) NOT NULL,
  `sobrenome_cliente` varchar(100) NOT NULL,
  `email_cliente` varchar(100) DEFAULT NULL,
  `telefone_principal_cliente` varchar(15) NOT NULL,
  `telefone_alternativo_cliente` varchar(15) DEFAULT NULL,
  `cep_cliente` varchar(8) DEFAULT NULL,
  `numero_cliente` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`id_cliente`, `nome_cliente`, `sobrenome_cliente`, `email_cliente`, `telefone_principal_cliente`, `telefone_alternativo_cliente`, `cep_cliente`, `numero_cliente`) VALUES
(1, 'João', 'Silva', 'joao.silva@example.com', '1234567890', '9876543210', '12345678', 10),
(2, 'Maria', 'Santos', 'maria.santos@example.com', '2345678901', '8765432109', '23456789', 20),
(3, 'Pedro', 'Ferreira', 'pedro.ferreira@example.com', '3456789012', '7654321098', '34567890', 30),
(4, 'Ana', 'Oliveira', 'ana.oliveira@example.com', '4567890123', '6543210987', '45678901', 40),
(5, 'Carlos', 'Rodrigues', 'carlos.rodrigues@example.com', '5678901234', '5432109876', '56789012', 50),
(6, 'Mariana', 'Gomes', 'mariana.gomes@example.com', '6789012345', '4321098765', '67890123', 60),
(7, 'Paulo', 'Pereira', 'paulo.pereira@example.com', '7890123456', '3210987654', '78901234', 70),
(8, 'Laura', 'Almeida', 'laura.almeida@example.com', '8901234567', '2109876543', '89012345', 80),
(9, 'Fernando', 'Rocha', 'fernando.rocha@example.com', '9012345678', '1098765432', '90123456', 90),
(10, 'Patrícia', 'Costa', 'patricia.costa@example.com', '0123456789', '0987654321', '01234567', 100),
(11, 'Rafael', 'Martins', 'rafael.martins@example.com', '1234509876', '9876543210', '12345678', 110),
(12, 'Lúcia', 'Barbosa', 'lucia.barbosa@example.com', '2345610987', '8765432109', '23456789', 120),
(13, 'Gabriel', 'Ramos', 'gabriel.ramos@example.com', '3456789012', '7654321098', '34567890', 130),
(14, 'Isabela', 'Sousa', 'isabela.sousa@example.com', '4567890123', '6543210987', '45678901', 140),
(15, 'José', 'Fernandes', 'jose.fernandes@example.com', '5678901234', '5432109876', '56789012', 150),
(16, 'Camila', 'Lima', 'camila.lima@example.com', '6789012345', '4321098765', '67890123', 160),
(17, 'Marcelo', 'Carvalho', 'marcelo.carvalho@example.com', '7890123456', '3210987654', '78901234', 170),
(18, 'Letícia', 'Gonçalves', 'leticia.goncalves@example.com', '8901234567', '2109876543', '89012345', 180),
(19, 'Luiz', 'Pires', 'luiz.pires@example.com', '9012345678', '1098765432', '90123456', 190),
(20, 'Amanda', 'Melo', 'amanda.melo@example.com', '0123456789', '0987654321', '01234567', 200);

-- --------------------------------------------------------

--
-- Estrutura da tabela `consulta`
--

CREATE TABLE `consulta` (
  `id_consulta` smallint(6) NOT NULL,
  `preco_consulta` decimal(2,0) NOT NULL,
  `data_consulta` date NOT NULL,
  `horario_consulta` time NOT NULL,
  `fk_animal` smallint(6) NOT NULL,
  `fk_cliente` smallint(6) DEFAULT NULL,
  `fk_funcionario` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `especie`
--

CREATE TABLE `especie` (
  `id_especie` smallint(6) NOT NULL,
  `nome_especie` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `especie`
--

INSERT INTO `especie` (`id_especie`, `nome_especie`) VALUES
(1, 'Gato'),
(2, 'Cachorro'),
(3, 'Pássaro'),
(4, 'Coelho'),
(5, 'Outro');

-- --------------------------------------------------------

--
-- Estrutura da tabela `exame`
--

CREATE TABLE `exame` (
  `id_exame` smallint(6) NOT NULL,
  `preco_exame` decimal(2,0) NOT NULL,
  `data_exame` date NOT NULL,
  `horario_exame` time NOT NULL,
  `fk_animal` smallint(6) NOT NULL,
  `fk_cliente` smallint(6) DEFAULT NULL,
  `fk_funcionario` smallint(6) NOT NULL,
  `fk_tipo_exame` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcao`
--

CREATE TABLE `funcao` (
  `id_funcao` smallint(6) NOT NULL,
  `descricao_funcao` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `funcao`
--

INSERT INTO `funcao` (`id_funcao`, `descricao_funcao`) VALUES
(1, 'Veterinário'),
(2, 'Assistente Veterinário'),
(3, 'Recepcionista'),
(4, 'Banho e Tosa'),
(5, 'Auxiliar de Laboratório'),
(6, 'Gerente'),
(7, 'Atendente de Pet Shop'),
(8, 'Auxiliar Administrativo'),
(9, 'Fisioterapeuta Animal'),
(10, 'Estagiário Veterinário');

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionario`
--

CREATE TABLE `funcionario` (
  `id_funcionario` smallint(6) NOT NULL,
  `nome_funcionario` varchar(100) NOT NULL,
  `sobrenome_funcionario` varchar(100) DEFAULT NULL,
  `email_institucional_funcionario` varchar(100) NOT NULL,
  `email_pessoal_funcionario` varchar(100) DEFAULT NULL,
  `cpf_funcionario` varchar(11) DEFAULT NULL,
  `senha_funcionario` varchar(32) DEFAULT NULL,
  `fk_funcao` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `funcionario`
--

INSERT INTO `funcionario` (`id_funcionario`, `nome_funcionario`, `sobrenome_funcionario`, `email_institucional_funcionario`, `email_pessoal_funcionario`, `cpf_funcionario`, `senha_funcionario`, `fk_funcao`) VALUES
(1, 'João', 'Silva', 'joao.silva@clinica.com', 'joao.silva@gmail.com', '12345678901', 'senha123', 1),
(2, 'Maria', 'Santos', 'maria.santos@clinica.com', 'maria.santos@gmail.com', '23456789012', 'senha456', 2),
(3, 'Pedro', 'Gomes', 'pedro.gomes@clinica.com', 'pedro.gomes@gmail.com', '34567890123', 'senha789', 3),
(4, 'Ana', 'Ribeiro', 'ana.ribeiro@clinica.com', 'ana.ribeiro@gmail.com', '45678901234', 'senhaabc', 4),
(5, 'Carlos', 'Almeida', 'carlos.almeida@clinica.com', 'carlos.almeida@gmail.com', '56789012345', 'senhaxyz', 5),
(6, 'Julia', 'Ferreira', 'julia.ferreira@clinica.com', 'julia.ferreira@gmail.com', '67890123456', 'senha123', 6),
(7, 'Fernando', 'Oliveira', 'fernando.oliveira@clinica.com', 'fernando.oliveira@gmail.com', '78901234567', 'senha456', 7),
(8, 'Larissa', 'Costa', 'larissa.costa@clinica.com', 'larissa.costa@gmail.com', '89012345678', 'senha789', 8),
(9, 'Roberto', 'Pereira', 'roberto.pereira@clinica.com', 'roberto.pereira@gmail.com', '90123456789', 'senhaabc', 9),
(10, 'Mariana', 'Rodrigues', 'mariana.rodrigues@clinica.com', 'mariana.rodrigues@gmail.com', '01234567890', 'senhaxyz', 10),
(11, 'Lucas', 'Cardoso', 'lucas.cardoso@clinica.com', 'lucas.cardoso@gmail.com', '12345678901', 'senha123', 1),
(12, 'Amanda', 'Fernandes', 'amanda.fernandes@clinica.com', 'amanda.fernandes@gmail.com', '23456789012', 'senha456', 2),
(13, 'Ricardo', 'Martins', 'ricardo.martins@clinica.com', 'ricardo.martins@gmail.com', '34567890123', 'senha789', 3),
(14, 'Carolina', 'Nascimento', 'carolina.nascimento@clinica.com', 'carolina.nascimento@gmail.com', '45678901234', 'senhaabc', 4),
(15, 'Eduardo', 'Santana', 'eduardo.santana@clinica.com', 'eduardo.santana@gmail.com', '56789012345', 'senhaxyz', 5),
(16, 'Isabela', 'Gonçalves', 'isabela.goncalves@clinica.com', 'isabela.goncalves@gmail.com', '67890123456', 'senha123', 6);

-- --------------------------------------------------------

--
-- Estrutura da tabela `internacao`
--

CREATE TABLE `internacao` (
  `id_internacao` smallint(6) NOT NULL,
  `preco_internacao` decimal(2,0) NOT NULL,
  `data_entrada_internacao` date DEFAULT NULL,
  `data_alta_internacao` date DEFAULT NULL,
  `horario_exame` time NOT NULL,
  `fk_animal` smallint(6) NOT NULL,
  `fk_cliente` smallint(6) DEFAULT NULL,
  `fk_funcionario_responsavel` smallint(6) NOT NULL,
  `fk_funcionario_acompanhamento` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `medicamento`
--

CREATE TABLE `medicamento` (
  `id_medicamento` smallint(6) NOT NULL,
  `nome_medicamento` varchar(100) NOT NULL,
  `dose_medicamento` varchar(10) NOT NULL,
  `descricao_funcao_medicamento` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `raca`
--

CREATE TABLE `raca` (
  `id_raca` smallint(6) NOT NULL,
  `descricao_raca` varchar(100) NOT NULL,
  `fk_especie` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `raca`
--

INSERT INTO `raca` (`id_raca`, `descricao_raca`, `fk_especie`) VALUES
(1, 'Sem raça definida', NULL),
(2, 'Shih Tzu', 2),
(3, 'Siamês', 1),
(4, 'Azul russo', 1),
(5, 'Labrador', 2),
(6, 'Golden retriever', 2),
(7, 'Zwergspitz', 2),
(8, 'Boxer', 2),
(9, 'Holland Lop', 4),
(10, 'Outro', 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `receita`
--

CREATE TABLE `receita` (
  `id_receita` smallint(6) NOT NULL,
  `prescricao_receita` varchar(500) NOT NULL,
  `fk_animal` smallint(6) DEFAULT NULL,
  `fk_funcionario` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `receita_medicamento`
--

CREATE TABLE `receita_medicamento` (
  `id_receita_medicamento` smallint(6) NOT NULL,
  `fk_receita` smallint(6) NOT NULL,
  `fk_medicamento` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipo_exame`
--

CREATE TABLE `tipo_exame` (
  `id_tipo_exame` smallint(6) NOT NULL,
  `descricao_tipo_exame` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `acompanhamento`
--
ALTER TABLE `acompanhamento`
  ADD PRIMARY KEY (`id_acompanhamento`),
  ADD KEY `acompanhamento_ibfk_1` (`fk_animal`),
  ADD KEY `acompanhamento_ibfk_2` (`fk_funcionario`);

--
-- Índices para tabela `administracao_medicamento`
--
ALTER TABLE `administracao_medicamento`
  ADD PRIMARY KEY (`id_administracao_medicamento`),
  ADD KEY `administracao_medicamento_ibfk_1` (`fk_animal`),
  ADD KEY `administracao_medicamento_ibfk_2` (`fk_receita`),
  ADD KEY `administracao_medicamento_ibfk_3` (`fk_funcionario`);

--
-- Índices para tabela `animal`
--
ALTER TABLE `animal`
  ADD PRIMARY KEY (`id_animal`),
  ADD KEY `animal_ibfk_1` (`fk_raca`),
  ADD KEY `animal_ibfk_2` (`fk_cliente`);

--
-- Índices para tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Índices para tabela `consulta`
--
ALTER TABLE `consulta`
  ADD PRIMARY KEY (`id_consulta`),
  ADD KEY `consulta_ibfk_1` (`fk_animal`),
  ADD KEY `consulta_ibfk_2` (`fk_cliente`),
  ADD KEY `consulta_ibfk_3` (`fk_funcionario`);

--
-- Índices para tabela `especie`
--
ALTER TABLE `especie`
  ADD PRIMARY KEY (`id_especie`);

--
-- Índices para tabela `exame`
--
ALTER TABLE `exame`
  ADD PRIMARY KEY (`id_exame`),
  ADD KEY `exame_ibfk_1` (`fk_animal`),
  ADD KEY `exame_ibfk_2` (`fk_cliente`),
  ADD KEY `exame_ibfk_3` (`fk_funcionario`),
  ADD KEY `exame_ibfk_4` (`fk_tipo_exame`);

--
-- Índices para tabela `funcao`
--
ALTER TABLE `funcao`
  ADD PRIMARY KEY (`id_funcao`);

--
-- Índices para tabela `funcionario`
--
ALTER TABLE `funcionario`
  ADD PRIMARY KEY (`id_funcionario`),
  ADD KEY `funcionario_ibfk_1` (`fk_funcao`);

--
-- Índices para tabela `internacao`
--
ALTER TABLE `internacao`
  ADD PRIMARY KEY (`id_internacao`),
  ADD KEY `internacao_ibfk_1` (`fk_animal`),
  ADD KEY `internacao_ibfk_2` (`fk_cliente`),
  ADD KEY `internacao_ibfk_3` (`fk_funcionario_responsavel`),
  ADD KEY `internacao_ibfk_4` (`fk_funcionario_acompanhamento`);

--
-- Índices para tabela `medicamento`
--
ALTER TABLE `medicamento`
  ADD PRIMARY KEY (`id_medicamento`);

--
-- Índices para tabela `raca`
--
ALTER TABLE `raca`
  ADD PRIMARY KEY (`id_raca`),
  ADD KEY `raca_ibfk_1` (`fk_especie`);

--
-- Índices para tabela `receita`
--
ALTER TABLE `receita`
  ADD PRIMARY KEY (`id_receita`),
  ADD KEY `receita_ibfk_1` (`fk_animal`),
  ADD KEY `receita_ibfk_2` (`fk_funcionario`);

--
-- Índices para tabela `receita_medicamento`
--
ALTER TABLE `receita_medicamento`
  ADD PRIMARY KEY (`id_receita_medicamento`),
  ADD KEY `receita_medicamento_ibfk_1` (`fk_receita`),
  ADD KEY `receita_medicamento_ibfk_2` (`fk_medicamento`);

--
-- Índices para tabela `tipo_exame`
--
ALTER TABLE `tipo_exame`
  ADD PRIMARY KEY (`id_tipo_exame`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `acompanhamento`
--
ALTER TABLE `acompanhamento`
  MODIFY `id_acompanhamento` smallint(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `administracao_medicamento`
--
ALTER TABLE `administracao_medicamento`
  MODIFY `id_administracao_medicamento` smallint(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `animal`
--
ALTER TABLE `animal`
  MODIFY `id_animal` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT de tabela `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id_cliente` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `consulta`
--
ALTER TABLE `consulta`
  MODIFY `id_consulta` smallint(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `especie`
--
ALTER TABLE `especie`
  MODIFY `id_especie` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `exame`
--
ALTER TABLE `exame`
  MODIFY `id_exame` smallint(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `funcao`
--
ALTER TABLE `funcao`
  MODIFY `id_funcao` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `funcionario`
--
ALTER TABLE `funcionario`
  MODIFY `id_funcionario` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de tabela `internacao`
--
ALTER TABLE `internacao`
  MODIFY `id_internacao` smallint(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `medicamento`
--
ALTER TABLE `medicamento`
  MODIFY `id_medicamento` smallint(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `raca`
--
ALTER TABLE `raca`
  MODIFY `id_raca` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `receita`
--
ALTER TABLE `receita`
  MODIFY `id_receita` smallint(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `receita_medicamento`
--
ALTER TABLE `receita_medicamento`
  MODIFY `id_receita_medicamento` smallint(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tipo_exame`
--
ALTER TABLE `tipo_exame`
  MODIFY `id_tipo_exame` smallint(6) NOT NULL AUTO_INCREMENT;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `acompanhamento`
--
ALTER TABLE `acompanhamento`
  ADD CONSTRAINT `acompanhamento_ibfk_1` FOREIGN KEY (`fk_animal`) REFERENCES `animal` (`id_animal`) ON DELETE CASCADE,
  ADD CONSTRAINT `acompanhamento_ibfk_2` FOREIGN KEY (`fk_funcionario`) REFERENCES `funcionario` (`id_funcionario`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `administracao_medicamento`
--
ALTER TABLE `administracao_medicamento`
  ADD CONSTRAINT `administracao_medicamento_ibfk_1` FOREIGN KEY (`fk_animal`) REFERENCES `animal` (`id_animal`) ON DELETE CASCADE,
  ADD CONSTRAINT `administracao_medicamento_ibfk_2` FOREIGN KEY (`fk_receita`) REFERENCES `receita` (`id_receita`) ON DELETE CASCADE,
  ADD CONSTRAINT `administracao_medicamento_ibfk_3` FOREIGN KEY (`fk_funcionario`) REFERENCES `funcionario` (`id_funcionario`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `animal`
--
ALTER TABLE `animal`
  ADD CONSTRAINT `animal_ibfk_1` FOREIGN KEY (`fk_raca`) REFERENCES `raca` (`id_raca`) ON DELETE CASCADE,
  ADD CONSTRAINT `animal_ibfk_2` FOREIGN KEY (`fk_cliente`) REFERENCES `cliente` (`id_cliente`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `consulta`
--
ALTER TABLE `consulta`
  ADD CONSTRAINT `consulta_ibfk_1` FOREIGN KEY (`fk_animal`) REFERENCES `animal` (`id_animal`) ON DELETE CASCADE,
  ADD CONSTRAINT `consulta_ibfk_2` FOREIGN KEY (`fk_cliente`) REFERENCES `cliente` (`id_cliente`) ON DELETE CASCADE,
  ADD CONSTRAINT `consulta_ibfk_3` FOREIGN KEY (`fk_funcionario`) REFERENCES `funcionario` (`id_funcionario`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `exame`
--
ALTER TABLE `exame`
  ADD CONSTRAINT `exame_ibfk_1` FOREIGN KEY (`fk_animal`) REFERENCES `animal` (`id_animal`) ON DELETE CASCADE,
  ADD CONSTRAINT `exame_ibfk_2` FOREIGN KEY (`fk_cliente`) REFERENCES `cliente` (`id_cliente`) ON DELETE CASCADE,
  ADD CONSTRAINT `exame_ibfk_3` FOREIGN KEY (`fk_funcionario`) REFERENCES `funcionario` (`id_funcionario`) ON DELETE CASCADE,
  ADD CONSTRAINT `exame_ibfk_4` FOREIGN KEY (`fk_tipo_exame`) REFERENCES `tipo_exame` (`id_tipo_exame`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `funcionario`
--
ALTER TABLE `funcionario`
  ADD CONSTRAINT `funcionario_ibfk_1` FOREIGN KEY (`fk_funcao`) REFERENCES `funcao` (`id_funcao`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `internacao`
--
ALTER TABLE `internacao`
  ADD CONSTRAINT `internacao_ibfk_1` FOREIGN KEY (`fk_animal`) REFERENCES `animal` (`id_animal`) ON DELETE CASCADE,
  ADD CONSTRAINT `internacao_ibfk_2` FOREIGN KEY (`fk_cliente`) REFERENCES `cliente` (`id_cliente`) ON DELETE CASCADE,
  ADD CONSTRAINT `internacao_ibfk_3` FOREIGN KEY (`fk_funcionario_responsavel`) REFERENCES `funcionario` (`id_funcionario`) ON DELETE CASCADE,
  ADD CONSTRAINT `internacao_ibfk_4` FOREIGN KEY (`fk_funcionario_acompanhamento`) REFERENCES `funcionario` (`id_funcionario`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `raca`
--
ALTER TABLE `raca`
  ADD CONSTRAINT `raca_ibfk_1` FOREIGN KEY (`fk_especie`) REFERENCES `especie` (`id_especie`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `receita`
--
ALTER TABLE `receita`
  ADD CONSTRAINT `receita_ibfk_1` FOREIGN KEY (`fk_animal`) REFERENCES `animal` (`id_animal`) ON DELETE CASCADE,
  ADD CONSTRAINT `receita_ibfk_2` FOREIGN KEY (`fk_funcionario`) REFERENCES `funcionario` (`id_funcionario`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `receita_medicamento`
--
ALTER TABLE `receita_medicamento`
  ADD CONSTRAINT `receita_medicamento_ibfk_1` FOREIGN KEY (`fk_receita`) REFERENCES `receita` (`id_receita`) ON DELETE CASCADE,
  ADD CONSTRAINT `receita_medicamento_ibfk_2` FOREIGN KEY (`fk_medicamento`) REFERENCES `medicamento` (`id_medicamento`) ON DELETE CASCADE;
COMMIT;
