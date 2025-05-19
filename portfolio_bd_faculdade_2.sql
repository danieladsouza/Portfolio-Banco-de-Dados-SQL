show tables;

use db_sistema_faculdade;

insert into tbl_departamento (		
nome
) values (
'Departamento de Biomedicina'
);
                                    
                                    
insert into tbl_departamento (		
nome
) values (
'Departamento de Matemática'
);
                                    
insert into tbl_departamento (
nome
) values (
'Departamento de Ciências da Computação'
);                                    
                                    
insert into tbl_departamento (	
nome
) values (
'Departamento de Física'
);
             
insert into tbl_departamento (	
nome
) values (
'Departamento de Química'
);
                                    
insert into tbl_departamento (	
nome
) values (
'Departamento de Biologia'
);

insert into tbl_professor (	
nome, 	
cpf, 
titulacao,
id_departamento
) values (
'Leonardo Nascimento',
'12345678910',
'Graduado',
'3'
);

insert into tbl_professor (		
nome,
cpf,
titulacao,
id_departamento
) values (
'Cláudia Santos',
'35794682015',
'Mestre',
'5'
);

insert into tbl_professor (		
nome,
cpf,
titulacao,
id_departamento
) values (
'Maria Souza',
'04872395044',
'Graduado',
'6'
);

insert into tbl_curso (	
nome,
grau,
carga_horaria,
id_departamento
) values (
'Análise e Desenvolvimento de Sistemas',
'Tecnólogo',
'1.600',
'3'
);

insert into tbl_curso (	
nome,
grau,
carga_horaria,
id_departamento
) values (
'Engenharia de Software',
'Bacharelado',
'3.600',
'3'
);

insert into tbl_curso (	
nome,
grau,
carga_horaria,
id_departamento
) values (
'Biologia Marinha',
'Bacharelado',
'3.000',
'6'
);
                            
insert into tbl_curso (	
nome,
grau,
carga_horaria,
id_departamento
) values (
'Engenharia Física',
'Bacharelado',
'3.700',
'4'
);
                            
insert into tbl_curso (	
nome,
grau,
carga_horaria,
id_departamento
) values (
'Matemática Aplicada',
'Bacharelado',
'3.800',
'2'
);
                                                        
insert into tbl_aluno (		
nome,
cpf,
rg,
id_curso
) values (
'Daniela Dias',
'82015357946',
'456789123',
'1'
);
                            
insert into tbl_aluno (	
nome,
cpf,
rg,
id_curso
) values (
'Adenir Pinto',
'26835914766',
'678901234',
'4'
);
                            
insert into tbl_aluno (		
	nome,
	cpf,
	rg,
	id_curso
	) values (
	'Flavia Souza',
	'60491827599',
	'901234568',
	'5'
); 

insert into tbl_endereco (	
	logradouro,
	bairro,
	cep,
	cidade,
	estado,
	pais,
	id_aluno
	) values (
	'Rua das Palmeiras, 123',
	'Jardim Esperança',
	'04567-890',
	'Campinas',
	'SP',
	'Brasil',
	'3'
);

insert into tbl_endereco (		
	logradouro,
	bairro,
	cep,
	cidade,
	estado,
	pais,
	id_aluno
	) values (
	'Rua das Orquídeas, 120',
	'Vila Mariana',
	'04128-000',
	'São Paulo',
	'SP',
	'Brasil',
	'2'
);           
                                
insert into tbl_endereco (		
	logradouro,
	bairro,
	cep,
	cidade,
	estado,
	pais,
	id_aluno
	) values (
	'Travessa Ipê Roxo, 45',
	'Parque Universitário',
	'13075-123',
	'Campinas',
	'SP',
	'Brasil',
	'1'
);        

insert into tbl_email (	
	email,
	id_aluno
	) values (
	'alunoexemplar@gmail.com',
	'3'
);

insert into tbl_email (		
	email,
	id_professor
	) values (
	'professorlegal@gmail.com',
	'2'
);

insert into tbl_disciplina (	
	nome,
	codigo,
	carga_horaria,
	id_curso
	) values (
	'Lógica de Programação',
	'ADS101',
	'80',
	'1'
);
                                
insert into tbl_turma (		
	ano,
	semestre,
	horario,
	sala,
	id_professor,
	id_disciplina
	) values (
	'2025',
	'1',
	'19:00 - 21:00',
	'7',
	'1',
	'1'
);
                            
insert into tbl_matricula (		
	situacao,
	data_matricula,
	id_turma,
	id_aluno
	) values (
	'Ativa',
	'2025-02-03',
	'1',
	'2'
);
                                
insert into tbl_telefone (		
	numero,
	id_aluno,
	id_professor 
	) values (
	'ADS0001',
	'2',
	'1'
);
                                
insert into tbl_nota (		
	nota1,		                                
	nota2,    
	frequencia,    
	media_final,    
	situacao_final,    
	id_matricula    
	) values (
	'10',
	'7',
	'15',
	'8',
	'Aprovado',
	'1'
);

select
tbl_aluno.nome as nome_aluno,
tbl_curso.nome as nome_curso
from  tbl_aluno 
inner join tbl_curso on tbl_aluno.id_curso = tbl_curso.id;

select
a.nome as aluno_nome,
m.situacao as situacao_matricula,
n.nota1 as nota_aluno,
n.nota2 as nota_aluno2
from tbl_aluno a
inner join tbl_matricula m on m.id_aluno = a.id
inner join tbl_nota n on m.id = n.id_matricula;

select * from tbl_disciplina;
select * from tbl_professor;
select * from tbl_turma;
select * from tbl_matricula;