/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 100428
 Source Host           : localhost:3306
 Source Schema         : web

 Target Server Type    : MySQL
 Target Server Version : 100428
 File Encoding         : 65001

 Date: 08/09/2024 18:43:18
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tb_activity
-- ----------------------------
DROP TABLE IF EXISTS `tb_activity`;
CREATE TABLE `tb_activity`  (
  `id_activity` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NULL DEFAULT NULL,
  `activity` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `timestamp` datetime(0) NULL DEFAULT NULL,
  `delete_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id_activity`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5309 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_activity
-- ----------------------------
INSERT INTO `tb_activity` VALUES (4537, 1, 'User melakukan Penghapusan seluruh data activity', '2024-09-08 03:10:03', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4538, 1, 'User membuka Log Activity', '2024-09-08 03:10:03', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4539, 1, 'User membuka Dashboard', '2024-09-08 03:10:28', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4540, 1, 'User membuka Dashboard', '2024-09-08 03:12:00', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4541, 1, 'User membuka Dashboard', '2024-09-08 03:12:07', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4542, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 03:12:16', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4543, 1, 'User membuka Form Penambahan Data Lowongan Kerja', '2024-09-08 03:12:32', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4544, 1, 'User melakukan Penambahan Data Lowongan Kerja', '2024-09-08 03:12:40', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4545, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 03:12:41', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4546, 1, 'User membuka Dashboard', '2024-09-08 03:12:44', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4547, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 03:12:45', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4548, 1, 'User melakukan Penghapusan Data lowongan kerja', '2024-09-08 03:12:47', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4549, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 03:12:47', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4550, 1, 'User membuka Dashboard', '2024-09-08 03:12:48', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4551, 1, 'User membuka Dashboard', '2024-09-08 03:13:14', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4552, 1, 'User membuka halaman alumni', '2024-09-08 03:13:16', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4553, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 03:13:17', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4554, 1, 'User membuka halaman alumni', '2024-09-08 03:13:19', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4555, 1, 'User membuka Dashboard', '2024-09-08 03:13:30', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4556, 1, 'User membuka Dashboard', '2024-09-08 03:13:45', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4557, 1, 'User membuka Dashboard', '2024-09-08 03:13:48', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4558, 1, 'User membuka Dashboard', '2024-09-08 03:15:21', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4559, 1, 'User membuka Dashboard', '2024-09-08 03:16:04', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4560, 1, 'User membuka Dashboard', '2024-09-08 03:16:33', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4561, 1, 'User membuka Dashboard', '2024-09-08 03:16:53', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4562, 1, 'User membuka halaman alumni', '2024-09-08 03:17:33', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4563, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 03:17:39', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4564, 1, 'User membuka view Laporan', '2024-09-08 03:18:01', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4565, 1, 'User membuka halaman alumni', '2024-09-08 03:18:04', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4566, 1, 'User membuka Dashboard', '2024-09-08 03:18:08', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4567, 1, 'User membuka halaman alumni', '2024-09-08 03:18:10', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4568, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 03:18:11', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4569, 1, 'User membuka halaman Setting', '2024-09-08 03:18:15', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4570, 1, 'User membuka Log Activity', '2024-09-08 03:18:19', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4571, 1, 'User membuka view User', '2024-09-08 03:18:23', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4572, 1, 'User membuka view User', '2024-09-08 03:18:27', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4573, 1, 'User membuka view Laporan', '2024-09-08 03:18:28', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4574, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 03:18:30', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4575, 1, 'User membuka Dashboard', '2024-09-08 03:18:43', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4576, 1, 'User membuka halaman alumni', '2024-09-08 03:19:34', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4577, 1, 'User membuka Dashboard', '2024-09-08 03:19:36', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4578, 1, 'User membuka halaman alumni', '2024-09-08 03:19:40', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4579, 1, 'User membuka Dashboard', '2024-09-08 03:19:48', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4580, 1, 'User membuka halaman alumni', '2024-09-08 03:19:58', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4581, 1, 'User membuka Dashboard', '2024-09-08 03:20:00', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4582, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 03:23:02', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4583, 1, 'User melakukan logout', '2024-09-08 03:23:07', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4584, 2, 'User membuka Dashboard', '2024-09-08 03:23:13', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4585, 2, 'User membuka halaman alumni', '2024-09-08 03:23:15', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4586, 2, 'User membuka Dashboard', '2024-09-08 03:23:15', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4587, 2, 'User membuka halaman alumni', '2024-09-08 03:23:18', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4588, 2, 'User membuka halaman Lowongan kerja', '2024-09-08 03:23:20', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4589, 2, 'User membuka Dashboard', '2024-09-08 03:23:21', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4590, 2, 'User membuka halaman Lowongan kerja', '2024-09-08 03:23:27', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4591, 2, 'User membuka view Laporan', '2024-09-08 03:23:37', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4592, 2, 'User membuka Log Activity', '2024-09-08 03:23:40', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4593, 2, 'User melakukan logout', '2024-09-08 03:23:42', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4594, 4, 'User membuka Dashboard', '2024-09-08 03:23:48', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4595, 4, 'User masuk ke profile', '2024-09-08 03:23:51', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4596, 4, 'User membuka Dashboard', '2024-09-08 03:23:53', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4597, 4, 'User membuka halaman alumni', '2024-09-08 03:23:54', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4598, 4, 'User membuka halaman Lowongan kerja', '2024-09-08 03:23:58', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4599, 4, 'User membuka Dashboard', '2024-09-08 03:24:01', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4600, 4, 'User melakukan logout', '2024-09-08 03:24:04', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4601, 26, 'User membuka Dashboard', '2024-09-08 03:24:30', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4602, 26, 'User membuka halaman alumni', '2024-09-08 03:24:33', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4603, 26, 'User membuka Form Penambahan Data alumni', '2024-09-08 03:24:35', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4604, 26, 'User membuka halaman Lowongan kerja', '2024-09-08 03:24:43', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4605, 26, 'User masuk ke profile', '2024-09-08 03:24:48', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4606, 26, 'User membuka halaman Lowongan kerja', '2024-09-08 03:25:04', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4607, 26, 'User masuk ke profile', '2024-09-08 03:25:08', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4608, 26, 'User membuka halaman Lowongan kerja', '2024-09-08 03:25:12', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4609, 26, 'User membuka halaman Lowongan kerja', '2024-09-08 03:25:20', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4610, 26, 'User membuka halaman alumni', '2024-09-08 03:25:24', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4611, 26, 'User membuka Form Penambahan Data alumni', '2024-09-08 03:25:27', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4612, 26, 'User melakukan Penambahan Data alumni', '2024-09-08 03:28:15', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4613, 26, 'User membuka halaman alumni', '2024-09-08 03:28:15', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4614, 26, 'User membuka halaman alumni', '2024-09-08 03:29:22', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4615, 26, 'User membuka Dashboard', '2024-09-08 03:30:06', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4616, 26, 'User membuka halaman Lowongan kerja', '2024-09-08 03:30:07', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4617, 26, 'User membuka halaman alumni', '2024-09-08 03:30:09', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4618, 26, 'User membuka Form Penambahan Data alumni', '2024-09-08 03:30:12', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4619, 26, 'User membuka halaman alumni', '2024-09-08 03:31:06', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4620, 26, 'User membuka halaman Lowongan kerja', '2024-09-08 03:31:21', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4621, 26, 'User membuka halaman alumni', '2024-09-08 03:31:24', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4622, 26, 'User membuka Form Penambahan Data alumni', '2024-09-08 03:31:30', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4623, 26, 'User membuka halaman alumni', '2024-09-08 03:31:35', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4624, 26, 'User membuka Form Penambahan Data alumni', '2024-09-08 03:31:49', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4625, 26, 'User membuka halaman alumni', '2024-09-08 03:31:51', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4626, 26, 'User membuka Form Penambahan Data alumni', '2024-09-08 03:31:55', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4627, 26, 'User membuka halaman alumni', '2024-09-08 03:31:57', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4628, 26, 'User membuka Form Penambahan Data alumni', '2024-09-08 03:32:15', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4629, 26, 'User membuka halaman alumni', '2024-09-08 03:32:17', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4630, 26, 'User membuka halaman alumni', '2024-09-08 03:33:03', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4631, 26, 'User membuka Form Penambahan Data alumni', '2024-09-08 03:33:05', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4632, 26, 'User membuka halaman alumni', '2024-09-08 03:33:17', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4633, 26, 'User membuka halaman alumni', '2024-09-08 03:33:21', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4634, 26, 'User membuka Form Penambahan Data alumni', '2024-09-08 03:33:24', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4635, 26, 'User membuka halaman alumni', '2024-09-08 03:33:26', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4636, 26, 'User membuka halaman alumni', '2024-09-08 03:34:00', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4637, 26, 'User membuka Dashboard', '2024-09-08 03:34:01', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4638, 26, 'User membuka halaman alumni', '2024-09-08 03:34:02', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4639, 26, 'User membuka Form Penambahan Data alumni', '2024-09-08 03:34:03', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4640, 26, 'User membuka halaman alumni', '2024-09-08 03:34:06', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4641, 26, 'User membuka halaman Lowongan kerja', '2024-09-08 03:34:06', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4642, 26, 'User membuka Dashboard', '2024-09-08 03:34:10', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4643, 26, 'User membuka halaman alumni', '2024-09-08 03:34:38', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4644, 26, 'User membuka Form Penambahan Data alumni', '2024-09-08 03:34:39', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4645, 26, 'User membuka Form Penambahan Data alumni', '2024-09-08 03:34:46', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4646, 26, 'User membuka halaman alumni', '2024-09-08 03:35:01', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4647, 26, 'User membuka Form Penambahan Data alumni', '2024-09-08 03:35:21', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4648, 26, 'User membuka Form Penambahan Data alumni', '2024-09-08 03:35:27', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4649, 26, 'User membuka halaman alumni', '2024-09-08 03:35:28', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4650, 26, 'User masuk ke profile', '2024-09-08 03:35:37', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4651, 26, 'User membuka halaman alumni', '2024-09-08 03:36:18', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4652, 26, 'User membuka halaman alumni', '2024-09-08 03:36:27', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4653, 26, 'User membuka Form Penambahan Data alumni', '2024-09-08 03:36:29', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4654, 26, 'User membuka halaman alumni', '2024-09-08 03:36:58', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4655, 26, 'User membuka Form Penambahan Data alumni', '2024-09-08 03:36:59', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4656, 26, 'User membuka halaman alumni', '2024-09-08 03:37:41', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4657, 26, 'User membuka Form Penambahan Data alumni', '2024-09-08 03:37:43', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4658, 26, 'User melakukan Penambahan Data alumni', '2024-09-08 03:37:52', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4659, 26, 'User membuka halaman alumni', '2024-09-08 03:37:52', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4660, 26, 'User membuka Form Penambahan Data alumni', '2024-09-08 03:37:55', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4661, 26, 'User melakukan Penambahan Data alumni', '2024-09-08 03:38:03', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4662, 26, 'User membuka halaman alumni', '2024-09-08 03:38:03', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4663, 26, 'User membuka halaman alumni', '2024-09-08 03:38:23', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4664, 26, 'User membuka Form Penambahan Data alumni', '2024-09-08 03:38:25', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4665, 26, 'User membuka Form Penambahan Data alumni', '2024-09-08 03:38:42', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4666, 26, 'User membuka Form Penambahan Data alumni', '2024-09-08 03:38:48', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4667, 26, 'User melakukan Penambahan Data alumni', '2024-09-08 03:39:06', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4668, 26, 'User membuka halaman alumni', '2024-09-08 03:39:06', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4669, 26, 'User membuka Form Penambahan Data alumni', '2024-09-08 03:39:21', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4670, 26, 'User membuka Form Penambahan Data alumni', '2024-09-08 03:39:32', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4671, 26, 'User membuka Form Penambahan Data alumni', '2024-09-08 03:39:56', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4672, 26, 'User membuka Form Penambahan Data alumni', '2024-09-08 03:40:13', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4673, 26, 'User membuka Form Penambahan Data alumni', '2024-09-08 03:40:24', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4674, 26, 'User membuka Dashboard', '2024-09-08 03:40:27', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4675, 26, 'User membuka halaman alumni', '2024-09-08 03:40:28', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4676, 26, 'User membuka Dashboard', '2024-09-08 03:40:30', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4677, 26, 'User membuka halaman alumni', '2024-09-08 03:40:32', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4678, 26, 'User membuka Form Penambahan Data alumni', '2024-09-08 03:40:33', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4679, 26, 'User membuka Form Penambahan Data alumni', '2024-09-08 03:40:39', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4680, 26, 'User membuka Dashboard', '2024-09-08 03:40:42', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4681, 26, 'User membuka halaman alumni', '2024-09-08 03:40:42', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4682, 26, 'User membuka Form Penambahan Data alumni', '2024-09-08 03:40:44', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4683, 26, 'User melakukan Penambahan Data alumni', '2024-09-08 03:40:54', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4684, 26, 'User membuka halaman alumni', '2024-09-08 03:40:54', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4685, 26, 'User membuka halaman alumni', '2024-09-08 03:41:44', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4686, 26, 'User membuka Form Penambahan Data alumni', '2024-09-08 03:41:47', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4687, 26, 'User membuka halaman alumni', '2024-09-08 03:43:20', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4688, 26, 'User membuka Dashboard', '2024-09-08 03:43:22', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4689, 26, 'User membuka Dashboard', '2024-09-08 03:43:24', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4690, 26, 'User membuka halaman alumni', '2024-09-08 03:43:24', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4691, 26, 'User membuka halaman Lowongan kerja', '2024-09-08 03:43:27', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4692, 26, 'User membuka halaman alumni', '2024-09-08 03:43:31', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4693, 26, 'User masuk ke profile', '2024-09-08 03:43:40', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4694, 26, 'User membuka halaman alumni', '2024-09-08 03:43:42', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4695, 26, 'User melakukan logout', '2024-09-08 03:43:43', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4696, 1, 'User membuka Dashboard', '2024-09-08 03:43:51', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4697, 1, 'User membuka halaman alumni', '2024-09-08 03:43:52', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4698, 1, 'User membuka halaman alumni', '2024-09-08 03:44:12', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4699, 1, 'User membuka Form Penambahan Data alumni', '2024-09-08 03:44:13', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4700, 1, 'User membuka halaman alumni', '2024-09-08 03:44:16', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4701, 1, 'User membuka Form Penambahan Data alumni', '2024-09-08 03:44:17', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4702, 1, 'User membuka halaman alumni', '2024-09-08 03:44:30', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4703, 1, 'User membuka Form Penambahan Data alumni', '2024-09-08 03:44:45', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4704, 1, 'User membuka Form Penambahan Data alumni', '2024-09-08 03:44:51', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4705, 1, 'User membuka Form Penambahan Data alumni', '2024-09-08 03:44:55', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4706, 1, 'User membuka halaman alumni', '2024-09-08 03:45:02', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4707, 1, 'User membuka halaman alumni', '2024-09-08 03:45:48', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4708, 1, 'User membuka Form Penambahan Data alumni', '2024-09-08 03:45:50', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4709, 1, 'User melakukan Penambahan Data alumni', '2024-09-08 03:46:02', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4710, 1, 'User membuka halaman alumni', '2024-09-08 03:46:02', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4711, 1, 'User melakukan Penghapusan data alumni', '2024-09-08 03:46:08', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4712, 1, 'User membuka halaman alumni', '2024-09-08 03:46:08', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4713, 1, 'User membuka Form Penambahan Data alumni', '2024-09-08 03:46:10', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4714, 1, 'User melakukan Penambahan Data alumni', '2024-09-08 03:46:19', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4715, 1, 'User membuka halaman alumni', '2024-09-08 03:46:19', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4716, 1, 'User melakukan Penghapusan data alumni', '2024-09-08 03:46:32', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4717, 1, 'User membuka halaman alumni', '2024-09-08 03:46:32', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4718, 1, 'User membuka Form Penambahan Data alumni', '2024-09-08 03:46:34', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4719, 1, 'User melakukan Penambahan Data alumni', '2024-09-08 03:46:43', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4720, 1, 'User membuka halaman alumni', '2024-09-08 03:46:44', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4721, 1, 'User membuka halaman alumni', '2024-09-08 03:47:17', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4722, 1, 'User melakukan Penghapusan data alumni', '2024-09-08 03:47:19', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4723, 1, 'User membuka halaman alumni', '2024-09-08 03:47:20', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4724, 1, 'User membuka halaman alumni', '2024-09-08 03:47:32', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4725, 1, 'User membuka halaman alumni', '2024-09-08 03:47:38', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4726, 1, 'User membuka halaman alumni', '2024-09-08 03:47:43', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4727, 1, 'User membuka Dashboard', '2024-09-08 03:47:45', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4728, 1, 'User membuka halaman alumni', '2024-09-08 03:47:46', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4729, 1, 'User melakukan Pengeditan Data Alumni', '2024-09-08 03:47:57', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4730, 1, 'User membuka halaman alumni', '2024-09-08 03:47:57', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4731, 1, 'User melakukan Pengeditan Data Alumni', '2024-09-08 03:48:04', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4732, 1, 'User membuka halaman alumni', '2024-09-08 03:48:05', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4733, 1, 'User membuka halaman alumni', '2024-09-08 03:48:15', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4734, 1, 'User membuka Form Penambahan Data alumni', '2024-09-08 03:48:23', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4735, 1, 'User melakukan Penambahan Data alumni', '2024-09-08 03:48:31', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4736, 1, 'User membuka halaman alumni', '2024-09-08 03:48:32', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4737, 1, 'User melakukan Penghapusan data alumni', '2024-09-08 03:48:40', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4738, 1, 'User membuka halaman alumni', '2024-09-08 03:48:41', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4739, 1, 'User membuka halaman alumni', '2024-09-08 03:49:26', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4740, 1, 'User melakukan Pengeditan Data Alumni', '2024-09-08 03:49:40', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4741, 1, 'User membuka halaman alumni', '2024-09-08 03:49:41', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4742, 1, 'User melakukan Pengeditan Data Alumni', '2024-09-08 03:49:59', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4743, 1, 'User membuka halaman alumni', '2024-09-08 03:49:59', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4744, 1, 'User membuka Form Penambahan Data alumni', '2024-09-08 03:50:16', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4745, 1, 'User melakukan Penambahan Data alumni', '2024-09-08 03:50:24', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4746, 1, 'User membuka halaman alumni', '2024-09-08 03:50:25', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4747, 1, 'User membuka halaman alumni', '2024-09-08 03:50:47', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4748, 1, 'User melakukan Penghapusan data alumni', '2024-09-08 03:50:50', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4749, 1, 'User membuka halaman alumni', '2024-09-08 03:50:50', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4750, 1, 'User membuka Form Penambahan Data alumni', '2024-09-08 03:50:53', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4751, 1, 'User membuka Form Penambahan Data alumni', '2024-09-08 03:52:01', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4752, 1, 'User membuka halaman alumni', '2024-09-08 03:52:04', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4753, 1, 'User membuka Form Penambahan Data alumni', '2024-09-08 03:52:39', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4754, 1, 'User membuka Form Penambahan Data alumni', '2024-09-08 03:52:46', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4755, 1, 'User membuka Form Penambahan Data alumni', '2024-09-08 03:52:55', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4756, 1, 'User membuka Form Penambahan Data alumni', '2024-09-08 03:53:18', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4757, 1, 'User membuka Form Penambahan Data alumni', '2024-09-08 03:53:31', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4758, 1, 'User membuka halaman alumni', '2024-09-08 03:53:34', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4759, 1, 'User membuka Form Penambahan Data alumni', '2024-09-08 03:53:36', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4760, 1, 'User membuka Form Penambahan Data alumni', '2024-09-08 03:54:22', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4761, 1, 'User membuka halaman alumni', '2024-09-08 03:54:23', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4762, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 03:54:25', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4763, 1, 'User membuka view User', '2024-09-08 03:54:26', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4764, 1, 'User membuka halaman alumni', '2024-09-08 03:54:27', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4765, 1, 'User membuka Form Penambahan Data alumni', '2024-09-08 03:54:29', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4766, 1, 'User melakukan Penambahan Data alumni', '2024-09-08 03:54:39', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4767, 1, 'User membuka halaman alumni', '2024-09-08 03:54:40', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4768, 1, 'User melakukan Penghapusan data alumni', '2024-09-08 03:54:46', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4769, 1, 'User membuka halaman alumni', '2024-09-08 03:54:46', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4770, 1, 'User membuka halaman alumni', '2024-09-08 03:54:58', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4771, 1, 'User membuka Form Penambahan Data alumni', '2024-09-08 03:55:00', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4772, 1, 'User melakukan Penambahan Data alumni', '2024-09-08 03:55:10', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4773, 1, 'User membuka halaman alumni', '2024-09-08 03:55:11', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4774, 1, 'User melakukan Pengeditan Data Alumni', '2024-09-08 03:55:19', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4775, 1, 'User membuka halaman alumni', '2024-09-08 03:55:19', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4776, 1, 'User melakukan Penghapusan data alumni', '2024-09-08 03:55:34', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4777, 1, 'User membuka halaman alumni', '2024-09-08 03:55:34', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4778, 1, 'User membuka Form Penambahan Data alumni', '2024-09-08 03:55:36', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4779, 1, 'User melakukan Penambahan Data alumni', '2024-09-08 03:55:43', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4780, 1, 'User membuka halaman alumni', '2024-09-08 03:55:44', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4781, 1, 'User melakukan Penghapusan data alumni', '2024-09-08 03:55:50', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4782, 1, 'User membuka halaman alumni', '2024-09-08 03:55:51', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4783, 1, 'User membuka Form Penambahan Data alumni', '2024-09-08 03:55:56', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4784, 1, 'User membuka Form Penambahan Data alumni', '2024-09-08 03:56:08', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4785, 1, 'User membuka halaman alumni', '2024-09-08 03:56:18', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4786, 1, 'User membuka Form Penambahan Data alumni', '2024-09-08 03:56:22', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4787, 1, 'User membuka halaman alumni', '2024-09-08 03:56:27', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4788, 1, 'User membuka Form Penambahan Data alumni', '2024-09-08 03:56:39', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4789, 1, 'User membuka halaman alumni', '2024-09-08 03:56:46', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4790, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 03:56:47', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4791, 1, 'User membuka view User', '2024-09-08 03:56:49', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4792, 1, 'User membuka Form Penambahan Data User', '2024-09-08 03:56:50', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4793, 1, 'User membuka Form Penambahan Data User', '2024-09-08 03:57:24', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4794, 1, 'User membuka Form Penambahan Data User', '2024-09-08 03:57:45', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4795, 1, 'User membuka halaman alumni', '2024-09-08 03:57:48', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4796, 1, 'User membuka Form Penambahan Data alumni', '2024-09-08 03:57:49', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4797, 1, 'User membuka halaman alumni', '2024-09-08 03:57:53', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4798, 1, 'User membuka halaman alumni', '2024-09-08 03:58:14', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4799, 1, 'User membuka Form Penambahan Data alumni', '2024-09-08 03:58:15', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4800, 1, 'User membuka Form Penambahan Data alumni', '2024-09-08 03:58:50', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4801, 1, 'User membuka Form Penambahan Data alumni', '2024-09-08 03:58:55', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4802, 1, 'User membuka Form Penambahan Data alumni', '2024-09-08 03:59:02', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4803, 1, 'User membuka Form Penambahan Data alumni', '2024-09-08 03:59:06', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4804, 1, 'User membuka halaman alumni', '2024-09-08 03:59:23', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4805, 1, 'User membuka Form Penambahan Data alumni', '2024-09-08 04:00:12', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4806, 1, 'User membuka halaman alumni', '2024-09-08 04:00:14', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4807, 1, 'User membuka halaman alumni', '2024-09-08 04:00:33', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4808, 1, 'User melakukan logout', '2024-09-08 04:00:37', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4809, 4, 'User membuka Dashboard', '2024-09-08 04:00:41', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4810, 4, 'User membuka halaman alumni', '2024-09-08 04:00:43', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4811, 4, 'User membuka Form Penambahan Data alumni', '2024-09-08 04:00:44', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4812, 4, 'User membuka halaman alumni', '2024-09-08 04:00:46', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4813, 4, 'User membuka Dashboard', '2024-09-08 04:00:52', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4814, 4, 'User membuka halaman alumni', '2024-09-08 04:01:04', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4815, 4, 'User membuka halaman Lowongan kerja', '2024-09-08 04:01:06', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4816, 4, 'User membuka halaman alumni', '2024-09-08 04:01:08', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4817, 4, 'User membuka halaman Lowongan kerja', '2024-09-08 04:01:10', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4818, 4, 'User masuk ke profile', '2024-09-08 04:01:12', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4819, 4, 'User membuka halaman Lowongan kerja', '2024-09-08 04:01:13', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4820, 4, 'User melakukan logout', '2024-09-08 04:01:15', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4821, 1, 'User membuka Dashboard', '2024-09-08 04:01:22', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4822, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 04:01:24', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4823, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 04:01:49', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4824, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 04:01:54', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4825, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 04:05:14', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4826, 1, 'User membuka halaman Lamaran', '2024-09-08 04:05:16', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4827, 1, 'User membuka halaman Lamaran', '2024-09-08 04:05:21', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4828, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 04:05:50', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4829, 1, 'User membuka halaman Lamaran', '2024-09-08 04:05:51', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4830, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 04:05:54', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4831, 1, 'User membuka halaman alumni', '2024-09-08 04:09:04', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4832, 1, 'User membuka view User', '2024-09-08 04:09:07', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4833, 1, 'User membuka halaman alumni', '2024-09-08 04:09:31', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4834, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 04:09:38', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4835, 1, 'User membuka view User', '2024-09-08 04:09:41', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4836, 1, 'User membuka view User', '2024-09-08 04:11:19', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4837, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 04:11:20', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4838, 1, 'User membuka view Laporan', '2024-09-08 04:11:23', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4839, 1, 'User membuka halaman Lamaran', '2024-09-08 04:11:24', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4840, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 04:11:25', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4841, 1, 'User membuka Dashboard', '2024-09-08 04:12:07', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4842, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 04:12:08', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4843, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 04:13:35', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4844, 1, 'User membuka halaman Lamaran', '2024-09-08 04:13:36', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4845, 1, 'User membuka halaman Lamaran', '2024-09-08 04:14:06', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4846, 1, 'User membuka view User', '2024-09-08 04:14:10', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4847, 1, 'User membuka halaman Lamaran', '2024-09-08 04:14:11', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4848, 1, 'User membuka halaman Lamaran', '2024-09-08 04:14:29', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4849, 1, 'User membuka halaman Lamaran', '2024-09-08 04:14:35', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4850, 1, 'User membuka halaman Lamaran', '2024-09-08 04:15:09', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4851, 1, 'User membuka view User', '2024-09-08 04:15:12', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4852, 1, 'User membuka halaman alumni', '2024-09-08 04:15:13', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4853, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 04:15:16', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4854, 1, 'User membuka view User', '2024-09-08 04:15:17', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4855, 1, 'User membuka halaman Lamaran', '2024-09-08 04:15:34', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4856, 1, 'User membuka halaman Lamaran', '2024-09-08 04:16:24', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4857, 1, 'User membuka halaman Lamaran', '2024-09-08 04:17:29', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4858, 1, 'User membuka halaman Lamaran', '2024-09-08 04:17:49', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4859, 1, 'User membuka halaman Lamaran', '2024-09-08 04:17:57', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4860, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 04:18:18', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4861, 1, 'User membuka halaman Lamaran', '2024-09-08 04:18:20', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4862, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 04:18:23', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4863, 1, 'User membuka halaman alumni', '2024-09-08 04:18:27', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4864, 1, 'User membuka halaman alumni', '2024-09-08 04:19:03', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4865, 1, 'User membuka Form Penambahan Data alumni', '2024-09-08 04:19:05', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4866, 1, 'User membuka halaman alumni', '2024-09-08 04:19:08', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4867, 1, 'User membuka halaman Lamaran', '2024-09-08 04:19:17', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4868, 1, 'User membuka halaman Lamaran', '2024-09-08 04:19:41', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4869, 1, 'User membuka halaman Lamaran', '2024-09-08 04:20:17', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4870, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 04:20:18', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4871, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 04:20:21', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4872, 1, 'User membuka Form Penambahan Data Lowongan Kerja', '2024-09-08 04:20:43', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4873, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 04:20:44', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4874, 1, 'User membuka Form Penambahan Data Lowongan Kerja', '2024-09-08 04:20:46', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4875, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 04:20:50', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4876, 1, 'User membuka halaman alumni', '2024-09-08 04:20:51', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4877, 1, 'User membuka Form Penambahan Data alumni', '2024-09-08 04:20:53', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4878, 1, 'User membuka halaman alumni', '2024-09-08 04:20:57', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4879, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 04:20:58', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4880, 1, 'User membuka halaman Lamaran', '2024-09-08 04:21:32', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4881, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 04:21:36', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4882, 1, 'User membuka halaman alumni', '2024-09-08 04:21:53', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4883, 1, 'User membuka Form Penambahan Data alumni', '2024-09-08 04:21:55', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4884, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 04:25:34', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4885, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 04:26:13', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4886, 1, 'User membuka halaman alumni', '2024-09-08 04:26:37', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4887, 1, 'User membuka Form Penambahan Data alumni', '2024-09-08 04:26:38', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4888, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 04:26:40', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4889, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 04:26:57', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4890, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 04:30:54', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4891, 1, 'User membuka Form Pendaftaran Lowongan Kerja', '2024-09-08 04:30:55', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4892, 1, 'User Mendaftar Lowongan Kerja', '2024-09-08 04:32:57', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4893, 1, 'User membuka Form Pendaftaran Lowongan Kerja', '2024-09-08 04:33:04', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4894, 1, 'User membuka halaman alumni', '2024-09-08 04:33:07', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4895, 1, 'User membuka halaman Lamaran', '2024-09-08 04:33:09', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4896, 1, 'User membuka halaman alumni', '2024-09-08 04:33:12', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4897, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 04:33:15', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4898, 1, 'User membuka Form Pendaftaran Lowongan Kerja', '2024-09-08 04:33:21', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4899, 1, 'User Mendaftar Lowongan Kerja', '2024-09-08 04:33:39', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4900, 1, 'User membuka Form Pendaftaran Lowongan Kerja', '2024-09-08 04:37:21', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4901, 1, 'User mendaftar lowongan kerja', '2024-09-08 04:37:24', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4902, 1, 'User membuka halaman Lamaran', '2024-09-08 04:37:24', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4903, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 04:37:32', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4904, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 04:38:14', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4905, 1, 'User membuka Form Pendaftaran Lowongan Kerja', '2024-09-08 04:38:16', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4906, 1, 'User mendaftar lowongan kerja', '2024-09-08 04:38:37', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4907, 1, 'User membuka halaman Lamaran', '2024-09-08 04:38:37', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4908, 1, 'User membuka halaman Lamaran', '2024-09-08 04:38:40', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4909, 1, 'User membuka halaman alumni', '2024-09-08 04:39:15', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4910, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 04:39:16', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4911, 1, 'User membuka Form Pendaftaran Lowongan Kerja', '2024-09-08 04:39:19', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4912, 1, 'User membuka halaman alumni', '2024-09-08 04:40:17', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4913, 1, 'User membuka halaman Lamaran', '2024-09-08 04:40:19', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4914, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 04:40:53', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4915, 1, 'User membuka Form Pendaftaran Lowongan Kerja', '2024-09-08 04:40:55', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4916, 1, 'User mendaftar lowongan kerja', '2024-09-08 04:41:19', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4917, 1, 'User membuka halaman Lamaran', '2024-09-08 04:41:20', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4918, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 04:41:22', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4919, 1, 'User membuka halaman alumni', '2024-09-08 04:43:00', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4920, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 04:43:06', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4921, 1, 'User membuka view Laporan', '2024-09-08 04:43:10', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4922, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 04:43:11', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4923, 1, 'User membuka Form Pendaftaran Lowongan Kerja', '2024-09-08 04:43:14', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4924, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 04:43:18', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4925, 1, 'User membuka halaman Lamaran', '2024-09-08 04:43:20', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4926, 1, 'User membuka Dashboard', '2024-09-08 04:43:27', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4927, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 04:43:51', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4928, 1, 'User membuka Dashboard', '2024-09-08 04:43:53', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4929, 1, 'User membuka halaman alumni', '2024-09-08 04:43:54', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4930, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 04:43:58', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4931, 1, 'User membuka view Laporan', '2024-09-08 04:44:03', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4932, 1, 'User membuka halaman Lamaran', '2024-09-08 04:44:05', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4933, 1, 'User membuka halaman alumni', '2024-09-08 04:44:16', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4934, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 04:44:17', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4935, 1, 'User membuka view Laporan', '2024-09-08 04:44:19', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4936, 1, 'User membuka halaman Lamaran', '2024-09-08 04:44:26', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4937, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 04:44:29', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4938, 1, 'User membuka halaman Lamaran', '2024-09-08 04:44:31', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4939, 1, 'User membuka view User', '2024-09-08 04:44:35', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4940, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 04:44:37', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4941, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 04:45:06', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4942, 1, 'User membuka Form Pendaftaran Lowongan Kerja', '2024-09-08 04:45:08', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4943, 1, 'User mendaftar lowongan kerja', '2024-09-08 04:45:26', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4944, 1, 'User membuka halaman Lamaran', '2024-09-08 04:45:26', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4945, 1, 'User membuka halaman Lamaran', '2024-09-08 04:48:12', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4946, 1, 'User melakukan Pengeditan Data Lamaran', '2024-09-08 04:48:27', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4947, 1, 'User membuka halaman Lamaran', '2024-09-08 04:48:27', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4948, 1, 'User melakukan Penghapusan Data Lamaran', '2024-09-08 04:48:30', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4949, 1, 'User membuka view User', '2024-09-08 04:48:30', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4950, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 04:48:36', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4951, 1, 'User membuka halaman Lamaran', '2024-09-08 04:48:37', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4952, 1, 'User membuka halaman Lamaran', '2024-09-08 04:50:35', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4953, 1, 'User melakukan Pengeditan Data Lamaran', '2024-09-08 04:50:38', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4954, 1, 'User membuka halaman Lamaran', '2024-09-08 04:50:39', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4955, 1, 'User melakukan Pengeditan Data Lamaran', '2024-09-08 04:50:44', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4956, 1, 'User membuka halaman Lamaran', '2024-09-08 04:50:45', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4957, 1, 'User melakukan Pengeditan Data Lamaran', '2024-09-08 04:50:49', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4958, 1, 'User membuka halaman Lamaran', '2024-09-08 04:50:49', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4959, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 04:50:55', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4960, 1, 'User membuka Form Pendaftaran Lowongan Kerja', '2024-09-08 04:51:01', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4961, 1, 'User mendaftar lowongan kerja', '2024-09-08 04:51:20', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4962, 1, 'User membuka halaman Lamaran', '2024-09-08 04:51:20', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4963, 1, 'User melakukan Penghapusan Data Lamaran', '2024-09-08 04:51:25', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4964, 1, 'User membuka halaman Lamaran', '2024-09-08 04:51:26', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4965, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 04:51:28', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4966, 1, 'User membuka Form Pendaftaran Lowongan Kerja', '2024-09-08 04:51:29', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4967, 1, 'User membuka Form Pendaftaran Lowongan Kerja', '2024-09-08 04:51:40', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4968, 1, 'User membuka Form Pendaftaran Lowongan Kerja', '2024-09-08 04:51:48', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4969, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 04:51:50', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4970, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 04:54:23', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4971, 1, 'User membuka Form Pendaftaran Lowongan Kerja', '2024-09-08 04:54:24', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4972, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 04:54:27', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4973, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 04:56:06', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4974, 1, 'User membuka Form Pendaftaran Lowongan Kerja', '2024-09-08 04:56:07', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4975, 1, 'User membuka Form Pendaftaran Lowongan Kerja', '2024-09-08 04:56:23', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4976, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 04:56:37', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4977, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 04:57:38', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4978, 1, 'User membuka Form Pendaftaran Lowongan Kerja', '2024-09-08 04:57:39', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4979, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 04:57:43', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4980, 1, 'User membuka halaman alumni', '2024-09-08 04:57:45', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4981, 1, 'User membuka view User', '2024-09-08 04:57:47', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4982, 1, 'User membuka Form Penambahan Data User', '2024-09-08 04:57:48', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4983, 1, 'User membuka halaman alumni', '2024-09-08 04:57:51', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4984, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 04:57:52', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4985, 1, 'User membuka Form Pendaftaran Lowongan Kerja', '2024-09-08 04:57:54', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4986, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 04:58:07', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4987, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 04:59:15', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4988, 1, 'User membuka Form Pendaftaran Lowongan Kerja', '2024-09-08 04:59:17', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4989, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 04:59:23', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4990, 1, 'User membuka Form Pendaftaran Lowongan Kerja', '2024-09-08 04:59:24', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4991, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 04:59:26', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4992, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 05:01:14', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4993, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 05:02:54', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4994, 1, 'User membuka Form Pendaftaran Lowongan Kerja', '2024-09-08 05:02:56', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4995, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 05:03:01', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4996, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 05:03:15', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4997, 1, 'User membuka Form Pendaftaran Lowongan Kerja', '2024-09-08 05:03:16', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4998, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 05:03:18', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (4999, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 05:04:09', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5000, 1, 'User membuka Form Pendaftaran Lowongan Kerja', '2024-09-08 05:04:10', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5001, 1, 'User membuka Form Pendaftaran Lowongan Kerja', '2024-09-08 05:04:24', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5002, 1, 'User membuka Form Pendaftaran Lowongan Kerja', '2024-09-08 05:05:19', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5003, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 05:05:20', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5004, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 05:06:19', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5005, 1, 'User membuka Form Pendaftaran Lowongan Kerja', '2024-09-08 05:06:20', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5006, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 05:06:24', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5007, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 05:08:11', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5008, 1, 'User membuka Form Pendaftaran Lowongan Kerja', '2024-09-08 05:08:13', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5009, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 05:09:58', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5010, 1, 'User membuka Form Pendaftaran Lowongan Kerja', '2024-09-08 05:09:59', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5011, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 05:10:01', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5012, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 05:10:18', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5013, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 05:12:35', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5014, 1, 'User membuka Form Pendaftaran Lowongan Kerja', '2024-09-08 05:12:37', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5015, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 05:12:40', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5016, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 05:14:11', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5017, 1, 'User membuka Form Pendaftaran Lowongan Kerja', '2024-09-08 05:14:12', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5018, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 05:14:21', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5019, 1, 'User membuka Form Pendaftaran Lowongan Kerja', '2024-09-08 05:14:23', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5020, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 05:14:28', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5021, 1, 'User membuka Form Penambahan Data Lowongan Kerja', '2024-09-08 05:14:31', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5022, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 05:14:35', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5023, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 05:17:37', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5024, 1, 'User membuka Form Pendaftaran Lowongan Kerja', '2024-09-08 05:17:39', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5025, 1, 'User mendaftar lowongan kerja', '2024-09-08 05:18:02', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5026, 1, 'User membuka halaman Lamaran', '2024-09-08 05:18:02', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5027, 1, 'User melakukan Pengeditan Data Lamaran', '2024-09-08 05:18:18', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5028, 1, 'User membuka halaman Lamaran', '2024-09-08 05:18:19', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5029, 1, 'User melakukan Penghapusan Data Lamaran', '2024-09-08 05:18:22', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5030, 1, 'User membuka halaman Lamaran', '2024-09-08 05:18:23', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5031, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 05:18:37', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5032, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 05:20:41', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5033, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 05:21:24', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5034, 1, 'User membuka Form Pendaftaran Lowongan Kerja', '2024-09-08 05:21:26', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5035, 1, 'User mendaftar lowongan kerja', '2024-09-08 05:21:52', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5036, 1, 'User membuka halaman Lamaran', '2024-09-08 05:21:52', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5037, 1, 'User membuka halaman Lamaran', '2024-09-08 05:22:05', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5038, 1, 'User melakukan Penghapusan Data Lamaran', '2024-09-08 05:22:15', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5039, 1, 'User membuka halaman Lamaran', '2024-09-08 05:22:15', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5040, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 05:22:17', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5041, 1, 'User membuka Form Pendaftaran Lowongan Kerja', '2024-09-08 05:22:19', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5042, 1, 'User mendaftar lowongan kerja', '2024-09-08 05:22:34', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5043, 1, 'User membuka halaman Lamaran', '2024-09-08 05:22:35', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5044, 1, 'User membuka halaman Lamaran', '2024-09-08 05:22:39', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5045, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 05:22:44', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5046, 1, 'User membuka halaman Lamaran', '2024-09-08 05:23:11', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5047, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 05:23:23', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5048, 1, 'User membuka Form Pendaftaran Lowongan Kerja', '2024-09-08 05:24:13', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5049, 1, 'User mendaftar lowongan kerja', '2024-09-08 05:24:37', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5050, 1, 'User membuka halaman Lamaran', '2024-09-08 05:24:37', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5051, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 05:24:39', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5052, 1, 'User membuka halaman Lamaran', '2024-09-08 05:24:46', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5053, 1, 'User melakukan Penghapusan Data Lamaran', '2024-09-08 05:24:51', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5054, 1, 'User membuka halaman Lamaran', '2024-09-08 05:24:52', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5055, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 05:24:54', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5056, 1, 'User membuka Form Penambahan Data Lowongan Kerja', '2024-09-08 05:24:55', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5057, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 05:25:37', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5058, 1, 'User membuka Form Pendaftaran Lowongan Kerja', '2024-09-08 05:25:39', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5059, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 05:25:52', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5060, 1, 'User membuka halaman Lamaran', '2024-09-08 05:25:55', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5061, 1, 'User membuka halaman Lamaran', '2024-09-08 05:26:27', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5062, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 05:26:29', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5063, 1, 'User membuka Form Pendaftaran Lowongan Kerja', '2024-09-08 05:26:30', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5064, 1, 'User membuka Form Pendaftaran Lowongan Kerja', '2024-09-08 05:26:44', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5065, 1, 'User mendaftar lowongan kerja', '2024-09-08 05:27:03', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5066, 1, 'User membuka halaman Lamaran', '2024-09-08 05:27:03', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5067, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 05:27:05', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5068, 1, 'User membuka halaman Lamaran', '2024-09-08 05:27:08', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5069, 1, 'User melakukan Pengeditan Data Lamaran', '2024-09-08 05:27:20', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5070, 1, 'User membuka halaman Lamaran', '2024-09-08 05:27:20', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5071, 1, 'User melakukan Pengeditan Data Lamaran', '2024-09-08 05:27:25', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5072, 1, 'User membuka halaman Lamaran', '2024-09-08 05:27:25', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5073, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 05:27:26', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5074, 1, 'User membuka Form Pendaftaran Lowongan Kerja', '2024-09-08 05:27:28', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5075, 1, 'User membuka halaman Lamaran', '2024-09-08 05:27:51', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5076, 1, 'User melakukan Pengeditan Data Lamaran', '2024-09-08 05:28:18', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5077, 1, 'User membuka halaman Lamaran', '2024-09-08 05:28:19', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5078, 1, 'User membuka halaman Lamaran', '2024-09-08 05:29:11', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5079, 1, 'User membuka halaman Lamaran', '2024-09-08 05:29:15', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5080, 1, 'User membuka halaman Lamaran', '2024-09-08 05:29:21', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5081, 1, 'User membuka halaman Lamaran', '2024-09-08 05:30:21', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5082, 1, 'User melakukan Pengeditan Data Lamaran', '2024-09-08 05:30:55', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5083, 1, 'User membuka halaman Lamaran', '2024-09-08 05:30:56', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5084, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 05:31:06', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5085, 1, 'User membuka halaman Lamaran', '2024-09-08 05:31:11', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5086, 1, 'User melakukan Pengeditan Data Lamaran', '2024-09-08 05:31:38', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5087, 1, 'User membuka halaman Lamaran', '2024-09-08 05:31:39', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5088, 1, 'User membuka halaman Lamaran', '2024-09-08 05:32:10', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5089, 1, 'User membuka halaman Lamaran', '2024-09-08 05:32:14', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5090, 1, 'User melakukan Pengeditan Data Lamaran', '2024-09-08 05:32:39', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5091, 1, 'User membuka halaman Lamaran', '2024-09-08 05:32:39', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5092, 1, 'User melakukan Pengeditan Data Lamaran', '2024-09-08 05:32:54', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5093, 1, 'User membuka halaman Lamaran', '2024-09-08 05:32:55', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5094, 1, 'User melakukan Pengeditan Data Lamaran', '2024-09-08 05:33:30', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5095, 1, 'User membuka halaman Lamaran', '2024-09-08 05:33:31', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5096, 1, 'User melakukan Pengeditan Data Lamaran', '2024-09-08 05:33:46', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5097, 1, 'User membuka halaman Lamaran', '2024-09-08 05:33:46', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5098, 1, 'User melakukan Pengeditan Data Lamaran', '2024-09-08 05:33:53', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5099, 1, 'User membuka halaman Lamaran', '2024-09-08 05:33:53', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5100, 1, 'User membuka halaman Lamaran', '2024-09-08 05:34:30', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5101, 1, 'User membuka halaman Lamaran', '2024-09-08 05:34:39', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5102, 1, 'User membuka halaman Lamaran', '2024-09-08 05:34:53', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5103, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 05:36:15', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5104, 1, 'User membuka halaman alumni', '2024-09-08 05:37:49', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5105, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 05:37:52', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5106, 1, 'User membuka halaman Lamaran', '2024-09-08 05:37:57', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5107, 1, 'User membuka halaman Lamaran', '2024-09-08 05:41:17', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5108, 1, 'User membuka halaman Lamaran', '2024-09-08 05:41:27', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5109, 1, 'User membuka halaman Lamaran', '2024-09-08 05:41:49', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5110, 1, 'User melakukan Pengeditan Data Lamaran', '2024-09-08 05:41:55', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5111, 1, 'User membuka halaman Lamaran', '2024-09-08 05:41:55', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5112, 1, 'User melakukan Pengeditan Data Lamaran', '2024-09-08 05:42:02', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5113, 1, 'User membuka halaman Lamaran', '2024-09-08 05:42:03', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5114, 1, 'User melakukan Pengeditan Data Lamaran', '2024-09-08 05:42:09', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5115, 1, 'User membuka halaman Lamaran', '2024-09-08 05:42:10', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5116, 1, 'User melakukan Pengeditan Data Lamaran', '2024-09-08 05:42:15', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5117, 1, 'User membuka halaman Lamaran', '2024-09-08 05:42:15', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5118, 1, 'User melakukan Pengeditan Data Lamaran', '2024-09-08 05:42:19', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5119, 1, 'User membuka halaman Lamaran', '2024-09-08 05:42:21', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5120, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 05:42:38', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5121, 1, 'User membuka halaman Lamaran', '2024-09-08 05:42:41', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5122, 1, 'User membuka halaman Lamaran', '2024-09-08 05:43:19', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5123, 1, 'User membuka halaman Lamaran', '2024-09-08 05:43:34', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5124, 1, 'User membuka halaman Lamaran', '2024-09-08 05:43:59', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5125, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 05:44:15', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5126, 1, 'User membuka Form Pendaftaran Lowongan Kerja', '2024-09-08 05:44:17', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5127, 1, 'User membuka halaman alumni', '2024-09-08 05:44:22', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5128, 1, 'User membuka halaman Lamaran', '2024-09-08 05:44:26', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5129, 1, 'User membuka halaman alumni', '2024-09-08 05:44:27', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5130, 1, 'User membuka halaman Lamaran', '2024-09-08 05:44:29', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5131, 1, 'User membuka halaman alumni', '2024-09-08 05:44:32', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5132, 1, 'User membuka Form Penambahan Data alumni', '2024-09-08 05:44:35', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5133, 1, 'User membuka halaman alumni', '2024-09-08 05:44:40', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5134, 1, 'User membuka halaman alumni', '2024-09-08 05:44:47', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5135, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 05:44:52', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5136, 1, 'User membuka Dashboard', '2024-09-08 05:44:56', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5137, 1, 'User membuka halaman alumni', '2024-09-08 05:44:57', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5138, 1, 'User membuka Dashboard', '2024-09-08 05:44:58', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5139, 1, 'User membuka halaman alumni', '2024-09-08 05:45:05', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5140, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 05:45:07', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5141, 1, 'User membuka view Laporan', '2024-09-08 05:45:08', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5142, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 05:45:11', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5143, 1, 'User membuka view Laporan', '2024-09-08 05:45:13', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5144, 1, 'User membuka halaman Lamaran', '2024-09-08 05:45:15', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5145, 1, 'User membuka view User', '2024-09-08 05:45:19', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5146, 1, 'User membuka Log Activity', '2024-09-08 05:45:27', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5147, 1, 'User membuka halaman Setting', '2024-09-08 05:45:35', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5148, 1, 'User membuka halaman alumni', '2024-09-08 05:45:41', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5149, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 05:45:47', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5150, 1, 'User membuka Form Pendaftaran Lowongan Kerja', '2024-09-08 05:45:52', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5151, 1, 'User membuka Form Pendaftaran Lowongan Kerja', '2024-09-08 05:46:34', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5152, 1, 'User membuka Form Pendaftaran Lowongan Kerja', '2024-09-08 05:46:43', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5153, 1, 'User membuka Form Pendaftaran Lowongan Kerja', '2024-09-08 05:48:47', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5154, 1, 'User mendaftar lowongan kerja', '2024-09-08 05:49:14', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5155, 1, 'User membuka halaman Lamaran', '2024-09-08 05:49:14', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5156, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 05:49:16', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5157, 1, 'User membuka halaman Lamaran', '2024-09-08 05:49:22', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5158, 1, 'User melakukan Pengeditan Data Lamaran', '2024-09-08 05:49:28', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5159, 1, 'User membuka halaman Lamaran', '2024-09-08 05:49:29', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5160, 1, 'User melakukan Penghapusan Data Lamaran', '2024-09-08 05:49:31', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5161, 1, 'User membuka halaman Lamaran', '2024-09-08 05:49:32', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5162, 1, 'User membuka Dashboard', '2024-09-08 05:49:35', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5163, 1, 'User membuka halaman alumni', '2024-09-08 05:49:37', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5164, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 05:49:38', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5165, 1, 'User membuka view Laporan', '2024-09-08 05:49:41', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5166, 1, 'User membuka halaman Lamaran', '2024-09-08 05:49:42', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5167, 1, 'User membuka view User', '2024-09-08 05:49:44', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5168, 1, 'User membuka Log Activity', '2024-09-08 05:49:45', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5169, 1, 'User membuka halaman Setting', '2024-09-08 05:49:46', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5170, 1, 'User membuka view User', '2024-09-08 05:49:48', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5171, 1, 'User membuka halaman Lamaran', '2024-09-08 05:49:50', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5172, 1, 'User melakukan logout', '2024-09-08 05:49:54', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5173, 2, 'User membuka Dashboard', '2024-09-08 05:50:06', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5174, 2, 'User membuka halaman alumni', '2024-09-08 05:50:08', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5175, 2, 'User membuka halaman Lowongan kerja', '2024-09-08 05:50:09', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5176, 2, 'User membuka view Laporan', '2024-09-08 05:50:17', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5177, 2, 'User membuka halaman Lamaran', '2024-09-08 05:50:36', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5178, 2, 'User membuka halaman Lamaran', '2024-09-08 05:53:09', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5179, 2, 'User membuka halaman Lamaran', '2024-09-08 05:53:53', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5180, 2, 'User membuka Log Activity', '2024-09-08 05:53:58', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5181, 2, 'User membuka Log Activity', '2024-09-08 05:55:10', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5182, 2, 'User membuka Log Activity', '2024-09-08 05:55:38', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5183, 2, 'User membuka halaman Lamaran', '2024-09-08 05:55:58', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5184, 2, 'User membuka halaman Lowongan kerja', '2024-09-08 05:56:01', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5185, 2, 'User membuka halaman alumni', '2024-09-08 05:56:04', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5186, 2, 'User membuka Dashboard', '2024-09-08 05:56:06', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5187, 2, 'User melakukan logout', '2024-09-08 05:56:08', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5188, 1, 'User membuka Dashboard', '2024-09-08 05:56:12', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5189, 1, 'User membuka halaman alumni', '2024-09-08 05:56:15', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5190, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 05:56:19', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5191, 1, 'User membuka halaman Lamaran', '2024-09-08 05:56:23', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5192, 1, 'User membuka view User', '2024-09-08 05:56:28', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5193, 1, 'User membuka halaman Lamaran', '2024-09-08 05:56:32', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5194, 1, 'User membuka Log Activity', '2024-09-08 05:56:33', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5195, 1, 'User membuka halaman Setting', '2024-09-08 05:56:39', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5196, 1, 'User membuka halaman alumni', '2024-09-08 05:56:41', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5197, 1, 'User masuk ke profile', '2024-09-08 05:56:43', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5198, 1, 'User membuka halaman alumni', '2024-09-08 05:56:48', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5199, 1, 'User melakukan logout', '2024-09-08 05:56:49', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5200, 3, 'User membuka Dashboard', '2024-09-08 05:56:57', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5201, 3, 'User membuka halaman alumni', '2024-09-08 05:56:59', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5202, 3, 'User membuka halaman Lowongan kerja', '2024-09-08 05:57:09', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5203, 3, 'User membuka view Laporan', '2024-09-08 05:57:27', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5204, 3, 'User membuka halaman Lamaran', '2024-09-08 05:57:30', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5205, 3, 'User membuka Log Activity', '2024-09-08 05:57:42', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5206, 3, 'User membuka halaman Lamaran', '2024-09-08 05:57:49', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5207, 3, 'User membuka view Laporan', '2024-09-08 05:57:51', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5208, 3, 'User membuka halaman alumni', '2024-09-08 05:57:53', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5209, 3, 'User membuka halaman Lowongan kerja', '2024-09-08 05:57:54', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5210, 3, 'User melakukan logout', '2024-09-08 05:57:57', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5211, 4, 'User membuka Dashboard', '2024-09-08 05:58:02', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5212, 4, 'User membuka halaman alumni', '2024-09-08 05:58:04', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5213, 4, 'User membuka Dashboard', '2024-09-08 05:58:05', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5214, 4, 'User membuka halaman alumni', '2024-09-08 05:58:07', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5215, 4, 'User membuka halaman Lowongan kerja', '2024-09-08 05:58:09', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5216, 4, 'User membuka halaman alumni', '2024-09-08 05:58:10', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5217, 4, 'User membuka Form Penambahan Data alumni', '2024-09-08 05:58:11', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5218, 4, 'User membuka halaman Lamaran', '2024-09-08 05:58:28', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5219, 4, 'User membuka Dashboard', '2024-09-08 05:58:34', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5220, 4, 'User membuka halaman alumni', '2024-09-08 05:58:37', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5221, 4, 'User membuka halaman Lowongan kerja', '2024-09-08 05:58:38', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5222, 4, 'User membuka halaman Lamaran', '2024-09-08 05:58:40', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5223, 4, 'User membuka halaman Lamaran', '2024-09-08 05:59:07', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5224, 4, 'User membuka halaman Lamaran', '2024-09-08 05:59:10', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5225, 4, 'User membuka halaman alumni', '2024-09-08 05:59:12', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5226, 4, 'User membuka halaman Lowongan kerja', '2024-09-08 05:59:13', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5227, 4, 'User membuka halaman Lamaran', '2024-09-08 05:59:20', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5228, 4, 'User membuka halaman Lowongan kerja', '2024-09-08 05:59:21', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5229, 4, 'User membuka Dashboard', '2024-09-08 05:59:36', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5230, 4, 'User membuka halaman Lamaran', '2024-09-08 05:59:39', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5231, 4, 'User membuka Dashboard', '2024-09-08 05:59:41', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5232, 4, 'User membuka Dashboard', '2024-09-08 05:59:50', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5233, 4, 'User membuka halaman alumni', '2024-09-08 05:59:52', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5234, 4, 'User membuka halaman Lowongan kerja', '2024-09-08 05:59:53', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5235, 4, 'User melakukan logout', '2024-09-08 05:59:55', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5236, 1, 'User membuka Dashboard', '2024-09-08 05:59:59', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5237, 1, 'User membuka halaman alumni', '2024-09-08 06:00:01', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5238, 1, 'User membuka Dashboard', '2024-09-08 06:00:04', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5239, 1, 'User membuka halaman alumni', '2024-09-08 06:00:06', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5240, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 06:00:09', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5241, 1, 'User membuka view Laporan', '2024-09-08 06:00:14', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5242, 1, 'User membuka halaman Lamaran', '2024-09-08 06:00:15', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5243, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 06:00:21', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5244, 1, 'User membuka Form Penambahan Data Lowongan Kerja', '2024-09-08 06:00:23', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5245, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 06:00:30', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5246, 1, 'User membuka halaman Lamaran', '2024-09-08 06:00:33', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5247, 1, 'User membuka halaman alumni', '2024-09-08 06:00:36', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5248, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 06:00:37', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5249, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 06:01:06', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5250, 1, 'User membuka view Laporan', '2024-09-08 06:01:12', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5251, 1, 'User melakukan logout', '2024-09-08 06:01:14', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5252, 4, 'User membuka Dashboard', '2024-09-08 06:01:19', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5253, 4, 'User membuka halaman alumni', '2024-09-08 06:01:21', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5254, 4, 'User membuka Form Penambahan Data alumni', '2024-09-08 06:01:24', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5255, 4, 'User membuka halaman Lowongan kerja', '2024-09-08 06:01:29', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5256, 4, 'User membuka halaman Lowongan kerja', '2024-09-08 06:01:41', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5257, 4, 'User membuka halaman Lowongan kerja', '2024-09-08 06:02:43', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5258, 4, 'User membuka halaman Lowongan kerja', '2024-09-08 06:03:34', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5259, 4, 'User membuka Form Pendaftaran Lowongan Kerja', '2024-09-08 06:03:39', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5260, 4, 'User membuka halaman Lowongan kerja', '2024-09-08 06:03:45', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5261, 4, 'User melakukan logout', '2024-09-08 06:03:53', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5262, 1, 'User membuka Dashboard', '2024-09-08 06:03:58', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5263, 1, 'User membuka halaman Lamaran', '2024-09-08 06:03:59', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5264, 1, 'User masuk ke profile', '2024-09-08 06:04:01', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5265, 1, 'User membuka halaman Lamaran', '2024-09-08 06:04:11', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5266, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 06:04:13', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5267, 1, 'User membuka Form Penambahan Data Lowongan Kerja', '2024-09-08 06:04:21', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5268, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 06:04:30', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5269, 1, 'User membuka view Laporan', '2024-09-08 06:04:37', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5270, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 06:04:41', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5271, 1, 'User membuka halaman Lamaran', '2024-09-08 06:04:44', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5272, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 06:05:30', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5273, 1, 'User membuka Form Penambahan Data Lowongan Kerja', '2024-09-08 06:05:31', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5274, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 06:05:33', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5275, 1, 'User membuka Dashboard', '2024-09-08 06:05:34', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5276, 1, 'User membuka halaman alumni', '2024-09-08 06:05:36', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5277, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 06:05:37', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5278, 1, 'User membuka view Laporan', '2024-09-08 06:05:39', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5279, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 06:05:40', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5280, 1, 'User membuka view Laporan', '2024-09-08 06:05:48', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5281, 1, 'User membuka Dashboard', '2024-09-08 06:05:54', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5282, 1, 'User membuka halaman alumni', '2024-09-08 06:05:55', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5283, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 06:05:56', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5284, 1, 'User membuka view Laporan', '2024-09-08 06:05:59', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5285, 1, 'User membuka halaman Lamaran', '2024-09-08 06:06:01', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5286, 1, 'User membuka view User', '2024-09-08 06:06:03', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5287, 1, 'User membuka Log Activity', '2024-09-08 06:06:05', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5288, 1, 'User membuka halaman Setting', '2024-09-08 06:06:06', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5289, 1, 'User membuka Dashboard', '2024-09-08 06:06:12', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5290, 1, 'User membuka halaman alumni', '2024-09-08 06:06:13', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5291, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 06:06:14', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5292, 1, 'User membuka view Laporan', '2024-09-08 06:06:16', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5293, 1, 'User membuka halaman Lamaran', '2024-09-08 06:06:17', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5294, 1, 'User membuka view User', '2024-09-08 06:07:05', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5295, 1, 'User membuka halaman Lamaran', '2024-09-08 06:07:15', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5296, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 06:07:23', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5297, 1, 'User membuka halaman Lamaran', '2024-09-08 06:07:27', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5298, 1, 'User membuka Log Activity', '2024-09-08 06:15:20', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5299, 1, 'User membuka halaman Lamaran', '2024-09-08 06:15:27', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5300, 1, 'User membuka halaman Lowongan kerja', '2024-09-08 06:15:34', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5301, 1, 'User membuka view User', '2024-09-08 06:15:37', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5302, 1, 'User membuka halaman Lamaran', '2024-09-08 06:15:39', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5303, 1, 'User membuka halaman Setting', '2024-09-08 06:16:01', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5304, 1, 'User membuka halaman Lamaran', '2024-09-08 06:16:02', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5305, 1, 'User membuka halaman Setting', '2024-09-08 06:16:04', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5306, 1, 'User membuka view Laporan', '2024-09-08 06:16:12', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5307, 1, 'User membuka halaman Lamaran', '2024-09-08 06:16:14', '0000-00-00 00:00:00');
INSERT INTO `tb_activity` VALUES (5308, 1, 'User membuka Dashboard', '2024-09-08 06:31:41', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for tb_alumni
-- ----------------------------
DROP TABLE IF EXISTS `tb_alumni`;
CREATE TABLE `tb_alumni`  (
  `id_alumni` int(255) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `jenis_kelamin` enum('Laki-laki','Perempuan') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nis` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tahun_lulus` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `jurusan` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tempat_kerja` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `alamat_kerja` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tempat_kuliah` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `alamat_kuliah` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status` enum('Kerja','Kuliah','Kerja dan kuliah') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_alumni`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_alumni
-- ----------------------------
INSERT INTO `tb_alumni` VALUES (1, 'andi', 'Laki-laki', '212312', '2020', 'RPL', 'PT A', 'Alamat A', 'Kuliah A', 'Alamat Kuliah A', 'Kerja dan kuliah');
INSERT INTO `tb_alumni` VALUES (2, 'Tony', 'Laki-laki', '213123', '2019', 'BDP', 'N/A', 'N/A', 'Kuliah B', 'Alamat Kuliah B', 'Kuliah');
INSERT INTO `tb_alumni` VALUES (14, 'Lia', 'Perempuan', '2216013', '2022', 'AKL', 'PT C', 'Alamat C', 'N/A', 'N/A', 'Kerja');

-- ----------------------------
-- Table structure for tb_lamaran
-- ----------------------------
DROP TABLE IF EXISTS `tb_lamaran`;
CREATE TABLE `tb_lamaran`  (
  `id_lamar` int(13) NOT NULL AUTO_INCREMENT,
  `nama_siswa` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `lowongan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `no_hp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `lokasi_rumah` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tanggal_lamar` date NULL DEFAULT NULL,
  `catatan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `surat_lamaran` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status_lamar` enum('Proses','Diterima','Ditolak') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_lamar`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_lamaran
-- ----------------------------
INSERT INTO `tb_lamaran` VALUES (5, 'Dennis', 'Web Developer', '08127720712', 'dennis@gmail.com', 'Baloi', '2024-09-08', 'Terima saya.', 'Dennis CV pkllll.pdf', 'Proses');
INSERT INTO `tb_lamaran` VALUES (6, 'Rian', 'Web Design', '087238123', 'Rian@gmail.com', 'Batam Center', '2024-09-08', 'Tes', 'Dennis CV pkllll_1.pdf', 'Ditolak');
INSERT INTO `tb_lamaran` VALUES (8, 'Sinta', 'Backend Developer', '0872 2312 2823', 'Sinta@gmail.com', 'Tiban', '2024-09-08', 'Cek2', 'Dennis CV pkllll_3.pdf', 'Diterima');

-- ----------------------------
-- Table structure for tb_lowongan
-- ----------------------------
DROP TABLE IF EXISTS `tb_lowongan`;
CREATE TABLE `tb_lowongan`  (
  `id_lowongan` int(11) NOT NULL AUTO_INCREMENT,
  `manager_bkk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `perusahaan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `lokasi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `posisi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tanggal_post` date NULL DEFAULT NULL,
  `kontak` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `gaji` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status` enum('Aktif','Tutup') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `logo_pt` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_lowongan`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_lowongan
-- ----------------------------
INSERT INTO `tb_lowongan` VALUES (1, 'Anto', 'PT Adara Makmur', 'Jakarta Raya', 'Web Design', '2024-08-30', '0812882032', 'RP 4.500.000 - 7.000.000 Per Bulan', 'Tutup', '1725453832_d7bf0586a5ab43084b64.png');
INSERT INTO `tb_lowongan` VALUES (2, 'Andi', 'PT Baramulti Petra', 'Tangerang, Banten', 'Graphic Designer', '1959-01-07', '0873263123', 'RP 5.000.000 - 7.500.000 Per Bulan', 'Tutup', '1725453962_ace46380c31e4924601f.jpg');
INSERT INTO `tb_lowongan` VALUES (5, 'Julio', 'PT Julio', 'Batam', 'Back End Developer', '2024-09-04', '0812668123', 'RP 1.000 - 2.000 Per Bulan', 'Aktif', '1725494526_24be5d502e9004fefba7.jpg');
INSERT INTO `tb_lowongan` VALUES (6, 'Pina', 'PT Mega Marine Pride', 'Ubud, Bali', 'Front End Developer', '2024-09-04', '08723913', 'RP 5.000.000 - 7.500.000 Per Bulan', 'Aktif', '1725511248_bac3cc0a5a82afb1de38.jpg');
INSERT INTO `tb_lowongan` VALUES (8, 'Bryan', 'PT Kreasi Tambang Utama', 'Batam', 'Web Developer', '2024-09-04', '089271232', 'RP 2.500.000 - 5.000.000 Per Bulan', 'Aktif', '1725710749_0108dd6791098f338742.jpg');
INSERT INTO `tb_lowongan` VALUES (21, 'Anto', 'CV Diesel Service', 'Batam', 'Web Developer', '2024-09-07', '0832132122', 'RP 7.000.000 - 9.000.000 Per Bulan', 'Aktif', '1725451253_a18f1146d6648c4eed2c.png');

-- ----------------------------
-- Table structure for tb_setting
-- ----------------------------
DROP TABLE IF EXISTS `tb_setting`;
CREATE TABLE `tb_setting`  (
  `id_setting` int(11) NOT NULL AUTO_INCREMENT,
  `nama_web` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `logo_dashboard` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `logo_tab` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `logo_login` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_setting`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_setting
-- ----------------------------
INSERT INTO `tb_setting` VALUES (1, 'Pendataan Alumni', 'LOGOO_2.PNG', 'logo_alumni_3.PNG', 'LOGOO_3.PNG');

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user`  (
  `id_user` int(13) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `id_level` enum('1','2','3','4','5') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `foto_profile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_user`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES (1, 'admin', 'c4ca4238a0b923820dcc509a6f75849b', 'admin@gmail.com', '1', '1725779923_ac0b85d6402362f6cb1f.jpg');
INSERT INTO `tb_user` VALUES (2, 'kepalasekolah', 'c81e728d9d4c2f636f067f89cc14862c', 'kepalasekolah@gmail.com', '2', NULL);
INSERT INTO `tb_user` VALUES (3, 'bkk', 'eccbc87e4b5ce2fe28308fd9f2a7baf3', 'kepsek@gmail.com', '3', NULL);
INSERT INTO `tb_user` VALUES (4, 'alumni', 'a87ff679a2f3e71d9181a67b7542122c', 'alumni@gmail.com', '4', '1725705221_723931b6752732286251.jpg');
INSERT INTO `tb_user` VALUES (26, 'morgen', '6512bd43d9caa6e02c990b0a82652dca', 'morgen@gmail.com', '4', NULL);

SET FOREIGN_KEY_CHECKS = 1;
