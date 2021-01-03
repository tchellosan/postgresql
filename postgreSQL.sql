sudo -i -u postgres psql
alter user postgres with password 'senha';
psql -U postgres postgres -h localhost

create user marcelo superuser;
alter user marcelo password 'marcelo'
psql -U marcelo postgres -h localhost
--------------------------------------------------------------------

\dt		=> listar tabelas
\d tabela 	=> constraints de uma tabela

pg_dump --host localhost --port 5432 --username postgres --format tar --file dbpostgres.backup postgres
pg_restore --host localhost --port 5432 --username marcelo --dbname db00 dbpostgres.backup

COPY funcionarios (
funcionario_codigo,
funcionario_nome,
funcionario_situacao,
funcionario_comissao,
funcionario_cargo,
data_criacao,
data_atualizacao)
FROM '/home/marcelo/funcionario.csv'
DELIMITER ';'
CSV HEADER;

master password pgadmin
pgadmin