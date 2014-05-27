create trigger boek 
before delete on boek
for each row
execute procedure exemplaar_update();

create function exemplaar_update() returns trigger as
$BODY$
	begin
		delete from exempaar 
		where exemplaar.isbn = old.isbn
	end;
$BODY language plpgsql