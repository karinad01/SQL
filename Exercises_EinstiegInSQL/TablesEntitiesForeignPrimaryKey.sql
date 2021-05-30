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

#Seite 333 Uebung 2
INSERT INTO `fachbuch`
VALUES
(1, '1235', 'Mechanik', 3),
(2, '9878', 'Elektrotechnik', 2),
(3, '2323', 'Elektronik', 2),
(4, '2254', 'Pneumatik', 3),
(5, '4455', 'Mathematik Grundlagen 1', 2),
(6, '4456', 'Mathematik Grundlagen 2', 2),
(7, '5566', 'Mengenlehre', NULL),
(8, '7766', 'Kommunikation 1', NULL),
(9, '7767', 'Kommunikation 2', NULL);

select * from fachbuch;

#Seite 334 Uebung 3
INSERT INTO fachbereichbuch
VALUES
(3,1),
(1,3),
(4,4),
(1,5),
(1,6),
(1,7),
(2,8),
(2,9);

SELECT*FROM fachbereichbuch;

