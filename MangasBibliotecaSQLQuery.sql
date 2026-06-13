CREATE TABLE MangasBibliotecaSQL (   
    id INTEGER PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    mangaka VARCHAR(255) NOT NULL,
    genero VARCHAR(255),
    ano_publicacao INTEGER,
    editora VARCHAR(255),
    paginas INTEGER,
    status VARCHAR (20)
    CHECK (status IN ('Lido', 'Nao Lido', 'Lendo')),
    volumes INTEGER,
    tipo VARCHAR (20) 
    CHECK (tipo IN ('Shonen', 'Shojo', 'Seinen', 'Josei', 'Kodomo', 'Outros'))
);

INSERT INTO "MangasBibliotecaSQL" (id, titulo, mangaka, genero, ano_publicacao, editora, paginas, status, volumes, tipo) VALUES
(1, 'BERSERK', 'Kentaro Miura', 'Ação, Fantasia Sombria', 1989, 'Panini', 300, 'Lendo', 3, 'Seinen'),
(2, 'CHAINSAW MAN', 'Tatsuki Fujimoto', 'Ação, Horror, Sobrenatural', 2018, 'Panini', 200, 'Lendo', 4, 'Shonen'),
(3, 'DEMON SLAYER', 'Koyoharu Gotouge', 'Ação, Fantasia', 2016, 'Panini', 200, 'Lendo', 16, 'Shonen'),
(4, 'Fullmetal Alchemist', 'Hiromu Arakawa', 'Ação, Aventura, Fantasia', 2001, 'JBC', 250, 'Lendo', 8, 'Shonen'),
(5, 'Hunter x Hunter', 'Yoshihiro Togashi', 'Ação, Aventura', 1998, 'JBC', 200, 'Lendo', 11, 'Shonen'),
(6, 'JoJo''s Bizarre Adventure - Steel Ball Run', 'Hirohiko Araki', 'Ação, Faroeste', 2004, 'Panini', 250, 'Lendo', 2, 'Seinen'),
(7, 'Vinland Saga', 'Makoto Yukimura', 'Ação, Aventura, Histórico', 2008, 'Panini', 250, 'Lendo', 1, 'Seinen'),
(8, 'Tokyo Ghoul', 'Sui Ishida', 'Ação, Horror, Sobrenatural', 2011, 'Panini', 200, 'Lido', 14, 'Seinen'),
(9, 'Tokyo Ghoul:RE', 'Sui Ishida', 'Ação, Horror, Sobrenatural', 2014, 'Panini', 200, 'Lido', 16, 'Seinen'),
(10, 'MONSTER', 'Naoki Urasawa', 'Mistério, Suspense, Psicológico, Thriller', 1998, 'Panini', 400, 'Lendo', 3, 'Seinen');

SELECT * FROM "MangasBibliotecaSQL";