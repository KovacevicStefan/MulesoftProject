create table destinacija(
	destinacijaid serial primary key,
	mesto varchar(255) NOT NULL,
	drzava varchar(255) NOT NULL,
	opis varchar(255)
)

CREATE TABLE Turisticka_Agencija (
  turistickaAgencijaID SERIAL PRIMARY KEY,
  naziv VARCHAR(255) NOT NULL,
  adresa VARCHAR(255) NOT NULL,
  kontakt VARCHAR(255) NOT NULL
);

CREATE TABLE Hotel (
  hotelID SERIAL PRIMARY KEY,
  naziv VARCHAR(255) NOT NULL,
  broj_zvezdica INTEGER CHECK (broj_zvezdica IN (1, 2, 3, 4, 5)),
  ima_bazen BOOLEAN,
  opis VARCHAR(255),
  destinacijaID INTEGER REFERENCES Destinacija(destinacijaID) not null
);

drop table aranzman
drop table hotel
drop table turisticka_agencija
drop table destinacija

CREATE TABLE Aranzman (
  aranzmanid SERIAL PRIMARY KEY,
  ukupna_cena DECIMAL(10, 2),
  realizovan BOOLEAN,
  datum_realizacije DATE,
  hotelid INTEGER REFERENCES hotel(hotelid) not null,
  turistickaagencijaid INTEGER REFERENCES turisticka_agencija(turistickaagencijaid) not null
);


INSERT INTO destinacija (mesto, drzava, opis)
VALUES ('Pariz', 'Francuska', 'Grad svetlosti i ljubavi');
INSERT INTO destinacija (mesto, drzava, opis)
VALUES ('London', 'Velika Britanija', 'Grad istorije i kulture');
INSERT INTO destinacija (mesto, drzava, opis)
VALUES ('Rim', 'Italija', 'Grad večnog sjaja i istorijskih spomenika');
INSERT INTO destinacija (mesto, drzava, opis)
VALUES ('Atina', 'Grčka', 'Grad bogate antičke istorije i arhitekture');
INSERT INTO destinacija (mesto, drzava, opis)
VALUES ('Dubrovnik', 'Hrvatska', 'Grad sa prelepim plažama i istorijskim znamenitostima');
INSERT INTO Turisticka_Agencija (naziv, adresa, kontakt)
VALUES ('Putovanja Plus', 'Beogradska 12, Beograd', '+381 11 123456');
INSERT INTO Turisticka_Agencija (naziv, adresa, kontakt)
VALUES ('Explore World', 'Novosadska 5, Novi Sad', '+381 21 987654');
INSERT INTO Turisticka_Agencija (naziv, adresa, kontakt)
VALUES ('Dream Holidays', 'Narodnog Fronta 7, Kragujevac', '+381 34 567890');
INSERT INTO Turisticka_Agencija (naziv, adresa, kontakt)
VALUES ('Sea Adventures', 'Primorska 3, Budva', '+382 33 112233');
INSERT INTO Turisticka_Agencija (naziv, adresa, kontakt)
VALUES ('Mountain Magic', 'Planinska 1, Zlatibor', '+381 31 445566');
INSERT INTO Hotel (naziv, broj_zvezdica, ima_bazen, opis, destinacijaID)
VALUES ('Hotel Eiffel', 4, true, 'Luksuzni hotel u samom centru Pariza.', 1);
INSERT INTO Hotel (naziv, broj_zvezdica, ima_bazen, opis, destinacijaID)
VALUES ('Royal London', 5, true, 'Elegantni hotel u srcu Londona.', 2);
INSERT INTO Hotel (naziv, broj_zvezdica, ima_bazen, opis, destinacijaID)
VALUES ('La Dolce Vita', 3, false, 'Udoban hotel smešten u blizini rimskih spomenika.', 3);
INSERT INTO Hotel (naziv, broj_zvezdica, ima_bazen, opis, destinacijaID)
VALUES ('Athenian Palace', 4, true, 'Raskošan hotel s pogledom na Akropolj.', 4);
INSERT INTO Hotel (naziv, broj_zvezdica, ima_bazen, opis, destinacijaID)
VALUES ('Adriatic Resort', 5, true, 'Ekskluzivni hotelski kompleks na obali Jadranskog mora.', 5);
INSERT INTO Aranzman (ukupna_cena, realizovan, datum_realizacije, hotelid, turistickaagencijaid)
VALUES (12000, true, '2023-07-15', 1, 1);
INSERT INTO Aranzman (ukupna_cena, realizovan, datum_realizacije, hotelid, turistickaagencijaid)
VALUES (15000, true, '2023-08-25', 2, 2);
INSERT INTO Aranzman (ukupna_cena, realizovan, datum_realizacije, hotelid, turistickaagencijaid)
VALUES (30000, true, '2023-09-05', 3, 3);
INSERT INTO Aranzman (ukupna_cena, realizovan, datum_realizacije, hotelid, turistickaagencijaid)
VALUES (60000, false, '2023-09-20', 4, 4);
INSERT INTO Aranzman (ukupna_cena, realizovan, datum_realizacije, hotelid, turistickaagencijaid)
VALUES (25000, true, '2023-10-10', 5, 5);



