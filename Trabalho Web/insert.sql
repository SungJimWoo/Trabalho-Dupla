INSERT INTO autor (nome, biografia, data_nascimento) 
VALUES ("JOHN GREEN", "Nascido em 24 de agosto de 1977 em Indianapolis, Indiana. Graduado em Estudos Religiosos e Literatura 
Inglesa pela Universidade de Kenyon, Green é reconhecido por suas obras voltadas para o público juvenil que abordam temas como amor, 
perda e identidade.", 1977-08-24),
("JOHN RONALD REUEL TOLKIEN", "Tolkien nasceu em Bloemfontein, na República do Estado Livre de Orange, na atual 
África do Sul, e, aos três anos de idade, com a sua mãe e irmão, passou a viver na Inglaterra, terra natal de seus pais. 
Desde pequeno fascinado pela linguística, fez a licenciatura na faculdade de Letras em Exeter.", "1892.01.03"),
("JOANNE JO ROWLING", "Nascida em 31 de julho de 1965 em Yate, Gloucestershire, Inglaterra. Rowling teve uma infância 
modesta na cidade de Winterbourne, onde desenvolveu seu amor pela leitura e pela escrita desde cedo. Depois de concluir seus 
estudos na Universidade de Exeter, ela trabalhou em vários empregos, incluindo como professora de inglês no exterior.", "1965.07.31");

INSERT INTO categoria (nome_categoria, descricao) 
VALUES ('Romance', 'Romance é uma obra literária que apresenta narrativa em prosa, normalmente longa, 
com fatos criados ou relacionados a personagens. Essas personagens vivem diferentes conflitos ou situações dramáticas,
numa sequência de tempo relativamente ampla.'),
('Ficcao Cientifica','é um gênero da ficção especulativa, que normalmente lida com conceitos ficcionais e imaginativos, 
relacionados ao futuro, ciência e tecnologia, e seus impactos e/ou consequências em uma determinada sociedade ou em seus indivíduos, 
desenvolvido no século XIX. Conhecida também como a literatura das ideias, evita utilizar-se do sobrenatural, tema mais recorrente 
na Fantasia, baseando-se em fatos científicos e reais para compor enredos ficcionais.'),
('Fantasia','É um gênero da ficção em que se usa geralmente fenômenos sobrenaturais, mágicos e outros como um elemento 
primário do enredo, tema ou configuração. Muitas obras dentro do gênero ocorrem em mundos imaginários onde há criaturas mágicas e 
itens mágicos. Geralmente a fantasia distingue-se dos gêneros ficção científica e horror pela expectativa de que ele dirige claramente de 
temas científicos e macabros, respetivamente, embora haja uma grande sobreposição entre os três, todos os quais são subgêneros da ficção 
especulativa. Muitas vezes sendo acompanhada pelo romance.');

INSERT INTO editora (nome_editora, ano_fundacao, pais)
VALUES ("Dutton Books","1852.04.17","Estados Unidos"),
("George Allen & Unwin","1871.04.04","Reino Unido"),
("Bloomsbury","1986.02.26","Reino Unido");

INSERT INTO livro (titulo, id_autor, id_editora, idioma, sinopse, id_categoria, numero_paginas, ano_publicacao)
VALUES ("A culpa e das Estrelas","1","1","ingles","É um romance escrito por John Green que narra a história de Hazel Grace Lancaster, 
uma jovem de dezesseis anos com câncer, que se apaixona por Augustus Waters, um rapaz igualmente encantador que ela conhece num grupo 
de apoio a pacientes com câncer. Juntos, eles embarcam em uma jornada emocionante de amor, amizade e autodescoberta, enquanto enfrentam 
os desafios da doença e os questionamentos sobre o sentido da vida. O livro aborda temas profundos como a mortalidade, o amor incondicional 
e a busca pela felicidade mesmo diante das adversidades.","1", "313", "2012"),
("A Sociedade dos Aneis","2","2","ingles","É o primeiro livro da trilogia Senhor dos Aneis escrita por J.R.R. Tolkien. A história começa 
com a descoberta do Um Anel pelo hobbit Bilbo Bolseiro em sua aventura retratada em O Hobbit. O protagonista, Frodo Baggins, 
recebe o Anel e parte em uma jornada para destruí-lo antes que caia nas mãos do maligno Senhor do Escuro, Sauron. Ele é acompanhado 
por uma comunidade diversificada de personagens, incluindo outros hobbits, humanos, elfos, anões e um mago, formando a Sociedade do Anel. 
Juntos, enfrentam uma série de desafios e perigos enquanto viajam pela Terra Média em direção a Mordor, onde o Anel pode ser destruído.","2",
"400","1954"),
("Harry Potter","3","3","ingles","Harry Potter é um garoto órfão que vive infeliz com seus tios, os Dursleys. 
Ele recebe uma carta contendo um convite para ingressar em Hogwarts, uma famosa escola especializada em formar jovens bruxos. 
Inicialmente, Harry é impedido de ler a carta por seu tio, mas logo recebe a visita de Hagrid, o guarda-caça de Hogwarts, que chega 
para levá-lo até a escola. Harry adentra um mundo mágico que jamais imaginara, vivendo diversas aventuras com seus novos amigos, Rony 
Weasley e Hermione Granger.","3", "208", "2017");

INSERT INTO multa (devolucao, valor, status_pagamento, tipo_multa, atrasado, dias_atrasado)
VALUES (true, 5, 'Pago', 'Danificado: riscado', false, 0),
(false, 6, 'A receber', 'Atraso', true, 6),
(true, 15, 'A receber', 'Danificado: pagina arrancada', false, 0);

INSERT INTO leitor (nome, telefone, cpf)
VALUES ('Emmanuel Augusto Juca', 4143239089, 74368209589),
('Gabriel Rodrigues', 4148651230, 98474825161),
('Jonas Welton da Silva', 4148961227, 48691102597);

INSERT INTO emprestimo (id_leitor, status_emprestimo, data_emprestimo, devolucao, data_devolucao)
VALUES (1, 'devolvido', '2024-03-19', true, '2024-04-01'),
(2, 'Atrasado', '2024-02-19', false, NULL),
(3, 'Devolvido', '2023-12-09', true, '2024-12-25');

INSERT INTO livroemprestimo (id_emprestimo, estado_livro, id_livro)
VALUES (1, 'Danificado', 1);

INSERT INTO livroemprestimo (id_emprestimo, estado_livro, id_livro)
VALUES (2, 'Emprestado', 2);

INSERT INTO livroemprestimo (id_emprestimo, estado_livro, id_livro)
VALUES (2, 'Danificado', 3);




 ´mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm
 4
   


 select * from leitor
-- delete from multa where id_multa = 1