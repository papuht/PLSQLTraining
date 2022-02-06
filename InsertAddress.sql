CREATE OR REPLACE PROCEDURE InsertAddress(
	inputId IN Address.id%type,
	inputAddrId IN Address.Addr_Id%type,
	input_attr_key IN Address.attr_key%type,
	inputPostal IN Address.postal%type,
	inputStreetAddress IN Address.streetAddress%type,
	inputCity IN Address.city%type,
	inputRegion IN Address.region%type
)
AS
BEGIN
	INSERT INTO Address (id, Addr_Id, attr_key, postal, streetAddress, city, region) VALUES (inputId, inputAddrId, input_attr_key, inputPostal, inputStreetAddress, inputCity, inputRegion);
END;
/