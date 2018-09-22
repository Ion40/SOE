/*
Navicat MySQL Data Transfer

Source Server         : Mysql
Source Server Version : 100131
Source Host           : localhost:3306
Source Database       : soe-delmor

Target Server Type    : MYSQL
Target Server Version : 100131
File Encoding         : 65001

Date: 2018-09-22 17:32:51
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for clientes
-- ----------------------------
DROP TABLE IF EXISTS `clientes`;
CREATE TABLE `clientes` (
  `IdCliente` int(11) NOT NULL AUTO_INCREMENT,
  `RolUsuario` int(255) NOT NULL,
  `Nombre` varchar(255) DEFAULT NULL,
  `Ruta` varchar(11) DEFAULT NULL,
  `Estado` bit(1) DEFAULT NULL,
  `FechaCreacion` date DEFAULT NULL,
  PRIMARY KEY (`IdCliente`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=231 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of clientes
-- ----------------------------
INSERT INTO `clientes` VALUES ('1', '8', 'Colonia Hiper', '9', '', '2018-06-29');
INSERT INTO `clientes` VALUES ('2', '8', 'Colonia Nejapa', '9', '', '2018-06-29');
INSERT INTO `clientes` VALUES ('3', '8', 'Colonia carretera sur', '9', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('4', '8', 'Colonia Plaza España', '9', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('5', '8', 'Unión Esquipulas', '9', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('6', '8', 'Unión Linda Vista', '9', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('7', '8', 'Palí 27 de Mayo', '9', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('8', '8', 'MP  Santana', '9', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('9', '8', 'Colonia Las Brisas', '9', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('10', '8', 'Walmart', '9', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('11', '8', 'Colonia Veracruz', '9', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('12', '8', 'Comisariato Policía', '9', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('13', '8', 'Pali Zumen', '9', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('14', '8', 'Pali Linda Vista', '9', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('15', '8', 'Pali Santo Domingo', '9', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('16', '8', 'Pali Esquipulas', '9', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('17', '8', 'Colonia Plaza Inter', '9', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('18', '8', 'Pali Altagracia', '9', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('19', '8', 'Pali Miraflores', '9', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('20', '8', 'Unión Carretera Masaya', '9', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('21', '8', 'Pali Loma Linda', '9', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('22', '8', 'MP Ticuantepe', '9', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('23', '8', 'MP Belmonte', '9', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('24', '8', 'Pali Ciudad Sandino', '9', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('25', '8', 'Pali San Judas', '9', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('26', '8', 'Pali Plaza Logix', '13', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('27', '8', 'Pali Ticuantepe', '9', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('28', '8', 'Colonia Metrocentro', '9', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('29', '8', 'Unión Larreynaga', '13', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('30', '8', 'Cereales y Vegetales', '13', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('31', '8', 'Unión Nejapa', '13', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('32', '8', 'Colonia La Virgen', '13', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('33', '8', 'Unión Bello Horizonte', '13', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('34', '8', 'MP  Oriental', '13', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('35', '8', 'Colonia Rubenia', '13', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('36', '8', 'Pali P del H', '13', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('37', '8', 'Colonia Bello Horizonte', '13', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('38', '8', 'Pali Las Mercedes', '13', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('39', '8', 'MP  Waspán', '13', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('40', '8', 'Colonia La Gran Vía Huembes', '13', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('41', '8', 'Colonia La Sabana', '13', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('42', '8', 'Pali Ciudad Jardín', '13', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('43', '8', 'Pali 1 de Mayo', '13', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('44', '8', 'Pali La Primavera', '13', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('45', '8', 'Pali La Fuente', '13', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('46', '8', 'Colonia Ciudad Jardín', '13', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('47', '8', 'Pali  Santana', '13', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('48', '8', 'Pali Redentor', '13', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('49', '8', 'Pali Gallo y Villa', '13', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('50', '8', 'Pali Las Américas', '13', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('51', '8', 'Pali  Rubenia', '13', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('52', '8', 'Pali Altamira', '13', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('53', '8', 'Pali  Bolívar', '13', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('54', '8', 'MP El Dorado', '13', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('55', '8', 'MP Las Colinas', '13', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('56', '8', 'Pali Chichigalpa', '11', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('57', '8', 'Unión León', '11', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('58', '8', 'MP La Subasta', '11', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('59', '8', 'Pali San Marcos', '11', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('60', '8', 'Unión Granada', '11', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('61', '8', 'Colonia Serranía', '11', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('62', '8', 'Colonia Chinandega', '11', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('63', '8', 'Colonia León', '11', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('64', '8', 'MP Mayoreo', '11', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('65', '8', 'Pali Masatepe', '11', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('66', '8', 'Colonia Granada', '11', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('67', '8', 'Colonia Monseñor Lezcano', '11', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('68', '8', 'MP Chinandega', '11', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('69', '8', 'MP  León', '11', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('70', '8', 'Pali Tipitapa C', '11', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('71', '8', 'Pali Diriamba', '11', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('72', '8', 'Pali Villa Sandino', '11', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('73', '8', 'Colonia  Plaza 11', '11', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('74', '8', 'Súper Selecto', '11', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('75', '8', 'Pali  León ', '11', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('76', '8', 'Pali Tipitapa S', '11', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('77', '8', 'Pali Jinotepe', '11', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('78', '8', 'Pali Granada', '11', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('79', '8', 'Pricesmart Bolonia', '11', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('80', '8', 'Pali Chinandega', '11', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('81', '8', 'Pali Subtiava', '11', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('82', '8', 'Colonia C. de Oriente', '11', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('83', '8', 'Pali Nandaime', '11', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('84', '8', 'Pali  Diriomo', '11', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('85', '8', 'Pricesmart Carretera a Masaya', '11', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('86', '8', 'Pali  El Viejo', '11', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('87', '8', 'Pali Guadalupe', '11', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('88', '8', 'Pali  Rivas', '11', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('89', '8', 'MP  Granada', '11', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('90', '8', 'Pali Corinto', '11', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('91', '8', 'Comisariato León', '11', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('92', '8', 'MP  Rivas', '11', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('93', '8', 'Colonia Masaya Centro', '11', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('94', '8', 'Distribuidora Selecto', '11', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('95', '8', 'Colonia Paseo Real', '11', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('96', '8', 'Pali San Juan del Sur', '11', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('97', '8', 'Colonia Chinandega Centro', '11', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('98', '8', 'MP  Laborío', '11', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('99', '8', 'Colonia Jinotepe', '11', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('100', '8', 'Pali Sébaco', '24', '\0', '2018-06-30');
INSERT INTO `clientes` VALUES ('101', '8', 'Colonia Estelí', '24', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('102', '8', 'Pali Jinotega', '24', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('103', '8', 'Pali Las Flores', '24', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('104', '8', 'Pali  Boaco', '24', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('105', '8', 'Pali San Rafael del Sur', '24', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('106', '8', 'Pali Ciudad Darío', '24', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('107', '8', 'Pali  Ocotal', '24', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('108', '8', 'MP Jinotega', '24', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('109', '8', 'MP Ciudad Sandino', '24', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('110', '8', 'Pali  Juigalpa', '24', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('111', '8', 'Pali Mateare', '24', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('112', '8', 'Pali Estelí Norte', '24', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('113', '8', 'Pali Condega', '24', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('114', '8', 'MP Matagalpa', '24', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('115', '8', 'MP  Masaya', '24', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('116', '8', 'MP  Juigalpa ', '24', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('117', '8', 'Pali Nagarote', '24', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('118', '8', 'MP  Estelí', '24', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('119', '8', 'Pali Somoto', '24', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('120', '8', 'Pali Matagalpa', '24', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('121', '8', 'Colonia Plaza Paseo', '24', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('122', '8', 'Comisariato Juigalpa', '24', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('123', '8', 'Pali La Paz Centro', '24', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('124', '8', 'Pali Estelí Centro', '24', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('125', '8', 'Comisariato Ocotal', '24', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('126', '8', 'Colonia Matagalpa', '24', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('127', '8', 'Pali Nindirí', '24', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('128', '8', 'Pali Santo Tomás', '24', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('129', '8', 'Pali Masaya', '24', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('130', '7', 'Intecpor', '15', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('131', '7', 'Hospital Cesar Amador Molina', '16', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('132', '7', 'Inatec Boaco', '21', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('133', '7', 'Tecnologico Nac. Santiago Baldovino', '21', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('134', '7', 'ADEL PANANCO (COMISARIATO)', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('135', '7', 'ALBA HOTEL, S.A.', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('136', '7', 'ALBALINISA - HOTEL PLAZA SEMINOLE **CORPORACION**', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('137', '7', 'AM:PM  03   (LOS ROBLES)', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('138', '7', 'AM:PM  05  (BELLO HORIZONTE)', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('139', '7', 'AM:PM  15   (INVERCASA)', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('140', '7', 'AM:PM  17   (CENTROAMERICA)', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('141', '7', 'AM:PM  18   (ROCARGO)', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('142', '7', 'AM:PM  19   (RUBENIA)', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('143', '7', 'AM:PM  21   (WASPAN)', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('144', '7', 'AM:PM  22   (PETRONIC LOZELSA)', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('145', '7', 'AM:PM 04  (PLAZA ESPAÑA)', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('146', '7', 'AM:PM 06  (LINDA VISTA)', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('147', '7', 'AM:PM 07  (ESCALA)', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('148', '7', 'AM:PM 10  (LOS VADOS)', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('149', '7', 'AM:PM 13  ( ISRAEL  LEWITES)', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('150', '7', 'AM:PM 14  ( METROPOLITANO)', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('151', '7', 'ASADOS EL TORO', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('152', '7', 'ASIATRONIC', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('153', '7', 'CENTRO DE ENSEÑANZA TECNICA AGROPECUARIA SANTIAGO BALDOVINO', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('154', '7', 'COMEDOR INTERNOS (UNI CENTRAL MANAGUA)', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('155', '7', 'COMEDOR UNAN MANAGUA', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('156', '7', 'COMERCIAL EL BISNE', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('157', '7', 'COMISARIATO DEL SISTEMA PENITENCIARIO DE TIPITAPA', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('158', '7', 'COMISARIATO FUERZA AEREA', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('159', '7', 'COMISARIATO HOSPITAL BAUTISTA-MARILIN MENDEZ VARELA', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('160', '7', 'COMISARIATO SITRA - UNAN MANAGUA', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('161', '7', 'COMPAÑIA CERVECERA DE NICARAGUA', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('162', '7', 'COMUNICARTE, S. A.  (C. SUR)', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('163', '7', 'COMUNICARTE, S. A.  ** CORPORACION**', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('164', '7', 'CONSULTORES DE INVERSIONES,  S.A.  SEGURIDAD  HEX', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('165', '7', 'CONVECION BAUTISTA DE NICARAGUA', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('166', '7', 'CSA, S.A.', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('167', '7', 'DIRECCION SEGURIDAD PERSONAL', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('168', '7', 'DON CHACA S.A. Y SU PARRILLA', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('169', '7', 'DON PAN', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('170', '7', 'EL  COROZO S.A.   -  HOTEL  GRANADA', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('171', '7', 'EMPRESA MEDICA PREVICIONAL HCRN-PN', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('172', '7', 'ENERGIA Y COMBUSTIBLE S.A. (LAS COLINAS)', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('173', '7', 'FACTORY PIZZA', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('174', '7', 'FOOD & BEVERAGE S.A. (HOOTERS)', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('175', '7', 'GRUPO AMANO INTERNACIONAL  **CORPORACION**', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('176', '7', 'GRUPO AMANO INTERNACIONAL S.A. (BARCELO)', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('177', '7', 'HOLTE BARCELO MONTELIMAR', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('178', '7', 'HOSPITAL ALEMAN NICARAGUENSE', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('179', '7', 'HOSPITAL BERTHA CALDERON ROQUE', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('180', '7', 'HOSPITAL CESAR AMADOR MOLINA', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('181', '7', 'HOTEL (CROWNE PLAZA)', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('182', '7', 'HOTEL AGUALCAS / GIOCONDA LEON HERNANDEZ', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('183', '7', 'HOTEL CAMINO REAL', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('184', '7', 'HOTEL HOLIDAY INN SELECT', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('185', '7', 'HOTEL INTER - METROCENTRO', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('186', '7', 'HOTEL LAS MERCEDES', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('187', '7', 'HOTEL MANSION TEODOLINDA', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('188', '7', 'HOTEL PRINCESS REAL STATE', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('189', '7', 'INCORSA (METROCENTRO)', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('190', '7', 'INCORSA (MULTICENTRO  LAS AMERICAS)', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('191', '7', 'INCORSA (SANTO DOMINGO)', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('192', '7', 'INVERSIONES GRAMAJO S,A', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('193', '7', 'JOSE LUIS ALEMAN CACERES', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('194', '7', 'MICRO EMPRESA UNAN', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('195', '7', 'MOMENTUM DEVELOPMENT S.A.', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('196', '7', 'MULTISERVICIOS EMPRESARIALES E INVERSIONES', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('197', '7', 'NEGOCIOS Y CONVENCIONES SOCIEDAD ANONIMA', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('198', '7', 'NICACHEF S.A.', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('199', '7', 'NOVUSER INVERSIONES S.A.', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('200', '7', 'POLICIA DE LEON', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('201', '7', 'PUNTO IDEAL, S.A. -  (ALTAMIRA)', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('202', '7', 'PUNTO IDEAL, S.A. -  (BELLO HORIZONTE)', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('203', '7', 'PUNTO IDEAL, S.A. -  (CARRETERA MASAYA)', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('204', '7', 'PUNTO IDEAL, S.A. -  (CIUDAD SANDINO 2)', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('205', '7', 'PUNTO IDEAL, S.A. -  (CIUDAD SANDINO)', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('206', '7', 'PUNTO IDEAL, S.A. -  (EL NOGAL)', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('207', '7', 'PUNTO IDEAL, S.A. -  (MONSEÑOR LEZCANO))', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('208', '7', 'PUNTO IDEAL, S.A. -  (PLAZA LAS COLINAS)', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('209', '7', 'PUNTO IDEAL, S.A. -  (PLAZA SALVADORITA)', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('210', '7', 'PUNTO IDEAL, S.A. -  (PLAZA VERA CRUZ)', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('211', '7', 'PUNTO IDEAL, S.A. -  (SAN JUAN DEL SUR)', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('212', '7', 'PUNTO IDEAL, S.A. -  (TICUANTEPE)', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('213', '7', 'PUNTO IDEAL, S.A. -  (VILLA LIBERTAD)', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('214', '7', 'PUNTO IDEAL, S.A. -  (ZUMEN)', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('215', '7', 'PUNTO IDEAL, S.A. - ** CORPORACION**', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('216', '7', 'SINDICATO BLANCA ARAUZ PICADO', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('217', '7', 'SISTEMA PENITENCIARIO DE TIPITAPA  **CORP**', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('218', '7', 'SISTEMA PENITENCIARIO DE TIPITAPA (COMEDOR)', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('219', '7', 'SITEMA PENITENCIARIO DE TIPITAPA (COMISARIATO)', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('220', '7', 'UNIVERSIDAD NACIONAL AUTONOMA (RUCFA)', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('221', '7', 'VALENTI RAMIREZ Y CIA LTDA (VALENTIS PIZZA)', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('222', '7', 'VALENTIS PIZZA (LOS ROBLES)', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('223', '7', 'VASQUEZ NIÑO IMPORTACIONES', '17,23,28', '', '2018-06-30');
INSERT INTO `clientes` VALUES ('224', '7', 'Atomic Pizza', '17,23,28', '', '2018-07-02');
INSERT INTO `clientes` VALUES ('225', '7', 'Taco Stop', '17,23,28', '', '2018-07-02');
INSERT INTO `clientes` VALUES ('226', '7', 'Inversiones', '17,23,28', '', '2018-07-02');
INSERT INTO `clientes` VALUES ('227', '7', 'El Cerdito', '17,23,28', '', '2018-07-02');
INSERT INTO `clientes` VALUES ('228', '7', 'Panadería Jerusalem (Managua)', '17,23,28', '', '2018-07-02');
INSERT INTO `clientes` VALUES ('229', '7', 'Fuerza Aérea (Extranjero)', '17,23,28', '', '2018-07-02');
INSERT INTO `clientes` VALUES ('230', '7', 'CETA santiago baltodovino -muy muy', '21', '', '2018-07-05');

-- ----------------------------
-- Table structure for consecpreventa
-- ----------------------------
DROP TABLE IF EXISTS `consecpreventa`;
CREATE TABLE `consecpreventa` (
  `Valor` int(11) DEFAULT NULL,
  `Concepto` varchar(255) DEFAULT NULL,
  `Ruta` int(11) DEFAULT NULL,
  `FechaEntrega` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of consecpreventa
-- ----------------------------
INSERT INTO `consecpreventa` VALUES ('0', 'Preventa', null, null);
INSERT INTO `consecpreventa` VALUES ('1', 'Preventa', '3', '2018-08-02');
INSERT INTO `consecpreventa` VALUES ('2', 'Preventa', '6', '2018-08-03');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of consecremision
-- ----------------------------
INSERT INTO `consecremision` VALUES ('0', 'Remision', null, null, null);
INSERT INTO `consecremision` VALUES ('1', 'Remision', '15', '2018-08-04', '4');
INSERT INTO `consecremision` VALUES ('2', 'Remision', '13', '2018-08-04', '15');
INSERT INTO `consecremision` VALUES ('3', 'Remision', '9', '2018-08-04', '15');
INSERT INTO `consecremision` VALUES ('4', 'Remision', '3', '2018-08-02', '8');
INSERT INTO `consecremision` VALUES ('5', 'Remision', '2', '2018-08-04', '9');
INSERT INTO `consecremision` VALUES ('6', 'Remision', '2', '2018-08-04', '9');
INSERT INTO `consecremision` VALUES ('7', 'Remision', '17', '2018-08-03', '14');
INSERT INTO `consecremision` VALUES ('8', 'Remision', '11', '2018-08-04', '15');
INSERT INTO `consecremision` VALUES ('9', 'Remision', '17', '2018-08-03', '14');
INSERT INTO `consecremision` VALUES ('10', 'Remision', '9', '2018-08-04', '15');
INSERT INTO `consecremision` VALUES ('11', 'Remision', '11', '2018-08-04', '18');
INSERT INTO `consecremision` VALUES ('12', 'Remision', '9', '2018-08-04', '19');
INSERT INTO `consecremision` VALUES ('13', 'Remision', '13', '2018-08-06', '15');
INSERT INTO `consecremision` VALUES ('14', 'Remision', '13', '2018-08-06', '15');
INSERT INTO `consecremision` VALUES ('15', 'Remision', '9', '2018-08-04', '19');
INSERT INTO `consecremision` VALUES ('16', 'Remision', '9', '2018-08-04', '19');
INSERT INTO `consecremision` VALUES ('17', 'Remision', '13', '2018-08-06', '15');
INSERT INTO `consecremision` VALUES ('18', 'Remision', '11', '2018-08-04', '19');
INSERT INTO `consecremision` VALUES ('19', 'Remision', '11', '2018-08-04', '19');
INSERT INTO `consecremision` VALUES ('20', 'Remision', '11', '2018-08-04', '18');
INSERT INTO `consecremision` VALUES ('21', 'Remision', '11', '2018-08-04', '19');
INSERT INTO `consecremision` VALUES ('22', 'Remision', '13', '2018-08-06', '15');
INSERT INTO `consecremision` VALUES ('23', 'Remision', '11', '2018-08-04', '18');
INSERT INTO `consecremision` VALUES ('24', 'Remision', '13', '2018-08-06', '15');
INSERT INTO `consecremision` VALUES ('25', 'Remision', '12', '2018-08-04', '19');
INSERT INTO `consecremision` VALUES ('26', 'Remision', '13', '2018-08-06', '15');
INSERT INTO `consecremision` VALUES ('27', 'Remision', '12', '2018-08-04', '19');
INSERT INTO `consecremision` VALUES ('28', 'Remision', '24', '2018-08-04', '18');
INSERT INTO `consecremision` VALUES ('29', 'Remision', '12', '2018-08-04', '19');
INSERT INTO `consecremision` VALUES ('30', 'Remision', '24', '2018-08-04', '18');
INSERT INTO `consecremision` VALUES ('31', 'Remision', '9', '2018-08-06', '15');
INSERT INTO `consecremision` VALUES ('32', 'Remision', '24', '2018-08-04', '18');
INSERT INTO `consecremision` VALUES ('33', 'Remision', '9', '2018-08-06', '15');
INSERT INTO `consecremision` VALUES ('34', 'Remision', '12', '2018-08-04', '19');
INSERT INTO `consecremision` VALUES ('35', 'Remision', '13', '2018-08-04', '19');
INSERT INTO `consecremision` VALUES ('36', 'Remision', '9', '2018-08-06', '15');
INSERT INTO `consecremision` VALUES ('37', 'Remision', '13', '2018-08-04', '19');
INSERT INTO `consecremision` VALUES ('38', 'Remision', '9', '2018-08-04', '18');
INSERT INTO `consecremision` VALUES ('39', 'Remision', '13', '2018-08-04', '19');
INSERT INTO `consecremision` VALUES ('40', 'Remision', '9', '2018-08-06', '15');
INSERT INTO `consecremision` VALUES ('41', 'Remision', '9', '2018-08-04', '18');
INSERT INTO `consecremision` VALUES ('42', 'Remision', '5', '2018-08-03', '9');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of consec_consolidado
-- ----------------------------
INSERT INTO `consec_consolidado` VALUES ('0', 'Consecutivo', null, null, null);
INSERT INTO `consec_consolidado` VALUES ('1', 'Consecutivo', 'O', '2018-08-04', '15');
INSERT INTO `consec_consolidado` VALUES ('2', 'Consecutivo', 'O', '2018-08-06', '15');
INSERT INTO `consec_consolidado` VALUES ('3', 'Consecutivo', 'O', '2018-08-06', '15');
INSERT INTO `consec_consolidado` VALUES ('4', 'Consecutivo', 'U', '2018-08-06', '15');
INSERT INTO `consec_consolidado` VALUES ('5', 'Consecutivo', 'O', '2018-08-02', '8');
INSERT INTO `consec_consolidado` VALUES ('6', 'Consecutivo', 'O', '2018-05-21', '12');
INSERT INTO `consec_consolidado` VALUES ('7', 'Consecutivo', 'O', '2018-05-21', '12');
INSERT INTO `consec_consolidado` VALUES ('8', 'Consecutivo', 'O', '2018-05-21', '12');
INSERT INTO `consec_consolidado` VALUES ('9', 'Consecutivo', 'O', '2018-05-21', '12');
INSERT INTO `consec_consolidado` VALUES ('10', 'Consecutivo', 'O', '2018-05-21', '12');

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
  `Tipo` varchar(255) DEFAULT NULL,
  `Usuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of consolidado
-- ----------------------------
INSERT INTO `consolidado` VALUES ('1109', 'MORT-BOLOGNA (225 GR) (1102)', '225.000', '23.000', '11.40', '2018-05-21', '2018-09-22', '859.000', '836.000', '0', 'O', '12');
INSERT INTO `consolidado` VALUES ('1113', 'MORT-CHILTOMA  (225 GR)', '225.000', '72.000', '35.68', '2018-05-21', '2018-09-22', '2060.000', '1988.000', '0', 'O', '12');
INSERT INTO `consolidado` VALUES ('1117', 'MORT-POPULAR A GRANEL (PIEZA)', '454.000', '46.000', '46.00', '2018-05-21', '2018-09-22', '682.830', '636.830', '0', 'O', '12');
INSERT INTO `consolidado` VALUES ('1119', 'MORT-POPULAR (PAQUETE)', '454.000', '320.000', '320.00', '2018-05-21', '2018-09-22', '1794.000', '1474.000', '0', 'O', '12');
INSERT INTO `consolidado` VALUES ('1121', 'MORT-ECONOMICA  (GRANEL/PIEZA)', '454.000', '45.000', '45.00', '2018-05-21', '2018-09-22', '261.240', '216.240', '0', 'O', '12');
INSERT INTO `consolidado` VALUES ('1123', 'MORT-ECONOMICA (125 GR)', '125.000', '387.000', '106.56', '2018-05-21', '2018-09-22', '8763.000', '8376.000', '0', 'O', '12');
INSERT INTO `consolidado` VALUES ('1126', 'MORT-ECONOMICA (454 GR)', '454.000', '3.000', '3.00', '2018-05-21', '2018-09-22', '1297.000', '1294.000', '0', 'O', '12');
INSERT INTO `consolidado` VALUES ('1127', 'MORT-POPULAR (½) 227 GRAMOS', '227.000', '288.000', '144.00', '2018-05-21', '2018-09-22', '6598.000', '6310.000', '0', 'O', '12');
INSERT INTO `consolidado` VALUES ('1130', 'MORT-JAMONADA  (GRANEL/PIEZA)', '454.000', '6.000', '6.00', '2018-05-21', '2018-09-22', '399.720', '393.720', '0', 'O', '12');
INSERT INTO `consolidado` VALUES ('1131', 'MORT. JAMONADA (150 GR.)', '150.000', '22.000', '7.27', '2018-05-21', '2018-09-22', '1014.000', '992.000', '0', 'O', '12');
INSERT INTO `consolidado` VALUES ('1135', 'MORT-CON TOCINO (225GR)', '225.000', '49.000', '24.28', '2018-05-21', '2018-09-22', '1357.000', '1308.000', '0', 'O', '12');
INSERT INTO `consolidado` VALUES ('1137', 'MORT-JAMONADA DELMOR (454 GR)', '454.000', '78.000', '78.00', '2018-05-21', '2018-09-22', '2101.000', '2023.000', '0', 'O', '12');
INSERT INTO `consolidado` VALUES ('1210', 'HOT DOG (170 GR.)', '170.000', '239.000', '89.49', '2018-05-21', '2018-09-22', '4581.000', '4342.000', '0', 'O', '12');
INSERT INTO `consolidado` VALUES ('1217', 'SALCHI. HOT DOG POPUL. ( 22 UNDS)  (0409 GR.)', '409.000', '185.000', '166.67', '2018-05-21', '2018-09-22', '2018.000', '1833.000', '0', 'O', '12');
INSERT INTO `consolidado` VALUES ('1221', 'SALAMI         PIEZA        (GRANEL)', '454.000', '454.000', '454.00', '2018-05-21', '2018-09-22', '-265.900', '-719.900', '2', 'O', '12');
INSERT INTO `consolidado` VALUES ('1227', 'SALAMI  CORTADO PREMIUN PIZZA(1224)/ PARA SUPER', '454.000', '360.000', '360.00', '2018-05-21', '2018-09-22', '769.700', '409.700', '0', 'O', '12');
INSERT INTO `consolidado` VALUES ('1640', 'MORT-    POLLO  (150 GR.)', '150.000', '24.000', '7.93', '2018-05-21', '2018-09-22', '2064.000', '2040.000', '0', 'O', '12');
INSERT INTO `consolidado` VALUES ('1645', 'MORT. DE PAVO', '454.000', '0.000', '0.00', '2018-05-21', '2018-09-22', '826.000', '826.000', '0', 'O', '12');
INSERT INTO `consolidado` VALUES ('1650', 'SALCH-  POLLO             (170 GR.)', '170.000', '54.000', '20.22', '2018-05-21', '2018-09-22', '2061.000', '2007.000', '0', 'O', '12');
INSERT INTO `consolidado` VALUES ('1803', 'MORT. FRANKFURT (125 GR.)', '125.000', '36.000', '9.91', '2018-05-21', '2018-09-22', '4133.000', '4097.000', '0', 'O', '12');
INSERT INTO `consolidado` VALUES ('1811', 'SALCH-  FRANKFURT  (170 GR.)', '170.000', '270.000', '101.10', '2018-05-21', '2018-09-22', '3024.000', '2754.000', '0', 'O', '12');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of consolidadom
-- ----------------------------
INSERT INTO `consolidadom` VALUES ('1101', 'MORT BOLOGNA     GRANEL', '454', '2018-09-22', '12.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of consolidado_s
-- ----------------------------
INSERT INTO `consolidado_s` VALUES ('1101', 'MORT-BOLOGNA     (GRANEL)', '454.000', '28.000', '28.00', '2018-08-04', '2018-08-02', '1.000', '-27.000', '2', 'O', '15');
INSERT INTO `consolidado_s` VALUES ('1107', 'MORT-BOLOGNA DELMOR (454 GR)', '454.000', '50.000', '50.00', '2018-08-04', '2018-08-02', '1433.000', '1383.000', '0', 'O', '15');
INSERT INTO `consolidado_s` VALUES ('1109', 'MORT-BOLOGNA (225 GR) (1102)', '225.000', '20.000', '9.91', '2018-08-04', '2018-08-02', '1305.000', '1285.000', '0', 'O', '15');
INSERT INTO `consolidado_s` VALUES ('1111', 'MORT-CHILTOMA  (GRANEL / PIEZA)', '454.000', '10.000', '10.00', '2018-08-04', '2018-08-02', '340.000', '330.000', '0', 'O', '15');
INSERT INTO `consolidado_s` VALUES ('1112', 'MORT-CHILTOMA  (150 GR)', '150.000', '10.000', '3.30', '2018-08-04', '2018-08-02', '1.000', '-9.000', '2', 'O', '15');
INSERT INTO `consolidado_s` VALUES ('1113', 'MORT-CHILTOMA  (225 GR)', '225.000', '30.000', '14.87', '2018-08-04', '2018-08-02', '1848.000', '1818.000', '0', 'O', '15');
INSERT INTO `consolidado_s` VALUES ('1101', 'MORT-BOLOGNA     (GRANEL)', '454.000', '77.000', '77.00', '2018-08-06', '2018-08-02', '-27.000', '-104.000', '2', 'O', '15');
INSERT INTO `consolidado_s` VALUES ('1107', 'MORT-BOLOGNA DELMOR (454 GR)', '454.000', '60.000', '60.00', '2018-08-06', '2018-08-02', '1383.000', '1323.000', '0', 'O', '15');
INSERT INTO `consolidado_s` VALUES ('1109', 'MORT-BOLOGNA (225 GR) (1102)', '225.000', '80.000', '39.68', '2018-08-06', '2018-08-02', '1285.000', '1205.000', '0', 'O', '15');
INSERT INTO `consolidado_s` VALUES ('1111', 'MORT-CHILTOMA  (GRANEL / PIEZA)', '454.000', '80.000', '80.00', '2018-08-06', '2018-08-02', '330.000', '250.000', '0', 'O', '15');
INSERT INTO `consolidado_s` VALUES ('1112', 'MORT-CHILTOMA  (150 GR)', '150.000', '90.000', '29.70', '2018-08-06', '2018-08-02', '-9.000', '-99.000', '2', 'O', '15');
INSERT INTO `consolidado_s` VALUES ('1113', 'MORT-CHILTOMA  (225 GR)', '225.000', '80.000', '39.68', '2018-08-06', '2018-08-02', '1818.000', '1738.000', '0', 'O', '15');
INSERT INTO `consolidado_s` VALUES ('1117', 'MORT-POPULAR A GRANEL (PIEZA)', '454.000', '80.000', '80.00', '2018-08-06', '2018-08-02', '1126.000', '1046.000', '0', 'O', '15');
INSERT INTO `consolidado_s` VALUES ('1119', 'MORT-POPULAR (PAQUETE)', '454.000', '141.000', '141.00', '2018-08-06', '2018-08-02', '2806.000', '2665.000', '0', 'O', '15');
INSERT INTO `consolidado_s` VALUES ('1121', 'MORT-ECONOMICA  (GRANEL/PIEZA)', '454.000', '121.000', '121.00', '2018-08-06', '2018-08-02', '615.000', '494.000', '0', 'O', '15');
INSERT INTO `consolidado_s` VALUES ('1123', 'MORT-ECONOMICA (125 GR)', '125.000', '20.000', '5.50', '2018-08-06', '2018-08-02', '7033.000', '7013.000', '0', 'O', '15');
INSERT INTO `consolidado_s` VALUES ('1126', 'MORT-ECONOMICA (454 GR)', '454.000', '10.000', '10.00', '2018-08-06', '2018-08-02', '1106.000', '1096.000', '0', 'O', '15');
INSERT INTO `consolidado_s` VALUES ('1190', 'MORT-CON TOCINO (150 GR.)', '150.000', '10.000', '3.30', '2018-08-06', '2018-08-02', '-23.000', '-33.000', '2', 'O', '15');
INSERT INTO `consolidado_s` VALUES ('1210', 'HOT DOG (170 GR.)', '170.000', '30.000', '11.23', '2018-08-06', '2018-08-02', '4596.000', '4566.000', '0', 'O', '15');
INSERT INTO `consolidado_s` VALUES ('1232', 'PEPERONI 454 GR', '454.000', '10.000', '10.00', '2018-08-06', '2018-08-02', '-17.000', '-27.000', '2', 'O', '15');
INSERT INTO `consolidado_s` VALUES ('1234', 'SALAMI PREMIUN 1000 (GRANEL)', '454.000', '10.000', '10.00', '2018-08-06', '2018-08-02', '-23.000', '-33.000', '2', 'O', '15');
INSERT INTO `consolidado_s` VALUES ('1101', 'MORT-BOLOGNA     (GRANEL)', '454.000', '77.000', '77.00', '2018-08-06', '2018-08-02', '-27.000', '-104.000', '2', 'O', '15');
INSERT INTO `consolidado_s` VALUES ('1243', 'SALCH- DESAYUNO ESPECIAL (GRANEL)', '454.000', '10.000', '10.00', '2018-08-06', '2018-08-02', '996.000', '986.000', '0', 'O', '15');
INSERT INTO `consolidado_s` VALUES ('1107', 'MORT-BOLOGNA DELMOR (454 GR)', '454.000', '60.000', '60.00', '2018-08-06', '2018-08-02', '1383.000', '1323.000', '0', 'O', '15');
INSERT INTO `consolidado_s` VALUES ('1250', 'SALCH-JUMBO ECONOMAX (378 G)', '378.000', '10.000', '8.33', '2018-08-06', '2018-08-02', '679.000', '669.000', '0', 'O', '15');
INSERT INTO `consolidado_s` VALUES ('1109', 'MORT-BOLOGNA (225 GR) (1102)', '225.000', '80.000', '39.68', '2018-08-06', '2018-08-02', '1285.000', '1205.000', '0', 'O', '15');
INSERT INTO `consolidado_s` VALUES ('1270', 'SALCHICHA MUNICH (454 GR)', '454.000', '15.000', '15.00', '2018-08-06', '2018-08-02', '-22.000', '-37.000', '2', 'O', '15');
INSERT INTO `consolidado_s` VALUES ('1111', 'MORT-CHILTOMA  (GRANEL / PIEZA)', '454.000', '80.000', '80.00', '2018-08-06', '2018-08-02', '330.000', '250.000', '0', 'O', '15');
INSERT INTO `consolidado_s` VALUES ('1272', 'SALCHICHA MUNICH GRANEL', '454.000', '10.000', '10.00', '2018-08-06', '2018-08-02', '-23.000', '-33.000', '2', 'O', '15');
INSERT INTO `consolidado_s` VALUES ('1112', 'MORT-CHILTOMA  (150 GR)', '150.000', '90.000', '29.70', '2018-08-06', '2018-08-02', '-9.000', '-99.000', '2', 'O', '15');
INSERT INTO `consolidado_s` VALUES ('1275', 'SALCHICHA MUNICH KILO', '1000.000', '10.000', '22.03', '2018-08-06', '2018-08-02', '-23.000', '-33.000', '2', 'O', '15');
INSERT INTO `consolidado_s` VALUES ('1113', 'MORT-CHILTOMA  (225 GR)', '225.000', '80.000', '39.68', '2018-08-06', '2018-08-02', '1818.000', '1738.000', '0', 'O', '15');
INSERT INTO `consolidado_s` VALUES ('1279', 'Salchicha Jumbo 2.3', '1000.000', '10.000', '22.03', '2018-08-06', '2018-08-02', '70.000', '60.000', '0', 'O', '15');
INSERT INTO `consolidado_s` VALUES ('1117', 'MORT-POPULAR A GRANEL (PIEZA)', '454.000', '80.000', '80.00', '2018-08-06', '2018-08-02', '1126.000', '1046.000', '0', 'O', '15');
INSERT INTO `consolidado_s` VALUES ('1335', 'JAMON PIC NIC (125 GR)', '125.000', '20.000', '5.51', '2018-08-06', '2018-08-02', '2478.000', '2458.000', '0', 'O', '15');
INSERT INTO `consolidado_s` VALUES ('1119', 'MORT-POPULAR (PAQUETE)', '454.000', '141.000', '141.00', '2018-08-06', '2018-08-02', '2806.000', '2665.000', '0', 'O', '15');
INSERT INTO `consolidado_s` VALUES ('1502', 'CARNE MOLIDA POLLO    (LIBRA)', '454.000', '10.000', '10.00', '2018-08-06', '2018-08-02', '3214.000', '3204.000', '0', 'O', '15');
INSERT INTO `consolidado_s` VALUES ('1121', 'MORT-ECONOMICA  (GRANEL/PIEZA)', '454.000', '121.000', '121.00', '2018-08-06', '2018-08-02', '615.000', '494.000', '0', 'O', '15');
INSERT INTO `consolidado_s` VALUES ('1670', 'SALCHICHON POLLO       (200  GR)', '200.000', '20.000', '8.81', '2018-08-06', '2018-08-02', '700.000', '680.000', '0', 'O', '15');
INSERT INTO `consolidado_s` VALUES ('1123', 'MORT-ECONOMICA (125 GR)', '125.000', '20.000', '5.50', '2018-08-06', '2018-08-02', '7033.000', '7013.000', '0', 'O', '15');
INSERT INTO `consolidado_s` VALUES ('1791', 'PASTRAMI', '454.000', '10.000', '10.00', '2018-08-06', '2018-08-02', '-23.000', '-33.000', '2', 'O', '15');
INSERT INTO `consolidado_s` VALUES ('1126', 'MORT-ECONOMICA (454 GR)', '454.000', '10.000', '10.00', '2018-08-06', '2018-08-02', '1106.000', '1096.000', '0', 'O', '15');
INSERT INTO `consolidado_s` VALUES ('1792', 'ROAST BEEF', '454.000', '10.000', '10.00', '2018-08-06', '2018-08-02', '-23.000', '-33.000', '2', 'O', '15');
INSERT INTO `consolidado_s` VALUES ('1190', 'MORT-CON TOCINO (150 GR.)', '150.000', '10.000', '3.30', '2018-08-06', '2018-08-02', '-23.000', '-33.000', '2', 'O', '15');
INSERT INTO `consolidado_s` VALUES ('1970', 'SALCHICHON RES            (200  GR)', '200.000', '10.000', '4.41', '2018-08-06', '2018-08-02', '7952.000', '7942.000', '0', 'O', '15');
INSERT INTO `consolidado_s` VALUES ('1210', 'HOT DOG (170 GR.)', '170.000', '30.000', '11.23', '2018-08-06', '2018-08-02', '4596.000', '4566.000', '0', 'O', '15');
INSERT INTO `consolidado_s` VALUES ('1232', 'PEPERONI 454 GR', '454.000', '10.000', '10.00', '2018-08-06', '2018-08-02', '-17.000', '-27.000', '2', 'O', '15');
INSERT INTO `consolidado_s` VALUES ('1234', 'SALAMI PREMIUN 1000 (GRANEL)', '454.000', '10.000', '10.00', '2018-08-06', '2018-08-02', '-23.000', '-33.000', '2', 'O', '15');
INSERT INTO `consolidado_s` VALUES ('1243', 'SALCH- DESAYUNO ESPECIAL (GRANEL)', '454.000', '10.000', '10.00', '2018-08-06', '2018-08-02', '996.000', '986.000', '0', 'O', '15');
INSERT INTO `consolidado_s` VALUES ('1250', 'SALCH-JUMBO ECONOMAX (378 G)', '378.000', '10.000', '8.33', '2018-08-06', '2018-08-02', '679.000', '669.000', '0', 'O', '15');
INSERT INTO `consolidado_s` VALUES ('1270', 'SALCHICHA MUNICH (454 GR)', '454.000', '15.000', '15.00', '2018-08-06', '2018-08-02', '-22.000', '-37.000', '2', 'O', '15');
INSERT INTO `consolidado_s` VALUES ('1272', 'SALCHICHA MUNICH GRANEL', '454.000', '10.000', '10.00', '2018-08-06', '2018-08-02', '-23.000', '-33.000', '2', 'O', '15');
INSERT INTO `consolidado_s` VALUES ('1275', 'SALCHICHA MUNICH KILO', '1000.000', '10.000', '22.03', '2018-08-06', '2018-08-02', '-23.000', '-33.000', '2', 'O', '15');
INSERT INTO `consolidado_s` VALUES ('1279', 'Salchicha Jumbo 2.3', '1000.000', '10.000', '22.03', '2018-08-06', '2018-08-02', '70.000', '60.000', '0', 'O', '15');
INSERT INTO `consolidado_s` VALUES ('1335', 'JAMON PIC NIC (125 GR)', '125.000', '20.000', '5.51', '2018-08-06', '2018-08-02', '2478.000', '2458.000', '0', 'O', '15');
INSERT INTO `consolidado_s` VALUES ('1502', 'CARNE MOLIDA POLLO    (LIBRA)', '454.000', '10.000', '10.00', '2018-08-06', '2018-08-02', '3214.000', '3204.000', '0', 'O', '15');
INSERT INTO `consolidado_s` VALUES ('1670', 'SALCHICHON POLLO       (200  GR)', '200.000', '20.000', '8.81', '2018-08-06', '2018-08-02', '700.000', '680.000', '0', 'O', '15');
INSERT INTO `consolidado_s` VALUES ('1791', 'PASTRAMI', '454.000', '10.000', '10.00', '2018-08-06', '2018-08-02', '-23.000', '-33.000', '2', 'O', '15');
INSERT INTO `consolidado_s` VALUES ('1792', 'ROAST BEEF', '454.000', '10.000', '10.00', '2018-08-06', '2018-08-02', '-23.000', '-33.000', '2', 'O', '15');
INSERT INTO `consolidado_s` VALUES ('1970', 'SALCHICHON RES            (200  GR)', '200.000', '10.000', '4.41', '2018-08-06', '2018-08-02', '7952.000', '7942.000', '0', 'O', '15');
INSERT INTO `consolidado_s` VALUES ('1502', 'CARNE MOLIDA POLLO    (LIBRA)', '454.000', '10.000', '10.00', '2018-08-06', '2018-08-02', '3204.000', '3194.000', '0', 'U', '15');
INSERT INTO `consolidado_s` VALUES ('1210', 'HOT DOG (170 GR.)', '170.000', '30.000', '11.23', '2018-08-06', '2018-08-02', '4566.000', '4536.000', '0', 'U', '15');
INSERT INTO `consolidado_s` VALUES ('1335', 'JAMON PIC NIC (125 GR)', '125.000', '20.000', '5.51', '2018-08-06', '2018-08-02', '2458.000', '2438.000', '0', 'U', '15');
INSERT INTO `consolidado_s` VALUES ('1101', 'MORT-BOLOGNA     (GRANEL)', '454.000', '77.000', '77.00', '2018-08-06', '2018-08-02', '-104.000', '-181.000', '2', 'U', '15');
INSERT INTO `consolidado_s` VALUES ('1109', 'MORT-BOLOGNA (225 GR) (1102)', '225.000', '80.000', '39.68', '2018-08-06', '2018-08-02', '1205.000', '1125.000', '0', 'U', '15');
INSERT INTO `consolidado_s` VALUES ('1107', 'MORT-BOLOGNA DELMOR (454 GR)', '454.000', '60.000', '60.00', '2018-08-06', '2018-08-02', '1323.000', '1263.000', '0', 'U', '15');
INSERT INTO `consolidado_s` VALUES ('1112', 'MORT-CHILTOMA  (150 GR)', '150.000', '90.000', '29.70', '2018-08-06', '2018-08-02', '-99.000', '-189.000', '2', 'U', '15');
INSERT INTO `consolidado_s` VALUES ('1113', 'MORT-CHILTOMA  (225 GR)', '225.000', '80.000', '39.68', '2018-08-06', '2018-08-02', '1738.000', '1658.000', '0', 'U', '15');
INSERT INTO `consolidado_s` VALUES ('1111', 'MORT-CHILTOMA  (GRANEL / PIEZA)', '454.000', '80.000', '80.00', '2018-08-06', '2018-08-02', '250.000', '170.000', '0', 'U', '15');
INSERT INTO `consolidado_s` VALUES ('1190', 'MORT-CON TOCINO (150 GR.)', '150.000', '10.000', '3.30', '2018-08-06', '2018-08-02', '-33.000', '-43.000', '2', 'U', '15');
INSERT INTO `consolidado_s` VALUES ('1121', 'MORT-ECONOMICA  (GRANEL/PIEZA)', '454.000', '121.000', '121.00', '2018-08-06', '2018-08-02', '494.000', '373.000', '0', 'U', '15');
INSERT INTO `consolidado_s` VALUES ('1123', 'MORT-ECONOMICA (125 GR)', '125.000', '20.000', '5.50', '2018-08-06', '2018-08-02', '7013.000', '6993.000', '0', 'U', '15');
INSERT INTO `consolidado_s` VALUES ('1126', 'MORT-ECONOMICA (454 GR)', '454.000', '10.000', '10.00', '2018-08-06', '2018-08-02', '1096.000', '1086.000', '0', 'U', '15');
INSERT INTO `consolidado_s` VALUES ('1119', 'MORT-POPULAR (PAQUETE)', '454.000', '141.000', '141.00', '2018-08-06', '2018-08-02', '2665.000', '2524.000', '0', 'U', '15');
INSERT INTO `consolidado_s` VALUES ('1117', 'MORT-POPULAR A GRANEL (PIEZA)', '454.000', '80.000', '80.00', '2018-08-06', '2018-08-02', '1046.000', '966.000', '0', 'U', '15');
INSERT INTO `consolidado_s` VALUES ('1791', 'PASTRAMI', '454.000', '10.000', '10.00', '2018-08-06', '2018-08-02', '-33.000', '-43.000', '2', 'U', '15');
INSERT INTO `consolidado_s` VALUES ('1232', 'PEPERONI 454 GR', '454.000', '10.000', '10.00', '2018-08-06', '2018-08-02', '-27.000', '-37.000', '2', 'U', '15');
INSERT INTO `consolidado_s` VALUES ('1792', 'ROAST BEEF', '454.000', '10.000', '10.00', '2018-08-06', '2018-08-02', '-33.000', '-43.000', '2', 'U', '15');
INSERT INTO `consolidado_s` VALUES ('1234', 'SALAMI PREMIUN 1000 (GRANEL)', '454.000', '10.000', '10.00', '2018-08-06', '2018-08-02', '-33.000', '-43.000', '2', 'U', '15');
INSERT INTO `consolidado_s` VALUES ('1243', 'SALCH- DESAYUNO ESPECIAL (GRANEL)', '454.000', '10.000', '10.00', '2018-08-06', '2018-08-02', '986.000', '976.000', '0', 'U', '15');
INSERT INTO `consolidado_s` VALUES ('1250', 'SALCH-JUMBO ECONOMAX (378 G)', '378.000', '10.000', '8.33', '2018-08-06', '2018-08-02', '669.000', '659.000', '0', 'U', '15');
INSERT INTO `consolidado_s` VALUES ('1279', 'Salchicha Jumbo 2.3', '1000.000', '10.000', '22.03', '2018-08-06', '2018-08-02', '60.000', '50.000', '0', 'U', '15');
INSERT INTO `consolidado_s` VALUES ('1270', 'SALCHICHA MUNICH (454 GR)', '454.000', '15.000', '15.00', '2018-08-06', '2018-08-02', '-37.000', '-52.000', '2', 'U', '15');
INSERT INTO `consolidado_s` VALUES ('1272', 'SALCHICHA MUNICH GRANEL', '454.000', '10.000', '10.00', '2018-08-06', '2018-08-02', '-33.000', '-43.000', '2', 'U', '15');
INSERT INTO `consolidado_s` VALUES ('1275', 'SALCHICHA MUNICH KILO', '1000.000', '10.000', '22.03', '2018-08-06', '2018-08-02', '-33.000', '-43.000', '2', 'U', '15');
INSERT INTO `consolidado_s` VALUES ('1670', 'SALCHICHON POLLO       (200  GR)', '200.000', '20.000', '8.81', '2018-08-06', '2018-08-02', '680.000', '660.000', '0', 'U', '15');
INSERT INTO `consolidado_s` VALUES ('1970', 'SALCHICHON RES            (200  GR)', '200.000', '10.000', '4.41', '2018-08-06', '2018-08-02', '7942.000', '7932.000', '0', 'U', '15');

-- ----------------------------
-- Table structure for devoluciones
-- ----------------------------
DROP TABLE IF EXISTS `devoluciones`;
CREATE TABLE `devoluciones` (
  `IdDevolucion` int(11) NOT NULL AUTO_INCREMENT,
  `Codigo` int(11) DEFAULT NULL,
  `Descripcion` varchar(255) DEFAULT NULL,
  `GR` varchar(255) DEFAULT NULL,
  `CantDev` double DEFAULT NULL,
  `Libras` double DEFAULT NULL,
  `FechaEntrega` date DEFAULT NULL,
  `FechaCreacion` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `Estado` bit(1) DEFAULT NULL,
  PRIMARY KEY (`IdDevolucion`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of devoluciones
-- ----------------------------
INSERT INTO `devoluciones` VALUES ('5', '1101', 'MORT-BOLOGNA     (GRANEL)', '454', '20', '20', '2018-05-21', '2018-09-22 00:00:00', '');

-- ----------------------------
-- Table structure for logs
-- ----------------------------
DROP TABLE IF EXISTS `logs`;
CREATE TABLE `logs` (
  `IdUsuario` int(11) DEFAULT NULL,
  `Usuario` varchar(255) DEFAULT NULL,
  `Mensaje` varchar(255) DEFAULT NULL,
  `Fecha` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of logs
-- ----------------------------
INSERT INTO `logs` VALUES (null, null, 'El usuario  cerro sesion', '2018-07-20 14:57:47');
INSERT INTO `logs` VALUES ('15', 'Sugey Mazzocchi', 'El usuario Sugey Mazzocchi inicio sesion', '2018-07-23 12:40:39');
INSERT INTO `logs` VALUES ('15', 'Sugey Mazzocchi', 'El usuario Sugey Mazzocchi cerro sesion', '2018-07-23 12:40:59');
INSERT INTO `logs` VALUES ('13', 'Monica', 'El usuario Monica inicio sesion', '2018-07-23 12:41:12');
INSERT INTO `logs` VALUES ('13', 'Monica', 'El usuario Monica cerro sesion', '2018-07-23 12:41:20');
INSERT INTO `logs` VALUES ('14', 'Teresa Miranda', 'El usuario Teresa Miranda inicio sesion', '2018-08-02 11:33:39');
INSERT INTO `logs` VALUES ('15', 'Sugey Mazzocchi', 'El usuario Sugey Mazzocchi inicio sesion', '2018-08-02 11:36:05');
INSERT INTO `logs` VALUES ('15', 'Sugey Mazzocchi', 'El usuario Sugey Mazzocchi inicio sesion', '2018-08-02 11:36:08');
INSERT INTO `logs` VALUES ('15', 'Sugey Mazzocchi', 'El usuario Sugey Mazzocchi inicio sesion', '2018-08-02 11:36:19');
INSERT INTO `logs` VALUES ('4', 'Joel Jiron', 'El usuario Joel Jiron inicio sesion', '2018-08-02 11:36:28');
INSERT INTO `logs` VALUES ('9', 'Rodney Lopez', 'El usuario Rodney Lopez inicio sesion', '2018-08-02 11:37:38');
INSERT INTO `logs` VALUES ('8', 'Jorge Rivas', 'El usuario Jorge Rivas inicio sesion', '2018-08-02 11:42:35');
INSERT INTO `logs` VALUES ('4', 'Joel Jiron', 'Joel Jiron agregó una nueva orden de entrega', '2018-08-02 11:55:42');
INSERT INTO `logs` VALUES ('8', 'Jorge Rivas', 'Jorge Rivas agregó una nueva orden de entrega', '2018-08-02 11:56:18');
INSERT INTO `logs` VALUES ('15', 'Sugey Mazzocchi', 'Generó una nueva remision de orden con ruta 9 y fecha 2018-07-03', '2018-08-02 11:58:30');
INSERT INTO `logs` VALUES ('15', 'Sugey Mazzocchi', 'Generó una nueva remision de orden con ruta 9 y fecha 2018-07-03', '2018-08-02 11:59:02');
INSERT INTO `logs` VALUES ('9', 'Rodney Lopez', 'Rodney Lopez agregó una nueva orden de entrega', '2018-08-02 11:59:32');
INSERT INTO `logs` VALUES ('9', 'Rodney Lopez', 'Rodney Lopez agregó una nueva orden de entrega', '2018-08-02 11:59:54');
INSERT INTO `logs` VALUES ('8', 'Jorge Rivas', 'Generó una nueva remision de orden con ruta 25 y fecha 2018-05-21 ', '2018-08-02 12:01:54');
INSERT INTO `logs` VALUES ('4', 'Joel Jiron', 'Generó una nueva remision de orden con ruta 15 y fecha 2018-08-04 ', '2018-08-02 12:04:39');
INSERT INTO `logs` VALUES ('8', 'Jorge Rivas', 'Generó una nueva remision de orden con ruta 25 y fecha 2018-05-21 ', '2018-08-02 12:04:42');
INSERT INTO `logs` VALUES ('15', 'Sugey Mazzocchi', 'Generó una nueva remision de orden con ruta 24 y fecha 2018-07-05', '2018-08-02 12:04:42');
INSERT INTO `logs` VALUES ('15', 'Sugey Mazzocchi', 'Generó una nueva remision de orden con ruta 11 y fecha 2018-08-04', '2018-08-02 12:04:44');
INSERT INTO `logs` VALUES ('14', 'Teresa Miranda', 'Generó una nueva remision de orden con ruta 15 y fecha 2018-07-09', '2018-08-02 12:05:52');
INSERT INTO `logs` VALUES ('15', 'Sugey Mazzocchi', 'Generó una nueva remision de orden con ruta 11 y fecha 2018-08-04', '2018-08-02 12:06:26');
INSERT INTO `logs` VALUES ('8', 'Jorge Rivas', 'Jorge Rivas agregó una nueva orden de entrega (preventa)', '2018-08-02 12:06:32');
INSERT INTO `logs` VALUES ('4', 'Joel Jiron', 'Generó una nueva remision de preventa con ruta 7 y fecha 2018-05-21 ', '2018-08-02 12:08:49');
INSERT INTO `logs` VALUES ('4', 'Joel Jiron', 'Generó una nueva remision de preventa con ruta 7 y fecha 2018-05-21 ', '2018-08-02 12:09:01');
INSERT INTO `logs` VALUES ('8', 'Jorge Rivas', 'Generó una nueva remision de preventa con ruta 3 y fecha 2018-08-02 ', '2018-08-02 12:09:03');
INSERT INTO `logs` VALUES ('15', 'Sugey Mazzocchi', 'El usuario Sugey Mazzocchi inicio sesion', '2018-08-02 12:09:14');
INSERT INTO `logs` VALUES ('15', 'Sugey Mazzocchi', 'Generó una nueva remision de orden con ruta 11 y fecha 2018-08-04', '2018-08-02 12:09:34');
INSERT INTO `logs` VALUES ('15', 'Sugey Mazzocchi', 'Generó una nueva remision de orden con ruta 9 y fecha 2018-07-03', '2018-08-02 12:09:41');
INSERT INTO `logs` VALUES ('15', 'Sugey Mazzocchi', 'Generó una nueva remision de orden con ruta 9 y fecha 2018-07-03', '2018-08-02 12:10:15');
INSERT INTO `logs` VALUES ('4', 'Joel Jiron', 'El usuario Joel Jiron cerro sesion', '2018-08-02 12:10:36');
INSERT INTO `logs` VALUES ('14', 'Teresa Miranda', 'Generó una nueva remision de orden con ruta 17 y fecha 2018-08-03', '2018-08-02 12:10:49');
INSERT INTO `logs` VALUES ('15', 'Sugey Mazzocchi', 'El usuario Sugey Mazzocchi inicio sesion', '2018-08-02 12:11:03');
INSERT INTO `logs` VALUES ('15', 'Sugey Mazzocchi', 'Generó una nueva remision de orden con ruta 11 y fecha 2018-07-04 para el cliente 56 ', '2018-08-02 12:11:41');
INSERT INTO `logs` VALUES ('9', 'Rodney Lopez', 'Rodney Lopez agregó una nueva orden de entrega (preventa)', '2018-08-02 12:11:42');
INSERT INTO `logs` VALUES ('15', 'Sugey Mazzocchi', 'Generó una nueva remision de orden con ruta 11 y fecha 2018-07-04 para el cliente 58 ', '2018-08-02 12:11:53');
INSERT INTO `logs` VALUES ('15', 'Sugey Mazzocchi', 'Generó una nueva remision de orden con ruta 9 y fecha 2018-07-03 para el cliente 1 ', '2018-08-02 12:12:12');
INSERT INTO `logs` VALUES ('15', 'Sugey Mazzocchi', 'Generó una nueva remision de orden con ruta 9 y fecha 2018-07-12 para el cliente 79 ', '2018-08-02 12:12:28');
INSERT INTO `logs` VALUES ('15', 'Sugey Mazzocchi', 'El usuario Sugey Mazzocchi inicio sesion', '2018-08-02 12:12:54');
INSERT INTO `logs` VALUES ('15', 'Sugey Mazzocchi', 'Generó una nueva remision de orden con ruta 9 y fecha 2018-07-04', '2018-08-02 12:33:35');
INSERT INTO `logs` VALUES ('15', 'Sugey Mazzocchi', 'El usuario Sugey Mazzocchi cerro sesion', '2018-08-02 12:36:49');
INSERT INTO `logs` VALUES ('4', 'Joel Jiron', 'El usuario Joel Jiron inicio sesion', '2018-08-02 13:55:21');
INSERT INTO `logs` VALUES ('4', 'Joel Jiron', 'El usuario Joel Jiron cerro sesion', '2018-08-02 13:56:01');
INSERT INTO `logs` VALUES ('19', 'Roger  Quintanilla Gaitan', 'El usuario Roger  Quintanilla Gaitan inicio sesion', '2018-08-02 13:56:05');
INSERT INTO `logs` VALUES ('19', 'Roger  Quintanilla Gaitan', 'El usuario Roger  Quintanilla Gaitan cerro sesion', '2018-08-02 14:12:59');
INSERT INTO `logs` VALUES ('15', 'Sugey Mazzocchi', 'El usuario Sugey Mazzocchi inicio sesion', '2018-08-02 14:37:18');
INSERT INTO `logs` VALUES (null, null, 'El usuario  cerro sesion', '2018-08-02 14:38:16');
INSERT INTO `logs` VALUES ('19', 'Roger  Quintanilla Gaitan', 'El usuario Roger  Quintanilla Gaitan inicio sesion', '2018-08-02 14:38:25');
INSERT INTO `logs` VALUES ('11', 'Douglas Zotelo', 'El usuario Douglas Zotelo inicio sesion', '2018-08-02 14:38:56');
INSERT INTO `logs` VALUES ('15', 'Sugey Mazzocchi', 'El usuario Sugey Mazzocchi inicio sesion', '2018-08-02 14:41:33');
INSERT INTO `logs` VALUES ('18', 'Raquel', 'El usuario Raquel inicio sesion', '2018-08-02 14:41:48');
INSERT INTO `logs` VALUES ('11', 'Douglas Zotelo', 'El usuario Douglas Zotelo cerro sesion', '2018-08-02 14:42:17');
INSERT INTO `logs` VALUES ('15', 'Sugey Mazzocchi', 'Generó una nueva remision de orden con ruta 13 y fecha 2018-08-06 para el cliente 6 ', '2018-08-02 15:06:39');
INSERT INTO `logs` VALUES ('15', 'Sugey Mazzocchi', 'Generó una nueva remision de orden con ruta 9 y fecha 2018-08-06 para el cliente 1 ', '2018-08-02 15:07:01');
INSERT INTO `logs` VALUES ('15', 'Sugey Mazzocchi', 'Generó una nueva remision de orden con ruta 13 y fecha 2018-08-06 para el cliente 6 ', '2018-08-02 15:07:08');
INSERT INTO `logs` VALUES ('15', 'Sugey Mazzocchi', 'Generó una nueva remision de orden con ruta 9 y fecha 2018-08-06', '2018-08-02 15:10:44');
INSERT INTO `logs` VALUES ('15', 'Sugey Mazzocchi', 'Generó una nueva remision de orden con ruta 13 y fecha 2018-08-06', '2018-08-02 15:10:50');
INSERT INTO `logs` VALUES ('15', 'Sugey Mazzocchi', 'Generó una nueva remision de orden con ruta 13 y fecha 2018-08-06', '2018-08-02 15:11:05');
INSERT INTO `logs` VALUES ('15', 'Sugey Mazzocchi', 'El usuario Sugey Mazzocchi cerro sesion', '2018-08-02 15:28:13');
INSERT INTO `logs` VALUES ('19', 'Roger  Quintanilla Gaitan', 'El usuario Roger  Quintanilla Gaitan inicio sesion', '2018-08-02 15:33:59');
INSERT INTO `logs` VALUES ('19', 'Roger  Quintanilla Gaitan', 'El usuario Roger  Quintanilla Gaitan cerro sesion', '2018-08-02 15:37:20');
INSERT INTO `logs` VALUES ('18', 'Raquel', 'El usuario Raquel inicio sesion', '2018-08-02 15:37:26');
INSERT INTO `logs` VALUES ('18', 'Raquel', 'El usuario Raquel cerro sesion', '2018-08-02 15:47:33');
INSERT INTO `logs` VALUES ('8', 'Jorge Rivas', 'El usuario Jorge Rivas inicio sesion', '2018-08-02 15:47:42');
INSERT INTO `logs` VALUES ('8', 'Jorge Rivas', 'Generó una nueva remision de orden con ruta 3 y fecha 2018-08-02 ', '2018-08-02 15:50:00');
INSERT INTO `logs` VALUES ('8', 'Jorge Rivas', 'El usuario Jorge Rivas cerro sesion', '2018-08-02 15:50:22');
INSERT INTO `logs` VALUES ('19', 'Roger  Quintanilla Gaitan', 'El usuario Roger  Quintanilla Gaitan cerro sesion', '2018-08-02 16:03:02');
INSERT INTO `logs` VALUES ('9', 'Rodney Lopez', 'El usuario Rodney Lopez inicio sesion', '2018-08-03 08:13:35');
INSERT INTO `logs` VALUES ('9', 'Rodney Lopez', 'El usuario Rodney Lopez cerro sesion', '2018-08-03 08:17:59');
INSERT INTO `logs` VALUES ('8', 'Jorge Rivas', 'El usuario Jorge Rivas inicio sesion', '2018-08-03 08:18:04');
INSERT INTO `logs` VALUES ('8', 'Jorge Rivas', 'El usuario Jorge Rivas cerro sesion', '2018-08-03 08:18:31');
INSERT INTO `logs` VALUES ('19', 'Roger  Quintanilla Gaitan', 'El usuario Roger  Quintanilla Gaitan inicio sesion', '2018-08-03 08:24:38');
INSERT INTO `logs` VALUES ('19', 'Roger  Quintanilla Gaitan', 'El usuario Roger  Quintanilla Gaitan cerro sesion', '2018-08-03 08:59:13');
INSERT INTO `logs` VALUES ('18', 'Raquel', 'El usuario Raquel inicio sesion', '2018-08-03 08:59:18');
INSERT INTO `logs` VALUES ('18', 'Raquel', 'El usuario Raquel cerro sesion', '2018-08-03 08:59:36');
INSERT INTO `logs` VALUES ('8', 'Jorge Rivas', 'El usuario Jorge Rivas inicio sesion', '2018-08-03 08:59:41');
INSERT INTO `logs` VALUES ('8', 'Jorge Rivas', 'El usuario Jorge Rivas cerro sesion', '2018-08-03 09:01:11');
INSERT INTO `logs` VALUES ('4', 'Joel Jiron', 'El usuario Joel Jiron inicio sesion', '2018-08-03 09:01:16');
INSERT INTO `logs` VALUES ('4', 'Joel Jiron', 'El usuario Joel Jiron cerro sesion', '2018-08-03 09:01:36');
INSERT INTO `logs` VALUES ('9', 'Rodney Lopez', 'El usuario Rodney Lopez inicio sesion', '2018-08-03 09:01:42');
INSERT INTO `logs` VALUES ('9', 'Rodney Lopez', 'Rodney Lopez agregó una nueva orden de entrega', '2018-08-03 09:02:09');
INSERT INTO `logs` VALUES ('9', 'Rodney Lopez', 'El usuario Rodney Lopez cerro sesion', '2018-08-03 09:05:00');
INSERT INTO `logs` VALUES ('4', 'Joel Jiron', 'El usuario Joel Jiron inicio sesion', '2018-08-03 09:05:05');
INSERT INTO `logs` VALUES ('4', 'Joel Jiron', 'El usuario Joel Jiron cerro sesion', '2018-08-03 09:07:18');
INSERT INTO `logs` VALUES ('9', 'Rodney Lopez', 'El usuario Rodney Lopez inicio sesion', '2018-08-03 09:07:23');
INSERT INTO `logs` VALUES ('9', 'Rodney Lopez', 'El usuario Rodney Lopez cerro sesion', '2018-08-03 09:18:02');
INSERT INTO `logs` VALUES ('12', 'Jean Cardenas', 'El usuario Jean Cardenas inicio sesion', '2018-08-03 09:18:08');
INSERT INTO `logs` VALUES ('12', 'Jean Cardenas', 'El usuario Jean Cardenas cerro sesion', '2018-08-03 09:33:14');
INSERT INTO `logs` VALUES ('12', 'Jean Cardenas', 'El usuario Jean Cardenas inicio sesion', '2018-08-03 09:43:31');
INSERT INTO `logs` VALUES ('12', 'Jean Cardenas', 'El usuario Jean Cardenas cerro sesion', '2018-08-03 10:06:14');
INSERT INTO `logs` VALUES ('8', 'Jorge Rivas', 'El usuario Jorge Rivas inicio sesion', '2018-08-03 10:06:19');
INSERT INTO `logs` VALUES ('8', 'Jorge Rivas', 'El usuario Jorge Rivas cerro sesion', '2018-08-03 10:07:58');
INSERT INTO `logs` VALUES ('12', 'Jean Cardenas', 'El usuario Jean Cardenas inicio sesion', '2018-08-03 10:08:02');
INSERT INTO `logs` VALUES ('12', 'Jean Cardenas', 'El usuario Jean Cardenas cerro sesion', '2018-08-03 10:08:11');
INSERT INTO `logs` VALUES ('8', 'Jorge Rivas', 'El usuario Jorge Rivas inicio sesion', '2018-08-03 10:08:16');
INSERT INTO `logs` VALUES ('8', 'Jorge Rivas', 'El usuario Jorge Rivas cerro sesion', '2018-08-03 10:11:56');
INSERT INTO `logs` VALUES ('9', 'Rodney Lopez', 'El usuario Rodney Lopez inicio sesion', '2018-08-03 10:12:00');
INSERT INTO `logs` VALUES ('9', 'Rodney Lopez', 'El usuario Rodney Lopez cerro sesion', '2018-08-03 10:12:19');
INSERT INTO `logs` VALUES ('12', 'Jean Cardenas', 'El usuario Jean Cardenas inicio sesion', '2018-08-03 10:12:29');
INSERT INTO `logs` VALUES ('12', 'Jean Cardenas', 'El usuario Jean Cardenas cerro sesion', '2018-08-03 10:15:55');
INSERT INTO `logs` VALUES ('9', 'Rodney Lopez', 'El usuario Rodney Lopez inicio sesion', '2018-08-03 10:15:59');
INSERT INTO `logs` VALUES ('9', 'Rodney Lopez', 'El usuario Rodney Lopez cerro sesion', '2018-08-03 10:17:11');
INSERT INTO `logs` VALUES ('12', 'Jean Cardenas', 'El usuario Jean Cardenas inicio sesion', '2018-08-03 10:17:15');
INSERT INTO `logs` VALUES ('12', 'Jean Cardenas', 'El usuario Jean Cardenas cerro sesion', '2018-08-03 10:18:24');
INSERT INTO `logs` VALUES ('14', 'Teresa Miranda', 'El usuario Teresa Miranda inicio sesion', '2018-08-03 10:18:29');
INSERT INTO `logs` VALUES ('14', 'Teresa Miranda', 'El usuario Teresa Miranda cerro sesion', '2018-08-03 10:20:18');
INSERT INTO `logs` VALUES ('9', 'Rodney Lopez', 'El usuario Rodney Lopez inicio sesion', '2018-08-03 10:20:24');
INSERT INTO `logs` VALUES ('9', 'Rodney Lopez', 'El usuario Rodney Lopez cerro sesion', '2018-08-03 10:20:37');
INSERT INTO `logs` VALUES ('12', 'Jean Cardenas', 'El usuario Jean Cardenas inicio sesion', '2018-08-03 10:20:42');
INSERT INTO `logs` VALUES ('12', 'Jean Cardenas', 'Generó una nueva remision de orden con ruta 2 y fecha 2018-08-04 ', '2018-08-03 11:10:41');
INSERT INTO `logs` VALUES ('12', 'Jean Cardenas', 'El usuario Jean Cardenas cerro sesion', '2018-08-03 11:12:04');
INSERT INTO `logs` VALUES ('10', 'Administrador', 'El usuario Administrador inicio sesion', '2018-09-03 08:46:35');
INSERT INTO `logs` VALUES ('10', 'Administrador', 'El usuario Administrador cerro sesion', '2018-09-03 08:46:39');
INSERT INTO `logs` VALUES ('8', 'Jorge Rivas', 'El usuario Jorge Rivas inicio sesion', '2018-09-03 08:47:00');
INSERT INTO `logs` VALUES ('8', 'Jorge Rivas', 'El usuario Jorge Rivas cerro sesion', '2018-09-03 08:56:29');
INSERT INTO `logs` VALUES ('12', 'Jean Cardenas', 'El usuario Jean Cardenas inicio sesion', '2018-09-03 08:56:34');
INSERT INTO `logs` VALUES ('12', 'Jean Cardenas', 'El usuario Jean Cardenas cerro sesion', '2018-09-03 09:48:41');
INSERT INTO `logs` VALUES ('8', 'Jorge Rivas', 'El usuario Jorge Rivas inicio sesion', '2018-09-03 11:14:32');
INSERT INTO `logs` VALUES ('8', 'Jorge Rivas', 'Generó una nueva remision de orden con ruta 3 y fecha 2018-08-02 ', '2018-09-03 12:18:29');
INSERT INTO `logs` VALUES ('8', 'Jorge Rivas', 'El usuario Jorge Rivas cerro sesion', '2018-09-03 15:54:44');
INSERT INTO `logs` VALUES ('9', 'Rodney Lopez', 'El usuario Rodney Lopez inicio sesion', '2018-09-03 15:54:50');
INSERT INTO `logs` VALUES ('9', 'Rodney Lopez', 'El usuario Rodney Lopez cerro sesion', '2018-09-03 15:56:53');
INSERT INTO `logs` VALUES ('12', 'Jean Cardenas', 'El usuario Jean Cardenas inicio sesion', '2018-09-03 15:56:57');
INSERT INTO `logs` VALUES ('12', 'Jean Cardenas', 'El usuario Jean Cardenas cerro sesion', '2018-09-03 15:57:00');
INSERT INTO `logs` VALUES ('8', 'Jorge Rivas', 'El usuario Jorge Rivas inicio sesion', '2018-09-03 15:57:06');
INSERT INTO `logs` VALUES ('8', 'Jorge Rivas', 'El usuario Jorge Rivas cerro sesion', '2018-09-03 15:57:27');
INSERT INTO `logs` VALUES ('12', 'Jean Cardenas', 'El usuario Jean Cardenas inicio sesion', '2018-09-03 15:57:33');
INSERT INTO `logs` VALUES ('12', 'Jean Cardenas', 'El usuario Jean Cardenas cerro sesion', '2018-09-03 15:57:37');
INSERT INTO `logs` VALUES ('9', 'Rodney Lopez', 'El usuario Rodney Lopez inicio sesion', '2018-09-03 15:57:41');
INSERT INTO `logs` VALUES ('9', 'Rodney Lopez', 'El usuario Rodney Lopez cerro sesion', '2018-09-03 15:57:44');
INSERT INTO `logs` VALUES ('8', 'Jorge Rivas', 'El usuario Jorge Rivas inicio sesion', '2018-09-03 15:57:50');
INSERT INTO `logs` VALUES ('8', 'Jorge Rivas', 'El usuario Jorge Rivas cerro sesion', '2018-09-03 16:43:50');
INSERT INTO `logs` VALUES ('12', 'Jean Cardenas', 'El usuario Jean Cardenas inicio sesion', '2018-09-03 16:43:54');
INSERT INTO `logs` VALUES ('12', 'Jean Cardenas', 'Generó una nueva remision de orden con ruta 7 y fecha 2018-05-21 ', '2018-09-03 16:58:58');
INSERT INTO `logs` VALUES ('12', 'Jean Cardenas', 'El usuario Jean Cardenas cerro sesion', '2018-09-03 17:01:50');
INSERT INTO `logs` VALUES ('12', 'Jean Cardenas', 'El usuario Jean Cardenas inicio sesion', '2018-09-04 08:08:34');
INSERT INTO `logs` VALUES ('12', 'Jean Cardenas', 'El usuario Jean Cardenas cerro sesion', '2018-09-04 08:10:24');
INSERT INTO `logs` VALUES ('15', 'Sugey Mazzocchi', 'El usuario Sugey Mazzocchi inicio sesion', '2018-09-04 08:10:49');
INSERT INTO `logs` VALUES ('15', 'Sugey Mazzocchi', 'Generó una nueva remision de orden con ruta 12 y fecha 2018-07-09', '2018-09-04 08:27:07');
INSERT INTO `logs` VALUES ('15', 'Sugey Mazzocchi', 'El usuario Sugey Mazzocchi cerro sesion', '2018-09-04 08:27:38');
INSERT INTO `logs` VALUES ('14', 'Teresa Miranda', 'El usuario Teresa Miranda inicio sesion', '2018-09-04 08:27:43');
INSERT INTO `logs` VALUES ('14', 'Teresa Miranda', 'El usuario Teresa Miranda cerro sesion', '2018-09-04 08:30:17');
INSERT INTO `logs` VALUES ('13', 'Monica', 'El usuario Monica inicio sesion', '2018-09-04 08:30:26');
INSERT INTO `logs` VALUES ('13', 'Monica', 'El usuario Monica cerro sesion', '2018-09-04 08:31:36');
INSERT INTO `logs` VALUES ('8', 'Jorge Rivas', 'El usuario Jorge Rivas inicio sesion', '2018-09-04 08:31:47');
INSERT INTO `logs` VALUES ('8', 'Jorge Rivas', 'El usuario Jorge Rivas cerro sesion', '2018-09-04 08:40:28');
INSERT INTO `logs` VALUES ('14', 'Teresa Miranda', 'El usuario Teresa Miranda inicio sesion', '2018-09-04 08:40:34');
INSERT INTO `logs` VALUES ('14', 'Teresa Miranda', 'El usuario Teresa Miranda cerro sesion', '2018-09-04 08:40:42');
INSERT INTO `logs` VALUES ('15', 'Sugey Mazzocchi', 'El usuario Sugey Mazzocchi inicio sesion', '2018-09-04 08:40:48');
INSERT INTO `logs` VALUES ('15', 'Sugey Mazzocchi', 'El usuario Sugey Mazzocchi cerro sesion', '2018-09-04 08:40:58');
INSERT INTO `logs` VALUES ('14', 'Teresa Miranda', 'El usuario Teresa Miranda inicio sesion', '2018-09-04 08:41:02');
INSERT INTO `logs` VALUES ('14', 'Teresa Miranda', 'El usuario Teresa Miranda cerro sesion', '2018-09-04 08:46:39');
INSERT INTO `logs` VALUES ('15', 'Sugey Mazzocchi', 'El usuario Sugey Mazzocchi inicio sesion', '2018-09-04 08:46:47');
INSERT INTO `logs` VALUES ('15', 'Sugey Mazzocchi', 'El usuario Sugey Mazzocchi cerro sesion', '2018-09-04 08:51:28');
INSERT INTO `logs` VALUES ('14', 'Teresa Miranda', 'El usuario Teresa Miranda inicio sesion', '2018-09-04 08:51:48');
INSERT INTO `logs` VALUES ('10', 'Administrador', 'El usuario Administrador inicio sesion', '2018-09-04 16:06:28');
INSERT INTO `logs` VALUES ('10', 'Administrador', 'El usuario Administrador cerro sesion', '2018-09-04 16:06:36');
INSERT INTO `logs` VALUES ('8', 'Jorge Rivas', 'El usuario Jorge Rivas inicio sesion', '2018-09-04 16:06:41');
INSERT INTO `logs` VALUES ('8', 'Jorge Rivas', 'El usuario Jorge Rivas cerro sesion', '2018-09-04 16:39:48');
INSERT INTO `logs` VALUES (null, null, 'El usuario  cerro sesion', '2018-09-22 14:26:29');
INSERT INTO `logs` VALUES ('13', 'Monica', 'El usuario Monica inicio sesion', '2018-09-22 14:26:35');
INSERT INTO `logs` VALUES ('13', 'Monica', 'El usuario Monica inicio sesion', '2018-09-22 15:40:09');
INSERT INTO `logs` VALUES ('13', 'Monica', 'Monica actualizo el saldo del producto 1111 ', '2018-09-22 15:41:48');
INSERT INTO `logs` VALUES ('13', 'Monica', 'Monica actualizo el saldo del producto 1111 ', '2018-09-22 15:41:48');
INSERT INTO `logs` VALUES ('13', 'Monica', 'Monica actualizo el saldo del producto 1113 ', '2018-09-22 15:41:51');
INSERT INTO `logs` VALUES ('13', 'Monica', 'Monica actualizo el saldo del producto 1123 ', '2018-09-22 15:43:13');
INSERT INTO `logs` VALUES ('13', 'Monica', 'Monica actualizo el saldo del producto 1123 ', '2018-09-22 15:43:13');
INSERT INTO `logs` VALUES ('13', 'Monica', 'Monica actualizo el saldo del producto 1123 ', '2018-09-22 15:43:31');
INSERT INTO `logs` VALUES ('13', 'Monica', 'Monica actualizo el saldo del producto 1123 ', '2018-09-22 15:43:47');
INSERT INTO `logs` VALUES ('13', 'Monica', 'Monica actualizo el saldo del producto 1123 ', '2018-09-22 15:44:04');
INSERT INTO `logs` VALUES ('13', 'Monica', 'Monica actualizo el saldo del producto  ', '2018-09-22 16:35:16');
INSERT INTO `logs` VALUES ('13', 'Monica', 'Monica actualizo el saldo del producto  ', '2018-09-22 16:35:26');
INSERT INTO `logs` VALUES ('13', 'Monica', 'Monica actualizo el saldo del producto  ', '2018-09-22 16:37:07');
INSERT INTO `logs` VALUES ('13', 'Monica', 'Monica actualizo el saldo del producto  ', '2018-09-22 16:37:19');
INSERT INTO `logs` VALUES ('13', 'Monica', 'Monica actualizo el saldo del producto  ', '2018-09-22 16:38:27');
INSERT INTO `logs` VALUES ('13', 'Monica', 'Monica actualizo el saldo del producto  ', '2018-09-22 16:39:21');
INSERT INTO `logs` VALUES ('13', 'Monica', 'Monica actualizo el saldo del producto  ', '2018-09-22 16:39:27');
INSERT INTO `logs` VALUES ('13', 'Monica', 'Monica actualizo el saldo del producto  ', '2018-09-22 16:42:16');
INSERT INTO `logs` VALUES ('13', 'Monica', 'Monica actualizo el saldo del producto  ', '2018-09-22 16:43:36');
INSERT INTO `logs` VALUES ('13', 'Monica', 'Monica actualizo el saldo del producto 1101 ', '2018-09-22 16:46:20');
INSERT INTO `logs` VALUES ('13', 'Monica', 'Monica actualizo el saldo del producto 1101 ', '2018-09-22 16:46:35');
INSERT INTO `logs` VALUES ('13', 'Monica', 'Monica actualizo el saldo del producto 1101 ', '2018-09-22 16:49:06');
INSERT INTO `logs` VALUES ('13', 'Monica', 'Monica actualizo el saldo del producto 1101 ', '2018-09-22 16:49:14');
INSERT INTO `logs` VALUES ('13', 'Monica', 'Monica actualizo el saldo del producto 1101 ', '2018-09-22 16:50:41');
INSERT INTO `logs` VALUES ('13', 'Monica', 'Monica actualizo el saldo del producto 1101 ', '2018-09-22 16:50:49');
INSERT INTO `logs` VALUES ('13', 'Monica', 'Monica actualizo el saldo del producto 1101 ', '2018-09-22 16:50:54');
INSERT INTO `logs` VALUES ('13', 'Monica', 'Monica actualizo el saldo del producto 1101 ', '2018-09-22 16:51:04');
INSERT INTO `logs` VALUES ('13', 'Monica', 'Monica actualizo el saldo del producto 1101 ', '2018-09-22 16:51:19');
INSERT INTO `logs` VALUES ('13', 'Monica', 'El usuario Monica cerro sesion', '2018-09-22 17:04:38');
INSERT INTO `logs` VALUES ('12', 'Jean Cardenas', 'El usuario Jean Cardenas inicio sesion', '2018-09-22 17:04:45');
INSERT INTO `logs` VALUES ('12', 'Jean Cardenas', 'El usuario Jean Cardenas cerro sesion', '2018-09-22 17:04:55');
INSERT INTO `logs` VALUES ('13', 'Monica', 'El usuario Monica inicio sesion', '2018-09-22 17:05:08');
INSERT INTO `logs` VALUES ('13', 'Monica', 'El usuario Monica cerro sesion', '2018-09-22 17:05:56');
INSERT INTO `logs` VALUES ('12', 'Jean Cardenas', 'El usuario Jean Cardenas inicio sesion', '2018-09-22 17:06:05');
INSERT INTO `logs` VALUES ('12', 'Jean Cardenas', 'El usuario Jean Cardenas cerro sesion', '2018-09-22 17:10:02');
INSERT INTO `logs` VALUES ('13', 'Monica', 'El usuario Monica inicio sesion', '2018-09-22 17:10:09');
INSERT INTO `logs` VALUES ('13', 'Monica', 'Monica actualizo el saldo del producto 1101 ', '2018-09-22 17:24:34');

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
  PRIMARY KEY (`IdOrden`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=832 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of ordenes
-- ----------------------------
INSERT INTO `ordenes` VALUES ('3', '1113', 'MORT-CHILTOMA  (225 GR)', '225.000', '72.000', '35.68', 'Enrique Cerda', '2018-05-21', '15', '4', '', '2018-06-01 01:44:25', '\0');
INSERT INTO `ordenes` VALUES ('4', '1117', 'MORT-POPULAR A GRANEL (PIEZA)', '454.000', '12.000', '12.00', 'Enrique Cerda', '2018-05-21', '15', '4', '', '2018-06-01 01:44:25', '\0');
INSERT INTO `ordenes` VALUES ('5', '1119', 'MORT-POPULAR (PAQUETE)', '454.000', '275.000', '275.00', 'Enrique Cerda', '2018-05-21', '15', '4', '', '2018-06-01 01:44:25', '\0');
INSERT INTO `ordenes` VALUES ('6', '1123', 'MORT-ECONOMICA (125 GR)', '125.000', '240.000', '66.08', 'Enrique Cerda', '2018-05-21', '15', '4', '', '2018-06-01 01:44:25', '\0');
INSERT INTO `ordenes` VALUES ('7', '1127', 'MORT-POPULAR (½) 227 GRAMOS', '227.000', '288.000', '144.00', 'Enrique Cerda', '2018-05-21', '15', '4', '', '2018-06-01 01:44:25', '\0');
INSERT INTO `ordenes` VALUES ('8', '1131', 'MORT. JAMONADA (150 GR.)', '150.000', '0.000', '0.00', 'Enrique Cerda', '2018-05-21', '15', '4', '', '2018-06-01 01:44:25', '\0');
INSERT INTO `ordenes` VALUES ('9', '1217', 'SALCHI. HOT DOG POPUL. ( 22 UNDS)  (0409 GR.)', '409.000', '144.000', '129.73', 'Enrique Cerda', '2018-05-21', '15', '4', '', '2018-06-01 01:44:25', '\0');
INSERT INTO `ordenes` VALUES ('10', '1650', 'SALCH-  POLLO             (170 GR.)', '170.000', '54.000', '20.22', 'Enrique Cerda', '2018-05-21', '15', '4', '', '2018-06-01 01:44:25', '\0');
INSERT INTO `ordenes` VALUES ('11', '1803', 'MORT. FRANKFURT (125 GR.)', '125.000', '36.000', '9.91', 'Enrique Cerda', '2018-05-21', '15', '4', '', '2018-06-01 01:44:25', '\0');
INSERT INTO `ordenes` VALUES ('12', '1811', 'SALCH-  FRANKFURT  (170 GR.)', '170.000', '270.000', '101.10', 'Enrique Cerda', '2018-05-21', '15', '4', '', '2018-06-01 01:44:25', '\0');
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
INSERT INTO `ordenes` VALUES ('38', '1101', 'MORT-BOLOGNA     (GRANEL)', '454.000', '324.000', '324.00', 'Pali 27 de Mayo', '2018-05-21', '7', '4', '', '2018-06-02 09:36:57', '');
INSERT INTO `ordenes` VALUES ('39', '1107', 'MORT-BOLOGNA DELMOR (454 GR)', '454.000', '34.000', '34.00', 'Pali 27 de Mayo', '2018-05-21', '7', '4', '', '2018-06-02 09:36:57', '');
INSERT INTO `ordenes` VALUES ('40', '1109', 'MORT-BOLOGNA (225 GR) (1102)', '225.000', '43.000', '21.31', 'Pali 27 de Mayo', '2018-05-21', '7', '4', '', '2018-06-02 09:36:57', '');
INSERT INTO `ordenes` VALUES ('41', '1111', 'MORT-CHILTOMA  (GRANEL / PIEZA)', '454.000', '34.000', '34.00', 'Pali 27 de Mayo', '2018-05-21', '7', '4', '', '2018-06-02 09:36:57', '');
INSERT INTO `ordenes` VALUES ('42', '1112', 'MORT-CHILTOMA  (150 GR)', '150.000', '34.000', '11.23', 'Pali 27 de Mayo', '2018-05-21', '7', '4', '', '2018-06-02 09:36:57', '');
INSERT INTO `ordenes` VALUES ('43', '1113', 'MORT-CHILTOMA  (225 GR)', '225.000', '34.000', '16.85', 'Pali 27 de Mayo', '2018-05-21', '7', '4', '', '2018-06-02 09:36:57', '');
INSERT INTO `ordenes` VALUES ('44', '1117', 'MORT-POPULAR A GRANEL (PIEZA)', '454.000', '5.000', '5.00', 'Pali 27 de Mayo', '2018-05-21', '7', '4', '', '2018-06-02 09:36:57', '');
INSERT INTO `ordenes` VALUES ('45', '1119', 'MORT-POPULAR (PAQUETE)', '454.000', '2.000', '2.00', 'Pali 27 de Mayo', '2018-05-21', '7', '4', '', '2018-06-02 09:36:57', '');
INSERT INTO `ordenes` VALUES ('46', '1121', 'MORT-ECONOMICA  (GRANEL/PIEZA)', '454.000', '3.000', '3.00', 'Pali 27 de Mayo', '2018-05-21', '7', '4', '', '2018-06-02 09:36:57', '');
INSERT INTO `ordenes` VALUES ('47', '1123', 'MORT-ECONOMICA (125 GR)', '125.000', '56.000', '15.42', 'Pali 27 de Mayo', '2018-05-21', '7', '4', '', '2018-06-02 09:36:57', '');
INSERT INTO `ordenes` VALUES ('48', '1126', 'MORT-ECONOMICA (454 GR)', '454.000', '56.000', '56.00', 'Pali 27 de Mayo', '2018-05-21', '7', '4', '', '2018-06-02 09:36:57', '');
INSERT INTO `ordenes` VALUES ('49', '1127', 'MORT-POPULAR (½) 227 GRAMOS', '227.000', '343.000', '17.00', 'Pali 27 de Mayo', '2018-05-21', '7', '4', '', '2018-06-02 09:36:57', '');
INSERT INTO `ordenes` VALUES ('50', '1130', 'MORT-JAMONADA  (GRANEL/PIEZA)', '454.000', '4.000', '4.00', 'Pali 27 de Mayo', '2018-05-21', '7', '4', '', '2018-06-02 09:36:57', '');
INSERT INTO `ordenes` VALUES ('51', '1131', 'MORT. JAMONADA (150 GR.)', '150.000', '43.000', '14.21', 'Pali 27 de Mayo', '2018-05-21', '7', '4', '', '2018-06-02 09:36:57', '');
INSERT INTO `ordenes` VALUES ('52', '1132', 'MORT-JAMONADA (225 GR)', '225.000', '33.000', '16.35', 'Pali 27 de Mayo', '2018-05-21', '7', '4', '', '2018-06-02 09:36:57', '');
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
INSERT INTO `ordenes` VALUES ('533', '1101', 'MORT-BOLOGNA     (GRANEL)', '454.000', '23.000', '23.00', 'vendedor 1', '2018-08-04', '15', '4', '\0', '2018-08-02 11:55:42', '\0');
INSERT INTO `ordenes` VALUES ('534', '1107', 'MORT-BOLOGNA DELMOR (454 GR)', '454.000', '23.000', '23.00', 'vendedor 1', '2018-08-04', '15', '4', '\0', '2018-08-02 11:55:42', '\0');
INSERT INTO `ordenes` VALUES ('535', '1109', 'MORT-BOLOGNA (225 GR) (1102)', '225.000', '34.000', '16.85', 'vendedor 1', '2018-08-04', '15', '4', '\0', '2018-08-02 11:55:42', '\0');
INSERT INTO `ordenes` VALUES ('536', '1111', 'MORT-CHILTOMA  (GRANEL / PIEZA)', '454.000', '5.000', '5.00', 'vendedor 1', '2018-08-04', '15', '4', '\0', '2018-08-02 11:55:42', '\0');
INSERT INTO `ordenes` VALUES ('537', '1112', 'MORT-CHILTOMA  (150 GR)', '150.000', '6.000', '1.98', 'vendedor 1', '2018-08-04', '15', '4', '\0', '2018-08-02 11:55:42', '\0');
INSERT INTO `ordenes` VALUES ('538', '1107', 'MORT-BOLOGNA DELMOR (454 GR)', '454.000', '10.000', '10.00', 'prueba', '2018-08-02', '3', '8', '\0', '2018-08-02 11:56:18', '\0');
INSERT INTO `ordenes` VALUES ('539', '1111', 'MORT-CHILTOMA  (GRANEL / PIEZA)', '454.000', '10.000', '10.00', 'prueba', '2018-08-02', '3', '8', '\0', '2018-08-02 11:56:18', '\0');
INSERT INTO `ordenes` VALUES ('597', '1334', 'JAMON POPULAR  (LIBRA.)', '454.000', '10.000', '10.00', 'Marlon Medina', '2018-08-04', '2', '9', '\0', '2018-08-02 11:59:29', '\0');
INSERT INTO `ordenes` VALUES ('812', '1975', 'SALCHICHON PICANTE    (200  GR)', '200.000', '20.000', '8.81', 'Marlon Medina', '2018-08-04', '2', '9', '\0', '2018-08-02 11:59:54', '\0');
INSERT INTO `ordenes` VALUES ('826', '1101', 'MORT-BOLOGNA     (GRANEL)', '454.000', '10.000', '10.00', 'prueba2', '2018-08-02', '3', '8', '\0', '2018-08-02 12:06:32', '');
INSERT INTO `ordenes` VALUES ('827', '1109', 'MORT-BOLOGNA (225 GR) (1102)', '225.000', '10.000', '4.96', 'prueba2', '2018-08-02', '3', '8', '\0', '2018-08-02 12:06:32', '');
INSERT INTO `ordenes` VALUES ('828', '1217', 'SALCHI. HOT DOG POPUL. ( 22 UNDS)  (0409 GR.)', '409.000', '24.000', '21.62', 'Lannier Reyes', '2018-08-03', '6', '9', '\0', '2018-08-02 12:11:42', '');
INSERT INTO `ordenes` VALUES ('829', '1101', 'MORT-BOLOGNA     (GRANEL)', '454.000', '23.000', '23.00', 'fff', '2018-08-03', '5', '9', '\0', '2018-08-03 09:02:09', '\0');
INSERT INTO `ordenes` VALUES ('830', '1107', 'MORT-BOLOGNA DELMOR (454 GR)', '454.000', '23.000', '23.00', 'fff', '2018-08-03', '5', '9', '\0', '2018-08-03 09:02:09', '\0');
INSERT INTO `ordenes` VALUES ('831', '1109', 'MORT-BOLOGNA (225 GR) (1102)', '225.000', '23.000', '11.40', 'fff', '2018-08-03', '5', '9', '\0', '2018-08-03 09:02:09', '\0');

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
  PRIMARY KEY (`IdOrdenS`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=553 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

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
INSERT INTO `ordenes_s` VALUES ('200', '1101', 'MORT-BOLOGNA     (GRANEL)', '454', '20', '20.00', 'Jiar Quezada', '2018-08-04', '13', '15', '34', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('201', '1107', 'MORT-BOLOGNA DELMOR (454 GR)', '454', '10', '10.00', 'Jiar Quezada', '2018-08-04', '13', '15', '34', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('202', '1109', 'MORT-BOLOGNA (225 GR) (1102)', '225', '20', '9.91', 'Jiar Quezada', '2018-08-04', '13', '15', '34', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('203', '1111', 'MORT-CHILTOMA  (GRANEL / PIEZA)', '454', '10', '10.00', 'Jiar Quezada', '2018-08-04', '13', '15', '34', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('204', '1112', 'MORT-CHILTOMA  (150 GR)', '150', '10', '3.30', 'Jiar Quezada', '2018-08-04', '13', '15', '34', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('205', '1113', 'MORT-CHILTOMA  (225 GR)', '225', '10', '4.96', 'Jiar Quezada', '2018-08-04', '13', '15', '34', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('206', '1101', 'MORT-BOLOGNA     (GRANEL)', '454', '8', '8.00', 'EDDY', '2018-08-04', '9', '15', '6', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('207', '1107', 'MORT-BOLOGNA DELMOR (454 GR)', '454', '20', '20.00', 'EDDY', '2018-08-04', '9', '15', '6', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('208', '1101', 'MORT-BOLOGNA     (GRANEL)', '454', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('209', '1107', 'MORT-BOLOGNA DELMOR (454 GR)', '454', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('210', '1109', 'MORT-BOLOGNA (225 GR) (1102)', '225', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('211', '1111', 'MORT-CHILTOMA  (GRANEL / PIEZA)', '454', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('212', '1112', 'MORT-CHILTOMA  (150 GR)', '150', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('213', '1113', 'MORT-CHILTOMA  (225 GR)', '225', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('214', '1117', 'MORT-POPULAR A GRANEL (PIEZA)', '454', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('215', '1119', 'MORT-POPULAR (PAQUETE)', '454', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('216', '1121', 'MORT-ECONOMICA  (GRANEL/PIEZA)', '454', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('217', '1123', 'MORT-ECONOMICA (125 GR)', '125', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('218', '1126', 'MORT-ECONOMICA (454 GR)', '454', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('219', '1127', 'MORT-POPULAR (½) 227 GRAMOS', '227', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('220', '1130', 'MORT-JAMONADA  (GRANEL/PIEZA)', '454', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('221', '1131', 'MORT. JAMONADA (150 GR.)', '150', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('222', '1132', 'MORT-JAMONADA (225 GR)', '225', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('223', '1134', 'MORT-ECONOMICA (225 GR)', '225', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('224', '1135', 'MORT-CON TOCINO (225GR)', '225', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('225', '1137', 'MORT-JAMONADA DELMOR (454 GR)', '454', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('226', '1190', 'MORT-CON TOCINO (150 GR.)', '150', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('227', '1193', 'MORT- CON TOCINO DELMOR (454 GR)', '454', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('228', '1204', 'SALCHICHA HOT DOG 454GR', '454', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('229', '1210', 'HOT DOG (170 GR.)', '170', '25', '9.36', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('230', '1214', 'SALCHICHA - POPULAR        (GRANEL)( 100 UND)', '454', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('231', '1217', 'SALCHI. HOT DOG POPUL. ( 22 UNDS)  (0409 GR.)', '409', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('232', '1218', 'SALCHI. HOT DOG  POPUL. (12 UND)   (260 GR.)', '260', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('233', '1221', 'SALAMI         PIEZA        (GRANEL)', '454', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('234', '1223', 'SALAMI PREMIUM 150', '150', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('235', '1227', 'SALAMI  CORTADO PREMIUN PIZZA(1224)/ PARA SUPER', '454', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('236', '1230', 'PEPERONI GRANEL', '454', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('237', '1231', 'PEPERONI 1000 (GRANEL)', '454', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('238', '1232', 'PEPERONI 454 GR', '454', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('239', '1233', 'SALAMI PREMIUM 454 GR', '454', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('240', '1234', 'SALAMI PREMIUN 1000 (GRANEL)', '454', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('241', '1241', 'SALCHICHA DESAYUNO DE POLLO', '454', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('242', '1243', 'SALCH- DESAYUNO ESPECIAL (GRANEL)', '454', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('243', '1245', 'SALCHICHA DESAYUNO PSMAT', '1000', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('244', '1250', 'SALCH-JUMBO ECONOMAX (378 G)', '378', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('245', '1251', 'SALCH-PARRILLERO ECONOMAX (360 G)', '360', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('246', '1254', 'SALCHICHA PARRILLERA 454 GR', '454', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('247', '1255', 'SALCH- PARRILLERA (360GR)', '360', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('248', '1257', 'SALCH-PARRILLERA (GRANEL)', '454', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('249', '1258', 'SALCHICHA PARRILERA 1000 (GRANEL)', '454', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('250', '1264', 'SALCHICHA-  JUMBO  908', '908', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('251', '1269', 'SALCHICHA SUPER JUMBO', '1300', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('252', '1270', 'SALCHICHA MUNICH (454 GR)', '454', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('253', '1272', 'SALCHICHA MUNICH GRANEL', '454', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('254', '1275', 'SALCHICHA MUNICH KILO', '1000', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('255', '1279', 'Salchicha Jumbo 2.3', '1000', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('256', '1283', 'SALCHICHA NUREMBERG KILO', '454', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('257', '1290', 'SALCHICHA -  ALEMANA       454', '454', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('258', '1292', 'SALCH- ALEMANA GRANEL', '454', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('259', '1293', 'SALCHICHA ALEMANA KILO', '1000', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('260', '1302', 'JAMON AHUMADO PIEZA', '454', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('261', '1321', 'JAMON PIERNA          (PIEZA)', '454', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('262', '1325', 'JAMON PIERNA 454', '454', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('263', '1331', 'JAMON PIC NIC --GRANEL CORTADO (PIEZA)', '454', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('264', '1333', 'JAMON POPULAR   ECONOMAX  (150 G)', '150', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('265', '1334', 'JAMON POPULAR  (LIBRA.)', '454', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('266', '1335', 'JAMON PIC NIC (125 GR)', '125', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('267', '1336', 'JAMON POPULAR (227 GR)', '227', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('268', '1341', 'JAMON PRENSADO  (PIEZA)', '454', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('269', '1342', 'JAMON PRENSADO  ECONOMAX  (150 G)', '150', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('270', '1345', 'JAMON PRENSADO (125 GR)', '125', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('271', '1353', 'JAMON PRENSADO CORTADO Y ARMADO', '454', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('272', '1361', 'JAMON VIRGINIA', '454', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('273', '1363', 'JAMON VIRGINIA (PSMT)', '1300', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('274', '1370', 'JAMON PAVO GRANEL', '454', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('275', '1373', 'JAMON PRENSADO (LIBRA)', '454', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('276', '1376', 'JAMON PIC-NIC  454', '454', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('277', '1401', 'CHORIZO CRIOLLO (227 GR)', '227', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('278', '1402', 'CHORIZO CRIOLLO (GRANEL)', '454', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('279', '1403', 'CHORIZO CRIOLLO (454 GR)', '454', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('280', '1404', 'CHORIZO CRIOLLO 5LB', '454', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('281', '1421', 'CHORIZO ESPAÑOL  (GRANEL)', '454', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('282', '1470', 'CHORIZO ARGENTINO (454 GR )', '454', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('283', '1473', 'CHORIZO ARGENTINO (GRANEL )', '454', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('284', '1486', 'TORTA P/HAMBUERGUESA (CJA)', '500', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('285', '1487', 'TORTA DE CARNE DE RES CLASICA', '454', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('286', '1502', 'CARNE MOLIDA POLLO    (LIBRA)', '454', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('287', '1503', 'CARNE MOLIDA RES         (LIBRA)', '454', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('288', '1504', 'CARNE MOLIDA CERDO   (LIBRA)', '454', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('289', '1505', 'CARNE MOLIDA RES         GRANEL', '454', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('290', '1620', 'JAMON POLLO    (150 GR.)', '150', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('291', '1621', 'JAMON POLLO           (PIEZA)', '454', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('292', '1622', 'JAMON POLLO  ECONOMAX (150 G)', '150', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('293', '1630', 'JAMON PAVO', '454', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('294', '1640', 'MORT-    POLLO  (150 GR.)', '150', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('295', '1641', 'MORT- POLLO   (GRANEL)', '454', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('296', '1642', 'MORT-DE POLLO DELMOR (454 GR)', '454', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('297', '1643', 'JAMON DE POLLO DELMOR 454 GR', '454', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('298', '1645', 'MORT. DE PAVO', '454', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('299', '1650', 'SALCH-  POLLO             (170 GR.)', '170', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('300', '1655', 'SALCHICHA.  PAVO JUMBO 590', '590', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('301', '1660', 'SALCH- POLLO   ECONOMAX  (425 G)', '425', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('302', '1670', 'SALCHICHON POLLO       (200  GR)', '200', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('303', '1701', 'BACON AHUMADO  ECONOMAX  (200 G)', '200', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('304', '1702', 'BACON AHUMADO A GRANEL', '454', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('305', '1703', 'BACON AHUMADO (200 GR)', '200', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('306', '1706', 'BACON AHUMADO 1000 GR', '454', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('307', '1707', 'BACON AHUMADO 454 GR', '454', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('308', '1709', 'BACON PSMAT 5 LIB', '454', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('309', '1711', 'COSTILLA DE CERDO AHUMADA', '454', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('310', '1720', 'CHULETA AHUMADA (BANDEJA)', '454', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('311', '1721', 'CHULETA AHUMADA A GRANEL', '454', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('312', '1723', 'CHULETA PREFORMADA', '454', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('313', '1730', 'JAMON SELVA NEGRA', '454', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('314', '1760', 'PIERNA AHUMADA CON HUESO', '454', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('315', '1761', 'PIERNA AHUMADA  SIN HUESO', '454', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('316', '1762', 'PIERNA AHUMADA ( BANDEJA)', '454', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('317', '1763', 'PIERNA AHUMADA C/H BANDEJA', '454', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('318', '1770', 'POLLO AHUMADO (PIEZA)', '454', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('319', '1772', 'POLLO AHUMADO BANDEJA', '454', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('320', '1773', 'POLLO AHUMADO PIEZA (PSMT)', '454', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('321', '1774', 'ROLLER HAM AHUMADO (PSMT)', '454', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('322', '1780', 'ROLLER HAM AHUMADO', '454', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('323', '1791', 'PASTRAMI', '454', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('324', '1792', 'ROAST BEEF', '454', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('325', '1793', 'ROAST BEET PIEZA PIEZA/LIBRA', '454', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('326', '1794', 'PASTRAMI LIBRA', '454', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('327', '1795', 'ROAST BEEF LIBRA', '454', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('328', '1803', 'MORT. FRANKFURT (125 GR.)', '125', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('329', '1810', 'SALCH- FRANKFORT (200 GR)', '200', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('330', '1811', 'SALCH-  FRANKFURT  (170 GR.)', '170', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('331', '1812', 'SALCHICHA-  BOLOGNA       (GRANEL)', '454', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('332', '1813', 'SALCH JUMBO FRANKFURT GRAN/36 UND.(F.ARTIFICIAL)', '454', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('333', '1819', 'S.JUMBO FRANK (12 UN)  2.5', '1135', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('334', '1820', 'SALCHICHA FRANKFURT 454 GR', '454', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('335', '1970', 'SALCHICHON RES            (200  GR)', '200', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('336', '1971', 'SALCHICHON TUBO RES (MANGUERA GRANEL)', '454', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('337', '1975', 'SALCHICHON PICANTE    (200  GR)', '200', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('338', '1980', 'SALCHICHON TUBO PICANTE (MANGUERA GRANEL)', '454', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('339', '2993', 'S.VIENA PICANTE', '150', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('340', '3401', 'REC.  BACON AHUMADOS', '454', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('341', '3402', 'REC. DE CHULETA AHUMADA', '454', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('342', '3410', 'REC.SALCHICHA', '454', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('343', '3411', 'REC. SALCHICHA  DELIKATESSEN', '454', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('344', '3420', 'REC. JAMON DE CERDO (PRENSADO)', '454', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('345', '3421', 'REC. JAMON DE POLLO', '454', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('346', '3422', 'RECORTE DE J.POPULAR', '454', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('347', '3430', 'REC.MORTADELA', '454', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('348', '3460', 'REC.SALAMI', '454', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('349', '3465', 'REC. PEPERONI', '454', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('350', '85120', 'CARNE  BISTEC PIM.LIMON (LIBRA)', '454', '0', 'undefined', 'javier estrada ', '2018-08-03', '17', '14', '130', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('351', '1107', 'MORT-BOLOGNA DELMOR (454 GR)', '454', '20', '20.00', 'WALTER TELLEZ', '2018-08-04', '11', '15', '24', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('352', '1113', 'MORT-CHILTOMA  (225 GR)', '225', '20', '9.91', 'WALTER TELLEZ', '2018-08-04', '11', '15', '24', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('353', '1123', 'MORT-ECONOMICA (125 GR)', '125', '200', '55.07', 'javier estrada', '2018-08-03', '17', '14', '137', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('354', '1230', 'PEPERONI GRANEL', '454', '100', '100.00', 'javier estrada', '2018-08-03', '17', '14', '137', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('355', '1243', 'SALCH- DESAYUNO ESPECIAL (GRANEL)', '454', '100', '100.00', 'javier estrada', '2018-08-03', '17', '14', '137', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('356', '1107', 'MORT-BOLOGNA DELMOR (454 GR)', '454', '10', '10.00', 'YADER', '2018-08-04', '9', '15', '2', '\0', '2018-08-02', '');
INSERT INTO `ordenes_s` VALUES ('357', '1101', 'MORT-BOLOGNA     (GRANEL)', '454', '10', '10.00', 'WALTER TELLEZ 01', '2018-08-04', '11', '18', '1', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('358', '1107', 'MORT-BOLOGNA DELMOR (454 GR)', '454', '10', '10.00', 'WALTER TELLEZ 01', '2018-08-04', '11', '18', '1', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('359', '1109', 'MORT-BOLOGNA (225 GR) (1102)', '225', '10', '4.96', 'WALTER TELLEZ 01', '2018-08-04', '11', '18', '1', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('360', '1111', 'MORT-CHILTOMA  (GRANEL / PIEZA)', '454', '10', '10.00', 'WALTER TELLEZ 01', '2018-08-04', '11', '18', '1', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('361', '1112', 'MORT-CHILTOMA  (150 GR)', '150', '10', '3.30', 'WALTER TELLEZ 01', '2018-08-04', '11', '18', '1', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('362', '1113', 'MORT-CHILTOMA  (225 GR)', '225', '10', '4.96', 'WALTER TELLEZ 01', '2018-08-04', '11', '18', '1', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('363', '1101', 'MORT-BOLOGNA     (GRANEL)', '454', '23', '23.00', 'Roger', '2018-08-04', '9', '19', '1', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('364', '1107', 'MORT-BOLOGNA DELMOR (454 GR)', '454', '23', '23.00', 'Roger', '2018-08-04', '9', '19', '1', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('365', '1109', 'MORT-BOLOGNA (225 GR) (1102)', '225', '23', '11.40', 'Roger', '2018-08-04', '9', '19', '1', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('366', '1111', 'MORT-CHILTOMA  (GRANEL / PIEZA)', '454', '23', '23.00', 'Roger', '2018-08-04', '9', '19', '1', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('367', '1112', 'MORT-CHILTOMA  (150 GR)', '150', '55', '18.17', 'Roger', '2018-08-04', '9', '19', '1', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('368', '1113', 'MORT-CHILTOMA  (225 GR)', '225', '55', '27.26', 'Roger', '2018-08-04', '9', '19', '1', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('369', '1117', 'MORT-POPULAR A GRANEL (PIEZA)', '454', '32', '32.00', 'Roger', '2018-08-04', '9', '19', '1', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('370', '1101', 'MORT-BOLOGNA     (GRANEL)', '454', '12', '12.00', 'Jiar Prueba Sol', '2018-08-06', '13', '15', '6', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('371', '1210', 'HOT DOG (170 GR.)', '170', '30', '11.23', 'Jiar Prueba Sol', '2018-08-06', '13', '15', '6', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('372', '1232', 'PEPERONI 454 GR', '454', '10', '10.00', 'Jiar Prueba Sol', '2018-08-06', '13', '15', '6', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('373', '1270', 'SALCHICHA MUNICH (454 GR)', '454', '15', '15.00', 'Jiar Prueba Sol', '2018-08-06', '13', '15', '6', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('374', '1335', 'JAMON PIC NIC (125 GR)', '125', '20', '5.51', 'Jiar Prueba Sol', '2018-08-06', '13', '15', '6', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('375', '1502', 'CARNE MOLIDA POLLO    (LIBRA)', '454', '10', '10.00', 'Jiar Prueba Sol', '2018-08-06', '13', '15', '6', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('376', '1670', 'SALCHICHON POLLO       (200  GR)', '200', '20', '8.81', 'Jiar Prueba Sol', '2018-08-06', '13', '15', '6', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('377', '1791', 'PASTRAMI', '454', '10', '10.00', 'Jiar Prueba Sol', '2018-08-06', '13', '15', '6', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('378', '1792', 'ROAST BEEF', '454', '10', '10.00', 'Jiar Prueba Sol', '2018-08-06', '13', '15', '6', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('379', '1970', 'SALCHICHON RES            (200  GR)', '200', '10', '4.41', 'Jiar Prueba Sol', '2018-08-06', '13', '15', '6', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('380', '1101', 'MORT-BOLOGNA     (GRANEL)', '454', '10', '10.00', 'Jiar Prueba Sol', '2018-08-06', '13', '15', '6', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('381', '1112', 'MORT-CHILTOMA  (150 GR)', '150', '10', '3.30', 'Jiar Prueba Sol', '2018-08-06', '13', '15', '6', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('382', '1121', 'MORT-ECONOMICA  (GRANEL/PIEZA)', '454', '10', '10.00', 'Jiar Prueba Sol', '2018-08-06', '13', '15', '6', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('383', '1190', 'MORT-CON TOCINO (150 GR.)', '150', '10', '3.30', 'Jiar Prueba Sol', '2018-08-06', '13', '15', '6', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('384', '1234', 'SALAMI PREMIUN 1000 (GRANEL)', '454', '10', '10.00', 'Jiar Prueba Sol', '2018-08-06', '13', '15', '6', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('385', '1243', 'SALCH- DESAYUNO ESPECIAL (GRANEL)', '454', '10', '10.00', 'Jiar Prueba Sol', '2018-08-06', '13', '15', '6', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('386', '1250', 'SALCH-JUMBO ECONOMAX (378 G)', '378', '10', '8.33', 'Jiar Prueba Sol', '2018-08-06', '13', '15', '6', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('387', '1272', 'SALCHICHA MUNICH GRANEL', '454', '10', '10.00', 'Jiar Prueba Sol', '2018-08-06', '13', '15', '6', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('388', '1275', 'SALCHICHA MUNICH KILO', '1000', '10', '22.03', 'Jiar Prueba Sol', '2018-08-06', '13', '15', '6', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('389', '1279', 'Salchicha Jumbo 2.3', '1000', '10', '22.03', 'Jiar Prueba Sol', '2018-08-06', '13', '15', '6', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('390', '1101', 'MORT-BOLOGNA     (GRANEL)', '454', '64', '64.00', 'Roger', '2018-08-04', '9', '19', '2', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('391', '1107', 'MORT-BOLOGNA DELMOR (454 GR)', '454', '67', '67.00', 'Roger', '2018-08-04', '9', '19', '2', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('392', '1109', 'MORT-BOLOGNA (225 GR) (1102)', '225', '87', '43.12', 'Roger', '2018-08-04', '9', '19', '2', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('393', '1111', 'MORT-CHILTOMA  (GRANEL / PIEZA)', '454', '34', '34.00', 'Roger', '2018-08-04', '9', '19', '2', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('394', '1112', 'MORT-CHILTOMA  (150 GR)', '150', '44', '14.54', 'Roger', '2018-08-04', '9', '19', '2', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('395', '1113', 'MORT-CHILTOMA  (225 GR)', '225', '44', '21.81', 'Roger', '2018-08-04', '9', '19', '2', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('396', '1117', 'MORT-POPULAR A GRANEL (PIEZA)', '454', '44', '44.00', 'Roger', '2018-08-04', '9', '19', '2', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('397', '1101', 'MORT-BOLOGNA     (GRANEL)', '454', '55', '55.00', 'Roger', '2018-08-04', '9', '19', '6', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('398', '1107', 'MORT-BOLOGNA DELMOR (454 GR)', '454', '55', '55.00', 'Roger', '2018-08-04', '9', '19', '6', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('399', '1109', 'MORT-BOLOGNA (225 GR) (1102)', '225', '55', '27.26', 'Roger', '2018-08-04', '9', '19', '6', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('400', '1111', 'MORT-CHILTOMA  (GRANEL / PIEZA)', '454', '55', '55.00', 'Roger', '2018-08-04', '9', '19', '6', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('401', '1112', 'MORT-CHILTOMA  (150 GR)', '150', '55', '18.17', 'Roger', '2018-08-04', '9', '19', '6', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('402', '1113', 'MORT-CHILTOMA  (225 GR)', '225', '77', '38.16', 'Roger', '2018-08-04', '9', '19', '6', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('403', '1101', 'MORT-BOLOGNA     (GRANEL)', '454', '10', '10.00', 'Jiar Prueba Sol', '2018-08-06', '13', '15', '33', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('404', '1107', 'MORT-BOLOGNA DELMOR (454 GR)', '454', '10', '10.00', 'Jiar Prueba Sol', '2018-08-06', '13', '15', '33', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('405', '1109', 'MORT-BOLOGNA (225 GR) (1102)', '225', '10', '4.96', 'Jiar Prueba Sol', '2018-08-06', '13', '15', '33', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('406', '1111', 'MORT-CHILTOMA  (GRANEL / PIEZA)', '454', '10', '10.00', 'Jiar Prueba Sol', '2018-08-06', '13', '15', '33', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('407', '1101', 'MORT-BOLOGNA     (GRANEL)', '454', '66', '66.00', 'Roger', '2018-08-04', '11', '19', '7', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('408', '1112', 'MORT-CHILTOMA  (150 GR)', '150', '10', '3.30', 'Jiar Prueba Sol', '2018-08-06', '13', '15', '33', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('409', '1107', 'MORT-BOLOGNA DELMOR (454 GR)', '454', '66', '66.00', 'Roger', '2018-08-04', '11', '19', '7', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('410', '1113', 'MORT-CHILTOMA  (225 GR)', '225', '10', '4.96', 'Jiar Prueba Sol', '2018-08-06', '13', '15', '33', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('411', '1109', 'MORT-BOLOGNA (225 GR) (1102)', '225', '66', '32.71', 'Roger', '2018-08-04', '11', '19', '7', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('412', '1117', 'MORT-POPULAR A GRANEL (PIEZA)', '454', '10', '10.00', 'Jiar Prueba Sol', '2018-08-06', '13', '15', '33', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('413', '1111', 'MORT-CHILTOMA  (GRANEL / PIEZA)', '454', '33', '33.00', 'Roger', '2018-08-04', '11', '19', '7', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('414', '1119', 'MORT-POPULAR (PAQUETE)', '454', '10', '10.00', 'Jiar Prueba Sol', '2018-08-06', '13', '15', '33', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('415', '1112', 'MORT-CHILTOMA  (150 GR)', '150', '22', '7.27', 'Roger', '2018-08-04', '11', '19', '7', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('416', '1101', 'MORT-BOLOGNA     (GRANEL)', '454', '66', '66.00', 'Roger', '2018-08-04', '11', '19', '19', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('417', '1107', 'MORT-BOLOGNA DELMOR (454 GR)', '454', '88', '88.00', 'Roger', '2018-08-04', '11', '19', '19', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('418', '1109', 'MORT-BOLOGNA (225 GR) (1102)', '225', '44', '21.81', 'Roger', '2018-08-04', '11', '19', '19', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('419', '1111', 'MORT-CHILTOMA  (GRANEL / PIEZA)', '454', '33', '33.00', 'Roger', '2018-08-04', '11', '19', '19', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('420', '1112', 'MORT-CHILTOMA  (150 GR)', '150', '22', '7.27', 'Roger', '2018-08-04', '11', '19', '19', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('421', '1113', 'MORT-CHILTOMA  (225 GR)', '225', '22', '10.90', 'Roger', '2018-08-04', '11', '19', '19', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('422', '1101', 'MORT-BOLOGNA     (GRANEL)', '454', '5', '5.00', 'WALTER TELLEZ 02', '2018-08-04', '11', '18', '3', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('423', '1107', 'MORT-BOLOGNA DELMOR (454 GR)', '454', '5', '5.00', 'WALTER TELLEZ 02', '2018-08-04', '11', '18', '3', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('424', '1109', 'MORT-BOLOGNA (225 GR) (1102)', '225', '5', '2.48', 'WALTER TELLEZ 02', '2018-08-04', '11', '18', '3', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('425', '1111', 'MORT-CHILTOMA  (GRANEL / PIEZA)', '454', '5', '5.00', 'WALTER TELLEZ 02', '2018-08-04', '11', '18', '3', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('426', '1112', 'MORT-CHILTOMA  (150 GR)', '150', '5', '1.65', 'WALTER TELLEZ 02', '2018-08-04', '11', '18', '3', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('427', '1113', 'MORT-CHILTOMA  (225 GR)', '225', '5', '2.48', 'WALTER TELLEZ 02', '2018-08-04', '11', '18', '3', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('428', '1117', 'MORT-POPULAR A GRANEL (PIEZA)', '454', '5', '5.00', 'WALTER TELLEZ 02', '2018-08-04', '11', '18', '3', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('429', '1101', 'MORT-BOLOGNA     (GRANEL)', '454', '44', '44.00', 'Roger', '2018-08-04', '11', '19', '39', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('430', '1107', 'MORT-BOLOGNA DELMOR (454 GR)', '454', '56', '56.00', 'Roger', '2018-08-04', '11', '19', '39', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('431', '1109', 'MORT-BOLOGNA (225 GR) (1102)', '225', '12', '5.95', 'Roger', '2018-08-04', '11', '19', '39', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('432', '1111', 'MORT-CHILTOMA  (GRANEL / PIEZA)', '454', '77', '77.00', 'Roger', '2018-08-04', '11', '19', '39', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('433', '1112', 'MORT-CHILTOMA  (150 GR)', '150', '55', '18.17', 'Roger', '2018-08-04', '11', '19', '39', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('434', '1109', 'MORT-BOLOGNA (225 GR) (1102)', '225', '10', '4.96', 'Jiar Prueba Sol', '2018-08-06', '13', '15', '32', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('435', '1111', 'MORT-CHILTOMA  (GRANEL / PIEZA)', '454', '10', '10.00', 'Jiar Prueba Sol', '2018-08-06', '13', '15', '32', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('436', '1112', 'MORT-CHILTOMA  (150 GR)', '150', '10', '3.30', 'Jiar Prueba Sol', '2018-08-06', '13', '15', '32', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('437', '1113', 'MORT-CHILTOMA  (225 GR)', '225', '10', '4.96', 'Jiar Prueba Sol', '2018-08-06', '13', '15', '32', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('438', '1117', 'MORT-POPULAR A GRANEL (PIEZA)', '454', '10', '10.00', 'Jiar Prueba Sol', '2018-08-06', '13', '15', '32', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('439', '1119', 'MORT-POPULAR (PAQUETE)', '454', '101', '101.00', 'Jiar Prueba Sol', '2018-08-06', '13', '15', '32', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('440', '1121', 'MORT-ECONOMICA  (GRANEL/PIEZA)', '454', '101', '101.00', 'Jiar Prueba Sol', '2018-08-06', '13', '15', '32', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('441', '1123', 'MORT-ECONOMICA (125 GR)', '125', '10', '2.75', 'Jiar Prueba Sol', '2018-08-06', '13', '15', '32', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('442', '1126', 'MORT-ECONOMICA (454 GR)', '454', '10', '10.00', 'Jiar Prueba Sol', '2018-08-06', '13', '15', '32', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('443', '1101', 'MORT-BOLOGNA     (GRANEL)', '454', '20', '20.00', 'WALTER TELLEZ 03', '2018-08-04', '11', '18', '4', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('444', '1107', 'MORT-BOLOGNA DELMOR (454 GR)', '454', '20', '20.00', 'WALTER TELLEZ 03', '2018-08-04', '11', '18', '4', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('445', '1109', 'MORT-BOLOGNA (225 GR) (1102)', '225', '20', '9.91', 'WALTER TELLEZ 03', '2018-08-04', '11', '18', '4', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('446', '1111', 'MORT-CHILTOMA  (GRANEL / PIEZA)', '454', '20', '20.00', 'WALTER TELLEZ 03', '2018-08-04', '11', '18', '4', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('447', '1112', 'MORT-CHILTOMA  (150 GR)', '150', '20', '6.61', 'WALTER TELLEZ 03', '2018-08-04', '11', '18', '4', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('448', '1113', 'MORT-CHILTOMA  (225 GR)', '225', '20', '9.91', 'WALTER TELLEZ 03', '2018-08-04', '11', '18', '4', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('449', '1109', 'MORT-BOLOGNA (225 GR) (1102)', '225', '10', '4.96', 'Jiar Prueba Sol', '2018-08-06', '13', '15', '39', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('450', '1111', 'MORT-CHILTOMA  (GRANEL / PIEZA)', '454', '10', '10.00', 'Jiar Prueba Sol', '2018-08-06', '13', '15', '39', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('451', '1112', 'MORT-CHILTOMA  (150 GR)', '150', '10', '3.30', 'Jiar Prueba Sol', '2018-08-06', '13', '15', '39', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('452', '1113', 'MORT-CHILTOMA  (225 GR)', '225', '10', '4.96', 'Jiar Prueba Sol', '2018-08-06', '13', '15', '39', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('453', '1117', 'MORT-POPULAR A GRANEL (PIEZA)', '454', '10', '10.00', 'Jiar Prueba Sol', '2018-08-06', '13', '15', '39', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('454', '1119', 'MORT-POPULAR (PAQUETE)', '454', '10', '10.00', 'Jiar Prueba Sol', '2018-08-06', '13', '15', '39', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('455', '1101', 'MORT-BOLOGNA     (GRANEL)', '454', '4', '4.00', 'Roger', '2018-08-04', '12', '19', '61', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('456', '1107', 'MORT-BOLOGNA DELMOR (454 GR)', '454', '4', '4.00', 'Roger', '2018-08-04', '12', '19', '61', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('457', '1109', 'MORT-BOLOGNA (225 GR) (1102)', '225', '4', '1.98', 'Roger', '2018-08-04', '12', '19', '61', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('458', '1111', 'MORT-CHILTOMA  (GRANEL / PIEZA)', '454', '5', '5.00', 'Roger', '2018-08-04', '12', '19', '61', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('459', '1112', 'MORT-CHILTOMA  (150 GR)', '150', '6', '1.98', 'Roger', '2018-08-04', '12', '19', '61', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('460', '1101', 'MORT-BOLOGNA     (GRANEL)', '454', '10', '10.00', 'Jiar Prueba Sol', '2018-08-06', '13', '15', '49', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('461', '1107', 'MORT-BOLOGNA DELMOR (454 GR)', '454', '10', '10.00', 'Jiar Prueba Sol', '2018-08-06', '13', '15', '49', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('462', '1109', 'MORT-BOLOGNA (225 GR) (1102)', '225', '10', '4.96', 'Jiar Prueba Sol', '2018-08-06', '13', '15', '49', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('463', '1111', 'MORT-CHILTOMA  (GRANEL / PIEZA)', '454', '10', '10.00', 'Jiar Prueba Sol', '2018-08-06', '13', '15', '49', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('464', '1112', 'MORT-CHILTOMA  (150 GR)', '150', '10', '3.30', 'Jiar Prueba Sol', '2018-08-06', '13', '15', '49', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('465', '1113', 'MORT-CHILTOMA  (225 GR)', '225', '10', '4.96', 'Jiar Prueba Sol', '2018-08-06', '13', '15', '49', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('466', '1117', 'MORT-POPULAR A GRANEL (PIEZA)', '454', '10', '10.00', 'Jiar Prueba Sol', '2018-08-06', '13', '15', '49', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('467', '1119', 'MORT-POPULAR (PAQUETE)', '454', '10', '10.00', 'Jiar Prueba Sol', '2018-08-06', '13', '15', '49', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('468', '1121', 'MORT-ECONOMICA  (GRANEL/PIEZA)', '454', '10', '10.00', 'Jiar Prueba Sol', '2018-08-06', '13', '15', '49', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('469', '1123', 'MORT-ECONOMICA (125 GR)', '125', '10', '2.75', 'Jiar Prueba Sol', '2018-08-06', '13', '15', '49', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('470', '1101', 'MORT-BOLOGNA     (GRANEL)', '454', '44', '44.00', 'Roger', '2018-08-04', '12', '19', '105', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('471', '1107', 'MORT-BOLOGNA DELMOR (454 GR)', '454', '44', '44.00', 'Roger', '2018-08-04', '12', '19', '105', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('472', '1109', 'MORT-BOLOGNA (225 GR) (1102)', '225', '5', '2.48', 'Roger', '2018-08-04', '12', '19', '105', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('473', '1111', 'MORT-CHILTOMA  (GRANEL / PIEZA)', '454', '5', '5.00', 'Roger', '2018-08-04', '12', '19', '105', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('474', '1112', 'MORT-CHILTOMA  (150 GR)', '150', '8', '2.64', 'Roger', '2018-08-04', '12', '19', '105', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('475', '1101', 'MORT-BOLOGNA     (GRANEL)', '454', '10', '10.00', 'EDDY PEÑA01', '2018-08-04', '24', '18', '5', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('476', '1107', 'MORT-BOLOGNA DELMOR (454 GR)', '454', '10', '10.00', 'EDDY PEÑA01', '2018-08-04', '24', '18', '5', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('477', '1109', 'MORT-BOLOGNA (225 GR) (1102)', '225', '10', '4.96', 'EDDY PEÑA01', '2018-08-04', '24', '18', '5', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('478', '1111', 'MORT-CHILTOMA  (GRANEL / PIEZA)', '454', '10', '10.00', 'EDDY PEÑA01', '2018-08-04', '24', '18', '5', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('479', '1112', 'MORT-CHILTOMA  (150 GR)', '150', '10', '3.30', 'EDDY PEÑA01', '2018-08-04', '24', '18', '5', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('480', '1101', 'MORT-BOLOGNA     (GRANEL)', '454', '55', '55.00', 'Roger', '2018-08-04', '12', '19', '127', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('481', '1107', 'MORT-BOLOGNA DELMOR (454 GR)', '454', '55', '55.00', 'Roger', '2018-08-04', '12', '19', '127', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('482', '1109', 'MORT-BOLOGNA (225 GR) (1102)', '225', '55', '27.26', 'Roger', '2018-08-04', '12', '19', '127', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('483', '1111', 'MORT-CHILTOMA  (GRANEL / PIEZA)', '454', '55', '55.00', 'Roger', '2018-08-04', '12', '19', '127', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('484', '1112', 'MORT-CHILTOMA  (150 GR)', '150', '55', '18.17', 'Roger', '2018-08-04', '12', '19', '127', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('485', '1101', 'MORT-BOLOGNA     (GRANEL)', '454', '10', '10.00', 'EDDY PEÑA 02', '2018-08-04', '24', '18', '6', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('486', '1107', 'MORT-BOLOGNA DELMOR (454 GR)', '454', '10', '10.00', 'EDDY PEÑA 02', '2018-08-04', '24', '18', '6', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('487', '1109', 'MORT-BOLOGNA (225 GR) (1102)', '225', '10', '4.96', 'EDDY PEÑA 02', '2018-08-04', '24', '18', '6', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('488', '1111', 'MORT-CHILTOMA  (GRANEL / PIEZA)', '454', '10', '10.00', 'EDDY PEÑA 02', '2018-08-04', '24', '18', '6', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('489', '1101', 'MORT-BOLOGNA     (GRANEL)', '454', '5', '5.00', 'Lawrence Espinoza Prueba Sol', '2018-08-06', '9', '15', '1', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('490', '1107', 'MORT-BOLOGNA DELMOR (454 GR)', '454', '10', '10.00', 'Lawrence Espinoza Prueba Sol', '2018-08-06', '9', '15', '1', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('491', '1109', 'MORT-BOLOGNA (225 GR) (1102)', '225', '10', '4.96', 'Lawrence Espinoza Prueba Sol', '2018-08-06', '9', '15', '1', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('492', '1111', 'MORT-CHILTOMA  (GRANEL / PIEZA)', '454', '10', '10.00', 'Lawrence Espinoza Prueba Sol', '2018-08-06', '9', '15', '1', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('493', '1112', 'MORT-CHILTOMA  (150 GR)', '150', '10', '3.30', 'Lawrence Espinoza Prueba Sol', '2018-08-06', '9', '15', '1', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('494', '1113', 'MORT-CHILTOMA  (225 GR)', '225', '10', '4.96', 'Lawrence Espinoza Prueba Sol', '2018-08-06', '9', '15', '1', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('495', '1117', 'MORT-POPULAR A GRANEL (PIEZA)', '454', '10', '10.00', 'Lawrence Espinoza Prueba Sol', '2018-08-06', '9', '15', '1', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('496', '1101', 'MORT-BOLOGNA     (GRANEL)', '454', '5', '5.00', 'EDDY PEÑA', '2018-08-04', '24', '18', '7', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('497', '1107', 'MORT-BOLOGNA DELMOR (454 GR)', '454', '5', '5.00', 'EDDY PEÑA', '2018-08-04', '24', '18', '7', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('498', '1109', 'MORT-BOLOGNA (225 GR) (1102)', '225', '5', '2.48', 'EDDY PEÑA', '2018-08-04', '24', '18', '7', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('499', '1111', 'MORT-CHILTOMA  (GRANEL / PIEZA)', '454', '5', '5.00', 'EDDY PEÑA', '2018-08-04', '24', '18', '7', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('500', '1112', 'MORT-CHILTOMA  (150 GR)', '150', '5', '1.65', 'EDDY PEÑA', '2018-08-04', '24', '18', '7', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('501', '1101', 'MORT-BOLOGNA     (GRANEL)', '454', '10', '10.00', 'Lawrence Espinoza Prueba Sol', '2018-08-06', '9', '15', '2', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('502', '1107', 'MORT-BOLOGNA DELMOR (454 GR)', '454', '10', '10.00', 'Lawrence Espinoza Prueba Sol', '2018-08-06', '9', '15', '2', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('503', '1109', 'MORT-BOLOGNA (225 GR) (1102)', '225', '10', '4.96', 'Lawrence Espinoza Prueba Sol', '2018-08-06', '9', '15', '2', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('504', '1111', 'MORT-CHILTOMA  (GRANEL / PIEZA)', '454', '10', '10.00', 'Lawrence Espinoza Prueba Sol', '2018-08-06', '9', '15', '2', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('505', '1112', 'MORT-CHILTOMA  (150 GR)', '150', '10', '3.30', 'Lawrence Espinoza Prueba Sol', '2018-08-06', '9', '15', '2', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('506', '1113', 'MORT-CHILTOMA  (225 GR)', '225', '10', '4.96', 'Lawrence Espinoza Prueba Sol', '2018-08-06', '9', '15', '2', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('507', '1117', 'MORT-POPULAR A GRANEL (PIEZA)', '454', '10', '10.00', 'Lawrence Espinoza Prueba Sol', '2018-08-06', '9', '15', '2', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('508', '1119', 'MORT-POPULAR (PAQUETE)', '454', '10', '10.00', 'Lawrence Espinoza Prueba Sol', '2018-08-06', '9', '15', '2', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('509', '1101', 'MORT-BOLOGNA     (GRANEL)', '454', '4', '4.00', 'Roger', '2018-08-04', '12', '19', '128', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('510', '1107', 'MORT-BOLOGNA DELMOR (454 GR)', '454', '5', '5.00', 'Roger', '2018-08-04', '12', '19', '128', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('511', '1109', 'MORT-BOLOGNA (225 GR) (1102)', '225', '6', '2.97', 'Roger', '2018-08-04', '12', '19', '128', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('512', '1111', 'MORT-CHILTOMA  (GRANEL / PIEZA)', '454', '8', '8.00', 'Roger', '2018-08-04', '12', '19', '128', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('513', '1112', 'MORT-CHILTOMA  (150 GR)', '150', '3', '0.99', 'Roger', '2018-08-04', '12', '19', '128', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('514', '1101', 'MORT-BOLOGNA     (GRANEL)', '454', '66', '66.00', 'Roger', '2018-08-04', '13', '19', '122', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('515', '1107', 'MORT-BOLOGNA DELMOR (454 GR)', '454', '66', '66.00', 'Roger', '2018-08-04', '13', '19', '122', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('516', '1109', 'MORT-BOLOGNA (225 GR) (1102)', '225', '66', '32.71', 'Roger', '2018-08-04', '13', '19', '122', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('517', '1111', 'MORT-CHILTOMA  (GRANEL / PIEZA)', '454', '44', '44.00', 'Roger', '2018-08-04', '13', '19', '122', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('518', '1112', 'MORT-CHILTOMA  (150 GR)', '150', '33', '10.90', 'Roger', '2018-08-04', '13', '19', '122', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('519', '1101', 'MORT-BOLOGNA     (GRANEL)', '454', '10', '10.00', 'Lawrence Espinoza Prueba Sol', '2018-08-06', '9', '15', '13', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('520', '1107', 'MORT-BOLOGNA DELMOR (454 GR)', '454', '10', '10.00', 'Lawrence Espinoza Prueba Sol', '2018-08-06', '9', '15', '13', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('521', '1109', 'MORT-BOLOGNA (225 GR) (1102)', '225', '10', '4.96', 'Lawrence Espinoza Prueba Sol', '2018-08-06', '9', '15', '13', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('522', '1111', 'MORT-CHILTOMA  (GRANEL / PIEZA)', '454', '10', '10.00', 'Lawrence Espinoza Prueba Sol', '2018-08-06', '9', '15', '13', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('523', '1112', 'MORT-CHILTOMA  (150 GR)', '150', '10', '3.30', 'Lawrence Espinoza Prueba Sol', '2018-08-06', '9', '15', '13', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('524', '1113', 'MORT-CHILTOMA  (225 GR)', '225', '10', '4.96', 'Lawrence Espinoza Prueba Sol', '2018-08-06', '9', '15', '13', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('525', '1117', 'MORT-POPULAR A GRANEL (PIEZA)', '454', '10', '10.00', 'Lawrence Espinoza Prueba Sol', '2018-08-06', '9', '15', '13', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('526', '1101', 'MORT-BOLOGNA     (GRANEL)', '454', '6', '6.00', 'Roger', '2018-08-04', '13', '19', '106', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('527', '1107', 'MORT-BOLOGNA DELMOR (454 GR)', '454', '7', '7.00', 'Roger', '2018-08-04', '13', '19', '106', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('528', '1109', 'MORT-BOLOGNA (225 GR) (1102)', '225', '8', '3.96', 'Roger', '2018-08-04', '13', '19', '106', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('529', '1111', 'MORT-CHILTOMA  (GRANEL / PIEZA)', '454', '45', '45.00', 'Roger', '2018-08-04', '13', '19', '106', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('530', '1112', 'MORT-CHILTOMA  (150 GR)', '150', '3', '0.99', 'Roger', '2018-08-04', '13', '19', '106', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('531', '1101', 'MORT-BOLOGNA     (GRANEL)', '454', '12', '12.00', 'YADER CASTAÑEDA 01', '2018-08-04', '9', '18', '8', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('532', '1107', 'MORT-BOLOGNA DELMOR (454 GR)', '454', '12', '12.00', 'YADER CASTAÑEDA 01', '2018-08-04', '9', '18', '8', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('533', '1109', 'MORT-BOLOGNA (225 GR) (1102)', '225', '12', '5.95', 'YADER CASTAÑEDA 01', '2018-08-04', '9', '18', '8', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('534', '1111', 'MORT-CHILTOMA  (GRANEL / PIEZA)', '454', '12', '12.00', 'YADER CASTAÑEDA 01', '2018-08-04', '9', '18', '8', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('535', '1112', 'MORT-CHILTOMA  (150 GR)', '150', '12', '3.96', 'YADER CASTAÑEDA 01', '2018-08-04', '9', '18', '8', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('536', '1101', 'MORT-BOLOGNA     (GRANEL)', '454', '4', '4.00', 'Roger', '2018-08-04', '13', '19', '95', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('537', '1107', 'MORT-BOLOGNA DELMOR (454 GR)', '454', '5', '5.00', 'Roger', '2018-08-04', '13', '19', '95', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('538', '1109', 'MORT-BOLOGNA (225 GR) (1102)', '225', '6', '2.97', 'Roger', '2018-08-04', '13', '19', '95', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('539', '1111', 'MORT-CHILTOMA  (GRANEL / PIEZA)', '454', '45', '45.00', 'Roger', '2018-08-04', '13', '19', '95', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('540', '1112', 'MORT-CHILTOMA  (150 GR)', '150', '44', '14.54', 'Roger', '2018-08-04', '13', '19', '95', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('541', '1101', 'MORT-BOLOGNA     (GRANEL)', '454', '10', '10.00', 'Lawrence Espinoza Prueba Sol', '2018-08-06', '9', '15', '25', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('542', '1107', 'MORT-BOLOGNA DELMOR (454 GR)', '454', '10', '10.00', 'Lawrence Espinoza Prueba Sol', '2018-08-06', '9', '15', '25', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('543', '1109', 'MORT-BOLOGNA (225 GR) (1102)', '225', '10', '4.96', 'Lawrence Espinoza Prueba Sol', '2018-08-06', '9', '15', '25', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('544', '1111', 'MORT-CHILTOMA  (GRANEL / PIEZA)', '454', '10', '10.00', 'Lawrence Espinoza Prueba Sol', '2018-08-06', '9', '15', '25', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('545', '1112', 'MORT-CHILTOMA  (150 GR)', '150', '10', '3.30', 'Lawrence Espinoza Prueba Sol', '2018-08-06', '9', '15', '25', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('546', '1113', 'MORT-CHILTOMA  (225 GR)', '225', '10', '4.96', 'Lawrence Espinoza Prueba Sol', '2018-08-06', '9', '15', '25', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('547', '1117', 'MORT-POPULAR A GRANEL (PIEZA)', '454', '10', '10.00', 'Lawrence Espinoza Prueba Sol', '2018-08-06', '9', '15', '25', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('548', '1101', 'MORT-BOLOGNA     (GRANEL)', '454', '10', '10.00', 'YADER CASTAÑEDA', '2018-08-04', '9', '18', '11', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('549', '1107', 'MORT-BOLOGNA DELMOR (454 GR)', '454', '10', '10.00', 'YADER CASTAÑEDA', '2018-08-04', '9', '18', '11', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('550', '1109', 'MORT-BOLOGNA (225 GR) (1102)', '225', '10', '4.96', 'YADER CASTAÑEDA', '2018-08-04', '9', '18', '11', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('551', '1111', 'MORT-CHILTOMA  (GRANEL / PIEZA)', '454', '10', '10.00', 'YADER CASTAÑEDA', '2018-08-04', '9', '18', '11', '\0', '2018-08-02', '\0');
INSERT INTO `ordenes_s` VALUES ('552', '1112', 'MORT-CHILTOMA  (150 GR)', '150', '10', '3.30', 'YADER CASTAÑEDA', '2018-08-04', '9', '18', '11', '\0', '2018-08-02', '\0');

-- ----------------------------
-- Table structure for productos
-- ----------------------------
DROP TABLE IF EXISTS `productos`;
CREATE TABLE `productos` (
  `Codigo` int(11) NOT NULL,
  `Descripcion` varchar(255) DEFAULT NULL,
  `GRM` decimal(10,3) DEFAULT NULL,
  `Saldo` double(10,2) DEFAULT NULL,
  `Libras` double(10,2) DEFAULT NULL,
  `FechaCarga` date DEFAULT NULL,
  `Estado` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of productos
-- ----------------------------
INSERT INTO `productos` VALUES ('1123', 'MORT-ECONOMICA (125 GR)', '125.000', '8376.00', '2519.27', '2018-09-22', '0');
INSERT INTO `productos` VALUES ('1640', 'MORT-    POLLO  (150 GR.)', '150.000', '2040.00', '689.87', '2018-09-22', '0');
INSERT INTO `productos` VALUES ('1137', 'MORT-JAMONADA DELMOR (454 GR)', '454.000', '2023.00', '2179.00', '2018-09-22', '0');
INSERT INTO `productos` VALUES ('1131', 'MORT. JAMONADA (150 GR.)', '150.000', '992.00', '342.29', '2018-09-22', '0');
INSERT INTO `productos` VALUES ('1645', 'MORT. DE PAVO', '454.000', '826.00', '826.00', '2018-09-22', '0');
INSERT INTO `productos` VALUES ('1109', 'MORT-BOLOGNA (225 GR) (1102)', '225.000', '836.00', '437.11', '2018-09-22', '0');
INSERT INTO `productos` VALUES ('1127', 'MORT-POPULAR (½) 227 GRAMOS', '227.000', '6310.00', '3443.00', '2018-09-22', '0');
INSERT INTO `productos` VALUES ('1119', 'MORT-POPULAR (PAQUETE)', '454.000', '1474.00', '2114.00', '2018-09-22', '0');
INSERT INTO `productos` VALUES ('1193', 'MORT- CON TOCINO DELMOR (454 GR)', '454.000', '399.00', '399.00', '2018-09-22', null);
INSERT INTO `productos` VALUES ('1113', 'MORT-CHILTOMA  (225 GR)', '225.000', '1988.00', '1056.61', '2018-09-22', '0');
INSERT INTO `productos` VALUES ('1803', 'MORT. FRANKFURT (125 GR.)', '125.000', '4097.00', '1147.85', '2018-09-22', '0');
INSERT INTO `productos` VALUES ('1117', 'MORT-POPULAR A GRANEL (PIEZA)', '454.000', '636.83', '728.83', '2018-09-22', '0');
INSERT INTO `productos` VALUES ('1132', 'MORT-JAMONADA (225 GR)', '225.000', '810.00', '401.43', '2018-09-22', null);
INSERT INTO `productos` VALUES ('1134', 'MORT-ECONOMICA (225 GR)', '225.000', '1599.00', '792.46', '2018-09-22', null);
INSERT INTO `productos` VALUES ('1107', 'MORT-BOLOGNA DELMOR (454 GR)', '454.000', '1930.00', '1930.00', '2018-09-22', null);
INSERT INTO `productos` VALUES ('1121', 'MORT-ECONOMICA  (GRANEL/PIEZA)', '454.000', '216.24', '306.24', '2018-09-22', '0');
INSERT INTO `productos` VALUES ('1111', 'MORT-CHILTOMA  (GRANEL / PIEZA)', '454.000', '356.12', '356.12', '2018-09-22', null);
INSERT INTO `productos` VALUES ('1101', 'MORT-BOLOGNA     (GRANEL)', '454.000', '20.00', '20.00', '2018-09-22', null);
INSERT INTO `productos` VALUES ('1130', 'MORT-JAMONADA  (GRANEL/PIEZA)', '454.000', '393.72', '405.72', '2018-09-22', '0');
INSERT INTO `productos` VALUES ('1135', 'MORT-CON TOCINO (225GR)', '225.000', '1308.00', '696.81', '2018-09-22', '0');
INSERT INTO `productos` VALUES ('1126', 'MORT-ECONOMICA (454 GR)', '454.000', '1294.00', '1300.00', '2018-09-22', '0');
INSERT INTO `productos` VALUES ('1642', 'MORT-DE POLLO DELMOR (454 GR)', '454.000', '666.00', '666.00', '2018-09-22', null);
INSERT INTO `productos` VALUES ('1210', 'HOT DOG (170 GR.)', '170.000', '4342.00', '1804.85', '2018-09-22', '0');
INSERT INTO `productos` VALUES ('1217', 'SALCHI. HOT DOG POPUL. ( 22 UNDS)  (0409 GR.)', '409.000', '1833.00', '2081.04', '2018-09-22', '0');
INSERT INTO `productos` VALUES ('1218', 'SALCHI. HOT DOG  POPUL. (12 UND)   (260 GR.)', '260.000', '5608.00', '3211.63', '2018-09-22', null);
INSERT INTO `productos` VALUES ('1221', 'SALAMI         PIEZA        (GRANEL)', '454.000', '-719.90', '188.10', '2018-09-22', '2');
INSERT INTO `productos` VALUES ('1650', 'SALCH-  POLLO             (170 GR.)', '170.000', '2007.00', '791.96', '2018-09-22', '0');
INSERT INTO `productos` VALUES ('1811', 'SALCH-  FRANKFURT  (170 GR.)', '170.000', '2754.00', '1233.44', '2018-09-22', '0');
INSERT INTO `productos` VALUES ('1812', 'SALCHICHA-  BOLOGNA       (GRANEL)', '454.000', '1180.48', '1180.48', '2018-09-22', null);
INSERT INTO `productos` VALUES ('1214', 'SALCHICHA - POPULAR        (GRANEL)( 100 UND)', '454.000', '2390.34', '2390.34', '2018-09-22', null);
INSERT INTO `productos` VALUES ('1819', 'S.JUMBO FRANK (12 UN)  2.5', '1135.000', '393.00', '982.50', '2018-09-22', null);
INSERT INTO `productos` VALUES ('1813', 'SALCH JUMBO FRANKFURT GRAN/36 UND.(F.ARTIFICIAL)', '454.000', '1683.49', '1683.49', '2018-09-22', null);
INSERT INTO `productos` VALUES ('1670', 'SALCHICHON POLLO       (200  GR)', '200.000', '0.00', '0.00', '2018-09-22', null);
INSERT INTO `productos` VALUES ('1970', 'SALCHICHON RES            (200  GR)', '200.000', '1157.37', '509.86', '2018-09-22', null);
INSERT INTO `productos` VALUES ('1975', 'SALCHICHON PICANTE    (200  GR)', '200.000', '6452.00', '2842.29', '2018-09-22', null);
INSERT INTO `productos` VALUES ('1980', 'SALCHICHON TUBO PICANTE (MANGUERA GRANEL)', '454.000', '900.76', '900.76', '2018-09-22', null);
INSERT INTO `productos` VALUES ('1971', 'SALCHICHON TUBO RES (MANGUERA GRANEL)', '454.000', '1633.22', '1633.22', '2018-09-22', null);
INSERT INTO `productos` VALUES ('1655', 'SALCHICHA.  PAVO JUMBO 590', '590.000', '438.00', '569.21', '2018-09-22', null);
INSERT INTO `productos` VALUES ('1810', 'SALCH- FRANKFORT (200 GR)', '200.000', '6095.00', '2685.02', '2018-09-22', null);
INSERT INTO `productos` VALUES ('1227', 'SALAMI  CORTADO PREMIUN PIZZA(1224)/ PARA SUPER', '454.000', '409.70', '1129.70', '2018-09-22', '0');
INSERT INTO `productos` VALUES ('1290', 'SALCHICHA -  ALEMANA       454', '454.000', '414.00', '414.00', '2018-09-22', null);
INSERT INTO `productos` VALUES ('1264', 'SALCHICHA-  JUMBO  908', '908.000', '233.00', '466.00', '2018-09-22', null);
INSERT INTO `productos` VALUES ('1232', 'PEPERONI 454 GR', '454.000', '183.00', '183.00', '2018-09-22', null);
INSERT INTO `productos` VALUES ('1230', 'PEPERONI GRANEL', '454.000', '976.93', '976.93', '2018-09-22', null);
INSERT INTO `productos` VALUES ('1243', 'SALCH- DESAYUNO ESPECIAL (GRANEL)', '454.000', '358.72', '358.72', '2018-09-22', null);
INSERT INTO `productos` VALUES ('1255', 'SALCH- PARRILLERA (360GR)', '360.000', '1453.00', '1152.16', '2018-09-22', null);
INSERT INTO `productos` VALUES ('1292', 'SALCH- ALEMANA GRANEL', '454.000', '0.00', '0.00', '2018-09-22', null);
INSERT INTO `productos` VALUES ('1257', 'SALCH-PARRILLERA (GRANEL)', '454.000', '203.64', '203.64', '2018-09-22', null);
INSERT INTO `productos` VALUES ('1270', 'SALCHICHA MUNICH (454 GR)', '454.000', '525.00', '525.00', '2018-09-22', null);
INSERT INTO `productos` VALUES ('1272', 'SALCHICHA MUNICH GRANEL', '454.000', '173.66', '173.66', '2018-09-22', null);
INSERT INTO `productos` VALUES ('1820', 'SALCHICHA FRANKFURT 454 GR', '454.000', '1850.00', '1850.00', '2018-09-22', null);
INSERT INTO `productos` VALUES ('1233', 'SALAMI PREMIUM 454 GR', '454.000', '7.00', '7.00', '2018-09-22', null);
INSERT INTO `productos` VALUES ('1254', 'SALCHICHA PARRILLERA 454 GR', '454.000', '118.00', '118.00', '2018-09-22', null);
INSERT INTO `productos` VALUES ('1204', 'SALCHICHA HOT DOG 454GR', '454.000', '3617.00', '3617.00', '2018-09-22', null);
INSERT INTO `productos` VALUES ('1245', 'SALCHICHA DESAYUNO PSMAT', '1000.000', '296.00', '651.98', '2018-09-22', null);
INSERT INTO `productos` VALUES ('1241', 'SALCHICHA DESAYUNO DE POLLO', '454.000', '213.44', '213.44', '2018-09-22', null);
INSERT INTO `productos` VALUES ('1269', 'SALCHICHA SUPER JUMBO 1.3', '1300.000', '518.70', '1485.26', '2018-09-22', null);
INSERT INTO `productos` VALUES ('1279', 'Salchicha Jumbo 2.3', '1044.200', '165.00', '379.50', '2018-09-22', null);
INSERT INTO `productos` VALUES ('1805', 'SALCHICHÓN POPULAR FF RISTRA (P. NUEVO)', '200.000', '179.00', '78.85', '2018-09-22', null);
INSERT INTO `productos` VALUES ('1334', 'JAMON POPULAR  (LIBRA.)', '454.000', '0.00', '0.00', '2018-09-22', null);
INSERT INTO `productos` VALUES ('1335', 'JAMON PIC NIC (125 GR)', '125.000', '3970.00', '1093.06', '2018-09-22', null);
INSERT INTO `productos` VALUES ('1336', 'JAMON POPULAR (227 GR)', '227.000', '2909.00', '1454.50', '2018-09-22', null);
INSERT INTO `productos` VALUES ('1345', 'JAMON PRENSADO (125 GR)', '125.000', '7298.00', '2009.36', '2018-09-22', null);
INSERT INTO `productos` VALUES ('1620', 'JAMON POLLO    (150 GR.)', '150.000', '1926.00', '636.34', '2018-09-22', null);
INSERT INTO `productos` VALUES ('1373', 'JAMON PRENSADO (LIBRA)', '454.000', '715.00', '715.00', '2018-09-22', null);
INSERT INTO `productos` VALUES ('1630', 'JAMON PAVO', '454.000', '1166.00', '1166.00', '2018-09-22', null);
INSERT INTO `productos` VALUES ('1363', 'JAMON VIRGINIA (PSMT)', '1300.000', '237.00', '678.63', '2018-09-22', null);
INSERT INTO `productos` VALUES ('1341', 'JAMON PRENSADO  (PIEZA)', '454.000', '1056.66', '1056.66', '2018-09-22', null);
INSERT INTO `productos` VALUES ('1370', 'JAMON PAVO GRANEL', '454.000', '271.89', '271.89', '2018-09-22', null);
INSERT INTO `productos` VALUES ('1621', 'JAMON POLLO           (PIEZA)', '454.000', '350.20', '350.20', '2018-09-22', null);
INSERT INTO `productos` VALUES ('1321', 'JAMON PIERNA          (PIEZA)', '454.000', '454.13', '454.13', '2018-09-22', null);
INSERT INTO `productos` VALUES ('1325', 'JAMON PIERNA 454', '454.000', '295.00', '295.00', '2018-09-22', null);
INSERT INTO `productos` VALUES ('1353', 'JAMON PRENSADO CORTADO Y ARMADO', '454.000', '1180.00', '1180.00', '2018-09-22', null);
INSERT INTO `productos` VALUES ('1643', 'JAMON DE POLLO DELMOR 454 GR', '454.000', '1560.00', '1560.00', '2018-09-22', null);
INSERT INTO `productos` VALUES ('1379', 'JAMON PRENSADO PIZZA', '454.000', '70.00', '70.00', '2018-09-22', null);
INSERT INTO `productos` VALUES ('1303', 'JAMON PRENSADO PIZZA CORTADO Y ARMADO', '454.000', '365.00', '365.00', '2018-09-22', null);
INSERT INTO `productos` VALUES ('1401', 'CHORIZO CRIOLLO (227 GR)', '227.000', '3765.00', '1882.50', '2018-09-22', null);
INSERT INTO `productos` VALUES ('1402', 'CHORIZO CRIOLLO (GRANEL)', '454.000', '415.62', '415.62', '2018-09-22', null);
INSERT INTO `productos` VALUES ('1403', 'CHORIZO CRIOLLO (454 GR)', '454.000', '3281.00', '3281.00', '2018-09-22', null);
INSERT INTO `productos` VALUES ('1404', 'CHORIZO CRIOLLO 5LB', '454.000', '72.00', '72.00', '2018-09-22', null);
INSERT INTO `productos` VALUES ('1421', 'CHORIZO ESPAÑOL  (GRANEL)', '454.000', '139.47', '139.47', '2018-09-22', null);
INSERT INTO `productos` VALUES ('1473', 'CHORIZO ARGENTINO (GRANEL )', '454.000', '565.15', '565.15', '2018-09-22', null);
INSERT INTO `productos` VALUES ('1470', 'CHORIZO ARGENTINO (454 GR )', '454.000', '101.00', '101.00', '2018-09-22', null);
INSERT INTO `productos` VALUES ('1502', 'CARNE MOLIDA POLLO    (LIBRA)', '454.000', '5681.00', '5681.00', '2018-09-22', null);
INSERT INTO `productos` VALUES ('1503', 'CARNE MOLIDA RES         (LIBRA)', '454.000', '5033.00', '5033.00', '2018-09-22', null);
INSERT INTO `productos` VALUES ('1504', 'CARNE MOLIDA CERDO   (LIBRA)', '454.000', '147.00', '147.00', '2018-09-22', null);
INSERT INTO `productos` VALUES ('1486', 'TORTA DE CARNE DE RES CLASICA', '500.000', '158.00', '174.01', '2018-09-22', null);

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

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
  PRIMARY KEY (`IdUsuario`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of usuarios
-- ----------------------------
INSERT INTO `usuarios` VALUES ('8', 'jorge', 'Jorge Rivas', '202cb962ac59075b964b07152d234b70', '4', 'Supervisor', '1,2,4,5,6,7,8,18,22,26,27', '', '2018-05-10');
INSERT INTO `usuarios` VALUES ('9', 'rodney', 'Rodney Lopez', '202cb962ac59075b964b07152d234b70', '4', 'Supervisor', '3,12,14,15,16,19,21,25', '', '2018-05-10');
INSERT INTO `usuarios` VALUES ('10', 'sa', 'Administrador', '202cb962ac59075b964b07152d234b70', '0', 'Administrador', null, '', '2018-05-10');
INSERT INTO `usuarios` VALUES ('11', 'douglas', 'Douglas Zotelo', '202cb962ac59075b964b07152d234b70', '4', 'Supervisor', '9,11,13,24', '', '2018-05-10');
INSERT INTO `usuarios` VALUES ('12', 'Jean', 'Jean Cardenas', '202cb962ac59075b964b07152d234b70', '3', 'Coordinador de Ventas', null, '', '2018-05-10');
INSERT INTO `usuarios` VALUES ('13', 'Monica', 'Monica', '202cb962ac59075b964b07152d234b70', '6', 'Asistente de almacen pdto terminados', null, '', '2018-06-09');
INSERT INTO `usuarios` VALUES ('14', 'Teresa', 'Teresa Miranda', '202cb962ac59075b964b07152d234b70', '7', 'Auxiliar de ventas', '15,16,17,21,23,28', '', '2018-06-29');
INSERT INTO `usuarios` VALUES ('15', 'Sugey', 'Sugey Mazzocchi', '202cb962ac59075b964b07152d234b70', '8', 'Relaciones públicas y comunicaciones', '9,11,12,13,21,24,25', '', '2018-06-29');
INSERT INTO `usuarios` VALUES ('16', 'Erika', 'Erika Mondragón', '202cb962ac59075b964b07152d234b70', '2', 'Gerente de Ventas', null, '', '2018-06-29');
INSERT INTO `usuarios` VALUES ('17', 'Heidi', 'Heidi Martinez', '202cb962ac59075b964b07152d234b70', '5', 'Jefa de tienda', '20', '', '2018-06-29');
INSERT INTO `usuarios` VALUES ('18', 'Raquel', 'Raquel', '202cb962ac59075b964b07152d234b70', '8', 'Relaciones públicas y comunicaciones', '9,11,12,13,21,24,25', '', '2018-06-29');
INSERT INTO `usuarios` VALUES ('19', 'Roger ', 'Roger  Quintanilla Gaitan', '202cb962ac59075b964b07152d234b70', '8', 'Relaciones públicas y comunicaciones', '9,11,12,13,21,24,25', '', '2018-06-29');

-- ----------------------------
-- View structure for view_consolidado
-- ----------------------------
DROP VIEW IF EXISTS `view_consolidado`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_consolidado` AS select if((`consolidado`.`Tipo` = 'U'),(sum(`consolidado`.`Unidades`) / 2),sum(if((`consolidado`.`Tipo` <> 'U'),`consolidado`.`Unidades`,0))) AS `Unidades`,if((`consolidado`.`Tipo` = 'U'),(sum(`consolidado`.`LBS`) / 2),sum(if((`consolidado`.`Tipo` <> 'U'),`consolidado`.`LBS`,0))) AS `LBS`,`consolidado`.`FechaEntrega` AS `FechaEntrega`,`consolidado`.`FechaCreacion` AS `FechaCreacion`,`consolidado`.`Usuario` AS `Usuario` from `consolidado` group by `consolidado`.`FechaEntrega` order by `consolidado`.`FechaEntrega` desc ;

-- ----------------------------
-- View structure for view_consolidadom
-- ----------------------------
DROP VIEW IF EXISTS `view_consolidadom`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_consolidadom` AS select `consolidadom`.`Fecha` AS `Fecha`,(select (((((((((sum(`consolidadom`.`Camp1`) + sum(`consolidadom`.`Camp2`)) + sum(`consolidadom`.`Camp3`)) + sum(`consolidadom`.`Camp4`)) + sum(`consolidadom`.`Camp5`)) + sum(`consolidadom`.`Camp6`)) + sum(`consolidadom`.`Camp7`)) + sum(`consolidadom`.`Camp8`)) + sum(`consolidadom`.`Camp9`)) + sum(`consolidadom`.`Camp10`))) AS `TOTAL` from `consolidadom` group by `consolidadom`.`Fecha` ;

-- ----------------------------
-- View structure for view_consolidado_s
-- ----------------------------
DROP VIEW IF EXISTS `view_consolidado_s`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_consolidado_s` AS select if((`consolidado_s`.`Tipo` = 'U'),(sum(`consolidado_s`.`Unidades`) / 2),sum(if((`consolidado_s`.`Tipo` <> 'U'),`consolidado_s`.`Unidades`,0))) AS `Unidades`,if((`consolidado_s`.`Tipo` = 'U'),(sum(`consolidado_s`.`LBS`) / 2),sum(if((`consolidado_s`.`Tipo` <> 'U'),`consolidado_s`.`LBS`,0))) AS `LBS`,`consolidado_s`.`FechaEntrega` AS `FechaEntrega`,`consolidado_s`.`FechaCreacion` AS `FechaCreacion`,`consolidado_s`.`Usuario` AS `Usuario` from `consolidado_s` group by `consolidado_s`.`FechaEntrega`,`consolidado_s`.`Usuario` order by `consolidado_s`.`FechaEntrega` desc ;

-- ----------------------------
-- View structure for view_detalle_consolidado
-- ----------------------------
DROP VIEW IF EXISTS `view_detalle_consolidado`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_detalle_consolidado` AS select sum(`consolidado`.`Unidades`) AS `Unidades`,sum(`consolidado`.`LBS`) AS `LBS`,`consolidado`.`FechaEntrega` AS `FechaEntrega`,`consolidado`.`FechaCreacion` AS `FechaCreacion`,`consolidado`.`Tipo` AS `Tipo` from `consolidado` group by `consolidado`.`FechaEntrega`,`consolidado`.`Tipo` order by `consolidado`.`FechaEntrega` desc ;

-- ----------------------------
-- View structure for view_detalle_consolidado_s
-- ----------------------------
DROP VIEW IF EXISTS `view_detalle_consolidado_s`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_detalle_consolidado_s` AS select sum(`consolidado_s`.`Unidades`) AS `Unidades`,sum(`consolidado_s`.`LBS`) AS `LBS`,`consolidado_s`.`FechaEntrega` AS `FechaEntrega`,`consolidado_s`.`FechaCreacion` AS `FechaCreacion`,`consolidado_s`.`Tipo` AS `Tipo`,`consolidado_s`.`Usuario` AS `Usuario` from `consolidado_s` group by `consolidado_s`.`FechaEntrega`,`consolidado_s`.`Tipo`,`consolidado_s`.`Usuario` order by `consolidado_s`.`FechaEntrega` desc ;

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
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_devoluciones` AS select `devoluciones`.`FechaEntrega` AS `FechaEntrega`,sum(`devoluciones`.`CantDev`) AS `CantDev`,sum(`devoluciones`.`Libras`) AS `Libras`,`devoluciones`.`FechaCreacion` AS `FechaCreacion` from `devoluciones` group by `devoluciones`.`FechaEntrega` order by `devoluciones`.`FechaEntrega` desc ;

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
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_ordenes_s_creadas` AS select `ordenes_s`.`FechaEntrega` AS `FechaEntrega`,sum(`ordenes_s`.`Unidades`) AS `Unidades`,`ordenes_s`.`Estado` AS `Estado`,`ordenes_s`.`Usuario` AS `Usuario`,`ordenes_s`.`Preventa` AS `Preventa` from `ordenes_s` where (`ordenes_s`.`Preventa` = 0) group by `ordenes_s`.`FechaEntrega`,`ordenes_s`.`Usuario` ;

-- ----------------------------
-- View structure for view_preventas_creadas
-- ----------------------------
DROP VIEW IF EXISTS `view_preventas_creadas`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_preventas_creadas` AS select `o`.`FechaEntrega` AS `FechaEntrega`,sum(`o`.`Unidades`) AS `Unidades`,sum(`o`.`LBS`) AS `LBS`,`o`.`Estado` AS `Estado`,`u`.`Nombre` AS `Nombre`,`u`.`IdUsuario` AS `IdUsuario`,`o`.`Preventa` AS `Preventa` from (`ordenes` `o` join `usuarios` `u` on((`o`.`Usuario` = `u`.`IdUsuario`))) where (`o`.`Preventa` = 1) group by `o`.`FechaEntrega`,`u`.`IdUsuario` ;

-- ----------------------------
-- View structure for view_preventas_s_creadas
-- ----------------------------
DROP VIEW IF EXISTS `view_preventas_s_creadas`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_preventas_s_creadas` AS select `ordenes_s`.`FechaEntrega` AS `FechaEntrega`,sum(`ordenes_s`.`Unidades`) AS `Unidades`,`ordenes_s`.`Estado` AS `Estado`,`ordenes_s`.`Usuario` AS `Usuario`,`ordenes_s`.`Preventa` AS `Preventa` from `ordenes_s` where (`ordenes_s`.`Preventa` = 1) group by `ordenes_s`.`FechaEntrega`,`ordenes_s`.`Usuario` ;

-- ----------------------------
-- View structure for view_productos
-- ----------------------------
DROP VIEW IF EXISTS `view_productos`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_productos` AS select `productos`.`Codigo` AS `Codigo`,`productos`.`Descripcion` AS `Descripcion`,`productos`.`GRM` AS `GRM`,`productos`.`Saldo` AS `Saldo`,`productos`.`Libras` AS `Libras`,(select sum(`productos`.`Saldo`) from `productos`) AS `Total`,`productos`.`Estado` AS `Estado` from `productos` ;

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
GROUP BY
	o.FechaEntrega
ORDER BY
	o.FechaEntrega DESC
LIMIT 10;
END
;;
DELIMITER ;
