CREATE OR REPLACE PROCEDURE projectTeam(cod INT)
LANGUAGE plpgsql
AS $$
DECLARE
	proj RECORD;
BEGIN
			FOR proj IN SELECT f.nome, d.sigla FROM projeto p
						JOIN equipe e ON p.equipe = e.codigo
						JOIN membro m ON m.codequipe = e.codigo
						JOIN funcionario f ON f.codigo = m.codfuncionario
						JOIN departamento d ON f.depto = d.codigo
						WHERE p.codigo = cod
			LOOP
			RAISE NOTICE 'Funcionário: %, Departamento: %', proj.nome, proj.sigla;
			END LOOP;
		END;
	$$;
	
