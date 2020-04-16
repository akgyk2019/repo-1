/*
 Navicat Premium Data Transfer

 Source Server         : 192.168.40.83
 Source Server Type    : MySQL
 Source Server Version : 100500
 Source Host           : 192.168.40.83:3306
 Source Schema         : db_posfree_mata

 Target Server Type    : MySQL
 Target Server Version : 100500
 File Encoding         : 65001

 Date: 15/04/2020 16:24:19
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for ma_barang
-- ----------------------------
DROP TABLE IF EXISTS `ma_barang`;
CREATE TABLE `ma_barang`  (
  `kd_barang` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nm_barang` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `kd_satuan` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `kd_kategori` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `hrg_jual` int(11) NOT NULL,
  `hrg_beli` int(11) NOT NULL,
  `active` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `create_date` datetime(0) NULL DEFAULT NULL,
  `update_date` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`kd_barang`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ma_barang
-- ----------------------------
INSERT INTO `ma_barang` VALUES ('BR0000000000001', 'KABEL PANDUIT 24 AWG CAD6', 'S00004', 'K00004', 1950000, 1600000, '1', '2020-04-15 13:29:06', '2020-04-15 13:29:06');
INSERT INTO `ma_barang` VALUES ('BR0000000000002', 'KABEL BELDEN 24 AWG CAD6', 'S00004', 'K00004', 1850000, 1500000, '0', '2020-04-15 13:29:06', '2020-04-15 13:29:06');
INSERT INTO `ma_barang` VALUES ('BR0000000000003', 'CAMERA 2MP UBIQUITY', 'S00001', 'K00003', 350000, 450000, '1', '2020-04-15 13:29:06', '2020-04-15 13:29:06');
INSERT INTO `ma_barang` VALUES ('BR0000000000006', 'CAMERA 3MP UBIQUITY', 'S00004', 'K00003', 2950000, 2600000, '1', '2020-04-15 13:29:06', '2020-04-15 13:29:06');
INSERT INTO `ma_barang` VALUES ('BR0000000000007', 'TANG KRIMPING', 'S00001', 'K00001', 500000, 250000, '1', '2020-04-15 13:29:06', '2020-04-15 13:29:06');
INSERT INTO `ma_barang` VALUES ('BR0000000000008', 'JAKEMY', 'S00004', 'K00001', 500000, 250000, '1', '2020-04-15 13:29:06', '2020-04-15 13:29:06');

-- ----------------------------
-- Table structure for ma_kategori_barang
-- ----------------------------
DROP TABLE IF EXISTS `ma_kategori_barang`;
CREATE TABLE `ma_kategori_barang`  (
  `kd_kategori` varchar(6) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nm_kategori` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `active` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `create_date` datetime(0) NULL DEFAULT NULL,
  `update_date` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`kd_kategori`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ma_kategori_barang
-- ----------------------------
INSERT INTO `ma_kategori_barang` VALUES ('K00001', 'PERIPERAL', '1', '2020-04-15 15:38:06', '2020-04-15 15:38:06');
INSERT INTO `ma_kategori_barang` VALUES ('K00002', 'NETWORKING', '1', '2020-04-15 15:38:06', '2020-04-15 15:38:06');
INSERT INTO `ma_kategori_barang` VALUES ('K00003', 'CCTV', '1', '2020-04-15 15:38:06', '2020-04-15 15:38:06');
INSERT INTO `ma_kategori_barang` VALUES ('K00004', 'CABLE', '1', '2020-04-15 15:38:06', '2020-04-15 15:38:06');
INSERT INTO `ma_kategori_barang` VALUES ('K00006', 'JASA', '1', '2020-04-15 15:38:06', '2020-04-15 15:38:06');
INSERT INTO `ma_kategori_barang` VALUES ('K00007', 'POC', '1', '2020-04-15 15:38:06', '2020-04-15 15:38:06');

-- ----------------------------
-- Table structure for ma_satuan_barang
-- ----------------------------
DROP TABLE IF EXISTS `ma_satuan_barang`;
CREATE TABLE `ma_satuan_barang`  (
  `kd_satuan` varchar(6) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nm_satuan` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `active` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `create_date` datetime(0) NULL DEFAULT NULL,
  `update_date` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`kd_satuan`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ma_satuan_barang
-- ----------------------------
INSERT INTO `ma_satuan_barang` VALUES ('S00001', 'PCS', '0', '2020-04-15 15:38:06', '2020-04-15 15:38:06');
INSERT INTO `ma_satuan_barang` VALUES ('S00002', 'PACK', '1', '2020-04-15 15:38:06', '2020-04-15 15:38:06');
INSERT INTO `ma_satuan_barang` VALUES ('S00003', 'LS', '1', '2020-04-15 15:38:06', '2020-04-15 15:38:06');
INSERT INTO `ma_satuan_barang` VALUES ('S00004', 'BOX', '1', '2020-04-15 15:38:06', '2020-04-15 15:38:06');
INSERT INTO `ma_satuan_barang` VALUES ('S00005', 'UNIT', '1', '2020-04-15 15:38:06', '2020-04-15 15:38:06');
INSERT INTO `ma_satuan_barang` VALUES ('S00006', 'DUS', '1', '2020-04-15 15:38:06', '2020-04-15 15:38:06');
INSERT INTO `ma_satuan_barang` VALUES ('S00007', 'KOTAK', '1', '2020-04-15 15:38:06', '2020-04-15 15:38:06');
INSERT INTO `ma_satuan_barang` VALUES ('S00008', 'DRUM', '1', '2020-04-15 15:38:06', '2020-04-15 15:38:06');
INSERT INTO `ma_satuan_barang` VALUES ('S00009', 'KG', '1', '2020-04-15 15:38:06', '2020-04-15 15:38:06');
INSERT INTO `ma_satuan_barang` VALUES ('S00010', 'FREE', '1', '2020-04-15 15:38:06', '2020-04-15 15:38:06');

-- ----------------------------
-- Table structure for ma_supplier
-- ----------------------------
DROP TABLE IF EXISTS `ma_supplier`;
CREATE TABLE `ma_supplier`  (
  `kd_supplier` varchar(7) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nm_supplier` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `almt_supplier` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tlp_supplier` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `fax_supplier` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `atas_nama` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `active` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `create_date` datetime(0) NULL DEFAULT NULL,
  `update_date` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`kd_supplier`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ma_supplier
-- ----------------------------
INSERT INTO `ma_supplier` VALUES ('SUP0001', 'CV.ALAM PERMAI', 'Jl. Residen Abdul Rozak No. 90 Palembang', '0711-123456', '0711-654321', 'A', '1', '2020-04-15 15:38:06', '2020-04-15 15:38:06');
INSERT INTO `ma_supplier` VALUES ('SUP0002', 'CV.SDT', 'Jl. Residen Abdul Rozak No. 90 Palembang', '0711-123456', '0711-654321', 'B', '1', '2020-04-15 15:38:06', '2020-04-15 15:38:06');
INSERT INTO `ma_supplier` VALUES ('SUP0003', 'CV.CIPTA NETWORK', 'Jl. Residen Abdul Rozak No. 90 Palembang', '0711-123456', '0711-654321', 'C', '1', '2020-04-15 15:38:06', '2020-04-15 15:38:06');
INSERT INTO `ma_supplier` VALUES ('SUP0004', 'CV.ANUGRAH PRATAMA', 'Jl. Residen Abdul Rozak No. 90 Palembang', '0711-123456', '0711-654321', 'D', '0', '2020-04-15 15:38:06', '2020-04-15 15:38:06');

-- ----------------------------
-- Table structure for ma_toko
-- ----------------------------
DROP TABLE IF EXISTS `ma_toko`;
CREATE TABLE `ma_toko`  (
  `kd_toko` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nm_toko` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `almt_toko` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `kota` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tlp_toko` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `fax_toko` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `logo` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `create_date` datetime(0) NULL DEFAULT NULL,
  `update_date` datetime(0) NULL DEFAULT NULL,
  `flag_update` varchar(4) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`kd_toko`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ma_toko
-- ----------------------------
INSERT INTO `ma_toko` VALUES ('SAT001', 'AKG-YK', 'JL. ARGODADI', 'JOGJAKARTA', '234', '234', 'quiksilver-boardriders.jpg', '2020-04-15 10:37:32', '2020-04-15 10:37:35', '0');
INSERT INTO `ma_toko` VALUES ('SAT002', 'AKG-YK', 'JL. ARGODADI', 'JOGJAKARTA', '234', '234', 'banner-06-920x350.png', '2020-04-15 10:37:32', '2020-04-15 10:37:35', '1');

-- ----------------------------
-- Table structure for ma_user
-- ----------------------------
DROP TABLE IF EXISTS `ma_user`;
CREATE TABLE `ma_user`  (
  `id_user` varchar(13) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nm_lengkap` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nm_user` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `password` varchar(35) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `akses` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `active` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `create_date` datetime(0) NULL DEFAULT NULL,
  `update_date` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id_user`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ma_user
-- ----------------------------
INSERT INTO `ma_user` VALUES ('UID001', 'Superadmin', 'super', '1b3231655cebb7a1f783eddf27d254ca', 'Super', '1', '2020-04-15 13:29:06', '2020-04-15 13:29:06');
INSERT INTO `ma_user` VALUES ('UID002', 'admin', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Admin', '1', '2020-04-15 13:29:06', '2020-04-15 13:29:06');
INSERT INTO `ma_user` VALUES ('UID003', '12345678', '12345678', '25d55ad283aa400af464c76d713c07ad', 'Admin', '1', '2020-04-15 13:29:06', '2020-04-15 13:29:06');
INSERT INTO `ma_user` VALUES ('UID004', '87654321', '87654321', '5e8667a439c68f5145dd2fcbecf02209', 'Kasir', '1', '2020-04-15 13:29:06', '2020-04-15 13:29:06');

-- ----------------------------
-- Table structure for pembelian
-- ----------------------------
DROP TABLE IF EXISTS `pembelian`;
CREATE TABLE `pembelian`  (
  `id` double NOT NULL AUTO_INCREMENT,
  `no_transaksi` double NOT NULL,
  `no_faktur` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `kd_supplier` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tgl_pembelian` date NOT NULL,
  `total_pembelian` int(11) NOT NULL,
  `id_user` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `create_date` datetime(0) NULL DEFAULT NULL,
  `update_date` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for pembelian_detail
-- ----------------------------
DROP TABLE IF EXISTS `pembelian_detail`;
CREATE TABLE `pembelian_detail`  (
  `id` double NOT NULL AUTO_INCREMENT,
  `no_transaksi` double NOT NULL,
  `kd_barang` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `kd_satuan` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `jumlah` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `sub_total` int(11) NOT NULL,
  `create_date` datetime(0) NULL DEFAULT NULL,
  `update_date` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id`(`id`) USING BTREE,
  INDEX `kd_barang`(`kd_barang`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 91 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for pembelian_tmp
-- ----------------------------
DROP TABLE IF EXISTS `pembelian_tmp`;
CREATE TABLE `pembelian_tmp`  (
  `row_id` int(11) NOT NULL,
  `kd_barang` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `kd_satuan` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `jumlah` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `user_id` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `create_date` datetime(0) NULL DEFAULT NULL,
  `update_date` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`row_id`) USING BTREE,
  INDEX `row_id`(`row_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pembelian_tmp
-- ----------------------------
INSERT INTO `pembelian_tmp` VALUES (1, '00003', 'S00003', 2, 11500, 'UID007', '2020-04-15 15:38:06', '2020-04-15 15:38:06');
INSERT INTO `pembelian_tmp` VALUES (2, '00005', 'S00002', 22, 17500, 'UID007', '2020-04-15 15:38:06', '2020-04-15 15:38:06');

-- ----------------------------
-- Table structure for penjualan
-- ----------------------------
DROP TABLE IF EXISTS `penjualan`;
CREATE TABLE `penjualan`  (
  `id` double NOT NULL AUTO_INCREMENT,
  `no_transaksi` double NOT NULL,
  `no_faktur` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tgl_penjualan` date NOT NULL,
  `total_penjualan` int(11) NOT NULL,
  `user` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `create_date` datetime(0) NULL DEFAULT NULL,
  `update_date` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `no_faktur`(`no_faktur`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of penjualan
-- ----------------------------
INSERT INTO `penjualan` VALUES (13, 56, '20040900001', '2020-04-09', 28500, 'UID007', NULL, NULL);

-- ----------------------------
-- Table structure for penjualan_detail
-- ----------------------------
DROP TABLE IF EXISTS `penjualan_detail`;
CREATE TABLE `penjualan_detail`  (
  `id` double NOT NULL AUTO_INCREMENT,
  `no_transaksi` double NOT NULL,
  `kd_barang` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `jumlah` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `sub_total` int(11) NOT NULL,
  `hrg_pokok` int(11) NOT NULL,
  `create_date` datetime(0) NULL DEFAULT NULL,
  `update_date` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of penjualan_detail
-- ----------------------------
INSERT INTO `penjualan_detail` VALUES (31, 56, '00001', 1, 28500, 28500, 0, '2020-04-15 15:38:06', '2020-04-15 15:38:06');

-- ----------------------------
-- Table structure for penjualan_tmp
-- ----------------------------
DROP TABLE IF EXISTS `penjualan_tmp`;
CREATE TABLE `penjualan_tmp`  (
  `id` double NOT NULL,
  `no_faktur` double NOT NULL,
  `kd_barang` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `jumlah` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `sub_total` int(11) NOT NULL,
  `hrg_pokok` int(11) NOT NULL,
  `user` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `create_date` datetime(0) NULL DEFAULT NULL,
  `update_date` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `no_faktur`(`no_faktur`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for stock_barang
-- ----------------------------
DROP TABLE IF EXISTS `stock_barang`;
CREATE TABLE `stock_barang`  (
  `id` int(11) NOT NULL,
  `kd_barang` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `jumlah` int(11) NOT NULL,
  `hrg_beli_rata2` float NOT NULL,
  `create_date` datetime(0) NULL DEFAULT NULL,
  `update_date` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `kd_barang`(`kd_barang`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for trans_ctr
-- ----------------------------
DROP TABLE IF EXISTS `trans_ctr`;
CREATE TABLE `trans_ctr`  (
  `id` double NOT NULL,
  `counter` double NOT NULL,
  `stat` varchar(3) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `user` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `create_date` datetime(0) NULL DEFAULT NULL,
  `update_date` datetime(0) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of trans_ctr
-- ----------------------------
INSERT INTO `trans_ctr` VALUES (1, 56, 'O', 'hhalat', '2020-04-15 15:38:06', '2020-04-15 15:38:06');

SET FOREIGN_KEY_CHECKS = 1;
