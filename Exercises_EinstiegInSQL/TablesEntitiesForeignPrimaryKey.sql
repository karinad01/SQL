CREATE DATABASE bibliothek
DEFAULT CHARACTER SET utf8mb4;

CREATE TABLE verlag(
verlagid TINYINT PRIMARY KEY NOT NULL,
verlag VARCHAR(300)
);

CREATE TABLE fachbereich(
fachbereichid TINYINT PRIMARY KEY NOT NULL,
fachbereich VARCHAR(200)
);

CREATE TABLE fachbuch(
fachbuchid TINYINT PRIMARY KEY NOT NULL,
isbn VARCHAR(120),
titel VARCHAR(300),
fk_verlagid TINYINT
);

ALTER TABLE fachbuch
ADD CONSTRAINT fk_verlagid_verlag
FOREIGN KEY(fk_verlagid)
REFERENCES verlag(verlagid);


CREATE TABLE fachbereichbuch(
fk_fachbereichid TINYINT,
fk_fachbuchid TINYINT,
PRIMARY KEY (fk_fachbereichid, fk_fachbuchid)
);

ALTER TABLE fachbereichbuch
ADD CONSTRAINT fk_fachbereichid
FOREIGN KEY (fk_fachbereichid)
REFERENCES fachbereich(fachbereichid);

ALTER TABLE fachbereichbuch
ADD CONSTRAINT fk_fachbuchid
FOREIGN KEY (fk_fachbuchid)
REFERENCES fachbuch(fachbuchid);

#Seite 333 Uebung 1
INSERT INTO `verlag`
VALUES
(1, 'Rheinwerk Verlag'),
(2, 'Elektro Verlag'),
(3, 'Mechanik Verlag'),
(4, 'Kaufmann Verlag'),
(5, 'Medien Verlag');

INSERT INTO `fachbereich`
VALUES
(1, 'Elektrotechnik'),
(2, 'Kaufmann'),
(3, 'Mechanik'),
(4, 'Pneumatik');
