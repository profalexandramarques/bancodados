BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "cursos" (
	"id_curso"	INTEGER,
	"nome"	TEXT NOT NULL,
	"cargahoraria"	INTEGER,
	PRIMARY KEY("id_curso" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "professores" (
	"id_prof"	INTEGER,
	"nome"	TEXT NOT NULL,
	"salario"	REAL,
	PRIMARY KEY("id_prof" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "aulas" (
	"id_aulas"	INTEGER,
	"id_curso"	NUMERIC,
	"id_aluno"	INTEGER,
	"id_prof"	INTEGER,
	"data"	TEXT NOT NULL,
	"hora"	TEXT NOT NULL,
	FOREIGN KEY("id_aluno") REFERENCES "alunos"("id_aluno"),
	FOREIGN KEY("id_prof") REFERENCES "professores"("id_prof"),
	FOREIGN KEY("id_curso") REFERENCES "cursos"("id_curso"),
	PRIMARY KEY("id_aulas" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "alunos" (
	"id_aluno"	INTEGER,
	"nome"	TEXT NOT NULL,
	"idade"	INTEGER,
	"fone"	TEXT,
	"email"	TEXT,
	"ativo"	INTEGER DEFAULT 'A',
	PRIMARY KEY("id_aluno" AUTOINCREMENT)
);
INSERT INTO "cursos" ("id_curso","nome","cargahoraria") VALUES (1,'Piano',20);
INSERT INTO "cursos" ("id_curso","nome","cargahoraria") VALUES (2,'Violão',40);
INSERT INTO "cursos" ("id_curso","nome","cargahoraria") VALUES (3,'Teclado',20);
INSERT INTO "professores" ("id_prof","nome","salario") VALUES (1,'Samira',25.0);
INSERT INTO "professores" ("id_prof","nome","salario") VALUES (2,'Jaquelin',25.0);
INSERT INTO "aulas" ("id_aulas","id_curso","id_aluno","id_prof","data","hora") VALUES (1,1,1,1,'02/06/2025','11:30');
INSERT INTO "alunos" ("id_aluno","nome","idade","fone","email","ativo") VALUES (1,'Abner',25,'9999900','abner@gmail.com','A');
INSERT INTO "alunos" ("id_aluno","nome","idade","fone","email","ativo") VALUES (2,'Maria Clara',18,'990055','mc@gmail.com','A');
COMMIT;
