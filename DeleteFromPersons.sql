CREATE OR REPLACE PROCEDURE PurgeRecords( InputId IN Persons.id%type
)
AS
	this_addrId int;
	this_attr_key int;
BEGIN
	
	SELECT Addr_Id INTO this_addrId FROM Persons WHERE id = InputId;
	SELECT attr_key INTO this_attr_key FROM Persons WHERE id = InputId;
	DELETE FROM Persons WHERE Persons.id = InputId;
	DELETE FROM Address WHERE Addr_Id = this_addrId;
	DELETE FROM GeneralDescription WHERE attr_key = this_attr_key;
END;
/

