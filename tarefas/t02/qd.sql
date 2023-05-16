CREATE OR REPLACE FUNCTION activityDelay(cod_ativ INT)
RETURNS INT
LANGUAGE plpgsql
AS
$$
DECLARE
	pontualidade INTEGER;
BEGIN
	SELECT datafim - DATE(CURRENT_DATE AT TIME ZONE 'America/Fortaleza')
	INTO pontualidade
	FROM atividade a
	WHERE a.codigo = cod_ativ;
	
	RETURN pontualidade;
END;
$$;