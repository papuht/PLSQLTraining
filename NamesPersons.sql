CREATE OR REPLACE procedure NamesPersons
AS 
	cursor c_persons is 
	SELECT fname, sname FROM Persons;
	type namearray is VARRAY(4) of Persons.fname%type;
	nameList namearray := namearray();
	counter integer := 0;	
BEGIN
	FOR a in c_persons 
	LOOP
		counter := counter +1;
		nameList.extend;
		nameList(counter) := (a.fname || ' ' || a.sname);
		dbms_output.put_line(nameList(counter));
	END LOOP;
END;
/