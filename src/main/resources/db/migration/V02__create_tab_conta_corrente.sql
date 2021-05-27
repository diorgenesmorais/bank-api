create table conta_corrente (
	id int unsigned auto_increment,
	agencia_id int unsigned not null,
	numero int not null,
	saldo decimal(11,2) default 0,
	cliente_id int unsigned not null,
	primary key (id),
  INDEX `fk_conta_corrente_cliente_idx` (`cliente_id` ASC),
  CONSTRAINT `fk_conta_corrente_cliente`
    FOREIGN KEY (`cliente_id`)
    REFERENCES `cliente` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  INDEX `fk_conta_corrente_agencia_idx` (`agencia_id` ASC),
  CONSTRAINT `fk_conta_corrente_agencia`
    FOREIGN KEY (`agencia_id`)
    REFERENCES `agencia` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
) engine=InnoDB;
