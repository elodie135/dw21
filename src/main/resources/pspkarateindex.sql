use `pspkarate`;
-- -----------------------------------------------------
-- Table `pspkarate`.`calendrier`
-- -----------------------------------------------------
insert into calendrier(idcalendrier, date, lieu, theme)
values( 1, '130821', '13 Rue de Pornic', 'cardio');
-- -----------------------------------------------------
-- Table `pspkarate`.`club`
-- -----------------------------------------------------
insert into club(idclub, nom, adresse, siegesocial, licenceClub)
	values( 1, 'PSP karaté', '13 Rue de Pornic', 'Port-Saint-Père', 1234567890);
-- -----------------------------------------------------
-- Table `pspkarate`.`grade`
-- -----------------------------------------------------
insert into grade(idgrade, couleur, acces, kata_nom,idkata)
	 values(1, 'blanche','oui', 'Heian Shodan',1),
	(2, 'jaune','oui', 'Heian Nidan',2),
	(3, 'orange','oui', 'Heian Sandan',3),
	(4, 'verte','oui', 'Heian Yodan',4),
	(5, 'bleue','oui', 'Heian Godan',5),
	(6, 'marron','oui', 'Tekki Shodan',6),
	(7, 'noir','oui', 'Bassai Dai',7);
-- -----------------------------------------------------
-- Table `pspkarate`.`kata`
-- -----------------------------------------------------
insert into kata(idkata, nom, media1, media2, grade_idgrade)
	values( 1, 'Heian Shodan','https://youtu.be/B-DUh_rmaMA?list=PLLRqd9ltdm_kbwuHiAj_qOoHTOBsrbtz4', 'https://shotokancrsa.com/kata/h1.bmp', 1),
	( 2, 'Heian Nidan','https://youtu.be/qu5WuXRNmKI?list=PLLRqd9ltdm_kbwuHiAj_qOoHTOBsrbtz4', 'https://shotokancrsa.com/kata/h2.bmp', 2),
	( 3, 'Heian Sandan','https://youtu.be/tHVafWaaNEY?list=PLLRqd9ltdm_kbwuHiAj_qOoHTOBsrbtz4', 'https://shotokancrsa.com/kata/h3.bmp', 3),
	(4, 'Heian Yodan','https://youtu.be/4MmwDhYmirI?list=PLLRqd9ltdm_kbwuHiAj_qOoHTOBsrbtz4', 'https://shotokancrsa.com/kata/h4.bmp', 4),
	(5, 'Heian Godan','https://youtu.be/TTOheZSMC7o?list=PLLRqd9ltdm_kbwuHiAj_qOoHTOBsrbtz4', 'https://shotokancrsa.com/kata/h5.bmp', 5),
	(6, 'Tekki Shodan','https://youtu.be/TrZdEGzAqws?list=PLLRqd9ltdm_kbwuHiAj_qOoHTOBsrbtz4', 'https://shotokancrsa.com/kata/h6.bmp', 6),
	(7, 'Bassai Dai','https://youtu.be/8mtnclGxlpI?list=PLLRqd9ltdm_kbwuHiAj_qOoHTOBsrbtz4', 'https://shotokancrsa.com/kata/h7.bmp', 7);
-- -----------------------------------------------------
-- Table `pspkarate`.`sportif`
-- -----------------------------------------------------
insert into sportif(idsportif, nom, prenom, licence, adresse, club_idclub, grade_idgrade, professeur)
	values(1, 'nom','prenom', 1223334444, '4 Rue de vannes',1, 2, 0),
	(2, 'noma','prenoma', 1223334445, '5 Rue de vannes',1, 5, 0);
-- -----------------------------------------------------
-- Table `pspkarate`.`role`
-- -----------------------------------------------------
insert into role(idrole, sportif_idsportif)
values( 1, 'noma', '2');

