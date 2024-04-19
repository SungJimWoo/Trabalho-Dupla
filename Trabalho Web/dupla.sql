create database biblioteca;

use biblioteca;

CREATE TABLE autor (
    id_autor INTEGER NOT NULL PRIMARY KEY auto_increment,
    nome_autor VARCHAR(255),
    biografia VARCHAR(1000),
    data_nascimento DATE
);

CREATE TABLE categoria (
    id_categoria INTEGER NOT NULL PRIMARY KEY auto_increment,
    nome_categoria VARCHAR(255) NOT NULL,
    descricao VARCHAR(1000)
); 

CREATE TABLE editora (
    id_editora INTEGER NOT NULL PRIMARY KEY auto_increment,
    nome_editora VARCHAR(255) NOT NULL,
    ano_fundacao DATE,
    pais VARCHAR(100)
);

CREATE TABLE livro (
    id_livro INTEGER NOT NULL PRIMARY KEY auto_increment,
    titulo VARCHAR(6000) NOT NULL,
    id_autor INTEGER NOT NULL,
    id_editora INTEGER NOT NULL,
    idioma VARCHAR(50),
    sinopse VARCHAR(10000) NOT NULL,
    id_categoria INTEGER NOT NULL,
    numero_paginas INTEGER,
    ano_publicacao YEAR
);

CREATE TABLE livroCategoria (
  id_livro INTEGER NOT NULL,
  id_categoria INTEGER NOT NULL
);
  
CREATE TABLE livroAutor (
    id_livro INTEGER NOT NULL,
    id_autor INTEGER NOT NULL
);

CREATE TABLE multa (
    id_multa INTEGER NOT NULL PRIMARY KEY auto_increment,
    devolucao BOOLEAN NOT NULL,
    valor FLOAT(10,2),
    status_pagamento VARCHAR(50),
    tipo_multa VARCHAR(1000),
    atrasado BOOLEAN NOT NULL,
    dias_atrasado INTEGER
);

CREATE TABLE leitor (
    id_leitor INTEGER NOT NULL PRIMARY KEY auto_increment,
    nome_leitor VARCHAR(100) NOT NULL,
    telefone VARCHAR(20) NOT NULL,
    cpf VARCHAR (12) NOT NULL,
    data_nascimento DATE
);

CREATE TABLE emprestimo (
    id_emprestimo INTEGER NOT NULL PRIMARY KEY auto_increment,
    id_leitor INTEGER NOT NULL,
    status_emprestimo VARCHAR(50) NOT NULL,
    data_emprestimo DATE NOT NULL,
    devolucao BOOLEAN NOT NULL,
    data_devolucao DATE
);

CREATE TABLE livroemprestimo (
    id_livro_emp INTEGER NOT NULL PRIMARY KEY auto_increment,
    id_emprestimo INTEGER NOT NULL,
    estado_livro VARCHAR(255) NOT NULL,
    id_livro INTEGER NOT NULL
);

alter table livro add constraint fk_autor_livro
	FOREIGN KEY (id_autor) REFERENCES autor(id_autor);
    
alter table livro add constraint fk_editora_livro
	FOREIGN KEY (id_editora) REFERENCES editora(id_editora);
    
alter table livro add constraint fk_categoria_livro
	FOREIGN KEY (id_categoria) REFERENCES categoria(id_categoria);    
    
alter table emprestimo add constraint fk_leitor_emprestimo
	FOREIGN KEY (id_leitor) REFERENCES leitor(id_leitor);
    
alter table livroemprestimo add constraint fk_emprestimo_livro_emprestimo
	FOREIGN KEY (id_emprestimo) REFERENCES emprestimo(id_emprestimo);
    
alter table livroemprestimo add constraint fk_livro_livro_emprestimo
	FOREIGN KEY (id_livro) REFERENCES livro(id_livro);   

alter table livroCategoria add constraint fk_livro_livro_categoria  
    FOREIGN KEY (id_livro) REFERENCES livro(id_livro);
    
alter table livroCategoria add constraint fk_categoria_livro_categoria
    FOREIGN KEY (id_categoria) REFERENCES categoria(id_categoria);
    
    