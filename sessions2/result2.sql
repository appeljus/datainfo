INSERT INTO F (x, y, violation, motivation)
VALUES	('ABC', 'EF', false, 'Uit deze FD kunnen alle waardes achterhaald worden.'), 
		('E', 'D', true, 'Uit deze FD kunnen alleen E, D en A achterhaald worden'), 
		('D', 'A', true, 'Uit deze FD kunnen alleen D en A achterhaald worden.');
		
INSERT INTO F1 (x, y, violation, motivation)
VALUES ('E', 'D', false, 'De eerste decompositie van R, de violation is er nu uitgehaald, volgens het algoritme');
		
INSERT INTO F2 (x, y, violation, motivation)
VALUES 	('ABC', 'EF', true, 'Deze violate nu ook, omdat D niet meer entailed.'),
		('E', 'A', true, 'Wordt E > A, want D zit niet in deze R. Deze FD is nog steeds een violation.');
		
INSERT INTO F2a (x, y, violation, motivation)
VALUES ('ABC', 'EF', false, 'De decompositie van R2 heeft deze FD');

INSERT INTO F2b (x, y, violation, motivation)
VALUES ('E', 'A', false, 'De decompositie van R2 heeft deze FD');