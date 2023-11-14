 create or replace function somar_clientes(data DATE)
   returns integer as $$
   declare
   total_clientes integer;
   begin
       select count(*)
       into total_clientes
       from clientes
       where date(data_cadastro) = data;
       return total_clientes;
   end;
