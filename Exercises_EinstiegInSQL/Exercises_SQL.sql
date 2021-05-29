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

 