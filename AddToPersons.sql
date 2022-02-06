CREATE OR REPLACE PROCEDURE AddPersons(
			inputId IN Persons.id%type, 
			inputFname IN Persons.fname%type, 
			inputSname IN Persons.sname%type, 
			inputAttrKey IN Persons.attr_key%type)
AS

	
BEGIN
	insert into Persons (id, fname, sname, attr_key) values (inputId, inputFname, inputSname, inputAttrKey);
END;
/ 