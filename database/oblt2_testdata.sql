-- -----------------------------------------------------
-- SQL Script met test data voor database "citypark"
-- -----------------------------------------------------
-- -	-R--	-I---	-C---	-K--	----	----
--	----	-H--	-A--	-A--	-N--	----	----
-- -----------------------------------------------------
-- De volgende tabellen worden gevuld met testwaarden
-- rekeningen
-- klanten
-- login
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Insert INTO rekeningen
-- -----------------------------------------------------
INSERT INTO `oblt2`.`rekeningen` (`rekening_iban`, `rekening_saldo`) VALUES
('NL99ONZE0865541937', '10.00'),
('NL99ONZE0865541837', '75.00'),
('NL99ONZE0865541737', '0.00'),
('NL99ONZE0865541637', '3.20');

-- -----------------------------------------------------
-- Insert INTO klanten
-- -----------------------------------------------------
INSERT INTO `oblt2`.`klanten` (`klant_id`, `klant_naam`, `klant_achternaam`, `klant_geboortedatum`, `klant_email`, `klant_telnr`, `klant_straat`, `klant_huisnummer`, `klant_woonplaats`, `klant_postcode`, `klant_geslacht`, `klant_actief` , `rekeningen_rekening_iban`) VALUES
(NULL, 'Tsjeard', 'de Winter', '1994-06-14', 't.de.winter@st.hanze.nl', '0611223344', 'Zernikeplein', '11', 'Groningen', '9747AS', 'Man', '0', 'NL99ONZE0865541937'),
(NULL, 'Martijn', 'Dijkstra', '1995-06-28', 'm.s.dijkstra@st.hanze.nl', '0611223344', 'Zernikeplein', '11', 'Groningen', '9747AS', 'Vrouw', '0', 'NL99ONZE0865541837'),
(NULL, 'Rick Haan', 'Haan', '1994-09-28', 'ri.haan@st.hanze.nl', '0611223344', 'Zernikeplein', '11', 'Groningen', '9747AS', 'Man', '1', 'NL99ONZE0865541737'),
(NULL, 'Joost', 'van Woensel', '1994-12-13', 'j.w.s.van.woensel@st.hanze.nl', '0611223344', 'Zernikeplein', '11', 'Groningen', '9747AS', 'Man', '0', 'NL99ONZE0865541637');

-- -----------------------------------------------------
-- Insert INTO login
-- -----------------------------------------------------
INSERT INTO `oblt2`.`login` (`login_id`, `login_wachtwoord`, `login_hash`, `rekeningen_rekening_iban`) VALUES
(NULL, NULL, NULL, 'NL99ONZE0865541937'),
(NULL, NULL, NULL, 'NL99ONZE0865541837'),
(NULL, NULL, NULL, 'NL99ONZE0865541737'),
(NULL, NULL, NULL, 'NL99ONZE0865541637');
