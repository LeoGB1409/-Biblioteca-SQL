// SQL script to create and manage the BibliotecaSQL table
// Comando SQL para criara tabela de biblioteca

CREATE TABLE BibliotecaSQL (   
    id INTEGER PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    autor VARCHAR(255) NOT NULL,
    genero VARCHAR(255),
    ano_publicacao INTEGER,
    editora VARCHAR(255),
    paginas INTEGER
);
// SQL script to create a Status column in the BibliotecaSQL table
// Script SQL para criar a coluna de status na tabela BibliotecaSQL

ALTER TABLE BibliotecaSQL ADD status VARCHAR (20) 
CHECK (status IN ('Lido', 'Nao Lido', 'Lendo'));

INSERT INTO BibliotecaSQL (id, titulo, autor, genero, ano_publicacao, editora, paginas, status) VALUES
(1, 'SERIAL KILLERS: Louco ou Cruel?', 'Ilana Casoy', 'True Crime', 2022, 'DarkSide Books', 355, 'Lido'),
(2, 'Dracula', 'Bram Stroker', 'Horror', 1897, 'DarkSide Books', 560, 'Nao Lido'),
(3, 'O Fantasma da Opera', 'Gaston Leroux', 'Horror', 1910, 'DarkSide Books', 400, 'Lendo'),
(4, 'Frankenstein', 'Mary Shelley', 'Horror', 1818, 'DarkSide Books', 300, 'Nao Lido'),
(5, 'Hannibal: A Origem do Mal', 'Thomas Harris', 'Thriller', 1981, 'DarkSide Books', 450, 'Nao Lido'),
(6, 'O Dragão Vermelho', 'Thomas Harris', 'Thriller', 1981, 'Record', 400, 'Lido'),
(7, 'O Silêncio dos Inocentes', 'Thomas Harris', 'Thriller', 1988, 'Record', 500, 'Lido'),
(8, 'Hannibal', 'Thomas Harris', 'Thriller', 1999, 'Record', 550, 'Lido'),
(9, 'Millenium: Os Homens que nao Amavam as Mulheres', 'Stieg Larsson', 'Thriller', 2005, 'Companhia das Letras', 480, 'Nao Lido'),
(10, 'Meridiano de Sangue', 'Cormac McCarthy', 'Western', 1985, 'Alfaguara', 350, 'Lido'),
(11, 'O Poderoso Chefao', 'Mario Puzo', 'Crime', 1969, 'Record', 600, 'Nao Lido'),
(12, '1984', 'George Orwell', 'Distopia', 1949, 'Companhia das Letras', 328, 'Lido'),
(13, 'Carrie', 'Stephen King', 'Horror', 1974, 'Suma de Letras', 199, 'Lido'),
(14, 'Salem', 'Stephen King', 'Horror', 1975, 'Suma de Letras', 463, 'Lido'),
(15, 'O Iluminado', 'Stephen King', 'Horror', 1977, 'Suma de Letras', 463, 'Lido'),
(16, 'Jurrasic Park', 'Michael Crichton', 'Ficcao Cientifica', 1990, 'Suma de Letras', 400, 'Nao Lido'),
(17, 'O Mundo Perdido', 'Michael Crichton', 'Ficcao Cientifica', 1995, 'Suma de Letras', 450, 'Nao Lido'),
(18, 'Hamlet', 'William Shakespeare', 'Drama', 1603, 'Penguin Books', 200, 'Lido');

SELECT * FROM "BibliotecaSQL";

CREATE VIEW BibliotecaCompleta AS
SELECT id, titulo, autor, genero, ano_publicacao, editora, paginas, status FROM BibliotecaSQL
UNION ALL
SELECT id, titulo, mangaka, genero, ano_publicacao, editora, paginas, status FROM MangasBibliotecaSQL
UNION ALL
SELECT id, titulo, autor, genero, ano_publicacao, editora, paginas, status FROM HQSBibliotecaSQL;

SELECT
ROW_NUMBER() OVER () AS id_global, titulo, autor, genero, status, tipo FROM (
    SELECT titulo, autor, genero, status, 'Livro' AS tipo FROM BibliotecaSQL
    UNION ALL
    SELECT titulo, mangaka AS autor, genero, status, 'Manga' AS tipo FROM MangasBibliotecaSQL
    UNION ALL
    SELECT titulo, autor, genero, status, 'HQ' AS tipo FROM HQSBibliotecaSQL
) AS BibliotecaCompleta;

