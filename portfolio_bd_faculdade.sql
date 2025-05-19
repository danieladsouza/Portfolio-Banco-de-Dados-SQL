create database db_sistema_faculdade;

use db_sistema_faculdade;

create table tbl_departamento (
	id int not null primary key auto_increment,
	nome varchar(45) not null,

	unique index (id)

);

create table tbl_professor (
	id int not null primary key auto_increment,
	nome varchar(100) not null,
	cpf varchar(45),
	titulacao varchar(45) not null,
	id_departamento int,

	constraint FK_Departamento_Professor
	foreign key (id_departamento)
	references tbl_departamento (id),

	unique index (id)

);

create table tbl_curso (
	id int not null primary key auto_increment,
	nome varchar(100) not null,
	grau varchar(45) not null,
	carga_horaria varchar(45),
	id_departamento int,

	constraint FK_Departamento_Curso
	foreign key (id_departamento)
	references tbl_departamento (id),

	unique index (id)

);

create table tbl_aluno (
	id int not null primary key auto_increment,
	nome varchar(100) not null,
	cpf varchar(18) not null,
	rg char(9) not null,
	id_curso int,

	constraint FK_Curso_Aluno
	foreign key (id_curso)
	references tbl_curso (id),

	unique index (id)

);

create table tbl_disciplina (
	id int not null primary key auto_increment,
	nome varchar(100) not null,
	codigo varchar(45) not null,
	carga_horaria varchar(45) not null,
	id_curso int,
	constraint FK_Curso_Disciplina
	foreign key (id_curso)
	references tbl_curso (id),

	unique index (id)

);

create table tbl_turma (
	id int not null primary key auto_increment,
	ano int not  null,
	semestre int not null,
	horario varchar(45) not null,
	sala varchar(45) not null,
	id_professor int,
	id_disciplina int,

	constraint FK_Professor_Turma
	foreign key (id_professor)
	references tbl_professor (id),

	constraint FK_Disciplina_Turma
	foreign key (id_disciplina)
	references tbl_disciplina (id),

	unique index (id)

);

create table tbl_matricula (
	id int not null primary key auto_increment,
	situacao varchar(45),
	data_matricula date not null,
	id_turma int,
	id_aluno int,

	constraint FK_Turma_Matricula
	foreign key (id_turma)
	references tbl_turma (id),

	constraint FK_Aluno_Turma
	foreign key (id_aluno)
	references tbl_aluno (id),

	unique index (id)

);

create table tbl_nota (
	id int not null primary key auto_increment,
	nota1 decimal not null,
	nota2 decimal not null,
	frequencia decimal not null,
	media_final decimal,
	situacao_final varchar(45),
	id_matricula int,

	constraint FK_Matricula_Nota 
	foreign key (id_matricula)
	references tbl_matricula (id),

	unique index (id)

);

create table tbl_endereco (
	id int not null primary key auto_increment,
	logradouro varchar(100) not null,
	bairro varchar(60) not null,
	cep varchar(9) not null,
	cidade varchar(60) not null,
	estado char(2) not null,
	pais varchar(60) not null,
	id_aluno int,

	constraint FK_Aluno_Endereco
	foreign key (id_aluno)
	references tbl_aluno (id),

	unique index (id)

);

create table tbl_email (
	id int not null primary key auto_increment,
	email varchar(255) not null,
	id_aluno int,
	id_professor int,

	constraint FK_Aluno_Email
	foreign key (id_aluno)
	references tbl_aluno (id),

	constraint FK_Professor_Email
	foreign key (id_professor)
	references tbl_professor (id),

	unique index (id)

);

create table tbl_telefone (
	id int not null primary key auto_increment,
	numero varchar(20) not null,
	id_aluno int,
	id_professor int,

	constraint FK_Aluno_Telefone
	foreign key (id_aluno)
	references tbl_aluno (id),

	constraint FK_Professor_Telefone
	foreign key (id_professor)
	references tbl_professor (id), 

	unique index (id)

);

show tables;