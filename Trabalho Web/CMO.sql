create database biblioteca;

CREATE TABLE multa (
    IdMulta INTEGER NOT NULL PRIMARY KEY auto_increment,
    IdDevolucao INTEGER,
    Valor FLOAT(10,2),
    StatusPagamento VARCHAR(50),
    TipoMulta VARCHAR(1000),
    IdAtrasado INTEGER,
    DiasAtrasado INTEGER,
    FOREIGN KEY (IdDevolucao) REFERENCES devolucao(IdDevolucao),
    FOREIGN KEY (IdAtrasado) REFERENCES atrasado(IdAtrasado)
);

CREATE TABLE autor (
    IdAutor INTEGER NOT NULL PRIMARY KEY auto_increment,
    Nome VARCHAR(255),
    Biografia VARCHAR(1000),
    DataNascimento DATE
);

CREATE TABLE categoria (
    IdCategoria INTEGER NOT NULL PRIMARY KEY auto_increment,
    NomeCategoria VARCHAR(255),
    Descricao VARCHAR(1000)
);

CREATE TABLE livro_categoria (
    IdLivro INT,
    IdCategoria INT,
    FOREIGN KEY (IdLivro) REFERENCES livro(IdLivro),
    FOREIGN KEY (IdCategoria) REFERENCES categoria(IdCategoria)
);

CREATE TABLE livro_autor (
    IdLivro INT,
    IdAutor INT,
    FOREIGN KEY (IdLivro) REFERENCES livro(IdLivro),
    FOREIGN KEY (IdAutor) REFERENCES autor(IdAutor)
);

CREATE TABLE livro (
    IdLivro INT PRIMARY KEY,
    Titulo VARCHAR(6000),
    IdAutor INT,
    IdEditora INT,
    Idioma VARCHAR(50),
    Sinopse VARCHAR(10000),
    IdCategoria INT,
    NumeroPaginas INT,
    AnoPublicacao DATE,
    FOREIGN KEY (IdAutor) REFERENCES autor(IdAutor),
    FOREIGN KEY (IdEditora) REFERENCES editora(IdEditora),
    FOREIGN KEY (IdCategoria) REFERENCES categoria(IdCategoria)
);

CREATE TABLE editora (
    IdEditora INT PRIMARY KEY,
    NomeEditora VARCHAR(255),
    AnoFundacao DATE,
    Pais VARCHAR(100)
);

CREATE TABLE livro_emprestimo (
    IdLivroEmp INT PRIMARY KEY,
    IdEmprestimo INT,
    EstadoLivro VARCHAR(255),
    IdLivro INT,
    FOREIGN KEY (IdEmprestimo) REFERENCES emprestimo(IdEmprestimo),
    FOREIGN KEY (IdLivro) REFERENCES livro(IdLivro)
);

CREATE TABLE emprestimo (
    IdEmprestimo INT PRIMARY KEY,
    IdLeitor INT,
    StatusEmprestimo VARCHAR(50),
    DataEmprestimo DATE,
    IdDevolucao INT,
    IdMulta INT,
    DataDevolucao DATE,
    CondicaoLivro VARCHAR(255),
    FOREIGN KEY (IdLeitor) REFERENCES leitor(IdLeitor),
    FOREIGN KEY (IdDevolucao) REFERENCES devolucao(IdDevolucao),
    FOREIGN KEY (IdMulta) REFERENCES multa(IdMulta)
);

CREATE TABLE leitor (
    IdLeitor INT PRIMARY KEY,
    Nome VARCHAR(100),
    Telefone VARCHAR(20),
    Registro INT
);
