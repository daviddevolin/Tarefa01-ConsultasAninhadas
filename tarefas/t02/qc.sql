CREATE OR REPLACE PROCEDURE aboveAvgAge()
LANGUAGE plpgsql
AS $$
DECLARE
    media RECORD;
	f RECORD;
BEGIN
	FOR f IN SELECT * FROM funcionario as fun  JOIN departamento d 
	ON fun.depto = d.codigo
    LOOP
		FOR media IN SELECT * FROM avgAge()
		LOOP
        	IF extract(year from age(f.datanasc)) > media.media AND f.depto = media.id THEN
				RAISE NOTICE ' o funcionario % está acima da media do seu departamento', f.nome;
			END IF;
        END LOOP;
    END LOOP;
END;
$$;
