-- tables
-- Table: doença
CREATE TABLE doenca (
    id int  NOT NULL AUTO_INCREMENT,
    nome varchar(100)  NOT NULL,
    descricao Text  NOT NULL,
    CONSTRAINT doenca_pk PRIMARY KEY (id)
);

-- Table: equipe_saude
CREATE TABLE equipe_saude (
    id int  NOT NULL AUTO_INCREMENT,
    nome varchar(100)  NOT NULL,
    cargo varchar(100)  NOT NULL,
    especialidade varchar(100)  NOT NULL,
    CONSTRAINT equipe_saude_pk PRIMARY KEY (id)
);

-- Table: paciente
CREATE TABLE paciente (
    id int  NOT NULL AUTO_INCREMENT,
    nome varchar(100)  NOT NULL,
    cpf varchar(14) NOT NULL UNIQUE,
    idade tinyint  NOT NULL,
    genero ENUM("MASCULINO","FEMININO","OUTRO")  NOT NULL,
    endereco varchar(255)  NOT NULL,
    CONSTRAINT paciente_pk PRIMARY KEY (id)
);

-- Table: tratamento
CREATE TABLE tratamento (
    id int  NOT NULL AUTO_INCREMENT,
    nome varchar(100)  NOT NULL,
    descricao Text  NOT NULL,
    CONSTRAINT tratamento_pk PRIMARY KEY (id)
);

-- Table: registro_medico
CREATE TABLE registro_medico (
    id int  NOT NULL AUTO_INCREMENT,
    data_registro datetime  NOT NULL,
    paciente_id int  NOT NULL,
    tratamento_id int  NOT NULL,
    doenca_id int  NOT NULL,
    equipe_saude_id int  NOT NULL,
    CONSTRAINT registro_medico_pk PRIMARY KEY (id)
);

-- foreign keys:
ALTER TABLE registro_medico ADD CONSTRAINT registro_medico_doenca FOREIGN KEY (doenca_id)
    REFERENCES doenca (id);

ALTER TABLE registro_medico ADD CONSTRAINT registro_medico_equipe_saude FOREIGN KEY (equipe_saude_id)
    REFERENCES equipe_saude (id);

ALTER TABLE registro_medico ADD CONSTRAINT registro_medico_paciente FOREIGN KEY (paciente_id)
    REFERENCES paciente (id);

ALTER TABLE registro_medico ADD CONSTRAINT registro_medico_tratamento FOREIGN KEY (tratamento_id)
    REFERENCES tratamento (id);

-- Alter Table: restrição de unicidade
ALTER TABLE registro_medico 
ADD CONSTRAINT registro_unico UNIQUE (paciente_id, data_registro);
