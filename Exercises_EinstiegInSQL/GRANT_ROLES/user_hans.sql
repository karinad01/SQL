CREATE user hans IDENTIFIED BY 'secret';

GRANT SELECT, UPDATE ON mitarbeiter TO hans;
REVOKE SELECT, UPDATE ON mitarbeiter FROM hans;
CREATE ROLE personal;

GRANT SELECT, INSERT, UPDATE
ON abteilung
TO personal;

GRANT personal TO hans;

USE uebungsdatenbank;

REVOKE SELECT, INSERT, UPDATE ON abteilung FROM personal;
