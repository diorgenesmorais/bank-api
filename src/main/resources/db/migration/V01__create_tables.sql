create table cliente (
	id int unsigned auto_increment,
	nome varchar(45) not null,
	cpf varchar(14) not null,
	telefone varchar(20) not null,
	primary key(id)
) engine=InnoDB;

create table agencia (
	id int unsigned auto_increment,
	nome varchar(45) not null,
	endereco varchar(45) not null,
	telefone varchar(14) not null,
	primary key(id)
) engine=InnoDB;
