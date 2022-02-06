CREATE OR REPLACE PROCEDURE DeletePersons( InputId IN Persons.id%type
)
AS
	this_addrId int;
BEGIN
	
	SELECT Addr_Id INTO this_addrId FROM Persons WHERE id = InputId;
	DELETE FROM Persons WHERE Persons.id = InputId;
	DELETE FROM Address WHERE Addr_Id = this_addrId;
END;
/

