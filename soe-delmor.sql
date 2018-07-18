/*
Navicat MySQL Data Transfer

Source Server         : Mysql
Source Server Version : 100131
Source Host           : localhost:3306
Source Database       : soe-delmor

Target Server Type    : MYSQL
Target Server Version : 100131
File Encoding         : 65001

Date: 2018-07-18 15:59:27
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for clientes
-- ----------------------------
DROP TABLE IF EXISTS `clientes`;
CREATE TABLE `clientes` (
  `IdCliente` int(11) NOT NULL AUTO_INCREMENT,
  `IdUsuario` int(11) NOT NULL,
  `Nombre` varchar(255) DEFAULT NULL,
  `Ruta` varchar(11) DEFAULT NULL,
  `Estado` bit(1) DEFAULT NULL,
  `FechaCreacion` date DEFAULT NULL,
  PRIMARY KEY (`IdCliente`)
) ENGINE=InnoDB AUTO_INCREMENT=231 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of clientes
-- ----------------------------
INSERT INTO `clientes` VALUES ('1', '15', 'Colonia Hiper', '9', '', '2018-06-29');
INSERT INTO `clientes` VALUES ('2', '15', 'Colonia Nejapa', '9', '', '2018-06-29');
INSERT INTO `clientes` VALUES ('3', '15', 'Colonia carretera sur', '9', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('4', '15', 'Colonia Plaza España', '9', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('5', '15', 'Unión Esquipulas', '9', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('6', '15', 'Unión Linda Vista', '9', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('7', '15', 'Palí 27 de Mayo', '9', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('8', '15', 'MP  Santana', '9', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('9', '15', 'Colonia Las Brisas', '9', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('10', '15', 'Walmart', '9', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('11', '15', 'Colonia Veracruz', '9', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('12', '15', 'Comisariato Policía', '9', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('13', '15', 'Pali Zumen', '9', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('14', '15', 'Pali Linda Vista', '9', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('15', '15', 'Pali Santo Domingo', '9', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('16', '15', 'Pali Esquipulas', '9', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('17', '15', 'Colonia Plaza Inter', '9', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('18', '15', 'Pali Altagracia', '9', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('19', '15', 'Pali Miraflores', '9', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('20', '15', 'Unión Carretera Masaya', '9', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('21', '15', 'Pali Loma Linda', '9', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('22', '15', 'MP Ticuantepe', '9', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('23', '15', 'MP Belmonte', '9', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('24', '15', 'Pali Ciudad Sandino', '9', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('25', '15', 'Pali San Judas', '9', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('26', '15', 'Pali Plaza Logix', '9', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('27', '15', 'Pali Ticuantepe', '9', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('28', '15', 'Colonia Metrocentro', '9', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('29', '15', 'Unión Larreynaga', '13', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('30', '15', 'Cereales y Vegetales', '13', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('31', '15', 'Unión Nejapa', '13', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('32', '15', 'Colonia La Virgen', '13', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('33', '15', 'Unión Bello Horizonte', '13', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('34', '15', 'MP  Oriental', '13', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('35', '15', 'Colonia Rubenia', '13', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('36', '15', 'Pali P del H', '13', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('37', '15', 'Colonia Bello Horizonte', '13', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('38', '15', 'Pali Las Mercedes', '13', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('39', '15', 'MP  Waspán', '13', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('40', '15', 'Colonia La Gran Vía Huembes', '13', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('41', '15', 'Colonia La Sabana', '13', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('42', '15', 'Pali Ciudad Jardín', '13', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('43', '15', 'Pali 1 de Mayo', '13', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('44', '15', 'Pali La Primavera', '13', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('45', '15', 'Pali La Fuente', '13', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('46', '15', 'Colonia Ciudad Jardín', '13', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('47', '15', 'Pali  Santana', '13', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('48', '15', 'Pali Redentor', '13', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('49', '15', 'Pali Gallo y Villa', '13', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('50', '15', 'Pali Las Américas', '13', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('51', '15', 'Pali  Rubenia', '13', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('52', '15', 'Pali Altamira', '13', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('53', '15', 'Pali  Bolívar', '13', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('54', '15', 'MP El Dorado', '13', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('55', '15', 'MP Las Colinas', '13', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('56', '15', 'Pali Chichigalpa', '11', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('57', '15', 'Unión León', '11', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('58', '15', 'MP La Subasta', '11', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('59', '15', 'Pali San Marcos', '11', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('60', '15', 'Unión Granada', '11', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('61', '15', 'Colonia Serranía', '11', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('62', '15', 'Colonia Chinandega', '11', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('63', '15', 'Colonia León', '11', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('64', '15', 'MP Mayoreo', '11', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('65', '15', 'Pali Masatepe', '11', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('66', '15', 'Colonia Granada', '11', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('67', '15', 'Colonia Monseñor Lezcano', '11', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('68', '15', 'MP Chinandega', '11', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('69', '15', 'MP  León', '11', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('70', '15', 'Pali Tipitapa C', '11', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('71', '15', 'Pali Diriamba', '11', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('72', '15', 'Pali Villa Sandino', '11', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('73', '15', 'Colonia  Plaza 11', '11', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('74', '15', 'Súper Selecto', '11', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('75', '15', 'Pali  León ', '11', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('76', '15', 'Pali Tipitapa S', '11', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('77', '15', 'Pali Jinotepe', '11', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('78', '15', 'Pali Granada', '11', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('79', '15', 'Pricesmart Bolonia', '11', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('80', '15', 'Pali Chinandega', '11', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('81', '15', 'Pali Subtiava', '11', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('82', '15', 'Colonia C. de Oriente', '11', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('83', '15', 'Pali Nandaime', '11', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('84', '15', 'Pali  Diriomo', '11', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('85', '15', 'Pricesmart Carretera a Masaya', '11', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('86', '15', 'Pali  El Viejo', '11', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('87', '15', 'Pali Guadalupe', '11', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('88', '15', 'Pali  Rivas', '11', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('89', '15', 'MP  Granada', '11', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('90', '15', 'Pali Corinto', '11', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('91', '15', 'Comisariato León', '11', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('92', '15', 'MP  Rivas', '11', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('93', '15', 'Colonia Masaya Centro', '11', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('94', '15', 'Distribuidora Selecto', '11', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('95', '15', 'Colonia Paseo Real', '11', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('96', '15', 'Pali San Juan del Sur', '11', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('97', '15', 'Colonia Chinandega Centro', '11', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('98', '15', 'MP  Laborío', '11', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('99', '15', 'Colonia Jinotepe', '11', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('100', '15', 'Pali Sébaco', '24', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('101', '15', 'Colonia Estelí', '24', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('102', '15', 'Pali Jinotega', '24', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('103', '15', 'Pali Las Flores', '24', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('104', '15', 'Pali  Boaco', '24', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('105', '15', 'Pali San Rafael del Sur', '24', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('106', '15', 'Pali Ciudad Darío', '24', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('107', '15', 'Pali  Ocotal', '24', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('108', '15', 'MP Jinotega', '24', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('109', '15', 'MP Ciudad Sandino', '24', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('110', '15', 'Pali  Juigalpa', '24', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('111', '15', 'Pali Mateare', '24', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('112', '15', 'Pali Estelí Norte', '24', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('113', '15', 'Pali Condega', '24', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('114', '15', 'MP Matagalpa', '24', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('115', '15', 'MP  Masaya', '24', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('116', '15', 'MP  Juigalpa ', '24', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('117', '15', 'Pali Nagarote', '24', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('118', '15', 'MP  Estelí', '24', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('119', '15', 'Pali Somoto', '24', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('120', '15', 'Pali Matagalpa', '24', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('121', '15', 'Colonia Plaza Paseo', '24', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('122', '15', 'Comisariato Juigalpa', '24', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('123', '15', 'Pali La Paz Centro', '24', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('124', '15', 'Pali Estelí Centro', '24', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('125', '15', 'Comisariato Ocotal', '24', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('126', '15', 'Colonia Matagalpa', '24', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('127', '15', 'Pali Nindirí', '24', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('128', '15', 'Pali Santo Tomás', '24', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('129', '15', 'Pali Masaya', '24', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('130', '14', 'Intecpor', '15', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('131', '14', 'Hospital Cesar Amador Molina', '16', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('132', '14', 'Inatec Boaco', '21', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('133', '14', 'Tecnologico Nac. Santiago Baldovino', '21', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('134', '14', 'ADEL PANANCO (COMISARIATO)', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('135', '14', 'ALBA HOTEL, S.A.', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('136', '14', 'ALBALINISA - HOTEL PLAZA SEMINOLE **CORPORACION**', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('137', '14', 'AM:PM  03   (LOS ROBLES)', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('138', '14', 'AM:PM  05  (BELLO HORIZONTE)', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('139', '14', 'AM:PM  15   (INVERCASA)', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('140', '14', 'AM:PM  17   (CENTROAMERICA)', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('141', '14', 'AM:PM  18   (ROCARGO)', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('142', '14', 'AM:PM  19   (RUBENIA)', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('143', '14', 'AM:PM  21   (WASPAN)', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('144', '14', 'AM:PM  22   (PETRONIC LOZELSA)', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('145', '14', 'AM:PM 04  (PLAZA ESPAÑA)', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('146', '14', 'AM:PM 06  (LINDA VISTA)', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('147', '14', 'AM:PM 07  (ESCALA)', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('148', '14', 'AM:PM 10  (LOS VADOS)', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('149', '14', 'AM:PM 13  ( ISRAEL  LEWITES)', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('150', '14', 'AM:PM 14  ( METROPOLITANO)', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('151', '14', 'ASADOS EL TORO', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('152', '14', 'ASIATRONIC', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('153', '14', 'CENTRO DE ENSEÑANZA TECNICA AGROPECUARIA SANTIAGO BALDOVINO', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('154', '14', 'COMEDOR INTERNOS (UNI CENTRAL MANAGUA)', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('155', '14', 'COMEDOR UNAN MANAGUA', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('156', '14', 'COMERCIAL EL BISNE', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('157', '14', 'COMISARIATO DEL SISTEMA PENITENCIARIO DE TIPITAPA', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('158', '14', 'COMISARIATO FUERZA AEREA', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('159', '14', 'COMISARIATO HOSPITAL BAUTISTA-MARILIN MENDEZ VARELA', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('160', '14', 'COMISARIATO SITRA - UNAN MANAGUA', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('161', '14', 'COMPAÑIA CERVECERA DE NICARAGUA', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('162', '14', 'COMUNICARTE, S. A.  (C. SUR)', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('163', '14', 'COMUNICARTE, S. A.  ** CORPORACION**', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('164', '14', 'CONSULTORES DE INVERSIONES,  S.A.  SEGURIDAD  HEX', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('165', '14', 'CONVECION BAUTISTA DE NICARAGUA', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('166', '14', 'CSA, S.A.', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('167', '14', 'DIRECCION SEGURIDAD PERSONAL', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('168', '14', 'DON CHACA S.A. Y SU PARRILLA', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('169', '14', 'DON PAN', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('170', '14', 'EL  COROZO S.A.   -  HOTEL  GRANADA', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('171', '14', 'EMPRESA MEDICA PREVICIONAL HCRN-PN', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('172', '14', 'ENERGIA Y COMBUSTIBLE S.A. (LAS COLINAS)', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('173', '14', 'FACTORY PIZZA', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('174', '14', 'FOOD & BEVERAGE S.A. (HOOTERS)', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('175', '14', 'GRUPO AMANO INTERNACIONAL  **CORPORACION**', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('176', '14', 'GRUPO AMANO INTERNACIONAL S.A. (BARCELO)', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('177', '14', 'HOLTE BARCELO MONTELIMAR', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('178', '14', 'HOSPITAL ALEMAN NICARAGUENSE', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('179', '14', 'HOSPITAL BERTHA CALDERON ROQUE', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('180', '14', 'HOSPITAL CESAR AMADOR MOLINA', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('181', '14', 'HOTEL (CROWNE PLAZA)', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('182', '14', 'HOTEL AGUALCAS / GIOCONDA LEON HERNANDEZ', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('183', '14', 'HOTEL CAMINO REAL', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('184', '14', 'HOTEL HOLIDAY INN SELECT', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('185', '14', 'HOTEL INTER - METROCENTRO', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('186', '14', 'HOTEL LAS MERCEDES', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('187', '14', 'HOTEL MANSION TEODOLINDA', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('188', '14', 'HOTEL PRINCESS REAL STATE', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('189', '14', 'INCORSA (METROCENTRO)', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('190', '14', 'INCORSA (MULTICENTRO  LAS AMERICAS)', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('191', '14', 'INCORSA (SANTO DOMINGO)', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('192', '14', 'INVERSIONES GRAMAJO S,A', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('193', '14', 'JOSE LUIS ALEMAN CACERES', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('194', '14', 'MICRO EMPRESA UNAN', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('195', '14', 'MOMENTUM DEVELOPMENT S.A.', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('196', '14', 'MULTISERVICIOS EMPRESARIALES E INVERSIONES', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('197', '14', 'NEGOCIOS Y CONVENCIONES SOCIEDAD ANONIMA', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('198', '14', 'NICACHEF S.A.', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('199', '14', 'NOVUSER INVERSIONES S.A.', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('200', '14', 'POLICIA DE LEON', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('201', '14', 'PUNTO IDEAL, S.A. -  (ALTAMIRA)', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('202', '14', 'PUNTO IDEAL, S.A. -  (BELLO HORIZONTE)', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('203', '14', 'PUNTO IDEAL, S.A. -  (CARRETERA MASAYA)', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('204', '14', 'PUNTO IDEAL, S.A. -  (CIUDAD SANDINO 2)', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('205', '14', 'PUNTO IDEAL, S.A. -  (CIUDAD SANDINO)', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('206', '14', 'PUNTO IDEAL, S.A. -  (EL NOGAL)', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('207', '14', 'PUNTO IDEAL, S.A. -  (MONSEÑOR LEZCANO))', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('208', '14', 'PUNTO IDEAL, S.A. -  (PLAZA LAS COLINAS)', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('209', '14', 'PUNTO IDEAL, S.A. -  (PLAZA SALVADORITA)', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('210', '14', 'PUNTO IDEAL, S.A. -  (PLAZA VERA CRUZ)', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('211', '14', 'PUNTO IDEAL, S.A. -  (SAN JUAN DEL SUR)', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('212', '14', 'PUNTO IDEAL, S.A. -  (TICUANTEPE)', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('213', '14', 'PUNTO IDEAL, S.A. -  (VILLA LIBERTAD)', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('214', '14', 'PUNTO IDEAL, S.A. -  (ZUMEN)', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('215', '14', 'PUNTO IDEAL, S.A. - ** CORPORACION**', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('216', '14', 'SINDICATO BLANCA ARAUZ PICADO', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('217', '14', 'SISTEMA PENITENCIARIO DE TIPITAPA  **CORP**', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('218', '14', 'SISTEMA PENITENCIARIO DE TIPITAPA (COMEDOR)', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('219', '14', 'SITEMA PENITENCIARIO DE TIPITAPA (COMISARIATO)', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('220', '14', 'UNIVERSIDAD NACIONAL AUTONOMA (RUCFA)', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('221', '14', 'VALENTI RAMIREZ Y CIA LTDA (VALENTIS PIZZA)', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('222', '14', 'VALENTIS PIZZA (LOS ROBLES)', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('223', '14', 'VASQUEZ NIÑO IMPORTACIONES', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('224', '14', 'Atomic Pizza', '17,23,28', '', '2018-07-02');
INSERT INTO `clientes` VALUES ('225', '14', 'Taco Stop', '17,23,28', '', '2018-07-02');
INSERT INTO `clientes` VALUES ('226', '14', 'Inversiones', '17,23,28', '', '2018-07-02');
INSERT INTO `clientes` VALUES ('227', '14', 'El Cerdito', '17,23,28', '', '2018-07-02');
INSERT INTO `clientes` VALUES ('228', '14', 'Panadería Jerusalem (Managua)', '17,23,28', '', '2018-07-02');
INSERT INTO `clientes` VALUES ('229', '14', 'Fuerza Aérea (Extranjero)', '17,23,28', '', '2018-07-02');
INSERT INTO `clientes` VALUES ('230', '14', 'CETA santiago baltodovino -muy muy', '21', '', '2018-07-05');

-- ----------------------------
-- Table structure for consecpreventa
-- ----------------------------
DROP TABLE IF EXISTS `consecpreventa`;
CREATE TABLE `consecpreventa` (
  `Valor` int(11) DEFAULT NULL,
  `Concepto` varchar(255) DEFAULT NULL,
  `Ruta` int(11) DEFAULT NULL,
  `FechaEntrega` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of consecpreventa
-- ----------------------------
INSERT INTO `consecpreventa` VALUES ('0', 'Preventa', null, null);
INSERT INTO `consecpreventa` VALUES ('1', 'Preventa', '2', '2018-06-28');
INSERT INTO `consecpreventa` VALUES ('2', 'Preventa', '3', '2018-06-28');

-- ----------------------------
-- Table structure for consecremision
-- ----------------------------
DROP TABLE IF EXISTS `consecremision`;
CREATE TABLE `consecremision` (
  `Valor` int(11) DEFAULT NULL,
  `Concepto` varchar(255) DEFAULT NULL,
  `Ruta` int(11) DEFAULT NULL,
  `FechaEntrega` date DEFAULT NULL,
  `Usuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of consecremision
-- ----------------------------
INSERT INTO `consecremision` VALUES ('0', 'Remision', null, null, null);
INSERT INTO `consecremision` VALUES ('1', 'Remision', '1', '2018-06-28', null);
INSERT INTO `consecremision` VALUES ('2', 'Remision', '20', '2018-06-30', null);
INSERT INTO `consecremision` VALUES ('3', 'Remision', '20', '2018-07-03', null);
INSERT INTO `consecremision` VALUES ('4', 'Remision', '9', '2018-07-04', '15');
INSERT INTO `consecremision` VALUES ('5', 'Remision', '12', '2018-07-09', '15');
INSERT INTO `consecremision` VALUES ('6', 'Remision', '9', '2018-07-09', '15');
INSERT INTO `consecremision` VALUES ('7', 'Remision', '9', '2018-07-05', '15');
INSERT INTO `consecremision` VALUES ('8', 'Remision', '15', '2018-07-09', '14');
INSERT INTO `consecremision` VALUES ('9', 'Remision', '9', '2018-07-12', '15');
INSERT INTO `consecremision` VALUES ('10', 'Remision', '13', '2018-07-12', '15');

-- ----------------------------
-- Table structure for consec_consolidado
-- ----------------------------
DROP TABLE IF EXISTS `consec_consolidado`;
CREATE TABLE `consec_consolidado` (
  `Valor` int(11) DEFAULT NULL,
  `Concepto` varchar(255) DEFAULT NULL,
  `Tipo` varchar(255) DEFAULT NULL,
  `FechaEntrega` date DEFAULT NULL,
  `Usuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of consec_consolidado
-- ----------------------------
INSERT INTO `consec_consolidado` VALUES ('0', 'Consecutivo', null, null, null);
INSERT INTO `consec_consolidado` VALUES ('1', 'Consecutivo', 'O', '2018-05-21', null);
INSERT INTO `consec_consolidado` VALUES ('2', 'Consecutivo', 'P', '2018-05-21', null);
INSERT INTO `consec_consolidado` VALUES ('3', 'Consecutivo', 'U', '2018-05-21', null);
INSERT INTO `consec_consolidado` VALUES ('4', 'Consecutivo', 'O', '2018-05-21', null);
INSERT INTO `consec_consolidado` VALUES ('5', 'Consecutivo', 'O', '2018-07-09', '15');
INSERT INTO `consec_consolidado` VALUES ('6', 'Consecutivo', 'P', '2018-07-10', '15');
INSERT INTO `consec_consolidado` VALUES ('7', 'Consecutivo', 'P', '2018-07-05', '15');
INSERT INTO `consec_consolidado` VALUES ('8', 'Consecutivo', 'O', '2018-07-05', '15');
INSERT INTO `consec_consolidado` VALUES ('9', 'Consecutivo', 'U', '2018-07-05', '15');
INSERT INTO `consec_consolidado` VALUES ('10', 'Consecutivo', 'P', '2018-07-09', '14');
INSERT INTO `consec_consolidado` VALUES ('11', 'Consecutivo', 'O', '2018-07-05', '15');
INSERT INTO `consec_consolidado` VALUES ('12', 'Consecutivo', 'P', '2018-07-05', '15');
INSERT INTO `consec_consolidado` VALUES ('13', 'Consecutivo', 'O', '2018-07-12', '15');
INSERT INTO `consec_consolidado` VALUES ('14', 'Consecutivo', 'U', '2018-07-05', '15');
INSERT INTO `consec_consolidado` VALUES ('15', 'Consecutivo', 'P', '2018-07-09', '14');
INSERT INTO `consec_consolidado` VALUES ('16', 'Consecutivo', 'O', '2018-07-03', '12');
INSERT INTO `consec_consolidado` VALUES ('17', 'Consecutivo', 'O', '2018-06-28', '12');

-- ----------------------------
-- Table structure for consolidado
-- ----------------------------
DROP TABLE IF EXISTS `consolidado`;
CREATE TABLE `consolidado` (
  `Codigo` int(11) DEFAULT NULL,
  `Descripcion` varchar(255) DEFAULT NULL,
  `GRM` decimal(10,3) DEFAULT NULL,
  `Unidades` decimal(10,3) DEFAULT NULL,
  `LBS` varchar(10) DEFAULT NULL,
  `FechaEntrega` date DEFAULT NULL,
  `FechaCreacion` date DEFAULT NULL,
  `Saldo` decimal(10,3) DEFAULT NULL,
  `SaldoRestante` decimal(10,3) DEFAULT NULL,
  `Estado` int(11) DEFAULT NULL,
  `Tipo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of consolidado
-- ----------------------------
INSERT INTO `consolidado` VALUES ('1109', 'MORT-BOLOGNA (225 GR) (1102)', '225.000', '23.000', '11.40', '2018-06-30', '2018-07-11', '722.000', '699.000', '0', 'O');
INSERT INTO `consolidado` VALUES ('1111', 'MORT-CHILTOMA  (GRANEL / PIEZA)', '454.000', '23.000', '23.00', '2018-06-30', '2018-07-11', '12.000', '-11.000', '2', 'O');
INSERT INTO `consolidado` VALUES ('1112', 'MORT-CHILTOMA  (150 GR)', '150.000', '23.000', '7.60', '2018-06-30', '2018-07-11', '-362.000', '-385.000', '2', 'O');
INSERT INTO `consolidado` VALUES ('1113', 'MORT-CHILTOMA  (225 GR)', '225.000', '23.000', '11.40', '2018-06-30', '2018-07-11', '1587.000', '1564.000', '0', 'O');
INSERT INTO `consolidado` VALUES ('1101', 'MORT-BOLOGNA     (GRANEL)', '454.000', '23.000', '23.00', '2018-06-28', '2018-07-11', '0.000', '-23.000', '2', 'O');
INSERT INTO `consolidado` VALUES ('1107', 'MORT-BOLOGNA DELMOR (454 GR)', '454.000', '23.000', '23.00', '2018-06-28', '2018-07-11', '1432.000', '1409.000', '0', 'O');
INSERT INTO `consolidado` VALUES ('1109', 'MORT-BOLOGNA (225 GR) (1102)', '225.000', '23.000', '11.40', '2018-06-28', '2018-07-11', '1304.000', '1281.000', '0', 'O');
INSERT INTO `consolidado` VALUES ('1111', 'MORT-CHILTOMA  (GRANEL / PIEZA)', '454.000', '23.000', '23.00', '2018-06-28', '2018-07-11', '339.000', '316.000', '0', 'O');
INSERT INTO `consolidado` VALUES ('1112', 'MORT-CHILTOMA  (150 GR)', '150.000', '23.000', '7.60', '2018-06-28', '2018-07-11', '0.000', '-23.000', '2', 'O');
INSERT INTO `consolidado` VALUES ('1113', 'MORT-CHILTOMA  (225 GR)', '225.000', '23.000', '11.40', '2018-06-28', '2018-07-11', '1847.000', '1824.000', '0', 'O');
INSERT INTO `consolidado` VALUES ('1117', 'MORT-POPULAR A GRANEL (PIEZA)', '454.000', '23.000', '23.00', '2018-06-28', '2018-07-11', '1125.000', '1102.000', '0', 'O');
INSERT INTO `consolidado` VALUES ('1119', 'MORT-POPULAR (PAQUETE)', '454.000', '23.000', '23.00', '2018-06-28', '2018-07-11', '2805.000', '2782.000', '0', 'O');
INSERT INTO `consolidado` VALUES ('1121', 'MORT-ECONOMICA  (GRANEL/PIEZA)', '454.000', '23.000', '23.00', '2018-06-28', '2018-07-11', '626.000', '603.000', '0', 'O');
INSERT INTO `consolidado` VALUES ('1123', 'MORT-ECONOMICA (125 GR)', '125.000', '23.000', '6.33', '2018-06-28', '2018-07-11', '7044.000', '7021.000', '0', 'O');
INSERT INTO `consolidado` VALUES ('1126', 'MORT-ECONOMICA (454 GR)', '454.000', '23.000', '23.00', '2018-06-28', '2018-07-11', '1117.000', '1094.000', '0', 'O');
INSERT INTO `consolidado` VALUES ('1127', 'MORT-POPULAR (½) 227 GRAMOS', '227.000', '23.000', '11.50', '2018-06-28', '2018-07-11', '4406.000', '4383.000', '0', 'O');
INSERT INTO `consolidado` VALUES ('1130', 'MORT-JAMONADA  (GRANEL/PIEZA)', '454.000', '23.000', '23.00', '2018-06-28', '2018-07-11', '326.000', '303.000', '0', 'O');
INSERT INTO `consolidado` VALUES ('1131', 'MORT. JAMONADA (150 GR.)', '150.000', '23.000', '7.60', '2018-06-28', '2018-07-11', '2420.000', '2397.000', '0', 'O');
INSERT INTO `consolidado` VALUES ('1132', 'MORT-JAMONADA (225 GR)', '225.000', '23.000', '11.40', '2018-06-28', '2018-07-11', '812.000', '789.000', '0', 'O');
INSERT INTO `consolidado` VALUES ('1134', 'MORT-ECONOMICA (225 GR)', '225.000', '23.000', '11.40', '2018-06-28', '2018-07-11', '1351.000', '1328.000', '0', 'O');
INSERT INTO `consolidado` VALUES ('1135', 'MORT-CON TOCINO (225GR)', '225.000', '23.000', '11.40', '2018-06-28', '2018-07-11', '1275.000', '1252.000', '0', 'O');
INSERT INTO `consolidado` VALUES ('1137', 'MORT-JAMONADA DELMOR (454 GR)', '454.000', '23.000', '23.00', '2018-06-28', '2018-07-11', '1038.000', '1015.000', '0', 'O');
INSERT INTO `consolidado` VALUES ('1190', 'MORT-CON TOCINO (150 GR.)', '150.000', '23.000', '7.60', '2018-06-28', '2018-07-11', '0.000', '-23.000', '2', 'O');
INSERT INTO `consolidado` VALUES ('1193', 'MORT- CON TOCINO DELMOR (454 GR)', '454.000', '23.000', '23.00', '2018-06-28', '2018-07-11', '942.000', '919.000', '0', 'O');
INSERT INTO `consolidado` VALUES ('1204', 'SALCHICHA HOT DOG 454GR', '454.000', '23.000', '23.00', '2018-06-28', '2018-07-11', '613.000', '590.000', '0', 'O');
INSERT INTO `consolidado` VALUES ('1210', 'HOT DOG (170 GR.)', '170.000', '23.000', '8.61', '2018-06-28', '2018-07-11', '4619.000', '4596.000', '0', 'O');
INSERT INTO `consolidado` VALUES ('1214', 'SALCHICHA - POPULAR        (GRANEL)( 100 UND)', '454.000', '23.000', '23.00', '2018-06-28', '2018-07-11', '3242.000', '3219.000', '0', 'O');
INSERT INTO `consolidado` VALUES ('1217', 'SALCHI. HOT DOG POPUL. ( 22 UNDS)  (0409 GR.)', '409.000', '23.000', '20.72', '2018-06-28', '2018-07-11', '1785.000', '1762.000', '0', 'O');
INSERT INTO `consolidado` VALUES ('1218', 'SALCHI. HOT DOG  POPUL. (12 UND)   (260 GR.)', '260.000', '23.000', '13.17', '2018-06-28', '2018-07-11', '2802.000', '2779.000', '0', 'O');
INSERT INTO `consolidado` VALUES ('1221', 'SALAMI         PIEZA        (GRANEL)', '454.000', '23.000', '23.00', '2018-06-28', '2018-07-11', '421.000', '398.000', '0', 'O');
INSERT INTO `consolidado` VALUES ('1223', 'SALAMI PREMIUM 150', '150.000', '23.000', '7.60', '2018-06-28', '2018-07-11', '0.000', '-23.000', '2', 'O');
INSERT INTO `consolidado` VALUES ('1227', 'SALAMI  CORTADO PREMIUN PIZZA(1224)/ PARA SUPER', '454.000', '23.000', '23.00', '2018-06-28', '2018-07-11', '881.000', '858.000', '0', 'O');
INSERT INTO `consolidado` VALUES ('1230', 'PEPERONI GRANEL', '454.000', '23.000', '23.00', '2018-06-28', '2018-07-11', '1000.000', '977.000', '0', 'O');
INSERT INTO `consolidado` VALUES ('1231', 'PEPERONI 1000 (GRANEL)', '454.000', '23.000', '23.00', '2018-06-28', '2018-07-11', '0.000', '-23.000', '2', 'O');
INSERT INTO `consolidado` VALUES ('1232', 'PEPERONI 454 GR', '454.000', '23.000', '23.00', '2018-06-28', '2018-07-11', '6.000', '-17.000', '2', 'O');
INSERT INTO `consolidado` VALUES ('1233', 'SALAMI PREMIUM 454 GR', '454.000', '23.000', '23.00', '2018-06-28', '2018-07-11', '164.000', '141.000', '0', 'O');
INSERT INTO `consolidado` VALUES ('1234', 'SALAMI PREMIUN 1000 (GRANEL)', '454.000', '23.000', '23.00', '2018-06-28', '2018-07-11', '0.000', '-23.000', '2', 'O');
INSERT INTO `consolidado` VALUES ('1241', 'SALCHICHA DESAYUNO DE POLLO', '454.000', '23.000', '23.00', '2018-06-28', '2018-07-11', '208.000', '185.000', '0', 'O');
INSERT INTO `consolidado` VALUES ('1243', 'SALCH- DESAYUNO ESPECIAL (GRANEL)', '454.000', '23.000', '23.00', '2018-06-28', '2018-07-11', '1019.000', '996.000', '0', 'O');
INSERT INTO `consolidado` VALUES ('1245', 'SALCHICHA DESAYUNO PSMAT', '1000.000', '23.000', '50.66', '2018-06-28', '2018-07-11', '70.000', '47.000', '0', 'O');
INSERT INTO `consolidado` VALUES ('1250', 'SALCH-JUMBO ECONOMAX (378 G)', '378.000', '23.000', '19.15', '2018-06-28', '2018-07-11', '702.000', '679.000', '0', 'O');
INSERT INTO `consolidado` VALUES ('1251', 'SALCH-PARRILLERO ECONOMAX (360 G)', '360.000', '23.000', '18.24', '2018-06-28', '2018-07-11', '115.000', '92.000', '0', 'O');
INSERT INTO `consolidado` VALUES ('1254', 'SALCHICHA PARRILLERA 454 GR', '454.000', '23.000', '23.00', '2018-06-28', '2018-07-11', '717.000', '694.000', '0', 'O');
INSERT INTO `consolidado` VALUES ('1255', 'SALCH- PARRILLERA (360GR)', '360.000', '23.000', '18.24', '2018-06-28', '2018-07-11', '1561.000', '1538.000', '0', 'O');
INSERT INTO `consolidado` VALUES ('1257', 'SALCH-PARRILLERA (GRANEL)', '454.000', '23.000', '23.00', '2018-06-28', '2018-07-11', '376.000', '353.000', '0', 'O');
INSERT INTO `consolidado` VALUES ('1258', 'SALCHICHA PARRILERA 1000 (GRANEL)', '454.000', '23.000', '23.00', '2018-06-28', '2018-07-11', '0.000', '-23.000', '2', 'O');
INSERT INTO `consolidado` VALUES ('1264', 'SALCHICHA-  JUMBO  908', '908.000', '23.000', '46.00', '2018-06-28', '2018-07-11', '444.000', '421.000', '0', 'O');
INSERT INTO `consolidado` VALUES ('1269', 'SALCHICHA SUPER JUMBO', '1300.000', '23.000', '65.86', '2018-06-28', '2018-07-11', '726.000', '703.000', '0', 'O');
INSERT INTO `consolidado` VALUES ('1270', 'SALCHICHA MUNICH (454 GR)', '454.000', '23.000', '23.00', '2018-06-28', '2018-07-11', '1.000', '-22.000', '2', 'O');
INSERT INTO `consolidado` VALUES ('1272', 'SALCHICHA MUNICH GRANEL', '454.000', '23.000', '23.00', '2018-06-28', '2018-07-11', '0.000', '-23.000', '2', 'O');
INSERT INTO `consolidado` VALUES ('1275', 'SALCHICHA MUNICH KILO', '1000.000', '23.000', '50.66', '2018-06-28', '2018-07-11', '0.000', '-23.000', '2', 'O');
INSERT INTO `consolidado` VALUES ('1279', 'Salchicha Jumbo 2.3', '1000.000', '23.000', '50.66', '2018-06-28', '2018-07-11', '93.000', '70.000', '0', 'O');
INSERT INTO `consolidado` VALUES ('1283', 'SALCHICHA NUREMBERG KILO', '454.000', '23.000', '23.00', '2018-06-28', '2018-07-11', '0.000', '-23.000', '2', 'O');
INSERT INTO `consolidado` VALUES ('1290', 'SALCHICHA -  ALEMANA       454', '454.000', '23.000', '23.00', '2018-06-28', '2018-07-11', '0.000', '-23.000', '2', 'O');
INSERT INTO `consolidado` VALUES ('1292', 'SALCH- ALEMANA GRANEL', '454.000', '23.000', '23.00', '2018-06-28', '2018-07-11', '0.000', '-23.000', '2', 'O');
INSERT INTO `consolidado` VALUES ('1293', 'SALCHICHA ALEMANA KILO', '1000.000', '23.000', '50.66', '2018-06-28', '2018-07-11', '289.000', '266.000', '0', 'O');
INSERT INTO `consolidado` VALUES ('1302', 'JAMON AHUMADO PIEZA', '454.000', '23.000', '23.00', '2018-06-28', '2018-07-11', '0.000', '-23.000', '2', 'O');
INSERT INTO `consolidado` VALUES ('1321', 'JAMON PIERNA          (PIEZA)', '454.000', '23.000', '23.00', '2018-06-28', '2018-07-11', '267.000', '244.000', '0', 'O');
INSERT INTO `consolidado` VALUES ('1325', 'JAMON PIERNA 454', '454.000', '23.000', '23.00', '2018-06-28', '2018-07-11', '334.000', '311.000', '0', 'O');
INSERT INTO `consolidado` VALUES ('1331', 'JAMON PIC NIC --GRANEL CORTADO (PIEZA)', '454.000', '23.000', '23.00', '2018-06-28', '2018-07-11', '0.000', '-23.000', '2', 'O');
INSERT INTO `consolidado` VALUES ('1333', 'JAMON POPULAR   ECONOMAX  (150 G)', '150.000', '23.000', '7.60', '2018-06-28', '2018-07-11', '1090.000', '1067.000', '0', 'O');
INSERT INTO `consolidado` VALUES ('1334', 'JAMON POPULAR  (LIBRA.)', '454.000', '23.000', '23.00', '2018-06-28', '2018-07-11', '2487.000', '2464.000', '0', 'O');
INSERT INTO `consolidado` VALUES ('1335', 'JAMON PIC NIC (125 GR)', '125.000', '23.000', '6.33', '2018-06-28', '2018-07-11', '2501.000', '2478.000', '0', 'O');
INSERT INTO `consolidado` VALUES ('1336', 'JAMON POPULAR (227 GR)', '227.000', '23.000', '11.50', '2018-06-28', '2018-07-11', '2107.000', '2084.000', '0', 'O');
INSERT INTO `consolidado` VALUES ('1341', 'JAMON PRENSADO  (PIEZA)', '454.000', '23.000', '23.00', '2018-06-28', '2018-07-11', '1155.000', '1132.000', '0', 'O');
INSERT INTO `consolidado` VALUES ('1342', 'JAMON PRENSADO  ECONOMAX  (150 G)', '150.000', '23.000', '7.60', '2018-06-28', '2018-07-11', '2685.000', '2662.000', '0', 'O');
INSERT INTO `consolidado` VALUES ('1345', 'JAMON PRENSADO (125 GR)', '125.000', '23.000', '6.33', '2018-06-28', '2018-07-11', '3215.000', '3192.000', '0', 'O');
INSERT INTO `consolidado` VALUES ('1353', 'JAMON PRENSADO CORTADO Y ARMADO', '454.000', '23.000', '23.00', '2018-06-28', '2018-07-11', '1692.000', '1669.000', '0', 'O');
INSERT INTO `consolidado` VALUES ('1361', 'JAMON VIRGINIA', '454.000', '23.000', '23.00', '2018-06-28', '2018-07-11', '0.000', '-23.000', '2', 'O');
INSERT INTO `consolidado` VALUES ('1363', 'JAMON VIRGINIA (PSMT)', '1300.000', '23.000', '65.86', '2018-06-28', '2018-07-11', '271.000', '248.000', '0', 'O');
INSERT INTO `consolidado` VALUES ('1370', 'JAMON PAVO GRANEL', '454.000', '23.000', '23.00', '2018-06-28', '2018-07-11', '69.000', '46.000', '0', 'O');
INSERT INTO `consolidado` VALUES ('1373', 'JAMON PRENSADO (LIBRA)', '454.000', '23.000', '23.00', '2018-06-28', '2018-07-11', '1360.000', '1337.000', '0', 'O');
INSERT INTO `consolidado` VALUES ('1376', 'JAMON PIC-NIC  454', '454.000', '23.000', '23.00', '2018-06-28', '2018-07-11', '0.000', '-23.000', '2', 'O');
INSERT INTO `consolidado` VALUES ('1401', 'CHORIZO CRIOLLO (227 GR)', '227.000', '23.000', '11.50', '2018-06-28', '2018-07-11', '18550.000', '18527.000', '0', 'O');
INSERT INTO `consolidado` VALUES ('1402', 'CHORIZO CRIOLLO (GRANEL)', '454.000', '23.000', '23.00', '2018-06-28', '2018-07-11', '656.000', '633.000', '0', 'O');
INSERT INTO `consolidado` VALUES ('1403', 'CHORIZO CRIOLLO (454 GR)', '454.000', '23.000', '23.00', '2018-06-28', '2018-07-11', '1018.000', '995.000', '0', 'O');
INSERT INTO `consolidado` VALUES ('1404', 'CHORIZO CRIOLLO 5LB', '454.000', '23.000', '23.00', '2018-06-28', '2018-07-11', '0.000', '-23.000', '2', 'O');
INSERT INTO `consolidado` VALUES ('1421', 'CHORIZO ESPAÑOL  (GRANEL)', '454.000', '23.000', '23.00', '2018-06-28', '2018-07-11', '336.000', '313.000', '0', 'O');
INSERT INTO `consolidado` VALUES ('1470', 'CHORIZO ARGENTINO (454 GR )', '454.000', '23.000', '23.00', '2018-06-28', '2018-07-11', '40.000', '17.000', '0', 'O');
INSERT INTO `consolidado` VALUES ('1473', 'CHORIZO ARGENTINO (GRANEL )', '454.000', '23.000', '23.00', '2018-06-28', '2018-07-11', '450.000', '427.000', '0', 'O');
INSERT INTO `consolidado` VALUES ('1486', 'TORTA P/HAMBUERGUESA (CJA)', '500.000', '23.000', '25.33', '2018-06-28', '2018-07-11', '0.000', '-23.000', '2', 'O');
INSERT INTO `consolidado` VALUES ('1487', 'TORTA DE CARNE DE RES CLASICA', '454.000', '23.000', '23.00', '2018-06-28', '2018-07-11', '0.000', '-23.000', '2', 'O');
INSERT INTO `consolidado` VALUES ('1502', 'CARNE MOLIDA POLLO    (LIBRA)', '454.000', '23.000', '23.00', '2018-06-28', '2018-07-11', '3237.000', '3214.000', '0', 'O');
INSERT INTO `consolidado` VALUES ('1503', 'CARNE MOLIDA RES         (LIBRA)', '454.000', '23.000', '23.00', '2018-06-28', '2018-07-11', '3500.000', '3477.000', '0', 'O');
INSERT INTO `consolidado` VALUES ('1504', 'CARNE MOLIDA CERDO   (LIBRA)', '454.000', '23.000', '23.00', '2018-06-28', '2018-07-11', '176.000', '153.000', '0', 'O');
INSERT INTO `consolidado` VALUES ('1505', 'CARNE MOLIDA RES         GRANEL', '454.000', '23.000', '23.00', '2018-06-28', '2018-07-11', '0.000', '-23.000', '2', 'O');
INSERT INTO `consolidado` VALUES ('1620', 'JAMON POLLO    (150 GR.)', '150.000', '23.000', '7.60', '2018-06-28', '2018-07-11', '1162.000', '1139.000', '0', 'O');
INSERT INTO `consolidado` VALUES ('1621', 'JAMON POLLO           (PIEZA)', '454.000', '23.000', '23.00', '2018-06-28', '2018-07-11', '222.000', '199.000', '0', 'O');
INSERT INTO `consolidado` VALUES ('1622', 'JAMON POLLO  ECONOMAX (150 G)', '150.000', '23.000', '7.60', '2018-06-28', '2018-07-11', '224.000', '201.000', '0', 'O');
INSERT INTO `consolidado` VALUES ('1630', 'JAMON PAVO', '454.000', '23.000', '23.00', '2018-06-28', '2018-07-11', '276.000', '253.000', '0', 'O');
INSERT INTO `consolidado` VALUES ('1640', 'MORT-    POLLO  (150 GR.)', '150.000', '23.000', '7.60', '2018-06-28', '2018-07-11', '2261.000', '2238.000', '0', 'O');
INSERT INTO `consolidado` VALUES ('1641', 'MORT- POLLO   (GRANEL)', '454.000', '23.000', '23.00', '2018-06-28', '2018-07-11', '0.000', '-23.000', '2', 'O');
INSERT INTO `consolidado` VALUES ('1642', 'MORT-DE POLLO DELMOR (454 GR)', '454.000', '23.000', '23.00', '2018-06-28', '2018-07-11', '1949.000', '1926.000', '0', 'O');
INSERT INTO `consolidado` VALUES ('1643', 'JAMON DE POLLO DELMOR 454 GR', '454.000', '23.000', '23.00', '2018-06-28', '2018-07-11', '158.000', '135.000', '0', 'O');
INSERT INTO `consolidado` VALUES ('1645', 'MORT. DE PAVO', '454.000', '23.000', '23.00', '2018-06-28', '2018-07-11', '1107.000', '1084.000', '0', 'O');
INSERT INTO `consolidado` VALUES ('1650', 'SALCH-  POLLO             (170 GR.)', '170.000', '23.000', '8.61', '2018-06-28', '2018-07-11', '2569.000', '2546.000', '0', 'O');
INSERT INTO `consolidado` VALUES ('1655', 'SALCHICHA.  PAVO JUMBO 590', '590.000', '23.000', '29.89', '2018-06-28', '2018-07-11', '721.000', '698.000', '0', 'O');
INSERT INTO `consolidado` VALUES ('1660', 'SALCH- POLLO   ECONOMAX  (425 G)', '425.000', '23.000', '21.53', '2018-06-28', '2018-07-11', '130.000', '107.000', '0', 'O');
INSERT INTO `consolidado` VALUES ('1670', 'SALCHICHON POLLO       (200  GR)', '200.000', '23.000', '10.13', '2018-06-28', '2018-07-11', '723.000', '700.000', '0', 'O');
INSERT INTO `consolidado` VALUES ('1701', 'BACON AHUMADO  ECONOMAX  (200 G)', '200.000', '23.000', '10.13', '2018-06-28', '2018-07-11', '192.000', '169.000', '0', 'O');
INSERT INTO `consolidado` VALUES ('1702', 'BACON AHUMADO A GRANEL', '454.000', '23.000', '23.00', '2018-06-28', '2018-07-11', '4088.000', '4065.000', '0', 'O');
INSERT INTO `consolidado` VALUES ('1703', 'BACON AHUMADO (200 GR)', '200.000', '23.000', '10.13', '2018-06-28', '2018-07-11', '1794.000', '1771.000', '0', 'O');
INSERT INTO `consolidado` VALUES ('1706', 'BACON AHUMADO 1000 GR', '454.000', '23.000', '23.00', '2018-06-28', '2018-07-11', '290.000', '267.000', '0', 'O');
INSERT INTO `consolidado` VALUES ('1707', 'BACON AHUMADO 454 GR', '454.000', '23.000', '23.00', '2018-06-28', '2018-07-11', '743.000', '720.000', '0', 'O');
INSERT INTO `consolidado` VALUES ('1709', 'BACON PSMAT 5 LIB', '454.000', '23.000', '23.00', '2018-06-28', '2018-07-11', '0.000', '-23.000', '2', 'O');
INSERT INTO `consolidado` VALUES ('1711', 'COSTILLA DE CERDO AHUMADA', '454.000', '23.000', '23.00', '2018-06-28', '2018-07-11', '0.000', '-23.000', '2', 'O');
INSERT INTO `consolidado` VALUES ('1720', 'CHULETA AHUMADA (BANDEJA)', '454.000', '23.000', '23.00', '2018-06-28', '2018-07-11', '0.000', '-23.000', '2', 'O');
INSERT INTO `consolidado` VALUES ('1721', 'CHULETA AHUMADA A GRANEL', '454.000', '23.000', '23.00', '2018-06-28', '2018-07-11', '646.000', '623.000', '0', 'O');
INSERT INTO `consolidado` VALUES ('1723', 'CHULETA PREFORMADA ', '454.000', '23.000', '23.00', '2018-06-28', '2018-07-11', '348.000', '325.000', '0', 'O');
INSERT INTO `consolidado` VALUES ('1730', 'JAMON SELVA NEGRA', '454.000', '23.000', '23.00', '2018-06-28', '2018-07-11', '525.000', '502.000', '0', 'O');
INSERT INTO `consolidado` VALUES ('1760', 'PIERNA AHUMADA CON HUESO', '454.000', '23.000', '23.00', '2018-06-28', '2018-07-11', '474.000', '451.000', '0', 'O');
INSERT INTO `consolidado` VALUES ('1761', 'PIERNA AHUMADA  SIN HUESO', '454.000', '23.000', '23.00', '2018-06-28', '2018-07-11', '939.000', '916.000', '0', 'O');
INSERT INTO `consolidado` VALUES ('1762', 'PIERNA AHUMADA ( BANDEJA)', '454.000', '23.000', '23.00', '2018-06-28', '2018-07-11', '0.000', '-23.000', '2', 'O');
INSERT INTO `consolidado` VALUES ('1763', 'PIERNA AHUMADA C/H BANDEJA', '454.000', '23.000', '23.00', '2018-06-28', '2018-07-11', '0.000', '-23.000', '2', 'O');
INSERT INTO `consolidado` VALUES ('1770', 'POLLO AHUMADO (PIEZA)', '454.000', '23.000', '23.00', '2018-06-28', '2018-07-11', '474.000', '451.000', '0', 'O');
INSERT INTO `consolidado` VALUES ('1772', 'POLLO AHUMADO BANDEJA', '454.000', '23.000', '23.00', '2018-06-28', '2018-07-11', '0.000', '-23.000', '2', 'O');
INSERT INTO `consolidado` VALUES ('1773', 'POLLO AHUMADO PIEZA (PSMT)', '454.000', '23.000', '23.00', '2018-06-28', '2018-07-11', '0.000', '-23.000', '2', 'O');
INSERT INTO `consolidado` VALUES ('1774', 'ROLLER HAM AHUMADO (PSMT)', '454.000', '23.000', '23.00', '2018-06-28', '2018-07-11', '0.000', '-23.000', '2', 'O');
INSERT INTO `consolidado` VALUES ('1780', 'ROLLER HAM AHUMADO', '454.000', '23.000', '23.00', '2018-06-28', '2018-07-11', '1799.000', '1776.000', '0', 'O');
INSERT INTO `consolidado` VALUES ('1791', 'PASTRAMI', '454.000', '23.000', '23.00', '2018-06-28', '2018-07-11', '0.000', '-23.000', '2', 'O');
INSERT INTO `consolidado` VALUES ('1792', 'ROAST BEEF', '454.000', '23.000', '23.00', '2018-06-28', '2018-07-11', '0.000', '-23.000', '2', 'O');
INSERT INTO `consolidado` VALUES ('1793', 'ROAST BEET PIEZA PIEZA/LIBRA', '454.000', '23.000', '23.00', '2018-06-28', '2018-07-11', '178.000', '155.000', '0', 'O');
INSERT INTO `consolidado` VALUES ('1794', 'PASTRAMI LIBRA', '454.000', '23.000', '23.00', '2018-06-28', '2018-07-11', '357.000', '334.000', '0', 'O');
INSERT INTO `consolidado` VALUES ('1795', 'ROAST BEEF LIBRA', '454.000', '23.000', '23.00', '2018-06-28', '2018-07-11', '439.000', '416.000', '0', 'O');
INSERT INTO `consolidado` VALUES ('1803', 'MORT. FRANKFURT (125 GR.)', '125.000', '23.000', '6.33', '2018-06-28', '2018-07-11', '2455.000', '2432.000', '0', 'O');
INSERT INTO `consolidado` VALUES ('1810', 'SALCH- FRANKFORT (200 GR)', '200.000', '23.000', '10.13', '2018-06-28', '2018-07-11', '3862.000', '3839.000', '0', 'O');
INSERT INTO `consolidado` VALUES ('1811', 'SALCH-  FRANKFURT  (170 GR.)', '170.000', '23.000', '8.61', '2018-06-28', '2018-07-11', '4727.000', '4704.000', '0', 'O');
INSERT INTO `consolidado` VALUES ('1812', 'SALCHICHA-  BOLOGNA       (GRANEL)', '454.000', '23.000', '23.00', '2018-06-28', '2018-07-11', '636.000', '613.000', '0', 'O');
INSERT INTO `consolidado` VALUES ('1813', 'SALCH JUMBO FRANKFURT GRAN/36 UND.(F.ARTIFICIAL)', '454.000', '23.000', '23.00', '2018-06-28', '2018-07-11', '1665.000', '1642.000', '0', 'O');
INSERT INTO `consolidado` VALUES ('1819', 'S.JUMBO FRANK (12 UN)  2.5', '1135.000', '23.000', '57.50', '2018-06-28', '2018-07-11', '144.000', '121.000', '0', 'O');
INSERT INTO `consolidado` VALUES ('1820', 'SALCHICHA FRANKFURT 454 GR', '454.000', '23.000', '23.00', '2018-06-28', '2018-07-11', '2080.000', '2057.000', '0', 'O');
INSERT INTO `consolidado` VALUES ('1970', 'SALCHICHON RES            (200  GR)', '200.000', '23.000', '10.13', '2018-06-28', '2018-07-11', '7975.000', '7952.000', '0', 'O');
INSERT INTO `consolidado` VALUES ('1971', 'SALCHICHON TUBO RES (MANGUERA GRANEL)', '454.000', '23.000', '23.00', '2018-06-28', '2018-07-11', '1471.000', '1448.000', '0', 'O');
INSERT INTO `consolidado` VALUES ('1975', 'SALCHICHON PICANTE    (200  GR)', '200.000', '23.000', '10.13', '2018-06-28', '2018-07-11', '9332.000', '9309.000', '0', 'O');
INSERT INTO `consolidado` VALUES ('1980', 'SALCHICHON TUBO PICANTE (MANGUERA GRANEL)', '454.000', '23.000', '23.00', '2018-06-28', '2018-07-11', '1261.000', '1238.000', '0', 'O');
INSERT INTO `consolidado` VALUES ('2993', 'S.VIENA PICANTE', '150.000', '23.000', '7.60', '2018-06-28', '2018-07-11', '0.000', '-23.000', '2', 'O');
INSERT INTO `consolidado` VALUES ('3401', 'REC.  BACON AHUMADOS', '454.000', '23.000', '23.00', '2018-06-28', '2018-07-11', '796.000', '773.000', '0', 'O');
INSERT INTO `consolidado` VALUES ('3402', 'REC. DE CHULETA AHUMADA', '454.000', '23.000', '23.00', '2018-06-28', '2018-07-11', '111.000', '88.000', '0', 'O');
INSERT INTO `consolidado` VALUES ('3410', 'REC.SALCHICHA', '454.000', '23.000', '23.00', '2018-06-28', '2018-07-11', '1159.000', '1136.000', '0', 'O');
INSERT INTO `consolidado` VALUES ('3411', 'REC. SALCHICHA  DELIKATESSEN', '454.000', '23.000', '23.00', '2018-06-28', '2018-07-11', '1474.000', '1451.000', '0', 'O');
INSERT INTO `consolidado` VALUES ('3420', 'REC. JAMON DE CERDO (PRENSADO)', '454.000', '23.000', '23.00', '2018-06-28', '2018-07-11', '2737.000', '2714.000', '0', 'O');
INSERT INTO `consolidado` VALUES ('3421', 'REC. JAMON DE POLLO', '454.000', '23.000', '23.00', '2018-06-28', '2018-07-11', '931.000', '908.000', '0', 'O');
INSERT INTO `consolidado` VALUES ('3422', 'RECORTE DE J.POPULAR', '454.000', '23.000', '23.00', '2018-06-28', '2018-07-11', '411.000', '388.000', '0', 'O');
INSERT INTO `consolidado` VALUES ('3430', 'REC.MORTADELA  ', '454.000', '23.000', '23.00', '2018-06-28', '2018-07-11', '487.000', '464.000', '0', 'O');
INSERT INTO `consolidado` VALUES ('3460', 'REC.SALAMI', '454.000', '23.000', '23.00', '2018-06-28', '2018-07-11', '114.000', '91.000', '0', 'O');
INSERT INTO `consolidado` VALUES ('3465', 'REC. PEPERONI', '454.000', '32.000', '32.00', '2018-06-28', '2018-07-11', '295.000', '263.000', '0', 'O');
INSERT INTO `consolidado` VALUES ('85120', 'CARNE  BISTEC PIM.LIMON (LIBRA)', '454.000', '23.000', '23.00', '2018-06-28', '2018-07-11', '0.000', '-23.000', '2', 'O');

-- ----------------------------
-- Table structure for consolidadom
-- ----------------------------
DROP TABLE IF EXISTS `consolidadom`;
CREATE TABLE `consolidadom` (
  `Codigo` int(11) DEFAULT NULL,
  `Descripcion` varchar(255) DEFAULT NULL,
  `GRM` varchar(255) DEFAULT NULL,
  `Fecha` date DEFAULT NULL,
  `Camp1` decimal(10,2) DEFAULT NULL,
  `Camp2` decimal(10,2) DEFAULT NULL,
  `Camp3` decimal(10,2) DEFAULT NULL,
  `Camp4` decimal(10,2) DEFAULT NULL,
  `Camp5` decimal(10,2) DEFAULT NULL,
  `Camp6` decimal(10,2) DEFAULT NULL,
  `Camp7` decimal(10,2) DEFAULT NULL,
  `Camp8` decimal(10,2) DEFAULT NULL,
  `Camp9` decimal(10,2) DEFAULT NULL,
  `Camp10` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of consolidadom
-- ----------------------------
INSERT INTO `consolidadom` VALUES ('1101', 'MORT-BOLOGNA     (GRANEL)', '454', '2018-07-16', '0.00', '12.00', '0.00', '8.00', '0.00', '30.00', '0.00', '0.00', '50.00', '0.00');
INSERT INTO `consolidadom` VALUES ('1107', 'MORT-BOLOGNA DELMOR (454 GR)', '454', '2018-07-16', '0.00', '12.00', '0.00', '12.00', '0.00', '12.00', '12.00', '0.00', '22.00', '0.00');
INSERT INTO `consolidadom` VALUES ('1109', 'MORT-BOLOGNA (225 GR) (1102)', '225', '2018-07-16', '12.00', '0.00', '12.00', '12.00', '12.00', '12.00', '12.00', '0.00', '12.00', '0.00');
INSERT INTO `consolidadom` VALUES ('1111', 'MORT-CHILTOMA  (GRANEL / PIEZA)', '454', '2018-07-16', '0.00', '12.00', '0.00', '0.00', '12.00', '12.00', '0.00', '12.00', '0.00', '0.00');
INSERT INTO `consolidadom` VALUES ('1112', 'MORT-CHILTOMA  (150 GR)', '150', '2018-07-16', '0.00', '12.00', '0.00', '0.00', '0.00', '12.00', '12.00', '12.00', '0.00', '0.00');
INSERT INTO `consolidadom` VALUES ('1113', 'MORT-CHILTOMA  (225 GR)', '225', '2018-07-16', '0.00', '0.00', '12.00', '0.00', '12.00', '0.00', '12.00', '0.00', '0.00', '0.00');
INSERT INTO `consolidadom` VALUES ('1117', 'MORT-POPULAR A GRANEL (PIEZA)', '454', '2018-07-16', '0.00', '12.00', '0.00', '0.00', '12.00', '12.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `consolidadom` VALUES ('1119', 'MORT-POPULAR (PAQUETE)', '454', '2018-07-16', '0.00', '0.00', '12.00', '12.00', '12.00', '0.00', '0.00', '0.00', '12.00', '0.00');
INSERT INTO `consolidadom` VALUES ('1121', 'MORT-ECONOMICA  (GRANEL/PIEZA)', '454', '2018-07-16', '0.00', '12.00', '0.00', '0.00', '120.00', '12.00', '0.00', '12.00', '0.00', '0.00');
INSERT INTO `consolidadom` VALUES ('1123', 'MORT-ECONOMICA (125 GR)', '125', '2018-07-16', '0.00', '0.00', '12.00', '0.00', '0.00', '0.00', '12.00', '12.00', '12.00', '0.00');
INSERT INTO `consolidadom` VALUES ('1126', 'MORT-ECONOMICA (454 GR)', '454', '2018-07-16', '12.00', '0.00', '12.00', '0.00', '12.00', '0.00', '12.00', '0.00', '12.00', '0.00');
INSERT INTO `consolidadom` VALUES ('1127', 'MORT-POPULAR (½) 227 GRAMOS', '227', '2018-07-16', '0.00', '11.00', '12.00', '0.00', '0.00', '12.00', '0.00', '12.00', '0.00', '0.00');
INSERT INTO `consolidadom` VALUES ('1130', 'MORT-JAMONADA  (GRANEL/PIEZA)', '454', '2018-07-16', '0.00', '0.00', '0.00', '0.00', '12.00', '0.00', '0.00', '0.00', '0.00', '0.00');

-- ----------------------------
-- Table structure for consolidado_s
-- ----------------------------
DROP TABLE IF EXISTS `consolidado_s`;
CREATE TABLE `consolidado_s` (
  `Codigo` int(11) DEFAULT NULL,
  `Descripcion` varchar(255) DEFAULT NULL,
  `GRM` decimal(10,3) DEFAULT NULL,
  `Unidades` decimal(10,3) DEFAULT NULL,
  `LBS` varchar(10) DEFAULT NULL,
  `FechaEntrega` date DEFAULT NULL,
  `FechaCreacion` date DEFAULT NULL,
  `Saldo` decimal(10,3) DEFAULT NULL,
  `SaldoRestante` decimal(10,3) DEFAULT NULL,
  `Estado` int(11) DEFAULT NULL,
  `Tipo` varchar(255) DEFAULT NULL,
  `Usuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of consolidado_s
-- ----------------------------
INSERT INTO `consolidado_s` VALUES ('1101', 'MORT-BOLOGNA     (GRANEL)', '454.000', '54.000', '54.00', '2018-07-05', '2018-07-10', '-339.000', '-393.000', '2', 'O', '15');
INSERT INTO `consolidado_s` VALUES ('1107', 'MORT-BOLOGNA DELMOR (454 GR)', '454.000', '23.000', '23.00', '2018-07-05', '2018-07-10', '1153.000', '1130.000', '0', 'O', '15');
INSERT INTO `consolidado_s` VALUES ('1109', 'MORT-BOLOGNA (225 GR) (1102)', '225.000', '23.000', '11.40', '2018-07-05', '2018-07-10', '815.000', '792.000', '0', 'O', '15');
INSERT INTO `consolidado_s` VALUES ('1111', 'MORT-CHILTOMA  (GRANEL / PIEZA)', '454.000', '23.000', '23.00', '2018-07-05', '2018-07-10', '82.000', '59.000', '0', 'O', '15');
INSERT INTO `consolidado_s` VALUES ('1112', 'MORT-CHILTOMA  (150 GR)', '150.000', '23.000', '7.60', '2018-07-05', '2018-07-10', '-292.000', '-315.000', '2', 'O', '15');
INSERT INTO `consolidado_s` VALUES ('1101', 'MORT-BOLOGNA     (GRANEL)', '454.000', '23.000', '23.00', '2018-07-05', '2018-07-10', '-393.000', '-416.000', '2', 'P', '15');
INSERT INTO `consolidado_s` VALUES ('1107', 'MORT-BOLOGNA DELMOR (454 GR)', '454.000', '23.000', '23.00', '2018-07-05', '2018-07-10', '1130.000', '1107.000', '0', 'P', '15');
INSERT INTO `consolidado_s` VALUES ('1109', 'MORT-BOLOGNA (225 GR) (1102)', '225.000', '23.000', '11.40', '2018-07-05', '2018-07-10', '792.000', '769.000', '0', 'P', '15');
INSERT INTO `consolidado_s` VALUES ('1111', 'MORT-CHILTOMA  (GRANEL / PIEZA)', '454.000', '23.000', '23.00', '2018-07-05', '2018-07-10', '59.000', '36.000', '0', 'P', '15');
INSERT INTO `consolidado_s` VALUES ('1112', 'MORT-CHILTOMA  (150 GR)', '150.000', '23.000', '7.60', '2018-07-05', '2018-07-10', '-315.000', '-338.000', '2', 'P', '15');
INSERT INTO `consolidado_s` VALUES ('1101', 'MORT-BOLOGNA     (GRANEL)', '454.000', '77.000', '77.00', '2018-07-05', '2018-07-11', '-440.000', '-517.000', '2', 'U', '15');
INSERT INTO `consolidado_s` VALUES ('1107', 'MORT-BOLOGNA DELMOR (454 GR)', '454.000', '46.000', '46.00', '2018-07-05', '2018-07-11', '1083.000', '1037.000', '0', 'U', '15');
INSERT INTO `consolidado_s` VALUES ('1109', 'MORT-BOLOGNA (225 GR) (1102)', '225.000', '46.000', '22.80', '2018-07-05', '2018-07-11', '745.000', '699.000', '0', 'U', '15');
INSERT INTO `consolidado_s` VALUES ('1111', 'MORT-CHILTOMA  (GRANEL / PIEZA)', '454.000', '46.000', '46.00', '2018-07-05', '2018-07-11', '12.000', '-34.000', '2', 'U', '15');
INSERT INTO `consolidado_s` VALUES ('1112', 'MORT-CHILTOMA  (150 GR)', '150.000', '46.000', '15.20', '2018-07-05', '2018-07-11', '-362.000', '-408.000', '2', 'U', '15');
INSERT INTO `consolidado_s` VALUES ('1101', 'MORT-BOLOGNA     (GRANEL)', '454.000', '23.000', '23.00', '2018-06-30', '2018-07-11', '-440.000', '-463.000', '2', 'P', '14');
INSERT INTO `consolidado_s` VALUES ('1107', 'MORT-BOLOGNA DELMOR (454 GR)', '454.000', '23.000', '23.00', '2018-06-30', '2018-07-11', '1083.000', '1060.000', '0', 'P', '14');
INSERT INTO `consolidado_s` VALUES ('1109', 'MORT-BOLOGNA (225 GR) (1102)', '225.000', '23.000', '11.40', '2018-06-30', '2018-07-11', '745.000', '722.000', '0', 'P', '14');

-- ----------------------------
-- Table structure for devoluciones
-- ----------------------------
DROP TABLE IF EXISTS `devoluciones`;
CREATE TABLE `devoluciones` (
  `IdDevolucion` int(11) NOT NULL AUTO_INCREMENT,
  `Codigo` int(11) DEFAULT NULL,
  `Descripcion` varchar(255) DEFAULT NULL,
  `GR` varchar(255) DEFAULT NULL,
  `Total` double DEFAULT NULL,
  `Libras` double DEFAULT NULL,
  `FechaEntrega` date DEFAULT NULL,
  `FechaCreacion` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `Estado` bit(1) DEFAULT NULL,
  PRIMARY KEY (`IdDevolucion`)
) ENGINE=InnoDB AUTO_INCREMENT=1288 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of devoluciones
-- ----------------------------
INSERT INTO `devoluciones` VALUES ('1145', '1123', 'MORT-ECONOMICA (125 GR)', '125', '10', '2.7533039647577', '2018-06-30', '2018-07-18 00:00:00', '');
INSERT INTO `devoluciones` VALUES ('1148', '1131', 'MORT. JAMONADA (150 GR.)', '150', '3', '0.99118942731278', '2018-06-30', '2018-07-18 00:00:00', '');
INSERT INTO `devoluciones` VALUES ('1152', '1127', 'MORT-POPULAR (½) 227 GRAMOS', '227', '340', '170', '2018-06-30', '2018-07-18 00:00:00', '');
INSERT INTO `devoluciones` VALUES ('1153', '1119', 'MORT-POPULAR (PAQUETE)', '454', '124', '124', '2018-06-30', '2018-07-18 00:00:00', '');
INSERT INTO `devoluciones` VALUES ('1155', '1113', 'MORT-CHILTOMA  (225 GR)', '225', '24', '11.894273127753', '2018-06-30', '2018-07-18 00:00:00', '');
INSERT INTO `devoluciones` VALUES ('1156', '1803', 'MORT. FRANKFURT (125 GR.)', '125', '10', '2.7533039647577', '2018-06-30', '2018-07-18 00:00:00', '');
INSERT INTO `devoluciones` VALUES ('1158', '1117', 'MORT-POPULAR A GRANEL (PIEZA)', '454', '11.32', '11.32', '2018-06-30', '2018-07-18 00:00:00', '');
INSERT INTO `devoluciones` VALUES ('1160', '1134', 'MORT-ECONOMICA (225 GR)', '225', '1', '0.49559471365639', '2018-06-30', '2018-07-18 00:00:00', '');
INSERT INTO `devoluciones` VALUES ('1167', '1135', 'MORT-CON TOCINO (225GR)', '225', '18', '8.920704845815', '2018-06-30', '2018-07-18 00:00:00', '');
INSERT INTO `devoluciones` VALUES ('1171', '1210', 'HOT DOG (170 GR.)', '170', '37', '13.854625550661', '2018-06-30', '2018-07-18 00:00:00', '');
INSERT INTO `devoluciones` VALUES ('1172', '1217', 'SALCHI. HOT DOG POPUL. ( 22 UNDS)  (0,409 GR.)', '409', '24', '21.621145374449', '2018-06-30', '2018-07-18 00:00:00', '');
INSERT INTO `devoluciones` VALUES ('1173', '1218', 'SALCHI. HOT DOG  POPUL. (12 UND)   (260 GR.)', '260', '215', '123.12775330396', '2018-06-30', '2018-07-18 00:00:00', '');
INSERT INTO `devoluciones` VALUES ('1177', '1811', 'SALCH-  FRANKFURT  (170 GR.)', '170', '30', '11.233480176211', '2018-06-30', '2018-07-18 00:00:00', '');
INSERT INTO `devoluciones` VALUES ('1181', '1813', 'SALCH JUMBO FRANKFURT GRAN/36 UND.(F.ARTIFICIAL)', '454', '84', '84', '2018-06-30', '2018-07-18 00:00:00', '');
INSERT INTO `devoluciones` VALUES ('1184', '1970', 'SALCHICHON RES            (200  GR)', '200', '112', '49.339207048458', '2018-06-30', '2018-07-18 00:00:00', '');
INSERT INTO `devoluciones` VALUES ('1185', '1975', 'SALCHICHON PICANTE    (200  GR)', '200', '96', '42.290748898678', '2018-06-30', '2018-07-18 00:00:00', '');
INSERT INTO `devoluciones` VALUES ('1198', '1255', 'SALCH- PARRILLERA (360GR)', '360', '25', '19.823788546256', '2018-06-30', '2018-07-18 00:00:00', '');
INSERT INTO `devoluciones` VALUES ('1210', '1334', 'JAMON POPULAR  (LIBRA.)', '454', '49', '49', '2018-06-30', '2018-07-18 00:00:00', '');
INSERT INTO `devoluciones` VALUES ('1211', '1335', 'JAMON PIC NIC (125 GR)', '125', '15', '4.1299559471366', '2018-06-30', '2018-07-18 00:00:00', '');
INSERT INTO `devoluciones` VALUES ('1212', '1336', 'JAMON POPULAR (227 GR)', '227', '109', '54.5', '2018-06-30', '2018-07-18 00:00:00', '');
INSERT INTO `devoluciones` VALUES ('1213', '1345', 'JAMON PRENSADO (125 GR)', '125', '43', '11.839207048458', '2018-06-30', '2018-07-18 00:00:00', '');
INSERT INTO `devoluciones` VALUES ('1215', '1620', 'JAMON POLLO    (150 GR.)', '150', '10', '3.3039647577093', '2018-06-30', '2018-07-18 00:00:00', '');
INSERT INTO `devoluciones` VALUES ('1216', '1373', 'JAMON PRENSADO (LIBRA)', '454', '2', '2', '2018-06-30', '2018-07-18 00:00:00', '');
INSERT INTO `devoluciones` VALUES ('1217', '1630', 'JAMON PAVO', '454', '9', '9', '2018-06-30', '2018-07-18 00:00:00', '');
INSERT INTO `devoluciones` VALUES ('1225', '1401', 'CHORIZO CRIOLLO (227 GR)', '227', '222', '111', '2018-06-30', '2018-07-18 00:00:00', '');
INSERT INTO `devoluciones` VALUES ('1227', '1403', 'CHORIZO CRIOLLO (454 GR)', '454', '1', '1', '2018-06-30', '2018-07-18 00:00:00', '');
INSERT INTO `devoluciones` VALUES ('1231', '1502', 'CARNE MOLIDA POLLO    (LIBRA)', '454', '195', '195', '2018-06-30', '2018-07-18 00:00:00', '');
INSERT INTO `devoluciones` VALUES ('1232', '1503', 'CARNE MOLIDA RES         (LIBRA)', '454', '147', '147', '2018-06-30', '2018-07-18 00:00:00', '');
INSERT INTO `devoluciones` VALUES ('1237', '1622', 'JAMON POLLO  ECONOMAX (150 G)', '150', '20', '6.6079295154185', '2018-06-30', '2018-07-18 00:00:00', '');
INSERT INTO `devoluciones` VALUES ('1239', '1342', 'JAMON PRENSADO  ECONOMAX  (150 G)', '150', '30', '9.9118942731278', '2018-06-30', '2018-07-18 00:00:00', '');
INSERT INTO `devoluciones` VALUES ('1243', '1703', 'BACON AHUMADO (200 GR)', '200', '21', '9.2511013215859', '2018-06-30', '2018-07-18 00:00:00', '');
INSERT INTO `devoluciones` VALUES ('1260', '3430', '***** REC.MORTADELA   ******', '454', '3', '3', '2018-06-30', '2018-07-18 00:00:00', '');
INSERT INTO `devoluciones` VALUES ('1282', '1795', 'ROAST BEEF LIBRA', '454', '1', '1', '2018-06-30', '2018-07-18 00:00:00', '');

-- ----------------------------
-- Table structure for logs
-- ----------------------------
DROP TABLE IF EXISTS `logs`;
CREATE TABLE `logs` (
  `IdUsuario` int(11) DEFAULT NULL,
  `Usuario` varchar(255) DEFAULT NULL,
  `Mensaje` varchar(255) DEFAULT NULL,
  `Fecha` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of logs
-- ----------------------------
INSERT INTO `logs` VALUES ('15', 'Sugey Mazzocchi', 'El usuario Sugey Mazzocchi cerro sesion', '2018-07-09 10:44:57');
INSERT INTO `logs` VALUES ('15', 'Sugey Mazzocchi', 'El usuario Sugey Mazzocchi inicio sesion', '2018-07-09 10:52:01');
INSERT INTO `logs` VALUES ('15', 'Sugey Mazzocchi', 'El usuario Sugey Mazzocchi cerro sesion', '2018-07-09 10:54:09');
INSERT INTO `logs` VALUES (null, null, 'El usuario  cerro sesion', '2018-07-09 11:00:01');
INSERT INTO `logs` VALUES ('15', 'Sugey Mazzocchi', 'El usuario Sugey Mazzocchi inicio sesion', '2018-07-09 11:17:59');
INSERT INTO `logs` VALUES ('15', 'Sugey Mazzocchi', 'El usuario Sugey Mazzocchi cerro sesion', '2018-07-09 11:25:07');
INSERT INTO `logs` VALUES ('14', 'Teresa Miranda', 'El usuario Teresa Miranda inicio sesion', '2018-07-09 11:25:11');
INSERT INTO `logs` VALUES ('14', 'Teresa Miranda', 'El usuario Teresa Miranda cerro sesion', '2018-07-09 11:25:29');
INSERT INTO `logs` VALUES ('15', 'Sugey Mazzocchi', 'El usuario Sugey Mazzocchi inicio sesion', '2018-07-09 11:25:33');
INSERT INTO `logs` VALUES ('15', 'Sugey Mazzocchi', 'Generó una nueva remision de orden con ruta 9 y fecha 2018-07-05', '2018-07-09 12:36:39');
INSERT INTO `logs` VALUES ('15', 'Sugey Mazzocchi', 'Generó una nueva remision de orden con ruta 11 y fecha 2018-07-04 para el cliente 58 ', '2018-07-09 13:35:15');
INSERT INTO `logs` VALUES ('15', 'Sugey Mazzocchi', 'Generó una nueva remision de orden con ruta 9 y fecha 2018-07-05 para el cliente 7 ', '2018-07-09 13:59:52');
INSERT INTO `logs` VALUES ('15', 'Sugey Mazzocchi', 'El usuario Sugey Mazzocchi cerro sesion', '2018-07-09 14:55:40');
INSERT INTO `logs` VALUES ('14', 'Teresa Miranda', 'El usuario Teresa Miranda inicio sesion', '2018-07-09 14:55:44');
INSERT INTO `logs` VALUES ('14', 'Teresa Miranda', 'El usuario Teresa Miranda cerro sesion', '2018-07-09 14:56:11');
INSERT INTO `logs` VALUES ('15', 'Sugey Mazzocchi', 'El usuario Sugey Mazzocchi inicio sesion', '2018-07-09 14:56:14');
INSERT INTO `logs` VALUES ('15', 'Sugey Mazzocchi', 'Generó una nueva remision de orden con ruta 9 y fecha 2018-07-05 para el cliente 7 ', '2018-07-09 15:29:35');
INSERT INTO `logs` VALUES ('15', 'Sugey Mazzocchi', 'Generó una nueva remision de orden con ruta 9 y fecha 2018-07-10 para el cliente 1 ', '2018-07-09 15:29:52');
INSERT INTO `logs` VALUES ('15', 'Sugey Mazzocchi', 'Generó una nueva remision de orden con ruta 9 y fecha 2018-07-05 para el cliente 7 ', '2018-07-09 15:32:35');
INSERT INTO `logs` VALUES ('15', 'Sugey Mazzocchi', 'Generó una nueva remision de orden con ruta 9 y fecha 2018-07-05', '2018-07-09 15:32:40');
INSERT INTO `logs` VALUES ('15', 'Sugey Mazzocchi', 'Generó una nueva remision de orden con ruta 9 y fecha 2018-07-04', '2018-07-09 15:35:24');
INSERT INTO `logs` VALUES ('15', 'Sugey Mazzocchi', 'Generó una nueva remision de orden con ruta 9 y fecha 2018-07-04', '2018-07-09 15:36:18');
INSERT INTO `logs` VALUES ('15', 'Sugey Mazzocchi', 'Generó una nueva remision de orden con ruta 9 y fecha 2018-07-04 para el cliente 1 ', '2018-07-09 15:36:25');
INSERT INTO `logs` VALUES ('15', 'Sugey Mazzocchi', 'Generó una nueva remision de orden con ruta 9 y fecha 2018-07-05 para el cliente 7 ', '2018-07-09 15:37:07');
INSERT INTO `logs` VALUES ('15', 'Sugey Mazzocchi', 'Generó una nueva remision de orden con ruta 9 y fecha 2018-07-05', '2018-07-09 15:40:28');
INSERT INTO `logs` VALUES ('15', 'Sugey Mazzocchi', 'Generó una nueva remision de orden con ruta 9 y fecha 2018-07-10 para el cliente 1 ', '2018-07-09 15:41:42');
INSERT INTO `logs` VALUES ('15', 'Sugey Mazzocchi', 'Generó una nueva remision de orden con ruta 9 y fecha 2018-07-10', '2018-07-09 15:41:57');
INSERT INTO `logs` VALUES ('15', 'Sugey Mazzocchi', 'El usuario Sugey Mazzocchi cerro sesion', '2018-07-09 15:44:24');
INSERT INTO `logs` VALUES ('14', 'Teresa Miranda', 'El usuario Teresa Miranda inicio sesion', '2018-07-09 15:44:30');
INSERT INTO `logs` VALUES ('14', 'Teresa Miranda', 'Generó una nueva remision de orden con ruta 15 y fecha 2018-07-09', '2018-07-09 15:44:37');
INSERT INTO `logs` VALUES ('14', 'Teresa Miranda', 'El usuario Teresa Miranda cerro sesion', '2018-07-09 15:46:27');
INSERT INTO `logs` VALUES ('15', 'Sugey Mazzocchi', 'El usuario Sugey Mazzocchi inicio sesion', '2018-07-09 15:46:32');
INSERT INTO `logs` VALUES ('15', 'Sugey Mazzocchi', 'El usuario Sugey Mazzocchi cerro sesion', '2018-07-09 15:46:39');
INSERT INTO `logs` VALUES ('14', 'Teresa Miranda', 'El usuario Teresa Miranda inicio sesion', '2018-07-09 15:46:44');
INSERT INTO `logs` VALUES ('14', 'Teresa Miranda', 'El usuario Teresa Miranda cerro sesion', '2018-07-09 16:12:05');
INSERT INTO `logs` VALUES ('15', 'Sugey Mazzocchi', 'El usuario Sugey Mazzocchi inicio sesion', '2018-07-10 07:55:59');
INSERT INTO `logs` VALUES ('15', 'Sugey Mazzocchi', 'El usuario Sugey Mazzocchi cerro sesion', '2018-07-10 09:18:31');
INSERT INTO `logs` VALUES ('10', 'Administrador', 'El usuario Administrador inicio sesion', '2018-07-10 09:18:42');
INSERT INTO `logs` VALUES ('10', 'Administrador', 'El usuario Administrador cerro sesion', '2018-07-10 09:20:06');
INSERT INTO `logs` VALUES ('15', 'Sugey Mazzocchi', 'El usuario Sugey Mazzocchi inicio sesion', '2018-07-10 09:20:09');
INSERT INTO `logs` VALUES ('15', 'Sugey Mazzocchi', 'El usuario Sugey Mazzocchi cerro sesion', '2018-07-10 13:39:36');
INSERT INTO `logs` VALUES ('14', 'Teresa Miranda', 'El usuario Teresa Miranda inicio sesion', '2018-07-10 13:39:40');
INSERT INTO `logs` VALUES ('14', 'Teresa Miranda', 'El usuario Teresa Miranda cerro sesion', '2018-07-10 13:40:10');
INSERT INTO `logs` VALUES ('15', 'Sugey Mazzocchi', 'El usuario Sugey Mazzocchi inicio sesion', '2018-07-10 13:40:15');
INSERT INTO `logs` VALUES ('15', 'Sugey Mazzocchi', 'Generó una nueva remision de orden con ruta 9 y fecha 2018-07-04', '2018-07-10 14:26:06');
INSERT INTO `logs` VALUES ('15', 'Sugey Mazzocchi', 'El usuario Sugey Mazzocchi cerro sesion', '2018-07-10 15:32:25');
INSERT INTO `logs` VALUES ('14', 'Teresa Miranda', 'El usuario Teresa Miranda inicio sesion', '2018-07-10 15:32:30');
INSERT INTO `logs` VALUES ('14', 'Teresa Miranda', 'El usuario Teresa Miranda cerro sesion', '2018-07-10 15:45:16');
INSERT INTO `logs` VALUES ('15', 'Sugey Mazzocchi', 'El usuario Sugey Mazzocchi inicio sesion', '2018-07-10 15:45:20');
INSERT INTO `logs` VALUES ('15', 'Sugey Mazzocchi', 'El usuario Sugey Mazzocchi cerro sesion', '2018-07-10 15:58:30');
INSERT INTO `logs` VALUES ('14', 'Teresa Miranda', 'El usuario Teresa Miranda inicio sesion', '2018-07-10 15:58:35');
INSERT INTO `logs` VALUES ('14', 'Teresa Miranda', 'El usuario Teresa Miranda cerro sesion', '2018-07-10 16:00:02');
INSERT INTO `logs` VALUES ('15', 'Sugey Mazzocchi', 'El usuario Sugey Mazzocchi inicio sesion', '2018-07-10 16:00:11');
INSERT INTO `logs` VALUES ('15', 'Sugey Mazzocchi', 'El usuario Sugey Mazzocchi cerro sesion', '2018-07-10 16:01:03');
INSERT INTO `logs` VALUES ('15', 'Sugey Mazzocchi', 'El usuario Sugey Mazzocchi inicio sesion', '2018-07-11 08:05:38');
INSERT INTO `logs` VALUES ('15', 'Sugey Mazzocchi', 'Generó una nueva remision de orden con ruta 9 y fecha 2018-07-04', '2018-07-11 09:14:16');
INSERT INTO `logs` VALUES ('15', 'Sugey Mazzocchi', 'Generó una nueva remision de orden con ruta 9 y fecha 2018-07-04 para el cliente 1 ', '2018-07-11 09:14:26');
INSERT INTO `logs` VALUES ('15', 'Sugey Mazzocchi', 'Generó una nueva remision de orden con ruta 13 y fecha 2018-07-04 para el cliente 29 ', '2018-07-11 10:01:23');
INSERT INTO `logs` VALUES ('15', 'Sugey Mazzocchi', 'Generó una nueva remision de orden con ruta 9 y fecha 2018-07-12 para el cliente 79 ', '2018-07-11 10:04:35');
INSERT INTO `logs` VALUES ('15', 'Sugey Mazzocchi', 'Generó una nueva remision de orden con ruta 13 y fecha 2018-07-12 para el cliente 85 ', '2018-07-11 10:05:12');
INSERT INTO `logs` VALUES ('15', 'Sugey Mazzocchi', 'Generó una nueva remision de orden con ruta 13 y fecha 2018-07-12 para el cliente 85 ', '2018-07-11 10:05:41');
INSERT INTO `logs` VALUES ('15', 'Sugey Mazzocchi', 'Generó una nueva remision de orden con ruta 9 y fecha 2018-07-12', '2018-07-11 10:06:23');
INSERT INTO `logs` VALUES ('15', 'Sugey Mazzocchi', 'El usuario Sugey Mazzocchi cerro sesion', '2018-07-11 11:05:16');
INSERT INTO `logs` VALUES ('14', 'Teresa Miranda', 'El usuario Teresa Miranda inicio sesion', '2018-07-11 11:05:21');
INSERT INTO `logs` VALUES ('14', 'Teresa Miranda', 'El usuario Teresa Miranda cerro sesion', '2018-07-11 11:42:21');
INSERT INTO `logs` VALUES ('15', 'Sugey Mazzocchi', 'El usuario Sugey Mazzocchi inicio sesion', '2018-07-11 11:42:25');
INSERT INTO `logs` VALUES ('15', 'Sugey Mazzocchi', 'El usuario Sugey Mazzocchi cerro sesion', '2018-07-11 11:42:44');
INSERT INTO `logs` VALUES ('14', 'Teresa Miranda', 'El usuario Teresa Miranda inicio sesion', '2018-07-11 11:42:53');
INSERT INTO `logs` VALUES ('14', 'Teresa Miranda', 'El usuario Teresa Miranda cerro sesion', '2018-07-11 12:06:33');
INSERT INTO `logs` VALUES ('15', 'Sugey Mazzocchi', 'El usuario Sugey Mazzocchi inicio sesion', '2018-07-11 12:06:36');
INSERT INTO `logs` VALUES ('15', 'Sugey Mazzocchi', 'El usuario Sugey Mazzocchi cerro sesion', '2018-07-11 12:08:56');
INSERT INTO `logs` VALUES ('14', 'Teresa Miranda', 'El usuario Teresa Miranda inicio sesion', '2018-07-11 12:09:01');
INSERT INTO `logs` VALUES ('14', 'Teresa Miranda', 'El usuario Teresa Miranda cerro sesion', '2018-07-11 12:26:30');
INSERT INTO `logs` VALUES ('15', 'Sugey Mazzocchi', 'El usuario Sugey Mazzocchi inicio sesion', '2018-07-11 12:26:33');
INSERT INTO `logs` VALUES ('15', 'Sugey Mazzocchi', 'El usuario Sugey Mazzocchi cerro sesion', '2018-07-11 12:33:55');
INSERT INTO `logs` VALUES ('14', 'Teresa Miranda', 'El usuario Teresa Miranda inicio sesion', '2018-07-11 12:33:59');
INSERT INTO `logs` VALUES ('14', 'Teresa Miranda', 'El usuario Teresa Miranda cerro sesion', '2018-07-11 12:38:05');
INSERT INTO `logs` VALUES ('15', 'Sugey Mazzocchi', 'El usuario Sugey Mazzocchi inicio sesion', '2018-07-11 12:38:09');
INSERT INTO `logs` VALUES ('15', 'Sugey Mazzocchi', 'El usuario Sugey Mazzocchi cerro sesion', '2018-07-11 12:42:19');
INSERT INTO `logs` VALUES ('14', 'Teresa Miranda', 'El usuario Teresa Miranda inicio sesion', '2018-07-11 12:42:23');
INSERT INTO `logs` VALUES ('14', 'Teresa Miranda', 'Generó una nueva remision de orden con ruta 15 y fecha 2018-07-09', '2018-07-11 12:43:39');
INSERT INTO `logs` VALUES ('14', 'Teresa Miranda', 'El usuario Teresa Miranda cerro sesion', '2018-07-11 12:49:48');
INSERT INTO `logs` VALUES ('15', 'Sugey Mazzocchi', 'El usuario Sugey Mazzocchi inicio sesion', '2018-07-11 12:49:52');
INSERT INTO `logs` VALUES ('15', 'Sugey Mazzocchi', 'Generó una nueva remision de orden con ruta 24 y fecha 2018-07-05 para el cliente 100 ', '2018-07-11 12:53:50');
INSERT INTO `logs` VALUES ('15', 'Sugey Mazzocchi', 'El usuario Sugey Mazzocchi cerro sesion', '2018-07-11 12:55:50');
INSERT INTO `logs` VALUES ('12', 'Jean Cardenas', 'El usuario Jean Cardenas inicio sesion', '2018-07-11 12:55:56');
INSERT INTO `logs` VALUES ('12', 'Jean Cardenas', 'El usuario Jean Cardenas cerro sesion', '2018-07-11 12:56:34');
INSERT INTO `logs` VALUES ('15', 'Sugey Mazzocchi', 'El usuario Sugey Mazzocchi inicio sesion', '2018-07-11 12:56:38');
INSERT INTO `logs` VALUES ('15', 'Sugey Mazzocchi', 'El usuario Sugey Mazzocchi cerro sesion', '2018-07-11 13:27:33');
INSERT INTO `logs` VALUES ('15', 'Sugey Mazzocchi', 'El usuario Sugey Mazzocchi inicio sesion', '2018-07-11 14:47:17');
INSERT INTO `logs` VALUES ('15', 'Sugey Mazzocchi', 'El usuario Sugey Mazzocchi cerro sesion', '2018-07-11 14:55:21');
INSERT INTO `logs` VALUES ('13', 'Monica', 'El usuario Monica inicio sesion', '2018-07-11 14:55:27');
INSERT INTO `logs` VALUES ('13', 'Monica', 'El usuario Monica cerro sesion', '2018-07-11 15:41:54');
INSERT INTO `logs` VALUES ('12', 'Jean Cardenas', 'El usuario Jean Cardenas inicio sesion', '2018-07-11 15:42:44');
INSERT INTO `logs` VALUES ('12', 'Jean Cardenas', 'El usuario Jean Cardenas cerro sesion', '2018-07-11 15:44:20');
INSERT INTO `logs` VALUES ('13', 'Monica', 'El usuario Monica inicio sesion', '2018-07-11 15:44:24');
INSERT INTO `logs` VALUES ('13', 'Monica', 'El usuario Monica cerro sesion', '2018-07-11 15:53:53');
INSERT INTO `logs` VALUES ('12', 'Jean Cardenas', 'El usuario Jean Cardenas inicio sesion', '2018-07-11 15:53:59');
INSERT INTO `logs` VALUES ('12', 'Jean Cardenas', 'El usuario Jean Cardenas cerro sesion', '2018-07-11 16:06:00');
INSERT INTO `logs` VALUES ('15', 'Sugey Mazzocchi', 'El usuario Sugey Mazzocchi inicio sesion', '2018-07-12 08:22:59');
INSERT INTO `logs` VALUES ('15', 'Sugey Mazzocchi', 'El usuario Sugey Mazzocchi cerro sesion', '2018-07-12 09:20:46');
INSERT INTO `logs` VALUES ('13', 'Monica', 'El usuario Monica inicio sesion', '2018-07-12 09:20:51');
INSERT INTO `logs` VALUES ('13', 'Monica', 'El usuario Monica cerro sesion', '2018-07-12 09:56:44');
INSERT INTO `logs` VALUES (null, null, 'El usuario  cerro sesion', '2018-07-12 14:10:04');
INSERT INTO `logs` VALUES ('10', 'Administrador', 'El usuario Administrador inicio sesion', '2018-07-12 14:19:45');
INSERT INTO `logs` VALUES ('10', 'Administrador', 'El usuario Administrador cerro sesion', '2018-07-12 14:20:42');
INSERT INTO `logs` VALUES ('14', 'Teresa Miranda', 'El usuario Teresa Miranda inicio sesion', '2018-07-12 15:46:24');
INSERT INTO `logs` VALUES ('14', 'Teresa Miranda', 'El usuario Teresa Miranda cerro sesion', '2018-07-12 15:49:46');
INSERT INTO `logs` VALUES ('13', 'Monica', 'El usuario Monica inicio sesion', '2018-07-14 09:28:48');
INSERT INTO `logs` VALUES ('13', 'Monica', 'El usuario Monica cerro sesion', '2018-07-14 10:06:57');
INSERT INTO `logs` VALUES ('13', 'Monica', 'El usuario Monica inicio sesion', '2018-07-14 10:29:57');
INSERT INTO `logs` VALUES ('13', 'Monica', 'El usuario Monica cerro sesion', '2018-07-14 11:59:33');
INSERT INTO `logs` VALUES ('13', 'Monica', 'El usuario Monica inicio sesion', '2018-07-14 12:53:44');
INSERT INTO `logs` VALUES ('13', 'Monica', 'El usuario Monica cerro sesion', '2018-07-14 13:25:10');
INSERT INTO `logs` VALUES (null, null, 'El usuario  cerro sesion', '2018-07-16 08:21:03');
INSERT INTO `logs` VALUES ('13', 'Monica', 'El usuario Monica inicio sesion', '2018-07-16 08:21:09');
INSERT INTO `logs` VALUES ('13', 'Monica', 'El usuario Monica cerro sesion', '2018-07-16 11:33:39');
INSERT INTO `logs` VALUES ('10', 'Administrador', 'El usuario Administrador inicio sesion', '2018-07-16 11:33:43');
INSERT INTO `logs` VALUES ('10', 'Administrador', 'El usuario Administrador cerro sesion', '2018-07-16 11:42:24');
INSERT INTO `logs` VALUES ('15', 'Sugey Mazzocchi', 'El usuario Sugey Mazzocchi inicio sesion', '2018-07-16 11:42:28');
INSERT INTO `logs` VALUES ('15', 'Sugey Mazzocchi', 'El usuario Sugey Mazzocchi cerro sesion', '2018-07-16 11:42:44');
INSERT INTO `logs` VALUES ('10', 'Administrador', 'El usuario Administrador inicio sesion', '2018-07-16 11:42:49');
INSERT INTO `logs` VALUES ('10', 'Administrador', 'El usuario Administrador cerro sesion', '2018-07-16 11:56:19');
INSERT INTO `logs` VALUES ('13', 'Monica', 'El usuario Monica inicio sesion', '2018-07-16 11:56:24');
INSERT INTO `logs` VALUES (null, null, 'El usuario  cerro sesion', '2018-07-16 15:50:15');
INSERT INTO `logs` VALUES ('13', 'Monica', 'El usuario Monica inicio sesion', '2018-07-17 09:14:48');
INSERT INTO `logs` VALUES ('13', 'Monica', 'El usuario Monica cerro sesion', '2018-07-17 13:03:50');
INSERT INTO `logs` VALUES ('13', 'Monica', 'El usuario Monica inicio sesion', '2018-07-17 13:56:35');
INSERT INTO `logs` VALUES ('13', 'Monica', 'El usuario Monica cerro sesion', '2018-07-17 16:17:03');
INSERT INTO `logs` VALUES ('13', 'Monica', 'El usuario Monica inicio sesion', '2018-07-18 08:00:59');
INSERT INTO `logs` VALUES ('13', 'Monica', 'El usuario Monica cerro sesion', '2018-07-18 11:28:52');
INSERT INTO `logs` VALUES ('14', 'Teresa Miranda', 'El usuario Teresa Miranda inicio sesion', '2018-07-18 11:28:57');
INSERT INTO `logs` VALUES ('14', 'Teresa Miranda', 'Generó una nueva remision de orden con ruta 15 y fecha 2018-07-09', '2018-07-18 11:29:03');
INSERT INTO `logs` VALUES ('14', 'Teresa Miranda', 'El usuario Teresa Miranda cerro sesion', '2018-07-18 11:34:09');
INSERT INTO `logs` VALUES ('13', 'Monica', 'El usuario Monica inicio sesion', '2018-07-18 11:34:14');
INSERT INTO `logs` VALUES ('13', 'Monica', 'El usuario Monica cerro sesion', '2018-07-18 14:12:10');
INSERT INTO `logs` VALUES (null, null, 'El usuario  cerro sesion', '2018-07-18 14:12:43');
INSERT INTO `logs` VALUES (null, null, 'El usuario  cerro sesion', '2018-07-18 14:12:45');
INSERT INTO `logs` VALUES (null, null, 'El usuario  cerro sesion', '2018-07-18 14:14:53');
INSERT INTO `logs` VALUES ('13', 'Monica', 'El usuario Monica inicio sesion', '2018-07-18 15:40:00');
INSERT INTO `logs` VALUES ('13', 'Monica', 'El usuario Monica cerro sesion', '2018-07-18 15:50:09');
INSERT INTO `logs` VALUES ('15', 'Sugey Mazzocchi', 'El usuario Sugey Mazzocchi inicio sesion', '2018-07-18 15:50:14');
INSERT INTO `logs` VALUES ('15', 'Sugey Mazzocchi', 'El usuario Sugey Mazzocchi cerro sesion', '2018-07-18 15:51:12');
INSERT INTO `logs` VALUES ('12', 'Jean Cardenas', 'El usuario Jean Cardenas inicio sesion', '2018-07-18 15:51:17');
INSERT INTO `logs` VALUES ('12', 'Jean Cardenas', 'El usuario Jean Cardenas cerro sesion', '2018-07-18 15:52:09');
INSERT INTO `logs` VALUES ('4', 'Joel Jiron', 'El usuario Joel Jiron inicio sesion', '2018-07-18 15:52:14');
INSERT INTO `logs` VALUES ('4', 'Joel Jiron', 'El usuario Joel Jiron cerro sesion', '2018-07-18 15:52:56');

-- ----------------------------
-- Table structure for ordenes
-- ----------------------------
DROP TABLE IF EXISTS `ordenes`;
CREATE TABLE `ordenes` (
  `IdOrden` int(11) NOT NULL AUTO_INCREMENT,
  `Codigo` int(11) DEFAULT NULL,
  `Descripcion` varchar(255) DEFAULT NULL,
  `GR/lb` decimal(10,3) DEFAULT NULL,
  `Unidades` decimal(10,3) DEFAULT NULL,
  `LBS` varchar(10) DEFAULT NULL,
  `Vendedor` varchar(255) DEFAULT NULL,
  `FechaEntrega` date DEFAULT NULL,
  `Ruta` int(11) DEFAULT NULL,
  `Usuario` varchar(255) DEFAULT NULL,
  `Estado` bit(1) DEFAULT NULL,
  `FechaCreacion` datetime DEFAULT NULL,
  `Preventa` bit(1) DEFAULT NULL,
  PRIMARY KEY (`IdOrden`)
) ENGINE=InnoDB AUTO_INCREMENT=533 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ordenes
-- ----------------------------
INSERT INTO `ordenes` VALUES ('3', '1113', 'MORT-CHILTOMA  (225 GR)', '225.000', '72.000', '35.68', 'Enrique Cerda', '2018-05-21', '15', '4', '\0', '2018-06-01 01:44:25', '\0');
INSERT INTO `ordenes` VALUES ('4', '1117', 'MORT-POPULAR A GRANEL (PIEZA)', '454.000', '12.000', '12.00', 'Enrique Cerda', '2018-05-21', '15', '4', '\0', '2018-06-01 01:44:25', '\0');
INSERT INTO `ordenes` VALUES ('5', '1119', 'MORT-POPULAR (PAQUETE)', '454.000', '275.000', '275.00', 'Enrique Cerda', '2018-05-21', '15', '4', '\0', '2018-06-01 01:44:25', '\0');
INSERT INTO `ordenes` VALUES ('6', '1123', 'MORT-ECONOMICA (125 GR)', '125.000', '240.000', '66.08', 'Enrique Cerda', '2018-05-21', '15', '4', '\0', '2018-06-01 01:44:25', '\0');
INSERT INTO `ordenes` VALUES ('7', '1127', 'MORT-POPULAR (½) 227 GRAMOS', '227.000', '288.000', '144.00', 'Enrique Cerda', '2018-05-21', '15', '4', '\0', '2018-06-01 01:44:25', '\0');
INSERT INTO `ordenes` VALUES ('8', '1131', 'MORT. JAMONADA (150 GR.)', '150.000', '0.000', '0.00', 'Enrique Cerda', '2018-05-21', '15', '4', '\0', '2018-06-01 01:44:25', '\0');
INSERT INTO `ordenes` VALUES ('9', '1217', 'SALCHI. HOT DOG POPUL. ( 22 UNDS)  (0409 GR.)', '409.000', '144.000', '129.73', 'Enrique Cerda', '2018-05-21', '15', '4', '\0', '2018-06-01 01:44:25', '\0');
INSERT INTO `ordenes` VALUES ('10', '1650', 'SALCH-  POLLO             (170 GR.)', '170.000', '54.000', '20.22', 'Enrique Cerda', '2018-05-21', '15', '4', '\0', '2018-06-01 01:44:25', '\0');
INSERT INTO `ordenes` VALUES ('11', '1803', 'MORT. FRANKFURT (125 GR.)', '125.000', '36.000', '9.91', 'Enrique Cerda', '2018-05-21', '15', '4', '\0', '2018-06-01 01:44:25', '\0');
INSERT INTO `ordenes` VALUES ('12', '1811', 'SALCH-  FRANKFURT  (170 GR.)', '170.000', '270.000', '101.10', 'Enrique Cerda', '2018-05-21', '15', '4', '\0', '2018-06-01 01:44:25', '\0');
INSERT INTO `ordenes` VALUES ('13', '1117', 'MORT-POPULAR A GRANEL (PIEZA)', '454.000', '18.000', '18.00', 'Jairo Silva', '2018-05-21', '25', '8', '\0', '2018-06-01 01:55:13', '\0');
INSERT INTO `ordenes` VALUES ('14', '1119', 'MORT-POPULAR (PAQUETE)', '454.000', '45.000', '45.00', 'Jairo Silva', '2018-05-21', '25', '8', '\0', '2018-06-01 01:55:13', '\0');
INSERT INTO `ordenes` VALUES ('15', '1121', 'MORT-ECONOMICA  (GRANEL/PIEZA)', '454.000', '0.000', '0.00', 'Jairo Silva', '2018-05-21', '25', '8', '\0', '2018-06-01 01:55:13', '\0');
INSERT INTO `ordenes` VALUES ('16', '1123', 'MORT-ECONOMICA (125 GR)', '125.000', '144.000', '39.65', 'Jairo Silva', '2018-05-21', '25', '8', '\0', '2018-06-01 01:55:13', '\0');
INSERT INTO `ordenes` VALUES ('17', '1131', 'MORT. JAMONADA (150 GR.)', '150.000', '15.000', '4.96', 'Jairo Silva', '2018-05-21', '25', '8', '\0', '2018-06-01 01:55:13', '\0');
INSERT INTO `ordenes` VALUES ('18', '1210', 'HOT DOG (170 GR.)', '170.000', '216.000', '80.88', 'Jairo Silva', '2018-05-21', '25', '8', '\0', '2018-06-01 01:55:13', '\0');
INSERT INTO `ordenes` VALUES ('19', '1227', 'SALAMI  CORTADO PREMIUN PIZZA(1224)/ PARA SUPER', '454.000', '360.000', '360.00', 'Jairo Silva', '2018-05-21', '25', '8', '\0', '2018-06-01 01:55:14', '\0');
INSERT INTO `ordenes` VALUES ('20', '1640', 'MORT-    POLLO  (150 GR.)', '150.000', '24.000', '7.93', 'Jairo Silva', '2018-05-21', '25', '8', '\0', '2018-06-01 01:55:14', '\0');
INSERT INTO `ordenes` VALUES ('21', '1645', 'MORT. DE PAVO', '454.000', '0.000', '0.00', 'Jairo Silva', '2018-05-21', '25', '8', '\0', '2018-06-01 01:55:14', '\0');
INSERT INTO `ordenes` VALUES ('22', '1101', 'MORT-BOLOGNA     (GRANEL)', '454.000', '3.000', '3.00', 'Pali Zumen', '2018-05-21', '3', '8', '\0', '2018-06-02 09:36:53', '');
INSERT INTO `ordenes` VALUES ('23', '1107', 'MORT-BOLOGNA DELMOR (454 GR)', '454.000', '4.000', '4.00', 'Pali Zumen', '2018-05-21', '3', '8', '\0', '2018-06-02 09:36:53', '');
INSERT INTO `ordenes` VALUES ('24', '1109', 'MORT-BOLOGNA (225 GR) (1102)', '225.000', '3.000', '1.49', 'Pali Zumen', '2018-05-21', '3', '8', '\0', '2018-06-02 09:36:53', '');
INSERT INTO `ordenes` VALUES ('25', '1111', 'MORT-CHILTOMA  (GRANEL / PIEZA)', '454.000', '4.000', '4.00', 'Pali Zumen', '2018-05-21', '3', '8', '\0', '2018-06-02 09:36:53', '');
INSERT INTO `ordenes` VALUES ('26', '1112', 'MORT-CHILTOMA  (150 GR)', '150.000', '3.000', '0.99', 'Pali Zumen', '2018-05-21', '3', '8', '\0', '2018-06-02 09:36:53', '');
INSERT INTO `ordenes` VALUES ('27', '1113', 'MORT-CHILTOMA  (225 GR)', '225.000', '4.000', '1.98', 'Pali Zumen', '2018-05-21', '3', '8', '\0', '2018-06-02 09:36:54', '');
INSERT INTO `ordenes` VALUES ('28', '1117', 'MORT-POPULAR A GRANEL (PIEZA)', '454.000', '3.000', '3.00', 'Pali Zumen', '2018-05-21', '3', '8', '\0', '2018-06-02 09:36:54', '');
INSERT INTO `ordenes` VALUES ('29', '1119', 'MORT-POPULAR (PAQUETE)', '454.000', '4.000', '4.00', 'Pali Zumen', '2018-05-21', '3', '8', '\0', '2018-06-02 09:36:54', '');
INSERT INTO `ordenes` VALUES ('30', '1121', 'MORT-ECONOMICA  (GRANEL/PIEZA)', '454.000', '34.000', '34.00', 'Pali Zumen', '2018-05-21', '3', '8', '\0', '2018-06-02 09:36:54', '');
INSERT INTO `ordenes` VALUES ('31', '1123', 'MORT-ECONOMICA (125 GR)', '125.000', '34.000', '9.36', 'Pali Zumen', '2018-05-21', '3', '8', '\0', '2018-06-02 09:36:54', '');
INSERT INTO `ordenes` VALUES ('32', '1126', 'MORT-ECONOMICA (454 GR)', '454.000', '43.000', '43.00', 'Pali Zumen', '2018-05-21', '3', '8', '\0', '2018-06-02 09:36:54', '');
INSERT INTO `ordenes` VALUES ('33', '1127', 'MORT-POPULAR (½) 227 GRAMOS', '227.000', '34.000', '17.00', 'Pali Zumen', '2018-05-21', '3', '8', '\0', '2018-06-02 09:36:54', '');
INSERT INTO `ordenes` VALUES ('34', '1130', 'MORT-JAMONADA  (GRANEL/PIEZA)', '454.000', '43.000', '43.00', 'Pali Zumen', '2018-05-21', '3', '8', '\0', '2018-06-02 09:36:54', '');
INSERT INTO `ordenes` VALUES ('35', '1131', 'MORT. JAMONADA (150 GR.)', '150.000', '43.000', '14.21', 'Pali Zumen', '2018-05-21', '3', '8', '\0', '2018-06-02 09:36:54', '');
INSERT INTO `ordenes` VALUES ('36', '1132', 'MORT-JAMONADA (225 GR)', '225.000', '343.000', '169.99', 'Pali Zumen', '2018-05-21', '3', '8', '\0', '2018-06-02 09:36:54', '');
INSERT INTO `ordenes` VALUES ('37', '1134', 'MORT-ECONOMICA (225 GR)', '225.000', '43.000', '21.31', 'Pali Zumen', '2018-05-21', '3', '8', '\0', '2018-06-02 09:36:54', '');
INSERT INTO `ordenes` VALUES ('38', '1101', 'MORT-BOLOGNA     (GRANEL)', '454.000', '324.000', '324.00', 'Pali 27 de Mayo', '2018-05-21', '7', '4', '\0', '2018-06-02 09:36:57', '');
INSERT INTO `ordenes` VALUES ('39', '1107', 'MORT-BOLOGNA DELMOR (454 GR)', '454.000', '34.000', '34.00', 'Pali 27 de Mayo', '2018-05-21', '7', '4', '\0', '2018-06-02 09:36:57', '');
INSERT INTO `ordenes` VALUES ('40', '1109', 'MORT-BOLOGNA (225 GR) (1102)', '225.000', '43.000', '21.31', 'Pali 27 de Mayo', '2018-05-21', '7', '4', '\0', '2018-06-02 09:36:57', '');
INSERT INTO `ordenes` VALUES ('41', '1111', 'MORT-CHILTOMA  (GRANEL / PIEZA)', '454.000', '34.000', '34.00', 'Pali 27 de Mayo', '2018-05-21', '7', '4', '\0', '2018-06-02 09:36:57', '');
INSERT INTO `ordenes` VALUES ('42', '1112', 'MORT-CHILTOMA  (150 GR)', '150.000', '34.000', '11.23', 'Pali 27 de Mayo', '2018-05-21', '7', '4', '\0', '2018-06-02 09:36:57', '');
INSERT INTO `ordenes` VALUES ('43', '1113', 'MORT-CHILTOMA  (225 GR)', '225.000', '34.000', '16.85', 'Pali 27 de Mayo', '2018-05-21', '7', '4', '\0', '2018-06-02 09:36:57', '');
INSERT INTO `ordenes` VALUES ('44', '1117', 'MORT-POPULAR A GRANEL (PIEZA)', '454.000', '5.000', '5.00', 'Pali 27 de Mayo', '2018-05-21', '7', '4', '\0', '2018-06-02 09:36:57', '');
INSERT INTO `ordenes` VALUES ('45', '1119', 'MORT-POPULAR (PAQUETE)', '454.000', '2.000', '2.00', 'Pali 27 de Mayo', '2018-05-21', '7', '4', '\0', '2018-06-02 09:36:57', '');
INSERT INTO `ordenes` VALUES ('46', '1121', 'MORT-ECONOMICA  (GRANEL/PIEZA)', '454.000', '3.000', '3.00', 'Pali 27 de Mayo', '2018-05-21', '7', '4', '\0', '2018-06-02 09:36:57', '');
INSERT INTO `ordenes` VALUES ('47', '1123', 'MORT-ECONOMICA (125 GR)', '125.000', '56.000', '15.42', 'Pali 27 de Mayo', '2018-05-21', '7', '4', '\0', '2018-06-02 09:36:57', '');
INSERT INTO `ordenes` VALUES ('48', '1126', 'MORT-ECONOMICA (454 GR)', '454.000', '56.000', '56.00', 'Pali 27 de Mayo', '2018-05-21', '7', '4', '\0', '2018-06-02 09:36:57', '');
INSERT INTO `ordenes` VALUES ('49', '1127', 'MORT-POPULAR (½) 227 GRAMOS', '227.000', '343.000', '17.00', 'Pali 27 de Mayo', '2018-05-21', '7', '4', '\0', '2018-06-02 09:36:57', '');
INSERT INTO `ordenes` VALUES ('50', '1130', 'MORT-JAMONADA  (GRANEL/PIEZA)', '454.000', '4.000', '4.00', 'Pali 27 de Mayo', '2018-05-21', '7', '4', '\0', '2018-06-02 09:36:57', '');
INSERT INTO `ordenes` VALUES ('51', '1131', 'MORT. JAMONADA (150 GR.)', '150.000', '43.000', '14.21', 'Pali 27 de Mayo', '2018-05-21', '7', '4', '\0', '2018-06-02 09:36:57', '');
INSERT INTO `ordenes` VALUES ('52', '1132', 'MORT-JAMONADA (225 GR)', '225.000', '33.000', '16.35', 'Pali 27 de Mayo', '2018-05-21', '7', '4', '\0', '2018-06-02 09:36:57', '');
INSERT INTO `ordenes` VALUES ('53', '1135', 'MORT-CON TOCINO (225GR)', '225.000', '4.000', '1.98', 'Pali 27 de Mayo', '2018-05-21', '7', '12', '\0', '2018-06-02 12:30:32', '\0');
INSERT INTO `ordenes` VALUES ('56', '1107', 'MORT-BOLOGNA DELMOR (454 GR)', '454.000', '32.000', '32.00', 'Pali Ticuantepe', '2018-05-21', '3', '12', '\0', '2018-06-05 10:42:39', '');
INSERT INTO `ordenes` VALUES ('57', '1109', 'MORT-BOLOGNA (225 GR) (1102)', '225.000', '34.000', '16.85', 'Pali Ticuantepe', '2018-05-21', '3', '12', '\0', '2018-06-05 10:42:39', '');
INSERT INTO `ordenes` VALUES ('58', '1111', 'MORT-CHILTOMA  (GRANEL / PIEZA)', '454.000', '56.000', '56.00', 'Pali Ticuantepe', '2018-05-21', '3', '12', '\0', '2018-06-05 10:42:39', '');
INSERT INTO `ordenes` VALUES ('59', '1112', 'MORT-CHILTOMA  (150 GR)', '150.000', '34.000', '11.23', 'Pali Ticuantepe', '2018-05-21', '3', '12', '\0', '2018-06-05 10:42:39', '');
INSERT INTO `ordenes` VALUES ('60', '1119', 'MORT-POPULAR (PAQUETE)', '454.000', '34.000', '34.00', 'Pali Ticuantepe', '2018-05-21', '3', '12', '\0', '2018-06-05 10:42:39', '');
INSERT INTO `ordenes` VALUES ('61', '1121', 'MORT-ECONOMICA  (GRANEL/PIEZA)', '454.000', '12.000', '12.00', 'Pali Ticuantepe', '2018-05-21', '3', '12', '\0', '2018-06-05 10:42:39', '');
INSERT INTO `ordenes` VALUES ('62', '1109', 'MORT-BOLOGNA (225 GR) (1102)', '225.000', '23.000', '11.40', 'prueba', '2018-05-21', '9', '11', '\0', '2018-06-05 03:13:58', '\0');
INSERT INTO `ordenes` VALUES ('63', '1117', 'MORT-POPULAR A GRANEL (PIEZA)', '454.000', '34.000', '34.00', 'prueba', '2018-05-21', '9', '11', '\0', '2018-06-05 03:13:58', '\0');
INSERT INTO `ordenes` VALUES ('64', '1121', 'MORT-ECONOMICA  (GRANEL/PIEZA)', '454.000', '45.000', '45.00', 'prueba', '2018-05-21', '9', '11', '\0', '2018-06-05 03:13:58', '\0');
INSERT INTO `ordenes` VALUES ('65', '1123', 'MORT-ECONOMICA (125 GR)', '125.000', '3.000', '0.83', 'prueba', '2018-05-21', '9', '11', '\0', '2018-06-05 03:13:58', '\0');
INSERT INTO `ordenes` VALUES ('66', '1126', 'MORT-ECONOMICA (454 GR)', '454.000', '3.000', '3.00', 'prueba', '2018-05-21', '9', '11', '\0', '2018-06-05 03:13:58', '\0');
INSERT INTO `ordenes` VALUES ('67', '1130', 'MORT-JAMONADA  (GRANEL/PIEZA)', '454.000', '6.000', '6.00', 'prueba', '2018-05-21', '9', '11', '\0', '2018-06-05 03:13:58', '\0');
INSERT INTO `ordenes` VALUES ('68', '1131', 'MORT. JAMONADA (150 GR.)', '150.000', '7.000', '2.31', 'prueba', '2018-05-21', '9', '11', '\0', '2018-06-05 03:13:58', '\0');
INSERT INTO `ordenes` VALUES ('69', '1135', 'MORT-CON TOCINO (225GR)', '225.000', '45.000', '22.30', 'prueba', '2018-05-21', '9', '11', '\0', '2018-06-05 03:13:58', '\0');
INSERT INTO `ordenes` VALUES ('70', '1137', 'MORT-JAMONADA DELMOR (454 GR)', '454.000', '78.000', '78.00', 'prueba', '2018-05-21', '9', '11', '\0', '2018-06-05 03:13:58', '\0');
INSERT INTO `ordenes` VALUES ('71', '1190', 'MORT-CON TOCINO (150 GR.)', '150.000', '2.000', '0.66', 'prueba', '2018-05-21', '9', '11', '\0', '2018-06-05 03:13:58', '\0');
INSERT INTO `ordenes` VALUES ('72', '1210', 'HOT DOG (170 GR.)', '170.000', '23.000', '8.61', 'prueba', '2018-05-21', '9', '11', '\0', '2018-06-05 03:13:58', '\0');
INSERT INTO `ordenes` VALUES ('73', '1217', 'SALCHI. HOT DOG POPUL. ( 22 UNDS)  (0409 GR.)', '409.000', '41.000', '36.94', 'prueba', '2018-05-21', '9', '11', '\0', '2018-06-05 03:13:58', '\0');
INSERT INTO `ordenes` VALUES ('74', '1221', 'SALAMI         PIEZA        (GRANEL)', '454.000', '454.000', '454.00', 'prueba', '2018-05-21', '9', '11', '\0', '2018-06-05 03:13:58', '\0');
INSERT INTO `ordenes` VALUES ('75', '1101', 'MORT-BOLOGNA     (GRANEL)', '454.000', '22.000', '22.00', 'Vendedor 1', '2018-06-09', '11', '11', '\0', '2018-06-07 11:08:52', '\0');
INSERT INTO `ordenes` VALUES ('76', '1107', 'MORT-BOLOGNA DELMOR (454 GR)', '454.000', '22.000', '22.00', 'Vendedor 1', '2018-06-09', '11', '11', '\0', '2018-06-07 11:08:52', '\0');
INSERT INTO `ordenes` VALUES ('77', '1109', 'MORT-BOLOGNA (225 GR) (1102)', '225.000', '12.000', '5.95', 'Vendedor 1', '2018-06-09', '11', '11', '\0', '2018-06-07 11:08:52', '\0');
INSERT INTO `ordenes` VALUES ('78', '1130', 'MORT-JAMONADA  (GRANEL/PIEZA)', '454.000', '100.000', '100.00', 'Vendedor 1', '2018-06-09', '11', '11', '\0', '2018-06-07 11:08:52', '\0');
INSERT INTO `ordenes` VALUES ('79', '1290', 'SALCHICHA -  ALEMANA       454', '454.000', '100.000', '100.00', 'Vendedor 1', '2018-06-09', '11', '11', '\0', '2018-06-07 11:08:52', '\0');
INSERT INTO `ordenes` VALUES ('80', '1335', 'JAMON PIC NIC (125 GR)', '125.000', '32.000', '8.81', 'Vendedor 1', '2018-06-09', '11', '11', '\0', '2018-06-07 11:08:52', '\0');
INSERT INTO `ordenes` VALUES ('81', '1370', 'JAMON PAVO GRANEL', '454.000', '40.000', '40.00', 'Vendedor 1', '2018-06-09', '11', '11', '\0', '2018-06-07 11:08:52', '\0');
INSERT INTO `ordenes` VALUES ('82', '1703', 'BACON AHUMADO (200 GR)', '200.000', '100.000', '44.05', 'Vendedor 1', '2018-06-09', '11', '11', '\0', '2018-06-07 11:08:52', '\0');
INSERT INTO `ordenes` VALUES ('83', '1761', 'PIERNA AHUMADA  SIN HUESO', '454.000', '200.000', '200.00', 'Vendedor 1', '2018-06-09', '11', '11', '\0', '2018-06-07 11:08:52', '\0');
INSERT INTO `ordenes` VALUES ('84', '1813', 'SALCH JUMBO FRANKFURT GRAN/36 UND.(F.ARTIFICIAL)', '454.000', '45.000', '45.00', 'Vendedor 1', '2018-06-09', '11', '11', '\0', '2018-06-07 11:08:52', '\0');
INSERT INTO `ordenes` VALUES ('85', '3460', 'REC.SALAMI', '454.000', '20.000', '20.00', 'Vendedor 1', '2018-06-09', '11', '11', '\0', '2018-06-07 11:08:52', '\0');
INSERT INTO `ordenes` VALUES ('192', '1101', 'MORT-BOLOGNA     (GRANEL)', '454.000', '223.000', '223.00', 'yy', '2018-06-28', '2', '10', '\0', '2018-06-27 02:58:43', '');
INSERT INTO `ordenes` VALUES ('193', '1107', 'MORT-BOLOGNA DELMOR (454 GR)', '454.000', '23.000', '23.00', 'yy', '2018-06-28', '2', '10', '\0', '2018-06-27 02:58:43', '');
INSERT INTO `ordenes` VALUES ('194', '1109', 'MORT-BOLOGNA (225 GR) (1102)', '225.000', '23.000', '11.40', 'yy', '2018-06-28', '2', '10', '\0', '2018-06-27 02:58:43', '');
INSERT INTO `ordenes` VALUES ('195', '1111', 'MORT-CHILTOMA  (GRANEL / PIEZA)', '454.000', '23.000', '23.00', 'yy', '2018-06-28', '2', '10', '\0', '2018-06-27 02:58:43', '');
INSERT INTO `ordenes` VALUES ('196', '1112', 'MORT-CHILTOMA  (150 GR)', '150.000', '23.000', '7.60', 'yy', '2018-06-28', '2', '10', '\0', '2018-06-27 02:58:43', '');
INSERT INTO `ordenes` VALUES ('197', '1113', 'MORT-CHILTOMA  (225 GR)', '225.000', '23.000', '11.40', 'yy', '2018-06-28', '2', '10', '\0', '2018-06-27 02:58:43', '');
INSERT INTO `ordenes` VALUES ('198', '1117', 'MORT-POPULAR A GRANEL (PIEZA)', '454.000', '23.000', '23.00', 'yy', '2018-06-28', '2', '10', '\0', '2018-06-27 02:58:43', '');
INSERT INTO `ordenes` VALUES ('199', '1119', 'MORT-POPULAR (PAQUETE)', '454.000', '23.000', '23.00', 'yy', '2018-06-28', '2', '10', '\0', '2018-06-27 02:58:43', '');
INSERT INTO `ordenes` VALUES ('200', '1121', 'MORT-ECONOMICA  (GRANEL/PIEZA)', '454.000', '23.000', '23.00', 'yy', '2018-06-28', '2', '10', '\0', '2018-06-27 02:58:43', '');
INSERT INTO `ordenes` VALUES ('201', '1123', 'MORT-ECONOMICA (125 GR)', '125.000', '23.000', '6.33', 'yy', '2018-06-28', '2', '10', '\0', '2018-06-27 02:58:43', '');
INSERT INTO `ordenes` VALUES ('202', '1126', 'MORT-ECONOMICA (454 GR)', '454.000', '23.000', '23.00', 'yy', '2018-06-28', '2', '10', '\0', '2018-06-27 02:58:43', '');
INSERT INTO `ordenes` VALUES ('203', '1127', 'MORT-POPULAR (½) 227 GRAMOS', '227.000', '23.000', '11.50', 'yy', '2018-06-28', '2', '10', '\0', '2018-06-27 02:58:43', '');
INSERT INTO `ordenes` VALUES ('204', '1130', 'MORT-JAMONADA  (GRANEL/PIEZA)', '454.000', '23.000', '23.00', 'yy', '2018-06-28', '2', '10', '\0', '2018-06-27 02:58:43', '');
INSERT INTO `ordenes` VALUES ('205', '1131', 'MORT. JAMONADA (150 GR.)', '150.000', '23.000', '7.60', 'yy', '2018-06-28', '2', '10', '\0', '2018-06-27 02:58:43', '');
INSERT INTO `ordenes` VALUES ('206', '1132', 'MORT-JAMONADA (225 GR)', '225.000', '23.000', '11.40', 'yy', '2018-06-28', '2', '10', '\0', '2018-06-27 02:58:44', '');
INSERT INTO `ordenes` VALUES ('207', '1134', 'MORT-ECONOMICA (225 GR)', '225.000', '23.000', '11.40', 'yy', '2018-06-28', '2', '10', '\0', '2018-06-27 02:58:44', '');
INSERT INTO `ordenes` VALUES ('208', '1135', 'MORT-CON TOCINO (225GR)', '225.000', '23.000', '11.40', 'yy', '2018-06-28', '2', '10', '\0', '2018-06-27 02:58:44', '');
INSERT INTO `ordenes` VALUES ('209', '1137', 'MORT-JAMONADA DELMOR (454 GR)', '454.000', '23.000', '23.00', 'yy', '2018-06-28', '2', '10', '\0', '2018-06-27 02:58:44', '');
INSERT INTO `ordenes` VALUES ('210', '1101', 'MORT-BOLOGNA     (GRANEL)', '454.000', '23.000', '23.00', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:53', '\0');
INSERT INTO `ordenes` VALUES ('211', '1107', 'MORT-BOLOGNA DELMOR (454 GR)', '454.000', '23.000', '23.00', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:53', '\0');
INSERT INTO `ordenes` VALUES ('212', '1109', 'MORT-BOLOGNA (225 GR) (1102)', '225.000', '23.000', '11.40', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:53', '\0');
INSERT INTO `ordenes` VALUES ('213', '1111', 'MORT-CHILTOMA  (GRANEL / PIEZA)', '454.000', '23.000', '23.00', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:53', '\0');
INSERT INTO `ordenes` VALUES ('214', '1112', 'MORT-CHILTOMA  (150 GR)', '150.000', '23.000', '7.60', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:53', '\0');
INSERT INTO `ordenes` VALUES ('215', '1113', 'MORT-CHILTOMA  (225 GR)', '225.000', '23.000', '11.40', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:53', '\0');
INSERT INTO `ordenes` VALUES ('216', '1117', 'MORT-POPULAR A GRANEL (PIEZA)', '454.000', '23.000', '23.00', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:53', '\0');
INSERT INTO `ordenes` VALUES ('217', '1119', 'MORT-POPULAR (PAQUETE)', '454.000', '23.000', '23.00', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:53', '\0');
INSERT INTO `ordenes` VALUES ('218', '1121', 'MORT-ECONOMICA  (GRANEL/PIEZA)', '454.000', '23.000', '23.00', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:53', '\0');
INSERT INTO `ordenes` VALUES ('219', '1123', 'MORT-ECONOMICA (125 GR)', '125.000', '23.000', '6.33', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:54', '\0');
INSERT INTO `ordenes` VALUES ('220', '1126', 'MORT-ECONOMICA (454 GR)', '454.000', '23.000', '23.00', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:54', '\0');
INSERT INTO `ordenes` VALUES ('221', '1127', 'MORT-POPULAR (½) 227 GRAMOS', '227.000', '23.000', '11.50', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:54', '\0');
INSERT INTO `ordenes` VALUES ('222', '1130', 'MORT-JAMONADA  (GRANEL/PIEZA)', '454.000', '23.000', '23.00', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:54', '\0');
INSERT INTO `ordenes` VALUES ('223', '1131', 'MORT. JAMONADA (150 GR.)', '150.000', '23.000', '7.60', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:54', '\0');
INSERT INTO `ordenes` VALUES ('224', '1132', 'MORT-JAMONADA (225 GR)', '225.000', '23.000', '11.40', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:54', '\0');
INSERT INTO `ordenes` VALUES ('225', '1134', 'MORT-ECONOMICA (225 GR)', '225.000', '23.000', '11.40', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:54', '\0');
INSERT INTO `ordenes` VALUES ('226', '1135', 'MORT-CON TOCINO (225GR)', '225.000', '23.000', '11.40', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:54', '\0');
INSERT INTO `ordenes` VALUES ('227', '1137', 'MORT-JAMONADA DELMOR (454 GR)', '454.000', '23.000', '23.00', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:54', '\0');
INSERT INTO `ordenes` VALUES ('228', '1190', 'MORT-CON TOCINO (150 GR.)', '150.000', '23.000', '7.60', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:54', '\0');
INSERT INTO `ordenes` VALUES ('229', '1193', 'MORT- CON TOCINO DELMOR (454 GR)', '454.000', '23.000', '23.00', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:54', '\0');
INSERT INTO `ordenes` VALUES ('230', '1204', 'SALCHICHA HOT DOG 454GR', '454.000', '23.000', '23.00', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:54', '\0');
INSERT INTO `ordenes` VALUES ('231', '1210', 'HOT DOG (170 GR.)', '170.000', '23.000', '8.61', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:54', '\0');
INSERT INTO `ordenes` VALUES ('232', '1214', 'SALCHICHA - POPULAR        (GRANEL)( 100 UND)', '454.000', '23.000', '23.00', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:54', '\0');
INSERT INTO `ordenes` VALUES ('233', '1217', 'SALCHI. HOT DOG POPUL. ( 22 UNDS)  (0409 GR.)', '409.000', '23.000', '20.72', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:54', '\0');
INSERT INTO `ordenes` VALUES ('234', '1218', 'SALCHI. HOT DOG  POPUL. (12 UND)   (260 GR.)', '260.000', '23.000', '13.17', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:54', '\0');
INSERT INTO `ordenes` VALUES ('235', '1221', 'SALAMI         PIEZA        (GRANEL)', '454.000', '23.000', '23.00', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:54', '\0');
INSERT INTO `ordenes` VALUES ('236', '1223', 'SALAMI PREMIUM 150', '150.000', '23.000', '7.60', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:54', '\0');
INSERT INTO `ordenes` VALUES ('237', '1227', 'SALAMI  CORTADO PREMIUN PIZZA(1224)/ PARA SUPER', '454.000', '23.000', '23.00', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:54', '\0');
INSERT INTO `ordenes` VALUES ('238', '1230', 'PEPERONI GRANEL', '454.000', '23.000', '23.00', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:54', '\0');
INSERT INTO `ordenes` VALUES ('239', '1231', 'PEPERONI 1000 (GRANEL)', '454.000', '23.000', '23.00', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:54', '\0');
INSERT INTO `ordenes` VALUES ('240', '1232', 'PEPERONI 454 GR', '454.000', '23.000', '23.00', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:54', '\0');
INSERT INTO `ordenes` VALUES ('241', '1233', 'SALAMI PREMIUM 454 GR', '454.000', '23.000', '23.00', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:54', '\0');
INSERT INTO `ordenes` VALUES ('242', '1234', 'SALAMI PREMIUN 1000 (GRANEL)', '454.000', '23.000', '23.00', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:54', '\0');
INSERT INTO `ordenes` VALUES ('243', '1241', 'SALCHICHA DESAYUNO DE POLLO', '454.000', '23.000', '23.00', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:54', '\0');
INSERT INTO `ordenes` VALUES ('244', '1243', 'SALCH- DESAYUNO ESPECIAL (GRANEL)', '454.000', '23.000', '23.00', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:54', '\0');
INSERT INTO `ordenes` VALUES ('245', '1245', 'SALCHICHA DESAYUNO PSMAT', '1000.000', '23.000', '50.66', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:54', '\0');
INSERT INTO `ordenes` VALUES ('246', '1250', 'SALCH-JUMBO ECONOMAX (378 G)', '378.000', '23.000', '19.15', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:54', '\0');
INSERT INTO `ordenes` VALUES ('247', '1251', 'SALCH-PARRILLERO ECONOMAX (360 G)', '360.000', '23.000', '18.24', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:54', '\0');
INSERT INTO `ordenes` VALUES ('248', '1254', 'SALCHICHA PARRILLERA 454 GR', '454.000', '23.000', '23.00', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:54', '\0');
INSERT INTO `ordenes` VALUES ('249', '1255', 'SALCH- PARRILLERA (360GR)', '360.000', '23.000', '18.24', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:55', '\0');
INSERT INTO `ordenes` VALUES ('250', '1257', 'SALCH-PARRILLERA (GRANEL)', '454.000', '23.000', '23.00', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:55', '\0');
INSERT INTO `ordenes` VALUES ('251', '1258', 'SALCHICHA PARRILERA 1000 (GRANEL)', '454.000', '23.000', '23.00', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:55', '\0');
INSERT INTO `ordenes` VALUES ('252', '1264', 'SALCHICHA-  JUMBO  908', '908.000', '23.000', '46.00', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:55', '\0');
INSERT INTO `ordenes` VALUES ('253', '1269', 'SALCHICHA SUPER JUMBO', '1300.000', '23.000', '65.86', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:55', '\0');
INSERT INTO `ordenes` VALUES ('254', '1270', 'SALCHICHA MUNICH (454 GR)', '454.000', '23.000', '23.00', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:55', '\0');
INSERT INTO `ordenes` VALUES ('255', '1272', 'SALCHICHA MUNICH GRANEL', '454.000', '23.000', '23.00', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:55', '\0');
INSERT INTO `ordenes` VALUES ('256', '1275', 'SALCHICHA MUNICH KILO', '1000.000', '23.000', '50.66', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:55', '\0');
INSERT INTO `ordenes` VALUES ('257', '1279', 'Salchicha Jumbo 2.3', '1000.000', '23.000', '50.66', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:55', '\0');
INSERT INTO `ordenes` VALUES ('258', '1283', 'SALCHICHA NUREMBERG KILO', '454.000', '23.000', '23.00', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:55', '\0');
INSERT INTO `ordenes` VALUES ('259', '1290', 'SALCHICHA -  ALEMANA       454', '454.000', '23.000', '23.00', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:55', '\0');
INSERT INTO `ordenes` VALUES ('260', '1292', 'SALCH- ALEMANA GRANEL', '454.000', '23.000', '23.00', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:55', '\0');
INSERT INTO `ordenes` VALUES ('261', '1293', 'SALCHICHA ALEMANA KILO', '1000.000', '23.000', '50.66', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:55', '\0');
INSERT INTO `ordenes` VALUES ('262', '1302', 'JAMON AHUMADO PIEZA', '454.000', '23.000', '23.00', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:55', '\0');
INSERT INTO `ordenes` VALUES ('263', '1321', 'JAMON PIERNA          (PIEZA)', '454.000', '23.000', '23.00', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:55', '\0');
INSERT INTO `ordenes` VALUES ('264', '1325', 'JAMON PIERNA 454', '454.000', '23.000', '23.00', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:55', '\0');
INSERT INTO `ordenes` VALUES ('265', '1331', 'JAMON PIC NIC --GRANEL CORTADO (PIEZA)', '454.000', '23.000', '23.00', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:55', '\0');
INSERT INTO `ordenes` VALUES ('266', '1333', 'JAMON POPULAR   ECONOMAX  (150 G)', '150.000', '23.000', '7.60', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:55', '\0');
INSERT INTO `ordenes` VALUES ('267', '1334', 'JAMON POPULAR  (LIBRA.)', '454.000', '23.000', '23.00', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:55', '\0');
INSERT INTO `ordenes` VALUES ('268', '1335', 'JAMON PIC NIC (125 GR)', '125.000', '23.000', '6.33', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:55', '\0');
INSERT INTO `ordenes` VALUES ('269', '1336', 'JAMON POPULAR (227 GR)', '227.000', '23.000', '11.50', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:55', '\0');
INSERT INTO `ordenes` VALUES ('270', '1341', 'JAMON PRENSADO  (PIEZA)', '454.000', '23.000', '23.00', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:55', '\0');
INSERT INTO `ordenes` VALUES ('271', '1342', 'JAMON PRENSADO  ECONOMAX  (150 G)', '150.000', '23.000', '7.60', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:55', '\0');
INSERT INTO `ordenes` VALUES ('272', '1345', 'JAMON PRENSADO (125 GR)', '125.000', '23.000', '6.33', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:55', '\0');
INSERT INTO `ordenes` VALUES ('273', '1353', 'JAMON PRENSADO CORTADO Y ARMADO', '454.000', '23.000', '23.00', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:55', '\0');
INSERT INTO `ordenes` VALUES ('274', '1361', 'JAMON VIRGINIA', '454.000', '23.000', '23.00', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:55', '\0');
INSERT INTO `ordenes` VALUES ('275', '1363', 'JAMON VIRGINIA (PSMT)', '1300.000', '23.000', '65.86', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:55', '\0');
INSERT INTO `ordenes` VALUES ('276', '1370', 'JAMON PAVO GRANEL', '454.000', '23.000', '23.00', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:55', '\0');
INSERT INTO `ordenes` VALUES ('277', '1373', 'JAMON PRENSADO (LIBRA)', '454.000', '23.000', '23.00', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:55', '\0');
INSERT INTO `ordenes` VALUES ('278', '1376', 'JAMON PIC-NIC  454', '454.000', '23.000', '23.00', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:55', '\0');
INSERT INTO `ordenes` VALUES ('279', '1401', 'CHORIZO CRIOLLO (227 GR)', '227.000', '23.000', '11.50', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:55', '\0');
INSERT INTO `ordenes` VALUES ('280', '1402', 'CHORIZO CRIOLLO (GRANEL)', '454.000', '23.000', '23.00', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:56', '\0');
INSERT INTO `ordenes` VALUES ('281', '1403', 'CHORIZO CRIOLLO (454 GR)', '454.000', '23.000', '23.00', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:56', '\0');
INSERT INTO `ordenes` VALUES ('282', '1404', 'CHORIZO CRIOLLO 5LB', '454.000', '23.000', '23.00', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:56', '\0');
INSERT INTO `ordenes` VALUES ('283', '1421', 'CHORIZO ESPAÑOL  (GRANEL)', '454.000', '23.000', '23.00', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:56', '\0');
INSERT INTO `ordenes` VALUES ('284', '1470', 'CHORIZO ARGENTINO (454 GR )', '454.000', '23.000', '23.00', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:56', '\0');
INSERT INTO `ordenes` VALUES ('285', '1473', 'CHORIZO ARGENTINO (GRANEL )', '454.000', '23.000', '23.00', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:56', '\0');
INSERT INTO `ordenes` VALUES ('286', '1486', 'TORTA P/HAMBUERGUESA (CJA)', '500.000', '23.000', '25.33', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:56', '\0');
INSERT INTO `ordenes` VALUES ('287', '1487', 'TORTA DE CARNE DE RES CLASICA', '454.000', '23.000', '23.00', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:56', '\0');
INSERT INTO `ordenes` VALUES ('288', '1502', 'CARNE MOLIDA POLLO    (LIBRA)', '454.000', '23.000', '23.00', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:56', '\0');
INSERT INTO `ordenes` VALUES ('289', '1503', 'CARNE MOLIDA RES         (LIBRA)', '454.000', '23.000', '23.00', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:56', '\0');
INSERT INTO `ordenes` VALUES ('290', '1504', 'CARNE MOLIDA CERDO   (LIBRA)', '454.000', '23.000', '23.00', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:56', '\0');
INSERT INTO `ordenes` VALUES ('291', '1505', 'CARNE MOLIDA RES         GRANEL', '454.000', '23.000', '23.00', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:56', '\0');
INSERT INTO `ordenes` VALUES ('292', '1620', 'JAMON POLLO    (150 GR.)', '150.000', '23.000', '7.60', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:56', '\0');
INSERT INTO `ordenes` VALUES ('293', '1621', 'JAMON POLLO           (PIEZA)', '454.000', '23.000', '23.00', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:56', '\0');
INSERT INTO `ordenes` VALUES ('294', '1622', 'JAMON POLLO  ECONOMAX (150 G)', '150.000', '23.000', '7.60', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:56', '\0');
INSERT INTO `ordenes` VALUES ('295', '1630', 'JAMON PAVO', '454.000', '23.000', '23.00', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:56', '\0');
INSERT INTO `ordenes` VALUES ('296', '1640', 'MORT-    POLLO  (150 GR.)', '150.000', '23.000', '7.60', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:56', '\0');
INSERT INTO `ordenes` VALUES ('297', '1641', 'MORT- POLLO   (GRANEL)', '454.000', '23.000', '23.00', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:56', '\0');
INSERT INTO `ordenes` VALUES ('298', '1642', 'MORT-DE POLLO DELMOR (454 GR)', '454.000', '23.000', '23.00', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:56', '\0');
INSERT INTO `ordenes` VALUES ('299', '1643', 'JAMON DE POLLO DELMOR 454 GR', '454.000', '23.000', '23.00', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:56', '\0');
INSERT INTO `ordenes` VALUES ('300', '1645', 'MORT. DE PAVO', '454.000', '23.000', '23.00', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:56', '\0');
INSERT INTO `ordenes` VALUES ('301', '1650', 'SALCH-  POLLO             (170 GR.)', '170.000', '23.000', '8.61', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:56', '\0');
INSERT INTO `ordenes` VALUES ('302', '1655', 'SALCHICHA.  PAVO JUMBO 590', '590.000', '23.000', '29.89', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:56', '\0');
INSERT INTO `ordenes` VALUES ('303', '1660', 'SALCH- POLLO   ECONOMAX  (425 G)', '425.000', '23.000', '21.53', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:56', '\0');
INSERT INTO `ordenes` VALUES ('304', '1670', 'SALCHICHON POLLO       (200  GR)', '200.000', '23.000', '10.13', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:56', '\0');
INSERT INTO `ordenes` VALUES ('305', '1701', 'BACON AHUMADO  ECONOMAX  (200 G)', '200.000', '23.000', '10.13', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:56', '\0');
INSERT INTO `ordenes` VALUES ('306', '1702', 'BACON AHUMADO A GRANEL', '454.000', '23.000', '23.00', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:56', '\0');
INSERT INTO `ordenes` VALUES ('307', '1703', 'BACON AHUMADO (200 GR)', '200.000', '23.000', '10.13', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:56', '\0');
INSERT INTO `ordenes` VALUES ('308', '1706', 'BACON AHUMADO 1000 GR', '454.000', '23.000', '23.00', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:56', '\0');
INSERT INTO `ordenes` VALUES ('309', '1707', 'BACON AHUMADO 454 GR', '454.000', '23.000', '23.00', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:56', '\0');
INSERT INTO `ordenes` VALUES ('310', '1709', 'BACON PSMAT 5 LIB', '454.000', '23.000', '23.00', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:56', '\0');
INSERT INTO `ordenes` VALUES ('311', '1711', 'COSTILLA DE CERDO AHUMADA', '454.000', '23.000', '23.00', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:56', '\0');
INSERT INTO `ordenes` VALUES ('312', '1720', 'CHULETA AHUMADA (BANDEJA)', '454.000', '23.000', '23.00', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:57', '\0');
INSERT INTO `ordenes` VALUES ('313', '1721', 'CHULETA AHUMADA A GRANEL', '454.000', '23.000', '23.00', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:57', '\0');
INSERT INTO `ordenes` VALUES ('314', '1723', 'CHULETA PREFORMADA', '454.000', '23.000', '23.00', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:57', '\0');
INSERT INTO `ordenes` VALUES ('315', '1730', 'JAMON SELVA NEGRA', '454.000', '23.000', '23.00', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:57', '\0');
INSERT INTO `ordenes` VALUES ('316', '1760', 'PIERNA AHUMADA CON HUESO', '454.000', '23.000', '23.00', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:57', '\0');
INSERT INTO `ordenes` VALUES ('317', '1761', 'PIERNA AHUMADA  SIN HUESO', '454.000', '23.000', '23.00', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:57', '\0');
INSERT INTO `ordenes` VALUES ('318', '1762', 'PIERNA AHUMADA ( BANDEJA)', '454.000', '23.000', '23.00', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:57', '\0');
INSERT INTO `ordenes` VALUES ('319', '1763', 'PIERNA AHUMADA C/H BANDEJA', '454.000', '23.000', '23.00', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:57', '\0');
INSERT INTO `ordenes` VALUES ('320', '1770', 'POLLO AHUMADO (PIEZA)', '454.000', '23.000', '23.00', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:57', '\0');
INSERT INTO `ordenes` VALUES ('321', '1772', 'POLLO AHUMADO BANDEJA', '454.000', '23.000', '23.00', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:57', '\0');
INSERT INTO `ordenes` VALUES ('322', '1773', 'POLLO AHUMADO PIEZA (PSMT)', '454.000', '23.000', '23.00', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:57', '\0');
INSERT INTO `ordenes` VALUES ('323', '1774', 'ROLLER HAM AHUMADO (PSMT)', '454.000', '23.000', '23.00', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:57', '\0');
INSERT INTO `ordenes` VALUES ('324', '1780', 'ROLLER HAM AHUMADO', '454.000', '23.000', '23.00', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:57', '\0');
INSERT INTO `ordenes` VALUES ('325', '1791', 'PASTRAMI', '454.000', '23.000', '23.00', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:57', '\0');
INSERT INTO `ordenes` VALUES ('326', '1792', 'ROAST BEEF', '454.000', '23.000', '23.00', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:57', '\0');
INSERT INTO `ordenes` VALUES ('327', '1793', 'ROAST BEET PIEZA PIEZA/LIBRA', '454.000', '23.000', '23.00', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:57', '\0');
INSERT INTO `ordenes` VALUES ('328', '1794', 'PASTRAMI LIBRA', '454.000', '23.000', '23.00', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:57', '\0');
INSERT INTO `ordenes` VALUES ('329', '1795', 'ROAST BEEF LIBRA', '454.000', '23.000', '23.00', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:57', '\0');
INSERT INTO `ordenes` VALUES ('330', '1803', 'MORT. FRANKFURT (125 GR.)', '125.000', '23.000', '6.33', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:57', '\0');
INSERT INTO `ordenes` VALUES ('331', '1810', 'SALCH- FRANKFORT (200 GR)', '200.000', '23.000', '10.13', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:57', '\0');
INSERT INTO `ordenes` VALUES ('332', '1811', 'SALCH-  FRANKFURT  (170 GR.)', '170.000', '23.000', '8.61', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:57', '\0');
INSERT INTO `ordenes` VALUES ('333', '1812', 'SALCHICHA-  BOLOGNA       (GRANEL)', '454.000', '23.000', '23.00', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:57', '\0');
INSERT INTO `ordenes` VALUES ('334', '1813', 'SALCH JUMBO FRANKFURT GRAN/36 UND.(F.ARTIFICIAL)', '454.000', '23.000', '23.00', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:57', '\0');
INSERT INTO `ordenes` VALUES ('335', '1819', 'S.JUMBO FRANK (12 UN)  2.5', '1135.000', '23.000', '57.50', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:57', '\0');
INSERT INTO `ordenes` VALUES ('336', '1820', 'SALCHICHA FRANKFURT 454 GR', '454.000', '23.000', '23.00', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:57', '\0');
INSERT INTO `ordenes` VALUES ('337', '1970', 'SALCHICHON RES            (200  GR)', '200.000', '23.000', '10.13', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:57', '\0');
INSERT INTO `ordenes` VALUES ('338', '1971', 'SALCHICHON TUBO RES (MANGUERA GRANEL)', '454.000', '23.000', '23.00', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:57', '\0');
INSERT INTO `ordenes` VALUES ('339', '1975', 'SALCHICHON PICANTE    (200  GR)', '200.000', '23.000', '10.13', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:57', '\0');
INSERT INTO `ordenes` VALUES ('340', '1980', 'SALCHICHON TUBO PICANTE (MANGUERA GRANEL)', '454.000', '23.000', '23.00', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:57', '\0');
INSERT INTO `ordenes` VALUES ('341', '2993', 'S.VIENA PICANTE', '150.000', '23.000', '7.60', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:57', '\0');
INSERT INTO `ordenes` VALUES ('342', '3401', 'REC.  BACON AHUMADOS', '454.000', '23.000', '23.00', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:57', '\0');
INSERT INTO `ordenes` VALUES ('343', '3402', 'REC. DE CHULETA AHUMADA', '454.000', '23.000', '23.00', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:57', '\0');
INSERT INTO `ordenes` VALUES ('344', '3410', 'REC.SALCHICHA', '454.000', '23.000', '23.00', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:57', '\0');
INSERT INTO `ordenes` VALUES ('345', '3411', 'REC. SALCHICHA  DELIKATESSEN', '454.000', '23.000', '23.00', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:57', '\0');
INSERT INTO `ordenes` VALUES ('346', '3420', 'REC. JAMON DE CERDO (PRENSADO)', '454.000', '23.000', '23.00', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:57', '\0');
INSERT INTO `ordenes` VALUES ('347', '3421', 'REC. JAMON DE POLLO', '454.000', '23.000', '23.00', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:57', '\0');
INSERT INTO `ordenes` VALUES ('348', '3422', 'RECORTE DE J.POPULAR', '454.000', '23.000', '23.00', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:57', '\0');
INSERT INTO `ordenes` VALUES ('349', '3430', 'REC.MORTADELA', '454.000', '23.000', '23.00', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:58', '\0');
INSERT INTO `ordenes` VALUES ('350', '3460', 'REC.SALAMI', '454.000', '23.000', '23.00', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:58', '\0');
INSERT INTO `ordenes` VALUES ('351', '3465', 'REC. PEPERONI', '454.000', '32.000', '32.00', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:58', '\0');
INSERT INTO `ordenes` VALUES ('352', '85120', 'CARNE  BISTEC PIM.LIMON (LIBRA)', '454.000', '23.000', '23.00', 'er', '2018-06-28', '1', '10', '\0', '2018-06-28 08:22:58', '\0');
INSERT INTO `ordenes` VALUES ('353', '1101', 'MORT-BOLOGNA     (GRANEL)', '454.000', '23.000', '23.00', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:46', '');
INSERT INTO `ordenes` VALUES ('354', '1107', 'MORT-BOLOGNA DELMOR (454 GR)', '454.000', '23.000', '23.00', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:46', '');
INSERT INTO `ordenes` VALUES ('355', '1109', 'MORT-BOLOGNA (225 GR) (1102)', '225.000', '23.000', '11.40', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:46', '');
INSERT INTO `ordenes` VALUES ('356', '1111', 'MORT-CHILTOMA  (GRANEL / PIEZA)', '454.000', '23.000', '23.00', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:46', '');
INSERT INTO `ordenes` VALUES ('357', '1112', 'MORT-CHILTOMA  (150 GR)', '150.000', '23.000', '7.60', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:46', '');
INSERT INTO `ordenes` VALUES ('358', '1113', 'MORT-CHILTOMA  (225 GR)', '225.000', '23.000', '11.40', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:46', '');
INSERT INTO `ordenes` VALUES ('359', '1117', 'MORT-POPULAR A GRANEL (PIEZA)', '454.000', '23.000', '23.00', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:46', '');
INSERT INTO `ordenes` VALUES ('360', '1119', 'MORT-POPULAR (PAQUETE)', '454.000', '23.000', '23.00', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:46', '');
INSERT INTO `ordenes` VALUES ('361', '1121', 'MORT-ECONOMICA  (GRANEL/PIEZA)', '454.000', '23.000', '23.00', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:46', '');
INSERT INTO `ordenes` VALUES ('362', '1123', 'MORT-ECONOMICA (125 GR)', '125.000', '23.000', '6.33', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:46', '');
INSERT INTO `ordenes` VALUES ('363', '1126', 'MORT-ECONOMICA (454 GR)', '454.000', '23.000', '23.00', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:46', '');
INSERT INTO `ordenes` VALUES ('364', '1127', 'MORT-POPULAR (½) 227 GRAMOS', '227.000', '23.000', '11.50', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:46', '');
INSERT INTO `ordenes` VALUES ('365', '1130', 'MORT-JAMONADA  (GRANEL/PIEZA)', '454.000', '23.000', '23.00', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:47', '');
INSERT INTO `ordenes` VALUES ('366', '1131', 'MORT. JAMONADA (150 GR.)', '150.000', '23.000', '7.60', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:47', '');
INSERT INTO `ordenes` VALUES ('367', '1132', 'MORT-JAMONADA (225 GR)', '225.000', '23.000', '11.40', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:47', '');
INSERT INTO `ordenes` VALUES ('368', '1134', 'MORT-ECONOMICA (225 GR)', '225.000', '23.000', '11.40', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:47', '');
INSERT INTO `ordenes` VALUES ('369', '1135', 'MORT-CON TOCINO (225GR)', '225.000', '23.000', '11.40', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:47', '');
INSERT INTO `ordenes` VALUES ('370', '1137', 'MORT-JAMONADA DELMOR (454 GR)', '454.000', '23.000', '23.00', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:47', '');
INSERT INTO `ordenes` VALUES ('371', '1190', 'MORT-CON TOCINO (150 GR.)', '150.000', '23.000', '7.60', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:47', '');
INSERT INTO `ordenes` VALUES ('372', '1193', 'MORT- CON TOCINO DELMOR (454 GR)', '454.000', '23.000', '23.00', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:47', '');
INSERT INTO `ordenes` VALUES ('373', '1204', 'SALCHICHA HOT DOG 454GR', '454.000', '23.000', '23.00', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:47', '');
INSERT INTO `ordenes` VALUES ('374', '1210', 'HOT DOG (170 GR.)', '170.000', '23.000', '8.61', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:47', '');
INSERT INTO `ordenes` VALUES ('375', '1214', 'SALCHICHA - POPULAR        (GRANEL)( 100 UND)', '454.000', '23.000', '23.00', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:47', '');
INSERT INTO `ordenes` VALUES ('376', '1217', 'SALCHI. HOT DOG POPUL. ( 22 UNDS)  (0409 GR.)', '409.000', '23.000', '20.72', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:47', '');
INSERT INTO `ordenes` VALUES ('377', '1218', 'SALCHI. HOT DOG  POPUL. (12 UND)   (260 GR.)', '260.000', '23.000', '13.17', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:47', '');
INSERT INTO `ordenes` VALUES ('378', '1221', 'SALAMI         PIEZA        (GRANEL)', '454.000', '23.000', '23.00', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:47', '');
INSERT INTO `ordenes` VALUES ('379', '1223', 'SALAMI PREMIUM 150', '150.000', '23.000', '7.60', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:47', '');
INSERT INTO `ordenes` VALUES ('380', '1227', 'SALAMI  CORTADO PREMIUN PIZZA(1224)/ PARA SUPER', '454.000', '23.000', '23.00', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:47', '');
INSERT INTO `ordenes` VALUES ('381', '1230', 'PEPERONI GRANEL', '454.000', '23.000', '23.00', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:47', '');
INSERT INTO `ordenes` VALUES ('382', '1231', 'PEPERONI 1000 (GRANEL)', '454.000', '23.000', '23.00', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:47', '');
INSERT INTO `ordenes` VALUES ('383', '1232', 'PEPERONI 454 GR', '454.000', '23.000', '23.00', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:47', '');
INSERT INTO `ordenes` VALUES ('384', '1233', 'SALAMI PREMIUM 454 GR', '454.000', '23.000', '23.00', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:47', '');
INSERT INTO `ordenes` VALUES ('385', '1234', 'SALAMI PREMIUN 1000 (GRANEL)', '454.000', '23.000', '23.00', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:47', '');
INSERT INTO `ordenes` VALUES ('386', '1241', 'SALCHICHA DESAYUNO DE POLLO', '454.000', '23.000', '23.00', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:47', '');
INSERT INTO `ordenes` VALUES ('387', '1243', 'SALCH- DESAYUNO ESPECIAL (GRANEL)', '454.000', '23.000', '23.00', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:47', '');
INSERT INTO `ordenes` VALUES ('388', '1245', 'SALCHICHA DESAYUNO PSMAT', '1000.000', '23.000', '50.66', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:47', '');
INSERT INTO `ordenes` VALUES ('389', '1250', 'SALCH-JUMBO ECONOMAX (378 G)', '378.000', '23.000', '19.15', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:47', '');
INSERT INTO `ordenes` VALUES ('390', '1251', 'SALCH-PARRILLERO ECONOMAX (360 G)', '360.000', '23.000', '18.24', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:47', '');
INSERT INTO `ordenes` VALUES ('391', '1254', 'SALCHICHA PARRILLERA 454 GR', '454.000', '23.000', '23.00', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:47', '');
INSERT INTO `ordenes` VALUES ('392', '1255', 'SALCH- PARRILLERA (360GR)', '360.000', '23.000', '18.24', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:47', '');
INSERT INTO `ordenes` VALUES ('393', '1257', 'SALCH-PARRILLERA (GRANEL)', '454.000', '23.000', '23.00', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:47', '');
INSERT INTO `ordenes` VALUES ('394', '1258', 'SALCHICHA PARRILERA 1000 (GRANEL)', '454.000', '23.000', '23.00', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:47', '');
INSERT INTO `ordenes` VALUES ('395', '1264', 'SALCHICHA-  JUMBO  908', '908.000', '23.000', '46.00', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:47', '');
INSERT INTO `ordenes` VALUES ('396', '1269', 'SALCHICHA SUPER JUMBO', '1300.000', '23.000', '65.86', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:47', '');
INSERT INTO `ordenes` VALUES ('397', '1270', 'SALCHICHA MUNICH (454 GR)', '454.000', '23.000', '23.00', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:47', '');
INSERT INTO `ordenes` VALUES ('398', '1272', 'SALCHICHA MUNICH GRANEL', '454.000', '23.000', '23.00', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:47', '');
INSERT INTO `ordenes` VALUES ('399', '1275', 'SALCHICHA MUNICH KILO', '1000.000', '23.000', '50.66', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:48', '');
INSERT INTO `ordenes` VALUES ('400', '1279', 'Salchicha Jumbo 2.3', '1000.000', '23.000', '50.66', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:48', '');
INSERT INTO `ordenes` VALUES ('401', '1283', 'SALCHICHA NUREMBERG KILO', '454.000', '23.000', '23.00', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:48', '');
INSERT INTO `ordenes` VALUES ('402', '1290', 'SALCHICHA -  ALEMANA       454', '454.000', '23.000', '23.00', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:48', '');
INSERT INTO `ordenes` VALUES ('403', '1292', 'SALCH- ALEMANA GRANEL', '454.000', '23.000', '23.00', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:48', '');
INSERT INTO `ordenes` VALUES ('404', '1293', 'SALCHICHA ALEMANA KILO', '1000.000', '23.000', '50.66', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:48', '');
INSERT INTO `ordenes` VALUES ('405', '1302', 'JAMON AHUMADO PIEZA', '454.000', '23.000', '23.00', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:48', '');
INSERT INTO `ordenes` VALUES ('406', '1321', 'JAMON PIERNA          (PIEZA)', '454.000', '23.000', '23.00', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:48', '');
INSERT INTO `ordenes` VALUES ('407', '1325', 'JAMON PIERNA 454', '454.000', '23.000', '23.00', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:48', '');
INSERT INTO `ordenes` VALUES ('408', '1331', 'JAMON PIC NIC --GRANEL CORTADO (PIEZA)', '454.000', '23.000', '23.00', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:48', '');
INSERT INTO `ordenes` VALUES ('409', '1333', 'JAMON POPULAR   ECONOMAX  (150 G)', '150.000', '23.000', '7.60', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:48', '');
INSERT INTO `ordenes` VALUES ('410', '1334', 'JAMON POPULAR  (LIBRA.)', '454.000', '23.000', '23.00', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:48', '');
INSERT INTO `ordenes` VALUES ('411', '1335', 'JAMON PIC NIC (125 GR)', '125.000', '23.000', '6.33', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:48', '');
INSERT INTO `ordenes` VALUES ('412', '1336', 'JAMON POPULAR (227 GR)', '227.000', '23.000', '11.50', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:48', '');
INSERT INTO `ordenes` VALUES ('413', '1341', 'JAMON PRENSADO  (PIEZA)', '454.000', '23.000', '23.00', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:48', '');
INSERT INTO `ordenes` VALUES ('414', '1342', 'JAMON PRENSADO  ECONOMAX  (150 G)', '150.000', '23.000', '7.60', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:48', '');
INSERT INTO `ordenes` VALUES ('415', '1345', 'JAMON PRENSADO (125 GR)', '125.000', '23.000', '6.33', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:48', '');
INSERT INTO `ordenes` VALUES ('416', '1353', 'JAMON PRENSADO CORTADO Y ARMADO', '454.000', '23.000', '23.00', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:48', '');
INSERT INTO `ordenes` VALUES ('417', '1361', 'JAMON VIRGINIA', '454.000', '23.000', '23.00', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:48', '');
INSERT INTO `ordenes` VALUES ('418', '1363', 'JAMON VIRGINIA (PSMT)', '1300.000', '23.000', '65.86', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:48', '');
INSERT INTO `ordenes` VALUES ('419', '1370', 'JAMON PAVO GRANEL', '454.000', '23.000', '23.00', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:48', '');
INSERT INTO `ordenes` VALUES ('420', '1373', 'JAMON PRENSADO (LIBRA)', '454.000', '23.000', '23.00', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:48', '');
INSERT INTO `ordenes` VALUES ('421', '1376', 'JAMON PIC-NIC  454', '454.000', '23.000', '23.00', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:48', '');
INSERT INTO `ordenes` VALUES ('422', '1401', 'CHORIZO CRIOLLO (227 GR)', '227.000', '23.000', '11.50', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:48', '');
INSERT INTO `ordenes` VALUES ('423', '1402', 'CHORIZO CRIOLLO (GRANEL)', '454.000', '23.000', '23.00', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:48', '');
INSERT INTO `ordenes` VALUES ('424', '1403', 'CHORIZO CRIOLLO (454 GR)', '454.000', '23.000', '23.00', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:48', '');
INSERT INTO `ordenes` VALUES ('425', '1404', 'CHORIZO CRIOLLO 5LB', '454.000', '23.000', '23.00', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:48', '');
INSERT INTO `ordenes` VALUES ('426', '1421', 'CHORIZO ESPAÑOL  (GRANEL)', '454.000', '23.000', '23.00', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:48', '');
INSERT INTO `ordenes` VALUES ('427', '1470', 'CHORIZO ARGENTINO (454 GR )', '454.000', '23.000', '23.00', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:48', '');
INSERT INTO `ordenes` VALUES ('428', '1473', 'CHORIZO ARGENTINO (GRANEL )', '454.000', '23.000', '23.00', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:48', '');
INSERT INTO `ordenes` VALUES ('429', '1486', 'TORTA P/HAMBUERGUESA (CJA)', '500.000', '23.000', '25.33', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:48', '');
INSERT INTO `ordenes` VALUES ('430', '1487', 'TORTA DE CARNE DE RES CLASICA', '454.000', '23.000', '23.00', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:48', '');
INSERT INTO `ordenes` VALUES ('431', '1502', 'CARNE MOLIDA POLLO    (LIBRA)', '454.000', '23.000', '23.00', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:48', '');
INSERT INTO `ordenes` VALUES ('432', '1503', 'CARNE MOLIDA RES         (LIBRA)', '454.000', '23.000', '23.00', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:48', '');
INSERT INTO `ordenes` VALUES ('433', '1504', 'CARNE MOLIDA CERDO   (LIBRA)', '454.000', '23.000', '23.00', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:48', '');
INSERT INTO `ordenes` VALUES ('434', '1505', 'CARNE MOLIDA RES         GRANEL', '454.000', '23.000', '23.00', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:49', '');
INSERT INTO `ordenes` VALUES ('435', '1620', 'JAMON POLLO    (150 GR.)', '150.000', '23.000', '7.60', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:49', '');
INSERT INTO `ordenes` VALUES ('436', '1621', 'JAMON POLLO           (PIEZA)', '454.000', '23.000', '23.00', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:49', '');
INSERT INTO `ordenes` VALUES ('437', '1622', 'JAMON POLLO  ECONOMAX (150 G)', '150.000', '23.000', '7.60', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:49', '');
INSERT INTO `ordenes` VALUES ('438', '1630', 'JAMON PAVO', '454.000', '23.000', '23.00', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:49', '');
INSERT INTO `ordenes` VALUES ('439', '1640', 'MORT-    POLLO  (150 GR.)', '150.000', '23.000', '7.60', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:49', '');
INSERT INTO `ordenes` VALUES ('440', '1641', 'MORT- POLLO   (GRANEL)', '454.000', '23.000', '23.00', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:49', '');
INSERT INTO `ordenes` VALUES ('441', '1642', 'MORT-DE POLLO DELMOR (454 GR)', '454.000', '23.000', '23.00', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:49', '');
INSERT INTO `ordenes` VALUES ('442', '1643', 'JAMON DE POLLO DELMOR 454 GR', '454.000', '23.000', '23.00', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:49', '');
INSERT INTO `ordenes` VALUES ('443', '1645', 'MORT. DE PAVO', '454.000', '23.000', '23.00', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:49', '');
INSERT INTO `ordenes` VALUES ('444', '1650', 'SALCH-  POLLO             (170 GR.)', '170.000', '23.000', '8.61', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:49', '');
INSERT INTO `ordenes` VALUES ('445', '1655', 'SALCHICHA.  PAVO JUMBO 590', '590.000', '23.000', '29.89', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:49', '');
INSERT INTO `ordenes` VALUES ('446', '1660', 'SALCH- POLLO   ECONOMAX  (425 G)', '425.000', '23.000', '21.53', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:49', '');
INSERT INTO `ordenes` VALUES ('447', '1670', 'SALCHICHON POLLO       (200  GR)', '200.000', '23.000', '10.13', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:49', '');
INSERT INTO `ordenes` VALUES ('448', '1701', 'BACON AHUMADO  ECONOMAX  (200 G)', '200.000', '23.000', '10.13', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:49', '');
INSERT INTO `ordenes` VALUES ('449', '1702', 'BACON AHUMADO A GRANEL', '454.000', '23.000', '23.00', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:49', '');
INSERT INTO `ordenes` VALUES ('450', '1703', 'BACON AHUMADO (200 GR)', '200.000', '23.000', '10.13', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:49', '');
INSERT INTO `ordenes` VALUES ('451', '1706', 'BACON AHUMADO 1000 GR', '454.000', '23.000', '23.00', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:49', '');
INSERT INTO `ordenes` VALUES ('452', '1707', 'BACON AHUMADO 454 GR', '454.000', '23.000', '23.00', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:49', '');
INSERT INTO `ordenes` VALUES ('453', '1709', 'BACON PSMAT 5 LIB', '454.000', '23.000', '23.00', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:49', '');
INSERT INTO `ordenes` VALUES ('454', '1711', 'COSTILLA DE CERDO AHUMADA', '454.000', '23.000', '23.00', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:49', '');
INSERT INTO `ordenes` VALUES ('455', '1720', 'CHULETA AHUMADA (BANDEJA)', '454.000', '23.000', '23.00', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:49', '');
INSERT INTO `ordenes` VALUES ('456', '1721', 'CHULETA AHUMADA A GRANEL', '454.000', '23.000', '23.00', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:49', '');
INSERT INTO `ordenes` VALUES ('457', '1723', 'CHULETA PREFORMADA', '454.000', '23.000', '23.00', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:49', '');
INSERT INTO `ordenes` VALUES ('458', '1730', 'JAMON SELVA NEGRA', '454.000', '23.000', '23.00', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:49', '');
INSERT INTO `ordenes` VALUES ('459', '1760', 'PIERNA AHUMADA CON HUESO', '454.000', '23.000', '23.00', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:49', '');
INSERT INTO `ordenes` VALUES ('460', '1761', 'PIERNA AHUMADA  SIN HUESO', '454.000', '23.000', '23.00', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:49', '');
INSERT INTO `ordenes` VALUES ('461', '1762', 'PIERNA AHUMADA ( BANDEJA)', '454.000', '23.000', '23.00', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:49', '');
INSERT INTO `ordenes` VALUES ('462', '1763', 'PIERNA AHUMADA C/H BANDEJA', '454.000', '23.000', '23.00', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:49', '');
INSERT INTO `ordenes` VALUES ('463', '1770', 'POLLO AHUMADO (PIEZA)', '454.000', '23.000', '23.00', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:49', '');
INSERT INTO `ordenes` VALUES ('464', '1772', 'POLLO AHUMADO BANDEJA', '454.000', '23.000', '23.00', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:49', '');
INSERT INTO `ordenes` VALUES ('465', '1773', 'POLLO AHUMADO PIEZA (PSMT)', '454.000', '23.000', '23.00', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:49', '');
INSERT INTO `ordenes` VALUES ('466', '1774', 'ROLLER HAM AHUMADO (PSMT)', '454.000', '23.000', '23.00', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:49', '');
INSERT INTO `ordenes` VALUES ('467', '1780', 'ROLLER HAM AHUMADO', '454.000', '23.000', '23.00', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:49', '');
INSERT INTO `ordenes` VALUES ('468', '1791', 'PASTRAMI', '454.000', '23.000', '23.00', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:49', '');
INSERT INTO `ordenes` VALUES ('469', '1792', 'ROAST BEEF', '454.000', '23.000', '23.00', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:49', '');
INSERT INTO `ordenes` VALUES ('470', '1793', 'ROAST BEET PIEZA PIEZA/LIBRA', '454.000', '23.000', '23.00', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:49', '');
INSERT INTO `ordenes` VALUES ('471', '1794', 'PASTRAMI LIBRA', '454.000', '23.000', '23.00', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:50', '');
INSERT INTO `ordenes` VALUES ('472', '1795', 'ROAST BEEF LIBRA', '454.000', '23.000', '23.00', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:50', '');
INSERT INTO `ordenes` VALUES ('473', '1803', 'MORT. FRANKFURT (125 GR.)', '125.000', '23.000', '6.33', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:50', '');
INSERT INTO `ordenes` VALUES ('474', '1810', 'SALCH- FRANKFORT (200 GR)', '200.000', '2323.000', '10.13', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:50', '');
INSERT INTO `ordenes` VALUES ('475', '1811', 'SALCH-  FRANKFURT  (170 GR.)', '170.000', '23.000', '8.61', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:50', '');
INSERT INTO `ordenes` VALUES ('476', '1812', 'SALCHICHA-  BOLOGNA       (GRANEL)', '454.000', '23.000', '23.00', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:50', '');
INSERT INTO `ordenes` VALUES ('477', '1813', 'SALCH JUMBO FRANKFURT GRAN/36 UND.(F.ARTIFICIAL)', '454.000', '23.000', '23.00', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:50', '');
INSERT INTO `ordenes` VALUES ('478', '1819', 'S.JUMBO FRANK (12 UN)  2.5', '1135.000', '23.000', '57.50', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:50', '');
INSERT INTO `ordenes` VALUES ('479', '1820', 'SALCHICHA FRANKFURT 454 GR', '454.000', '23.000', '23.00', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:50', '');
INSERT INTO `ordenes` VALUES ('480', '1970', 'SALCHICHON RES            (200  GR)', '200.000', '23.000', '10.13', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:50', '');
INSERT INTO `ordenes` VALUES ('481', '1971', 'SALCHICHON TUBO RES (MANGUERA GRANEL)', '454.000', '23.000', '23.00', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:50', '');
INSERT INTO `ordenes` VALUES ('482', '1975', 'SALCHICHON PICANTE    (200  GR)', '200.000', '23.000', '10.13', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:50', '');
INSERT INTO `ordenes` VALUES ('483', '1980', 'SALCHICHON TUBO PICANTE (MANGUERA GRANEL)', '454.000', '23.000', '23.00', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:50', '');
INSERT INTO `ordenes` VALUES ('484', '2993', 'S.VIENA PICANTE', '150.000', '23.000', '7.60', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:50', '');
INSERT INTO `ordenes` VALUES ('485', '3401', 'REC.  BACON AHUMADOS', '454.000', '23.000', '23.00', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:50', '');
INSERT INTO `ordenes` VALUES ('486', '3402', 'REC. DE CHULETA AHUMADA', '454.000', '23.000', '23.00', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:50', '');
INSERT INTO `ordenes` VALUES ('487', '3410', 'REC.SALCHICHA', '454.000', '23.000', '23.00', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:50', '');
INSERT INTO `ordenes` VALUES ('488', '3411', 'REC. SALCHICHA  DELIKATESSEN', '454.000', '23.000', '23.00', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:50', '');
INSERT INTO `ordenes` VALUES ('489', '3420', 'REC. JAMON DE CERDO (PRENSADO)', '454.000', '23.000', '23.00', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:50', '');
INSERT INTO `ordenes` VALUES ('490', '3421', 'REC. JAMON DE POLLO', '454.000', '23.000', '23.00', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:50', '');
INSERT INTO `ordenes` VALUES ('491', '3422', 'RECORTE DE J.POPULAR', '454.000', '23.000', '23.00', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:50', '');
INSERT INTO `ordenes` VALUES ('492', '3430', 'REC.MORTADELA', '454.000', '23.000', '23.00', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:50', '');
INSERT INTO `ordenes` VALUES ('493', '3460', 'REC.SALAMI', '454.000', '23.000', '23.00', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:50', '');
INSERT INTO `ordenes` VALUES ('494', '3465', 'REC. PEPERONI', '454.000', '23.000', '23.00', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:50', '');
INSERT INTO `ordenes` VALUES ('495', '85120', 'CARNE  BISTEC PIM.LIMON (LIBRA)', '454.000', '23.000', '23.00', 'er', '2018-06-28', '3', '10', '\0', '2018-06-28 08:26:50', '');
INSERT INTO `ordenes` VALUES ('497', '1107', 'MORT-BOLOGNA DELMOR (454 GR)', '454.000', '23.000', '23.00', 'er', '2018-06-30', '20', '17', '\0', '2018-06-30 12:19:18', '\0');
INSERT INTO `ordenes` VALUES ('498', '1109', 'MORT-BOLOGNA (225 GR) (1102)', '225.000', '23.000', '11.40', 'er', '2018-06-30', '20', '17', '\0', '2018-06-30 12:19:18', '\0');
INSERT INTO `ordenes` VALUES ('499', '1111', 'MORT-CHILTOMA  (GRANEL / PIEZA)', '454.000', '23.000', '23.00', 'er', '2018-06-30', '20', '17', '\0', '2018-06-30 12:19:18', '\0');
INSERT INTO `ordenes` VALUES ('500', '1112', 'MORT-CHILTOMA  (150 GR)', '150.000', '23.000', '7.60', 'er', '2018-06-30', '20', '17', '\0', '2018-06-30 12:19:18', '\0');
INSERT INTO `ordenes` VALUES ('501', '1113', 'MORT-CHILTOMA  (225 GR)', '225.000', '23.000', '11.40', 'er', '2018-06-30', '20', '17', '\0', '2018-06-30 12:19:18', '\0');
INSERT INTO `ordenes` VALUES ('502', '1117', 'MORT-POPULAR A GRANEL (PIEZA)', '454.000', '23.000', '23.00', 'er', '2018-06-30', '20', '17', '\0', '2018-06-30 12:19:18', '\0');
INSERT INTO `ordenes` VALUES ('503', '1119', 'MORT-POPULAR (PAQUETE)', '454.000', '23.000', '23.00', 'er', '2018-06-30', '20', '17', '\0', '2018-06-30 12:19:18', '\0');
INSERT INTO `ordenes` VALUES ('504', '1121', 'MORT-ECONOMICA  (GRANEL/PIEZA)', '454.000', '23.000', '23.00', 'er', '2018-06-30', '20', '17', '\0', '2018-06-30 12:19:18', '\0');
INSERT INTO `ordenes` VALUES ('505', '1123', 'MORT-ECONOMICA (125 GR)', '125.000', '23.000', '6.33', 'er', '2018-06-30', '20', '17', '\0', '2018-06-30 12:19:18', '\0');
INSERT INTO `ordenes` VALUES ('506', '1126', 'MORT-ECONOMICA (454 GR)', '454.000', '23.000', '23.00', 'er', '2018-06-30', '20', '17', '\0', '2018-06-30 12:19:18', '\0');
INSERT INTO `ordenes` VALUES ('507', '1127', 'MORT-POPULAR (½) 227 GRAMOS', '227.000', '23.000', '11.50', 'er', '2018-06-30', '20', '17', '\0', '2018-06-30 12:19:18', '\0');
INSERT INTO `ordenes` VALUES ('508', '1130', 'MORT-JAMONADA  (GRANEL/PIEZA)', '454.000', '23.000', '23.00', 'er', '2018-06-30', '20', '17', '\0', '2018-06-30 12:19:18', '\0');
INSERT INTO `ordenes` VALUES ('509', '1131', 'MORT. JAMONADA (150 GR.)', '150.000', '23.000', '7.60', 'er', '2018-06-30', '20', '17', '\0', '2018-06-30 12:19:18', '\0');
INSERT INTO `ordenes` VALUES ('510', '1132', 'MORT-JAMONADA (225 GR)', '225.000', '23.000', '11.40', 'er', '2018-06-30', '20', '17', '\0', '2018-06-30 12:19:18', '\0');
INSERT INTO `ordenes` VALUES ('511', '1134', 'MORT-ECONOMICA (225 GR)', '225.000', '23.000', '11.40', 'er', '2018-06-30', '20', '17', '\0', '2018-06-30 12:19:18', '\0');
INSERT INTO `ordenes` VALUES ('512', '1135', 'MORT-CON TOCINO (225GR)', '225.000', '23.000', '11.40', 'er', '2018-06-30', '20', '17', '\0', '2018-06-30 12:19:18', '\0');
INSERT INTO `ordenes` VALUES ('513', '1137', 'MORT-JAMONADA DELMOR (454 GR)', '454.000', '23.000', '23.00', 'er', '2018-06-30', '20', '17', '\0', '2018-06-30 12:19:18', '\0');
INSERT INTO `ordenes` VALUES ('514', '1190', 'MORT-CON TOCINO (150 GR.)', '150.000', '23.000', '7.60', 'er', '2018-06-30', '20', '17', '\0', '2018-06-30 12:19:18', '\0');
INSERT INTO `ordenes` VALUES ('515', '1193', 'MORT- CON TOCINO DELMOR (454 GR)', '454.000', '23.000', '23.00', 'er', '2018-06-30', '20', '17', '\0', '2018-06-30 12:19:18', '\0');
INSERT INTO `ordenes` VALUES ('516', '1204', 'SALCHICHA HOT DOG 454GR', '454.000', '23.000', '23.00', 'er', '2018-06-30', '20', '17', '\0', '2018-06-30 12:19:18', '\0');
INSERT INTO `ordenes` VALUES ('517', '1210', 'HOT DOG (170 GR.)', '170.000', '23.000', '8.61', 'er', '2018-06-30', '20', '17', '\0', '2018-06-30 12:19:18', '\0');
INSERT INTO `ordenes` VALUES ('518', '1214', 'SALCHICHA - POPULAR        (GRANEL)( 100 UND)', '454.000', '23.000', '23.00', 'er', '2018-06-30', '20', '17', '\0', '2018-06-30 12:19:18', '\0');
INSERT INTO `ordenes` VALUES ('519', '1217', 'SALCHI. HOT DOG POPUL. ( 22 UNDS)  (0409 GR.)', '409.000', '23.000', '20.72', 'er', '2018-06-30', '20', '17', '\0', '2018-06-30 12:19:18', '\0');
INSERT INTO `ordenes` VALUES ('520', '1218', 'SALCHI. HOT DOG  POPUL. (12 UND)   (260 GR.)', '260.000', '23.000', '13.17', 'er', '2018-06-30', '20', '17', '\0', '2018-06-30 12:19:18', '\0');
INSERT INTO `ordenes` VALUES ('521', '1221', 'SALAMI         PIEZA        (GRANEL)', '454.000', '23.000', '23.00', 'er', '2018-06-30', '20', '17', '\0', '2018-06-30 12:19:18', '\0');
INSERT INTO `ordenes` VALUES ('522', '1223', 'SALAMI PREMIUM 150', '150.000', '23.000', '7.60', 'er', '2018-06-30', '20', '17', '\0', '2018-06-30 12:19:18', '\0');
INSERT INTO `ordenes` VALUES ('523', '1227', 'SALAMI  CORTADO PREMIUN PIZZA(1224)/ PARA SUPER', '454.000', '23.000', '23.00', 'er', '2018-06-30', '20', '17', '\0', '2018-06-30 12:19:18', '\0');
INSERT INTO `ordenes` VALUES ('524', '1230', 'PEPERONI GRANEL', '454.000', '23.000', '23.00', 'er', '2018-06-30', '20', '17', '\0', '2018-06-30 12:19:18', '\0');
INSERT INTO `ordenes` VALUES ('525', '1231', 'PEPERONI 1000 (GRANEL)', '454.000', '23.000', '23.00', 'er', '2018-06-30', '20', '17', '\0', '2018-06-30 12:19:18', '\0');
INSERT INTO `ordenes` VALUES ('526', '1232', 'PEPERONI 454 GR', '454.000', '23.000', '23.00', 'er', '2018-06-30', '20', '17', '\0', '2018-06-30 12:19:18', '\0');
INSERT INTO `ordenes` VALUES ('527', '1233', 'SALAMI PREMIUM 454 GR', '454.000', '23.000', '23.00', 'er', '2018-06-30', '20', '17', '\0', '2018-06-30 12:19:18', '\0');
INSERT INTO `ordenes` VALUES ('528', '1234', 'SALAMI PREMIUN 1000 (GRANEL)', '454.000', '23.000', '23.00', 'er', '2018-06-30', '20', '17', '\0', '2018-06-30 12:19:18', '\0');
INSERT INTO `ordenes` VALUES ('529', '1109', 'MORT-BOLOGNA (225 GR) (1102)', '225.000', '23.000', '11.40', 'HEIDI', '2018-07-03', '20', '17', '\0', '2018-07-02 10:13:42', '\0');
INSERT INTO `ordenes` VALUES ('530', '1111', 'MORT-CHILTOMA  (GRANEL / PIEZA)', '454.000', '23.000', '23.00', 'HEIDI', '2018-07-03', '20', '17', '\0', '2018-07-02 10:13:42', '\0');
INSERT INTO `ordenes` VALUES ('531', '1112', 'MORT-CHILTOMA  (150 GR)', '150.000', '23.000', '7.60', 'HEIDI', '2018-07-03', '20', '17', '\0', '2018-07-02 10:13:42', '\0');
INSERT INTO `ordenes` VALUES ('532', '1113', 'MORT-CHILTOMA  (225 GR)', '225.000', '23.000', '11.40', 'HEIDI', '2018-07-03', '20', '17', '\0', '2018-07-02 10:13:42', '\0');

-- ----------------------------
-- Table structure for ordenes_s
-- ----------------------------
DROP TABLE IF EXISTS `ordenes_s`;
CREATE TABLE `ordenes_s` (
  `IdOrdenS` int(11) NOT NULL AUTO_INCREMENT,
  `Codigo` int(11) DEFAULT NULL,
  `Descripcion` varchar(255) DEFAULT NULL,
  `GR/lb` decimal(10,0) DEFAULT NULL,
  `Unidades` decimal(10,0) DEFAULT NULL,
  `LBS` varchar(255) DEFAULT NULL,
  `Vendedor` varchar(255) DEFAULT NULL,
  `FechaEntrega` date DEFAULT NULL,
  `Ruta` int(11) DEFAULT NULL,
  `Usuario` varchar(255) DEFAULT NULL,
  `Cliente` int(11) DEFAULT NULL,
  `Estado` bit(1) DEFAULT NULL,
  `FechaCreacion` date DEFAULT NULL,
  `Preventa` bit(1) DEFAULT NULL,
  PRIMARY KEY (`IdOrdenS`)
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ordenes_s
-- ----------------------------
INSERT INTO `ordenes_s` VALUES ('1', '1101', 'MORT-BOLOGNA     (GRANEL)', '454', '32', '32.00', 'prueba', '2018-07-03', '9', '15', '1', '', '2018-07-04', '\0');
INSERT INTO `ordenes_s` VALUES ('2', '1107', 'MORT-BOLOGNA DELMOR (454 GR)', '454', '23', '23.00', 'prueba', '2018-07-03', '9', '15', '1', '', '2018-07-04', '\0');
INSERT INTO `ordenes_s` VALUES ('3', '1109', 'MORT-BOLOGNA (225 GR) (1102)', '225', '23', '11.40', 'prueba', '2018-07-03', '9', '15', '1', '', '2018-07-04', '\0');
INSERT INTO `ordenes_s` VALUES ('4', '1101', 'MORT-BOLOGNA     (GRANEL)', '454', '23', '23.00', 'prueba2', '2018-07-03', '9', '15', '2', '', '2018-07-04', '\0');
INSERT INTO `ordenes_s` VALUES ('5', '1107', 'MORT-BOLOGNA DELMOR (454 GR)', '454', '23', '23.00', 'prueba2', '2018-07-04', '9', '15', '2', '', '2018-07-04', '\0');
INSERT INTO `ordenes_s` VALUES ('6', '1109', 'MORT-BOLOGNA (225 GR) (1102)', '225', '23', '11.40', 'prueba2', '2018-07-04', '9', '15', '2', '', '2018-07-04', '\0');
INSERT INTO `ordenes_s` VALUES ('7', '1111', 'MORT-CHILTOMA  (GRANEL / PIEZA)', '454', '23', '23.00', 'prueba2', '2018-07-04', '9', '15', '2', '', '2018-07-04', '\0');
INSERT INTO `ordenes_s` VALUES ('8', '1112', 'MORT-CHILTOMA  (150 GR)', '150', '23', '7.60', 'prueba2', '2018-07-04', '9', '15', '2', '', '2018-07-04', '\0');
INSERT INTO `ordenes_s` VALUES ('9', '1113', 'MORT-CHILTOMA  (225 GR)', '225', '23', '11.40', 'prueba2', '2018-07-04', '9', '15', '2', '', '2018-07-04', '\0');
INSERT INTO `ordenes_s` VALUES ('10', '1117', 'MORT-POPULAR A GRANEL (PIEZA)', '454', '23', '23.00', 'prueba2', '2018-07-04', '9', '15', '2', '', '2018-07-04', '\0');
INSERT INTO `ordenes_s` VALUES ('11', '1119', 'MORT-POPULAR (PAQUETE)', '454', '23', '23.00', 'prueba2', '2018-07-04', '9', '15', '2', '', '2018-07-04', '\0');
INSERT INTO `ordenes_s` VALUES ('12', '1121', 'MORT-ECONOMICA  (GRANEL/PIEZA)', '454', '23', '23.00', 'prueba2', '2018-07-04', '9', '15', '2', '', '2018-07-04', '\0');
INSERT INTO `ordenes_s` VALUES ('13', '1123', 'MORT-ECONOMICA (125 GR)', '125', '23', '6.33', 'prueba2', '2018-07-04', '9', '15', '2', '', '2018-07-04', '\0');
INSERT INTO `ordenes_s` VALUES ('14', '1126', 'MORT-ECONOMICA (454 GR)', '454', '23', '23.00', 'prueba2', '2018-07-04', '9', '15', '2', '', '2018-07-04', '\0');
INSERT INTO `ordenes_s` VALUES ('15', '1127', 'MORT-POPULAR (½) 227 GRAMOS', '227', '23', '11.50', 'prueba2', '2018-07-04', '9', '15', '2', '', '2018-07-04', '\0');
INSERT INTO `ordenes_s` VALUES ('16', '1101', 'MORT-BOLOGNA     (GRANEL)', '454', '23', '23.00', 'ee', '2018-07-04', '9', '15', '3', '', '2018-07-04', '\0');
INSERT INTO `ordenes_s` VALUES ('17', '1107', 'MORT-BOLOGNA DELMOR (454 GR)', '454', '23', '23.00', 'ee', '2018-07-04', '9', '15', '3', '', '2018-07-04', '\0');
INSERT INTO `ordenes_s` VALUES ('18', '1109', 'MORT-BOLOGNA (225 GR) (1102)', '225', '23', '11.40', 'ee', '2018-07-04', '9', '15', '3', '', '2018-07-04', '\0');
INSERT INTO `ordenes_s` VALUES ('19', '1111', 'MORT-CHILTOMA  (GRANEL / PIEZA)', '454', '23', '23.00', 'ee', '2018-07-04', '9', '15', '3', '', '2018-07-04', '\0');
INSERT INTO `ordenes_s` VALUES ('20', '1112', 'MORT-CHILTOMA  (150 GR)', '150', '23', '7.60', 'ee', '2018-07-04', '9', '15', '3', '', '2018-07-04', '\0');
INSERT INTO `ordenes_s` VALUES ('21', '1113', 'MORT-CHILTOMA  (225 GR)', '225', '23', '11.40', 'ee', '2018-07-04', '9', '15', '3', '', '2018-07-04', '\0');
INSERT INTO `ordenes_s` VALUES ('22', '1117', 'MORT-POPULAR A GRANEL (PIEZA)', '454', '23', '23.00', 'ee', '2018-07-04', '9', '15', '3', '', '2018-07-04', '\0');
INSERT INTO `ordenes_s` VALUES ('23', '1119', 'MORT-POPULAR (PAQUETE)', '454', '23', '23.00', 'ee', '2018-07-04', '9', '15', '3', '', '2018-07-04', '\0');
INSERT INTO `ordenes_s` VALUES ('24', '1121', 'MORT-ECONOMICA  (GRANEL/PIEZA)', '454', '23', '23.00', 'ee', '2018-07-04', '9', '15', '3', '', '2018-07-04', '\0');
INSERT INTO `ordenes_s` VALUES ('25', '1123', 'MORT-ECONOMICA (125 GR)', '125', '23', '6.33', 'ee', '2018-07-04', '9', '15', '3', '', '2018-07-04', '\0');
INSERT INTO `ordenes_s` VALUES ('26', '1126', 'MORT-ECONOMICA (454 GR)', '454', '23', '23.00', 'ee', '2018-07-04', '9', '15', '3', '', '2018-07-04', '\0');
INSERT INTO `ordenes_s` VALUES ('27', '1127', 'MORT-POPULAR (½) 227 GRAMOS', '227', '23', '11.50', 'ee', '2018-07-04', '9', '15', '3', '', '2018-07-04', '\0');
INSERT INTO `ordenes_s` VALUES ('28', '1101', 'MORT-BOLOGNA     (GRANEL)', '454', '23', '23.00', 'eer', '2018-07-04', '9', '15', '5', '', '2018-07-04', '\0');
INSERT INTO `ordenes_s` VALUES ('29', '1107', 'MORT-BOLOGNA DELMOR (454 GR)', '454', '23', '23.00', 'eer', '2018-07-04', '9', '15', '5', '', '2018-07-04', '\0');
INSERT INTO `ordenes_s` VALUES ('30', '1109', 'MORT-BOLOGNA (225 GR) (1102)', '225', '23', '11.40', 'eer', '2018-07-04', '9', '15', '5', '', '2018-07-04', '\0');
INSERT INTO `ordenes_s` VALUES ('31', '1111', 'MORT-CHILTOMA  (GRANEL / PIEZA)', '454', '23', '23.00', 'eer', '2018-07-04', '9', '15', '5', '', '2018-07-04', '\0');
INSERT INTO `ordenes_s` VALUES ('32', '1112', 'MORT-CHILTOMA  (150 GR)', '150', '23', '7.60', 'eer', '2018-07-04', '9', '15', '5', '', '2018-07-04', '\0');
INSERT INTO `ordenes_s` VALUES ('33', '1113', 'MORT-CHILTOMA  (225 GR)', '225', '23', '11.40', 'eer', '2018-07-04', '9', '15', '5', '', '2018-07-04', '\0');
INSERT INTO `ordenes_s` VALUES ('34', '1117', 'MORT-POPULAR A GRANEL (PIEZA)', '454', '23', '23.00', 'eer', '2018-07-04', '9', '15', '5', '', '2018-07-04', '\0');
INSERT INTO `ordenes_s` VALUES ('35', '1119', 'MORT-POPULAR (PAQUETE)', '454', '23', '23.00', 'eer', '2018-07-04', '9', '15', '5', '', '2018-07-04', '\0');
INSERT INTO `ordenes_s` VALUES ('36', '1121', 'MORT-ECONOMICA  (GRANEL/PIEZA)', '454', '23', '23.00', 'eer', '2018-07-04', '9', '15', '5', '', '2018-07-04', '\0');
INSERT INTO `ordenes_s` VALUES ('37', '1123', 'MORT-ECONOMICA (125 GR)', '125', '23', '6.33', 'eer', '2018-07-04', '9', '15', '5', '', '2018-07-04', '\0');
INSERT INTO `ordenes_s` VALUES ('38', '1126', 'MORT-ECONOMICA (454 GR)', '454', '23', '23.00', 'eer', '2018-07-04', '9', '15', '5', '', '2018-07-04', '\0');
INSERT INTO `ordenes_s` VALUES ('39', '1127', 'MORT-POPULAR (½) 227 GRAMOS', '227', '23', '11.50', 'eer', '2018-07-04', '9', '15', '5', '', '2018-07-04', '\0');
INSERT INTO `ordenes_s` VALUES ('40', '1130', 'MORT-JAMONADA  (GRANEL/PIEZA)', '454', '23', '23.00', 'eer', '2018-07-04', '9', '15', '5', '', '2018-07-04', '\0');
INSERT INTO `ordenes_s` VALUES ('41', '1131', 'MORT. JAMONADA (150 GR.)', '150', '23', '7.60', 'eer', '2018-07-04', '9', '15', '5', '', '2018-07-04', '\0');
INSERT INTO `ordenes_s` VALUES ('42', '1132', 'MORT-JAMONADA (225 GR)', '225', '23', '11.40', 'eer', '2018-07-04', '9', '15', '5', '', '2018-07-04', '\0');
INSERT INTO `ordenes_s` VALUES ('43', '1134', 'MORT-ECONOMICA (225 GR)', '225', '23', '11.40', 'eer', '2018-07-04', '9', '15', '5', '', '2018-07-04', '\0');
INSERT INTO `ordenes_s` VALUES ('44', '1135', 'MORT-CON TOCINO (225GR)', '225', '23', '11.40', 'eer', '2018-07-04', '9', '15', '5', '', '2018-07-04', '\0');
INSERT INTO `ordenes_s` VALUES ('45', '1101', 'MORT-BOLOGNA     (GRANEL)', '454', '23', '23.00', 'ruta 11', '2018-07-04', '11', '15', '56', '', '2018-07-04', '\0');
INSERT INTO `ordenes_s` VALUES ('46', '1107', 'MORT-BOLOGNA DELMOR (454 GR)', '454', '23', '23.00', 'ruta 11', '2018-07-04', '11', '15', '56', '', '2018-07-04', '\0');
INSERT INTO `ordenes_s` VALUES ('47', '1109', 'MORT-BOLOGNA (225 GR) (1102)', '225', '23', '11.40', 'ruta 11', '2018-07-04', '11', '15', '56', '', '2018-07-04', '\0');
INSERT INTO `ordenes_s` VALUES ('48', '1111', 'MORT-CHILTOMA  (GRANEL / PIEZA)', '454', '23', '23.00', 'ruta 11', '2018-07-04', '11', '15', '56', '', '2018-07-04', '\0');
INSERT INTO `ordenes_s` VALUES ('49', '1112', 'MORT-CHILTOMA  (150 GR)', '150', '23', '7.60', 'ruta 11', '2018-07-04', '11', '15', '56', '', '2018-07-04', '\0');
INSERT INTO `ordenes_s` VALUES ('50', '1113', 'MORT-CHILTOMA  (225 GR)', '225', '23', '11.40', 'ruta 11', '2018-07-04', '11', '15', '56', '', '2018-07-04', '\0');
INSERT INTO `ordenes_s` VALUES ('51', '1117', 'MORT-POPULAR A GRANEL (PIEZA)', '454', '23', '23.00', 'ruta 11', '2018-07-04', '11', '15', '56', '', '2018-07-04', '\0');
INSERT INTO `ordenes_s` VALUES ('52', '1119', 'MORT-POPULAR (PAQUETE)', '454', '23', '23.00', 'ruta 11', '2018-07-04', '11', '15', '56', '', '2018-07-04', '\0');
INSERT INTO `ordenes_s` VALUES ('53', '1121', 'MORT-ECONOMICA  (GRANEL/PIEZA)', '454', '23', '23.00', 'ruta 11', '2018-07-04', '11', '15', '56', '', '2018-07-04', '\0');
INSERT INTO `ordenes_s` VALUES ('54', '1123', 'MORT-ECONOMICA (125 GR)', '125', '23', '6.33', 'ruta 11', '2018-07-04', '11', '15', '56', '', '2018-07-04', '\0');
INSERT INTO `ordenes_s` VALUES ('55', '1101', 'MORT-BOLOGNA     (GRANEL)', '454', '23', '23.00', 'dd', '2018-07-04', '11', '15', '57', '', '2018-07-04', '\0');
INSERT INTO `ordenes_s` VALUES ('56', '1107', 'MORT-BOLOGNA DELMOR (454 GR)', '454', '23', '23.00', 'dd', '2018-07-04', '11', '15', '57', '', '2018-07-04', '\0');
INSERT INTO `ordenes_s` VALUES ('57', '1109', 'MORT-BOLOGNA (225 GR) (1102)', '225', '23', '11.40', 'dd', '2018-07-04', '11', '15', '57', '', '2018-07-04', '\0');
INSERT INTO `ordenes_s` VALUES ('58', '1111', 'MORT-CHILTOMA  (GRANEL / PIEZA)', '454', '23', '23.00', 'dd', '2018-07-04', '11', '15', '57', '', '2018-07-04', '\0');
INSERT INTO `ordenes_s` VALUES ('59', '1112', 'MORT-CHILTOMA  (150 GR)', '150', '23', '7.60', 'dd', '2018-07-04', '11', '15', '57', '', '2018-07-04', '\0');
INSERT INTO `ordenes_s` VALUES ('60', '1113', 'MORT-CHILTOMA  (225 GR)', '225', '23', '11.40', 'dd', '2018-07-04', '11', '15', '57', '', '2018-07-04', '\0');
INSERT INTO `ordenes_s` VALUES ('61', '1117', 'MORT-POPULAR A GRANEL (PIEZA)', '454', '23', '23.00', 'dd', '2018-07-04', '11', '15', '57', '', '2018-07-04', '\0');
INSERT INTO `ordenes_s` VALUES ('62', '1119', 'MORT-POPULAR (PAQUETE)', '454', '23', '23.00', 'dd', '2018-07-04', '11', '15', '57', '', '2018-07-04', '\0');
INSERT INTO `ordenes_s` VALUES ('63', '1121', 'MORT-ECONOMICA  (GRANEL/PIEZA)', '454', '23', '23.00', 'dd', '2018-07-04', '11', '15', '57', '', '2018-07-04', '\0');
INSERT INTO `ordenes_s` VALUES ('64', '1123', 'MORT-ECONOMICA (125 GR)', '125', '23', '6.33', 'dd', '2018-07-04', '11', '15', '57', '', '2018-07-04', '\0');
INSERT INTO `ordenes_s` VALUES ('65', '1126', 'MORT-ECONOMICA (454 GR)', '454', '23', '23.00', 'dd', '2018-07-04', '11', '15', '57', '', '2018-07-04', '\0');
INSERT INTO `ordenes_s` VALUES ('66', '1127', 'MORT-POPULAR (½) 227 GRAMOS', '227', '23', '11.50', 'dd', '2018-07-04', '11', '15', '57', '', '2018-07-04', '\0');
INSERT INTO `ordenes_s` VALUES ('67', '1101', 'MORT-BOLOGNA     (GRANEL)', '454', '23', '23.00', 'eeee', '2018-07-04', '11', '15', '58', '', '2018-07-04', '\0');
INSERT INTO `ordenes_s` VALUES ('68', '1107', 'MORT-BOLOGNA DELMOR (454 GR)', '454', '23', '23.00', 'eeee', '2018-07-04', '11', '15', '58', '', '2018-07-04', '\0');
INSERT INTO `ordenes_s` VALUES ('69', '1109', 'MORT-BOLOGNA (225 GR) (1102)', '225', '23', '11.40', 'eeee', '2018-07-04', '11', '15', '58', '', '2018-07-04', '\0');
INSERT INTO `ordenes_s` VALUES ('70', '1111', 'MORT-CHILTOMA  (GRANEL / PIEZA)', '454', '23', '23.00', 'eeee', '2018-07-04', '11', '15', '58', '', '2018-07-04', '\0');
INSERT INTO `ordenes_s` VALUES ('71', '1112', 'MORT-CHILTOMA  (150 GR)', '150', '23', '7.60', 'eeee', '2018-07-04', '11', '15', '58', '', '2018-07-04', '\0');
INSERT INTO `ordenes_s` VALUES ('72', '1113', 'MORT-CHILTOMA  (225 GR)', '225', '23', '11.40', 'eeee', '2018-07-04', '11', '15', '58', '', '2018-07-04', '\0');
INSERT INTO `ordenes_s` VALUES ('73', '1117', 'MORT-POPULAR A GRANEL (PIEZA)', '454', '23', '23.00', 'eeee', '2018-07-04', '11', '15', '58', '', '2018-07-04', '\0');
INSERT INTO `ordenes_s` VALUES ('74', '1119', 'MORT-POPULAR (PAQUETE)', '454', '23', '23.00', 'eeee', '2018-07-04', '11', '15', '58', '', '2018-07-04', '\0');
INSERT INTO `ordenes_s` VALUES ('75', '1121', 'MORT-ECONOMICA  (GRANEL/PIEZA)', '454', '32', '32.00', 'eeee', '2018-07-04', '11', '15', '58', '', '2018-07-04', '\0');
INSERT INTO `ordenes_s` VALUES ('76', '1123', 'MORT-ECONOMICA (125 GR)', '125', '23', '6.33', 'eeee', '2018-07-04', '11', '15', '58', '', '2018-07-04', '\0');
INSERT INTO `ordenes_s` VALUES ('77', '1101', 'MORT-BOLOGNA     (GRANEL)', '454', '23', '23.00', 'prueba3', '2018-07-04', '13', '15', '29', '', '2018-07-04', '\0');
INSERT INTO `ordenes_s` VALUES ('78', '1107', 'MORT-BOLOGNA DELMOR (454 GR)', '454', '3', '3.00', 'prueba3', '2018-07-04', '13', '15', '29', '', '2018-07-04', '\0');
INSERT INTO `ordenes_s` VALUES ('79', '1109', 'MORT-BOLOGNA (225 GR) (1102)', '225', '4', '1.98', 'prueba3', '2018-07-04', '13', '15', '29', '', '2018-07-04', '\0');
INSERT INTO `ordenes_s` VALUES ('80', '1111', 'MORT-CHILTOMA  (GRANEL / PIEZA)', '454', '4', '4.00', 'prueba3', '2018-07-04', '13', '15', '29', '', '2018-07-04', '\0');
INSERT INTO `ordenes_s` VALUES ('81', '1112', 'MORT-CHILTOMA  (150 GR)', '150', '5', '1.65', 'prueba3', '2018-07-04', '13', '15', '29', '', '2018-07-04', '\0');
INSERT INTO `ordenes_s` VALUES ('82', '1113', 'MORT-CHILTOMA  (225 GR)', '225', '6', '2.97', 'prueba3', '2018-07-04', '13', '15', '29', '', '2018-07-04', '\0');
INSERT INTO `ordenes_s` VALUES ('83', '1117', 'MORT-POPULAR A GRANEL (PIEZA)', '454', '7', '7.00', 'prueba3', '2018-07-04', '13', '15', '29', '', '2018-07-04', '\0');
INSERT INTO `ordenes_s` VALUES ('84', '1119', 'MORT-POPULAR (PAQUETE)', '454', '7', '7.00', 'prueba3', '2018-07-04', '13', '15', '29', '', '2018-07-04', '\0');
INSERT INTO `ordenes_s` VALUES ('85', '1121', 'MORT-ECONOMICA  (GRANEL/PIEZA)', '454', '7', '7.00', 'prueba3', '2018-07-04', '13', '15', '29', '', '2018-07-04', '\0');
INSERT INTO `ordenes_s` VALUES ('86', '1123', 'MORT-ECONOMICA (125 GR)', '125', '56', '15.42', 'prueba3', '2018-07-04', '13', '15', '29', '', '2018-07-04', '\0');
INSERT INTO `ordenes_s` VALUES ('87', '1126', 'MORT-ECONOMICA (454 GR)', '454', '5', '5.00', 'prueba3', '2018-07-04', '13', '15', '29', '', '2018-07-04', '\0');
INSERT INTO `ordenes_s` VALUES ('88', '1101', 'MORT-BOLOGNA     (GRANEL)', '454', '23', '23.00', 'tttt', '2018-07-04', '13', '15', '30', '', '2018-07-04', '\0');
INSERT INTO `ordenes_s` VALUES ('89', '1107', 'MORT-BOLOGNA DELMOR (454 GR)', '454', '23', '23.00', 'tttt', '2018-07-04', '13', '15', '30', '', '2018-07-04', '\0');
INSERT INTO `ordenes_s` VALUES ('90', '1109', 'MORT-BOLOGNA (225 GR) (1102)', '225', '23', '11.40', 'tttt', '2018-07-04', '13', '15', '30', '', '2018-07-04', '\0');
INSERT INTO `ordenes_s` VALUES ('91', '1111', 'MORT-CHILTOMA  (GRANEL / PIEZA)', '454', '23', '23.00', 'tttt', '2018-07-04', '13', '15', '30', '', '2018-07-04', '\0');
INSERT INTO `ordenes_s` VALUES ('92', '1112', 'MORT-CHILTOMA  (150 GR)', '150', '23', '7.60', 'tttt', '2018-07-04', '13', '15', '30', '', '2018-07-04', '\0');
INSERT INTO `ordenes_s` VALUES ('93', '1113', 'MORT-CHILTOMA  (225 GR)', '225', '23', '11.40', 'tttt', '2018-07-04', '13', '15', '30', '', '2018-07-04', '\0');
INSERT INTO `ordenes_s` VALUES ('94', '1117', 'MORT-POPULAR A GRANEL (PIEZA)', '454', '23', '23.00', 'tttt', '2018-07-04', '13', '15', '30', '', '2018-07-04', '\0');
INSERT INTO `ordenes_s` VALUES ('95', '1119', 'MORT-POPULAR (PAQUETE)', '454', '23', '23.00', 'tttt', '2018-07-04', '13', '15', '30', '', '2018-07-04', '\0');
INSERT INTO `ordenes_s` VALUES ('96', '1121', 'MORT-ECONOMICA  (GRANEL/PIEZA)', '454', '23', '23.00', 'tttt', '2018-07-04', '13', '15', '30', '', '2018-07-04', '\0');
INSERT INTO `ordenes_s` VALUES ('97', '1123', 'MORT-ECONOMICA (125 GR)', '125', '23', '6.33', 'tttt', '2018-07-04', '13', '15', '30', '', '2018-07-04', '\0');
INSERT INTO `ordenes_s` VALUES ('98', '1126', 'MORT-ECONOMICA (454 GR)', '454', '23', '23.00', 'tttt', '2018-07-04', '13', '15', '30', '', '2018-07-04', '\0');
INSERT INTO `ordenes_s` VALUES ('99', '1127', 'MORT-POPULAR (½) 227 GRAMOS', '227', '23', '11.50', 'tttt', '2018-07-04', '13', '15', '30', '', '2018-07-04', '\0');
INSERT INTO `ordenes_s` VALUES ('100', '1130', 'MORT-JAMONADA  (GRANEL/PIEZA)', '454', '23', '23.00', 'tttt', '2018-07-04', '13', '15', '30', '', '2018-07-04', '\0');
INSERT INTO `ordenes_s` VALUES ('101', '1131', 'MORT. JAMONADA (150 GR.)', '150', '23', '7.60', 'tttt', '2018-07-04', '13', '15', '30', '', '2018-07-04', '\0');
INSERT INTO `ordenes_s` VALUES ('102', '1101', 'MORT-BOLOGNA     (GRANEL)', '454', '23', '23.00', 'yyyyy', '2018-07-04', '13', '15', '31', '', '2018-07-04', '\0');
INSERT INTO `ordenes_s` VALUES ('103', '1107', 'MORT-BOLOGNA DELMOR (454 GR)', '454', '23', '23.00', 'yyyyy', '2018-07-04', '13', '15', '31', '', '2018-07-04', '\0');
INSERT INTO `ordenes_s` VALUES ('104', '1109', 'MORT-BOLOGNA (225 GR) (1102)', '225', '23', '11.40', 'yyyyy', '2018-07-04', '13', '15', '31', '', '2018-07-04', '\0');
INSERT INTO `ordenes_s` VALUES ('105', '1111', 'MORT-CHILTOMA  (GRANEL / PIEZA)', '454', '23', '23.00', 'yyyyy', '2018-07-04', '13', '15', '31', '', '2018-07-04', '\0');
INSERT INTO `ordenes_s` VALUES ('106', '1112', 'MORT-CHILTOMA  (150 GR)', '150', '23', '7.60', 'yyyyy', '2018-07-04', '13', '15', '31', '', '2018-07-04', '\0');
INSERT INTO `ordenes_s` VALUES ('107', '1113', 'MORT-CHILTOMA  (225 GR)', '225', '23', '11.40', 'yyyyy', '2018-07-04', '13', '15', '31', '', '2018-07-04', '\0');
INSERT INTO `ordenes_s` VALUES ('108', '1117', 'MORT-POPULAR A GRANEL (PIEZA)', '454', '23', '23.00', 'yyyyy', '2018-07-04', '13', '15', '31', '', '2018-07-04', '\0');
INSERT INTO `ordenes_s` VALUES ('109', '1119', 'MORT-POPULAR (PAQUETE)', '454', '23', '23.00', 'yyyyy', '2018-07-04', '13', '15', '31', '', '2018-07-04', '\0');
INSERT INTO `ordenes_s` VALUES ('110', '1121', 'MORT-ECONOMICA  (GRANEL/PIEZA)', '454', '23', '23.00', 'yyyyy', '2018-07-04', '13', '15', '31', '', '2018-07-04', '\0');
INSERT INTO `ordenes_s` VALUES ('111', '1123', 'MORT-ECONOMICA (125 GR)', '125', '23', '6.33', 'yyyyy', '2018-07-04', '13', '15', '31', '', '2018-07-04', '\0');
INSERT INTO `ordenes_s` VALUES ('112', '1126', 'MORT-ECONOMICA (454 GR)', '454', '23', '23.00', 'yyyyy', '2018-07-04', '13', '15', '31', '', '2018-07-04', '\0');
INSERT INTO `ordenes_s` VALUES ('113', '1101', 'MORT-BOLOGNA     (GRANEL)', '454', '54', '54.00', 'prueba', '2018-07-05', '24', '15', '100', '\0', '2018-07-05', '\0');
INSERT INTO `ordenes_s` VALUES ('114', '1107', 'MORT-BOLOGNA DELMOR (454 GR)', '454', '23', '23.00', 'prueba', '2018-07-05', '24', '15', '100', '\0', '2018-07-05', '\0');
INSERT INTO `ordenes_s` VALUES ('115', '1109', 'MORT-BOLOGNA (225 GR) (1102)', '225', '23', '11.40', 'prueba', '2018-07-05', '24', '15', '100', '\0', '2018-07-05', '\0');
INSERT INTO `ordenes_s` VALUES ('116', '1111', 'MORT-CHILTOMA  (GRANEL / PIEZA)', '454', '23', '23.00', 'prueba', '2018-07-05', '24', '15', '100', '\0', '2018-07-05', '\0');
INSERT INTO `ordenes_s` VALUES ('117', '1112', 'MORT-CHILTOMA  (150 GR)', '150', '23', '7.60', 'prueba', '2018-07-05', '24', '15', '100', '\0', '2018-07-05', '\0');
INSERT INTO `ordenes_s` VALUES ('119', '1112', 'MORT-CHILTOMA  (150 GR)', '150', '34', '11.23', 'prueba', '2018-07-04', '9', '15', '1', '', '2018-07-07', '\0');
INSERT INTO `ordenes_s` VALUES ('139', '1101', 'MORT-BOLOGNA     (GRANEL)', '454', '23', '23.00', 'eeeeee', '2018-07-09', '12', '15', '2', '\0', '2018-07-09', '\0');
INSERT INTO `ordenes_s` VALUES ('140', '1107', 'MORT-BOLOGNA DELMOR (454 GR)', '454', '23', '23.00', 'eeeeee', '2018-07-09', '12', '15', '2', '\0', '2018-07-09', '\0');
INSERT INTO `ordenes_s` VALUES ('141', '1109', 'MORT-BOLOGNA (225 GR) (1102)', '225', '23', '11.40', 'eeeeee', '2018-07-09', '12', '15', '2', '\0', '2018-07-09', '\0');
INSERT INTO `ordenes_s` VALUES ('142', '1111', 'MORT-CHILTOMA  (GRANEL / PIEZA)', '454', '23', '23.00', 'eeeeee', '2018-07-09', '12', '15', '2', '\0', '2018-07-09', '\0');
INSERT INTO `ordenes_s` VALUES ('143', '1112', 'MORT-CHILTOMA  (150 GR)', '150', '23', '7.60', 'eeeeee', '2018-07-09', '12', '15', '2', '\0', '2018-07-09', '\0');
INSERT INTO `ordenes_s` VALUES ('144', '1113', 'MORT-CHILTOMA  (225 GR)', '225', '23', '11.40', 'eeeeee', '2018-07-09', '12', '15', '2', '\0', '2018-07-09', '\0');
INSERT INTO `ordenes_s` VALUES ('145', '1117', 'MORT-POPULAR A GRANEL (PIEZA)', '454', '23', '23.00', 'eeeeee', '2018-07-09', '12', '15', '2', '\0', '2018-07-09', '\0');
INSERT INTO `ordenes_s` VALUES ('146', '1119', 'MORT-POPULAR (PAQUETE)', '454', '23', '23.00', 'eeeeee', '2018-07-09', '12', '15', '2', '\0', '2018-07-09', '\0');
INSERT INTO `ordenes_s` VALUES ('147', '1121', 'MORT-ECONOMICA  (GRANEL/PIEZA)', '454', '23', '23.00', 'eeeeee', '2018-07-09', '12', '15', '2', '\0', '2018-07-09', '\0');
INSERT INTO `ordenes_s` VALUES ('148', '1123', 'MORT-ECONOMICA (125 GR)', '125', '23', '6.33', 'eeeeee', '2018-07-09', '12', '15', '2', '\0', '2018-07-09', '\0');
INSERT INTO `ordenes_s` VALUES ('149', '1126', 'MORT-ECONOMICA (454 GR)', '454', '23', '23.00', 'eeeeee', '2018-07-09', '12', '15', '2', '\0', '2018-07-09', '\0');
INSERT INTO `ordenes_s` VALUES ('150', '1127', 'MORT-POPULAR (½) 227 GRAMOS', '227', '23', '11.50', 'eeeeee', '2018-07-09', '12', '15', '2', '\0', '2018-07-09', '\0');
INSERT INTO `ordenes_s` VALUES ('151', '1130', 'MORT-JAMONADA  (GRANEL/PIEZA)', '454', '23', '23.00', 'eeeeee', '2018-07-09', '12', '15', '2', '\0', '2018-07-09', '\0');
INSERT INTO `ordenes_s` VALUES ('152', '1131', 'MORT. JAMONADA (150 GR.)', '150', '23', '7.60', 'eeeeee', '2018-07-09', '12', '15', '2', '\0', '2018-07-09', '\0');
INSERT INTO `ordenes_s` VALUES ('153', '1132', 'MORT-JAMONADA (225 GR)', '225', '23', '11.40', 'eeeeee', '2018-07-09', '12', '15', '2', '\0', '2018-07-09', '\0');
INSERT INTO `ordenes_s` VALUES ('154', '1134', 'MORT-ECONOMICA (225 GR)', '225', '23', '11.40', 'eeeeee', '2018-07-09', '12', '15', '2', '\0', '2018-07-09', '\0');
INSERT INTO `ordenes_s` VALUES ('155', '1135', 'MORT-CON TOCINO (225GR)', '225', '23', '11.40', 'eeeeee', '2018-07-09', '12', '15', '2', '\0', '2018-07-09', '\0');
INSERT INTO `ordenes_s` VALUES ('156', '1137', 'MORT-JAMONADA DELMOR (454 GR)', '454', '23', '23.00', 'eeeeee', '2018-07-09', '12', '15', '2', '\0', '2018-07-09', '\0');
INSERT INTO `ordenes_s` VALUES ('157', '1190', 'MORT-CON TOCINO (150 GR.)', '150', '23', '7.60', 'eeeeee', '2018-07-09', '12', '15', '2', '\0', '2018-07-09', '\0');
INSERT INTO `ordenes_s` VALUES ('158', '1193', 'MORT- CON TOCINO DELMOR (454 GR)', '454', '23', '23.00', 'eeeeee', '2018-07-09', '12', '15', '2', '\0', '2018-07-09', '\0');
INSERT INTO `ordenes_s` VALUES ('159', '1204', 'SALCHICHA HOT DOG 454GR', '454', '23', '23.00', 'eeeeee', '2018-07-09', '12', '15', '2', '\0', '2018-07-09', '\0');
INSERT INTO `ordenes_s` VALUES ('160', '1210', 'HOT DOG (170 GR.)', '170', '23', '8.61', 'eeeeee', '2018-07-09', '12', '15', '2', '\0', '2018-07-09', '\0');
INSERT INTO `ordenes_s` VALUES ('161', '1214', 'SALCHICHA - POPULAR        (GRANEL)( 100 UND)', '454', '23', '23.00', 'eeeeee', '2018-07-09', '12', '15', '2', '\0', '2018-07-09', '\0');
INSERT INTO `ordenes_s` VALUES ('162', '1217', 'SALCHI. HOT DOG POPUL. ( 22 UNDS)  (0409 GR.)', '409', '23', '20.72', 'eeeeee', '2018-07-09', '12', '15', '2', '\0', '2018-07-09', '\0');
INSERT INTO `ordenes_s` VALUES ('163', '1101', 'MORT-BOLOGNA     (GRANEL)', '454', '23', '23.00', 'ere', '2018-07-10', '9', '15', '1', '\0', '2018-07-09', '');
INSERT INTO `ordenes_s` VALUES ('164', '1107', 'MORT-BOLOGNA DELMOR (454 GR)', '454', '23', '23.00', 'ere', '2018-07-10', '9', '15', '1', '\0', '2018-07-09', '');
INSERT INTO `ordenes_s` VALUES ('165', '1109', 'MORT-BOLOGNA (225 GR) (1102)', '225', '232', '114.98', 'ere', '2018-07-10', '9', '15', '1', '\0', '2018-07-09', '');
INSERT INTO `ordenes_s` VALUES ('166', '1111', 'MORT-CHILTOMA  (GRANEL / PIEZA)', '454', '23', '23.00', 'ere', '2018-07-10', '9', '15', '1', '\0', '2018-07-09', '');
INSERT INTO `ordenes_s` VALUES ('167', '1112', 'MORT-CHILTOMA  (150 GR)', '150', '23', '7.60', 'ere', '2018-07-10', '9', '15', '1', '\0', '2018-07-09', '');
INSERT INTO `ordenes_s` VALUES ('168', '1113', 'MORT-CHILTOMA  (225 GR)', '225', '23', '11.40', 'ere', '2018-07-10', '9', '15', '1', '\0', '2018-07-09', '');
INSERT INTO `ordenes_s` VALUES ('169', '1117', 'MORT-POPULAR A GRANEL (PIEZA)', '454', '23', '23.00', 'ere', '2018-07-10', '9', '15', '1', '\0', '2018-07-09', '');
INSERT INTO `ordenes_s` VALUES ('170', '1119', 'MORT-POPULAR (PAQUETE)', '454', '23', '23.00', 'ere', '2018-07-10', '9', '15', '1', '\0', '2018-07-09', '');
INSERT INTO `ordenes_s` VALUES ('173', '1101', 'MORT-BOLOGNA     (GRANEL)', '454', '23', '23.00', 'er', '2018-06-30', '9', '15', '7', '\0', '2018-07-09', '');
INSERT INTO `ordenes_s` VALUES ('174', '1107', 'MORT-BOLOGNA DELMOR (454 GR)', '454', '23', '23.00', 'er', '2018-06-30', '9', '15', '7', '\0', '2018-07-09', '');
INSERT INTO `ordenes_s` VALUES ('175', '1109', 'MORT-BOLOGNA (225 GR) (1102)', '225', '23', '11.40', 'er', '2018-06-30', '9', '15', '7', '\0', '2018-07-09', '');
INSERT INTO `ordenes_s` VALUES ('176', '1111', 'MORT-CHILTOMA  (GRANEL / PIEZA)', '454', '23', '23.00', 'er', '2018-06-30', '9', '15', '7', '\0', '2018-07-09', '');
INSERT INTO `ordenes_s` VALUES ('177', '1112', 'MORT-CHILTOMA  (150 GR)', '150', '23', '7.60', 'er', '2018-06-30', '9', '15', '7', '\0', '2018-07-09', '');
INSERT INTO `ordenes_s` VALUES ('178', '1101', 'MORT-BOLOGNA     (GRANEL)', '454', '23', '23.00', 'er', '2018-07-09', '15', '14', '130', '\0', '2018-07-09', '');
INSERT INTO `ordenes_s` VALUES ('179', '1107', 'MORT-BOLOGNA DELMOR (454 GR)', '454', '23', '23.00', 'er', '2018-07-09', '15', '14', '130', '\0', '2018-07-09', '');
INSERT INTO `ordenes_s` VALUES ('180', '1109', 'MORT-BOLOGNA (225 GR) (1102)', '225', '23', '11.40', 'er', '2018-07-09', '15', '14', '130', '\0', '2018-07-09', '');
INSERT INTO `ordenes_s` VALUES ('181', '1101', 'MORT-BOLOGNA     (GRANEL)', '454', '12', '12.00', 'hhh', '2018-07-12', '9', '15', '79', '\0', '2018-07-11', '\0');
INSERT INTO `ordenes_s` VALUES ('182', '1107', 'MORT-BOLOGNA DELMOR (454 GR)', '454', '12', '12.00', 'hhh', '2018-07-12', '9', '15', '79', '\0', '2018-07-11', '\0');
INSERT INTO `ordenes_s` VALUES ('183', '1109', 'MORT-BOLOGNA (225 GR) (1102)', '225', '12', '5.95', 'hhh', '2018-07-12', '9', '15', '79', '\0', '2018-07-11', '\0');
INSERT INTO `ordenes_s` VALUES ('184', '1111', 'MORT-CHILTOMA  (GRANEL / PIEZA)', '454', '12', '12.00', 'hhh', '2018-07-12', '9', '15', '79', '\0', '2018-07-11', '\0');
INSERT INTO `ordenes_s` VALUES ('185', '1112', 'MORT-CHILTOMA  (150 GR)', '150', '12', '3.96', 'hhh', '2018-07-12', '9', '15', '79', '\0', '2018-07-11', '\0');
INSERT INTO `ordenes_s` VALUES ('186', '1113', 'MORT-CHILTOMA  (225 GR)', '225', '12', '5.95', 'hhh', '2018-07-12', '9', '15', '79', '\0', '2018-07-11', '\0');
INSERT INTO `ordenes_s` VALUES ('187', '1117', 'MORT-POPULAR A GRANEL (PIEZA)', '454', '12', '12.00', 'hhh', '2018-07-12', '9', '15', '79', '\0', '2018-07-11', '\0');
INSERT INTO `ordenes_s` VALUES ('188', '1119', 'MORT-POPULAR (PAQUETE)', '454', '12', '12.00', 'hhh', '2018-07-12', '9', '15', '79', '\0', '2018-07-11', '\0');
INSERT INTO `ordenes_s` VALUES ('189', '1101', 'MORT-BOLOGNA     (GRANEL)', '454', '12', '12.00', 'lllll', '2018-07-12', '13', '15', '85', '\0', '2018-07-11', '\0');
INSERT INTO `ordenes_s` VALUES ('190', '1107', 'MORT-BOLOGNA DELMOR (454 GR)', '454', '12', '12.00', 'lllll', '2018-07-12', '13', '15', '85', '\0', '2018-07-11', '\0');
INSERT INTO `ordenes_s` VALUES ('191', '1109', 'MORT-BOLOGNA (225 GR) (1102)', '225', '12', '5.95', 'lllll', '2018-07-12', '13', '15', '85', '\0', '2018-07-11', '\0');
INSERT INTO `ordenes_s` VALUES ('192', '1111', 'MORT-CHILTOMA  (GRANEL / PIEZA)', '454', '12', '12.00', 'lllll', '2018-07-12', '13', '15', '85', '\0', '2018-07-11', '\0');
INSERT INTO `ordenes_s` VALUES ('193', '1112', 'MORT-CHILTOMA  (150 GR)', '150', '12', '3.96', 'lllll', '2018-07-12', '13', '15', '85', '\0', '2018-07-11', '\0');
INSERT INTO `ordenes_s` VALUES ('194', '1113', 'MORT-CHILTOMA  (225 GR)', '225', '12', '5.95', 'lllll', '2018-07-12', '13', '15', '85', '\0', '2018-07-11', '\0');
INSERT INTO `ordenes_s` VALUES ('195', '1117', 'MORT-POPULAR A GRANEL (PIEZA)', '454', '12', '12.00', 'lllll', '2018-07-12', '13', '15', '85', '\0', '2018-07-11', '\0');
INSERT INTO `ordenes_s` VALUES ('196', '1119', 'MORT-POPULAR (PAQUETE)', '454', '12', '12.00', 'lllll', '2018-07-12', '13', '15', '85', '\0', '2018-07-11', '\0');
INSERT INTO `ordenes_s` VALUES ('197', '1121', 'MORT-ECONOMICA  (GRANEL/PIEZA)', '454', '12', '12.00', 'lllll', '2018-07-12', '13', '15', '85', '\0', '2018-07-11', '\0');
INSERT INTO `ordenes_s` VALUES ('198', '1123', 'MORT-ECONOMICA (125 GR)', '125', '12', '3.30', 'lllll', '2018-07-12', '13', '15', '85', '\0', '2018-07-11', '\0');
INSERT INTO `ordenes_s` VALUES ('199', '1126', 'MORT-ECONOMICA (454 GR)', '454', '12', '12.00', 'lllll', '2018-07-12', '13', '15', '85', '\0', '2018-07-11', '\0');

-- ----------------------------
-- Table structure for productos
-- ----------------------------
DROP TABLE IF EXISTS `productos`;
CREATE TABLE `productos` (
  `Codigo` int(11) NOT NULL,
  `Descripcion` varchar(255) DEFAULT NULL,
  `GRM` decimal(10,3) DEFAULT NULL,
  `Saldo` double(10,0) DEFAULT NULL,
  `FechaCarga` date DEFAULT NULL,
  `Estado` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of productos
-- ----------------------------
INSERT INTO `productos` VALUES ('1123', 'MORT-ECONOMICA (125 GR)', '125.000', '7043', '2018-07-11', null);
INSERT INTO `productos` VALUES ('1640', 'MORT-    POLLO  (150 GR.)', '150.000', '2238', '2018-07-11', '0');
INSERT INTO `productos` VALUES ('1137', 'MORT-JAMONADA DELMOR (454 GR)', '454.000', '1015', '2018-07-11', '0');
INSERT INTO `productos` VALUES ('1131', 'MORT. JAMONADA (150 GR.)', '150.000', '2400', '2018-07-11', '0');
INSERT INTO `productos` VALUES ('1112', 'MORT-CHILTOMA  (150 GR)', '150.000', '1', '2018-07-11', null);
INSERT INTO `productos` VALUES ('1645', 'MORT. DE PAVO', '454.000', '1084', '2018-07-11', '0');
INSERT INTO `productos` VALUES ('1109', 'MORT-BOLOGNA (225 GR) (1102)', '225.000', '1305', '2018-07-11', null);
INSERT INTO `productos` VALUES ('1127', 'MORT-POPULAR (½) 227 GRAMOS', '227.000', '4723', '2018-07-11', '0');
INSERT INTO `productos` VALUES ('1119', 'MORT-POPULAR (PAQUETE)', '454.000', '2930', '2018-07-11', null);
INSERT INTO `productos` VALUES ('1193', 'MORT- CON TOCINO DELMOR (454 GR)', '454.000', '919', '2018-07-11', '0');
INSERT INTO `productos` VALUES ('1113', 'MORT-CHILTOMA  (225 GR)', '225.000', '1872', '2018-07-11', null);
INSERT INTO `productos` VALUES ('1803', 'MORT. FRANKFURT (125 GR.)', '125.000', '2442', '2018-07-11', '0');
INSERT INTO `productos` VALUES ('1190', 'MORT-CON TOCINO (150 GR.)', '150.000', '-23', '2018-07-11', '2');
INSERT INTO `productos` VALUES ('1117', 'MORT-POPULAR A GRANEL (PIEZA)', '454.000', '1137', '2018-07-11', null);
INSERT INTO `productos` VALUES ('1132', 'MORT-JAMONADA (225 GR)', '225.000', '789', '2018-07-11', '0');
INSERT INTO `productos` VALUES ('1134', 'MORT-ECONOMICA (225 GR)', '225.000', '1329', '2018-07-11', '0');
INSERT INTO `productos` VALUES ('1107', 'MORT-BOLOGNA DELMOR (454 GR)', '454.000', '1433', '2018-07-11', null);
INSERT INTO `productos` VALUES ('1121', 'MORT-ECONOMICA  (GRANEL/PIEZA)', '454.000', '615', '2018-07-11', null);
INSERT INTO `productos` VALUES ('1111', 'MORT-CHILTOMA  (GRANEL / PIEZA)', '454.000', '340', '2018-07-11', null);
INSERT INTO `productos` VALUES ('1101', 'MORT-BOLOGNA     (GRANEL)', '454.000', '1', '2018-07-11', null);
INSERT INTO `productos` VALUES ('1130', 'MORT-JAMONADA  (GRANEL/PIEZA)', '454.000', '303', '2018-07-11', '0');
INSERT INTO `productos` VALUES ('1641', 'MORT- POLLO   (GRANEL)', '454.000', '-23', '2018-07-11', '2');
INSERT INTO `productos` VALUES ('1135', 'MORT-CON TOCINO (225GR)', '225.000', '1270', '2018-07-11', '0');
INSERT INTO `productos` VALUES ('1126', 'MORT-ECONOMICA (454 GR)', '454.000', '1106', '2018-07-11', null);
INSERT INTO `productos` VALUES ('1642', 'MORT-DE POLLO DELMOR (454 GR)', '454.000', '1926', '2018-07-11', '0');
INSERT INTO `productos` VALUES ('1245', 'SALCHICHA DESAYUNO PSMAT', '1000.000', '47', '2018-07-11', '0');
INSERT INTO `productos` VALUES ('1210', 'HOT DOG (170 GR.)', '170.000', '4633', '2018-07-11', '0');
INSERT INTO `productos` VALUES ('1217', 'SALCHI. HOT DOG POPUL. ( 22 UNDS)  (0409 GR.)', '409.000', '1786', '2018-07-11', '0');
INSERT INTO `productos` VALUES ('1218', 'SALCHI. HOT DOG  POPUL. (12 UND)   (260 GR.)', '260.000', '2994', '2018-07-11', '0');
INSERT INTO `productos` VALUES ('1293', 'SALCHICHA ALEMANA KILO', '1000.000', '266', '2018-07-11', '0');
INSERT INTO `productos` VALUES ('1221', 'SALAMI         PIEZA        (GRANEL)', '454.000', '398', '2018-07-11', '0');
INSERT INTO `productos` VALUES ('1650', 'SALCH-  POLLO             (170 GR.)', '170.000', '2546', '2018-07-11', '0');
INSERT INTO `productos` VALUES ('1811', 'SALCH-  FRANKFURT  (170 GR.)', '170.000', '4734', '2018-07-11', '0');
INSERT INTO `productos` VALUES ('1812', 'SALCHICHA-  BOLOGNA       (GRANEL)', '454.000', '613', '2018-07-11', '0');
INSERT INTO `productos` VALUES ('1214', 'SALCHICHA - POPULAR        (GRANEL)( 100 UND)', '454.000', '3219', '2018-07-11', '0');
INSERT INTO `productos` VALUES ('1819', 'S.JUMBO FRANK (12 UN)  2.5', '1135.000', '121', '2018-07-11', '0');
INSERT INTO `productos` VALUES ('1813', 'SALCH JUMBO FRANKFURT GRAN/36 UND.(F.ARTIFICIAL)', '454.000', '1726', '2018-07-11', '0');
INSERT INTO `productos` VALUES ('1223', 'SALAMI PREMIUM 150', '150.000', '-23', '2018-07-11', '2');
INSERT INTO `productos` VALUES ('1670', 'SALCHICHON POLLO       (200  GR)', '200.000', '700', '2018-07-11', '0');
INSERT INTO `productos` VALUES ('1970', 'SALCHICHON RES            (200  GR)', '200.000', '8064', '2018-07-11', '0');
INSERT INTO `productos` VALUES ('1975', 'SALCHICHON PICANTE    (200  GR)', '200.000', '9405', '2018-07-11', '0');
INSERT INTO `productos` VALUES ('1980', 'SALCHICHON TUBO PICANTE (MANGUERA GRANEL)', '454.000', '1238', '2018-07-11', '0');
INSERT INTO `productos` VALUES ('1971', 'SALCHICHON TUBO RES (MANGUERA GRANEL)', '454.000', '1448', '2018-07-11', '0');
INSERT INTO `productos` VALUES ('1655', 'SALCHICHA.  PAVO JUMBO 590', '590.000', '698', '2018-07-11', '0');
INSERT INTO `productos` VALUES ('1810', 'SALCH- FRANKFORT (200 GR)', '200.000', '3839', '2018-07-11', '0');
INSERT INTO `productos` VALUES ('1227', 'SALAMI  CORTADO PREMIUN PIZZA(1224)/ PARA SUPER', '454.000', '858', '2018-07-11', '0');
INSERT INTO `productos` VALUES ('1290', 'SALCHICHA -  ALEMANA       454', '454.000', '-23', '2018-07-11', '2');
INSERT INTO `productos` VALUES ('1264', 'SALCHICHA-  JUMBO  908', '908.000', '421', '2018-07-11', '0');
INSERT INTO `productos` VALUES ('1275', 'SALCHICHA MUNICH KILO', '1000.000', '-23', '2018-07-11', '2');
INSERT INTO `productos` VALUES ('1232', 'PEPERONI 454 GR', '454.000', '-17', '2018-07-11', '2');
INSERT INTO `productos` VALUES ('1230', 'PEPERONI GRANEL', '454.000', '977', '2018-07-11', '0');
INSERT INTO `productos` VALUES ('1231', 'PEPERONI 1000 (GRANEL)', '454.000', '-23', '2018-07-11', '2');
INSERT INTO `productos` VALUES ('1243', 'SALCH- DESAYUNO ESPECIAL (GRANEL)', '454.000', '996', '2018-07-11', '0');
INSERT INTO `productos` VALUES ('1255', 'SALCH- PARRILLERA (360GR)', '360.000', '1563', '2018-07-11', '0');
INSERT INTO `productos` VALUES ('1292', 'SALCH- ALEMANA GRANEL', '454.000', '-23', '2018-07-11', '2');
INSERT INTO `productos` VALUES ('1257', 'SALCH-PARRILLERA (GRANEL)', '454.000', '353', '2018-07-11', '0');
INSERT INTO `productos` VALUES ('1258', 'SALCHICHA PARRILERA 1000 (GRANEL)', '454.000', '-23', '2018-07-11', '2');
INSERT INTO `productos` VALUES ('1270', 'SALCHICHA MUNICH (454 GR)', '454.000', '-22', '2018-07-11', '2');
INSERT INTO `productos` VALUES ('1272', 'SALCHICHA MUNICH GRANEL', '454.000', '-23', '2018-07-11', '2');
INSERT INTO `productos` VALUES ('1470', 'CHORIZO ARGENTINO (454 GR )', '454.000', '17', '2018-07-11', '0');
INSERT INTO `productos` VALUES ('1820', 'SALCHICHA FRANKFURT 454 GR', '454.000', '2057', '2018-07-11', '0');
INSERT INTO `productos` VALUES ('1233', 'SALAMI PREMIUM 454 GR', '454.000', '141', '2018-07-11', '0');
INSERT INTO `productos` VALUES ('1234', 'SALAMI PREMIUN 1000 (GRANEL)', '454.000', '-23', '2018-07-11', '2');
INSERT INTO `productos` VALUES ('1254', 'SALCHICHA PARRILLERA 454 GR', '454.000', '694', '2018-07-11', '0');
INSERT INTO `productos` VALUES ('1204', 'SALCHICHA HOT DOG 454GR', '454.000', '590', '2018-07-11', '0');
INSERT INTO `productos` VALUES ('1334', 'JAMON POPULAR  (LIBRA.)', '454.000', '2513', '2018-07-11', '0');
INSERT INTO `productos` VALUES ('1335', 'JAMON PIC NIC (125 GR)', '125.000', '2493', '2018-07-11', '0');
INSERT INTO `productos` VALUES ('1336', 'JAMON POPULAR (227 GR)', '227.000', '2193', '2018-07-11', '0');
INSERT INTO `productos` VALUES ('1345', 'JAMON PRENSADO (125 GR)', '125.000', '3235', '2018-07-11', '0');
INSERT INTO `productos` VALUES ('1376', 'JAMON PIC-NIC  454', '454.000', '-23', '2018-07-11', '2');
INSERT INTO `productos` VALUES ('1620', 'JAMON POLLO    (150 GR.)', '150.000', '1149', '2018-07-11', '0');
INSERT INTO `productos` VALUES ('1373', 'JAMON PRENSADO (LIBRA)', '454.000', '1339', '2018-07-11', '0');
INSERT INTO `productos` VALUES ('1630', 'JAMON PAVO', '454.000', '262', '2018-07-11', '0');
INSERT INTO `productos` VALUES ('1341', 'JAMON PRENSADO  (PIEZA)', '454.000', '1132', '2018-07-11', '0');
INSERT INTO `productos` VALUES ('1621', 'JAMON POLLO           (PIEZA)', '454.000', '199', '2018-07-11', '0');
INSERT INTO `productos` VALUES ('1321', 'JAMON PIERNA          (PIEZA)', '454.000', '244', '2018-07-11', '0');
INSERT INTO `productos` VALUES ('1331', 'JAMON PIC NIC --GRANEL CORTADO (PIEZA)', '454.000', '-23', '2018-07-11', '2');
INSERT INTO `productos` VALUES ('1325', 'JAMON PIERNA 454', '454.000', '311', '2018-07-11', '0');
INSERT INTO `productos` VALUES ('1353', 'JAMON PRENSADO CORTADO Y ARMADO', '454.000', '1669', '2018-07-11', '0');
INSERT INTO `productos` VALUES ('1643', 'JAMON DE POLLO DELMOR 454 GR', '454.000', '135', '2018-07-11', '0');
INSERT INTO `productos` VALUES ('1401', 'CHORIZO CRIOLLO (227 GR)', '227.000', '18749', '2018-07-11', '0');
INSERT INTO `productos` VALUES ('1402', 'CHORIZO CRIOLLO (GRANEL)', '454.000', '633', '2018-07-11', '0');
INSERT INTO `productos` VALUES ('1403', 'CHORIZO CRIOLLO (454 GR)', '454.000', '996', '2018-07-11', '0');
INSERT INTO `productos` VALUES ('1421', 'CHORIZO ESPAÑOL  (GRANEL)', '454.000', '313', '2018-07-11', '0');
INSERT INTO `productos` VALUES ('1473', 'CHORIZO ARGENTINO (GRANEL )', '454.000', '427', '2018-07-11', '0');
INSERT INTO `productos` VALUES ('2993', 'S.VIENA PICANTE', '150.000', '-23', '2018-07-11', '2');
INSERT INTO `productos` VALUES ('1502', 'CARNE MOLIDA POLLO    (LIBRA)', '454.000', '3409', '2018-07-11', '0');
INSERT INTO `productos` VALUES ('1503', 'CARNE MOLIDA RES         (LIBRA)', '454.000', '3624', '2018-07-11', '0');
INSERT INTO `productos` VALUES ('1505', 'CARNE MOLIDA RES         GRANEL', '454.000', '-23', '2018-07-11', '2');
INSERT INTO `productos` VALUES ('1504', 'CARNE MOLIDA CERDO   (LIBRA)', '454.000', '153', '2018-07-11', '0');
INSERT INTO `productos` VALUES ('85120', 'CARNE  BISTEC PIM.LIMON (LIBRA)', '454.000', '-23', '2018-07-11', '2');
INSERT INTO `productos` VALUES ('1701', 'BACON AHUMADO  ECONOMAX  (200 G)', '200.000', '169', '2018-07-11', '0');
INSERT INTO `productos` VALUES ('1622', 'JAMON POLLO  ECONOMAX (150 G)', '150.000', '221', '2018-07-11', '0');
INSERT INTO `productos` VALUES ('1333', 'JAMON POPULAR   ECONOMAX  (150 G)', '150.000', '1067', '2018-07-11', '0');
INSERT INTO `productos` VALUES ('1342', 'JAMON PRENSADO  ECONOMAX  (150 G)', '150.000', '2692', '2018-07-11', '0');
INSERT INTO `productos` VALUES ('1660', 'SALCH- POLLO   ECONOMAX  (425 G)', '425.000', '107', '2018-07-11', '0');
INSERT INTO `productos` VALUES ('1250', 'SALCH-JUMBO ECONOMAX (378 G)', '378.000', '679', '2018-07-11', '0');
INSERT INTO `productos` VALUES ('1251', 'SALCH-PARRILLERO ECONOMAX (360 G)', '360.000', '92', '2018-07-11', '0');
INSERT INTO `productos` VALUES ('1703', 'BACON AHUMADO (200 GR)', '200.000', '1792', '2018-07-11', '0');
INSERT INTO `productos` VALUES ('1706', 'BACON AHUMADO 1000 GR', '454.000', '267', '2018-07-11', '0');
INSERT INTO `productos` VALUES ('1707', 'BACON AHUMADO 454 GR', '454.000', '720', '2018-07-11', '0');
INSERT INTO `productos` VALUES ('1720', 'CHULETA AHUMADA (BANDEJA)', '454.000', '-23', '2018-07-11', '2');
INSERT INTO `productos` VALUES ('1762', 'PIERNA AHUMADA ( BANDEJA)', '454.000', '-23', '2018-07-11', '2');
INSERT INTO `productos` VALUES ('1302', 'JAMON AHUMADO PIEZA', '454.000', '-23', '2018-07-11', '2');
INSERT INTO `productos` VALUES ('1760', 'PIERNA AHUMADA CON HUESO', '454.000', '451', '2018-07-11', '0');
INSERT INTO `productos` VALUES ('1761', 'PIERNA AHUMADA  SIN HUESO', '454.000', '916', '2018-07-11', '0');
INSERT INTO `productos` VALUES ('1711', 'COSTILLA DE CERDO AHUMADA', '454.000', '-23', '2018-07-11', '2');
INSERT INTO `productos` VALUES ('1770', 'POLLO AHUMADO (PIEZA)', '454.000', '451', '2018-07-11', '0');
INSERT INTO `productos` VALUES ('1772', 'POLLO AHUMADO BANDEJA', '454.000', '-23', '2018-07-11', '2');
INSERT INTO `productos` VALUES ('1780', 'ROLLER HAM AHUMADO', '454.000', '1776', '2018-07-11', '0');
INSERT INTO `productos` VALUES ('1763', 'PIERNA AHUMADA C/H BANDEJA', '454.000', '-23', '2018-07-11', '2');
INSERT INTO `productos` VALUES ('1702', 'BACON AHUMADO A GRANEL', '454.000', '4065', '2018-07-11', '0');
INSERT INTO `productos` VALUES ('1721', 'CHULETA AHUMADA A GRANEL', '454.000', '623', '2018-07-11', '0');
INSERT INTO `productos` VALUES ('1723', 'CHULETA PREFORMADA ', '454.000', '325', '2018-07-11', '0');
INSERT INTO `productos` VALUES ('1241', 'SALCHICHA DESAYUNO DE POLLO', '454.000', '185', '2018-07-11', '0');
INSERT INTO `productos` VALUES ('3430', 'REC.MORTADELA  ', '454.000', '467', '2018-07-11', '0');
INSERT INTO `productos` VALUES ('3460', 'REC.SALAMI', '454.000', '91', '2018-07-11', '0');
INSERT INTO `productos` VALUES ('3410', 'REC.SALCHICHA', '454.000', '1136', '2018-07-11', '0');
INSERT INTO `productos` VALUES ('3420', 'REC. JAMON DE CERDO (PRENSADO)', '454.000', '2714', '2018-07-11', '0');
INSERT INTO `productos` VALUES ('3421', 'REC. JAMON DE POLLO', '454.000', '908', '2018-07-11', '0');
INSERT INTO `productos` VALUES ('3401', 'REC.  BACON AHUMADOS', '454.000', '773', '2018-07-11', '0');
INSERT INTO `productos` VALUES ('3422', 'RECORTE DE J.POPULAR', '454.000', '388', '2018-07-11', '0');
INSERT INTO `productos` VALUES ('3411', 'REC. SALCHICHA  DELIKATESSEN', '454.000', '1451', '2018-07-11', '0');
INSERT INTO `productos` VALUES ('3402', 'REC. DE CHULETA AHUMADA', '454.000', '88', '2018-07-11', '0');
INSERT INTO `productos` VALUES ('3465', 'REC. PEPERONI', '454.000', '263', '2018-07-11', '0');
INSERT INTO `productos` VALUES ('1283', 'SALCHICHA NUREMBERG KILO', '454.000', '-23', '2018-07-11', '2');
INSERT INTO `productos` VALUES ('1370', 'JAMON PAVO GRANEL', '454.000', '46', '2018-07-11', '0');
INSERT INTO `productos` VALUES ('1792', 'ROAST BEEF', '454.000', '-23', '2018-07-11', '2');
INSERT INTO `productos` VALUES ('1487', 'TORTA DE CARNE DE RES CLASICA', '454.000', '-23', '2018-07-11', '2');
INSERT INTO `productos` VALUES ('1486', 'TORTA P/HAMBUERGUESA (CJA)', '500.000', '-23', '2018-07-11', '2');
INSERT INTO `productos` VALUES ('1269', 'SALCHICHA SUPER JUMBO', '1300.000', '703', '2018-07-11', '0');
INSERT INTO `productos` VALUES ('1361', 'JAMON VIRGINIA', '454.000', '-23', '2018-07-11', '2');
INSERT INTO `productos` VALUES ('1363', 'JAMON VIRGINIA (PSMT)', '1300.000', '248', '2018-07-11', '0');
INSERT INTO `productos` VALUES ('1773', 'POLLO AHUMADO PIEZA (PSMT)', '454.000', '-23', '2018-07-11', '2');
INSERT INTO `productos` VALUES ('1774', 'ROLLER HAM AHUMADO (PSMT)', '454.000', '-23', '2018-07-11', '2');
INSERT INTO `productos` VALUES ('1791', 'PASTRAMI', '454.000', '-23', '2018-07-11', '2');
INSERT INTO `productos` VALUES ('1709', 'BACON PSMAT 5 LIB', '454.000', '-23', '2018-07-11', '2');
INSERT INTO `productos` VALUES ('1795', 'ROAST BEEF LIBRA', '454.000', '417', '2018-07-11', '0');
INSERT INTO `productos` VALUES ('1794', 'PASTRAMI LIBRA', '454.000', '334', '2018-07-11', '0');
INSERT INTO `productos` VALUES ('1793', 'ROAST BEET PIEZA PIEZA/LIBRA', '454.000', '155', '2018-07-11', '0');
INSERT INTO `productos` VALUES ('1279', 'Salchicha Jumbo 2.3', '1000.000', '70', '2018-07-11', '0');
INSERT INTO `productos` VALUES ('1730', 'JAMON SELVA NEGRA', '454.000', '502', '2018-07-11', '0');
INSERT INTO `productos` VALUES ('1404', 'CHORIZO CRIOLLO 5LB', '454.000', '-23', '2018-07-11', '2');

-- ----------------------------
-- Table structure for productos_copy
-- ----------------------------
DROP TABLE IF EXISTS `productos_copy`;
CREATE TABLE `productos_copy` (
  `Codigo` int(11) NOT NULL,
  `Descripcion` varchar(255) DEFAULT NULL,
  `GRM` decimal(10,3) DEFAULT NULL,
  `Saldo` double(10,0) DEFAULT NULL,
  `FechaCarga` date DEFAULT NULL,
  `Estado` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of productos_copy
-- ----------------------------
INSERT INTO `productos_copy` VALUES ('1123', 'MORT-ECONOMICA (125 GR)', '125.000', '7044', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1640', 'MORT-    POLLO  (150 GR.)', '150.000', '2261', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1137', 'MORT-JAMONADA DELMOR (454 GR)', '454.000', '1038', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1131', 'MORT. JAMONADA (150 GR.)', '150.000', '2420', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1112', 'MORT-CHILTOMA  (150 GR)', '150.000', '0', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1645', 'MORT. DE PAVO', '454.000', '1107', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1109', 'MORT-BOLOGNA (225 GR) (1102)', '225.000', '1304', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1127', 'MORT-POPULAR (½) 227 GRAMOS', '227.000', '4406', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1119', 'MORT-POPULAR (PAQUETE)', '454.000', '2805', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1193', 'MORT- CON TOCINO DELMOR (454 GR)', '454.000', '942', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1113', 'MORT-CHILTOMA  (225 GR)', '225.000', '1847', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1803', 'MORT. FRANKFURT (125 GR.)', '125.000', '2455', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1190', 'MORT-CON TOCINO (150 GR.)', '150.000', '0', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1117', 'MORT-POPULAR A GRANEL (PIEZA)', '454.000', '1125', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1132', 'MORT-JAMONADA (225 GR)', '225.000', '812', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1134', 'MORT-ECONOMICA (225 GR)', '225.000', '1351', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1107', 'MORT-BOLOGNA DELMOR (454 GR)', '454.000', '1432', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1121', 'MORT-ECONOMICA  (GRANEL/PIEZA)', '454.000', '626', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1111', 'MORT-CHILTOMA  (GRANEL / PIEZA)', '454.000', '339', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1101', 'MORT-BOLOGNA     (GRANEL)', '454.000', '0', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1130', 'MORT-JAMONADA  (GRANEL/PIEZA)', '454.000', '326', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1641', 'MORT- POLLO   (GRANEL)', '454.000', '0', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1135', 'MORT-CON TOCINO (225GR)', '225.000', '1275', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1126', 'MORT-ECONOMICA (454 GR)', '454.000', '1117', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1642', 'MORT-DE POLLO DELMOR (454 GR)', '454.000', '1949', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1245', 'SALCHICHA DESAYUNO PSMAT', '1000.000', '70', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1210', 'HOT DOG (170 GR.)', '170.000', '4619', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1217', 'SALCHI. HOT DOG POPUL. ( 22 UNDS)  (0409 GR.)', '409.000', '1785', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1218', 'SALCHI. HOT DOG  POPUL. (12 UND)   (260 GR.)', '260.000', '2802', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1293', 'SALCHICHA ALEMANA KILO', '1000.000', '289', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1221', 'SALAMI         PIEZA        (GRANEL)', '454.000', '421', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1650', 'SALCH-  POLLO             (170 GR.)', '170.000', '2569', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1811', 'SALCH-  FRANKFURT  (170 GR.)', '170.000', '4727', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1812', 'SALCHICHA-  BOLOGNA       (GRANEL)', '454.000', '636', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1214', 'SALCHICHA - POPULAR        (GRANEL)( 100 UND)', '454.000', '3242', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1819', 'S.JUMBO FRANK (12 UN)  2.5', '1135.000', '144', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1813', 'SALCH JUMBO FRANKFURT GRAN/36 UND.(F.ARTIFICIAL)', '454.000', '1665', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1223', 'SALAMI PREMIUM 150', '150.000', '0', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1670', 'SALCHICHON POLLO       (200  GR)', '200.000', '723', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1970', 'SALCHICHON RES            (200  GR)', '200.000', '7975', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1975', 'SALCHICHON PICANTE    (200  GR)', '200.000', '9332', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1980', 'SALCHICHON TUBO PICANTE (MANGUERA GRANEL)', '454.000', '1261', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1971', 'SALCHICHON TUBO RES (MANGUERA GRANEL)', '454.000', '1471', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1655', 'SALCHICHA.  PAVO JUMBO 590', '590.000', '721', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1810', 'SALCH- FRANKFORT (200 GR)', '200.000', '3862', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1227', 'SALAMI  CORTADO PREMIUN PIZZA(1224)/ PARA SUPER', '454.000', '881', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1290', 'SALCHICHA -  ALEMANA       454', '454.000', null, '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1264', 'SALCHICHA-  JUMBO  908', '908.000', '444', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1275', 'SALCHICHA MUNICH KILO', '1000.000', '0', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1232', 'PEPERONI 454 GR', '454.000', '6', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1230', 'PEPERONI GRANEL', '454.000', '1000', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1231', 'PEPERONI 1000 (GRANEL)', '454.000', '0', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1243', 'SALCH- DESAYUNO ESPECIAL (GRANEL)', '454.000', '1019', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1255', 'SALCH- PARRILLERA (360GR)', '360.000', '1561', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1292', 'SALCH- ALEMANA GRANEL', '454.000', '0', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1257', 'SALCH-PARRILLERA (GRANEL)', '454.000', '376', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1258', 'SALCHICHA PARRILERA 1000 (GRANEL)', '454.000', '0', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1270', 'SALCHICHA MUNICH (454 GR)', '454.000', '1', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1272', 'SALCHICHA MUNICH GRANEL', '454.000', null, '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1470', 'CHORIZO ARGENTINO (454 GR )', '454.000', '40', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1820', 'SALCHICHA FRANKFURT 454 GR', '454.000', '2080', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1233', 'SALAMI PREMIUM 454 GR', '454.000', '164', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1234', 'SALAMI PREMIUN 1000 (GRANEL)', '454.000', '0', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1254', 'SALCHICHA PARRILLERA 454 GR', '454.000', '717', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1204', 'SALCHICHA HOT DOG 454GR', '454.000', '613', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1334', 'JAMON POPULAR  (LIBRA.)', '454.000', '2487', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1335', 'JAMON PIC NIC (125 GR)', '125.000', '2501', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1336', 'JAMON POPULAR (227 GR)', '227.000', '2107', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1345', 'JAMON PRENSADO (125 GR)', '125.000', '3215', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1376', 'JAMON PIC-NIC  454', '454.000', '0', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1620', 'JAMON POLLO    (150 GR.)', '150.000', '1162', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1373', 'JAMON PRENSADO (LIBRA)', '454.000', '1360', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1630', 'JAMON PAVO', '454.000', '276', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1341', 'JAMON PRENSADO  (PIEZA)', '454.000', '1155', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1621', 'JAMON POLLO           (PIEZA)', '454.000', '222', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1321', 'JAMON PIERNA          (PIEZA)', '454.000', '267', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1331', 'JAMON PIC NIC --GRANEL CORTADO (PIEZA)', '454.000', '0', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1325', 'JAMON PIERNA 454', '454.000', '334', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1353', 'JAMON PRENSADO CORTADO Y ARMADO', '454.000', '1692', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1643', 'JAMON DE POLLO DELMOR 454 GR', '454.000', '158', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1401', 'CHORIZO CRIOLLO (227 GR)', '227.000', '18550', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1402', 'CHORIZO CRIOLLO (GRANEL)', '454.000', '656', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1403', 'CHORIZO CRIOLLO (454 GR)', '454.000', '1018', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1421', 'CHORIZO ESPAÑOL  (GRANEL)', '454.000', '336', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1473', 'CHORIZO ARGENTINO (GRANEL )', '454.000', '450', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('2993', 'S.VIENA PICANTE', '150.000', '0', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1502', 'CARNE MOLIDA POLLO    (LIBRA)', '454.000', '3237', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1503', 'CARNE MOLIDA RES         (LIBRA)', '454.000', '3500', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1505', 'CARNE MOLIDA RES         GRANEL', '454.000', '0', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1504', 'CARNE MOLIDA CERDO   (LIBRA)', '454.000', '176', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('85120', 'CARNE  BISTEC PIM.LIMON (LIBRA)', '454.000', '0', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1701', 'BACON AHUMADO  ECONOMAX  (200 G)', '200.000', '192', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1622', 'JAMON POLLO  ECONOMAX (150 G)', '150.000', '224', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1333', 'JAMON POPULAR   ECONOMAX  (150 G)', '150.000', '1090', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1342', 'JAMON PRENSADO  ECONOMAX  (150 G)', '150.000', '2685', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1660', 'SALCH- POLLO   ECONOMAX  (425 G)', '425.000', '130', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1250', 'SALCH-JUMBO ECONOMAX (378 G)', '378.000', '702', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1251', 'SALCH-PARRILLERO ECONOMAX (360 G)', '360.000', '115', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1703', 'BACON AHUMADO (200 GR)', '200.000', '1794', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1706', 'BACON AHUMADO 1000 GR', '454.000', '290', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1707', 'BACON AHUMADO 454 GR', '454.000', '743', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1720', 'CHULETA AHUMADA (BANDEJA)', '454.000', '0', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1762', 'PIERNA AHUMADA ( BANDEJA)', '454.000', '0', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1302', 'JAMON AHUMADO PIEZA', '454.000', '0', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1760', 'PIERNA AHUMADA CON HUESO', '454.000', '474', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1761', 'PIERNA AHUMADA  SIN HUESO', '454.000', '939', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1711', 'COSTILLA DE CERDO AHUMADA', '454.000', null, '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1770', 'POLLO AHUMADO (PIEZA)', '454.000', '474', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1772', 'POLLO AHUMADO BANDEJA', '454.000', '0', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1780', 'ROLLER HAM AHUMADO', '454.000', '1799', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1763', 'PIERNA AHUMADA C/H BANDEJA', '454.000', '0', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1702', 'BACON AHUMADO A GRANEL', '454.000', '4088', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1721', 'CHULETA AHUMADA A GRANEL', '454.000', '646', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1723', 'CHULETA PREFORMADA ', '454.000', '348', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1241', 'SALCHICHA DESAYUNO DE POLLO', '454.000', '208', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('3430', 'REC.MORTADELA  ', '454.000', '487', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('3460', 'REC.SALAMI', '454.000', '114', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('3410', 'REC.SALCHICHA', '454.000', '1159', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('3420', 'REC. JAMON DE CERDO (PRENSADO)', '454.000', '2737', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('3421', 'REC. JAMON DE POLLO', '454.000', '931', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('3401', 'REC.  BACON AHUMADOS', '454.000', '796', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('3422', 'RECORTE DE J.POPULAR', '454.000', '411', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('3411', 'REC. SALCHICHA  DELIKATESSEN', '454.000', '1474', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('3402', 'REC. DE CHULETA AHUMADA', '454.000', '111', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('3465', 'REC. PEPERONI', '454.000', '295', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1283', 'SALCHICHA NUREMBERG KILO', '454.000', '0', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1370', 'JAMON PAVO GRANEL', '454.000', '69', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1792', 'ROAST BEEF', '454.000', '0', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1487', 'TORTA DE CARNE DE RES CLASICA', '454.000', '0', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1486', 'TORTA P/HAMBUERGUESA (CJA)', '500.000', '0', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1269', 'SALCHICHA SUPER JUMBO', '1300.000', '726', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1361', 'JAMON VIRGINIA', '454.000', '0', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1363', 'JAMON VIRGINIA (PSMT)', '1300.000', '271', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1773', 'POLLO AHUMADO PIEZA (PSMT)', '454.000', '0', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1774', 'ROLLER HAM AHUMADO (PSMT)', '454.000', '0', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1791', 'PASTRAMI', '454.000', '0', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1709', 'BACON PSMAT 5 LIB', '454.000', '0', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1795', 'ROAST BEEF LIBRA', '454.000', '439', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1794', 'PASTRAMI LIBRA', '454.000', '357', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1793', 'ROAST BEET PIEZA PIEZA/LIBRA', '454.000', '178', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1279', 'Salchicha Jumbo 2.3', '1000.000', '93', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1730', 'JAMON SELVA NEGRA', '454.000', '525', '2018-05-31', null);
INSERT INTO `productos_copy` VALUES ('1404', 'CHORIZO CRIOLLO 5LB', '454.000', null, '2018-05-31', null);

-- ----------------------------
-- Table structure for usuarios
-- ----------------------------
DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE `usuarios` (
  `IdUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `Usuario` varchar(255) DEFAULT NULL,
  `Nombre` varchar(255) DEFAULT NULL,
  `Password` varchar(255) DEFAULT NULL,
  `Rol` int(11) DEFAULT NULL,
  `DescripcionRol` varchar(255) DEFAULT NULL,
  `Rutas` varchar(255) DEFAULT NULL,
  `Estado` bit(1) DEFAULT NULL,
  `FechaCreacion` date DEFAULT NULL,
  PRIMARY KEY (`IdUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of usuarios
-- ----------------------------
INSERT INTO `usuarios` VALUES ('4', 'Joel', 'Joel Jiron', '202cb962ac59075b964b07152d234b70', '4', 'Supervisor', '7,15,16,18,21,26', '', '2018-04-20');
INSERT INTO `usuarios` VALUES ('8', 'jorge', 'Jorge Rivas', '202cb962ac59075b964b07152d234b70', '4', 'Supervisor', '3,12,14,19,25', '', '2018-05-10');
INSERT INTO `usuarios` VALUES ('9', 'rodney', 'Rodney Lopez', '202cb962ac59075b964b07152d234b70', '4', 'Supervisor', '1,2,4,5,6,8,10,22,27', '', '2018-05-10');
INSERT INTO `usuarios` VALUES ('10', 'sa', 'Administrador', '202cb962ac59075b964b07152d234b70', '0', 'Administrador', null, '', '2018-05-10');
INSERT INTO `usuarios` VALUES ('11', 'douglas', 'Douglas Zotelo', '202cb962ac59075b964b07152d234b70', '4', 'Supervisor', '9,11,13,24', '', '2018-05-10');
INSERT INTO `usuarios` VALUES ('12', 'Jean', 'Jean Cardenas', '202cb962ac59075b964b07152d234b70', '3', 'Coordinador de Ventas', null, '', '2018-05-10');
INSERT INTO `usuarios` VALUES ('13', 'Monica', 'Monica', '202cb962ac59075b964b07152d234b70', '6', 'Asistente de almacen pdto terminados', null, '', '2018-06-09');
INSERT INTO `usuarios` VALUES ('14', 'Teresa', 'Teresa Miranda', '202cb962ac59075b964b07152d234b70', '7', 'Auxiliar de ventas', '15,16,17,21,23,28', '', '2018-06-29');
INSERT INTO `usuarios` VALUES ('15', 'Sugey', 'Sugey Mazzocchi', '202cb962ac59075b964b07152d234b70', '8', 'Relaciones públicas y comunicaciones', '9,11,12,13,24,25', '', '2018-06-29');
INSERT INTO `usuarios` VALUES ('16', 'Erika', 'Erika Mondragón', '202cb962ac59075b964b07152d234b70', '2', 'Gerente de Ventas', null, '', '2018-06-29');
INSERT INTO `usuarios` VALUES ('17', 'Heidi', 'Heidi Martinez', '202cb962ac59075b964b07152d234b70', '5', 'Jefa de tienda', '20', '', '2018-06-29');

-- ----------------------------
-- View structure for view_consolidado
-- ----------------------------
DROP VIEW IF EXISTS `view_consolidado`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_consolidado` AS select if((`consolidado`.`Tipo` = 'U'),(sum(`consolidado`.`Unidades`) / 2),sum(if((`consolidado`.`Tipo` <> 'U'),`consolidado`.`Unidades`,0))) AS `Unidades`,if((`consolidado`.`Tipo` = 'U'),(sum(`consolidado`.`LBS`) / 2),sum(if((`consolidado`.`Tipo` <> 'U'),`consolidado`.`LBS`,0))) AS `LBS`,`consolidado`.`FechaEntrega` AS `FechaEntrega`,`consolidado`.`FechaCreacion` AS `FechaCreacion` from `consolidado` group by `consolidado`.`FechaEntrega` order by `consolidado`.`FechaEntrega` desc ;

-- ----------------------------
-- View structure for view_consolidadom
-- ----------------------------
DROP VIEW IF EXISTS `view_consolidadom`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_consolidadom` AS select `consolidadom`.`Fecha` AS `Fecha`,(select (((((((((sum(`consolidadom`.`Camp1`) + sum(`consolidadom`.`Camp2`)) + sum(`consolidadom`.`Camp3`)) + sum(`consolidadom`.`Camp4`)) + sum(`consolidadom`.`Camp5`)) + sum(`consolidadom`.`Camp6`)) + sum(`consolidadom`.`Camp7`)) + sum(`consolidadom`.`Camp8`)) + sum(`consolidadom`.`Camp9`)) + sum(`consolidadom`.`Camp10`))) AS `TOTAL` from `consolidadom` group by `consolidadom`.`Fecha` ;

-- ----------------------------
-- View structure for view_consolidado_s
-- ----------------------------
DROP VIEW IF EXISTS `view_consolidado_s`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_consolidado_s` AS select if((`consolidado_s`.`Tipo` = 'U'),(sum(`consolidado_s`.`Unidades`) / 2),sum(if((`consolidado_s`.`Tipo` <> 'U'),`consolidado_s`.`Unidades`,0))) AS `Unidades`,if((`consolidado_s`.`Tipo` = 'U'),(sum(`consolidado_s`.`LBS`) / 2),sum(if((`consolidado_s`.`Tipo` <> 'U'),`consolidado_s`.`LBS`,0))) AS `LBS`,`consolidado_s`.`FechaEntrega` AS `FechaEntrega`,`consolidado_s`.`FechaCreacion` AS `FechaCreacion`,`consolidado_s`.`Usuario` AS `Usuario` from `consolidado_s` group by `consolidado_s`.`FechaEntrega` order by `consolidado_s`.`FechaEntrega` desc ;

-- ----------------------------
-- View structure for view_detalle_consolidado
-- ----------------------------
DROP VIEW IF EXISTS `view_detalle_consolidado`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_detalle_consolidado` AS select sum(`consolidado`.`Unidades`) AS `Unidades`,sum(`consolidado`.`LBS`) AS `LBS`,`consolidado`.`FechaEntrega` AS `FechaEntrega`,`consolidado`.`FechaCreacion` AS `FechaCreacion`,`consolidado`.`Tipo` AS `Tipo` from `consolidado` group by `consolidado`.`FechaEntrega`,`consolidado`.`Tipo` order by `consolidado`.`FechaEntrega` desc ;

-- ----------------------------
-- View structure for view_detalle_consolidado_s
-- ----------------------------
DROP VIEW IF EXISTS `view_detalle_consolidado_s`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_detalle_consolidado_s` AS select sum(`consolidado_s`.`Unidades`) AS `Unidades`,sum(`consolidado_s`.`LBS`) AS `LBS`,`consolidado_s`.`FechaEntrega` AS `FechaEntrega`,`consolidado_s`.`FechaCreacion` AS `FechaCreacion`,`consolidado_s`.`Tipo` AS `Tipo`,`consolidado_s`.`Usuario` AS `Usuario` from `consolidado_s` group by `consolidado_s`.`FechaEntrega`,`consolidado_s`.`Tipo` order by `consolidado_s`.`FechaEntrega` desc ;

-- ----------------------------
-- View structure for view_detalle_orden
-- ----------------------------
DROP VIEW IF EXISTS `view_detalle_orden`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_detalle_orden` AS select `ordenes`.`FechaEntrega` AS `FechaEntrega`,`ordenes`.`Usuario` AS `Usuario`,`ordenes`.`Ruta` AS `Ruta`,sum(`ordenes`.`Unidades`) AS `Unidades`,`ordenes`.`Vendedor` AS `Vendedor`,sum(`ordenes`.`LBS`) AS `LBS`,`usuarios`.`Nombre` AS `Nombre`,`ordenes`.`Estado` AS `Estado` from (`ordenes` join `usuarios` on((`ordenes`.`Usuario` = `usuarios`.`IdUsuario`))) group by `ordenes`.`Ruta`,`ordenes`.`FechaEntrega`,`usuarios`.`IdUsuario` ;

-- ----------------------------
-- View structure for view_detalle_ordens
-- ----------------------------
DROP VIEW IF EXISTS `view_detalle_ordens`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_detalle_ordens` AS select `ordenes_s`.`FechaEntrega` AS `FechaEntrega`,`ordenes_s`.`Usuario` AS `Usuario`,`ordenes_s`.`Ruta` AS `Ruta`,sum(`ordenes_s`.`Unidades`) AS `Unidades`,`ordenes_s`.`Vendedor` AS `Vendedor`,sum(`ordenes_s`.`LBS`) AS `LBS`,`usuarios`.`Nombre` AS `Nombre`,`ordenes_s`.`Estado` AS `Estado`,`clientes`.`Nombre` AS `Cliente`,`ordenes_s`.`Preventa` AS `Preventa` from ((`ordenes_s` join `usuarios` on((`ordenes_s`.`Usuario` = `usuarios`.`IdUsuario`))) join `clientes` on((`ordenes_s`.`Cliente` = `clientes`.`IdCliente`))) group by `ordenes_s`.`Ruta`,`ordenes_s`.`FechaEntrega`,`usuarios`.`IdUsuario` ;

-- ----------------------------
-- View structure for view_detalle_preventa
-- ----------------------------
DROP VIEW IF EXISTS `view_detalle_preventa`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_detalle_preventa` AS select `ordenes`.`FechaEntrega` AS `FechaEntrega`,`ordenes`.`Usuario` AS `Usuario`,`ordenes`.`Ruta` AS `Ruta`,sum(`ordenes`.`Unidades`) AS `Unidades`,`ordenes`.`Vendedor` AS `Vendedor`,sum(`ordenes`.`LBS`) AS `LBS`,`usuarios`.`Nombre` AS `Nombre`,`ordenes`.`Estado` AS `Estado` from (`ordenes` join `usuarios` on((`ordenes`.`Usuario` = `usuarios`.`IdUsuario`))) where (`ordenes`.`Preventa` = 1) group by `ordenes`.`Ruta`,`ordenes`.`FechaEntrega`,`usuarios`.`IdUsuario` ;

-- ----------------------------
-- View structure for view_det_ordens_creada
-- ----------------------------
DROP VIEW IF EXISTS `view_det_ordens_creada`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_det_ordens_creada` AS select `ordenes_s`.`FechaEntrega` AS `FechaEntrega`,`ordenes_s`.`Usuario` AS `Usuario`,`ordenes_s`.`Ruta` AS `Ruta`,sum(`ordenes_s`.`Unidades`) AS `Unidades`,`ordenes_s`.`Vendedor` AS `Vendedor`,sum(`ordenes_s`.`LBS`) AS `LBS`,`usuarios`.`Nombre` AS `Nombre`,`ordenes_s`.`Estado` AS `Estado`,`clientes`.`Nombre` AS `Cliente`,`ordenes_s`.`Cliente` AS `IdCliente` from ((`ordenes_s` join `usuarios` on((`ordenes_s`.`Usuario` = `usuarios`.`IdUsuario`))) join `clientes` on((`ordenes_s`.`Cliente` = `clientes`.`IdCliente`))) where (`ordenes_s`.`Preventa` = 0) group by `ordenes_s`.`Ruta`,`ordenes_s`.`FechaEntrega`,`ordenes_s`.`Cliente`,`usuarios`.`IdUsuario` ;

-- ----------------------------
-- View structure for view_det_preventas_creada
-- ----------------------------
DROP VIEW IF EXISTS `view_det_preventas_creada`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_det_preventas_creada` AS select `ordenes_s`.`FechaEntrega` AS `FechaEntrega`,`ordenes_s`.`Usuario` AS `Usuario`,`ordenes_s`.`Ruta` AS `Ruta`,sum(`ordenes_s`.`Unidades`) AS `Unidades`,`ordenes_s`.`Vendedor` AS `Vendedor`,sum(`ordenes_s`.`LBS`) AS `LBS`,`usuarios`.`Nombre` AS `Nombre`,`ordenes_s`.`Estado` AS `Estado`,`clientes`.`Nombre` AS `Cliente`,`ordenes_s`.`Cliente` AS `IdCliente` from ((`ordenes_s` join `usuarios` on((`ordenes_s`.`Usuario` = `usuarios`.`IdUsuario`))) join `clientes` on((`ordenes_s`.`Cliente` = `clientes`.`IdCliente`))) where (`ordenes_s`.`Preventa` = 1) group by `ordenes_s`.`Ruta`,`ordenes_s`.`FechaEntrega`,`ordenes_s`.`Cliente`,`usuarios`.`IdUsuario` ;

-- ----------------------------
-- View structure for view_devoluciones
-- ----------------------------
DROP VIEW IF EXISTS `view_devoluciones`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_devoluciones` AS select `devoluciones`.`FechaEntrega` AS `FechaEntrega`,sum(`devoluciones`.`Total`) AS `Total`,sum(`devoluciones`.`Libras`) AS `Libras`,`devoluciones`.`FechaCreacion` AS `FechaCreacion` from `devoluciones` group by `devoluciones`.`FechaEntrega` order by `devoluciones`.`FechaEntrega` desc ;

-- ----------------------------
-- View structure for view_masvendidos
-- ----------------------------
DROP VIEW IF EXISTS `view_masvendidos`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_masvendidos` AS select count(`ordenes`.`Codigo`) AS `Codigo`,`ordenes`.`Descripcion` AS `Descripcion` from `ordenes` group by `ordenes`.`Codigo` order by count(`ordenes`.`Codigo`) desc limit 10 ;

-- ----------------------------
-- View structure for view_ordenes_creadas
-- ----------------------------
DROP VIEW IF EXISTS `view_ordenes_creadas`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_ordenes_creadas` AS select `o`.`FechaEntrega` AS `FechaEntrega`,sum(`o`.`Unidades`) AS `Unidades`,sum(`o`.`LBS`) AS `LBS`,`o`.`Estado` AS `Estado`,`u`.`Nombre` AS `Nombre`,`u`.`IdUsuario` AS `Usuario` from (`ordenes` `o` join `usuarios` `u` on((`o`.`Usuario` = `u`.`IdUsuario`))) group by `o`.`FechaEntrega`,`u`.`IdUsuario` ;

-- ----------------------------
-- View structure for view_ordenes_s_creadas
-- ----------------------------
DROP VIEW IF EXISTS `view_ordenes_s_creadas`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_ordenes_s_creadas` AS select `ordenes_s`.`FechaEntrega` AS `FechaEntrega`,sum(`ordenes_s`.`Unidades`) AS `Unidades`,`ordenes_s`.`Estado` AS `Estado`,`ordenes_s`.`Usuario` AS `Usuario`,`ordenes_s`.`Preventa` AS `Preventa` from `ordenes_s` where (`ordenes_s`.`Preventa` = 0) group by `ordenes_s`.`FechaEntrega` ;

-- ----------------------------
-- View structure for view_preventas_creadas
-- ----------------------------
DROP VIEW IF EXISTS `view_preventas_creadas`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_preventas_creadas` AS select `o`.`FechaEntrega` AS `FechaEntrega`,sum(`o`.`Unidades`) AS `Unidades`,sum(`o`.`LBS`) AS `LBS`,`o`.`Estado` AS `Estado`,`u`.`Nombre` AS `Nombre`,`u`.`IdUsuario` AS `IdUsuario`,`o`.`Preventa` AS `Preventa` from (`ordenes` `o` join `usuarios` `u` on((`o`.`Usuario` = `u`.`IdUsuario`))) where (`o`.`Preventa` = 1) group by `o`.`FechaEntrega`,`u`.`IdUsuario` ;

-- ----------------------------
-- View structure for view_preventas_s_creadas
-- ----------------------------
DROP VIEW IF EXISTS `view_preventas_s_creadas`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_preventas_s_creadas` AS select `ordenes_s`.`FechaEntrega` AS `FechaEntrega`,sum(`ordenes_s`.`Unidades`) AS `Unidades`,`ordenes_s`.`Estado` AS `Estado`,`ordenes_s`.`Usuario` AS `Usuario`,`ordenes_s`.`Preventa` AS `Preventa` from `ordenes_s` where (`ordenes_s`.`Preventa` = 1) group by `ordenes_s`.`FechaEntrega` ;

-- ----------------------------
-- View structure for view_productos
-- ----------------------------
DROP VIEW IF EXISTS `view_productos`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_productos` AS select `productos`.`Codigo` AS `Codigo`,`productos`.`Descripcion` AS `Descripcion`,`productos`.`GRM` AS `GRM`,`productos`.`Saldo` AS `Saldo`,(select sum(`productos`.`Saldo`) from `productos`) AS `Total`,`productos`.`Estado` AS `Estado` from `productos` ;

-- ----------------------------
-- View structure for view_remision_listaconsol
-- ----------------------------
DROP VIEW IF EXISTS `view_remision_listaconsol`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_remision_listaconsol` AS select `consolidadom`.`Fecha` AS `Fecha`,`consolidadom`.`Codigo` AS `Codigo`,`consolidadom`.`Descripcion` AS `Descripcion`,`consolidadom`.`GRM` AS `GRM`,(((((((((sum(`consolidadom`.`Camp1`) + sum(`consolidadom`.`Camp2`)) + sum(`consolidadom`.`Camp3`)) + sum(`consolidadom`.`Camp4`)) + sum(`consolidadom`.`Camp5`)) + sum(`consolidadom`.`Camp6`)) + sum(`consolidadom`.`Camp7`)) + sum(`consolidadom`.`Camp8`)) + sum(`consolidadom`.`Camp9`)) + sum(`consolidadom`.`Camp10`)) AS `Total`,(((((((((((sum(`consolidadom`.`Camp1`) + sum(`consolidadom`.`Camp2`)) + sum(`consolidadom`.`Camp3`)) + sum(`consolidadom`.`Camp4`)) + sum(`consolidadom`.`Camp5`)) + sum(`consolidadom`.`Camp6`)) + sum(`consolidadom`.`Camp7`)) + sum(`consolidadom`.`Camp8`)) + sum(`consolidadom`.`Camp9`)) + sum(`consolidadom`.`Camp10`)) * `consolidadom`.`GRM`) / 454) AS `Libras` from `consolidadom` group by `consolidadom`.`Codigo` ;

-- ----------------------------
-- View structure for view_rem_ords_cli
-- ----------------------------
DROP VIEW IF EXISTS `view_rem_ords_cli`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_rem_ords_cli` AS select `s`.`IdOrdenS` AS `IdOrdenS`,`s`.`Codigo` AS `Codigo`,`s`.`Descripcion` AS `Descripcion`,`s`.`GR/lb` AS `GR/lb`,`s`.`Unidades` AS `Unidades`,`s`.`LBS` AS `LBS`,`s`.`Vendedor` AS `Vendedor`,`s`.`FechaEntrega` AS `FechaEntrega`,`s`.`Ruta` AS `Ruta`,`s`.`Usuario` AS `Usuario`,`s`.`Cliente` AS `Cliente`,`s`.`Estado` AS `Estado`,`s`.`FechaCreacion` AS `FechaCreacion`,`s`.`Preventa` AS `Preventa`,`c`.`Nombre` AS `Nombre` from (`ordenes_s` `s` join `clientes` `c` on((`s`.`Cliente` = `c`.`IdCliente`))) ;

-- ----------------------------
-- Procedure structure for Consolidado
-- ----------------------------
DROP PROCEDURE IF EXISTS `Consolidado`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Consolidado`(IN fecha VARCHAR(50))
BEGIN
SELECT
	p.Codigo,
	p.Descripcion,
	p.GRM,
	p.Saldo,
	sum(o.unidades) AS "Unidades_Pedidas",
	SUM(o.LBS) AS "LBS",
	o.FechaEntrega,
	p.Estado
FROM
	productos p
JOIN ordenes o ON p.Codigo = o.Codigo
WHERE
	o.FechaEntrega = fecha
GROUP BY
	p.Codigo;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for ConsolidadoOrden
-- ----------------------------
DROP PROCEDURE IF EXISTS `ConsolidadoOrden`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ConsolidadoOrden`(IN fecha VARCHAR(50))
BEGIN
SELECT
	p.Codigo,
	p.Descripcion,
	p.GRM,
	p.Saldo,
	sum(o.unidades) AS "Unidades_Pedidas",
	SUM(o.LBS) AS "LBS",
	o.FechaEntrega,
	p.Estado,
	o.Preventa
FROM
	productos p
JOIN ordenes o ON p.Codigo = o.Codigo
WHERE
	o.FechaEntrega = fecha and o.Preventa = 0
GROUP BY
	p.Codigo;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for ConsolidadoOrdenS
-- ----------------------------
DROP PROCEDURE IF EXISTS `ConsolidadoOrdenS`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ConsolidadoOrdenS`(fecha VARCHAR(50), userid int)
BEGIN
SELECT
	p.Codigo,
	p.Descripcion,
	p.GRM,
	p.Saldo,
	sum(o.unidades) AS "Unidades_Pedidas",
	SUM(o.LBS) AS "LBS",
	o.FechaEntrega,
	p.Estado,
	o.Preventa,
o.Usuario
FROM
	productos p
JOIN ordenes_s o ON p.Codigo = o.Codigo
WHERE
	o.FechaEntrega = fecha and o.Preventa = 0
AND o.Usuario = userid
GROUP BY
	p.Codigo;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for ConsolidadoPreventa
-- ----------------------------
DROP PROCEDURE IF EXISTS `ConsolidadoPreventa`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ConsolidadoPreventa`(IN fecha VARCHAR(50))
BEGIN
SELECT
	p.Codigo,
	p.Descripcion,
	p.GRM,
	p.Saldo,
	sum(o.unidades) AS "Unidades_Pedidas",
	SUM(o.LBS) AS "LBS",
	o.FechaEntrega,
	p.Estado,
	o.Preventa
FROM
	productos p
JOIN ordenes o ON p.Codigo = o.Codigo
WHERE
	o.FechaEntrega = fecha and o.Preventa = 1
GROUP BY
	p.Codigo;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for ConsolidadoPreventaS
-- ----------------------------
DROP PROCEDURE IF EXISTS `ConsolidadoPreventaS`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ConsolidadoPreventaS`(fecha VARCHAR(50), userid int)
BEGIN
SELECT
	p.Codigo,
	p.Descripcion,
	p.GRM,
	p.Saldo,
	sum(o.unidades) AS "Unidades_Pedidas",
	SUM(o.LBS) AS "LBS",
	o.FechaEntrega,
	p.Estado,
	o.Preventa,
o.Usuario
FROM
	productos p
JOIN ordenes_s o ON p.Codigo = o.Codigo
WHERE
	o.FechaEntrega = fecha and o.Preventa = 1
AND o.Usuario = userid
GROUP BY
	p.Codigo;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for ConsolidadoS
-- ----------------------------
DROP PROCEDURE IF EXISTS `ConsolidadoS`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ConsolidadoS`(fecha VARCHAR(50), iduser int)
BEGIN
SELECT
	p.Codigo,
	p.Descripcion,
	p.GRM,
	p.Saldo,
	sum(o.unidades) AS "Unidades_Pedidas",
	SUM(o.LBS) AS "LBS",
	o.FechaEntrega,
	p.Estado
FROM
	productos p
JOIN ordenes_s o ON p.Codigo = o.Codigo
WHERE
	o.FechaEntrega = fecha and o.Usuario = iduser 
GROUP BY
	p.Codigo;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for usp_MostrarFechas
-- ----------------------------
DROP PROCEDURE IF EXISTS `usp_MostrarFechas`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_MostrarFechas`()
BEGIN
SELECT
	o.FechaEntrega
FROM
	consolidado o
JOIN consolidado_s os ON o.FechaEntrega = os.FechaEntrega
GROUP BY
	o.FechaEntrega
ORDER BY
	o.FechaEntrega DESC
LIMIT 10;
END
;;
DELIMITER ;
