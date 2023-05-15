CREATE FUNCTION getAge(dataNasc date) 
RETURNS varchar AS $$
DECLARE
	 agei varchar;
BEGIN
	agei:= extract(year from age(dataNasc)) || ' years '
	||extract(months from age(dataNasc)) || 'months';
	RETURN agei;
END;
$$ LANGUAGE plpgsql;
