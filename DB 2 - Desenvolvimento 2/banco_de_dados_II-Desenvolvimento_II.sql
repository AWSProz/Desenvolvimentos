create database db_empresa;

use db_empresa;

create table departamentos (
    id_departamento bigint not null auto_increment,
    nome_depart varchar(50) not null,
    media_salarial decimal(10, 2),
primary key(id_departamento));


create table funcionarios (
    id_funcionario  bigint not null auto_increment,
    nome varchar(50) not null,
    salario decimal(10, 2) not null,
    cadastro timestamp not null,
primary key(id_funcionario));

alter table funcionarios add column id_departamento bigint(20);
alter table funcionarios add foreign key (id_departamento)
references departamentos (id_departamento);


delimiter //
create trigger calculadora
after insert on funcionarios
for each row
begin
    declare total_salario decimal(10, 2);
    declare total_funcionarios int;
    declare novo_salario_medio decimal(10, 2);
    
    
    select sum(salario) into total_salario
    from funcionarios
    where id_departamento = new.id_departamento;
    
    select count(*) into total_funcionarios
    from funcionarios
    where id_departamento = new.id_departamento;
    
    
    if total_funcionarios > 0 then
        set novo_salario_medio = total_salario / total_funcionarios;
    else
        set novo_salario_medio = 0;
    end if;
    

    update departamentos
    set media_salarial = novo_salario_medio
    where id_departamento = NEW.id_departamento;
end;
//
delimiter ;

insert into departamentos values (default, 'RH', '5000.00');
insert into funcionarios values (default, 'Carlos', '7500.00', default, '1');



