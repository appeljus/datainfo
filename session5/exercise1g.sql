create table Bestelling (
isbn varchar(255),
aantal int
);

create trigger
after insert on boek
for each row
execute procedure bestelling_update();

create function bestelling_update()
$BODY$
	begin
		if 	(select count(*) 
			from boek 
			where boek.auteur = new.auteur = 1 then
			insert into bestelling (isbn, aantal)
			values (new.isbn, 1)
		end if;
		return null;
	end;
$BODY language plpgsql