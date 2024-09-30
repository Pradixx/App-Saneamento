-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 01/10/2024 às 01:11
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `appsaneamento`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `agentes`
--

CREATE TABLE `agentes` (
  `ID` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `sobrenome` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `senha` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `agentes`
--

INSERT INTO `agentes` (`ID`, `username`, `nome`, `sobrenome`, `email`, `senha`) VALUES
(1, 'Cleiton', 'Cleiton', 'ferreira', 'cleiton@gmail.com', '123'),
(2, 'Gustavin', 'Gustavo', 'Oliveira', 'gustavo@gmail.com', '4570'),
(3, 'Pereira', 'Pablo ', 'Pereira', 'pablo@gmail.com', '4019'),
(4, 'Ferreira', 'Julio', 'Ferreira', 'julio@gmail.com', '9812'),
(5, 'Pimpolho', 'Leonardo', 'Storrer', 'pimpolho@gmail.com', '4790'),
(6, 'Mari', 'Maria ', 'Clara', 'mari@gmail.com', '7210'),
(7, 'Kj', 'Kaio', 'Jorge', 'kj@gmail.com', '2901'),
(8, 'ya', 'yara', 'Escobar', 'ya@gmail.com', '732-'),
(9, 'Gabi', 'Gabi', 'Scalize', 'scalize@gmail.com', '7890'),
(10, 'Tania', 'Tania', 'Melo', 'melo@gmail.com', '01-2'),
(11, 'ben', 'Bernardo', 'Morano', 'morano@gmail.com', '9912'),
(12, 'bely', 'Cibely', 'Moraes', 'bely@gmail.com', '1028'),
(13, 'John', 'João', 'Levis', 'johnlevis@gmail.com', '0128'),
(14, 'RatinhoManiaco', 'Paulo', 'Vitor', 'maniaco@gmail.com', '-012'),
(15, 'Barbi', 'Barbara', 'Ferraz', 'barbi@gmail.com', '9182'),
(16, 'Hadid', 'Bela', 'Hadid', 'hadidbela@gmail.com', '0884'),
(17, 'Tiago', 'Tiago', 'Murroz', 'murroz@gmail.com', '4289'),
(18, 'Beast', 'Dave', 'Jhones', 'beast@gmail.com', '9762'),
(19, 'Katinha', 'Katia', 'Emilio', 'kat@gmail.com', '9081'),
(20, 'Otavio', 'Otavio', 'Mesquita', 'mesquita@gmail.com', '9801'),
(21, 'Gis', 'gislaisson', 'Silva', 'gis@gmail.com', '1234'),
(22, 'Joia', 'Jade', 'Lopes', 'joialopes@gmail.com', '9872'),
(23, 'Gau', 'Gaules', 'Polares', 'polares@gmail.com', '9810'),
(24, 'Nomura', 'Gabriel', 'Nomura', 'nomura@gmail.com', '9012'),
(25, 'Gaviria', 'Pablo', 'Gaviria', 'pablito@gmail.com', '0198'),
(26, 'Apoka', 'Lucas', 'Apokar', 'lucasapokao@gmail.com', '7854'),
(27, 'smart_hawk78', 'Orion', 'Frost', 'orion.frost@creativemail.com', '1338'),
(28, 'lucky_dragon44', 'Milo', 'Flame', 'milo.flame@fantasyweb.com', '0758'),
(29, 'brave_falcon69', 'Finn', 'Flame', 'finn.flame@creativemail.com', '4638'),
(30, 'brave_fox55', 'Aria', 'Drake', 'aria.drake@creativemail.com', '4847'),
(31, 'silent_fox5', 'Finn', 'Flame', 'finn.flame@fantasyweb.com', '0447'),
(32, 'smart_wolf59', 'Orion', 'Drake', 'orion.drake@inspirations.org', '2843'),
(33, 'lucky_eagle43', 'Aria', 'Raven', 'aria.raven@creativemail.com', '6710'),
(34, 'silent_hawk9', 'Nova', 'Shadow', 'nova.shadow@inspirations.org', '7090'),
(35, 'brave_eagle9', 'Aria', 'Shadow', 'aria.shadow@inspirations.org', '1316'),
(36, 'brave_tiger53', 'Kira', 'Stone', 'kira.stone@creativemail.com', '1333'),
(37, 'wise_hawk56', 'Milo', 'Blaze', 'milo.blaze@inspirations.org', '5989'),
(38, 'silent_tiger6', 'Zara', 'Sky', 'zara.sky@creativemail.com', '8055'),
(39, 'fast_wolf9', 'Nova', 'Blaze', 'nova.blaze@creativemail.com', '8915'),
(40, 'smart_hawk48', 'Luca', 'Storm', 'luca.storm@creativemail.com', '2686'),
(41, 'silent_bear9', 'Aria', 'Drake', 'aria.drake@inspirations.org', '2220'),
(42, 'bright_hawk90', 'Zara', 'Drake', 'zara.drake@creativemail.com', '6713'),
(43, 'brave_fox29', 'Lyra', 'Drake', 'lyra.drake@inspirations.org', '7443'),
(44, 'silent_hawk89', 'Finn', 'Raven', 'finn.raven@inspirations.org', '7535'),
(45, 'bold_falcon89', 'Lyra', 'Storm', 'lyra.storm@creativemail.com', '4904'),
(46, 'curious_wolf27', 'Lyra', 'Drake', 'lyra.drake@inspirations.org', '4891'),
(47, 'fast_lion94', 'Kira', 'Frost', 'kira.frost@creativemail.com', '1424'),
(48, 'wise_falcon2', 'Zara', 'Shadow', 'zara.shadow@creativemail.com', '9834'),
(49, 'bold_fox8', 'Nova', 'Storm', 'nova.storm@fantasyweb.com', '7496'),
(50, 'curious_lion84', 'Milo', 'Drake', 'milo.drake@inspirations.org', '3608'),
(51, 'silent_panther62', 'Orion', 'Frost', 'orion.frost@inspirations.org', '4911'),
(52, 'fast_fox80', 'Nova', 'Sky', 'nova.sky@fantasyweb.com', '3974'),
(53, 'bright_tiger79', 'Nova', 'Haze', 'nova.haze@fantasyweb.com', '0494'),
(54, 'lucky_tiger78', 'Milo', 'Drake', 'milo.drake@inspirations.org', '4680'),
(55, 'wild_dragon51', 'Milo', 'Stone', 'milo.stone@creativemail.com', '5913'),
(56, 'smart_bear34', 'Lyra', 'Frost', 'lyra.frost@creativemail.com', '0571'),
(57, 'bold_panther32', 'Ezra', 'Stone', 'ezra.stone@creativemail.com', '8902'),
(58, 'fast_lion83', 'Luca', 'Haze', 'luca.haze@creativemail.com', '0727'),
(59, 'silent_dragon11', 'Ezra', 'Frost', 'ezra.frost@creativemail.com', '4406'),
(60, 'wild_wolf28', 'Finn', 'Stone', 'finn.stone@fantasyweb.com', '9450'),
(61, 'bright_hawk65', 'Nova', 'Storm', 'nova.storm@fantasyweb.com', '5660'),
(62, 'brave_panther86', 'Ezra', 'Raven', 'ezra.raven@inspirations.org', '4133'),
(63, 'brave_bear21', 'Lyra', 'Haze', 'lyra.haze@creativemail.com', '8552'),
(64, 'brave_eagle32', 'Kira', 'Sky', 'kira.sky@creativemail.com', '8675'),
(65, 'lucky_bear62', 'Finn', 'Storm', 'finn.storm@fantasyweb.com', '6718'),
(66, 'wise_hawk93', 'Orion', 'Flame', 'orion.flame@fantasyweb.com', '8363'),
(67, 'bright_dragon81', 'Finn', 'Sky', 'finn.sky@inspirations.org', '0009'),
(68, 'smart_panther26', 'Kira', 'Sky', 'kira.sky@creativemail.com', '5775'),
(69, 'silent_hawk4', 'Orion', 'Sky', 'orion.sky@fantasyweb.com', '4840'),
(70, 'bold_falcon10', 'Ezra', 'Shadow', 'ezra.shadow@creativemail.com', '8738'),
(71, 'wild_falcon41', 'Aria', 'Drake', 'aria.drake@inspirations.org', '3076'),
(72, 'curious_falcon83', 'Luca', 'Sky', 'luca.sky@creativemail.com', '2218'),
(73, 'brave_bear60', 'Orion', 'Blaze', 'orion.blaze@inspirations.org', '1611'),
(74, 'brave_tiger80', 'Milo', 'Drake', 'milo.drake@creativemail.com', '4072'),
(75, 'bright_eagle45', 'Finn', 'Storm', 'finn.storm@inspirations.org', '5400'),
(76, 'curious_lion33', 'Nova', 'Blaze', 'nova.blaze@inspirations.org', '4236');

-- --------------------------------------------------------

--
-- Estrutura para tabela `avaliacao`
--

CREATE TABLE `avaliacao` (
  `ID` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `critica` varchar(200) NOT NULL,
  `melhorar` varchar(200) NOT NULL,
  `nota` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `avaliacao`
--

INSERT INTO `avaliacao` (`ID`, `username`, `critica`, `melhorar`, `nota`) VALUES
(1, 'Cleiton', 'nenhuma', 'Pesquisando o melhor da tecnologia sustentavel', 5),
(2, 'Daronco', ' Se o app for lento para carregar ou responder, isso pode frustrar os usuários. Otimize o desempenho para garantir uma experiência fluida.', 'Garanta que a navegação seja clara e fácil de entender, mesmo para usuários com pouca experiência com tecnologia.', 4),
(3, 'Good', 'Pedir muitos dados pode ser desmotivador. Simplifique o processo de denúncia, pedindo apenas o essencial.', ' Dê a opção de fazer denúncias anônimas, garantindo a proteção do denunciante.', 3),
(4, 'Jv', 'Problemas com o GPS ou falhas na localização exata podem comprometer a eficácia do app. Teste e ajuste o sistema de mapeamento frequentemente.', 'Considere a introdução de elementos de gamificação, como pontos ou recompensas, para incentivar o uso contínuo do aplicativo.', 5),
(5, 'Bolinho', 'O app deve ser acessível para pessoas com deficiência visual ou auditiva, oferecendo recursos como leitura de tela ou legendas.', 'Disponibilize um tutorial inicial ou um assistente virtual para ajudar novos usuários a entender como fazer uma denúncia corretamente.', 5),
(6, 'Mila', 'Alguns usuários podem não ter acesso à internet o tempo todo. Permita a coleta de dados offline com envio posterior quando a conexão for estabelecida.', 'Notifique o usuário sobre o status da denúncia (por exemplo, recebida, em análise, resolvida) para manter a confiança no processo.', 4),
(7, 'Jorge', 'A navegação pode ser confusa para novos usuários ou para aqueles com pouca familiaridade tecnológica.', 'Simplifique a interface para que os usuários, independentemente do nível de habilidade tecnológica, possam usá-la facilmente.', 4),
(8, 'Zequinha', 'A falta de atualizações sobre o status da denúncia pode desmotivar o uso contínuo do app.', 'Use a localização por GPS para permitir que os usuários marquem problemas com precisão em mapas.', 4),
(9, 'Boio', 'Categorias de denúncia pouco detalhadas dificultam a correta classificação dos problemas.', 'Permita que os usuários anexem imagens ou vídeos para fortalecer suas denúncias.', 5),
(10, 'Ferri', 'Se as respostas às denúncias são lentas, os usuários perdem confiança no sistema.', 'Envie notificações para os usuários sobre o andamento das denúncias.', 3),
(11, 'Muc', 'A ausência de parcerias com órgãos públicos pode diminuir a confiança dos usuários na resolução dos problemas.', 'Forneça informações claras sobre o status da denúncia (recebido, em análise, resolvido).', 4),
(12, 'Moraes', 'Falta de localização precisa por mapas pode dificultar a identificação exata do local do problema.', 'Ofereça a opção de fazer denúncias anônimas para aumentar a confiança dos denunciantes.', 5),
(13, 'Wendel', 'O app pode não funcionar bem em áreas com pouca ou nenhuma conectividade.', 'Permita que os usuários compartilhem suas denúncias em redes sociais para aumentar a visibilidade.', 3),
(14, 'Klebinho77', 'Excesso de informações visuais pode sobrecarregar a interface, tornando o app menos intuitivo.', 'Inclua guias de introdução para que novos usuários aprendam rapidamente a utilizar o app.', 3),
(15, 'Veloper', 'Disponibilize o app em diferentes idiomas, adaptando-se a diversas regiões.', 'Muitos passos para denunciar podem desestimular o uso.', 4),
(16, 'pliuo', 'Não existe uma opção clara para priorizar denúncias de maior gravidade.', 'Deixe que os usuários acompanhem o histórico de denúncias feitas.', 5),
(17, 'Toninho', 'Se o app consome muitos dados ou exige muito armazenamento, isso pode limitar seu uso em dispositivos de baixo custo.', 'Insira um botão de denúncia rápida para situações urgentes.', 4),
(18, 'Dael', 'Impossibilidade de anexar vídeos ou mais de uma foto por denúncia.', 'Permita que o app funcione off-line, armazenando as informações para enviar quando houver conexão.', 3),
(19, 'Wellington171', 'Falta de informações de contato com os órgãos competentes para acompanhamento direto.', ' Faça parcerias com prefeituras e entidades públicas para dar mais visibilidade e eficácia às denúncias.', 4),
(20, 'Flavian', 'Não oferece opções de acessibilidade para usuários com deficiências.', 'Notifique usuários sobre problemas de saneamento ao entrarem em áreas afetadas.', 5),
(21, 'Rosa', 'A ausência de comunicação proativa do app com o usuário pode passar a sensação de abandono.', 'Ofereça relatórios abertos para que ONGs e pesquisadores tenham acesso a dados sobre denúncias.', 4),
(22, 'Darold', 'Falta de incentivo ou reconhecimento para os usuários mais engajados nas denúncias.', 'Mostre a eficiência de resolução das denúncias por bairro ou município.', 5),
(23, 'Olavo', 'Não há sistema para revisar ou moderar denúncias falsas ou duplicadas.', 'Incentive os usuários com recompensas virtuais por número de denúncias feitas ou resolvidas.', 4),
(24, 'Mila', ' O app não oferece detalhes sobre como os problemas foram resolvidos.', 'Use inteligência artificial para categorizar automaticamente os problemas e priorizar os mais graves.', 3),
(25, 'Manda', 'Notificações podem ser muito invasivas ou mal configuradas, causando irritação.', 'Insira opções de acessibilidade para pessoas com deficiência visual ou motora.', 4),
(26, 'Dete', 'Um design visual pouco atraente ou desatualizado pode afastar os usuários.', 'Inclua um sistema de avaliação para que os usuários possam dar feedback sobre a resposta às suas denúncias.', 5);

-- --------------------------------------------------------

--
-- Estrutura para tabela `denuncias`
--

CREATE TABLE `denuncias` (
  `ID` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `descricao` varchar(200) NOT NULL,
  `local` varchar(100) NOT NULL,
  `cep` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `denuncias`
--

INSERT INTO `denuncias` (`ID`, `username`, `descricao`, `local`, `cep`) VALUES
(1, 'Admin', 'MInha casa esta com mal cheiro, começou depois da reforma da prefeitura', 'sao paulo', 4570900),
(2, 'KaleorixBr', 'Minha vizinha quebrou o cano, e a prefeitura não quer fazer nada a respeito.', 'São Paulo', 5782450),
(3, 'cleofs', 'esgoto aberto', 'sao paulo', 4696040),
(4, 'Ferri', 'Moradores de uma comunidade rural denunciam a ausência de acesso a água potável. A população depende de poços contaminados, resultando em aumento de doenças transmitidas pela água.', 'Belo Horizonte', 12389725),
(5, 'Muc', ' Denúncia de esgoto sendo despejado diretamente em ruas e rios locais, causando mau cheiro e proliferando mosquitos, afetando a saúde pública e contaminando fontes de água.', 'Santa Catarina', 83910482),
(6, 'Veloper', 'Comunidade denuncia que a coleta de lixo não é realizada de forma regular, resultando em acúmulo de resíduos nas ruas e atraindo vetores de doenças, como ratos e moscas.', 'Campinas', 9123987),
(7, 'Good', 'Denúncia de uma empresa local que está despejando seus resíduos tóxicos em rios próximos, contaminando o solo e a água utilizada pela comunidade.', 'Manaus', 1293873),
(8, 'Boio', 'Comunidade relata que o sistema de tratamento de esgoto não funciona adequadamente, resultando no lançamento de dejetos sem tratamento em áreas habitadas, causando risco à saúde.', 'Tocantins', 45625099),
(9, 'Rosa', 'Denúncia de contaminação da água fornecida à população por metais pesados, devido à falta de manutenção nas tubulações e à presença de resíduos industriais no sistema de abastecimento.', 'Sorocaba', 48376521),
(10, 'Wendel', 'Moradores de áreas periféricas denunciam que não há rede de esgoto instalada, forçando-os a utilizar fossas sépticas inadequadas ou despejar os dejetos diretamente em canais improvisados.', 'Pernambuco', 1283292),
(11, 'pliuo', 'Denúncia de que o sistema de distribuição de água está com vazamentos e infiltrações, comprometendo a qualidade da água e expondo os moradores a patógenos.', 'Salvador', 92378503),
(12, 'Bolinho', 'Denúncia sobre a falta de manutenção nas estações de tratamento de esgoto e água, levando ao descarte inadequado de resíduos e à distribuição de água não tratada corretamente à população.', 'Rio Branco', 53409872),
(13, 'Mila', 'Moradores de uma região rural denunciam a contaminação dos poços artesianos por produtos químicos utilizados em plantações próximas, como pesticidas e fertilizantes, prejudicando a qualidade da água.', 'Parana', 92837613),
(14, 'Brunao', 'Pais de alunos denunciam que a água fornecida nas escolas públicas está imprópria para consumo, com cheiro e cor alterados, colocando em risco a saúde das crianças.', 'Rio Grande do Sul', 8978931),
(15, 'Jv', 'Moradores de um bairro denunciam constantes vazamentos na rede de esgoto, causando alagamentos com águas residuais nas ruas e afetando diretamente residências e comércios.', 'Feira de Santana', 98374543),
(16, 'Paulinho', 'Denúncia de que hospitais e clínicas estão descartando seus resíduos médicos em terrenos baldios, expondo a população a materiais infecciosos e tóxicos.', 'Porto Seguro', 9812733),
(17, 'Dael', 'Líderes indígenas denunciam a ausência total de saneamento básico em suas aldeias, resultando em condições insalubres, aumento de doenças diarreicas e mortalidade infantil.', 'Santos', 8324755);

-- --------------------------------------------------------

--
-- Estrutura para tabela `doacoes`
--

CREATE TABLE `doacoes` (
  `ID` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `pagamento` varchar(10) NOT NULL,
  `valor` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `doacoes`
--

INSERT INTO `doacoes` (`ID`, `username`, `pagamento`, `valor`) VALUES
(1, 'Admin', 'pix', 55.5),
(2, 'KaleorixBr', 'boleto', 0.98),
(3, 'cleofs', 'cartao', 5),
(4, 'Serginho', 'cartão', 250),
(5, 'Ju', 'pix', 20),
(6, 'Dete', 'pix', 26),
(7, 'Boio', 'boleto', 510),
(8, 'Zequinha', 'boleto', 15),
(9, 'Ju', 'pix', 55),
(10, 'Bolinho', 'boleto', 120),
(11, 'Leleo', 'cartão', 67),
(12, 'Serginho', 'pix', 10),
(13, 'Toninho', 'pix', 52),
(14, 'Veloper', 'pix', 12),
(15, 'Mila', 'pix', 32),
(16, 'Ferri', 'pix', 90),
(17, 'Brunao', 'cartão', 55),
(18, 'Muc', 'boleto', 22),
(19, 'Alves', 'boleto', 66),
(20, 'Mario', 'boleto', 70),
(21, 'Moraes', 'cartão', 20),
(22, 'Wendel', 'pix', 50),
(23, 'Prado', 'pix', 7),
(24, 'Arthurus', 'cartão', 24);

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuários`
--

CREATE TABLE `usuários` (
  `ID` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `sobrenome` varchar(50) NOT NULL,
  `idade` int(3) NOT NULL,
  `email` varchar(50) NOT NULL,
  `senha` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `usuários`
--

INSERT INTO `usuários` (`ID`, `username`, `nome`, `sobrenome`, `idade`, `email`, `senha`) VALUES
(1, 'Admin', 'Diego', 'Prado', 17, 'senac@gmail.com', '123'),
(2, 'Brunao', 'Bruno', 'Oliveira', 49, 'brunao@gmail.com', '6090'),
(3, 'Paulinho', 'Paulo', 'Obilix', 59, 'obilix@gmail.com', '7456'),
(4, 'Ferri', 'Caio', 'Ferri', 25, 'ferri@gmail.com', '5555'),
(5, 'Wellington171', 'Wellington', 'Souza', 19, 'Souza@gmail.com', '1206'),
(6, 'Jv', 'João Vitor', 'Nagai', 17, 'jv@gmail.com', '4040'),
(8, 'Arthurus', 'Arthur', 'Reis', 49, 'reis@gmail.com', '5890'),
(9, 'Boio', 'Jeremias', 'Boio', 41, 'boio@gmail.com', '6791'),
(10, 'Daronco', 'Daronco', 'Lima', 32, 'daronco@gmail.com', '3478'),
(11, 'Zequinha', 'José', 'Silva', 61, 'zequinha@gmail.com', '4972'),
(12, 'Dete', 'Hildete', 'Dias', 72, 'dete@gmail.com', '6279'),
(13, 'Alves', 'Rafael', 'Alves', 16, 'alves@gmail.com', '8572'),
(14, 'Prado', 'Diego', 'Prado', 17, 'prado@gmail.com', '9090'),
(15, 'Good', 'Gustavo', 'Oliveira', 17, 'good@gmail.com', '3250'),
(16, 'Dael', 'Daniel', 'Macedo', 22, 'dael@gmail.com', '1185'),
(17, 'Darold', 'Danilo', 'Pereira', 28, 'pereira@gmail.com', '7701'),
(18, 'Ju', 'Julia ', 'Caetano', 18, 'juju@gmail.com', '4580'),
(19, 'Bolinho', 'Leticia', 'Maldavia', 42, 'let@gmail.com', '4395'),
(20, 'Leleo', 'Leonardo', 'Sabbatini', 18, 'sabbatini@gmail.com', '4590'),
(21, 'Serginho', 'Sergio', 'Nagai', 48, 'serginho@gmail.com', '3296'),
(22, 'Toninho', 'Antonio', 'Silva', 35, 'tonho@gmail.com', '4239'),
(23, 'Rosa', 'Rosilva', 'Dias', 53, 'rosa@gmail.com', '5439'),
(24, 'Mila', 'Camila', 'klppling', 28, 'mila@gmail.com', '3456'),
(25, 'Jorge', 'Jorge', 'Euclides', 64, 'euclides@gmail.com', '9837'),
(26, 'Muc', 'Murilo', 'Emilio', 16, 'muc@gmail.com', '3401'),
(27, 'Wendel', 'Wendel', 'Sampaio', 31, 'sampaio@gmail.com', '7229'),
(28, 'Olavo', 'Olavo', 'Silva', 27, 'olavo@gmail.com', '5290'),
(29, 'Klebinho77', 'Kleber', 'Mendes', 23, 'mendes@gmail.com', '9001'),
(30, 'Mario', 'Hilbert', 'Florentino', 44, 'mario@gmail.com', '4123'),
(31, 'Veloper', 'Benett', 'Monrae', 33, 'veloper@gmail.com', '5309'),
(32, 'pliuo', 'Kleber', 'Pinto', 21, 'pliou92@gmail.com', '5559'),
(33, 'Manda', 'Amanda', 'Herrera', 16, 'mandinha@gmail.com', '2038'),
(34, 'Moraes', 'Laura', 'Moraes', 45, 'moraes@gmail.com', '7891'),
(35, 'Flavian', 'Flavia', 'Monte', 22, 'flavianmonte@gmail.com', '8971'),
(36, 'msantos87', 'Mariana', 'Santos', 44, 'msantos87@creativemail.org', '0747'),
(37, 'mteixeira24', 'Mariana', 'Teixeira', 19, 'mteixeira24@fantasy.com', '0069'),
(38, 'fmendes27', 'Felipe', 'Mendes', 39, 'fmendes27@fantasy.com', '7889'),
(39, 'jferreira15', 'João', 'Ferreira', 36, 'jferreira15@fantasy.com', '6155'),
(40, 'jlima84', 'João', 'Lima', 22, 'jlima84@fantasy.com', '9680'),
(41, 'fvieira96', 'Felipe', 'Vieira', 51, 'fvieira96@imaginary.net', '1688'),
(42, 'ateixeira20', 'Ana', 'Teixeira', 54, 'ateixeira20@fantasy.com', '5387'),
(43, 'bferreira55', 'Beatriz', 'Ferreira', 57, 'bferreira55@creativemail.org', '2137'),
(44, 'rteixeira86', 'Rafael', 'Teixeira', 29, 'rteixeira86@fantasy.com', '4166'),
(45, 'rmartins15', 'Rafael', 'Martins', 25, 'rmartins15@creativemail.org', '7443'),
(46, 'jteixeira53', 'Julia', 'Teixeira', 55, 'jteixeira53@creativemail.org', '2386'),
(47, 'ffreitas66', 'Felipe', 'Freitas', 42, 'ffreitas66@fantasy.com', '7771'),
(48, 'cmelo3', 'Camila', 'Melo', 44, 'cmelo3@fantasy.com', '6147'),
(49, 'jalmeida50', 'João', 'Almeida', 30, 'jalmeida50@fantasy.com', '4358'),
(50, 'pferreira50', 'Pedro', 'Ferreira', 58, 'pferreira50@creativemail.org', '9348'),
(51, 'fmartins24', 'Fernanda', 'Martins', 52, 'fmartins24@fantasy.com', '7960'),
(52, 'jrocha88', 'Julia', 'Rocha', 47, 'jrocha88@fantasy.com', '5544'),
(53, 'dmelo31', 'Daniel', 'Melo', 40, 'dmelo31@fantasy.com', '6877'),
(54, 'falmeida66', 'Felipe', 'Almeida', 41, 'falmeida66@creativemail.org', '5430'),
(55, 'jfreitas97', 'João', 'Freitas', 41, 'jfreitas97@creativemail.org', '5602'),
(56, 'jcosta25', 'João', 'Costa', 37, 'jcosta25@creativemail.org', '0691'),
(57, 'aoliveira28', 'Ana', 'Oliveira', 23, 'aoliveira28@creativemail.org', '9238'),
(58, 'gmartins7', 'Gabriel', 'Martins', 37, 'gmartins7@fantasy.com', '4609'),
(59, 'lcavalcanti85', 'Lucas', 'Cavalcanti', 56, 'lcavalcanti85@fantasy.com', '1476'),
(60, 'mmartins2', 'Mateus', 'Martins', 21, 'mmartins2@creativemail.org', '6768'),
(61, 'ggomes61', 'Guilherme', 'Gomes', 53, 'ggomes61@fantasy.com', '9783'),
(62, 'mrocha91', 'Mariana', 'Rocha', 21, 'mrocha91@fantasy.com', '0784'),
(63, 'falmeida13', 'Fernanda', 'Almeida', 54, 'falmeida13@fantasy.com', '5077'),
(64, 'dsouza62', 'Daniel', 'Souza', 18, 'dsouza62@fantasy.com', '0911'),
(65, 'lbarbosa18', 'Lucas', 'Barbosa', 30, 'lbarbosa18@fantasy.com', '2260'),
(66, 'bsilva47', 'Beatriz', 'Silva', 42, 'bsilva47@creativemail.org', '2157'),
(67, 'mbarbosa7', 'Mateus', 'Barbosa', 30, 'mbarbosa7@imaginary.net', '0979'),
(68, 'glima15', 'Gabriel', 'Lima', 57, 'glima15@imaginary.net', '8693'),
(69, 'jmendes75', 'João', 'Mendes', 46, 'jmendes75@creativemail.org', '6819'),
(70, 'cvieira21', 'Clara', 'Vieira', 57, 'cvieira21@imaginary.net', '1105'),
(71, 'jsouza95', 'Julia', 'Souza', 50, 'jsouza95@creativemail.org', '4511'),
(72, 'dmelo3', 'Daniel', 'Melo', 31, 'dmelo3@imaginary.net', '9938'),
(73, 'jrodrigues94', 'João', 'Rodrigues', 47, 'jrodrigues94@imaginary.net', '5479'),
(74, 'sbarbosa15', 'Sofia', 'Barbosa', 37, 'sbarbosa15@creativemail.org', '1293'),
(75, 'dmendes25', 'Daniel', 'Mendes', 41, 'dmendes25@imaginary.net', '7648'),
(76, 'bgomes40', 'Beatriz', 'Gomes', 21, 'bgomes40@imaginary.net', '4796'),
(77, 'amartins95', 'Ana', 'Martins', 20, 'amartins95@fantasy.com', '2869'),
(78, 'rteixeira27', 'Rafael', 'Teixeira', 21, 'rteixeira27@imaginary.net', '0480'),
(79, 'cvieira2', 'Clara', 'Vieira', 53, 'cvieira2@fantasy.com', '8196'),
(80, 'bmendes19', 'Beatriz', 'Mendes', 40, 'bmendes19@fantasy.com', '7756'),
(81, 'jsantos64', 'Julia', 'Santos', 41, 'jsantos64@creativemail.org', '8389'),
(82, 'fsilva92', 'Felipe', 'Silva', 36, 'fsilva92@creativemail.org', '0432'),
(83, 'frodrigues78', 'Fernanda', 'Rodrigues', 31, 'frodrigues78@creativemail.org', '9760'),
(84, 'gmartins44', 'Guilherme', 'Martins', 38, 'gmartins44@imaginary.net', '3345'),
(85, 'lcavalcanti78', 'Lucas', 'Cavalcanti', 36, 'lcavalcanti78@fantasy.com', '4143');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `agentes`
--
ALTER TABLE `agentes`
  ADD PRIMARY KEY (`ID`);

--
-- Índices de tabela `avaliacao`
--
ALTER TABLE `avaliacao`
  ADD PRIMARY KEY (`ID`);

--
-- Índices de tabela `denuncias`
--
ALTER TABLE `denuncias`
  ADD PRIMARY KEY (`ID`);

--
-- Índices de tabela `doacoes`
--
ALTER TABLE `doacoes`
  ADD PRIMARY KEY (`ID`);

--
-- Índices de tabela `usuários`
--
ALTER TABLE `usuários`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `agentes`
--
ALTER TABLE `agentes`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT de tabela `avaliacao`
--
ALTER TABLE `avaliacao`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de tabela `denuncias`
--
ALTER TABLE `denuncias`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de tabela `doacoes`
--
ALTER TABLE `doacoes`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de tabela `usuários`
--
ALTER TABLE `usuários`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
