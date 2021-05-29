#Seite 104/ Uebung 1
SELECT name, vorname, geschlecht, abteilung
FROM mitarbeiter
where abteilung = 'Vertrieb'
and
geschlecht = 'm';

#Seite 104, Uebung 2
select name, vorname, krankenversicherung
from mitarbeiter
where krankenversicherung = 'MH Plus Bonn'
or
 krankenversicherung = 'IK gesund plus';
 
 #Seite 104 Uebung 3
 SELECT name, vorname, gebdatum, austrittsgrund
 from `mitarbeiter`
 where gebdatum < '1995-01-01'
 and
 austrittsgrund IS NULL;
 
 #Seite 104 Uebung 4
 SELECT name, vorname, verheiratet, geschlecht, anzahlkinder, 5000
 from mitarbeiter
 where 
 geschlecht = 'w'
 and
 verheiratet = 'nein'
 and
 anzahlkinder>0;
 
#Seite 108 Uebung 2
SELECT *
from krankenkasse
limit 10;

#Seite 118 Uebung 1
SELECT 
name, 
vorname, 
abteilung
FROM
`mitarbeiter`
ORDER BY
`abteilung`;

#Seite 118 Uebung 2
SELECT
name,
vorname,
abteilung
FROM
`mitarbeiter`
ORDER BY
`abteilung` DESC;

#Seite 119 Uebung 3
SELECT
name,
vorname,
abteilung,
bonus
FROM
`mitarbeiter`
ORDER BY 
`abteilung`, `bonus`;

#Seite 119 Uebung 4
SELECT
name,
vorname,
austrittsdatum
FROM
`mitarbeiter`
ORDER BY
`austrittsdatum` DESC;

#Seite 119 Uebung 5
SELECT
name,
vorname,
austrittsdatum,
austrittsgrund
FROM
`mitarbeiter`
WHERE 
`austrittsgrund` = 'ruhestand'
ORDER BY 
`austrittsdatum`; 

#Seite 123 Uebung 1
SELECT 'Hallo', 'Du';

#Seite 123 Uebung 2
SELECT name, vorname, 'hat am', gebdatum, 'Geburtstag'
FROM
`mitarbeiter`;

#Seite 123 Uebung 3
SELECT name, vorname, 'erhaelt', 120, 'Bonuspunkte'
FROM
mitarbeiter;

#Seite 127 Uebung 1
SELECT 
name AS Name,
vorname AS Vorname,
strasse AS Strasse,
hausnummer AS Hausnummer,
plz AS Postleitzahl,
ort AS Ort
FROM 
`mitarbeiter`;

#Seite 128 Uebung 2
SELECT 
'Herzlich willkommen', name, vorname AS Begruessung
FROM
`mitarbeiter`;

#Seite 130 Uebung 1
SELECT DISTINCT produkt, beschreibung, marktbewertung
FROM `produktgleich`; 

#Seite 141 Uebung 1
INSERT INTO `qualifikationen`(`qid`, `bezeichnung`, `kuerzel`, `kategorie`)
VALUES
(7, 'SQL', 'ITE', 'Informatik');

#Seite 141 Uebung 2
INSERT INTO `qualifikationen`(`bezeichnung`, `qid`, `kategorie`, `kuerzel`)
VALUES
('Administrator', 8, 'Support', 'ADA');

#Seite 141 Uebung 3
INSERT INTO `qualifikationen` (`qid`, `bezeichnung`)
VALUES (9, 'Catering');

SELECT qid, bezeichnung, kuerzel, kategorie
FROM `qualifikationen`;

#Seite 141 Uebung 4
INSERT INTO `qualifikationen`(`qid`, `bezeichnung`, `kuerzel`, `kategorie`)
VALUES (10, 'Projektleitung', NULL, NULL);

#Seite 142 Uebung 5
INSERT INTO `qualifikationen` (`bezeichnung`, `kuerzel`, `kategorie`, `qid`)
VALUES('Personalverwaltung', 'PEV', 'Personal', 11);

SELECT qid, bezeichnung, kuerzel, kategorie
FROM `qualifikationen`;

#Seite 152 Uebung 1
UPDATE `qualglobal`
SET bezeichnung = 'Second Level Helpdesk'
WHERE 
qid = 2;

#Seite 152 Uebung 2
UPDATE `qualglobal`
SET bezeichnung = 'First Level Helpdesk', kuerzel = 'FLS'
WHERE
qid = 3;

SELECT qid, bezeichnung, kuerzel, kategorie
FROM qualglobal
WHERE
qid = 3;

#Seite 153 Uebung 3
UPDATE `qualglobal`
SET kuerzel = null
WHERE kuerzel = 'MSO';

SELECT qid, bezeichnung, kuerzel, kategorie
FROM qualglobal
WHERE
kuerzel is NULL;

#Seite 153 Uebung 4
UPDATE `qualglobal`
SET kategorie = 'Wird überarbeitet';

SELECT qid, bezeichnung, kuerzel, kategorie
FROM qualglobal;

#Seite 153 Uebung 5
UPDATE qualglobal
SET qid = 5
WHERE qid = 100;

#Seite 157 Uebung 1
DELETE FROM qualglobal
WHERE qid = 2;

#Seite 157 Uebung 2
DELETE FROM qualglobalarchiv
WHERE qid = 5
or
qid = 6
or
qid = 7;

#Seite 157 Uebung 3
DELETE FROM qualglobalarchiv;

#Seite 160 Uebung 1
TRUNCATE TABLE `hardware`;

 #Seite 181 Uebung 1
 SELECT CAST('5' AS UNSIGNED INTEGER) + 20 AS summe;
 
 #Seite 181 Uebung 2
 SELECT 1000000 + '5.8' AS summe;
 
 #Seite 193 Uebung 1
 CREATE TABLE `fahrzeugtyp`(
 typid tinyint PRIMARY KEY,
 hersteller VARCHAR(200),
 modell VARCHAR(200),
 leistung DECIMAL(5.2),
 motor VARCHAR(100),
 getriebe VARCHAR(100)
 );
 
 #Seite 194 Uebung 2
 INSERT INTO fahrzeugtyp
 VALUES 
 (1, 'VW', 'Polo', 100.78, 'Benzin', 'Automatik'),
 (2, 'Toyota', 'Yaris', 75.00, 'Benzin', 'Manuell');
 
 SELECT * from fahrzeugtyp;
 
 #Seite 194 Uebung 3
 DROP TABLE fahrzeugtyp;
 
 #Seite 205 Uebung 1
 CREATE TABLE `mitarbeiterjubilaeum`(
 geschenkid TINYINT PRIMARY KEY,
 artikel VARCHAR(200) NOT NULL,
 preis DECIMAL(5,2) NOT NULL,
 jahreszugehoerigkeit TINYINT NOT NULL
 );
 
 INSERT INTO `mitarbeiterjubilaeum` 
 VALUES
 (1, 'Uhr', 150.00, 10),
 (2, 'Tasche', 20.00, 5);
 
 SELECT * FROM mitarbeiterjubilaeum;
 
 DROP TABLE mitarbeiterjubilaeum;
 #Seite 206 Uebung 4
 
 CREATE TABLE `mitarbeiterjubilaeum`(
  geschenkid TINYINT PRIMARY KEY,
 artikel VARCHAR(200) NOT NULL,
 preis DECIMAL(5,2) NOT NULL,
 jahreszugehoerigkeit TINYINT NOT NULL CHECK(
 jahreszugehoerigkeit = 5 OR jahreszugehoerigkeit = 10 
 OR jahreszugehoerigkeit = 15 OR jahreszugehoerigkeit = 20
 )
 );
 
 INSERT INTO mitarbeiterjubilaeum
 VALUES 
(1, 'Aktentasche', 150.50,5),
(2, 'Uhr', 200.50, 10);

SELECT * FROM mitarbeiterjubilaeum;


#Seite 218 Uebung 1
CREATE TABLE `produktionsmaschinen`(
maschinenid TINYINT,
variante TINYINT,
bezeichnung VARCHAR(200)
);

ALTER TABLE `produktionsmaschinen`
ADD CONSTRAINT pk_maschine PRIMARY KEY(maschinenid, variante);

INSERT INTO `produktionsmaschinen`
VALUES
(1,1,'Drehmaschine 1.0'),
(1,2,'Drehmaschine 1.1'),
(2,1,'Drehmaschine 2.0'),
(2,2,'Drehmaschine 2.1');

SELECT  * FROM produktionsmaschinen;

-- Kapitel 5 Mengenoperationen anwenden
#Seite 237 Uebung 1
SELECT 
    name, vorname
FROM
    `niederlassungbelgien` 
UNION SELECT 
    name, vorname
FROM
    `niederlassungholland`;
    
    #Seite 237 Uebung 2
    SELECT 
    name, vorname
FROM
    `niederlassungbelgien` 
UNION ALL SELECT 
    name, vorname
FROM
    `niederlassungholland`;
    
    #Seite 237 Uebung 3
    
    SELECT name, vorname 
    FROM  
    `niederlassungholland`
    UNION
    SELECT name, vorname
    FROM
    `niederlassungbelgien`
    UNION
    SELECT name, vorname
    FROM `niederlassungschweiz`;
    
    


 