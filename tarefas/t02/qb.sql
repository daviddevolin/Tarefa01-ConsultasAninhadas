CREATE OR REPLACE FUNCTION AvgAge()
	RETURNS TABLE(id INT, departamento VARCHAR, media NUMERIC)
	LANGUAGE plpgsql
	AS $$
	BEGIN
		RETURN QUERY SELECT d.codigo AS id, d.sigla AS departamento, 
		ROUND(AVG(extract(year from age(f.datanasc))),1)  AS media_de_idade
		FROM funcionario f JOIN departamento d
		ON f.depto = d.codigo
		GROUP BY d.codigo
		ORDER BY d.codigo;
	END;
	$$;