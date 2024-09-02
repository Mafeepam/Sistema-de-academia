
CREATE SCHEMA IF NOT EXISTS fitness;

DROP TABLE fitness.academia

CREATE TABLE IF NOT EXISTS fitness.academia (
    matricula SERIAL PRIMARY KEY,
    nome VARCHAR(255),
    slogan VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS fitness.servicos (
    matricula SERIAL PRIMARY KEY,
    nome VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS fitness.equipamentos (
    matricula SERIAL PRIMARY KEY,
    nome VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS fitness.caracteristicas (
    matricula SERIAL PRIMARY KEY,
    nome VARCHAR(255),
    descricao TEXT
);

CREATE TABLE IF NOT EXISTS fitness.instrutores (
    matricula SERIAL PRIMARY KEY,
    nome VARCHAR(255),
    imagem_url VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS fitness.contato (
    matricula SERIAL PRIMARY KEY,
    nome VARCHAR(255),
    email VARCHAR(255),
    assunto VARCHAR(255),
    mensagem TEXT
);

CREATE TABLE IF NOT EXISTS fitness.treino(
	tipo VARCHAR(255),
	repetição SMALLINT
	

);

CREATE TABLE IF NOT EXISTS fitness.aulas(
	aula VARCHAR(255),
	horario TIME
);


INSERT INTO fitness.academia (nome, slogan) VALUES 
('Introducing Fitness Passion', 'Winners Train, Losers Complain');

INSERT INTO fitness.servicos (nome) VALUES 
('Medidor de pressão'), 
('Tops equipamentos de academia'), 
('Melhor da cidade');

INSERT INTO fitness.equipamentos (nome) VALUES 
('Esteira Ergométrica'), 
('Spinning'), 
('Esteira');

INSERT INTO fitness.caracteristicas (nome, descricao) VALUES 
('Retina Ready', 'Descrição sobre Retina Ready'), 
('Responsive Framework', 'Descrição sobre Responsive Framework'), 
('Parallax Design', 'Descrição sobre Parallax Design');

INSERT INTO fitness.instrutores (nome, imagem_url) VALUES 
('Jane Doe', 'https://www.shutterstock.com/image-photo/young-happy-female-coach-looking-260nw-2018564699.jpg'), 
('John Smith', 'https://thumbs.dreamstime.com/b/academia-telef%C3%B4nica-e-selfie-de-exerc%C3%ADcio-aptid%C3%A3o-do-homem-negro-com-forte-musculatura-fisiculturista-sorridente-instrutor-259830654.jpg');

INSERT INTO fitness.contato (nome, email, assunto, mensagem) VALUES 
('Carlos Silva', 'carlos@example.com', 'Informações', 'Gostaria de saber mais sobre as aulas de spinning.');

INSERT INTO fitness.treino (tipo, repetição) VALUES 
('Supino', 15),
('Agachamento', 15),
('LegPress', 15),
('Crucifixo', 15),
('Elevação lateral', 15);

INSERT INTO fitness.aulas (aula, horario) VALUES
('Dança', '20:30'),
('Box', '17:30'),
('Pilates', '19:30');

SELECT nome, slogan FROM fitness.academia WHERE matricula = 1;

SELECT nome FROM fitness.servicos;

SELECT nome FROM fitness.equipamentos;

SELECT nome, descricao FROM fitness.caracteristicas;

SELECT nome, imagem_url FROM fitness.instrutores;

SELECT nome, email, assunto, mensagem FROM fitness.contato;

SELECT tipo, repetição FROM fitness.treino;

SELECT aula, horario FROM fitness.aulas;
