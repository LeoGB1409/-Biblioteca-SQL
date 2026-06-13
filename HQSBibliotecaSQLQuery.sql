CREATE TABLE HQSBibliotecaSQL (   
    id INTEGER PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    autor VARCHAR(255) NOT NULL,
    artista VARCHAR(255),
    genero VARCHAR(255),
    ano_publicacao INTEGER,
    editora VARCHAR(255),
    paginas INTEGER,
    status VARCHAR (20)
    CHECK (status IN ('Lido', 'Nao Lido', 'Lendo'))
);

ALTER TABLE "HQSBibliotecaSQL" ADD COLUMN volumes INTEGER;

ALTER TABLE "HQSBibliotecaSQL" ADD COLUMN publisher VARCHAR (20) CHECK (publisher IN('DC', 'Marvel', 'Image', 'Dark Horse', 'Outros'));

insert into "HQSBibliotecaSQL" (id, titulo, autor, artista, genero, ano_publicacao, editora, paginas, status, volumes, publisher) VALUES
(1, 'Hellblazer: Ascensão e Queda', 'Tom Taylor', 'Darick Robertson', 'Horror', 2020, 'Panini', 200, 'Lido', 1, 'DC'),
(2, 'Batman: O Cavaleiro das Trevas', 'Frank Miller', 'Frank Miller', 'Super-Herói', 1986, 'Panini', 224, 'Lido', 1, 'DC'),
(3, 'Batman: Os Portões de Gotham', 'Zack Snyder', 'Evan Darkin', 'Super-Herói', 2011, 'Panini', 144, 'Lido', 1, 'DC'),
(4, 'Batman: A Piada Mortal', 'Alan Moore', 'Brian Bolland', 'Super-Herói', 1988, 'Panini', 48, 'Lido', 1, 'DC'),
(5, 'Coringa', 'Paul Dini', 'Jim Aparo', 'Super-Herói', 1989, 'Panini', 48, 'Lido', 1, 'DC'),
(6, 'Robin: O Menino-Prodigio', 'Juni Ba', 'Juni Ba', 'Super-Herói', 2019, 'Panini', 128, 'Lido', 1, 'DC'),
(7, 'Batman: O Longo Dia das Bruxas - Edição Definitiva', 'Jeph Loeb', 'Tim Sale', 'Super-Herói', 1996, 'Panini', 240, 'Lido', 1, 'DC'),
(8, 'Homem de Ferro: Guerra das Armaduras', 'David Michelinie & Bob Layton', 'Mark D. Bright', 'Super-Herói', 1992, 'Panini', 212, 'Lido', 1, 'Marvel'),
(9, 'Homem-Aranha: Aranhaverso', 'Dan Slott', 'Sara Pichelli', 'Super-Herói', 2014, 'Panini', 144, 'Lido', 1, 'Marvel'),
(10, 'Wolverine: Procura-se Mistica', 'Jason Aaron', 'Ron Garney', 'Super-Herói', 2014, 'Panini', 144, 'Nao Lido', 1, 'Marvel'),
(11, 'Vingadores: Mundo Vindicado', 'Jonathan Hickman', 'Esad Ribic', 'Super-Herói', 2015, 'Panini', 144, 'Lido', 1, 'Marvel'),
(12, 'Homem-Aranha/Deadpool', 'Thompson', 'Towe', 'Super-Herói', 2016, 'Panini', 144, 'Lido', 2, 'Marvel'),
(13, '2099', 'Peter David', 'Rick Leonardi', 'Super-Herói', 2020, 'Panini', 144, 'Nao Lido', 2, 'Marvel'),
(14, 'X-Men', 'Jonathan Hickman', 'Leinil Francis Yu', 'Super-Herói', 2019, 'Panini', 144, 'Lido', 1, 'Marvel'),
(15, 'Paladinos Marvel', 'Jason Aaron', 'Ed McGuinness', 'Super-Herói', 2019, 'Panini', 144, 'Lido', 2, 'Marvel'),
(16, 'A Saga dos X-Men', 'Chris Claremont', 'Jim Lee', 'Super-Herói', 1991, 'Panini', 144, 'Lido', 1, 'Marvel'),
(17, 'DC encontra Hanna-Barbera', 'Geoff Johns', 'Jim Lee', 'Super-Herói', 2016, 'Panini', 144, 'Lido', 1, 'DC'),
(18, 'Jovens Titãs', 'Adam Glass', 'Bernard Chang', 'Super-Herói', 2017, 'Panini', 144, 'Lido', 3, 'DC'),
(19, 'Lendas do Universo DC: Jovens Titãs', 'George Perez', 'George Perez', 'Super-Herói', 2017, 'Panini', 144, 'Lido', 1, 'DC'),
(20, 'Senhor Milagre', 'Tom King', 'Mitch Gerads', 'Super-Herói', 2017, 'Panini', 144, 'Lido', 2, 'DC'),
(21, 'Asa Noturna', 'Tom Taylor', 'Bruno Redondo', 'Super-Herói', 2019, 'Panini', 144, 'Lido', 1, 'DC'),
(22, 'Tartarugas Ninjas', 'Kevin Eastman & Peter Laird', 'Kevin Eastman & Peter Laird', 'Super-Herói', 1984, 'Pipoca & Nanquim', 144, 'Lido', 1, 'Outros'),
(23, 'Alien: A História Ilustrada', 'Archie Goodwin', 'Walter Simonson', 'Sci-fi', 1979, 'Excelsior', 64, 'Lido', 1, 'Outros'),
(24, 'The Walking Dead', 'Robert Kirkman', 'Tony Moore', 'Horror', 2003, 'Panini', 144, 'Lido', 6, 'Image'),
(25, 'Black Hammer', 'Jeff Lemire', 'Dean Ormston', 'Super-Herói', 2018, 'Panini', 144, 'Lido', 3, 'Dark Horse'),
(26, 'Star Wars Legends: O império - Darth Vader e o Nono Assasssino', 'Tim Siedel', 'Stephen Thompson', 'Sci-fi', 2019, 'Panini', 144, 'Lido', 1, 'Outros');

SELECT * FROM "HQSBibliotecaSQL"; 