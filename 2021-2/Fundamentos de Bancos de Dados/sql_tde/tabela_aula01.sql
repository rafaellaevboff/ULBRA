CREATE TABLE colaboradores
(
  id int not null primary key,
  nome varchar(100) not null,
  n_matricula int not null,
  endereco_email varchar(100) not null,
  senha_login int not null
);

CREATE TABLE projetos
(
  id int not null primary key,
  estimativa_horas float not null,
  descricao varchar(200) not null,
  nome varchar(70) not null,
  id_admin INT NOT null,
  
  constraint projetos_colaboradores_fk
      foreign key (id_admin)
          references colaboradores(id)
);

CREATE TABLE projetos_participantes
(
  id_participante INT NOT null,
  id_projeto INT NOT null,

  constraint projetos_participantes_participantes_projetos_fk
      foreign key (id_participante)
          references colaboradores(id),
  
  constraint projeto_participantes_projetos_fk
      foreign key(id_projeto)
          references projetos(id)
);


CREATE TABLE projetos_sociais
(
  id int not null primary key,
  id_projeto INT NOT null,
  publico_beneficiario varchar(100) not null
);

CREATE TABLE projetos_melhoria_de_processo
(
  id int not null primary key,
  resultados_esperados int not null,
  departamento varchar(100) not null,
  id_projeto INT NOT null,

  constraint projetos_id_fk
    foreign key(id_projeto)
      references projetos(id)
);

CREATE TABLE comentarios
(
  id int not null primary key,
  conteudo varchar(200) not null,
  data_hora datetime not null,
  id_colaborador INT NOT null,

  constraint comentarios_colaborador_comentario
      foreign key(id_colaborador)
          references colaboradores(id)
);