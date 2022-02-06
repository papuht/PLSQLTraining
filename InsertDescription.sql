CREATE OR REPLACE PROCEDURE InsertDesc(
	inputId IN GeneralDescription.id%type,
	inputAttr_key IN GeneralDescription.attr_key%type,
	inputDesc IN GeneralDescription.description%type
)
AS
BEGIN
	INSERT INTO GeneralDescription(id, attr_key, description) VALUES (inputId, inputAttr_key, inputDesc);
END;
/