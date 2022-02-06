CREATE OR REPLACE PROCEDURE ShowAddress(
	inputAddrId IN Persons.Addr_Id%type
)
AS	
	this_fname varchar(20); 
	this_sname varchar(20);
BEGIN
	FOR a in (SELECT fname, sname INTO this_fname, this_sname 
	FROM Persons
	WHERE Addr_Id = inputAddrId)
	LOOP 
		this_fname := a.fname;
		this_sname := a.sname;
		dbms_output.put_line(this_fname ||' ' || this_sname);
	END LOOP;
		DECLARE 
			address_Id int := inputAddrId;
			this_address varchar(50);
			this_postal int;
			this_region varchar(50);
			this_city varchar(20);
		BEGIN
		FOR b in (SELECT streetAddress, postal, region, city INTO this_address, this_postal, this_region, this_city 
			FROM Address
			WHERE Addr_Id = address_Id)
		LOOP
			this_address := b.streetAddress;
			this_postal := b.postal;
			this_region := b.region;
			this_city := b.city;
			dbms_output.put_line(this_address);
			dbms_output.put_line(this_postal);
			dbms_output.put_line(this_city);
			dbms_output.put_line(this_region);
		END LOOP;
		END;
END;
/