CREATE DATABASE filmes;

USE filmes;


CREATE TABLE filmes (
 id_filme INT,
 titulo VARCHAR(60),
 genero VARCHAR(45),
 duracao VARCHAR(45),
 ano_lancamento INT,
 preco_aluguel DOUBLE,
 primary key (id_filme)
 );
 
 CREATE TABLE atuacoes (
 id_protagonista INT,
 id_filme int,
 id_ator int,
foreign key (id_filme) references filmes(id_filme),
foreign key (id_ator) references atores(id_ator )

 );
 
 CREATE TABLE atores (
 id_ator INT,
 nome_ator VARCHAR(60),
 ano_nascimento INT,
 nacionalidade VARCHAR(20),
 sexo VARCHAR(10),
 PRIMARY KEY(id_ator)
 );
 
 drop table atores;
 drop table filmes;
 drop table atuacoes;
 
 SELECT f.titulo, f.genero, nome_ator ,a.nacionalidade, a.sexo, f.ano_lancamento from atuacoes at
 inner join filmes f
 on f.id_filme =at.id_filme
 inner join atores a
 on at.id_ator = a.id_ator;
 
 select * from atuacoes;
 select * from atores; 
 select * from filmes;
 
 select f.titulo as TITULO ,f.ano_lancamento as ANO_LANCAMENTO
 from filmes f
 inner join filme 
 on a.id_ator =at.id_filme
 where a.nome_ator ='Al Pacino'; 
 
 select * from atuacoes;
 
 select * from filmes where id_filme = 37;
 
 select * from atores where id_ator = 37;
 
sELECT  f.titulo, f.genero, nome_ator ,a.nacionalidade, a.sexo, f.ano_lancamento from atuacoes at
 inner join filmes f
 on f.id_filme =at.id_filme
 inner join atores a 
 on a.id_ator = at.id_ator where f.titulo like 'r%';
 
 select f.titulo, f.ano_lancamento 
 from filmes f 
 inner join atuacoes a on f.id_filme = a.id_filme 
 inner join atores at on a.id_ator = at.id_ator 
 where at.nome_ator like 'al pacio';
 
 describe atores;
 
 select at.nome_ator, at.ano_nascimento 
 from atores at 
 inner join atuacoes a on at.id_ator = a.id_ator 
 inner join filmes f on a.id_filme = f.id_filme 
 where f.titulo like 'jogos vorazes';
 
 select distinct at.nome_ator, at.nacionalidade 
 from atores at 
 inner join atuacoes a on at.id_ator = a.id_ator 
 inner join filmes f on a.id_filme = f.id_filme 
 where at.nacionalidade like 'reino unido'
 and f.genero like 'drama';
 
 select at.nome_ator,f.titulo
 from atores at
 inner join atuacoes a on at.id_ator=a.id_ator
 inner join filmes f on a.id_filme = f.id_filme
 where f.ano_lancamento < 2010;
 
 
 
 
 
 
 

 
