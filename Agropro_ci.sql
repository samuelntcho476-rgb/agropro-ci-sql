CREATE DATABASE IF NOT EXISTS agropro_ci;
USE agropro_ci;

DROP TABLE IF EXISTS production;
CREATE TABLE production (
    id              INT PRIMARY KEY,
    machine_id      VARCHAR(10),
    ligne           VARCHAR(10),
    operateur       VARCHAR(50),
    produit         VARCHAR(50),
    quantite_kg     INT,
    defauts_kg      INT,
    heures_prod     DECIMAL(5,2),
    shift           VARCHAR(10),
    date_prod       DATE
);
 
INSERT INTO production VALUES
(1,  'M01','Ligne_A','Konan Brou',   'Huile raffinée',  8500, 120, 8.0, 'Jour',  '2026-04-01'),
(2,  'M02','Ligne_A','Aya Coulibaly','Huile raffinée',  7800, 200, 8.0, 'Nuit',  '2026-04-01'),
(3,  'M03','Ligne_B','Yao Koffi',    'Farine de maïs',  12000,350, 8.0, 'Jour',  '2026-04-01'),
(4,  'M04','Ligne_B','Fatou Diallo', 'Farine de maïs',  11500,180, 8.0, 'Nuit',  '2026-04-01'),
(5,  'M05','Ligne_C','Ibrahim Soro', 'Sucre blanc',     15000,420, 8.0, 'Jour',  '2026-04-01'),
(6,  'M01','Ligne_A','Konan Brou',   'Huile raffinée',  8700, 110, 8.0, 'Jour',  '2026-04-02'),
(7,  'M02','Ligne_A','Aya Coulibaly','Huile raffinée',  7500, 230, 8.0, 'Nuit',  '2026-04-02'),
(8,  'M03','Ligne_B','Yao Koffi',    'Farine de maïs',  11800,300, 8.0, 'Jour',  '2026-04-02'),
(9,  'M04','Ligne_B','Fatou Diallo', 'Farine de maïs',  12000,160, 8.0, 'Nuit',  '2026-04-02'),
(10, 'M05','Ligne_C','Ibrahim Soro', 'Sucre blanc',     14500,390, 8.0, 'Nuit',  '2026-04-02'),
(11, 'M01','Ligne_A','Konan Brou',   'Huile raffinée',  9000, 95,  8.0, 'Jour',  '2026-04-03'),
(12, 'M02','Ligne_A','Aya Coulibaly','Huile raffinée',  8200, 210, 8.0, 'Nuit',  '2026-04-03'),
(13, 'M03','Ligne_B','Yao Koffi',    'Farine de maïs',  12500,280, 8.0, 'Jour',  '2026-04-03'),
(14, 'M04','Ligne_B','Fatou Diallo', 'Farine de maïs',  11000,140, 7.5, 'Nuit',  '2026-04-03'),
(15, 'M05','Ligne_C','Ibrahim Soro', 'Sucre blanc',     15500,450, 8.0, 'Jour',  '2026-04-03'),
(16, 'M01','Ligne_A','Amara Traoré', 'Huile raffinée',  8300, 130, 8.0, 'Nuit',  '2026-04-04'),
(17, 'M02','Ligne_A','Aya Coulibaly','Huile raffinée',  7600, 190, 8.0, 'Jour',  '2026-04-04'),
(18, 'M03','Ligne_B','Yao Koffi',    'Farine de maïs',  11000,400, 6.0, 'Jour',  '2026-04-04'),
(19, 'M04','Ligne_B','Fatou Diallo', 'Farine de maïs',  12200,150, 8.0, 'Nuit',  '2026-04-04'),
(20, 'M05','Ligne_C','Ibrahim Soro', 'Sucre blanc',     14000,380, 8.0, 'Nuit',  '2026-04-04'),
(21, 'M01','Ligne_A','Amara Traoré', 'Huile raffinée',  8900, 100, 8.0, 'Jour',  '2026-04-05'),
(22, 'M02','Ligne_A','Aya Coulibaly','Huile raffinée',  8000, 220, 8.0, 'Nuit',  '2026-04-05'),
(23, 'M03','Ligne_B','Yao Koffi',    'Farine de maïs',  12800,310, 8.0, 'Jour',  '2026-04-05'),
(24, 'M04','Ligne_B','Fatou Diallo', 'Farine de maïs',  11800,170, 8.0, 'Nuit',  '2026-04-05'),
(25, 'M05','Ligne_C','Ibrahim Soro', 'Sucre blanc',     15200,400, 8.0, 'Jour',  '2026-04-05'),
(26, 'M01','Ligne_A','Konan Brou',   'Huile raffinée',  8600, 115, 8.0, 'Jour',  '2026-04-07'),
(27, 'M02','Ligne_A','Amara Traoré', 'Huile raffinée',  7900, 205, 8.0, 'Nuit',  '2026-04-07'),
(28, 'M03','Ligne_B','Yao Koffi',    'Farine de maïs',  11500,330, 8.0, 'Jour',  '2026-04-07'),
(29, 'M04','Ligne_B','Fatou Diallo', 'Farine de maïs',  12100,145, 8.0, 'Nuit',  '2026-04-07'),
(30, 'M05','Ligne_C','Ibrahim Soro', 'Sucre blanc',     14800,410, 8.0, 'Jour',  '2026-04-07');

DROP TABLE IF EXISTS maintenance;
CREATE TABLE maintenance (
    id                  INT PRIMARY KEY,
    machine_id          VARCHAR(10),
    type_maintenance    VARCHAR(50),
    duree_arret_h       DECIMAL(5,2),
    technicien          VARCHAR(50),
    cout_fcfa           INT,
    cause               VARCHAR(100),
    date_maintenance    DATE
);
 
INSERT INTO maintenance VALUES
(1,  'M01','Préventive',  1.5, 'Assi Ngoran',   45000,  'Vérification courroies',       '2026-04-01'),
(2,  'M02','Corrective',  3.0, 'Bamba Koné',    120000, 'Panne moteur électrique',      '2026-04-01'),
(3,  'M03','Breakdown',   5.5, 'Assi Ngoran',   280000, 'Rupture axe principal',        '2026-04-01'),
(4,  'M04','Préventive',  1.0, 'Bamba Koné',    38000,  'Graissage roulements',         '2026-04-02'),
(5,  'M05','Corrective',  2.5, 'Assi Ngoran',   95000,  'Fuite hydraulique',            '2026-04-02'),
(6,  'M01','Préventive',  1.0, 'Bamba Koné',    40000,  'Vérification capteurs',        '2026-04-03'),
(7,  'M02','Breakdown',   4.0, 'Assi Ngoran',   190000, 'Défaillance variateur',        '2026-04-03'),
(8,  'M03','Corrective',  2.0, 'Bamba Koné',    85000,  'Remplacement joint',           '2026-04-04'),
(9,  'M04','Breakdown',   6.0, 'Assi Ngoran',   320000, 'Blocage convoyeur',            '2026-04-04'),
(10, 'M05','Préventive',  1.5, 'Bamba Koné',    52000,  'Nettoyage filtres',            '2026-04-05'),
(11, 'M01','Corrective',  2.0, 'Assi Ngoran',   78000,  'Remplacement courroie usée',   '2026-04-05'),
(12, 'M03','Breakdown',   4.5, 'Bamba Koné',    210000, 'Surchauffe moteur',            '2026-04-07'),
(13, 'M02','Préventive',  1.0, 'Assi Ngoran',   35000,  'Contrôle électrique',          '2026-04-07'),
(14, 'M04','Corrective',  3.5, 'Bamba Koné',    145000, 'Remplacement capteur pression','2026-04-07'),
(15, 'M05','Breakdown',   2.0, 'Assi Ngoran',   88000,  'Panne pompe lubrification',    '2026-04-07');

DROP TABLE IF EXISTS rh_employes;
CREATE TABLE rh_employes (
    id              INT PRIMARY KEY,
    nom             VARCHAR(50),
    prenom          VARCHAR(50),
    departement     VARCHAR(50),
    poste           VARCHAR(50),
    salaire_fcfa    INT,
    date_embauche   DATE,
    statut          VARCHAR(20),
    absences_j      INT,
    performance     DECIMAL(3,1)
);
 
INSERT INTO rh_employes VALUES
(1,  'Konan',    'Brou',      'Production',   'Opérateur machine',    185000, '2021-03-15', 'Actif', 2, 8.5),
(2,  'Coulibaly','Aya',       'Production',   'Opérateur machine',    185000, '2022-06-01', 'Actif', 5, 7.2),
(3,  'Koffi',    'Yao',       'Production',   'Chef de ligne',        250000, '2019-08-20', 'Actif', 1, 9.1),
(4,  'Diallo',   'Fatou',     'Production',   'Opérateur machine',    185000, '2023-01-10', 'Actif', 3, 7.8),
(5,  'Soro',     'Ibrahim',   'Production',   'Opérateur machine',    185000, '2020-11-05', 'Actif', 0, 9.3),
(6,  'Traoré',   'Amara',     'Production',   'Opérateur machine',    185000, '2022-09-12', 'Actif', 7, 6.5),
(7,  'Ngoran',   'Assi',      'Maintenance',  'Technicien senior',    320000, '2018-04-02', 'Actif', 1, 9.0),
(8,  'Koné',     'Bamba',     'Maintenance',  'Technicien',           275000, '2020-07-15', 'Actif', 2, 8.2),
(9,  'Ouédraogo','Marie',     'Qualité',      'Contrôleuse qualité',  220000, '2021-05-20', 'Actif', 4, 8.0),
(10, 'Cissé',    'Dramane',   'Qualité',      'Responsable qualité',  380000, '2017-02-10', 'Actif', 0, 9.5),
(11, 'Bah',      'Mariama',   'Logistique',   'Magasinière',          200000, '2022-03-08', 'Actif', 6, 7.0),
(12, 'Touré',    'Seydou',    'Logistique',   'Responsable stock',    310000, '2019-10-25', 'Actif', 1, 8.8),
(13, 'Dao',      'Adjoa',     'RH',           'Assistante RH',        230000, '2021-08-14', 'Actif', 3, 7.9),
(14, 'Yéo',      'Lacina',    'RH',           'DRH',                  550000, '2015-06-01', 'Actif', 0, 9.2),
(15, 'Coulibaly','Moussa',    'Production',   'Chef de ligne',        255000, '2020-04-18', 'Congé',10, 6.8);

DROP TABLE IF EXISTS qualite;
CREATE TABLE qualite (
    id              INT PRIMARY KEY,
    lot_id          VARCHAR(15),
    machine_id      VARCHAR(10),
    produit         VARCHAR(50),
    quantite_kg     INT,
    conforme_kg     INT,
    rebut_kg        INT,
    motif_rebut     VARCHAR(100),
    controleur      VARCHAR(50),
    date_controle   DATE
);
 
INSERT INTO qualite VALUES
(1,  'LOT-2604-001','M01','Huile raffinée', 8500, 8380,120,'Impureté détectée',     'Ouédraogo Marie','2026-04-01'),
(2,  'LOT-2604-002','M02','Huile raffinée', 7800, 7600,200,'Acidité hors norme',    'Ouédraogo Marie','2026-04-01'),
(3,  'LOT-2604-003','M03','Farine de maïs', 12000,11650,350,'Humidité excessive',   'Cissé Dramane',  '2026-04-01'),
(4,  'LOT-2604-004','M04','Farine de maïs', 11500,11320,180,'Corps étrangers',      'Cissé Dramane',  '2026-04-01'),
(5,  'LOT-2604-005','M05','Sucre blanc',    15000,14580,420,'Granulométrie anorm.', 'Ouédraogo Marie','2026-04-01'),
(6,  'LOT-2604-006','M01','Huile raffinée', 8700, 8590,110,'Impureté détectée',     'Ouédraogo Marie','2026-04-02'),
(7,  'LOT-2604-007','M02','Huile raffinée', 7500, 7270,230,'Acidité hors norme',    'Cissé Dramane',  '2026-04-02'),
(8,  'LOT-2604-008','M03','Farine de maïs', 11800,11500,300,'Humidité excessive',   'Ouédraogo Marie','2026-04-02'),
(9,  'LOT-2604-009','M04','Farine de maïs', 12000,11840,160,'Granulométrie anorm.', 'Cissé Dramane',  '2026-04-02'),
(10, 'LOT-2604-010','M05','Sucre blanc',    14500,14110,390,'Corps étrangers',       'Ouédraogo Marie','2026-04-02'),
(11, 'LOT-2604-011','M01','Huile raffinée', 9000, 8905, 95,'Impureté légère',       'Cissé Dramane',  '2026-04-03'),
(12, 'LOT-2604-012','M02','Huile raffinée', 8200, 7990,210,'Acidité hors norme',    'Ouédraogo Marie','2026-04-03'),
(13, 'LOT-2604-013','M03','Farine de maïs', 12500,12220,280,'Humidité excessive',   'Cissé Dramane',  '2026-04-03'),
(14, 'LOT-2604-014','M04','Farine de maïs', 11000,10860,140,'Corps étrangers',      'Ouédraogo Marie','2026-04-03'),
(15, 'LOT-2604-015','M05','Sucre blanc',    15500,15050,450,'Granulométrie anorm.', 'Cissé Dramane',  '2026-04-03');

DROP TABLE IF EXISTS logistique;
CREATE TABLE logistique (
    id              INT PRIMARY KEY,
    ref_mouvement   VARCHAR(15),
    type_mouvement  VARCHAR(20),
    produit         VARCHAR(50),
    quantite_kg     INT,
    fournisseur_client VARCHAR(60),
    transporteur    VARCHAR(50),
    cout_transport  INT,
    delai_prevu_j   INT,
    delai_reel_j    INT,
    statut          VARCHAR(20),
    date_mouvement  DATE
);
 
INSERT INTO logistique VALUES
(1,  'MVT-001','Entrée',  'Maïs brut',      50000,'Coop Agricole Katiola','Camion SITARAIL', 85000, 2,2,'Livré',   '2026-04-01'),
(2,  'MVT-002','Entrée',  'Canne à sucre',  80000,'AGRI-SUCRE Ferké',    'Transport Yafou',120000, 3,4,'En retard','2026-04-01'),
(3,  'MVT-003','Sortie',  'Huile raffinée', 16000,'GBK Distribution',    'Camion SITARAIL', 62000, 1,1,'Livré',   '2026-04-02'),
(4,  'MVT-004','Sortie',  'Farine de maïs', 22000,'Boulangerie Abidjan', 'Transport Yafou', 45000, 2,2,'Livré',   '2026-04-02'),
(5,  'MVT-005','Entrée',  'Huile brute',    30000,'Palm CI Agboville',   'Camion SITARAIL', 70000, 1,1,'Livré',   '2026-04-03'),
(6,  'MVT-006','Sortie',  'Sucre blanc',    28000,'Supermarché CDCI',    'Transport Yafou', 55000, 1,2,'En retard','2026-04-03'),
(7,  'MVT-007','Entrée',  'Maïs brut',      45000,'Coop Agricole Katiola','Camion SITARAIL', 78000, 2,2,'Livré',   '2026-04-04'),
(8,  'MVT-008','Sortie',  'Huile raffinée', 17500,'Restaurant Palace',   'Camion SITARAIL', 38000, 1,1,'Livré',   '2026-04-04'),
(9,  'MVT-009','Sortie',  'Farine de maïs', 25000,'Minoterie Daloa',     'Transport Yafou', 90000, 3,3,'Livré',   '2026-04-05'),
(10, 'MVT-010','Entrée',  'Canne à sucre',  90000,'AGRI-SUCRE Ferké',    'Camion SITARAIL',135000, 3,5,'En retard','2026-04-05'),
(11, 'MVT-011','Sortie',  'Sucre blanc',    32000,'Export Ghana',        'Transport Yafou',180000, 4,4,'Livré',   '2026-04-07'),
(12, 'MVT-012','Entrée',  'Huile brute',    35000,'Palm CI Agboville',   'Camion SITARAIL', 75000, 1,1,'Livré',   '2026-04-07'),
(13, 'MVT-013','Sortie',  'Huile raffinée', 18000,'GBK Distribution',    'Transport Yafou', 65000, 1,3,'En retard','2026-04-07'),
(14, 'MVT-014','Entrée',  'Maïs brut',      48000,'Coop Agricole Katiola','Camion SITARAIL', 82000, 2,2,'Livré',   '2026-04-07'),
(15, 'MVT-015','Sortie',  'Farine de maïs', 20000,'Boulangerie Abidjan', 'Camion SITARAIL', 42000, 1,1,'Livré',   '2026-04-07');






















