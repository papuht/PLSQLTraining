CREATE OR REPLACE PROCEDURE ShowAddress2(
			inputAddrId IN Persons.Addr_Id%type
			)
AS 
	this_fname varchar(20);
	this_sname varchar(20);
BEGIN
	SELECT fname, sname INTO this_fname, this_sname
	FROM Persons 
	WHERE Addr_Id = inputAddrId;
END;
/