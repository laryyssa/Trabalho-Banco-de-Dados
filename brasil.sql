CREATE TABLE CPI
(
    codCPI  int AUTO_INCREMENT
        PRIMARY KEY,
    nomeCPI varchar(100) NOT NULL
);

CREATE TABLE Eleicao
(
    ano datetime NOT NULL
        PRIMARY KEY
);

CREATE TABLE Estado
(
    UF     varchar(2)  NOT NULL
        PRIMARY KEY,
    nome   varchar(20) NOT NULL,
    regiao varchar(20) NULL
);

CREATE TABLE Ministerio
(
    codMinisterio    int AUTO_INCREMENT
        PRIMARY KEY,
    nomeMinisterio   varchar(100)         NULL,
    statusMinisterio tinyint(1) DEFAULT 1 NOT NULL
);

CREATE TABLE Partido
(
    codPartido int AUTO_INCREMENT
        PRIMARY KEY,
    nome       varchar(100) NOT NULL
);

CREATE TABLE Pessoa
(
    CPF  varchar(11)  NOT NULL
        PRIMARY KEY,
    nome varchar(100) NULL
);

CREATE TABLE Poder
(
    codPoder int AUTO_INCREMENT
        PRIMARY KEY,
    nome     varchar(20) NULL
);

CREATE TABLE CargoPolitico
(
    codCargoPolitico int AUTO_INCREMENT
        PRIMARY KEY,
    UF               varchar(2)   NULL,
    salario          float        NULL,
    nome             varchar(100) NULL,
    codPoder         int          NOT NULL,
    CONSTRAINT CargoPolitico_Estado_UF_fk
        FOREIGN KEY (UF) REFERENCES Estado (UF),
    CONSTRAINT CargoPolitico_Poder_codPoder_fk
        FOREIGN KEY (codPoder) REFERENCES Poder (codPoder)
);

CREATE TABLE Governo
(
    codGoverno        int AUTO_INCREMENT
        PRIMARY KEY,
    tipoGoverno       varchar(10) NOT NULL,
    dataFimGoverno    datetime    NULL,
    dataInicioGoverno datetime    NOT NULL,
    codPoder          int         NULL,
    CONSTRAINT Governo_Poder_codPoder_fk
        FOREIGN KEY (codPoder) REFERENCES Poder (codPoder)
);

CREATE TABLE GovernoMinisterio
(
    codGoverno    int NOT NULL,
    codMinisterio int NOT NULL,
    PRIMARY KEY (codGoverno, codMinisterio),
    CONSTRAINT GovernoMinisterio_Governo_codGoverno_fk
        FOREIGN KEY (codGoverno) REFERENCES Governo (codGoverno),
    CONSTRAINT GovernoMinisterio_Ministerio_codMinisterio_fk
        FOREIGN KEY (codMinisterio) REFERENCES Ministerio (codMinisterio)
);

CREATE TABLE ProjetoLei
(
    numeroProjetoLei int AUTO_INCREMENT
        PRIMARY KEY,
    ano              datetime NOT NULL
);

CREATE TABLE Secretaria
(
    codSecretaria  int AUTO_INCREMENT
        PRIMARY KEY,
    nomeSecretaria varchar(100) NULL,
    codMinisterio  int          NULL,
    CONSTRAINT Secretaria_Ministerio_codMinisterio_fk
        FOREIGN KEY (codMinisterio) REFERENCES Ministerio (codMinisterio)
);

CREATE TABLE AgentePolitico
(
    CPF              varchar(11)  NOT NULL
        PRIMARY KEY,
    codPartido       int          NOT NULL,
    codMinisterio    int          NULL,
    codSecretaria    int          NULL,
    codGoverno       int          NULL,
    codCargoPolitico int          NULL,
    funcaoMinisterio varchar(100) NULL,
    funcaoSecretaria varchar(100) NULL,
    funcaoGoverno    varchar(100) NULL,
    CONSTRAINT AgentePolitico_CargoPolitico_codGoverno_fk
        FOREIGN KEY (codCargoPolitico) REFERENCES CargoPolitico (codCargoPolitico),
    CONSTRAINT AgentePolitico_Governo_codGoverno_fk
        FOREIGN KEY (codGoverno) REFERENCES Governo (codGoverno),
    CONSTRAINT AgentePolitico_Ministerio_codMinisterio_fk
        FOREIGN KEY (codMinisterio) REFERENCES Ministerio (codMinisterio),
    CONSTRAINT AgentePolitico_Partido_codPartido_fk
        FOREIGN KEY (codPartido) REFERENCES Partido (codPartido),
    CONSTRAINT AgentePolitico_Secretaria_codSecretaria_fk
        FOREIGN KEY (codSecretaria) REFERENCES Secretaria (codSecretaria)
);

CREATE TABLE GovernoSecretaria
(
    codGoverno    int NOT NULL,
    codSecretaria int NOT NULL,
    PRIMARY KEY (codSecretaria, codGoverno),
    CONSTRAINT GovernoSecretaria_Governo_codGoverno_fk
        FOREIGN KEY (codGoverno) REFERENCES Governo (codGoverno),
    CONSTRAINT GovernoSecretaria_codSecretaria_fk
        FOREIGN KEY (codSecretaria) REFERENCES Secretaria (codSecretaria)
);

CREATE TABLE OrcamentoAnual
(
    codOrcamentoAnual int AUTO_INCREMENT
        PRIMARY KEY,
    ano               datetime     NOT NULL,
    nome              varchar(100) NULL,
    codMinisterio     int          NULL,
    codSecretaria     int          NULL,
    valorMinisterio   float        NULL,
    valorSecretaria   float        NULL,
    CONSTRAINT OrcamentoAnual_Ministerio_codMinisterio_fk
        FOREIGN KEY (codMinisterio) REFERENCES Ministerio (codMinisterio),
    CONSTRAINT OrcamentoAnual_Secretaria_codSecretaria_fk
        FOREIGN KEY (codSecretaria) REFERENCES Secretaria (codSecretaria)
);

CREATE TABLE GovernoOrcamentoAnual
(
    codGoverno        int NOT NULL,
    codOrcamentoAnual int NOT NULL,
    PRIMARY KEY (codGoverno, codOrcamentoAnual),
    CONSTRAINT GovernoOrcamentoAnual_Governo_null_fk
        FOREIGN KEY (codGoverno) REFERENCES Governo (codGoverno),
    CONSTRAINT GovernoOrcamentoAnual_OrcamentoAnual_null_fk
        FOREIGN KEY (codOrcamentoAnual) REFERENCES OrcamentoAnual (codOrcamentoAnual)
);

CREATE TABLE ServidorPublico
(
    CPF              varchar(11)  NOT NULL,
    salario          float        NULL,
    codMinisterio    int          NULL,
    codSecretaria    int          NULL,
    funcaoSecretaria varchar(100) NULL,
    funcaoMinisterio varchar(100) NULL,
    CONSTRAINT ServidorPublico_Ministerio_fk
        FOREIGN KEY (codMinisterio) REFERENCES Ministerio (codMinisterio),
    CONSTRAINT ServidorPublico_Secretaria_codSecretaria_fk
        FOREIGN KEY (codSecretaria) REFERENCES Secretaria (codSecretaria)
);

CREATE TABLE StatusCandidatura
(
    codStatusCandidatura int AUTO_INCREMENT
        PRIMARY KEY,
    titulo               varchar(100) NOT NULL
);

CREATE TABLE Candidatura
(
    codCandidatura       int AUTO_INCREMENT
        PRIMARY KEY,
    codCargoPolitico     int         NOT NULL,
    numeroCandidato      varchar(10) NOT NULL,
    CPF                  varchar(11) NOT NULL,
    ano                  datetime    NULL,
    codStatusCandidatura int         NULL,
    CONSTRAINT Candidatura_AgentePolitico_CPF_fk
        FOREIGN KEY (CPF) REFERENCES AgentePolitico (CPF),
    CONSTRAINT Candidatura_CargoPolitico_codCargoPolitico_fk
        FOREIGN KEY (codCargoPolitico) REFERENCES CargoPolitico (codCargoPolitico),
    CONSTRAINT Candidatura_Eleicao_ano_fk
        FOREIGN KEY (ano) REFERENCES Eleicao (ano),
    CONSTRAINT Candidatura_StatusCandidatura_codsc_fk
        FOREIGN KEY (codStatusCandidatura) REFERENCES StatusCandidatura (codStatusCandidatura)
);

CREATE TABLE CandidaturaCPI
(
    codCandidatura int NOT NULL,
    codCPI         int NOT NULL,
    PRIMARY KEY (codCandidatura, codCPI),
    CONSTRAINT CandidaturaCPI_CPI_codCpi_fk
        FOREIGN KEY (codCPI) REFERENCES CPI (codCPI),
    CONSTRAINT CandidaturaCPI_Candidatura_codCandidatura_fk
        FOREIGN KEY (codCandidatura) REFERENCES Candidatura (codCandidatura)
);

CREATE TABLE CandidaturaProjetoLei
(
    codCandidatura   int NOT NULL,
    numeroProjetoLei int NOT NULL,
    PRIMARY KEY (codCandidatura, numeroProjetoLei),
    CONSTRAINT CandidaturaProjetoLei_Candidatura_codC_fk
        FOREIGN KEY (codCandidatura) REFERENCES Candidatura (codCandidatura),
    CONSTRAINT CandidaturaProjetoLei_ProjetoLei_projetoLei_fk
        FOREIGN KEY (numeroProjetoLei) REFERENCES ProjetoLei (numeroProjetoLei)
);

