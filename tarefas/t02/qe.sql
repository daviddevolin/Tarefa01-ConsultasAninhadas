CREATE OR REPLACE FUNCTION projectDelay(cod_proj INT)
RETURNS INT
LANGUAGE plpgsql
AS $$
DECLARE
	pontualidade INTEGER;
BEGIN
	SELECT datafim - DATE(CURRENT_DATE AT TIME ZONE 'America/Fortaleza')
	INTO pontualidade
	FROM projeto p
	WHERE p.codigo = cod_proj;
	
	RETURN pontualidade;
END;
$$;