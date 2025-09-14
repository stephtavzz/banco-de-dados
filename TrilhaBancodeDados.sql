CREATE DATABASE Filmes;
USE Filmes;

-- Tabela de Atores
CREATE TABLE Atores (
    Id INT PRIMARY KEY IDENTITY(1,1),
    PrimeiroNome VARCHAR(20) NULL,
    UltimoNome VARCHAR(20) NULL,
    Genero VARCHAR(1) NULL -- M ou F
);

-- Tabela de Filmes
CREATE TABLE Filmes (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Nome VARCHAR(50) NULL,
    Ano INT NULL,
    Duracao INT NULL
);

-- Tabela de Generos
CREATE TABLE Generos (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Genero VARCHAR(20) NULL
);

-- Relação Filmes x Generos (muitos para muitos)
CREATE TABLE FilmesGenero (
    Id INT PRIMARY KEY IDENTITY(1,1),
    IdGenero INT NULL,
    IdFilme INT NULL,
    FOREIGN KEY (IdGenero) REFERENCES Generos(Id),
    FOREIGN KEY (IdFilme) REFERENCES Filmes(Id)
);

-- Elenco dos Filmes (atores que participaram)
CREATE TABLE ElencoFilme (
    Id INT PRIMARY KEY IDENTITY(1,1),
    IdAtor INT NOT NULL,
    IdFilme INT NOT NULL,
    Papel VARCHAR(30) NULL,
    FOREIGN KEY (IdAtor) REFERENCES Atores(Id),
    FOREIGN KEY (IdFilme) REFERENCES Filmes(Id)
);

-- Generos
INSERT INTO Generos (Genero) VALUES ('Ação');
INSERT INTO Generos (Genero) VALUES ('Drama');
INSERT INTO Generos (Genero) VALUES ('Comédia');
INSERT INTO Generos (Genero) VALUES ('Mistério');
INSERT INTO Generos (Genero) VALUES ('Fantasia');
INSERT INTO Generos (Genero) VALUES ('Romance');

-- Filmes
INSERT INTO Filmes (Nome, Ano, Duracao) VALUES ('De Volta para o Futuro', 1985, 116);
INSERT INTO Filmes (Nome, Ano, Duracao) VALUES ('Titanic', 1997, 195);
INSERT INTO Filmes (Nome, Ano, Duracao) VALUES ('O Senhor dos Anéis: A Sociedade do Anel', 2001, 178);
INSERT INTO Filmes (Nome, Ano, Duracao) VALUES ('O Senhor dos Anéis: As Duas Torres', 2002, 179);
INSERT INTO Filmes (Nome, Ano, Duracao) VALUES ('O Senhor dos Anéis: O Retorno do Rei', 2003, 201);
INSERT INTO Filmes (Nome, Ano, Duracao) VALUES ('Matrix', 1999, 136);
INSERT INTO Filmes (Nome, Ano, Duracao) VALUES ('Vingadores: Ultimato', 2019, 181);
INSERT INTO Filmes (Nome, Ano, Duracao) VALUES ('Clube da Luta', 1999, 139);
INSERT INTO Filmes (Nome, Ano, Duracao) VALUES ('Forrest Gump', 1994, 142);
INSERT INTO Filmes (Nome, Ano, Duracao) VALUES ('A Origem', 2010, 148);

-- Atores
INSERT INTO Atores (PrimeiroNome, UltimoNome, Genero) VALUES ('Michael', 'Fox', 'M');
INSERT INTO Atores (PrimeiroNome, UltimoNome, Genero) VALUES ('Christopher', 'Lloyd', 'M');
INSERT INTO Atores (PrimeiroNome, UltimoNome, Genero) VALUES ('Kate', 'Winslet', 'F');
INSERT INTO Atores (PrimeiroNome, UltimoNome, Genero) VALUES ('Leonardo', 'DiCaprio', 'M');
INSERT INTO Atores (PrimeiroNome, UltimoNome, Genero) VALUES ('Elijah', 'Wood', 'M');
INSERT INTO Atores (PrimeiroNome, UltimoNome, Genero) VALUES ('Ian', 'McKellen', 'M');
INSERT INTO Atores (PrimeiroNome, UltimoNome, Genero) VALUES ('Keanu', 'Reeves', 'M');
INSERT INTO Atores (PrimeiroNome, UltimoNome, Genero) VALUES ('Carrie-Anne', 'Moss', 'F');
INSERT INTO Atores (PrimeiroNome, UltimoNome, Genero) VALUES ('Robert', 'Downey Jr.', 'M');
INSERT INTO Atores (PrimeiroNome, UltimoNome, Genero) VALUES ('Scarlett', 'Johansson', 'F');
INSERT INTO Atores (PrimeiroNome, UltimoNome, Genero) VALUES ('Brad', 'Pitt', 'M');
INSERT INTO Atores (PrimeiroNome, UltimoNome, Genero) VALUES ('Edward', 'Norton', 'M');
INSERT INTO Atores (PrimeiroNome, UltimoNome, Genero) VALUES ('Tom', 'Hanks', 'M');
INSERT INTO Atores (PrimeiroNome, UltimoNome, Genero) VALUES ('Joseph', 'Gordon-Levitt', 'M');

-- Filmes x Generos
INSERT INTO FilmesGenero (IdGenero, IdFilme) VALUES (1, 1); -- De Volta para o Futuro -> Ação
INSERT INTO FilmesGenero (IdGenero, IdFilme) VALUES (5, 1); -- De Volta para o Futuro -> Fantasia
INSERT INTO FilmesGenero (IdGenero, IdFilme) VALUES (2, 2); -- Titanic -> Drama
INSERT INTO FilmesGenero (IdGenero, IdFilme) VALUES (6, 2); -- Titanic -> Romance
INSERT INTO FilmesGenero (IdGenero, IdFilme) VALUES (5, 3); -- Sociedade do Anel -> Fantasia
INSERT INTO FilmesGenero (IdGenero, IdFilme) VALUES (1, 3); -- Sociedade do Anel -> Ação
INSERT INTO FilmesGenero (IdGenero, IdFilme) VALUES (5, 4); -- Duas Torres -> Fantasia
INSERT INTO FilmesGenero (IdGenero, IdFilme) VALUES (5, 5); -- Retorno do Rei -> Fantasia
INSERT INTO FilmesGenero (IdGenero, IdFilme) VALUES (1, 6); -- Matrix -> Ação
INSERT INTO FilmesGenero (IdGenero, IdFilme) VALUES (4, 6); -- Matrix -> Mistério
INSERT INTO FilmesGenero (IdGenero, IdFilme) VALUES (1, 7); -- Vingadores Ultimato -> Ação
INSERT INTO FilmesGenero (IdGenero, IdFilme) VALUES (5, 7); -- Vingadores Ultimato -> Fantasia
INSERT INTO FilmesGenero (IdGenero, IdFilme) VALUES (2, 8); -- Clube da Luta -> Drama
INSERT INTO FilmesGenero (IdGenero, IdFilme) VALUES (2, 9); -- Forrest Gump -> Drama
INSERT INTO FilmesGenero (IdGenero, IdFilme) VALUES (6, 9); -- Forrest Gump -> Romance
INSERT INTO FilmesGenero (IdGenero, IdFilme) VALUES (4, 10); -- A Origem -> Mistério
INSERT INTO FilmesGenero (IdGenero, IdFilme) VALUES (1, 10); -- A Origem -> Ação

-- Elenco dos Filmes
INSERT INTO ElencoFilme (IdAtor, IdFilme, Papel) VALUES (1, 1, 'Marty McFly');
INSERT INTO ElencoFilme (IdAtor, IdFilme, Papel) VALUES (2, 1, 'Dr. Emmett Brown');
INSERT INTO ElencoFilme (IdAtor, IdFilme, Papel) VALUES (3, 2, 'Rose');
INSERT INTO ElencoFilme (IdAtor, IdFilme, Papel) VALUES (4, 2, 'Jack Dawson');
INSERT INTO ElencoFilme (IdAtor, IdFilme, Papel) VALUES (5, 3, 'Frodo');
INSERT INTO ElencoFilme (IdAtor, IdFilme, Papel) VALUES (6, 3, 'Gandalf');
INSERT INTO ElencoFilme (IdAtor, IdFilme, Papel) VALUES (5, 4, 'Frodo');
INSERT INTO ElencoFilme (IdAtor, IdFilme, Papel) VALUES (6, 4, 'Gandalf');
INSERT INTO ElencoFilme (IdAtor, IdFilme, Papel) VALUES (5, 5, 'Frodo');
INSERT INTO ElencoFilme (IdAtor, IdFilme, Papel) VALUES (6, 5, 'Gandalf');
INSERT INTO ElencoFilme (IdAtor, IdFilme, Papel) VALUES (7, 6, 'Neo');
INSERT INTO ElencoFilme (IdAtor, IdFilme, Papel) VALUES (8, 6, 'Trinity');
INSERT INTO ElencoFilme (IdAtor, IdFilme, Papel) VALUES (9, 7, 'Homem de Ferro');
INSERT INTO ElencoFilme (IdAtor, IdFilme, Papel) VALUES (10, 7, 'Viúva Negra');
INSERT INTO ElencoFilme (IdAtor, IdFilme, Papel) VALUES (11, 8, 'Tyler Durden');
INSERT INTO ElencoFilme (IdAtor, IdFilme, Papel) VALUES (12, 8, 'Narrador');
INSERT INTO ElencoFilme (IdAtor, IdFilme, Papel) VALUES (13, 9, 'Forrest Gump');
INSERT INTO ElencoFilme (IdAtor, IdFilme, Papel) VALUES (4, 10, 'Cobb');
INSERT INTO ElencoFilme (IdAtor, IdFilme, Papel) VALUES (14, 10, 'Arthur');

SELECT Nome, Ano
FROM Filmes;

SELECT Nome, Ano
FROM Filmes
ORDER BY Ano ASC;

SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Nome = 'De Volta para o Futuro';

SELECT Nome, Ano
FROM Filmes
WHERE Ano = 1997;

SELECT Nome, Ano
FROM Filmes
WHERE Ano > 2000;

SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC;

SELECT Ano, COUNT(*) AS QuantidadeFilmes
FROM Filmes
GROUP BY Ano
ORDER BY QuantidadeFilmes DESC;

SELECT PrimeiroNome, UltimoNome
FROM Atores
WHERE Genero = 'M';

SELECT PrimeiroNome, UltimoNome
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome ASC;

SELECT f.Nome AS Filme, g.Genero
FROM Filmes f
INNER JOIN FilmesGenero fg ON f.Id = fg.IdFilme
INNER JOIN Generos g ON fg.IdGenero = g.Id;

SELECT f.Nome AS Filme, g.Genero
FROM Filmes f
INNER JOIN FilmesGenero fg ON f.Id = fg.IdFilme
INNER JOIN Generos g ON fg.IdGenero = g.Id
WHERE g.Genero = 'Mistério';

SELECT f.Nome AS Filme, a.PrimeiroNome, a.UltimoNome, e.Papel
FROM ElencoFilme e
INNER JOIN Filmes f ON e.IdFilme = f.Id
INNER JOIN Atores a ON e.IdAtor = a.Id;
