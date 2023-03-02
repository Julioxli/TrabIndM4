CREATE TABLE `endereco` (
  `idendereco` INT PRIMARY KEY NOT NULL,
  `rua` VARCHAR(45),
  `bairro` VARCHAR(45),
  `cidade` VARCHAR(45),
  `cep` VARCHAR(45)
);

CREATE TABLE `Curso` (
  `idCurso` INT PRIMARY KEY NOT NULL,
  `Informatica` VARCHAR(45),
  `ingles` VARCHAR(45),
  `design` VARCHAR(45)
);

CREATE TABLE `Turma` (
  `idTurma` INT PRIMARY KEY NOT NULL,
  `manha` VARCHAR(45),
  `tarde` VARCHAR(45),
  `noite` VARCHAR(45)
);

CREATE TABLE `Aluno` (
  `idAluno` INT NOT NULL,
  `nome` VARCHAR(45),
  `sobrenome` VARCHAR(45),
  `cpf` VARCHAR(11),
  `matricula` VARCHAR(45),
  `endereco_idendereco` INT NOT NULL,
  `Curso_idCurso` INT NOT NULL,
  `Turma_idTurma` INT NOT NULL,
  PRIMARY KEY (`idAluno`, `endereco_idendereco`, `Curso_idCurso`, `Turma_idTurma`)
);

CREATE TABLE `Professor` (
  `idProfessor` INT NOT NULL,
  `nome` VARCHAR(45),
  `sobrenome` VARCHAR(45),
  `cpf` VARCHAR(11),
  `formacao` VARCHAR(45),
  `endereco_idendereco` INT NOT NULL,
  `Turma_idTurma` INT NOT NULL,
  PRIMARY KEY (`idProfessor`, `endereco_idendereco`, `Turma_idTurma`)
);

CREATE INDEX `fk_Aluno_endereco_idx` ON `Aluno` (`endereco_idendereco`);

CREATE INDEX `fk_Aluno_Curso1_idx` ON `Aluno` (`Curso_idCurso`);

CREATE INDEX `fk_Aluno_Turma1_idx` ON `Aluno` (`Turma_idTurma`);

CREATE INDEX `fk_Professor_endereco1_idx` ON `Professor` (`endereco_idendereco`);

CREATE INDEX `fk_Professor_Turma1_idx` ON `Professor` (`Turma_idTurma`);

ALTER TABLE `Aluno` ADD CONSTRAINT `fk_Aluno_endereco` FOREIGN KEY (`endereco_idendereco`) REFERENCES `endereco` (`idendereco`) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `Aluno` ADD CONSTRAINT `fk_Aluno_Curso1` FOREIGN KEY (`Curso_idCurso`) REFERENCES `Curso` (`idCurso`) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `Aluno` ADD CONSTRAINT `fk_Aluno_Turma1` FOREIGN KEY (`Turma_idTurma`) REFERENCES `Turma` (`idTurma`) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `Professor` ADD CONSTRAINT `fk_Professor_endereco1` FOREIGN KEY (`endereco_idendereco`) REFERENCES `endereco` (`idendereco`) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `Professor` ADD CONSTRAINT `fk_Professor_Turma1` FOREIGN KEY (`Turma_idTurma`) REFERENCES `Turma` (`idTurma`) ON DELETE NO ACTION ON UPDATE NO ACTION;
