create table RECOLTE
(id_recolta NUMBER(3) CONSTRAINT pk_id_produs PRIMARY KEY,
denumire_recolta VARCHAR2(50) NOT NULL,
categorie_recolta VARCHAR2(20) constraint ck_categorie_recolta CHECK (categorie_recolta in ('Cereale', 'Fructe', 'Legume', 'Plante oleaginoase')),
tip_ingrasamant VARCHAR(30),
pret_kg NUMBER(3,1) NOT NULL);

alter table RECOLTE
rename column pret_min to pret_mediu;

desc recolte;
drop table recolte cascade constraints;

insert into RECOLTE values
(11, 'Porumb', 'Cereale', 'Ingrasamant cu azot ureic', 1);

insert into RECOLTE values
(32, 'Mar', 'Fructe', 'Fertilizant universal', 4);

insert into RECOLTE values
(97, 'Grau', 'Cereale', 'Fertilizant cereale paioase', 1.2);

insert into RECOLTE values
(45, 'Rosie', 'Legume', 'Ingrasamant universal', 5);

insert into RECOLTE values
(31, 'Castravete', 'Legume', 'Ingrasamant granulat', 4);

insert into RECOLTE values
(62, 'Floarea-Soarelui', 'Plante oleaginoase', 'Fertilizant cu azot ureic', 2);

insert into RECOLTE values
(83, 'Pruna', 'Fructe', 'Ingrasamant natural', 6);

insert into RECOLTE values
(12, 'Rapita', 'Plante oleaginoase', 'Fertilizant universal', 4);

insert into RECOLTE values
(90, 'Para', 'Fructe', 'Ingrasamant natural', 6);

insert into RECOLTE values
(14, 'Ardei', 'Legume', 'Fertilizant universal', 7);

insert into RECOLTE values
(56, 'Varza', 'Legume', 'Fertilizant foliar - calciu', 3);

insert into RECOLTE values
(74, 'Cartof', 'Legume', 'Ingrasamant mineral', 5);

insert into RECOLTE values
(44, 'Visina', 'Fructe', 'Ingrasamant natural', 8);

insert into RECOLTE values
(25, 'Secara', 'Cereale', 'Ingrasamant universal', 2);

insert into RECOLTE values
(36, 'Dovlecel', 'Legume', 'Fertilizant granulat', 7);

insert into RECOLTE values
(49, 'Cireasa', 'Fructe', 'Fertilizant natural', 25);

insert into RECOLTE values
(27, 'Ceapa', 'Legume', 'Fertilizant universal', 5);

insert into RECOLTE values
(78, 'Orz', 'Cereale', 'Ingrasamant foliar - carbon', 2);

insert into RECOLTE values
(16, 'Strugure', 'Fructe', 'Fertilizant pentru vita-de-vie', 12);

select * from RECOLTE;

create table UTILAJE
(id_utilaj NUMBER(3) CONSTRAINT pk_id_utilaj PRIMARY KEY,
denumire_utilaj VARCHAR2(30) NOT NULL,
tip_utilaj VARCHAR2(20),
tip_munca_agricola VARCHAR2(35),
durata_utilizare NUMBER(2,1) CONSTRAINT ck_durata_utilizare CHECK (durata_utilizare < 6),
id_recolta NUMBER(3),
data_utilizare_utilaj DATE CONSTRAINT ck_data_utilizare CHECK (data_utilizare_utilaj < TO_DATE('31.08.2022','dd.mm.yyyy')),
CONSTRAINT fk_id_recolta FOREIGN KEY (id_recolta) REFERENCES RECOLTE(id_recolta));

drop table UTILAJE cascade constraints;

insert into UTILAJE values
(100, 'OMAC SACMC', 'PLUG', 'ARAT', 5, 11, TO_DATE('17.04.2018', 'dd.mm.yyyy'));

insert into UTILAJE values
(101, 'Agrotom Model ATL', 'DISC', 'MARUNTIT', 2, 11, TO_DATE('17.04.2018', 'dd.mm.yyyy'));

insert into UTILAJE values
(102, 'NARDI Model DORA', 'SEMANATOARE', 'SEMANAT', 3, 11, TO_DATE('18.04.2018', 'dd.mm.yyyy'));

insert into UTILAJE values
(103, 'ABBRIATA M50 MiniRoto', 'PRESA BALOTI', 'BALOTAT', 4, 11, TO_DATE('12.09.2018', 'dd.mm.yyyy'));

insert into UTILAJE values
(104, 'FISKARS 10259', 'POMPA STROPIT', 'UDAT', 1.5, 32, TO_DATE('10.06.2020', 'dd.mm.yyyy'));

insert into UTILAJE values
(105, 'GF-2303', 'PLUG', 'ARAT', 4.5, 97, TO_DATE('30.09.2019', 'dd.mm.yyyy'));

insert into UTILAJE values
(106, 'KUHN DISCOVER', 'DISC', 'MARUNTIT', 2, 97, TO_DATE('01.10.2019', 'dd.mm.yyyy'));

insert into UTILAJE values
(107, 'MADARA Dublu Disc', 'SEMANATOARE', 'SEMANAT', 5, 97, TO_DATE('01.10.2019', 'dd.mm.yyyy'));

insert into UTILAJE values
(108, 'GF-2107', 'PLANTATOR', 'PLANTAT', 4, 45, TO_DATE('22.04.2021', 'dd.mm.yyyy'));

insert into UTILAJE values
(109, 'PULVERIZATOR CP-PM', 'POMPA DE ERBICIDAT', 'ERBICIDAT', 3.5, 45, TO_DATE('18.05.2021', 'dd.mm.yyyy'));

insert into UTILAJE values
(110, 'Micul Fermier GF-1936', 'PLANTATOR', 'PLANTAT', 3, 31, TO_DATE('12.04.2020', 'dd.mm.yyyy'));

insert into UTILAJE values
(111, 'Lechuza Classico', 'SISTEM IRIGARE', 'IRIGAT', 5.5, 31, TO_DATE('13.05.2020', 'dd.mm.yyyy'));

insert into UTILAJE values
(112, 'PRO GARDEN 532-90', 'PLUG', 'ARAT', 4, 62, TO_DATE('29.03.2017', 'dd.mm.yyyy'));

insert into UTILAJE values
(113, 'WEIMA WMX', 'DISC', 'MARUNTIT', 2, 62, TO_DATE('30.03.2017', 'dd.mm.yyyy'));

insert into UTILAJE values
(114, 'CLASS 671', 'GLORIE', 'TREIERAT', 3, 62, TO_DATE('20.09.2017', 'dd.mm.yyyy'));

insert into UTILAJE values
(115, 'FERRABOLI EXTREME LT', 'PRESA BALOTI', 'BALOTAT', 4, 62, TO_DATE('21.09.2017', 'dd.mm.yyyy'));

insert into UTILAJE values
(116, 'HERLY 12', 'POMPA STROPIT', 'UDAT', 1.5, 83, TO_DATE('07.03.2015', 'dd.mm.yyyy'));

insert into UTILAJE values
(117, 'MASCHIO GASPARDO', 'SEMANATOARE', 'SEMANAT', 4, 12, TO_DATE('19.04.2019', 'dd.mm.yyyy'));

insert into UTILAJE values
(118, 'SUP 29-DK', 'PLUG', 'ARAT', 4.5, 12, TO_DATE('17.04.2019', 'dd.mm.yyyy'));

insert into UTILAJE values
(119, 'LORTE JK-674', 'DISC', 'MARUNTIT', 5, 12, TO_DATE('18.04.2019', 'dd.mm.yyyy'));

insert into UTILAJE values
(120, 'BUFER 45', 'SEMANATOARE', 'SEMANAT', 2.5, 14, TO_DATE('26.02.2017', 'dd.mm.yyyy'));

insert into UTILAJE values
(121, 'TALLER 460', 'MOTOCULTOR', 'MARUNTTT', 2, 14, TO_DATE('23.02.2017', 'dd.mm.yyyy'));

insert into UTILAJE values
(122, 'DEDRA DRT-90', 'MOTOSAPA', 'SAPAT', 4, 14, TO_DATE('23.02.2017', 'dd.mm.yyyy'));

insert into UTILAJE values
(123, 'EVOLOOT 56', 'POMPA STROPIT', 'UDAT', 3, 90, TO_DATE('24.04.2022', 'dd.mm.yyyy'));

insert into UTILAJE values
(124, 'TOOLSDER PG-64', 'PLANTATOR', 'PLANTAT', 3.5, 56, TO_DATE('03.07.2020', 'dd.mm.yyyy'));

insert into UTILAJE values
(125, 'TEXAS 480', 'PLUG', 'ARAT', 3, 74, TO_DATE('12.03.2016', 'dd.mm.yyyy'));

insert into UTILAJE values
(126, 'GSS 400 GUEDE', 'DISC', 'MARUNTIT', 4, 74, TO_DATE('13.03.2016', 'dd.mm.yyyy'));

insert into UTILAJE values
(127, 'BRUDER 2347', 'SEMANATOARE', 'SEMANAT', 2, 74, TO_DATE('14.03.2016', 'dd.mm.yyyy'));

insert into UTILAJE values
(128, 'GRIMME SE-75', 'MASINA RECOLTAT CARTOFI', 'RECOLTAT', 3, 74, TO_DATE('16.09.2016', 'dd.mm.yyyy'));

insert into UTILAJE values
(129, 'TATTA TP-201', 'POMPA DE STROPIT', 'UDAT', 3, 44, TO_DATE('18.05.2019', 'dd.mm.yyyy'));

insert into UTILAJE values
(130, 'VIDAXL 150', 'PLUG', 'ARAT', 5, 25, TO_DATE('02.10.2017', 'dd.mm.yyyy'));

insert into UTILAJE values
(131, 'O-MAC FM4', 'DISC', 'MARUNTIT', 2, 25, TO_DATE('02.10.2017', 'dd.mm.yyyy'));

insert into UTILAJE values
(132, 'POTTINGER 302', 'SEMANATOARE', 'SEMANAT', 1.5, 25, TO_DATE('04.10.2017', 'dd.mm.yyyy'));

insert into UTILAJE values
(133, 'CLASS LEXION', 'COMBINA', 'RECOLTAT', 1.5, 25, TO_DATE('16.08.2017', 'dd.mm.yyyy'));

insert into UTILAJE values
(134, 'CAMPO 1856', 'PLUG', 'ARAT', 4.5, 36, TO_DATE('10.04.2018', 'dd.mm.yyyy'));

insert into UTILAJE values
(135, 'TS103', 'DISC', 'MARUNTIT', 3, 36, TO_DATE('12.04.2018', 'dd.mm.yyyy'));

insert into UTILAJE values
(136, 'BOMET 45', 'SEMANATOARE', 'SEMANAT', 2, 36, TO_DATE('12.04.2018', 'dd.mm.yyyy'));

insert into UTILAJE values
(137, 'HEINER GPV', 'POMPA DE STROPIT', 'UDAT', 3.5, 49, TO_DATE('14.05.2017', 'dd.mm.yyyy'));

insert into UTILAJE values
(138, 'RURIS TS103', 'PLUG', 'ARAT', 4, 27, TO_DATE('19.03.2020', 'dd.mm.yyyy'));

insert into UTILAJE values
(139, 'VIDIA 255', 'DISC', 'MARUNTIT', 3.5, 27, TO_DATE('19.03.2020', 'dd.mm.yyyy'));

insert into UTILAJE values
(140, 'WIRAX 43E', 'SEMANATOARE', 'SEMANAT', 2.5, 27, TO_DATE('20.03.2020', 'dd.mm.yyyy'));

insert into UTILAJE values
(141, 'BRUDER SE-30', 'MASINA DE RECOLTAT', 'RECOLTAT', 3, 27, TO_DATE('13.09.2020', 'dd.mm.yyyy'));

insert into UTILAJE values
(142, 'PROGARDEN 478', 'PLUG', 'ARAT', 4.5, 78, TO_DATE('15.10.2017', 'dd.mm.yyyy'));

insert into UTILAJE values
(143, 'MATCD 47', 'DISC', 'MARUNTIT', 2, 78, TO_DATE('16.10.2017', 'dd.mm.yyyy'));

insert into UTILAJE values
(144, 'IRTEM', 'SEMANATOARE', 'SEMANAT', 2, 78, TO_DATE('16.10.2017', 'dd.mm.yyyy'));

insert into UTILAJE values
(145, 'LAVERDA M306', 'COMBINA', 'RECOLTAT', 3, 78, TO_DATE('14.07.2017', 'dd.mm.yyyy'));

insert into UTILAJE values
(146, 'MASCHIO WELGER', 'PRESA BALOTI', 'BALOTAT', 2.5, 78, TO_DATE('16.07.2017', 'dd.mm.yyyy'));

insert into UTILAJE values
(147, 'GSAP 768', 'POMPA DE STROPIT', 'STROPIT', 5.5, 16, TO_DATE('11.05.2019', 'dd.mm.yyyy'));

insert into UTILAJE values
(148, 'GREGOIRE G8', 'COMBINA', 'RECOLTAT', 4, 16, TO_DATE('03.10.2019', 'dd.mm.yyyy'));

ALTER TABLE UTILAJE
RENAME COLUMN data_utilizare_utilaj TO data_utilizare;

ALTER TABLE UTILAJE
RENAME COLUMN tip_munca_agricola TO munca_agricola;

commit;

create table PRODUCATORI
(id_producator NUMBER(3) CONSTRAINT pk_id_producator PRIMARY KEY,
nume_producator VARCHAR(20) NOT NULL,
prenume_producator VARCHAR(20) NOT NULL,
email VARCHAR(30),
id_utilaj NUMBER(3),
CONSTRAINT fk_id_utilaj FOREIGN KEY (id_utilaj) REFERENCES UTILAJE(id_utilaj));

ALTER TABLE PRODUCATORI
DROP CONSTRAINT pk_id_producator;

rename PRODUCATORI to PRODUCATORI1;

drop table PRODUCATORI1 cascade constraints;

flashback table PRODUCATORI to before drop;

-- am introdus primele 10 inregistrari/tupluri astfel --
insert into PRODUCATORI values
('&id_producator', '&nume_producator', '&prenume_producator', '&email', '&id_utilaj');

commit;

insert into PRODUCATORI values
(308, 'CRETU', 'Liliana', 'cretu.liliana', 121);

insert into PRODUCATORI values
(311, 'IOVANA', 'Florin', 'iovana_florin', 116);

insert into PRODUCATORI values
(312, 'MANOLE', 'Tudor', 'manoleTudor', 105);

insert into PRODUCATORI values
(307, 'CUMPENASU', 'Cristina', 'cumpenasu.cristina', 110);

insert into PRODUCATORI values
(301, 'OLARU', 'Mara', 'olaru.mara', 101);

insert into PRODUCATORI values
(313, 'NICOLAE', 'Daniel', 'nicolaedan', 104);

insert into PRODUCATORI values
(314, 'NISTOR', 'David', 'nistor_david', 109);

insert into PRODUCATORI values
(303, 'IVAN', 'Mihaela', 'ivan_mihaela', 129);

insert into PRODUCATORI values
(306, 'PAVEL', 'Mircea', 'pavel_mircea', 133);

insert into PRODUCATORI values
(305, 'NITU', 'Iulia Elena', 'nitu.iulia', 130);

insert into PRODUCATORI values
(315, 'SIMA', 'Stefan', 'simastefan', 138);

insert into PRODUCATORI values
(315, 'SIMA', 'Stefan', 'simastefan', 141);

alter table PRODUCATORI
add constraint uq_id_utilaj UNIQUE(id_utilaj);

insert into PRODUCATORI values
(311, 'IOVANA', 'Florin', 'iovana_florin', 144);

insert into PRODUCATORI values
(312, 'MANOLE', 'Tudor', 'manoleTudor', 146);

insert into PRODUCATORI values
(316, 'TUDOROIU', 'Eduard', 'tudoroiueduard', 122);

insert into PRODUCATORI values
(316, 'TUDOROIU', 'Eduard', 'tudoroiueduard', 123);

insert into PRODUCATORI values
('&id_producator', '&nume_producator', '&prenume_producator', '&email', '&id_utilaj');

insert into PRODUCATORI values
(317, 'TARANU', 'Andrei', 'taranu.andrei', 145);

insert into PRODUCATORI values
(317, 'TARANU', 'Andrei', 'taranu.andrei', 127);

commit;

alter table PRODUCATORI
add id_sef NUMBER(3);

alter table PRODUCATORI
add constraint ck_id_sef CHECK (id_sef BETWEEN 301 AND 317);

update PRODUCATORI
set id_sef = 301
where id_producator in (308, 302, 317, 314);

update PRODUCATORI
set id_sef = 308
where id_producator in (312, 305, 310);

update PRODUCATORI
set id_sef = 317
where id_producator in (316, 307, 309, 304);

update PRODUCATORI
set id_sef = 310
where id_producator in (306, 303, 311, 313);

update PRODUCATORI
set id_sef = 311
where id_producator = 315;

commit;

create table MAGAZINE
(id_magazin NUMBER(3) CONSTRAINT pk_id_magazin PRIMARY KEY,
denumire_magazin VARCHAR2(30) NOT NULL,
suprafata_magazin NUMBER(4) DEFAULT NULL,
fax CHAR(10));

drop table MAGAZINE cascade constraints;

insert into MAGAZINE values
(500, 'Auchan Militari', 5000, '0248561247');

insert into MAGAZINE values
(501, 'Kaufland Gavana', 3000, '0249561236');

insert into MAGAZINE values
(502, 'Profi Trivale Pitesti', 300, '0247856312');

insert into MAGAZINE values
(503, 'Mega Slobozia', 600, '0214789645');

insert into MAGAZINE values
(504, 'Lidl Slobozia', 300, '0236251478');

insert into MAGAZINE values
(505, 'Auchan Bradu', 9900, '0214785');

insert into MAGAZINE values
(506, 'Agroland Pitesti', 400, '0248561247');

insert into MAGAZINE values
(507, 'Profi City Victoriei', 500, '0245966321');

insert into MAGAZINE values
(508, 'Mega Lacul Morii', 450, '0247964112');

insert into MAGAZINE values
(509, 'CerealCom SRL Dambovita', 600, '0278451236');

insert into MAGAZINE values
(510, 'Profi Calea Grivitei', 500, '0236333145');

insert into MAGAZINE values
(511, 'Lidl Fetesti-Gara', 400, '0213568947');

insert into MAGAZINE values
(512, 'Lidl Calea Dragasani Pitesti', 620, '0245174787');

alter table MAGAZINE
drop constraint pk_id_magazin;

insert into MAGAZINE values
(513, 'Auchan Teleorman', 600, '0225147895');

insert into MAGAZINE values
(514, 'CRIVI SRL Dambovita', 700, '0248551249');

insert into MAGAZINE values
(515, 'Lidl Ploiesti Vest', 320, '022558479');

insert into MAGAZINE values
(516, 'Agros Impex SRL Ialomita', 620, '0248364578');

insert into MAGAZINE values
(517, 'Mega Iuliu Maniu Bucuresti', 300, '0248457781');

insert into MAGAZINE values
(518, 'Mega Iuliu Maniu', 215, '0248757575');

delete from MAGAZINE
where suprafata_magazin = 215;

commit;

select * from all_cons_columns;
--where column_name like '%pk_id%';

create table SOLICITARI
(id_solicitare NUMBER(4) CONSTRAINT pk_id_solicitare PRIMARY KEY,
id_recolta NUMBER(3),
cantitate NUMBER(3) NOT NULL,
pret NUMBER(3,1) CONSTRAINT nn_pret NOT NULL,
id_magazin NUMBER(3) CONSTRAINT fk_id_magazin REFERENCES MAGAZINE(id_magazin),
CONSTRAINT fk_sol_id_recolta FOREIGN KEY (id_recolta) REFERENCES RECOLTE(id_recolta));

drop table SOLICITARI
cascade constraints;

flashback table SOLICITARI to before drop;

insert into SOLICITARI values
('&id_solicitare', '&id_recolta', '&cantitate', '&pret', '&id_magazin');

/*insert into SOLICITARI (id_solicitare, id_recolta, cantitate, pret, id_magazin) values
(50, 56, 15, 3.2, null);

delete from SOLICITARI
where id_solicitare = 50;*/

insert into SOLICITARI values
(11, 56, 15, 3.2, null);

insert into SOLICITARI values
(12, 14, 20, 7.1, 501); --

insert into SOLICITARI values
(13, 44, 5, 8.4, null); --

insert into SOLICITARI values
(14, 25, 50, 2.3, null); --

insert into SOLICITARI values
(15, 49, 1, 26.7, 507); --

insert into SOLICITARI values
(16, 27, 20, 5.6, 517); --

insert into SOLICITARI values
(17, 78, 200, 2.7, null); --

insert into SOLICITARI values
(18, 36, 10, 7.2, null); --

insert into SOLICITARI values
(19, 56, 30, 3.4, 502); --

insert into SOLICITARI values
(20, 32, 25, 4.4, null); --

insert into SOLICITARI values
(21, 45, 30, 4.9, null); --

insert into SOLICITARI values
(22, 97, 200, 1.6, 516); --

insert into SOLICITARI values
(23, 31, 17, 3.8, 503); --

insert into SOLICITARI values
(24, 83, 26, 5.7, 507); --

insert into SOLICITARI values
(25, 90, 15, 6.3, null); --

insert into SOLICITARI values
(26, 25, 150, 2.1, 506); --

insert into SOLICITARI values
(27, 36, 14, 7.4, 504); --

insert into SOLICITARI values
(28, 62, 250, 2.3, 516); --

insert into SOLICITARI values
(29, 74, 24, 5.2, null); --

insert into SOLICITARI values
(30, 32, 20, 4.5, 515); --

insert into SOLICITARI values
(31, 90, 15, 6.1, null); --

insert into SOLICITARI values
(32, 36, 8, 7.2, 510); --

insert into SOLICITARI values
(33, 45, 20, 5.3, null); --

insert into SOLICITARI values
(34, 12, 80, 4.8, null); --

insert into SOLICITARI values
(35, 32, 17, 3.9, 500); --

insert into SOLICITARI values
(36, 56, 30, 3.7, 511); --

insert into SOLICITARI values
(37, 16, 14, 13.5, 510); --

insert into SOLICITARI values
(38, 49, 10, 26.3, null); --

insert into SOLICITARI values
(39, 90, 23, 6.5, 510); --

insert into SOLICITARI values
(40, 27, 20, 5.5, 510); --

insert into SOLICITARI values
(41, 45, 15, 5.2, 512); --

insert into SOLICITARI values
(42, 14, 18, 7.4, null); --

insert into SOLICITARI values
(43, 44, 10, 8.6, 502); --

insert into SOLICITARI values
('&id_solicitare', '&id_recolta', '&cantitate', '&pret', '&id_magazin');

commit;

create table LOC_RECOLTE
(zona VARCHAR2(25) CONSTRAINT ck_zona CHECK (zona in ('Muntenia Sud', 'Muntenia Nord')),
denumire_judet VARCHAR(15) CONSTRAINT ck_den_judet CHECK (denumire_judet in ('Arges', 'Teleorman', 'Dambovita', 'Ialomita', 'Prahova', 'Ilfov')),
denumire_localitate VARCHAR2(30),
id_recolta NUMBER(3) CONSTRAINT fk_loc_rec_id_recolta REFERENCES RECOLTE(id_recolta));

drop table LOC_RECOLTE cascade constraints;

insert into LOC_RECOLTE values
('Muntenia Sud', 'Teleorman', 'Alexandria', 56);

insert into LOC_RECOLTE values
('Muntenia Nord', 'Arges', 'Maracineni', 14);

insert into LOC_RECOLTE values
('Muntenia Sud', 'Ialomita', 'Slobozia', 44);

insert into LOC_RECOLTE values
('Muntenia Nord', 'Prahova', 'Floresti', 25);

insert into LOC_RECOLTE values
('Muntenia Sud', 'Ilfov', 'Dobroesti', 49);

insert into LOC_RECOLTE values
('Muntenia Nord', 'Dambovita', 'Gura Ocnitei', 78);

insert into LOC_RECOLTE values
('Muntenia Sud', 'Teleorman', 'Rosiori de Vede', 36);

insert into LOC_RECOLTE values
('Muntenia Nord', 'Prahova', 'Brebu', 32);

insert into LOC_RECOLTE values
('Muntenia Nord', 'Dambovita', 'Moroeni', 45);

insert into LOC_RECOLTE values
('Muntenia Sud', 'Ialomita', 'Ograda', 97);

insert into LOC_RECOLTE values
('Muntenia Sud', 'Ialomita', 'Scanteia', 31);

insert into LOC_RECOLTE values
('Muntenia Sud', 'Ilfov', 'Ciorogarla', 83);

insert into LOC_RECOLTE values
('Muntenia Nord', 'Dambovita', 'Voinesti', 90);

insert into LOC_RECOLTE values
('Muntenia Sud', 'Ialomita', 'Vladeni', 62);

insert into LOC_RECOLTE values
('Muntenia Nord', 'Arges', 'Recea', 74);

insert into LOC_RECOLTE values
('Muntenia Nord', 'Prahova', 'Ciorani', 32);

insert into LOC_RECOLTE values
('Muntenia Nord', 'Dambovita', 'Dragomiresti', 12);

insert into LOC_RECOLTE values
('Muntenia Sud', 'Ilfov', 'Branesti', 16);

insert into LOC_RECOLTE values
('Muntenia Sud', 'Ilfov', 'Gruiu', 27);

insert into LOC_RECOLTE values
('Muntenia Sud', 'Arges', 'Ionesti', 44);

commit;

update LOC_RECOLTE
set denumire_localitate = UPPER(denumire_localitate);

update MAGAZINE
set suprafata_magazin = 1.1 * suprafata_magazin
where suprafata_magazin <= 600;

create table PROD1
as
select * from PRODUCATORI;

delete from PRODUCATORI
where id_producator IN (316, 317);

alter table PRODUCATORI
add initiale CHAR(2);

alter table PROD1
add initiale CHAR(2);

update PROD1
set initiale = concat(substr(nume_producator,1,1), upper(substr(prenume_producator,1,1)));

select * from PRODUCATORI;
select * from PROD1;

MERGE into PRODUCATORI p
USING PROD1 pr
ON (p.id_producator = pr.id_producator)
WHEN MATCHED THEN 
    UPDATE SET p.initiale = pr.initiale
WHEN NOT MATCHED THEN 
    INSERT (id_producator, initiale)
    values (pr.id_producator, pr.initiale);
    
/*Sa se afiseze numele producatorului recoltei, numele utilajului, durata de utilizare a acestuia si timpul ce a trecut de cand nu a mai fost utilizat, pana in prezent*/
SELECT distinct p.nume_producator, u.denumire_utilaj, u.durata_utilizare, 
    round((SYSDATE - u.data_utilizare) / 365,1) as "ANI DE LA ULTIMA UTILIZARE"
FROM PRODUCATORI p, UTILAJE u
WHERE p.id_utilaj = u.id_utilaj;

select * from LOC_RECOLTE;

/*Sa se afiseze denumirea recoltelor care au fost plantate in localitati ale caror denumiri incep cu literele A, V sau M si pentru care
au fost folosite utilajele mai putin de 3 ore*/
select r.denumire_recolta, lo.denumire_localitate, u.id_utilaj, u.durata_utilizare
from recolte r, loc_recolte lo, utilaje u
where r.id_recolta = lo.id_recolta AND u.id_recolta = r.id_recolta
AND upper(substr(lo.denumire_localitate,1,1)) in ('A', 'V', 'M')
AND u.durata_utilizare < 3;

select * from RECOLTE;
select * from utilaje;

/*Sa se afiseze denumirile recoltelor pentru care s-au folosit utilajele in luna octombrie si care au pretul unitar cuprins intre 1 si 3 lei*/
select r.denumire_recolta, u.denumire_utilaj, u.data_utilizare, r.pret_kg
from recolte r, utilaje u
where u.id_recolta = r.id_recolta
AND extract(month from u.data_utilizare) = 10
AND r.pret_kg BETWEEN 1 AND 3;

/*inceputul recoltei (semanatul)*/
select min(data_utilizare), id_recolta
from utilaje
group by id_recolta;

select r.id_recolta, sum(s.pret*s.cantitate) VALOARE_TOTALA_PER_RECOLTA
from solicitari s, recolte r
where s.id_recolta = r.id_recolta
group by r.id_recolta;

/*Sa se afiseze numarul recoltei, denumirea sa, tipul de ingrasamant folosit,
valoarea totala a fiecarei recolte comandate
si zona sa de recoltare pentru roadele campului cultivate inainte de anul noiembrie 2017*/
select distinct r.id_recolta, r.denumire_recolta, r.tip_ingrasamant, SUM(s.pret * s.cantitate) VALOARE_TOTALA_PER_RECOLTA, 
        lo.zona, min(u.data_utilizare) DATA_SEMANAT
from recolte r, solicitari s, loc_recolte lo, utilaje u
where s.id_recolta = r.id_recolta
AND r.id_recolta = u.id_recolta
AND lo.id_recolta = r.id_recolta
AND u.data_utilizare < TO_DATE('01.11.2017', 'dd..mm.yyyy')
group by r.id_recolta, lo.zona, r.denumire_recolta, r.tip_ingrasamant;

desc solicitari;

/*Sa se afiseze cate recolte din fiecare categorie exista si pretul mediu pentru
fiecare categorie, daca recoltele NU sunt oleaginoase si au pretul mediu sub 7 lei/kg*/
select COUNT(id_recolta) NR_RECOLTE_PER_CATEGORIE, categorie_recolta, round(AVG(pret_kg),2) PRET_MEDIU_UNITAR
from recolte
where categorie_recolta NOT LIKE '%oleaginoase%'
group by categorie_recolta
HAVING AVG(pret_kg) < 7;

/*Sa se afiseze numarul si denumirea magazinelor care au pe a 3-a pozitie a fax-ului cifra 4 sau
pe ultima pozitie cifra 7, au cantitatea totala din produsele solicitate sub un prag (200 kg) - modificabil,
magazinele avand suprafata cuprinsa intre 300 si 700 m^2*/
select m.id_magazin, m.denumire_magazin, m.fax, m.suprafata_magazin, SUM(s.cantitate * s.pret) as "CANTITATE_COMANDATA"
from magazine m, solicitari s
where s.id_magazin = m.id_magazin
AND (instr(m.fax, 4) = 3
OR instr(m.fax, 7, length(m.fax)) = length(m.fax))
AND m.suprafata_magazin BETWEEN 300 AND 700
group by m.id_magazin, m.denumire_magazin, m.fax, m.suprafata_magazin
having SUM(s.cantitate * s.pret) < 200;

/*Sa se afiseze numele producatorului, prenumele sau,
dar si profitul obtinut de acesta de pe urma recoltei daca
    - Daca valoarea recoltei este mai mica decat 500 kg, profitul este de 40%
    - Daca valoarea recoltei este intre 500kg si 900kg, profitul este de 50%
    - Daca este intre 900kg si 1400kg, profitul este de 60%
    - Altfel este de 70%*/
select p.nume_producator, p.prenume_producator, SUM(s.pret * s.cantitate) VALOARE_TOTALA_PRODUSA,
(CASE
    WHEN SUM(s.pret * s.cantitate) < 500 THEN 0.4
    WHEN SUM(s.pret * s.cantitate) BETWEEN 500 AND 900 THEN 0.5
    WHEN SUM(s.pret * s.cantitate) BETWEEN 900 AND 1400 THEN 0.6
    ELSE 0.7
    END) * SUM(s.pret * s.cantitate) AS "PROFIT"
from producatori p, solicitari s, utilaje u, recolte r
where p.id_utilaj = u.id_utilaj
AND r.id_recolta = u.id_recolta
AND s.id_recolta = r.id_recolta
group by p.nume_producator, p.prenume_producator;

/*Sa se afiseze id_magazin, denumirea magazinului, fax-ul pentru magazinele de tip "Profi" si 
denumirea recoltei pentru acele magazine care
au solicitat o cantitate mai mare decat un sfert din cantitatea maxima de cirese solicitata*/
select m.id_magazin, m.denumire_magazin, m.fax, r.denumire_recolta, s.cantitate
from solicitari s, recolte r, magazine m
where s.id_magazin = m.id_magazin
and s.id_recolta = r.id_recolta
and s.cantitate < 0.25 * (select max(s.cantitate) from solicitari s, recolte r 
            where r.id_recolta = (select id_recolta from recolte where denumire_recolta like 'Cireasa'))
and initcap(m.denumire_magazin) like '%Lidl%';

/*Sa se afiseze denumirea utilajelor folosite pentru fiecare recolta (denumirea continand '-')
si data la care au fost folosite,
data fiind sub forma '12th July 2004'. De asemenea, sa se afiseze locul pe care au fost folosite utilajele (localitatea)*/
select u.denumire_utilaj, TO_CHAR(TO_DATE(u.data_utilizare,'dd-mon-yy'), 'ddth Month YYYY') 
        as "DATA_UTILIZARE_FORMATATA", u.id_recolta, r.denumire_recolta, lo.denumire_localitate
from utilaje u, loc_recolte lo, recolte r
where u.id_recolta = r.id_recolta
and lo.id_recolta = r.id_recolta
and u.denumire_utilaj like '%-%'
order by denumire_localitate desc;

/*Sa se afiseze denumirea legumelor, categoria sa, zona in care a fost recoltata, denumirea judetului
si abrevierea judetului (folosind DECODE), dar si cantitatea totala solicitata din fiecare recolta,
toate datele ordonandu-se dupa denumirea recoltei alfabetic.*/
select r.denumire_recolta, r.categorie_recolta, lo.zona, 
    lo.denumire_judet, DECODE(lo.denumire_judet, 'Teleorman', 'TL', 'Arges', 'AG',
    'Ialomita', 'IL', 'Ilfov', 'IF', 'Dambovita', 'DB', 'Prahova', 'PH', null) as "ABREVIERE_JUDET",
    SUM(s.cantitate) as "CANTITATE_TOTALA_RECOLTA"
from recolte r, loc_recolte lo, solicitari s
where r.id_recolta = lo.id_recolta
and r.id_recolta = s.id_recolta
and lower(r.categorie_recolta) like 'legume'
group by r.denumire_recolta, r.categorie_recolta, lo.zona, lo.denumire_judet
order by r.denumire_recolta;

/*11. Sa se afiseze denumire magazinului si suprafata lor pentru magazinele
care au solicitat marfa de la producatoarea NITU, dar si denumirea recoltei si id-ul solicitarii pentru aceasta,
chiar daca solicitarea nu a fost facuta de un magazin cunoscut, ci de o persoana fizica.*/
select nvl(m.denumire_magazin, 'PERSOANA FIZICA') as "DENUMIRE_MAGAZIN", m.suprafata_magazin, 
        concat(initcap(p.nume_producator),' ') || p.prenume_producator as "NUME_COMPLET_PRODUCATOR",
        r.denumire_recolta, s.id_solicitare
from magazine m, producatori p, solicitari s, recolte r, utilaje u
where m.id_magazin(+) = s.id_magazin /*jonctiune externa (right outer join)*/
and u.id_utilaj = p.id_utilaj
and s.id_recolta = r.id_recolta
and u.id_recolta = r.id_recolta
and upper(p.nume_producator) like 'NITU';

/*Sa se calculeze ??n mod diferit suprafata posibila de extindere a magazinelor
    - Daca suprafata este sub 700 m2, extinderea este de 20%
    - Daca suprafata este ??ntre 700 si 1000 m2, extinderea posibila este de 35%
    - Daca suprafata este de peste 1000 m2, extinderea este de maxim 40%
Sa se afiseze toate magazinele mai putin cele care au faxul ce se termina 
??n cifra 7. Sa se ordoneze toate inregistrarile dupa extindere descrescator si dupa 
id_magazin tot descrescator*/
select distinct m.id_magazin, m.denumire_magazin, m.fax, 
(CASE
    WHEN m.suprafata_magazin < 700 THEN 0.2
    WHEN m.suprafata_magazin BETWEEN 700 AND 1000 THEN  0.35
    ELSE 0.4
    END) * m.suprafata_magazin POSIBILA_EXTINDERE
from magazine m, solicitari s
where s.id_magazin = m.id_magazin
MINUS
select distinct m.id_magazin, m.denumire_magazin, m.fax, 
(CASE
    WHEN m.suprafata_magazin < 700 THEN 0.2
    WHEN m.suprafata_magazin BETWEEN 700 AND 1000 THEN  0.35
    ELSE 0.4
    END) * m.suprafata_magazin POSIBILA_EXTINDERE
from magazine m, solicitari s
where s.id_magazin = m.id_magazin
and m.fax like '%7'
order by POSIBILA_EXTINDERE desc, id_magazin desc;

/*Sa se afiseze valoarea totala c??stigata ??n urma v??nzarii
recoltelor doar pentru producatorii care au lungimea numelui mai mica lec??t lungimea
prenumelui si id_producator divizibil cu 2. Sa se ordoneze rezultatele crescator 
dupa valoarea totala.*/
select  p.id_producator, 
        p.nume_producator || ' ' || p.prenume_producator as "NUME_COMPLET_PROD", 
        SUM(s.pret * s.cantitate) VALOARE_PER_PRODUCATOR
from solicitari s, producatori p, recolte r, utilaje u
where r.id_recolta = u.id_recolta
and p.id_utilaj = u.id_utilaj
and s.id_recolta = r.id_recolta
and length(p.nume_producator) < length(p.prenume_producator)
group by p.nume_producator, p.prenume_producator, p.id_producator
INTERSECT
select  p.id_producator, 
        p.nume_producator || ' ' || p.prenume_producator as "NUME_COMPLET_PROD", 
        SUM(s.pret * s.cantitate) VALOARE_PER_PRODUCATOR
from solicitari s, producatori p, recolte r, utilaje u
where r.id_recolta = u.id_recolta
and p.id_utilaj = u.id_utilaj
and s.id_recolta = r.id_recolta
and length(p.nume_producator) < length(p.prenume_producator)
and mod(p.id_producator, 2) = 0
group by p.nume_producator, p.prenume_producator, p.id_producator
order by VALOARE_PER_PRODUCATOR;

/*Sa se afiseze toate fructele cultivate ??n judetul Ilfov, dar si toate legumele din judetul Arges.*/
select r.denumire_recolta, r.categorie_recolta, lo.denumire_judet
from recolte r, loc_recolte lo
where lo.id_recolta = r.id_recolta
and r.categorie_recolta like 'Fructe'
and lo.denumire_judet like 'Ilfov'
UNION
select r.denumire_recolta, r.categorie_recolta, lo.denumire_judet
from recolte r, loc_recolte lo
where lo.id_recolta = r.id_recolta
and r.categorie_recolta like 'Legume'
and lo.denumire_judet like 'Arges';

select * from recolte;
select * from utilaje;
select * from magazine;
select * from producatori;
select * from loc_recolte;
select * from solicitari;

/*Sa se afiseze nivelul ierarhic si toti superiorii producatorilor care se afla 
pe ultimul nivel ierarhic,
pornind de la producatorul IVAN Mihaela, ordonati dupa nivelul ierarhic*/
select distinct id_producator, initcap(nume_producator) || ' ' || prenume_producator as "NUME_COMPLET",
    LEVEL, SYS_CONNECT_BY_PATH(id_producator, '/') CALE_IERARHICA
from producatori
--where id_sef in (select id_sef from producatori where id_producator = 306)
--where CONNECT_BY_ISLEAF = 1
connect by id_producator = PRIOR id_sef
start with id_producator in (select id_producator from producatori
            where nume_producator like 'IVAN' and prenume_producator like 'Mihaela')
order by LEVEL;

/*Sa se afiseze toti subordonatii producatorilor cu id_producator egal cu 310
si 317, care nu au subordonati si care au numele terminat ??n vocala.*/
select distinct id_producator, nume_producator, prenume_producator, id_sef, LEVEL
from producatori
where CONNECT_BY_ISLEAF = 1
and lower(substr(nume_producator, length(nume_producator), 1)) in ('a', 'e', 'i', 'o', 'u') 
connect by PRIOR id_producator = id_sef
start with id_producator in (310, 317);

/*Sa se afiseze numarul de sefi si toti subordonatii sefului lui Manole Tudor, care au 
caracterul '.' ??n email.*/
select distinct id_producator, nume_producator, id_sef, email, LEVEL as "NUMAR_SUPERIORI"
from producatori
where email like '%.%'
connect by id_sef = PRIOR id_producator
start with id_producator in (select id_sef from producatori where
                upper(nume_producator) = 'MANOLE' and lower(prenume_producator) like 'tudor');
                
commit;

/*Sa se creeze o tabela virtuala doar cu utilajele folosite la munca agricola de maruntit
si sa se modifice la toate aceste utilaje durata de utilizare (sa se scada 10% din timp).*/
CREATE OR REPLACE VIEW v_utilaje_maruntit
AS SELECT * FROM utilaje
WHERE upper(munca_agricola) like 'MARUNTIT';

select * from v_utilaje_maruntit;

update v_utilaje_maruntit
set durata_utilizare = 0.9 * durata_utilizare;

/*Sa se creeze un sinonim pentru tabela recolte, denumita 'r',
iar apoi sa se creeze si un index pentru coloanele categorie_recolta si pret_kg,
care sa afiseze doar cerealele cu pretul mai mic de 1.5 lei, folosindu-se sinonimul.*/
create synonym r for recolte;

create index cereale_15 on r(categorie_recolta, pret_kg);

select * from r
where categorie_recolta like 'Cereale' and pret_kg < 1.5;

/*Sa se creeze o secventa pentru asigurarea unicitatii cheii primare din tabela solicitari.
Sa se adauge o noua ??nregistrare cu 4 pozitii mai avansate dec??t numarul de pornire (MINVALUE).
Sa se anuleze inserarea.*/
create SEQUENCE seq_solicitari
start with 49 increment by 2
MAXVALUE 98;

select seq_solicitari.CURRVAL from dual; -- valoarea curenta: 49

select * from solicitari;

select seq_solicitari.NEXTVAL from dual;

insert into solicitari values
(seq_solicitari.NEXTVAL, 90, 12, 7, null);

rollback;

select * from recolte;
select * from utilaje;
select * from magazine;
select * from producatori;
select * from loc_recolte;
select * from solicitari;

/*Sa se afiseze legumele plantate ??n zona Muntenia Nord, pentru care s-au folosit utilaje cu mai putin de
36 de luni ??n urma si care au ca producatori persoane care au ca superior producatorul cu id-ul 301.
Sa se foloseasca doar sinonime.*/
create synonym u for utilaje;
create synonym lo for loc_recolte;
create synonym p for producatori;

select r.id_recolta, r.denumire_recolta, u.denumire_utilaj, round(MONTHS_BETWEEN(SYSDATE, u.data_utilizare), 2) as "LUNI_TRECUTE",
        p.nume_producator, p.id_sef
from r, u, p, lo
where r.id_recolta = u.id_recolta
and p.id_utilaj = u.id_utilaj
and lo.id_recolta = r.id_recolta
and MONTHS_BETWEEN(SYSDATE, u.data_utilizare) < 36
and p.id_sef = 301
and r.categorie_recolta like 'Legume';

/*Sa se afiseze lista cu producatorii care nu sunt superiori niciunui alt producator 
(nu sunt producator sef).*/
WITH sef AS
    (SELECT DISTINCT id_sef
    FROM producatori
    WHERE id_sef IS NOT NULL)
SELECT DISTINCT nume_producator as "NU E SEF"
FROM producatori
where id_producator NOT IN 
    (SELECT * FROM sef);
