CREATE TABLE `prestamistas` (
	`id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
	`cod_prestamista` VARCHAR(120) NULL DEFAULT NULL COLLATE 'utf8mb4_unicode_ci',
	`nombre` VARCHAR(120) NULL DEFAULT NULL COLLATE 'utf8mb4_unicode_ci',
	`email` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8mb4_unicode_ci',
	`dni` INT(10) NULL DEFAULT NULL,
	`cod_programa` BIGINT(20) UNSIGNED NULL DEFAULT NULL,
	`semestre` VARCHAR(10) NULL DEFAULT NULL COLLATE 'utf8mb4_unicode_ci',
	`cargo` VARCHAR(200) NULL DEFAULT NULL COLLATE 'utf8mb4_unicode_ci',
	`created_at` TIMESTAMP NULL DEFAULT NULL,
	`updated_at` TIMESTAMP NULL DEFAULT NULL,
	PRIMARY KEY (`id`) USING BTREE,
	INDEX `cod_programa` (`cod_programa`) USING BTREE,
	CONSTRAINT `FK_prestamistas_programa` FOREIGN KEY (`cod_programa`) REFERENCES `programa` (`id`) ON UPDATE NO ACTION ON DELETE NO ACTION
)
COLLATE='utf8mb4_unicode_ci'
ENGINE=InnoDB
;
/* INSERT QUERY NO: 1 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000001', ' Cristian ACUÑA HUACHACA', '75768786@lasalleurubamba.edu.pe', 75768786, 6, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 2 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000002', ' Diego David ALVAREZ MESCCO', '72230971@lasalleurubamba.edu.pe', 72230971, 6, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 3 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000003', ' Abdiel AMPA SALAS', '63168872@lasalleurubamba.edu.pe', 63168872, 6, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 4 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000004', ' Andrew ASCARZA HUAMANÑAHUI', '77163133@lasalleurubamba.edu.pe', 77163133, 6, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 5 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000005', ' Julio Smit FUENTES SANTIAGO', '76046519@lasalleurubamba.edu.pe', 76046519, 6, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 6 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000006', ' Maicol David GUZMAN MIRANDA', '75788618@lasalleurubamba.edu.pe', 75788618, 6, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 7 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000007', ' Alvaro David HUALLA HUAMAN', '74081626@lasalleurubamba.edu.pe', 74081626, 6, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 8 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000008', ' Jinme Aldo HUAYTAN USCAMAYTA', '73814493@lasalleurubamba.edu.pe', 73814493, 6, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 9 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000009', ' Jose Adolfo IBERICO SUÑA', '60021765@lasalleurubamba.edu.pe', 60021765, 6, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 10 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000010', ' Gabriel JUAREZ CHIPA', '76726933@lasalleurubamba.edu.pe', 76726933, 6, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 11 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000011', ' Winy Daniela JUAREZ CHIPA', '76692345@lasalleurubamba.edu.pe', 76692345, 6, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 12 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000012', ' Eliazar MAMANI HUILLHUA', '76818531@lasalleurubamba.edu.pe', 76818531, 6, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 13 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000013', ' Alcides Salomon MAMANI QUISPE', '74696433@lasalleurubamba.edu.pe', 74696433, 6, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 14 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000014', ' Frank Carlos MAMANI RAMOS', '71073858@lasalleurubamba.edu.pe', 71073858, 6, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 15 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000015', ' Alexander MANCCO CANAL', '73571574@lasalleurubamba.edu.pe', 73571574, 6, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 16 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000016', ' Jolaus Jerico MEDINA QUISPE', '76020062@lasalleurubamba.edu.pe', 76020062, 6, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 17 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000017', ' Franco Enrique NUÑEZ QUISPE', '76543740@lasalleurubamba.edu.pe', 76543740, 6, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 18 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000018', ' David Alexis ORUE OTAZU', '72230983@lasalleurubamba.edu.pe', 72230983, 6, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 19 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000019', ' Franz Moises PALMA UMERES', '73883915@lasalleurubamba.edu.pe', 73883915, 6, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 20 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000020', ' Edilberto PAUCCAR SURCO', '75757578@lasalleurubamba.edu.pe', 75757578, 6, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 21 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000021', ' Henry Cristian PINARES SUCA', '62690683@lasalleurubamba.edu.pe', 62690683, 6, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 22 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000022', ' Edgar PUMA MACHACCA', '74125269@lasalleurubamba.edu.pe', 74125269, 6, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 23 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000023', ' Russmell QUINTANA VALENCIA', '75481322@lasalleurubamba.edu.pe', 75481322, 6, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 24 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000024', ' Eliazar QUISPE AYMA', '76020066@lasalleurubamba.edu.pe', 76020066, 6, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 25 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000025', ' Carlos Eduardo QUISPE CHUCTAYO', '73975886@lasalleurubamba.edu.pe', 73975886, 6, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 26 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000026', ' Cristian QUISPE PARISACA', '76077373@lasalleurubamba.edu.pe', 76077373, 6, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 27 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000027', ' Cheyla QUISPE PAULLO', '73797341@lasalleurubamba.edu.pe', 73797341, 6, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 28 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000028', ' Yoel Antonio RAMOS GUTIERREZ', '47634738@lasalleurubamba.edu.pe', 47634738, 6, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 29 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000029', ' Juan Wilfredo RODRIGUEZ YUPANQUI', '60021793@lasalleurubamba.edu.pe', 60021793, 6, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 30 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000030', ' Hebert SALAS TRIVEÑO', '70604523@lasalleurubamba.edu.pe', 70604523, 6, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 31 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000031', ' Cenina Eva SERNA HUAMANI', '60457742@lasalleurubamba.edu.pe', 60457742, 6, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 32 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000032', ' Andy Rivelino SORIA SANCHEZ', '73574511@lasalleurubamba.edu.pe', 73574511, 6, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 33 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000033', ' Melissa Georgina TINTA QUISPE', '73797358@lasalleurubamba.edu.pe', 73797358, 6, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 34 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000034', ' Brayan TTITO MARISCAL', '60021891@lasalleurubamba.edu.pe', 60021891, 6, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 35 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000035', ' Uber TUNQUE HUISA', '76006310@lasalleurubamba.edu.pe', 76006310, 6, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 36 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000036', ' Jhunior Kaly USCAMAYTA PUMAINCA', '75189779@lasalleurubamba.edu.pe', 75189779, 6, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 37 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000037', ' Jorym VELASQUE BUSTINZA', '71512144@lasalleurubamba.edu.pe', 71512144, 6, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 38 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000038', ' Reyna Diana VELASQUEZ CHALLCO', '75663873@lasalleurubamba.edu.pe', 75663873, 6, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 39 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000039', ' Nadinne Maritza YBARRA ACHAHUI', '60739716@lasalleurubamba.edu.pe', 60739716, 6, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 40 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000040', ' Soledad AQUINO QUISPE', '60693734@lasalleurubamba.edu.pe', 60693734, 6, 'VI', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 41 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000041', ' Jilber ARANZABAL PPATY', '77904211@lasalleurubamba.edu.pe', 77904211, 6, 'VI', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 42 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000042', ' Christian Aldayr Giancarlos ARQQUE ESPINOSA', '73208731@lasalleurubamba.edu.pe', 73208731, 6, 'VI', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 43 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000043', ' Jade Azucena CCOISO RADO', '71788411@lasalleurubamba.edu.pe', 71788411, 6, 'VI', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 44 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000044', ' Absalon CESPEDES GALIANO', '77087918@lasalleurubamba.edu.pe', 77087918, 6, 'VI', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 45 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000045', ' Luis Angel CHUCHULLO HANCCO', '76935665@lasalleurubamba.edu.pe', 76935665, 6, 'VI', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 46 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000046', ' Jhonmils CHUSPE LUCANA', '74583874@lasalleurubamba.edu.pe', 74583874, 6, 'VI', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 47 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000047', ' Julio Cesar CONDORI CJURO', '73955701@lasalleurubamba.edu.pe', 73955701, 6, 'VI', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 48 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000048', ' Killa Nueva CRUZ CHARAHUAYTA', '76595703@lasalleurubamba.edu.pe', 76595703, 6, 'VI', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 49 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000049', ' Kolins Anthony DOMINGUEZ PACHECO', '73943062@lasalleurubamba.edu.pe', 73943062, 6, 'VI', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 50 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000050', ' Diego Facundo DURAND PACHECO', '76129660@lasalleurubamba.edu.pe', 76129660, 6, 'VI', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 51 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000051', ' Carmen Rosa FLOREZ QUISPE', '76062366@lasalleurubamba.edu.pe', 76062366, 6, 'VI', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 52 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000052', ' Julio Cesar GASTAÑAGA LINES', '73518564@lasalleurubamba.edu.pe', 73518564, 6, 'VI', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 53 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000053', ' Vidala Teresa GONZALES RODRIGUEZ', '73989426@lasalleurubamba.edu.pe', 73989426, 6, 'VI', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 54 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000054', ' Jhon Martin GUARDANAULA ROJO', '76046782@lasalleurubamba.edu.pe', 76046782, 6, 'VI', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 55 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000055', ' Eva Luz GUTIERREZ QUISPE', '76164782@lasalleurubamba.edu.pe', 76164782, 6, 'VI', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 56 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000056', ' Michael Piero HUAMAN SUCA', '76914327@lasalleurubamba.edu.pe', 76914327, 6, 'VI', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 57 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000057', ' Luis Angel HUAMANGA CHUCHULLO', '73582466@lasalleurubamba.edu.pe', 73582466, 6, 'VI', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 58 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000058', ' Frank Wilbert MAYO YUPANQUI', '75226319@lasalleurubamba.edu.pe', 75226319, 6, 'VI', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 59 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000059', ' Diego Adayr MONTES VILLAVICENCIO', '76453247@lasalleurubamba.edu.pe', 76453247, 6, 'VI', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 60 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000060', ' Yakelin ORUE ANDRADE', '73574295@lasalleurubamba.edu.pe', 73574295, 6, 'VI', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 61 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000061', ' Marcelo Arturo PEÑA CCONISLLA', '74389872@lasalleurubamba.edu.pe', 74389872, 6, 'VI', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 62 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000062', ' Dante Paulet QUISPE HERMOZA', '75932953@lasalleurubamba.edu.pe', 75932953, 6, 'VI', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 63 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000063', ' Katerine Karina RAMOS SUCA', '74390006@lasalleurubamba.edu.pe', 74390006, 6, 'VI', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 64 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000064', ' Joel Alvaro TARCO CONDORI', '72636265@lasalleurubamba.edu.pe', 72636265, 6, 'VI', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 65 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000065', ' Jairo Gorka VARGAS BERRIOS', '70582518@lasalleurubamba.edu.pe', 70582518, 6, 'VI', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 66 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000066', ' Ruth Mary Carmen ZAMBRANO MEJIA', '76022380@lasalleurubamba.edu.pe', 76022380, 6, 'VI', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 67 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000067', ' Jairo Esteban ALVAREZ QUISPE', '71584224@lasalleurubamba.edu.pe', 71584224, 2, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 68 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000068', ' Jhon Ever CARBAJAL QUISPE', '62404597@lasalleurubamba.edu.pe', 62404597, 2, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 69 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000069', ' Rogelio CCALLO HUILLCA', '76134197@lasalleurubamba.edu.pe', 76134197, 2, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 70 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000070', ' Edison CCANA CHULLUNCUY', '77335554@lasalleurubamba.edu.pe', 77335554, 2, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 71 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000071', ' Jhonatan CCORAHUA PUMA', '74409057@lasalleurubamba.edu.pe', 74409057, 2, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 72 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000072', ' Jynthu CHASIN PASTOR', '77346548@lasalleurubamba.edu.pe', 77346548, 2, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 73 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000073', ' Antony Fabian CHAVEZ CUEVA', '60411092@lasalleurubamba.edu.pe', 60411092, 2, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 74 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000074', ' Edward CHAVEZ HACHO', '74536854@lasalleurubamba.edu.pe', 74536854, 2, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 75 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000075', ' Alondra Abigail CHIPANA ILLA', '60427348@lasalleurubamba.edu.pe', 60427348, 2, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 76 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000076', ' Franklin Nestor CHOQQUE ROCCA', '74660346@lasalleurubamba.edu.pe', 74660346, 2, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 77 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000077', ' Claudio CRUZ HUILLCA', '77242594@lasalleurubamba.edu.pe', 77242594, 2, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 78 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000078', ' Cristian ENRIQUEZ QUISPE', '75829075@lasalleurubamba.edu.pe', 75829075, 2, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 79 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000079', ' Eliezer Joel FARFAN CRUZ', '75620493@lasalleurubamba.edu.pe', 75620493, 2, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 80 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000080', ' Esau GUTIERREZ CCOLOMA', '76421850@lasalleurubamba.edu.pe', 76421850, 2, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 81 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000081', ' Elisban HUAMAN ABENDAÑO', '74627205@lasalleurubamba.edu.pe', 74627205, 2, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 82 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000082', ' Reyna HUAMAN HUAYTA', '75792387@lasalleurubamba.edu.pe', 75792387, 2, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 83 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000083', ' Wilfredo HUAMAN MARCA', '76555978@lasalleurubamba.edu.pe', 76555978, 2, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 84 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000084', ' Marco HUILLCA ROBLES', '44602225@lasalleurubamba.edu.pe', 44602225, 2, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 85 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000085', ' Edison INGLES CHULLO', '75059071@lasalleurubamba.edu.pe', 75059071, 2, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 86 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000086', ' Jhon Hector INQUILTUPA HUILLCA', '75788540@lasalleurubamba.edu.pe', 75788540, 2, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 87 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000087', ' Alberth LAUCATA ECHAME', '76383997@lasalleurubamba.edu.pe', 76383997, 2, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 88 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000088', ' Julio LLANOS OTAZU', '77541135@lasalleurubamba.edu.pe', 77541135, 2, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 89 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000089', ' Ruth Britney MAMANI MAMANI', '72719652@lasalleurubamba.edu.pe', 72719652, 2, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 90 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000090', ' Ana Marilu MAMANI MEDINA', '76765445@lasalleurubamba.edu.pe', 76765445, 2, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 91 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000091', ' David Dario MAMANI YUPANQUI', '76134668@lasalleurubamba.edu.pe', 76134668, 2, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 92 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000092', ' Holeer MELO MEDINA', '76345610@lasalleurubamba.edu.pe', 76345610, 2, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 93 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000093', ' Keyla Saret OCAMPO PEÑA', '77417545@lasalleurubamba.edu.pe', 77417545, 2, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 94 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000094', ' Johan Joel OLAVE LIMACHI', '48539878@lasalleurubamba.edu.pe', 48539878, 2, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 95 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000095', ' Adon Roger OROSCO HURTADO', '70031861@lasalleurubamba.edu.pe', 70031861, 2, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 96 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000096', ' Maricielo PORRAS YUPANQUI', '60752344@lasalleurubamba.edu.pe', 60752344, 2, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 97 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000097', ' Mario Abel ROJAS QUINTANILLA', '74502907@lasalleurubamba.edu.pe', 74502907, 2, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 98 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000098', ' Benjamin ROJAS QUISPE', '71540828@lasalleurubamba.edu.pe', 71540828, 2, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 99 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000099', ' Orlando SAYHUA SALLO', '75862094@lasalleurubamba.edu.pe', 75862094, 2, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 100 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000100', ' Elisvan Yhojany SICUS CCOYO', '76172877@lasalleurubamba.edu.pe', 76172877, 2, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 101 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000101', ' Disney TAPARA PILLCO', '72964819@lasalleurubamba.edu.pe', 72964819, 2, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 102 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000102', ' Alfredo TTITO TTITO', '47974296@lasalleurubamba.edu.pe', 47974296, 2, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 103 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000103', ' Yulisa VALENCIA SONCCO', '63276799@lasalleurubamba.edu.pe', 63276799, 2, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 104 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000104', ' Yulieth Valeria ASLLA QUISPE', '60725705@lasalleurubamba.edu.pe', 60725705, 2, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 105 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000105', ' Alex Kevin ASTO HUANACCHIRI', '76046792@lasalleurubamba.edu.pe', 76046792, 2, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 106 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000106', ' Alfredo BAZAN HUAMAN', '72960823@lasalleurubamba.edu.pe', 72960823, 2, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 107 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000107', ' Sandra BUENO CAMACHO', '77432803@lasalleurubamba.edu.pe', 77432803, 2, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 108 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000108', ' Anabel Orlanda CCOYA QUISPE', '76090090@lasalleurubamba.edu.pe', 76090090, 2, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 109 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000109', ' Yojan Paul CHURA MAMANI', '71935582@lasalleurubamba.edu.pe', 71935582, 2, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 110 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000110', ' Jayerson FARFAN BERIA', '72162095@lasalleurubamba.edu.pe', 72162095, 2, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 111 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000111', ' Robert Lenin FLORES LAYME', '75452530@lasalleurubamba.edu.pe', 75452530, 2, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 112 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000112', ' David GUTIERREZ CONDORl', '60351748@lasalleurubamba.edu.pe', 60351748, 2, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 113 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000113', ' Anali lvanesa HANCCO BALTAZAR', '77419761@lasalleurubamba.edu.pe', 77419761, 2, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 114 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000114', ' Americo HUALLPA QUISPE', '75862097@lasalleurubamba.edu.pe', 75862097, 2, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 115 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000115', ' Percy HUALLPATAIPE MACEDO', '77346919@lasalleurubamba.edu.pe', 77346919, 2, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 116 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000116', ' Darsy Shamir HUAMAN LLANOS', '76053684@lasalleurubamba.edu.pe', 76053684, 2, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 117 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000117', ' Jesmill William HUAMAN QUISPE', '74296768@lasalleurubamba.edu.pe', 74296768, 2, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 118 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000118', ' Luis Fernando HUAMAN QUISPE', '75974549@lasalleurubamba.edu.pe', 75974549, 2, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 119 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000119', ' Jefersson David HUILLCA OXA', '74915591@lasalleurubamba.edu.pe', 74915591, 2, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 120 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000120', ' Marco Valentin HUILLCA SAICO', '74214233@lasalleurubamba.edu.pe', 74214233, 2, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 121 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000121', ' Maria lsabel HUILLCA VARGAS', '76200958@lasalleurubamba.edu.pe', 76200958, 2, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 122 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000122', ' Sandro INQUILLAY CCANA', '62330892@lasalleurubamba.edu.pe', 62330892, 2, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 123 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000123', ' Juan Anibal MASIAS YUPANQUI ', '76241981@lasalleurubamba.edu.pe', 76241981, 2, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 124 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000124', ' Gerber MERMA CAMALA', '73965048@lasalleurubamba.edu.pe', 73965048, 2, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 125 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000125', ' Yosheli Clara MESCCO FARI', '78111731@lasalleurubamba.edu.pe', 78111731, 2, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 126 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000126', ' Luz Clarita PAZO CHIPA', '77425494@lasalleurubamba.edu.pe', 77425494, 2, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 127 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000127', ' Luz Patricia QUISPE CCOLQQUERE', '76037453@lasalleurubamba.edu.pe', 76037453, 2, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 128 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000128', ' Walter QUISPE HUILLCA', '73868349@lasalleurubamba.edu.pe', 73868349, 2, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 129 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000129', ' Juan Osear QUISPE MAYTA', '74573801@lasalleurubamba.edu.pe', 74573801, 2, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 130 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000130', ' Abrahan QUISPE SULLCAPUMA', '77334734@lasalleurubamba.edu.pe', 77334734, 2, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 131 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000131', ' Hermogenes QUISPE VASQUEZ', '71817648@lasalleurubamba.edu.pe', 71817648, 2, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 132 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000132', ' Daniela SERRANO TORRES', '76138611@lasalleurubamba.edu.pe', 76138611, 2, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 133 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000133', ' Maribel TAIPICURI HUAMAN', '77077616@lasalleurubamba.edu.pe', 77077616, 2, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 134 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000134', ' Denilson Reny TORRES OCAMPO', '78286518@lasalleurubamba.edu.pe', 78286518, 2, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 135 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000135', ' Romel Alvaro TURPO MAMANI', '75824158@lasalleurubamba.edu.pe', 75824158, 2, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 136 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000136', ' Merly VARGAS QUISPE', '73964469@lasalleurubamba.edu.pe', 73964469, 2, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 137 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000137', ' Moises VEGA HUILLCA', '75997349@lasalleurubamba.edu.pe', 75997349, 2, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 138 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000138', ' Flaviamela VELASQUEZ CRUZ', '75214707@lasalleurubamba.edu.pe', 75214707, 2, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 139 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000139', ' Yussely  Gabriela ZAMBRANO  CHUCHULLO', '70367850@lasalleurubamba.edu.pe', 70367850, 2, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 140 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000140', ' Osbel Jesus CONDORI LIZARASO', '74246967@lasalleurubamba.edu.pe', 74246967, 2, 'VI', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 141 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000141', ' Doris CONDORI MAMANI', '77707436@lasalleurubamba.edu.pe', 77707436, 2, 'VI', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 142 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000142', ' Moises ECHAME CISNEROS', '76383998@lasalleurubamba.edu.pe', 76383998, 2, 'VI', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 143 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000143', ' Nohelia Lisbeth GARATE HUAMAN', '74527797@lasalleurubamba.edu.pe', 74527797, 2, 'VI', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 144 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000144', ' Miluska GINCHO QUISPE', '62330884@lasalleurubamba.edu.pe', 62330884, 2, 'VI', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 145 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000145', ' Rosa Rina GUTIERREZ SICCOS', '74534629@lasalleurubamba.edu.pe', 74534629, 2, 'VI', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 146 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000146', ' Ronaldo HUACAC RUDAS', '77528734@lasalleurubamba.edu.pe', 77528734, 2, 'VI', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 147 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000147', ' Jorge Luis HUAMAN PILLCO', '74131818@lasalleurubamba.edu.pe', 74131818, 2, 'VI', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 148 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000148', ' Eulogia HUILLCA HOLGADO', '73862920@lasalleurubamba.edu.pe', 73862920, 2, 'VI', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 149 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000149', 'Hernan KELCCA MORMONTOY', '73862699@lasalleurubamba.edu.pe', 73862699, 2, 'VI', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 150 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000150', ' Auxiliadora LUNA SULLCA', '72097286@lasalleurubamba.edu.pe', 72097286, 2, 'VI', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 151 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000151', ' Jose Alejandro LUNA SULLCA', '72092403@lasalleurubamba.edu.pe', 72092403, 2, 'VI', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 152 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000152', ' Donny Jucenael MAMANI FARFAN', '74553758@lasalleurubamba.edu.pe', 74553758, 2, 'VI', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 153 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000153', ' Saul NINA HUAMAN', '71824707@lasalleurubamba.edu.pe', 71824707, 2, 'VI', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 154 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000154', ' Clara Nazaret PATILLA ESPINOZA', '71833570@lasalleurubamba.edu.pe', 71833570, 2, 'VI', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 155 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000155', ' Honorato PAUCAR PUMA', '74455001@lasalleurubamba.edu.pe', 74455001, 2, 'VI', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 156 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000156', ' Clarisa Yorcely PEREZ PASTOR', '72202189@lasalleurubamba.edu.pe', 72202189, 2, 'VI', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 157 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000157', ' Yaisun PEREZ PASTOR', '75813734@lasalleurubamba.edu.pe', 75813734, 2, 'VI', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 158 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000158', ' Kevin QUINO LAGUNA', '73188415@lasalleurubamba.edu.pe', 73188415, 2, 'VI', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 159 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000159', ' Jhon Jaime QUISPE CCOLQUE', '71907849@lasalleurubamba.edu.pe', 71907849, 2, 'VI', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 160 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000160', ' Edu QUISPE MESA', '72237016@lasalleurubamba.edu.pe', 72237016, 2, 'VI', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 161 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000161', ' Franklin QUISPE PUCYURA', '73371333@lasalleurubamba.edu.pe', 73371333, 2, 'VI', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 162 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000162', ' Carlos QUISPE TOMAYCONZA', '76456643@lasalleurubamba.edu.pe', 76456643, 2, 'VI', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 163 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000163', ' Josue QUISPE TTITO', '76198307@lasalleurubamba.edu.pe', 76198307, 2, 'VI', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 164 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000164', ' Miguel Angel SALAS QUILLAHUAMAN', '74583841@lasalleurubamba.edu.pe', 74583841, 2, 'VI', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 165 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000165', ' Deysi SINGUÑA QUISPE', '77380873@lasalleurubamba.edu.pe', 77380873, 2, 'VI', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 166 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000166', ' James VARA USCAMAYTA', '46642123@lasalleurubamba.edu.pe', 46642123, 2, 'VI', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 167 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000167', ' Eva Luz BAYONA ITURRIAGA', '76146425@lasalleurubamba.edu.pe', 76146425, 8, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 168 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000168', ' Jade Celeste BETANCUR CARDENAS', '60897378@lasalleurubamba.edu.pe', 60897378, 8, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 169 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000169', ' Rosayda CHAMPI PUMA', '72294226@lasalleurubamba.edu.pe', 72294226, 8, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 170 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000170', ' Marisol CONDORI TAPARA', '76206847@lasalleurubamba.edu.pe', 76206847, 8, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 171 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000171', ' Bella Marcia DURAN CONDORI', '71817670@lasalleurubamba.edu.pe', 71817670, 8, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 172 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000172', ' Jazmin ESCALANTE ENRIQUEZ', '74367167@lasalleurubamba.edu.pe', 74367167, 8, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 173 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000173', ' Alicia ESPINOZA CUELLAR', '77127119@lasalleurubamba.edu.pe', 77127119, 8, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 174 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000174', ' Lidia ESTRADA CAMPANA', '41962209@lasalleurubamba.edu.pe', 41962209, 8, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 175 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000175', ' Luis Antonio FRANCO CARRASCO', '60411107@lasalleurubamba.edu.pe', 60411107, 8, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 176 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000176', ' Leticia GONZALES QUISPE', '73574302@lasalleurubamba.edu.pe', 73574302, 8, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 177 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000177', ' Lisbeth Paulina HUAMAN LAIME', '77053178@lasalleurubamba.edu.pe', 77053178, 8, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 178 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000178', ' Luzmilda HUARACHA TACO', '74435997@lasalleurubamba.edu.pe', 74435997, 8, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 179 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000179', ' Wilfredo JIMENEZ BACA', '73874896@lasalleurubamba.edu.pe', 73874896, 8, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 180 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000180', ' Fiorela MASIAS HUAMAN', '78634692@lasalleurubamba.edu.pe', 78634692, 8, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 181 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000181', ' Celia QUISPE CONDORI', '60427277@lasalleurubamba.edu.pe', 60427277, 8, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 182 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000182', ' Zorayda UGARTE LLANGURE', '72006835@lasalleurubamba.edu.pe', 72006835, 8, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 183 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000183', ' Maria Jesus USCA QUISPE', '77538121@lasalleurubamba.edu.pe', 77538121, 8, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 184 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000184', ' Leoner VILLACORTA CJUIRO', '73868367@lasalleurubamba.edu.pe', 73868367, 8, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 185 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000185', ' Pedro VILLACORTA CJUIRO', '73873895@lasalleurubamba.edu.pe', 73873895, 8, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 186 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000186', ' Ivan ZUNIGA SILVA', '77127057@lasalleurubamba.edu.pe', 77127057, 8, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 187 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000187', ' Julio Cesar ARKJHE QUISPE', '76138631@lasalleurubamba.edu.pe', 76138631, 8, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 188 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000188', ' Briceiz Fernanda ATAUCHI ACURIO', '73782089@lasalleurubamba.edu.pe', 73782089, 8, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 189 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000189', ' Lisbeth Lucero AUCCACUSI SALLO', '73865205@lasalleurubamba.edu.pe', 73865205, 8, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 190 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000190', ' Josefina BARRIENTOS BARRIENTOS', '74534703@lasalleurubamba.edu.pe', 74534703, 8, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 191 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000191', ' Sheyla CHASIN PFOCCO', '76164397@lasalleurubamba.edu.pe', 76164397, 8, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 192 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000192', ' Liz Ziomar CONDE CRUZ', '74304031@lasalleurubamba.edu.pe', 74304031, 8, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 193 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000193', ' Dayana CORRALES CONTRERAS', '62488558@lasalleurubamba.edu.pe', 62488558, 8, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 194 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000194', ' Jose Feliciano CRUZ NINAQUISPE', '71448244@lasalleurubamba.edu.pe', 71448244, 8, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 195 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000195', ' Yelca Yulissa ESPINOZA BOHORQUES', '73230458@lasalleurubamba.edu.pe', 73230458, 8, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 196 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000196', ' Flor Esmeralda FARFAN BERIA ', '77538829@lasalleurubamba.edu.pe', 77538829, 8, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 197 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000197', ' Juan Carlos HUAMAN LLAMACPONCCA', '70558960@lasalleurubamba.edu.pe', 70558960, 8, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 198 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000198', ' Lidia HUAMAN QUISPE', '77340734@lasalleurubamba.edu.pe', 77340734, 8, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 199 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000199', ' Josue LLANOS SALLO', '76555260@lasalleurubamba.edu.pe', 76555260, 8, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 200 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000200', ' Marco Alejandro LUQUE VELASQUEZ', '73543000@lasalleurubamba.edu.pe', 73543000, 8, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 201 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000201', ' Karina NAVARRO UÑAPILLCO', '73981368@lasalleurubamba.edu.pe', 73981368, 8, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 202 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000202', ' Livia QUISPE MELO', '75626755@lasalleurubamba.edu.pe', 75626755, 8, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 203 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000203', ' lmelda SALLO HUAMAN', '73862627@lasalleurubamba.edu.pe', 73862627, 8, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 204 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000204', ' Ericka SILVA VERONICA', '76955662@lasalleurubamba.edu.pe', 76955662, 8, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 205 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000205', ' Sarai SUAREZ CARBAJAL', '74317213@lasalleurubamba.edu.pe', 74317213, 8, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 206 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000206', ' Melisa TAYPE CONCHA', '76742650@lasalleurubamba.edu.pe', 76742650, 8, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 207 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000207', ' Yaneth YUCRA CRUZ', '74535026@lasalleurubamba.edu.pe', 74535026, 8, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 208 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000208', ' Milagros Elsa ALLENDE MAMANI', '76080742@lasalleurubamba.edu.pe', 76080742, 1, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 209 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000209', ' Denis APAZA CCAHUA', '62704004@lasalleurubamba.edu.pe', 62704004, 1, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 210 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000210', ' Rayner AYALA HUILLCA', '73803086@lasalleurubamba.edu.pe', 73803086, 1, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 211 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000211', ' Isabel AYALA LOPINTA', '40931573@lasalleurubamba.edu.pe', 40931573, 1, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 212 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000212', ' Maryluz AYMA QUILLAHUAMAN', '73517586@lasalleurubamba.edu.pe', 73517586, 1, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 213 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000213', ' Ronal BERNAL QUISPE', '76037198@lasalleurubamba.edu.pe', 76037198, 1, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 214 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000214', ' Yeampiere CALLAÑAUPA HOLGUIN', '76264162@lasalleurubamba.edu.pe', 76264162, 1, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 215 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000215', ' Leonel Walter CANAL ZUBIZARRETA', '60411076@lasalleurubamba.edu.pe', 60411076, 1, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 216 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000216', ' Anita CCAIHUARI CHOQUE', '76409566@lasalleurubamba.edu.pe', 76409566, 1, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 217 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000217', ' Frank Joel CHOQUE MAMANI', '48482538@lasalleurubamba.edu.pe', 48482538, 1, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 218 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000218', ' Angeles Fiorella CONDORI PAUCCARA', '76440209@lasalleurubamba.edu.pe', 76440209, 1, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 219 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000219', ' Ismael CRUZ QUISPE', '76140953@lasalleurubamba.edu.pe', 76140953, 1, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 220 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000220', ' Briyith Isabel CRUZ TORRES', '75661269@lasalleurubamba.edu.pe', 75661269, 1, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 221 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000221', ' Manuel Lino GIBAJA MEDINA', '76046790@lasalleurubamba.edu.pe', 76046790, 1, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 222 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000222', ' Charlize Alexa GUTIERREZ BLAS', '60724666@lasalleurubamba.edu.pe', 60724666, 1, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 223 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000223', ' Celia GUTIERREZ QUISPE', '76164783@lasalleurubamba.edu.pe', 76164783, 1, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 224 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000224', ' Nancy Susan HUALLPA MEJIA', '76005390@lasalleurubamba.edu.pe', 76005390, 1, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 225 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000225', ' Jengly Betsi HUAMAN DURAN', '77055511@lasalleurubamba.edu.pe', 77055511, 1, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 226 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000226', ' Maycol Cristian HUAMPUTUPA MAYTA', '74124287@lasalleurubamba.edu.pe', 74124287, 1, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 227 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000227', ' Emely LLANOS TIAHUALLPA', '60697694@lasalleurubamba.edu.pe', 60697694, 1, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 228 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000228', ' Rosario MAMANI HUAMAN', '74944879@lasalleurubamba.edu.pe', 74944879, 1, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 229 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000229', ' Ruth Esther MEZA SOTOMOLLO', '63295602@lasalleurubamba.edu.pe', 63295602, 1, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 230 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000230', ' Diana MIRANDA CUSI', '74319333@lasalleurubamba.edu.pe', 74319333, 1, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 231 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000231', ' Maylon Issabo MOLLO CERVANTES', '76543636@lasalleurubamba.edu.pe', 76543636, 1, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 232 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000232', ' Marco Antonio ORURO TAYPE', '04960869@lasalleurubamba.edu.pe', 04960869, 1, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 233 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000233', ' Margiori PALOMINO LENIS', '75612904@lasalleurubamba.edu.pe', 75612904, 1, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 234 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000234', ' Yeni QUILLAHUAMAN HUAMAN', '71804019@lasalleurubamba.edu.pe', 71804019, 1, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 235 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000235', ' Maily Xiomara QUISPE CARDENAS', '77474108@lasalleurubamba.edu.pe', 77474108, 1, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 236 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000236', ' Dalmiro QUISPE RIQUELME', '73807910@lasalleurubamba.edu.pe', 73807910, 1, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 237 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000237', ' Esmeralda QUISPE SALAS', '75478800@lasalleurubamba.edu.pe', 75478800, 1, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 238 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000238', ' Danny Orlando QUISPETUPA CUCHO', '77696605@lasalleurubamba.edu.pe', 77696605, 1, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 239 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000239', ' Flavio RAMOS SALAZAR', '72884527@lasalleurubamba.edu.pe', 72884527, 1, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 240 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000240', ' Clarita RAMOS TTITO', '63772545@lasalleurubamba.edu.pe', 63772545, 1, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 241 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000241', ' Juan Jose REATEGUI HUILLCA', '62558572@lasalleurubamba.edu.pe', 62558572, 1, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 242 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000242', ' Yaritza RODRIGUEZ TAPARA', '74147955@lasalleurubamba.edu.pe', 74147955, 1, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 243 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000243', ' Yeison SALLO HUAMAN', '76031564@lasalleurubamba.edu.pe', 76031564, 1, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 244 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000244', ' Moises SOTO TILLCA', '71516178@lasalleurubamba.edu.pe', 71516178, 1, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 245 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000245', ' Kathlee Mary TEJADA ARENAS', '70604532@lasalleurubamba.edu.pe', 70604532, 1, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 246 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000246', ' Yamira Leonela TTITO CENTENO', '78114576@lasalleurubamba.edu.pe', 78114576, 1, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 247 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000247', ' Leidy TTITO HUALLPAYUNCA', '76463861@lasalleurubamba.edu.pe', 76463861, 1, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 248 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000248', ' Yojan ALCCACONTOR ARAPA', '76185705@lasalleurubamba.edu.pe', 76185705, 1, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 249 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000249', ' Ever Solano APUCUSI QUISPE', '71085325@lasalleurubamba.edu.pe', 71085325, 1, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 250 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000250', ' Marizol CABRERA HURTADO', '72003540@lasalleurubamba.edu.pe', 72003540, 1, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 251 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000251', ' Yony CHAMPI ESTUMBELO', '46566183@lasalleurubamba.edu.pe', 46566183, 1, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 252 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000252', ' Flor Angela CHOQUE MAMANI', '76124394@lasalleurubamba.edu.pe', 76124394, 1, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 253 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000253', ' Jherson Luther CUSIPAUCAR  ORTIZ DEORUE', '76250778@lasalleurubamba.edu.pe', 76250778, 1, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 254 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000254', ' Jhoel Gianmir CUTIRI DURAN', '76046502@lasalleurubamba.edu.pe', 76046502, 1, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 255 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000255', ' Nicol DORADO NINA', '75770637@lasalleurubamba.edu.pe', 75770637, 1, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 256 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000256', ' Giannela Flor DURAN QUISPE ', '70604528@lasalleurubamba.edu.pe', 70604528, 1, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 257 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000257', ' Zenaida ESPINOZA MAMANl', '78023415@lasalleurubamba.edu.pe', 78023415, 1, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 258 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000258', ' Mayra Eliana GONZALES QUISPE', '73797347@lasalleurubamba.edu.pe', 73797347, 1, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 259 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000259', ' Jose Ruben GUEVARA PONCE', '72003530@lasalleurubamba.edu.pe', 72003530, 1, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 260 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000260', ' Luzmagaly Epifanía GUTIERREZ APUCUSl', '72309190@lasalleurubamba.edu.pe', 72309190, 1, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 261 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000261', ' Sherly Nahomy HUAMAN CASTRO', '72964813@lasalleurubamba.edu.pe', 72964813, 1, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 262 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000262', ' Rosa Maria HUAMAN LLAMACPONCCA', '77491114@lasalleurubamba.edu.pe', 77491114, 1, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 263 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000263', ' Beatriz HUARCA HUAMAN', '70551689@lasalleurubamba.edu.pe', 70551689, 1, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 264 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000264', ' Miguel Alejandro INOCENTE CUSIPAUCAR', '61178578@lasalleurubamba.edu.pe', 61178578, 1, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 265 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000265', ' Juvenal LAIME MENDOZA', '76145047@lasalleurubamba.edu.pe', 76145047, 1, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 266 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000266', ' Samuel Alfredo LOVATON SIHUA', '76330124@lasalleurubamba.edu.pe', 76330124, 1, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 267 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000267', ' Kevin LUCANA AGUILAR', '73083319@lasalleurubamba.edu.pe', 73083319, 1, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 268 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000268', ' George Anderson LUNA MORENO', '73868358@lasalleurubamba.edu.pe', 73868358, 1, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 269 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000269', ' Michael Lenin MAMANI HUAMAN', '76035874@lasalleurubamba.edu.pe', 76035874, 1, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 270 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000270', ' Clariza MELENDEZ UMERES', '70582510@lasalleurubamba.edu.pe', 70582510, 1, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 271 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000271', ' Bruce Lee NUÑEZ UTURUNCO', '78292122@lasalleurubamba.edu.pe', 78292122, 1, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 272 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000272', ' Julio Enrique PACHECO QUISPE', '73310116@lasalleurubamba.edu.pe', 73310116, 1, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 273 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000273', ' Denisse Kimberly PUMA HUAMAN', '75015810@lasalleurubamba.edu.pe', 75015810, 1, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 274 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000274', ' Yonathan Ornar QUISPE ITURRIAGA', '73237894@lasalleurubamba.edu.pe', 73237894, 1, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 275 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000275', ' Vanesa QUISPE QUILLAHUAMAN', '75830789@lasalleurubamba.edu.pe', 75830789, 1, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 276 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000276', ' Dany Michael QUISPE QUISPE', '76408719@lasalleurubamba.edu.pe', 76408719, 1, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 277 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000277', ' Jorge Luis QUISPE QUISPE', '81544719@lasalleurubamba.edu.pe', 81544719, 1, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 278 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000278', ' Luis Adriano QUISPE QUISPE', '61675632@lasalleurubamba.edu.pe', 61675632, 1, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 279 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000279', ' Flor Xiomara QUISPITUPA HUAMAN', '75214418@lasalleurubamba.edu.pe', 75214418, 1, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 280 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000280', ' Abel Javier RODRIGUEZ MAURI', '76921081@lasalleurubamba.edu.pe', 76921081, 1, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 281 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000281', 'Yasmin RODRIGUEZ TAPARA', '74147957@lasalleurubamba.edu.pe', 74147957, 1, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 282 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000282', ' Joseph SANCHEZ MESCCO', '75658075@lasalleurubamba.edu.pe', 75658075, 1, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 283 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000283', ' Jhul Angel YUCRA HUAMAN ', '73935447@lasalleurubamba.edu.pe', 73935447, 1, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 284 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000284', ' Brenda Naylyt ZUÑIGA GUTIERREZ', '75214236@lasalleurubamba.edu.pe', 75214236, 1, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 285 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000285', ' Ronald ACURIO MEJIA', '72110356@lasalleurubamba.edu.pe', 72110356, 4, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 286 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000286', ' Esmeralda ATAULLUCO BENAVIDES', '73805312@lasalleurubamba.edu.pe', 73805312, 4, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 287 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000287', ' Juan Jose CALDERON PACHECO', '76046836@lasalleurubamba.edu.pe', 76046836, 4, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 288 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000288', ' Marisol CAMERO HUAMANI', '78015592@lasalleurubamba.edu.pe', 78015592, 4, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 289 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000289', ' Megdaila Meyji CCONCHURO PEÑA', '60242409@lasalleurubamba.edu.pe', 60242409, 4, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 290 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000290', ' Judith Rocio CHOQUE AGUILAR', '76575176@lasalleurubamba.edu.pe', 76575176, 4, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 291 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000291', ' Rebeca DIAZ CAÑARI', '73805750@lasalleurubamba.edu.pe', 73805750, 4, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 292 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000292', ' Erick ESPINOZA FLORES', '76045955@lasalleurubamba.edu.pe', 76045955, 4, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 293 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000293', ' Camila Jearisell FARFAN BERROCAL', '72625654@lasalleurubamba.edu.pe', 72625654, 4, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 294 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000294', ' Roly Ferdinan FLORES CHOCCATA', '76014204@lasalleurubamba.edu.pe', 76014204, 4, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 295 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000295', ' Mijail GONZALES RAMOS', '73186895@lasalleurubamba.edu.pe', 73186895, 4, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 296 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000296', ' Rosa Adriana GUTIERREZ HUAMAN', '73186879@lasalleurubamba.edu.pe', 73186879, 4, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 297 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000297', ' Aaron Gabriel HANCCO DEL RIO', '72845650@lasalleurubamba.edu.pe', 72845650, 4, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 298 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000298', ' Juvenal HUAMAN FUTURI', '76073256@lasalleurubamba.edu.pe', 76073256, 4, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 299 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000299', ' Cristian HUAMPOTUPA HUALLPAYUNCA', '62217663@lasalleurubamba.edu.pe', 62217663, 4, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 300 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000300', ' Nay Ruth HUARACCA PACCO', '60383020@lasalleurubamba.edu.pe', 60383020, 4, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 301 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000301', ' Abrahan HUAYTA ALLENDE', '77132583@lasalleurubamba.edu.pe', 77132583, 4, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 302 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000302', ' Yassin LAZO ILLANES', '73418023@lasalleurubamba.edu.pe', 73418023, 4, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 303 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000303', ' Reyna MACHACCA SULLCAPUMA', '76037445@lasalleurubamba.edu.pe', 76037445, 4, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 304 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000304', ' Alexandra MARCAVILLACA HUARANCCA', '74656921@lasalleurubamba.edu.pe', 74656921, 4, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 305 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000305', ' Kiara MEJIA MARISCAL', '76139777@lasalleurubamba.edu.pe', 76139777, 4, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 306 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000306', ' Marco Antonio MEZA CCAMPAL', '76066881@lasalleurubamba.edu.pe', 76066881, 4, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 307 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000307', ' Eduardo PACHECO VALDERRAMA', '76454927@lasalleurubamba.edu.pe', 76454927, 4, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 308 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000308', ' Adrian Stephano PERALTA VILCA', '75061596@lasalleurubamba.edu.pe', 75061596, 4, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 309 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000309', ' Igor PILLCO MEZA', '76936783@lasalleurubamba.edu.pe', 76936783, 4, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 310 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000310', ' Cheri Lizbeth PUMA CASTILLO', '73805742@lasalleurubamba.edu.pe', 73805742, 4, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 311 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000311', ' Mirian QUISPE MEJIA', '76030210@lasalleurubamba.edu.pe', 76030210, 4, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 312 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000312', ' Yanina QUISPE QUILLAHUAMAN', '75932934@lasalleurubamba.edu.pe', 75932934, 4, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 313 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000313', ' Yolanda QUISPE YLLA', '47338369@lasalleurubamba.edu.pe', 47338369, 4, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 314 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000314', ' Saul QUISPE YUPANQUI', '74886715@lasalleurubamba.edu.pe', 74886715, 4, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 315 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000315', ' Raul Diedez RONDAN CUSI', '74803533@lasalleurubamba.edu.pe', 74803533, 4, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 316 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000316', ' Miledy SALAZAR CHAVEZ', '77683542@lasalleurubamba.edu.pe', 77683542, 4, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 317 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000317', ' Edisson SALLO CONDORI', '75872147@lasalleurubamba.edu.pe', 75872147, 4, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 318 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000318', ' Maria Asmir SANTOS CAVIEDES', '75978655@lasalleurubamba.edu.pe', 75978655, 4, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 319 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000319', ' Mabely SUCA HUAMANI', '74131823@lasalleurubamba.edu.pe', 74131823, 4, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 320 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000320', ' Edwin SULLCA KELCCA', '60656970@lasalleurubamba.edu.pe', 60656970, 4, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 321 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000321', ' Uriel Noe TACO ZAMATA', '76139766@lasalleurubamba.edu.pe', 76139766, 4, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 322 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000322', ' Irma TAPARA QUISPE', '60119886@lasalleurubamba.edu.pe', 60119886, 4, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 323 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000323', ' Gonzalo TORRES SALLO', '76014202@lasalleurubamba.edu.pe', 76014202, 4, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 324 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000324', ' Yeferson YAPURA TUMPAY', '60776858@lasalleurubamba.edu.pe', 60776858, 4, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 325 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000325', ' Jacob APAZA BAYONA', '766692143@lasalleurubamba.edu.pe', 766692143, 4, 'VI', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 326 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000326', ' Lucero Del Carmen BAUTISTA RADO', '741125232@lasalleurubamba.edu.pe', 741125232, 4, 'VI', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 327 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000327', ' Lisbeth Karen BOHORQUEZ QUISPE', '757762406@lasalleurubamba.edu.pe', 757762406, 4, 'VI', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 328 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000328', ' Winy Kelly CAVIEDES CJUNO', '485504762@lasalleurubamba.edu.pe', 485504762, 4, 'VI', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 329 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000329', ' Leonardo CCAMA RIQUELME', '744426941@lasalleurubamba.edu.pe', 744426941, 4, 'VI', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 330 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000330', ' Saidu Yajaida CCORI CHULLO', '760053621@lasalleurubamba.edu.pe', 760053621, 4, 'VI', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 331 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000331', ' Nilda Carla CURO OVIEDO', '763345578@lasalleurubamba.edu.pe', 763345578, 4, 'VI', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 332 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000332', ' Zeudi Julieth DIAZ HILBERTO', '721117301@lasalleurubamba.edu.pe', 721117301, 4, 'VI', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 333 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000333', ' Romario Abdias ESPINOZA MAYO', '776660179@lasalleurubamba.edu.pe', 776660179, 4, 'VI', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 334 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000334', ' Nelly Yeny FLORES LAYME', '754452529@lasalleurubamba.edu.pe', 754452529, 4, 'VI', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 335 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000335', ' Juan Carlos HANCCO AYMA', '760037466@lasalleurubamba.edu.pe', 760037466, 4, 'VI', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 336 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000336', ' Eloy Emerson HANCCO PUMAYALLI', '752214244@lasalleurubamba.edu.pe', 752214244, 4, 'VI', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 337 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000337', ' Aitana Zumilda HERMOZA MORALES', '733341246@lasalleurubamba.edu.pe', 733341246, 4, 'VI', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 338 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000338', ' Sarally HUAMAN PEREZ', '738804231@lasalleurubamba.edu.pe', 738804231, 4, 'VI', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 339 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000339', ' Salomina HUAMAN SALLO', '737739706@lasalleurubamba.edu.pe', 737739706, 4, 'VI', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 340 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000340', ' Maynar ILLA SUTTARAURA', '715513968@lasalleurubamba.edu.pe', 715513968, 4, 'VI', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 341 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000341', ' Yan Carlos MAMANI MAMANI', '731121084@lasalleurubamba.edu.pe', 731121084, 4, 'VI', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 342 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000342', ' Martha MEZA AYMA', '745579441@lasalleurubamba.edu.pe', 745579441, 4, 'VI', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 343 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000343', ' Marco Antonio QUINTANA ROJAS', '735503218@lasalleurubamba.edu.pe', 735503218, 4, 'VI', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 344 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000344', ' Royer QUISPE CCOLQQUEHUANCA', '763303825@lasalleurubamba.edu.pe', 763303825, 4, 'VI', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 345 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000345', ' Susana QUISPE CJUIRO', '758858979@lasalleurubamba.edu.pe', 758858979, 4, 'VI', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 346 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000346', ' Eliana QUISPE CONDORI', '760053663@lasalleurubamba.edu.pe', 760053663, 4, 'VI', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 347 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000347', ' Linda Leide SAAVEDRA HEREDIA', '734466177@lasalleurubamba.edu.pe', 734466177, 4, 'VI', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 348 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000348', ' Luz Pamela UBALDE RAMOS', '731105837@lasalleurubamba.edu.pe', 731105837, 4, 'VI', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 349 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000349', ' Yessenia ACURIO ACURIO', '76139751@lasalleurubamba.edu.pe', 76139751, 7, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 350 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000350', ' Cristian ALCCACONTOR ARAPA', '76089358@lasalleurubamba.edu.pe', 76089358, 7, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 351 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000351', ' Almendra Nancy ARANA HUAMANHUILLCA', '74126995@lasalleurubamba.edu.pe', 74126995, 7, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 352 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000352', ' Maria De los Angeles BACA ALVAREZ', '76794205@lasalleurubamba.edu.pe', 76794205, 7, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 353 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000353', ' Hermelinda Medalid BARRETO VARGAS', '73500427@lasalleurubamba.edu.pe', 73500427, 7, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 354 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000354', ' Roseli lngrid BAUTISTA CJUIRO', '76080761@lasalleurubamba.edu.pe', 76080761, 7, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 355 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000355', ' Abel CALLAÑAUPA RIOS', '76357159@lasalleurubamba.edu.pe', 76357159, 7, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 356 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000356', ' Guicely CHALLCO MAMANI', '74126973@lasalleurubamba.edu.pe', 74126973, 7, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 357 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000357', ' Luis Fernando CHUMPI ORTIZ DE ORUE', '71869336@lasalleurubamba.edu.pe', 71869336, 7, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 358 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000358', ' Arturo CONDORI HUAMAN', '76782394@lasalleurubamba.edu.pe', 76782394, 7, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 359 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000359', ' Carla DIAZ GOMEZ', '76692146@lasalleurubamba.edu.pe', 76692146, 7, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 360 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000360', ' Yeny GORDILLO  VALLENAS', '72955644@lasalleurubamba.edu.pe', 72955644, 7, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 361 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000361', ' Reiner Cristian HUAMAN HUAMAN', '73646876@lasalleurubamba.edu.pe', 73646876, 7, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 362 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000362', ' Nelida HUAMAN PILLCO', '78376383@lasalleurubamba.edu.pe', 78376383, 7, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 363 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000363', ' Paty Damaris HUAMAN QUILLAHUAMAN', '72088523@lasalleurubamba.edu.pe', 72088523, 7, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 364 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000364', ' Belzabeth HUAMAN QUISPE', '74126308@lasalleurubamba.edu.pe', 74126308, 7, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 365 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000365', ' Lisbeth HUAMAN TUMPAY', '75005449@lasalleurubamba.edu.pe', 75005449, 7, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 366 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000366', ' Juliana HUILLCA CCORIMANYA', '76129661@lasalleurubamba.edu.pe', 76129661, 7, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 367 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000367', ' Yanded Yampier LEMA ABARCA ', '70571408@lasalleurubamba.edu.pe', 70571408, 7, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 368 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000368', ' Ana lsabel LLANOS PAÑIHUARA', '73807931@lasalleurubamba.edu.pe', 73807931, 7, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 369 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000369', ' Jose Luis MENDOZA HUAYHUA', '76073279@lasalleurubamba.edu.pe', 76073279, 7, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 370 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000370', ' Melissa Fiorella MEZA COBOS', '72017392@lasalleurubamba.edu.pe', 72017392, 7, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 371 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000371', ' Yoshimar Carlos MOLLO TORRES', '76013645@lasalleurubamba.edu.pe', 76013645, 7, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 372 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000372', ' Erick Jheisson MORALES QUISPE', '74130604@lasalleurubamba.edu.pe', 74130604, 7, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 373 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000373', ' Jefferson MORENO MAÑACCASA', '76743337@lasalleurubamba.edu.pe', 76743337, 7, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 374 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000374', ' Eder Ronaldo MOROCCO BAUTISTA', '73987839@lasalleurubamba.edu.pe', 73987839, 7, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 375 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000375', ' Ruth PHACSI QUILLAHUAMAN', '73975920@lasalleurubamba.edu.pe', 73975920, 7, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 376 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000376', ' Patric Marcelo PILLPINTO QUISPE', '75788547@lasalleurubamba.edu.pe', 75788547, 7, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 377 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000377', ' Celina PUCLLA SALLO', '62704057@lasalleurubamba.edu.pe', 62704057, 7, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 378 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000378', ' Marisol TONCCOCHI LUNA', '76206987@lasalleurubamba.edu.pe', 76206987, 7, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 379 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000379', ' Ana Karenina TRUJILLO SANGAMA', '74221675@lasalleurubamba.edu.pe', 74221675, 7, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 380 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000380', ' Reynaldo VALDEZ TAPARA ', '76046943@lasalleurubamba.edu.pe', 76046943, 7, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 381 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000381', ' Yusnnayda Milagros ZUÑIGA QUISPE', '78720332@lasalleurubamba.edu.pe', 78720332, 7, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 382 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000382', ' Yasmin Stefani CARDENAS QUISPE', '70410904@lasalleurubamba.edu.pe', 70410904, 7, 'VI', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 383 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000383', ' Miss Orquidia CHAUCA ASTO', '73310124@lasalleurubamba.edu.pe', 73310124, 7, 'VI', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 384 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000384', ' Yadira CRUZ MARTINEZ', '77132657@lasalleurubamba.edu.pe', 77132657, 7, 'VI', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 385 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000385', ' Anabel DIAZ ALMANZA', '73237090@lasalleurubamba.edu.pe', 73237090, 7, 'VI', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 386 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000386', ' Luis Mario DIAZ CAÑARI', '73805749@lasalleurubamba.edu.pe', 73805749, 7, 'VI', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 387 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000387', ' Melbyn Alexander ELORRIETA HUANACO', '77924533@lasalleurubamba.edu.pe', 77924533, 7, 'VI', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 388 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000388', ' Lizbeth FLORES LLAMOCCA', '75769008@lasalleurubamba.edu.pe', 75769008, 7, 'VI', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 389 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000389', ' Sonaly FRANCO CARRASCO', '73874871@lasalleurubamba.edu.pe', 73874871, 7, 'VI', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 390 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000390', ' Priscila GONZALES HUARACCA', '77127178@lasalleurubamba.edu.pe', 77127178, 7, 'VI', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 391 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000391', ' Anghela Antoanete GUZMAN ZARABIA', '76555270@lasalleurubamba.edu.pe', 76555270, 7, 'VI', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 392 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000392', ' Luiz Ronaldo HUACARPUMA QUISPE', '74126989@lasalleurubamba.edu.pe', 74126989, 7, 'VI', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 393 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000393', ' Luzdania Betel HUACARPUMA QUISPE', '74125259@lasalleurubamba.edu.pe', 74125259, 7, 'VI', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 394 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000394', ' Miuler HUAMAN ALENCASTRE', '70551336@lasalleurubamba.edu.pe', 70551336, 7, 'VI', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 395 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000395', ' Maria Yadira HUAYTA CHAVEZ', '70665206@lasalleurubamba.edu.pe', 70665206, 7, 'VI', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 396 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000396', ' Mariela ITURRIAGA HUAMAN', '77496985@lasalleurubamba.edu.pe', 77496985, 7, 'VI', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 397 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000397', ' Judith Lidia LAURA SALAS', '78550171@lasalleurubamba.edu.pe', 78550171, 7, 'VI', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 398 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000398', ' Raquel MOYA NAULA', '74314117@lasalleurubamba.edu.pe', 74314117, 7, 'VI', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 399 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000399', ' Kely NUÑEZ OBLITAS', '76776839@lasalleurubamba.edu.pe', 76776839, 7, 'VI', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 400 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000400', ' Norka Roxana OLAVE LIMACHI', '63276787@lasalleurubamba.edu.pe', 63276787, 7, 'VI', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 401 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000401', ' Fanny OLAYUNCA SALAS', '76736371@lasalleurubamba.edu.pe', 76736371, 7, 'VI', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 402 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000402', ' Britney Mechelle ORDOÑEZ ALCAZAR', '78113626@lasalleurubamba.edu.pe', 78113626, 7, 'VI', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 403 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000403', ' Jimena ORUE CALLAÑAUPA', '77541137@lasalleurubamba.edu.pe', 77541137, 7, 'VI', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 404 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000404', ' Rivaldo PRIETO VILLEGAS', '74363988@lasalleurubamba.edu.pe', 74363988, 7, 'VI', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 405 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000405', ' Wernher QUISPE CJUIRO', '73874863@lasalleurubamba.edu.pe', 73874863, 7, 'VI', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 406 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000406', ' Mariluz QUISPE CJURO', '77340099@lasalleurubamba.edu.pe', 77340099, 7, 'VI', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 407 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000407', ' Luther QUISPE GONZALES', '60355284@lasalleurubamba.edu.pe', 60355284, 7, 'VI', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 408 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000408', ' Jade QUISPE HUAMAN', '74571608@lasalleurubamba.edu.pe', 74571608, 7, 'VI', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 409 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000409', ' Bill Bryam RAMOS HUAMAN', '73266426@lasalleurubamba.edu.pe', 73266426, 7, 'VI', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 410 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000410', ' Lorena RIVAS MASIAS', '72670412@lasalleurubamba.edu.pe', 72670412, 7, 'VI', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 411 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000411', ' Waldir SALGADO CENTENO', '74097060@lasalleurubamba.edu.pe', 74097060, 7, 'VI', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 412 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000412', ' Leydi Anabel SONCCO CARRASCO', '77683524@lasalleurubamba.edu.pe', 77683524, 7, 'VI', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 413 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000413', ' Juan Carlos TAPIA ROQUE', '72097251@lasalleurubamba.edu.pe', 72097251, 7, 'VI', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 414 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000414', ' Luz Margarita TRIVEÑO SAAVEDRA', '76046783@lasalleurubamba.edu.pe', 76046783, 7, 'VI', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 415 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000415', '  Ingrid Cristina  ASTO HUANACCHIRI', '76046791@lasalleurubamba.edu.pe', 76046791, 10, 'V', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 416 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000416', '  Rosmery BAITAN QUISPE', '74750801@lasalleurubamba.edu.pe', 74750801, 10, 'V', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 417 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000417', '  Alexandra BANDERA MAYHUA', '74046616@lasalleurubamba.edu.pe', 74046616, 10, 'V', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 418 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000418', '  Liz Nélida BUSTOS  LIMA', '76949734@lasalleurubamba.edu.pe', 76949734, 10, 'V', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 419 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000419', '  Yuliana CACHI SUCAPUCA', '73582553@lasalleurubamba.edu.pe', 73582553, 10, 'V', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 420 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000420', '  Isabel CANAL  TAPIA', '73577921@lasalleurubamba.edu.pe', 73577921, 10, 'V', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 421 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000421', ' Biljhay CASTAÑEDA PUMA', '76726925@lasalleurubamba.edu.pe', 76726925, 10, 'V', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 422 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000422', '  Ligia ENCHISANA MAMANI', '70665198@lasalleurubamba.edu.pe', 70665198, 10, 'V', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 423 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000423', 'Rossicela FERNANDEZ MORA', '76227011@lasalleurubamba.edu.pe', 76227011, 10, 'V', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 424 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000424', ' Grisel Pamela FLOREZ SALAS', '74125268@lasalleurubamba.edu.pe', 74125268, 10, 'V', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 425 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000425', '  Estefany Francely GUEVARA DELGADO', '70840378@lasalleurubamba.edu.pe', 70840378, 10, 'V', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 426 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000426', '  Beatriz Esmeralda HUAMAN CASTRO', '72964812@lasalleurubamba.edu.pe', 72964812, 10, 'V', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 427 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000427', '  Yeni HUAMANTTICA MOLINA', '47398084@lasalleurubamba.edu.pe', 47398084, 10, 'V', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 428 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000428', '  Yesenia ITURRIAGA RIVERA', '76053619@lasalleurubamba.edu.pe', 76053619, 10, 'V', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 429 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000429', '  Melissa Medaly MAMANI CCAMA', '74449888@lasalleurubamba.edu.pe', 74449888, 10, 'V', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 430 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000430', '  Berenice Antuane MANCCO CANAL', '75623478@lasalleurubamba.edu.pe', 75623478, 10, 'V', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 431 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000431', '  Sheida Milagros MAYHUA CUTIPA', '76751468@lasalleurubamba.edu.pe', 76751468, 10, 'V', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 432 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000432', '  Olinda MEJIA  BARRIENTOS', '71078087@lasalleurubamba.edu.pe', 71078087, 10, 'V', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 433 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000433', '  Thalia Guadalupe MIRANO MAMANI', '71847039@lasalleurubamba.edu.pe', 71847039, 10, 'V', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 434 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000434', ' Edelmira Ilse MOSCOSO MOZOMBITE', '76076956@lasalleurubamba.edu.pe', 76076956, 10, 'V', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 435 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000435', '  Nohely OLAVE QUISPE', '44431168@lasalleurubamba.edu.pe', 44431168, 10, 'V', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 436 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000436', '  Silvana PARY HUAMAN', '76935668@lasalleurubamba.edu.pe', 76935668, 10, 'V', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 437 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000437', ' Paola Pierangely PAUCCAR LOVATON', '76801077@lasalleurubamba.edu.pe', 76801077, 10, 'V', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 438 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000438', '  Luz Linda QUISPE CRUZ', '73805745@lasalleurubamba.edu.pe', 73805745, 10, 'V', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 439 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000439', ' Angie Sharon QUISPE JACO', '76046811@lasalleurubamba.edu.pe', 76046811, 10, 'V', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 440 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000440', ' Claudia Maria QUISPE MONTALVO', '62103870@lasalleurubamba.edu.pe', 62103870, 10, 'V', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 441 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000441', ' Veronica Yajaira RIOS HUAMAN', '70668504@lasalleurubamba.edu.pe', 70668504, 10, 'V', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 442 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000442', '  Jamelith Milagros RODRIGUEZ YUPANQUI', '74657086@lasalleurubamba.edu.pe', 74657086, 10, 'V', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 443 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000443', '  Margoth TAPARA ITURRIAGA', '45006030@lasalleurubamba.edu.pe', 45006030, 10, 'V', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 444 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000444', '  Nancy TTITO HUILLCA', '76178815@lasalleurubamba.edu.pe', 76178815, 10, 'V', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 445 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000445', '  Eva TUPAYACHI ACURIO', '72101965@lasalleurubamba.edu.pe', 72101965, 10, 'V', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 446 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000446', '  Kathy ZUNIGA CUSIHUALLPA', '70604527@lasalleurubamba.edu.pe', 70604527, 10, 'V', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 447 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000447', ' Kasandra ATAPAUCAR BUSTAMANTE', '76511790@lasalleurubamba.edu.pe', 76511790, 10, 'V', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 448 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000448', ' Maria Evans ATAUSINCHE HUAMAN', '45830449@lasalleurubamba.edu.pe', 45830449, 10, 'V', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 449 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000449', ' Jimena CHOQUE AGUILAR', '74579404@lasalleurubamba.edu.pe', 74579404, 10, 'V', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 450 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000450', ' Milagros Aleida DELGADO VALENCIA', '76666064@lasalleurubamba.edu.pe', 76666064, 10, 'V', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 451 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000451', ' Flor De Maria ESCALANTE ZUÑIGA', '72800557@lasalleurubamba.edu.pe', 72800557, 10, 'V', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 452 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000452', ' Nery GUTIERREZ POCCO', '74428290@lasalleurubamba.edu.pe', 74428290, 10, 'V', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 453 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000453', ' Luz Belinda HUACARPUMA QUISPE', '70041091@lasalleurubamba.edu.pe', 70041091, 10, 'V', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 454 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000454', ' Myrian JIMENEZ ALVAREZ', '71938538@lasalleurubamba.edu.pe', 71938538, 10, 'V', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 455 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000455', ' Mary Luz MAMANI ALVARADO', '71961507@lasalleurubamba.edu.pe', 71961507, 10, 'V', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 456 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000456', ' Amelia ORUE MORA', '76330807@lasalleurubamba.edu.pe', 76330807, 10, 'V', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 457 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000457', ' Amanda OTAZU YAPO', '47848634@lasalleurubamba.edu.pe', 47848634, 10, 'V', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 458 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000458', ' Nataly Nohelia PILCO ESTRADA', '70400571@lasalleurubamba.edu.pe', 70400571, 10, 'V', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 459 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000459', ' Daniela QUISPE AYMA', '74132240@lasalleurubamba.edu.pe', 74132240, 10, 'V', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 460 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000460', ' Deysi QUISPE CANAL', '73577927@lasalleurubamba.edu.pe', 73577927, 10, 'V', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 461 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000461', ' Mistica Micaela SOTA RIOS', '40687481@lasalleurubamba.edu.pe', 40687481, 10, 'V', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 462 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000462', ' Patricia VELASQUEZ CALLAÑAUPA', '72763532@lasalleurubamba.edu.pe', 72763532, 10, 'V', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 463 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000463', ' Amelia VILLANO SAAVEDRA', '74571627@lasalleurubamba.edu.pe', 74571627, 10, 'V', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 464 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000464', ' Yeny ACURIO SICHA', '45662104@lasalleurubamba.edu.pe', 45662104, 10, 'V', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 465 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000465', ' Yushely AGUILAR COMPI', '72882558@lasalleurubamba.edu.pe', 72882558, 10, 'V', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 466 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000466', ' Carmen Rosa ALVAREZ MISME', '44535562@lasalleurubamba.edu.pe', 44535562, 10, 'V', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 467 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000467', ' Shanda CASTILLO WARTHON', '70537496@lasalleurubamba.edu.pe', 70537496, 10, 'V', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 468 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000468', ' Francisca CHOQUE CHULLO', '76096171@lasalleurubamba.edu.pe', 76096171, 10, 'V', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 469 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000469', ' Revecka CHULLO VILLACORTA', '74210323@lasalleurubamba.edu.pe', 74210323, 10, 'V', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 470 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000470', ' Bertha CRUZ QUISPE', '76741399@lasalleurubamba.edu.pe', 76741399, 10, 'V', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 471 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000471', ' Mercedes GARATE CCARAMPA', '40727360@lasalleurubamba.edu.pe', 40727360, 10, 'V', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 472 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000472', ' Estefani IBARRA PACHECO', '72686749@lasalleurubamba.edu.pe', 72686749, 10, 'V', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 473 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000473', ' Sheyla MONTALVO PERALTA', '75888116@lasalleurubamba.edu.pe', 75888116, 10, 'V', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 474 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000474', ' Mayumi MORALES APAZA', '48646916@lasalleurubamba.edu.pe', 48646916, 10, 'V', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 475 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000475', ' Anamile Dayana PALOMINO FARFAN', '72230964@lasalleurubamba.edu.pe', 72230964, 10, 'V', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 476 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000476', ' Libia PUMA MACHACCA', '60478637@lasalleurubamba.edu.pe', 60478637, 10, 'V', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 477 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000477', ' Maribel SINCHI HANCCO', '73797364@lasalleurubamba.edu.pe', 73797364, 10, 'V', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 478 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000478', ' Tatiana SOLORZANO ENRIQUEZ', '77212605@lasalleurubamba.edu.pe', 77212605, 10, 'V', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 479 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000479', ' Britney TOCRE CCOA', '73004155@lasalleurubamba.edu.pe', 73004155, 10, 'V', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 480 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000480', ' Luz Alercer Dannytza WARTHON CHAVEZ', '72769773@lasalleurubamba.edu.pe', 72769773, 10, 'V', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 481 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000481', ' Soyla Elizbeth AGUAYO CRUZ', '75319433@lasalleurubamba.edu.pe', 75319433, 10, 'VIII', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 482 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000482', '  Harlette Flor AYRAMPO NAVARRETE', '76550069@lasalleurubamba.edu.pe', 76550069, 10, 'VIII', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 483 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000483', '  Luz Marilia CCALLO HUARI', '75992967@lasalleurubamba.edu.pe', 75992967, 10, 'VIII', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 484 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000484', '  Fresiahilda CHOQUE AGUILAR', '72101950@lasalleurubamba.edu.pe', 72101950, 10, 'VIII', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 485 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000485', '  Brandy Nicol COBOS YLLA', '71776906@lasalleurubamba.edu.pe', 71776906, 10, 'VIII', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 486 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000486', '  Carol Arlett GRAJEDA CAMPANA', '71957489@lasalleurubamba.edu.pe', 71957489, 10, 'VIII', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 487 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000487', '  Ruth Mabell GUARDAPUCLLA VELASQUE', '43453097@lasalleurubamba.edu.pe', 43453097, 10, 'VIII', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 488 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000488', '  Carmen Rosa HUAMAN QUISPE', '48327082@lasalleurubamba.edu.pe', 48327082, 10, 'VIII', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 489 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000489', '  Yusaara Rosa INQUILTUPA MORALES', '71075868@lasalleurubamba.edu.pe', 71075868, 10, 'VIII', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 490 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000490', '  Katherine Andrea LAUREL MENDOZA', '74096069@lasalleurubamba.edu.pe', 74096069, 10, 'VIII', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 491 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000491', '  Sandra NINA GONZALES', '44496557@lasalleurubamba.edu.pe', 44496557, 10, 'VIII', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 492 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000492', '  Elizabeth Mirian QUISPE APAZA', '48392839@lasalleurubamba.edu.pe', 48392839, 10, 'VIII', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 493 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000493', '  Daniela Mercedes QUISPE JURO', '73793452@lasalleurubamba.edu.pe', 73793452, 10, 'VIII', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 494 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000494', '  Marisandra RADO HUAYOTUMA', '73237906@lasalleurubamba.edu.pe', 73237906, 10, 'VIII', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 495 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000495', '  Rosibel RODRIGUEZ HUALLPA', '74535037@lasalleurubamba.edu.pe', 74535037, 10, 'VIII', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 496 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000496', '  Ibeth Fiorela ROMERO GONZALES', '72756974@lasalleurubamba.edu.pe', 72756974, 10, 'VIII', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 497 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000497', '  Marilyn Ximena VILLALOBOS TOCRE', '73302414@lasalleurubamba.edu.pe', 73302414, 10, 'VIII', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 498 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000498', ' Dayana Sofia ACUÑA  MAMANI', '62952091@lasalleurubamba.edu.pe', 62952091, 11, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 499 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000499', ' Mariela CACERES HUAMAN', '73987846@lasalleurubamba.edu.pe', 73987846, 11, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 500 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000500', ' Yonilda CARDENAS FLORES ', '72317779@lasalleurubamba.edu.pe', 72317779, 11, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 501 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000501', ' Urdania CARPIO GALLEGOS', '70580953@lasalleurubamba.edu.pe', 70580953, 11, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 502 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000502', ' Zayda Luz CCOYORI MAMANI', '74238825@lasalleurubamba.edu.pe', 74238825, 11, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 503 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000503', ' Evelyn Milene CHACON GUTIERREZ', '74464777@lasalleurubamba.edu.pe', 74464777, 11, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 504 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000504', ' Lady Dy CONDORI  HUAMAN', '76207498@lasalleurubamba.edu.pe', 76207498, 11, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 505 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000505', ' Liz Deysi ESTOMBELO ACUÑA', '76031568@lasalleurubamba.edu.pe', 76031568, 11, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 506 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000506', ' Ruth Sarain HANCCO  PUMACCAHUA', '74225190@lasalleurubamba.edu.pe', 74225190, 11, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 507 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000507', ' Urpi HOLGUIN  CJURO ', '76133610@lasalleurubamba.edu.pe', 76133610, 11, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 508 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000508', ' Yazuny HUAMAN  CCOLQQUEHUANCA', '70044888@lasalleurubamba.edu.pe', 70044888, 11, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 509 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000509', ' Liseth Lucero HUAMAN  CUSIHUATA', '76073258@lasalleurubamba.edu.pe', 76073258, 11, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 510 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000510', ' Danna Lucero HUILLCA OVIEDO', '74541914@lasalleurubamba.edu.pe', 74541914, 11, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 511 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000511', ' Zadith Rina MAÑACCASA NINA', '76019429@lasalleurubamba.edu.pe', 76019429, 11, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 512 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000512', ' Yaluxa MARCAVILLACA VARA', '71679939@lasalleurubamba.edu.pe', 71679939, 11, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 513 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000513', ' Yenifer MEDINA BERRIOS', '72003541@lasalleurubamba.edu.pe', 72003541, 11, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 514 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000514', ' Nory MOLINA  CHACON ', '74433213@lasalleurubamba.edu.pe', 74433213, 11, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 515 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000515', ' Ruth Mariela  OCHOA HINOJOSA', '71776943@lasalleurubamba.edu.pe', 71776943, 11, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 516 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000516', ' Luz Marina PAREDES PUMA', '76124551@lasalleurubamba.edu.pe', 76124551, 11, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 517 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000517', ' Gianeyla PAREJA TORRES', '70497989@lasalleurubamba.edu.pe', 70497989, 11, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 518 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000518', ' Ruth Karina RIVERA GAMBOA', '71805876@lasalleurubamba.edu.pe', 71805876, 11, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 519 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000519', ' Maria Antonieta RODRIGUEZ CUSIHUAMAN', '70032063@lasalleurubamba.edu.pe', 70032063, 11, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 520 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000520', ' Erika RODRIGUEZ QUISPE', '73535236@lasalleurubamba.edu.pe', 73535236, 11, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 521 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000521', ' Yashira SALAS PALOMO', '76736361@lasalleurubamba.edu.pe', 76736361, 11, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 522 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000522', ' Marta Sorayda TAPARA  TAPARA', '76878280@lasalleurubamba.edu.pe', 76878280, 11, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 523 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000523', ' Amanda Beatriz TAPARA BARRAGAN', '73803072@lasalleurubamba.edu.pe', 73803072, 11, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 524 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000524', '  Carmen CHAMPI QUISANI', '47267669@lasalleurubamba.edu.pe', 47267669, 11, 'VIII', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 525 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000525', '  Julio Cesar CHECCA RODRIGUEZ', '76073240@lasalleurubamba.edu.pe', 76073240, 11, 'VIII', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 526 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000526', '  Reylinda CJUIRO MUÑOZ', '46805990@lasalleurubamba.edu.pe', 46805990, 11, 'VIII', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 527 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000527', '  Carla Yovana CONDORI LIZARASO', '72301933@lasalleurubamba.edu.pe', 72301933, 11, 'VIII', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 528 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000528', '  Leidy CURILLO SALON', '73218205@lasalleurubamba.edu.pe', 73218205, 11, 'VIII', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 529 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000529', '  Betsy Clarissa CUSIATAN FLOREZ', '70581055@lasalleurubamba.edu.pe', 70581055, 11, 'VIII', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 530 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000530', '  Alexandra FLOREZ CARAZAS', '77677194@lasalleurubamba.edu.pe', 77677194, 11, 'VIII', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 531 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000531', '  Carol Anabel MELGAREJO PARDO', '77236334@lasalleurubamba.edu.pe', 77236334, 11, 'VIII', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 532 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000532', '  Delfina PINCHI ALVARES', '48680248@lasalleurubamba.edu.pe', 48680248, 11, 'VIII', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 533 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000533', '  Erika QUISPE AZA', '75855089@lasalleurubamba.edu.pe', 75855089, 11, 'VIII', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 534 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000534', '  Karla QUISPE HUAMAN', '73500433@lasalleurubamba.edu.pe', 73500433, 11, 'VIII', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 535 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000535', '  Rosario QUISPE VERA', '61615132@lasalleurubamba.edu.pe', 61615132, 11, 'VIII', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 536 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000536', '  Ermelinda RAMOS JARA', '73749266@lasalleurubamba.edu.pe', 73749266, 11, 'VIII', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 537 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000537', '  Yesica Sofia RAMOS MAMANI', '76046505@lasalleurubamba.edu.pe', 76046505, 11, 'VIII', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 538 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000538', '  Yaqueline SALOMA DURAN', '48016629@lasalleurubamba.edu.pe', 48016629, 11, 'VIII', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 539 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000539', '  Zoraida Milagros TILLCA PALOMINO', '76040925@lasalleurubamba.edu.pe', 76040925, 11, 'VIII', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 540 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000540', '  Cintia TUPAYACHI PACHECO', '72097708@lasalleurubamba.edu.pe', 72097708, 11, 'VIII', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 541 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000541', '  Ana Ruth UGARTE DUEÑAS', '73067297@lasalleurubamba.edu.pe', 73067297, 11, 'VIII', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 542 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000542', '  Lizhyeral VILLANUEVA CABRERA', '72911699@lasalleurubamba.edu.pe', 72911699, 11, 'VIII', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 543 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000543', ' David BELLOTA ALVAREZ', '74059436@lasalleurubamba.edu.pe', 74059436, 12, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 544 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000544', ' Hubert Mijail CALLAÑAUPA CUADROS ', '74252934@lasalleurubamba.edu.pe', 74252934, 12, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 545 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000545', ' Juan de Dios CCACJA CCOYSO', '73805753@lasalleurubamba.edu.pe', 73805753, 12, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 546 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000546', ' Edmundo Rene CHOQUE  CHINO', '73321786@lasalleurubamba.edu.pe', 73321786, 12, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 547 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000547', ' Milam Dreynixon FARFAN CALLAÑAUPA', '74283228@lasalleurubamba.edu.pe', 74283228, 12, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 548 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000548', ' Marleny FLOREZ TORRES', '45246052@lasalleurubamba.edu.pe', 45246052, 12, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 549 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000549', ' Urpi Angela FRANCO GOMEZ DE LOAIZA', '75253064@lasalleurubamba.edu.pe', 75253064, 12, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 550 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000550', ' Wilian GALVEZ LOPEZ', '71013369@lasalleurubamba.edu.pe', 71013369, 12, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 551 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000551', ' Ruth Elizabeth HANCCO PUMACCAHUA', '75362750@lasalleurubamba.edu.pe', 75362750, 12, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 552 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000552', ' Britney Kimberly HUANCA COCHAN', '75223002@lasalleurubamba.edu.pe', 75223002, 12, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 553 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000553', ' Alex Junior HUAYTA AYALA', '76307281@lasalleurubamba.edu.pe', 76307281, 12, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 554 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000554', ' Valeria Milagros LA ROSA CARMONA', '76858345@lasalleurubamba.edu.pe', 76858345, 12, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 555 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000555', ' Vimar LUNA  CAMIÑA', '61945326@lasalleurubamba.edu.pe', 61945326, 12, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 556 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000556', ' Marquinhio MAMANI MONRROY', '71070659@lasalleurubamba.edu.pe', 71070659, 12, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 557 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000557', ' Uriel PACCO GARCIA', '74145103@lasalleurubamba.edu.pe', 74145103, 12, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 558 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000558', ' Nayda PUCLLA QUISPE', '73577897@lasalleurubamba.edu.pe', 73577897, 12, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 559 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000559', ' Jordana QUISPE MOSCOSO', '73956073@lasalleurubamba.edu.pe', 73956073, 12, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 560 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000560', ' Yorihan Yomerly SALAS QUISPE', '77043201@lasalleurubamba.edu.pe', 77043201, 12, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 561 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000561', ' Jhosef Anthony TICONA  BEJAR', '70497376@lasalleurubamba.edu.pe', 70497376, 12, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 562 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000562', ' Julio Cesar TTICA HUAMPUTUPA', '76691908@lasalleurubamba.edu.pe', 76691908, 12, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 563 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000563', ' Frank Yeyson USCAPI BELLIDO', '73863636@lasalleurubamba.edu.pe', 73863636, 12, 'II', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 564 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000564', ' Alfredo AYALA CARDENAS', '42028667@lasalleurubamba.edu.pe', 42028667, 12, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 565 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000565', ' Juan Carlos AYALA CARDENAS', '48084175@lasalleurubamba.edu.pe', 48084175, 12, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 566 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000566', ' Senayda AYOSO GUEVARA', '72079508@lasalleurubamba.edu.pe', 72079508, 12, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 567 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000567', ' Josue CABALLERO ALFARO', '71847035@lasalleurubamba.edu.pe', 71847035, 12, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 568 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000568', ' Delfina CÁCERES  HUAMAN', '70557097@lasalleurubamba.edu.pe', 70557097, 12, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 569 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000569', ' Yajaira CAVIEDES MANCILLA', '73574467@lasalleurubamba.edu.pe', 73574467, 12, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 570 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000570', ' Joel CHILO PEREYRA', '70043074@lasalleurubamba.edu.pe', 70043074, 12, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 571 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000571', ' Kelvin CONDORI  QUISPE', '47227833@lasalleurubamba.edu.pe', 47227833, 12, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 572 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000572', ' Yadira CURILLO  BACA', '63313424@lasalleurubamba.edu.pe', 63313424, 12, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 573 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000573', ' Ruody CUYO CONDORI', '71938537@lasalleurubamba.edu.pe', 71938537, 12, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 574 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000574', ' Luis Fernando FRANCO ATAULLLUCO', '74097063@lasalleurubamba.edu.pe', 74097063, 12, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 575 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000575', ' Brygand Vignerd GAVANCHO OCHOA', '74534216@lasalleurubamba.edu.pe', 74534216, 12, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 576 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000576', ' Nancy GUEVARA  MANCILLA', '73546850@lasalleurubamba.edu.pe', 73546850, 12, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 577 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000577', ' Sharlet GUEVARA MANCILLA', '73577906@lasalleurubamba.edu.pe', 73577906, 12, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 578 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000578', ' Yulber HUAMANTTICA MOLINA', '47165785@lasalleurubamba.edu.pe', 47165785, 12, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 579 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000579', ' Deivid Gabriel ILLA DUEÑAS', '71841650@lasalleurubamba.edu.pe', 71841650, 12, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 580 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000580', ' Hoshiro Almendra MEZA QUISPE', '74422599@lasalleurubamba.edu.pe', 74422599, 12, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 581 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000581', ' Jael Alfredo MORMONTOY CASTILLO', '70497974@lasalleurubamba.edu.pe', 70497974, 12, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 582 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000582', ' Jhuberly ORCCOHUARANCCA CABRERA', '70537515@lasalleurubamba.edu.pe', 70537515, 12, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 583 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000583', ' Cesar Junior OVALLE GARATE', '71081162@lasalleurubamba.edu.pe', 71081162, 12, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 584 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000584', ' Nestor Raul RAMOS  INOCENCIO', '46724042@lasalleurubamba.edu.pe', 46724042, 12, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 585 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000585', ' Jean Carlos  SALAZAR CHAVEZ', '72716557@lasalleurubamba.edu.pe', 72716557, 12, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 586 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000586', ' Claudia Estefani SALLO CHALLCO', '76090599@lasalleurubamba.edu.pe', 76090599, 12, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 587 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000587', ' Angela Cecilia VILLAR  PANIHUARA', '43308270@lasalleurubamba.edu.pe', 43308270, 12, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 588 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000588', ' Yadini Noe YARIN  QUISPE', '70551720@lasalleurubamba.edu.pe', 70551720, 12, 'IV', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 589 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000589', ' Ruth Mery ALLENDE BRAVO', '70043054@lasalleurubamba.edu.pe', 70043054, 13, 'I', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 590 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000590', ' Glorienith Daniela ALVAREZ ARAGON', '70401572@lasalleurubamba.edu.pe', 70401572, 13, 'I', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 591 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000591', ' Ruth Magdalena BARRIENTOS  CONDORI', '76049583@lasalleurubamba.edu.pe', 76049583, 13, 'I', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 592 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000592', ' Michael BENITES CAPARO', '72326359@lasalleurubamba.edu.pe', 72326359, 13, 'I', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 593 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000593', ' Fernando Noe CABALLERO ALFARO', '71847036@lasalleurubamba.edu.pe', 71847036, 13, 'I', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 594 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000594', ' Maricela CALLAÑAUPA RIOS', '48292352@lasalleurubamba.edu.pe', 48292352, 13, 'I', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 595 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000595', ' Nataly Maria CARRASCO FLORES', '74828543@lasalleurubamba.edu.pe', 74828543, 13, 'I', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 596 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000596', ' Liliana CHULLO QUISPE', '60411051@lasalleurubamba.edu.pe', 60411051, 13, 'I', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 597 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000597', ' Rene CONDORI CABEZA', '71601682@lasalleurubamba.edu.pe', 71601682, 13, 'I', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 598 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000598', ' Almendra Yamila DALINES HUAMAN', '73805332@lasalleurubamba.edu.pe', 73805332, 13, 'I', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 599 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000599', ' Michael INGLES CHULLO', '72437955@lasalleurubamba.edu.pe', 72437955, 13, 'I', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 600 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000600', ' Elias MELO QUISPE', '74455077@lasalleurubamba.edu.pe', 74455077, 13, 'I', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 601 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000601', ' Oscar MELO QUISPE', '74319384@lasalleurubamba.edu.pe', 74319384, 13, 'I', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 602 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000602', ' Piero Frankois MEZA GIBAJA', '74127004@lasalleurubamba.edu.pe', 74127004, 13, 'I', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 603 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000603', ' America MORA MEDINA', '09629098@lasalleurubamba.edu.pe', 09629098, 13, 'I', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 604 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000604', ' Alessandro OLAZABAL SAIRE', '70665203@lasalleurubamba.edu.pe', 70665203, 13, 'I', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 605 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000605', ' Mirelia Iveth QUILLAHUAMAN LAGOS', '75872146@lasalleurubamba.edu.pe', 75872146, 13, 'I', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 606 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000606', ' Gena Nury QUILLAHUAMAN SAIRE', '70042012@lasalleurubamba.edu.pe', 70042012, 13, 'I', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 607 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000607', ' Araceli  Jasmin SALLO CHALLCO', '76090600@lasalleurubamba.edu.pe', 76090600, 13, 'I', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 608 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000608', ' Nafe SOLANO ARAGON', '72401800@lasalleurubamba.edu.pe', 72401800, 13, 'I', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 609 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000609', ' Paola Luz VALENCIA RODRIGUEZ', '72813166@lasalleurubamba.edu.pe', 72813166, 13, 'I', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 610 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000610', ' Flor de Maria ARMAS RAMOS', '46482936@lasalleurubamba.edu.pe', 46482936, 13, 'VIII', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 611 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000611', '  Brisa Nashira AUCCA GALVAN', '75214176@lasalleurubamba.edu.pe', 75214176, 13, 'VIII', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 612 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000612', '  Diana Ruth CAHUAPAZA CARRIZALES', '75374285@lasalleurubamba.edu.pe', 75374285, 13, 'VIII', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 613 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000613', '  Julio Cesar CAVIEDES ALVAREZ', '44117703@lasalleurubamba.edu.pe', 44117703, 13, 'VIII', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 614 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000614', '  Carlos Antonio  CCOA LUME', '70498547@lasalleurubamba.edu.pe', 70498547, 13, 'VIII', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 615 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000615', '  Yaquelin CCORIHUAMAN UMILDE', '74583898@lasalleurubamba.edu.pe', 74583898, 13, 'VIII', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 616 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000616', '  Lisbeth Jasmin CUSIHUAMAN SURCO', '71075966@lasalleurubamba.edu.pe', 71075966, 13, 'VIII', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 617 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000617', '  Felicia  LAIME MEZA', '74045021@lasalleurubamba.edu.pe', 74045021, 13, 'VIII', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 618 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000618', '  Ruth Karina MAMANI CHAIÑA', '71074785@lasalleurubamba.edu.pe', 71074785, 13, 'VIII', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 619 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000619', '  Esmeralda MAMANI PARRA', '71945338@lasalleurubamba.edu.pe', 71945338, 13, 'VIII', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 620 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000620', '  Ursula Vivian MARURI MORMONTOY', '72295510@lasalleurubamba.edu.pe', 72295510, 13, 'VIII', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 621 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000621', '  Sharmelid  MEZA ATAU', '73517573@lasalleurubamba.edu.pe', 73517573, 13, 'VIII', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 622 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000622', '  Vilma Veronica MERCADO INCABUENO', '77140726@lasalleurubamba.edu.pe', 77140726, 13, 'VIII', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 623 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000623', '  Maria del Milagro MOLLEHUANCA ALVARO', '74202617@lasalleurubamba.edu.pe', 74202617, 13, 'VIII', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 624 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000624', '  Edilberto PECHIVA ORTIZ', '44561845@lasalleurubamba.edu.pe', 44561845, 13, 'VIII', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 625 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000625', '  Gabriela Sahili  PIÑO MEZA', '70537503@lasalleurubamba.edu.pe', 70537503, 13, 'VIII', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 626 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000626', '  Joel QUISPE PUMA', '70041096@lasalleurubamba.edu.pe', 70041096, 13, 'VIII', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 627 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000627', '  Nataly Paula RIVEROS PILLCO', '61306375@lasalleurubamba.edu.pe', 61306375, 13, 'VIII', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 628 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000628', '  Juliana RODRIGUEZ MARIANO', '70433703@lasalleurubamba.edu.pe', 70433703, 13, 'VIII', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 629 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000629', '  Olinda  SUEL GONZALES', '77708703@lasalleurubamba.edu.pe', 77708703, 13, 'VIII', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 630 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000630', '  Miguel Ricardo  SULLCA RETAMOZO', '74306274@lasalleurubamba.edu.pe', 74306274, 13, 'VIII', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 631 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000631', '  Elizabeth USCA MELO', '73805306@lasalleurubamba.edu.pe', 73805306, 13, 'VIII', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 632 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000632', '  Nilton Blady ZAMATA PEREYRA', '73220026@lasalleurubamba.edu.pe', 73220026, 13, 'VIII', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 633 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000633', ' Delia  ALVAREZ CONDORI ', '71859427@lasalleurubamba.edu.pe', 71859427, 11, 'I', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 634 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000634', ' Grace Zinthia ARAGON SERPA ', '75978653@lasalleurubamba.edu.pe', 75978653, 11, 'I', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 635 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000635', ' Leonela ATAU NUÑEZ ', '73517584@lasalleurubamba.edu.pe', 73517584, 11, 'I', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 636 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000636', ' Sheril AUCCAPFURO PILLCO ', '74126317@lasalleurubamba.edu.pe', 74126317, 11, 'I', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 637 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000637', ' Claudia Nayeli CANQUI VASQUEZ ', '77479568@lasalleurubamba.edu.pe', 77479568, 11, 'I', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 638 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000638', ' Ruby CARPIO GONZALES  ', '60221661@lasalleurubamba.edu.pe', 60221661, 11, 'I', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 639 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000639', ' Joyvi Dayana CARRASCO LAZO ', '74225216@lasalleurubamba.edu.pe', 74225216, 11, 'I', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 640 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000640', ' Gerson Gabriel CARRASCO TAPIA ', '70597811@lasalleurubamba.edu.pe', 70597811, 11, 'I', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 641 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000641', ' Josemia Jadith CCORI VALERIANO ', '74045007@lasalleurubamba.edu.pe', 74045007, 11, 'I', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 642 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000642', ' Luzjoselyn CHOQUE FLOREZ ', '74135914@lasalleurubamba.edu.pe', 74135914, 11, 'I', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 643 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000643', ' Lizbeth Nicol CONDORI ORTIZ ', '72535837@lasalleurubamba.edu.pe', 72535837, 11, 'I', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 644 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000644', ' Carmen Rosa CONDORI QUISPE ', '60434251@lasalleurubamba.edu.pe', 60434251, 11, 'I', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 645 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000645', ' Nicole Noelia FERNANDEZ MUÑOZ ', '77388209@lasalleurubamba.edu.pe', 77388209, 11, 'I', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 646 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000646', ' Ruth Melida FRANCO HUAMAN  ', '75966530@lasalleurubamba.edu.pe', 75966530, 11, 'I', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 647 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000647', ' Claudio GUILLEN  SENCIA ', '72242183@lasalleurubamba.edu.pe', 72242183, 11, 'I', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 648 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000648', ' Soledad Carolina HUAMAN CHOQUE ', '77711122@lasalleurubamba.edu.pe', 77711122, 11, 'I', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 649 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000649', ' Luz Gabriela HUAMAN USANDIVARES ', '78015588@lasalleurubamba.edu.pe', 78015588, 11, 'I', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 650 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000650', ' Fiorela HUAYTA OJEDA ', '47418349@lasalleurubamba.edu.pe', 47418349, 11, 'I', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 651 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000651', ' Celinda HURTADO MAMANI ', '60115507@lasalleurubamba.edu.pe', 60115507, 11, 'I', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 652 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000652', ' Danilo JUSTINIANI UGARTE ', '44118249@lasalleurubamba.edu.pe', 44118249, 11, 'I', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 653 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000653', ' Roxana LABRA MAMANI ', '76227960@lasalleurubamba.edu.pe', 76227960, 11, 'I', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 654 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000654', ' Yudith LETONA ATAU ', '71218777@lasalleurubamba.edu.pe', 71218777, 11, 'I', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 655 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000655', ' Nayda Antonia  MAYO CASTILLO ', '70385122@lasalleurubamba.edu.pe', 70385122, 11, 'I', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 656 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000656', ' Maria Teresa PALMA PILLCO ', '75932933@lasalleurubamba.edu.pe', 75932933, 11, 'I', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 657 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000657', ' Nicool PEREZ SERRANO ', '71301107@lasalleurubamba.edu.pe', 71301107, 11, 'I', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 658 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000658', ' Alfredo SALAZAR PALOMINO ', '71813840@lasalleurubamba.edu.pe', 71813840, 11, 'I', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 659 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000659', ' Daniela VALENCIA PERALTA ', '61159594@lasalleurubamba.edu.pe', 61159594, 11, 'I', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 660 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000660', ' Rocio YEPEZ REYES ', '73365649@lasalleurubamba.edu.pe', 73365649, 11, 'I', 'ESTUDIANTE'
);

/* INSERT QUERY NO: 661 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000661', 'Adelaido CARHUASUICA AIRAMPO', 'adelaidoca@lasalleurubamba.edu.pe', 0, 9, '', 'DOCENTE'
);

/* INSERT QUERY NO: 662 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000662', 'Aldo ATAUSINCHI MASIAS', 'aldoam@lasalleurubamba.edu.pe', 70580902, 9, '', 'DOCENTE'
);

/* INSERT QUERY NO: 663 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000663', 'Alex Fernando HUILLCA', 'ahuillca@lasalleurubamba.edu.pe', 40363957, 9, '', 'DOCENTE'
);

/* INSERT QUERY NO: 664 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000664', 'Ana Isabel YEPEZ PEZO', 'anayepez@lasalleurubamba.edu.pe', 0, 9, '', 'DOCENTE'
);

/* INSERT QUERY NO: 665 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000665', 'Anggela Lorena ORTIZ DORADO', 'anggelaod@lasalleurubamba.edu.pe', 46796769, 9, '', 'DOCENTE'
);

/* INSERT QUERY NO: 666 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000666', 'Arístides SEVILLANOS NINANCURO', 'aristidessevillanos@lasalleurubamba.edu.pe', 0, 9, '', 'DOCENTE'
);

/* INSERT QUERY NO: 667 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000667', 'Carmen Rosa VASQUEZ MORA', 'carmenvasquez@lasalleurubamba.edu.pe', 0, 9, '', 'DOCENTE'
);

/* INSERT QUERY NO: 668 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000668', 'Celina MASIAS SANTOS', 'celinams@lasalleurubamba.edu.pe', 25319269, 9, '', 'DOCENTE'
);

/* INSERT QUERY NO: 669 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000669', 'Christiam GIRALDO ASCENCIO', 'christiamga@lasalleurubamba.edu.pe', 40208142, 9, '', 'DOCENTE'
);

/* INSERT QUERY NO: 670 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000670', 'Diomedes GASTANAGA CARREÑO', 'diomedesgc@lasalleurubamba.edu.pe', 0, 9, '', 'DOCENTE'
);

/* INSERT QUERY NO: 671 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000671', 'Eliezer MAMANI CONDORI', 'eliezermc@lasalleurubamba.edu.pe', 41107104, 9, '', 'DOCENTE'
);

/* INSERT QUERY NO: 672 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000672', 'Elsa Mercedes MACO YAUCE', 'elsamaco@lasalleurubamba.edu.pe', 0, 9, '', 'DOCENTE'
);

/* INSERT QUERY NO: 673 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000673', 'Eriberto QUISPE TITO', 'eribertoquispe@lasalleurubamba.edu.pe', 0, 9, '', 'DOCENTE'
);

/* INSERT QUERY NO: 674 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000674', 'Ernesto VARGAS VERA', 'ernestovv@lasalleurubamba.edu.pe', 25310372, 9, '', 'DOCENTE'
);

/* INSERT QUERY NO: 675 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000675', 'Flor Noelia QUISPE FLOREZ', 'noeliaqf@lasalleurubamba.edu.pe', 0, 9, '', 'DOCENTE'
);

/* INSERT QUERY NO: 676 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000676', 'Gabino TAPIA PINEDA', 'gabinotapia@lasalleurubamba.edu.pe', 0, 9, '', 'DOCENTE'
);

/* INSERT QUERY NO: 677 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000677', 'Hermitaño ATAUSINCHE RIVAS', 'hermitanoar@lasalleurubamba.edu.pe', 25319340, 9, '', 'DOCENTE'
);

/* INSERT QUERY NO: 678 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000678', 'Hno. Javier MIRANDA SEDANO', 'javierms@lasalleurubamba.edu.pe', 0, 9, '', 'DOCENTE'
);

/* INSERT QUERY NO: 679 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000679', 'Hno. Manuel MARÍN HERRERA', 'manuelmh@lasalleurubamba.edu.pe', 31042355, 9, '', 'DOCENTE'
);

/* INSERT QUERY NO: 680 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000680', 'Jose Luis PIMENTEL ZEGARRA', 'karler@lasalleurubamba.edu.pe', 493247, 9, '', 'DOCENTE'
);

/* INSERT QUERY NO: 681 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000681', 'Janet PACHECO MORANTE', 'janetpm@lasalleurubamba.edu.pe', 23857415, 9, '', 'DOCENTE'
);

/* INSERT QUERY NO: 682 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000682', 'John Darwinm BACA TISOC', 'johnbt@lasalleurubamba.edu.pe', 42244183, 9, '', 'DOCENTE'
);

/* INSERT QUERY NO: 683 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000683', 'Jorge CARRASCO GONZALES', 'jorgecarrasco@lasalleurubamba.edu.pe', 0, 9, '', 'DOCENTE'
);

/* INSERT QUERY NO: 684 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000684', 'José Luis VADILLO GARCÍA', 'joseluisvg@lasalleurubamba.edu.pe', 0, 9, '', 'DOCENTE'
);

/* INSERT QUERY NO: 685 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000685', 'José Manuel PORTUGAL GARCÍA', 'josemanuelpg@lasalleurubamba.edu.pe', 41374174, 9, '', 'DOCENTE'
);

/* INSERT QUERY NO: 686 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000686', 'Josue RENGIFO HINOJOSA', 'josuerh@lasalleurubamba.edu.pe', 10645294, 9, '', 'DOCENTE'
);

/* INSERT QUERY NO: 687 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000687', 'Julia VILLALOBOS PEÑA', 'juliavp@lasalleurubamba.edu.pe', 0, 9, '', 'DOCENTE'
);

/* INSERT QUERY NO: 688 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000688', 'Julio MORENO LINARES', 'soporte@lasalleurubamba.edu.pe', 0, 9, '', 'DOCENTE'
);

/* INSERT QUERY NO: 689 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000689', 'Luís Alberto OLIVERA BRAVO', 'luisolivera@lasalleurubamba.edu.pe', 0, 9, '', 'DOCENTE'
);

/* INSERT QUERY NO: 690 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000690', 'Luzmila RONDAN CHACON', 'luzmilarc@lasalleurubamba.edu.pe', 0, 9, '', 'DOCENTE'
);

/* INSERT QUERY NO: 691 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000691', 'Manuela Irene CCANTO ALVAREZ', 'manuelaccanto@lasalleurubamba.edu.pe', 0, 9, '', 'DOCENTE'
);

/* INSERT QUERY NO: 692 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000692', 'Marco HERMOZA ATAUSINCHI', 'marcoha@lasalleurubamba.edu.pe', 25328856, 9, '', 'DOCENTE'
);

/* INSERT QUERY NO: 693 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000693', 'Marco Antonio TAPIA ALOSILLA', 'marcotapia@lasalleurubamba.edu.pe', 0, 9, '', 'DOCENTE'
);

/* INSERT QUERY NO: 694 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000694', 'Maryuri MAGUIÑA PIMENTEL', 'maryurimp@lasalleurubamba.edu.pe', 0, 9, '', 'DOCENTE'
);

/* INSERT QUERY NO: 695 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000695', 'Mijail ENRIQUEZ HUAMANI', 'mijailmm@lasalleurubamba.edu.pe', 0, 9, '', 'DOCENTE'
);

/* INSERT QUERY NO: 696 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000696', 'Milagros Ibeth HUAMAN BERNAL', 'milagroshb@lasalleurubamba.edu.pe', 0, 9, '', 'DOCENTE'
);

/* INSERT QUERY NO: 697 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000697', 'Paola Giovanna PEÑA VILLAFUERTE', 'paolapv@lasalleurubamba.edu.pe', 40620007, 9, '', 'DOCENTE'
);

/* INSERT QUERY NO: 698 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000698', 'René Estanislao APAZA MEDRANO', 'reneapaza@lasalleurubamba.edu.pe', 0, 9, '', 'DOCENTE'
);

/* INSERT QUERY NO: 699 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000699', 'Rocio FLOREZ CÁMARA', 'rociofc@lasalleurubamba.edu.pe', 24002158, 9, '', 'DOCENTE'
);

/* INSERT QUERY NO: 700 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000700', 'Rosa Maura QUINTASI YANA', 'rosaqy@lasalleurubamba.edu.pe', 0, 9, '', 'DOCENTE'
);

/* INSERT QUERY NO: 701 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000701', 'Rosario MORA RONDINEL', 'rosariomr@lasalleurubamba.edu.pe', 0, 9, '', 'DOCENTE'
);

/* INSERT QUERY NO: 702 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000702', 'Tania ORTIZ DE ZEVALLOS GUTIÉRREZ', 'taniaozg@lasalleurubamba.edu.pe', 43308266, 9, '', 'DOCENTE'
);

/* INSERT QUERY NO: 703 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000703', 'Tania RADO ZUNIGA', 'taniarz@lasalleurubamba.edu.pe', 0, 9, '', 'DOCENTE'
);

/* INSERT QUERY NO: 704 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000704', 'Uriel OCAMPO FIGUEROA', 'uocampo@lasalleurubamba.edu.pe', 41832355, 9, '', 'DOCENTE'
);

/* INSERT QUERY NO: 705 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000705', 'Veronica CUEVA MORALES', 'veronicacm@lasalleurubamba.edu.pe', 0, 9, '', 'DOCENTE'
);

/* INSERT QUERY NO: 706 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000706', 'Walther CCORAHUA HANCCO', 'waltherch@lasalleurubamba.edu.pe', 25320249, 9, '', 'DOCENTE'
);

/* INSERT QUERY NO: 707 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000707', 'Yolanda GALLEGOS FLORES', 'yolandagallegos@lasalleurubamba.edu.pe', 0, 9, '', 'DOCENTE'
);

/* INSERT QUERY NO: 708 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000708', 'Zenaida DIMITE ROJAS', 'zenaidadimite@lasalleurubamba.edu.pe', 0, 9, '', 'DOCENTE'
);

/* INSERT QUERY NO: 709 */
INSERT INTO prestamistas(cod_prestamista, nombre, email, dni, cod_programa, semestre, cargo)
VALUES
(
'prest_23_000709', 'Victoria Del Rocío  MORMONTOY ATAUCHI', 'victoriama@lasalleurubamba.edu.pe', 45694522, 9, '', 'DOCENTE'
);

