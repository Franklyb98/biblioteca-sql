-- Listar todos os livros com suas editoras
SELECT l.NomeLivro, e.NomeEditora
FROM Livros l
JOIN Editora e ON l.IdEditora = e.IdEditora;

-- Listar livros com seus autores
SELECT l.NomeLivro, a.NomeAutor, a.SobrenomeAutor
FROM Livros l
JOIN LivroAutor la ON l.IdLivro = la.IdLivro
JOIN Autor a ON la.IdAutor = a.IdAutor;

-- Quantidade de livros por editora
SELECT e.NomeEditora, COUNT(l.IdLivro) AS TotalLivros
FROM Editora e
JOIN Livros l ON e.IdEditora = l.IdEditora
GROUP BY e.NomeEditora;

-- Livros com mais de 200 páginas
SELECT NomeLivro, NumeroPaginas
FROM Livros
WHERE NumeroPaginas > 200;