-- Tabela Disciplina
CREATE TABLE disciplina (
    cod_disciplina INT PRIMARY KEY,
    Nome_disciplina CHAR(30) NOT NULL
);

-- Tabela Professor
CREATE TABLE professor (
    Matricula_professor INT PRIMARY KEY,
    Nome_professor VARCHAR(255) NOT NULL,
    Titulacao VARCHAR(50),
    Telefone VARCHAR(50),
    Cidade VARCHAR(50)
);

-- Tabela Aluno
CREATE TABLE aluno (
    Matricula_aluno INT PRIMARY KEY,
    Nome_aluno CHAR(40) NOT NULL,
    Endereco VARCHAR(100),
    Telefone INT(20),
    Cidade CHAR(30)
);

-- Tabela Avaliacao
CREATE TABLE avaliacao (
    ano INT NOT NULL,
    semestre INT NOT NULL,
    cod_disciplina INT NOT NULL,
    Cod_avaliacao INT PRIMARY KEY,
    Peso INT(2),
    FOREIGN KEY (cod_disciplina) REFERENCES disciplina(cod_disciplina)
);

-- Tabela Turma
CREATE TABLE turma (
    ano INT NOT NULL,
    semestre INT NOT NULL,
    cod_disciplina INT NOT NULL,
    Matricula_professor INT NOT NULL,
    PRIMARY KEY (ano, semestre, cod_disciplina),
    FOREIGN KEY (cod_disciplina) REFERENCES disciplina(cod_disciplina),
    FOREIGN KEY (Matricula_professor) REFERENCES professor(Matricula_professor)
);

-- Tabela Turma_Aluno
CREATE TABLE turma_aluno (
    ano INT NOT NULL,
    semestre INT NOT NULL,
    cod_disciplina INT NOT NULL,
    Matricula_aluno INT NOT NULL,
    PRIMARY KEY (ano, semestre, cod_disciplina, Matricula_aluno),
    FOREIGN KEY (ano, semestre, cod_disciplina) REFERENCES turma(ano, semestre, cod_disciplina),
    FOREIGN KEY (Matricula_aluno) REFERENCES aluno(Matricula_aluno)
);

-- Tabela Nota
CREATE TABLE nota (
    ano INT NOT NULL,
    semestre INT NOT NULL,
    cod_disciplina INT NOT NULL,
    Cod_avaliacao INT NOT NULL,
    Matricula_aluno INT NOT NULL,
    Nota INT(5),
    PRIMARY KEY (ano, semestre, cod_disciplina, Cod_avaliacao, Matricula_aluno),
    FOREIGN KEY (ano, semestre, cod_disciplina) REFERENCES turma(ano, semestre, cod_disciplina),
    FOREIGN KEY (Cod_avaliacao) REFERENCES avaliacao(Cod_avaliacao),
    FOREIGN KEY (Matricula_aluno) REFERENCES aluno(Matricula_aluno)
);

-- inserindo os dados
INSERT INTO `aluno` (`Matricula_aluno`, `Nome_aluno`, `Endereco`, `Telefone`, `Cidade`) VALUES
(410, 'Mariana', 'Rua Uruguai, 230', 123, 'Porto Alegre'),
(510, 'Mônica', 'Av. 7 de Setembro, 2430', 1234, 'São Paulo'),
(710, 'Joana', 'Beira Rio, 900', 888, 'Florianópolis'),
(810, 'Ana Paula', 'Av. 15 de Novembro, 800', 666, 'Fortaleza'),
(910, 'Manoel', 'Rua Chile, 430', 444, 'Santos');



INSERT INTO `avaliacao` (`ano`, `semestre`, `cod_disciplina`, `Cod_avaliacao`, `Peso`) VALUES
(2006, 1, 111, 1, 1),
(2006, 1, 111, 2, 3),
(2006, 1, 111, 3, 3),
(2006, 1, 112, 1, 3),
(2006, 1, 112, 2, 5),
(2006, 1, 112, 3, 5);

INSERT INTO `disciplina` (`cod_disciplina`, `Nome_disciplina`) VALUES
(111, 'Banco de Dados'),
(112, 'Engenharia de Software'),
(113, 'Inteligencia Artificial'),
(114, 'Programação'),
(115, 'Modelagem de Incerteza');

INSERT INTO `nota` (`ano`, `semestre`, `cod_disciplina`, `Cod_avaliacao`, `Matricula_aluno`, `Nota`) VALUES
(2006, 1, 111, 1, 410, 10),
(2006, 1, 111, 1, 510, 9),
(2006, 1, 111, 1, 810, 5),
(2006, 1, 111, 1, 910, 5),
(2006, 1, 111, 2, 410, 7),
(2006, 1, 111, 2, 510, 10),
(2006, 1, 111, 2, 810, 8),
(2006, 1, 111, 2, 910, 8),
(2006, 1, 111, 3, 410, 9),
(2006, 1, 111, 3, 510, 7),
(2006, 1, 111, 3, 810, 7),
(2006, 1, 111, 3, 910, 6),
(2006, 1, 112, 1, 410, 8),
(2006, 1, 112, 1, 510, 3),
(2006, 1, 112, 1, 910, 7),
(2006, 1, 112, 2, 410, 6),
(2006, 1, 112, 2, 510, 9),
(2006, 1, 112, 2, 910, 5),
(2006, 1, 112, 3, 410, 5),
(2006, 1, 112, 3, 510, 10),
(2006, 1, 112, 3, 910, 9);

INSERT INTO `professor` (`Matricula_professor`, `Nome_professor`, `Titulacao`, `Telefone`, `Cidade`) VALUES
(321, 'Adriana', 'Mestre', '1234', 'Sorocaba'),
(334, 'Fabiana', 'Doutora', '3333', 'Salvador'),
(343, 'Anita', 'Doutora', '4321', 'Belo Horizonte'),
(352, 'Carlos', 'Mestre', '555', 'Rio de Janeiro');

INSERT INTO `turma` (`ano`, `semestre`, `cod_disciplina`, `Matricula_professor`) VALUES
(2005, 1, 111, 321),
(2006, 1, 111, 321),
(2006, 1, 112, 321),
(2005, 1, 112, 334),
(2005, 1, 113, 343),
(2006, 1, 113, 343);

INSERT INTO `turma_aluno` (`ano`, `semestre`, `cod_disciplina`, `Matricula_aluno`) VALUES
(2006, 1, 111, 410),
(2006, 1, 111, 510),
(2006, 1, 111, 810),
(2006, 1, 111, 910),
(2006, 1, 112, 410),
(2006, 1, 112, 510),
(2006, 1, 112, 910),
(2006, 1, 113, 510),
(2006, 1, 113, 810);