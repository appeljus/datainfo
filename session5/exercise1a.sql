create table Boek(
	isbn varchar(255) unique,
	titel varchar(255),
	auteur varchar(255),
	primary key(isbn)
);

create table Exemplaar(
	isbn varchar(255) references Boek(isbn) on update cascade on delete cascade,
	volgnummer int unique,
	gewicht int,
	kast varchar(255)
	primary key(isbn, volgnummer)
);`

