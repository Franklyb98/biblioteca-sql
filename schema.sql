Table Autor {
  IdAutor smallint [pk]
  NomeAutor varchar
  SobrenomeAutor varchar
}

Table Editora {
  IdEditora smallint [pk]
  NomeEditora varchar
}

Table Assunto {
  IdAssunto tinyint [pk]
  NomeAssunto varchar
}

Table Livros {
  IdLivro smallint [pk]
  NomeLivro varchar
  ISBN13 char [unique]
  DataPub date
  PrecoLivro money
  NumeroPaginas smallint
  IdEditora smallint
  IdAssunto tinyint
}

Table LivroAutor {
  IdLivro smallint
  IdAutor smallint

  indexes {
    (IdLivro, IdAutor) [pk]
  }
}

Ref: Livros.IdEditora > Editora.IdEditora
Ref: Livros.IdAssunto > Assunto.IdAssunto
Ref: LivroAutor.IdLivro > Livros.IdLivro
Ref: LivroAutor.IdAutor > Autor.IdAutor