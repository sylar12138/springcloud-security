/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 50605
 Source Host           : localhost:3306
 Source Schema         : db_oauth

 Target Server Type    : MySQL
 Target Server Version : 50605
 File Encoding         : 65001

 Date: 08/12/2019 21:04:44
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for audit_log
-- ----------------------------
DROP TABLE IF EXISTS `audit_log`;
CREATE TABLE `audit_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'http方法GET POST',
  `path` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '请求路径',
  `status` int(4) NULL DEFAULT NULL COMMENT 'http状态码',
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '请求用户名',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 148 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of audit_log
-- ----------------------------
INSERT INTO `audit_log` VALUES (1, 'GET', '/users/2', NULL, NULL, '2019-10-27 22:02:00', NULL);
INSERT INTO `audit_log` VALUES (2, 'GET', '/error', NULL, NULL, '2019-10-27 22:02:00', NULL);
INSERT INTO `audit_log` VALUES (3, 'GET', '/users/2', 200, NULL, '2019-10-27 22:02:25', '2019-10-27 22:02:25');
INSERT INTO `audit_log` VALUES (4, 'GET', '/error', 500, NULL, '2019-10-27 22:02:26', '2019-10-27 22:02:26');
INSERT INTO `audit_log` VALUES (5, 'POST', '/token/oauth/token', NULL, NULL, '2019-11-02 20:56:15', NULL);
INSERT INTO `audit_log` VALUES (6, 'POST', '/token/oauth/token', NULL, NULL, '2019-11-02 20:57:05', NULL);
INSERT INTO `audit_log` VALUES (7, 'POST', '/token/oauth/token', NULL, NULL, '2019-11-02 20:57:40', NULL);
INSERT INTO `audit_log` VALUES (8, 'POST', '/order/orders', 401, NULL, '2019-11-02 20:58:45', '2019-11-02 20:58:50');
INSERT INTO `audit_log` VALUES (9, 'POST', '/order/orders', 401, NULL, '2019-11-02 20:59:19', '2019-11-02 20:59:45');
INSERT INTO `audit_log` VALUES (10, 'POST', '/order/orders', 401, NULL, '2019-11-02 21:00:49', '2019-11-02 21:00:51');
INSERT INTO `audit_log` VALUES (11, 'POST', '/order/orders', 401, NULL, '2019-11-02 21:01:38', '2019-11-02 21:01:38');
INSERT INTO `audit_log` VALUES (12, 'POST', '/order/orders', 401, NULL, '2019-11-02 21:03:43', '2019-11-02 21:03:49');
INSERT INTO `audit_log` VALUES (13, 'POST', '/order/orders', 401, NULL, '2019-11-02 21:04:14', '2019-11-02 21:04:17');
INSERT INTO `audit_log` VALUES (14, 'POST', '/order/orders', 401, NULL, '2019-11-02 21:04:59', '2019-11-02 21:05:03');
INSERT INTO `audit_log` VALUES (15, 'POST', '/order/orders', 401, NULL, '2019-11-02 21:05:32', '2019-11-02 21:05:36');
INSERT INTO `audit_log` VALUES (16, 'POST', '/order/orders', 401, NULL, '2019-11-02 21:06:59', '2019-11-02 21:07:01');
INSERT INTO `audit_log` VALUES (17, 'POST', '/order/orders', 401, NULL, '2019-11-02 21:09:54', '2019-11-02 21:09:57');
INSERT INTO `audit_log` VALUES (18, 'POST', '/token/oauth/token', NULL, NULL, '2019-11-03 09:40:37', NULL);
INSERT INTO `audit_log` VALUES (19, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 09:40:57', NULL);
INSERT INTO `audit_log` VALUES (20, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 09:44:27', NULL);
INSERT INTO `audit_log` VALUES (21, 'POST', '/order/orders', 403, 'lhy', '2019-11-03 09:45:19', '2019-11-03 09:45:19');
INSERT INTO `audit_log` VALUES (22, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 09:47:00', NULL);
INSERT INTO `audit_log` VALUES (23, 'POST', '/token/oauth/token', NULL, NULL, '2019-11-03 09:48:37', NULL);
INSERT INTO `audit_log` VALUES (24, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 09:50:42', NULL);
INSERT INTO `audit_log` VALUES (25, 'POST', '/order/orders', 403, 'lhy', '2019-11-03 09:51:12', '2019-11-03 09:51:12');
INSERT INTO `audit_log` VALUES (26, 'POST', '/order/orders', 403, 'lhy', '2019-11-03 09:51:45', '2019-11-03 09:51:46');
INSERT INTO `audit_log` VALUES (27, 'POST', '/order/orders', 401, NULL, '2019-11-03 11:48:41', '2019-11-03 11:48:42');
INSERT INTO `audit_log` VALUES (28, 'POST', '/token/oauth/token', NULL, NULL, '2019-11-03 11:49:08', NULL);
INSERT INTO `audit_log` VALUES (29, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 11:57:31', NULL);
INSERT INTO `audit_log` VALUES (30, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 12:02:00', NULL);
INSERT INTO `audit_log` VALUES (31, 'POST', '/order/orders', 401, NULL, '2019-11-03 13:09:34', '2019-11-03 13:09:36');
INSERT INTO `audit_log` VALUES (32, 'POST', '/order/orders', 401, NULL, '2019-11-03 13:10:39', '2019-11-03 13:10:40');
INSERT INTO `audit_log` VALUES (33, 'POST', '/token/oauth/token', NULL, NULL, '2019-11-03 13:10:44', NULL);
INSERT INTO `audit_log` VALUES (34, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 13:11:00', NULL);
INSERT INTO `audit_log` VALUES (35, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 13:11:09', NULL);
INSERT INTO `audit_log` VALUES (36, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 13:11:10', NULL);
INSERT INTO `audit_log` VALUES (37, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 13:11:11', NULL);
INSERT INTO `audit_log` VALUES (38, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 13:11:11', NULL);
INSERT INTO `audit_log` VALUES (39, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 13:11:12', NULL);
INSERT INTO `audit_log` VALUES (40, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 13:11:13', NULL);
INSERT INTO `audit_log` VALUES (41, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 13:11:13', NULL);
INSERT INTO `audit_log` VALUES (42, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 13:11:14', NULL);
INSERT INTO `audit_log` VALUES (43, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 13:11:15', NULL);
INSERT INTO `audit_log` VALUES (44, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 13:11:16', NULL);
INSERT INTO `audit_log` VALUES (45, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 13:11:16', NULL);
INSERT INTO `audit_log` VALUES (46, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 13:11:17', NULL);
INSERT INTO `audit_log` VALUES (47, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 13:11:18', NULL);
INSERT INTO `audit_log` VALUES (48, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 13:11:18', NULL);
INSERT INTO `audit_log` VALUES (49, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 13:11:19', NULL);
INSERT INTO `audit_log` VALUES (50, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 13:11:19', NULL);
INSERT INTO `audit_log` VALUES (51, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 13:11:20', NULL);
INSERT INTO `audit_log` VALUES (52, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 13:11:21', NULL);
INSERT INTO `audit_log` VALUES (53, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 13:11:21', NULL);
INSERT INTO `audit_log` VALUES (54, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 13:11:22', NULL);
INSERT INTO `audit_log` VALUES (55, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 13:12:53', NULL);
INSERT INTO `audit_log` VALUES (56, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 13:12:55', NULL);
INSERT INTO `audit_log` VALUES (57, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 13:12:56', NULL);
INSERT INTO `audit_log` VALUES (58, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 13:12:56', NULL);
INSERT INTO `audit_log` VALUES (59, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 13:18:28', NULL);
INSERT INTO `audit_log` VALUES (60, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 13:18:30', NULL);
INSERT INTO `audit_log` VALUES (61, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 13:18:30', NULL);
INSERT INTO `audit_log` VALUES (62, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 13:18:31', NULL);
INSERT INTO `audit_log` VALUES (63, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 13:18:33', NULL);
INSERT INTO `audit_log` VALUES (64, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 13:18:34', NULL);
INSERT INTO `audit_log` VALUES (65, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 13:18:35', NULL);
INSERT INTO `audit_log` VALUES (66, 'POST', '/token/oauth/token', NULL, NULL, '2019-11-03 14:02:50', NULL);
INSERT INTO `audit_log` VALUES (67, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 14:03:10', NULL);
INSERT INTO `audit_log` VALUES (68, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 14:03:12', NULL);
INSERT INTO `audit_log` VALUES (69, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 14:03:13', NULL);
INSERT INTO `audit_log` VALUES (70, 'POST', '/token/oauth/token', NULL, NULL, '2019-11-03 18:00:37', NULL);
INSERT INTO `audit_log` VALUES (71, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 18:00:56', NULL);
INSERT INTO `audit_log` VALUES (72, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 18:01:08', NULL);
INSERT INTO `audit_log` VALUES (73, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 18:01:08', NULL);
INSERT INTO `audit_log` VALUES (74, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 18:01:10', NULL);
INSERT INTO `audit_log` VALUES (75, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 18:01:12', NULL);
INSERT INTO `audit_log` VALUES (76, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 18:01:13', NULL);
INSERT INTO `audit_log` VALUES (77, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 18:01:14', NULL);
INSERT INTO `audit_log` VALUES (78, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 18:02:39', NULL);
INSERT INTO `audit_log` VALUES (79, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 18:02:41', NULL);
INSERT INTO `audit_log` VALUES (80, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 18:02:43', NULL);
INSERT INTO `audit_log` VALUES (81, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 18:02:44', NULL);
INSERT INTO `audit_log` VALUES (82, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 18:02:45', NULL);
INSERT INTO `audit_log` VALUES (83, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 18:22:53', NULL);
INSERT INTO `audit_log` VALUES (84, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 18:22:56', NULL);
INSERT INTO `audit_log` VALUES (85, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 18:22:57', NULL);
INSERT INTO `audit_log` VALUES (86, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 18:22:58', NULL);
INSERT INTO `audit_log` VALUES (87, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 18:43:03', NULL);
INSERT INTO `audit_log` VALUES (88, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 18:43:04', NULL);
INSERT INTO `audit_log` VALUES (89, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 18:43:06', NULL);
INSERT INTO `audit_log` VALUES (90, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 18:43:07', NULL);
INSERT INTO `audit_log` VALUES (91, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 18:43:37', NULL);
INSERT INTO `audit_log` VALUES (92, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 18:43:46', NULL);
INSERT INTO `audit_log` VALUES (93, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 18:43:46', NULL);
INSERT INTO `audit_log` VALUES (94, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 18:43:48', NULL);
INSERT INTO `audit_log` VALUES (95, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 18:43:49', NULL);
INSERT INTO `audit_log` VALUES (96, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 18:43:50', NULL);
INSERT INTO `audit_log` VALUES (97, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 18:43:51', NULL);
INSERT INTO `audit_log` VALUES (98, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 18:43:52', NULL);
INSERT INTO `audit_log` VALUES (99, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 18:46:15', NULL);
INSERT INTO `audit_log` VALUES (100, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 18:46:16', NULL);
INSERT INTO `audit_log` VALUES (101, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 18:46:17', NULL);
INSERT INTO `audit_log` VALUES (102, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 18:46:18', NULL);
INSERT INTO `audit_log` VALUES (103, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 18:51:22', NULL);
INSERT INTO `audit_log` VALUES (104, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 18:51:23', NULL);
INSERT INTO `audit_log` VALUES (105, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 18:51:24', NULL);
INSERT INTO `audit_log` VALUES (106, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 18:51:24', NULL);
INSERT INTO `audit_log` VALUES (107, 'POST', '/order/orders', 401, NULL, '2019-11-03 20:05:06', '2019-11-03 20:05:06');
INSERT INTO `audit_log` VALUES (108, 'POST', '/order/orders', 401, NULL, '2019-11-03 20:05:13', '2019-11-03 20:05:13');
INSERT INTO `audit_log` VALUES (109, 'POST', '/order/orders', 401, NULL, '2019-11-03 20:05:14', '2019-11-03 20:05:14');
INSERT INTO `audit_log` VALUES (110, 'POST', '/token/oauth/token', NULL, NULL, '2019-11-03 20:05:18', NULL);
INSERT INTO `audit_log` VALUES (111, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 20:05:27', NULL);
INSERT INTO `audit_log` VALUES (112, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 20:05:29', NULL);
INSERT INTO `audit_log` VALUES (113, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 20:05:30', NULL);
INSERT INTO `audit_log` VALUES (114, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 20:05:32', NULL);
INSERT INTO `audit_log` VALUES (115, 'GET', '/users', 200, NULL, '2019-11-10 20:31:10', '2019-11-10 20:31:12');
INSERT INTO `audit_log` VALUES (116, 'GET', '/users', 200, NULL, '2019-11-10 20:31:12', '2019-11-10 20:31:12');
INSERT INTO `audit_log` VALUES (117, 'GET', '/users', 200, NULL, '2019-11-10 20:31:21', '2019-11-10 20:31:21');
INSERT INTO `audit_log` VALUES (118, 'GET', '/users', 200, NULL, '2019-11-10 20:32:36', '2019-11-10 20:32:36');
INSERT INTO `audit_log` VALUES (119, 'GET', '/users', 200, NULL, '2019-11-10 20:32:44', '2019-11-10 20:32:44');
INSERT INTO `audit_log` VALUES (120, 'GET', '/users/findByUsername', 200, NULL, '2019-11-12 22:45:55', '2019-11-12 22:45:56');
INSERT INTO `audit_log` VALUES (121, 'GET', '/error', 500, NULL, '2019-11-12 22:45:57', '2019-11-12 22:45:57');
INSERT INTO `audit_log` VALUES (122, 'GET', '/users/findByUsername', 200, NULL, '2019-11-12 22:48:41', '2019-11-12 22:48:42');
INSERT INTO `audit_log` VALUES (123, 'GET', '/users/findByUsername', 200, NULL, '2019-11-12 22:49:29', '2019-11-12 22:49:29');
INSERT INTO `audit_log` VALUES (124, 'GET', '/users/findByUsername', 200, NULL, '2019-11-12 22:51:14', '2019-11-12 22:51:14');
INSERT INTO `audit_log` VALUES (125, 'GET', '/users/findByUsername', 200, NULL, '2019-11-12 22:52:46', '2019-11-12 22:52:46');
INSERT INTO `audit_log` VALUES (126, 'GET', '/error', 500, NULL, '2019-11-12 22:52:46', '2019-11-12 22:52:46');
INSERT INTO `audit_log` VALUES (127, 'GET', '/users/findByUsername', 200, NULL, '2019-11-12 22:53:33', '2019-11-12 22:53:33');
INSERT INTO `audit_log` VALUES (128, 'GET', '/users/findByUsername', 200, NULL, '2019-11-12 22:56:37', '2019-11-12 22:56:37');
INSERT INTO `audit_log` VALUES (129, 'POST', '/users', 400, NULL, '2019-12-08 19:12:32', '2019-12-08 19:12:33');
INSERT INTO `audit_log` VALUES (130, 'POST', '/error', 400, NULL, '2019-12-08 19:12:33', '2019-12-08 19:12:33');
INSERT INTO `audit_log` VALUES (131, 'GET', '/users/1', 200, NULL, '2019-12-08 19:13:14', '2019-12-08 19:13:14');
INSERT INTO `audit_log` VALUES (132, 'GET', '/users/1', 200, NULL, '2019-12-08 19:15:00', '2019-12-08 19:15:12');
INSERT INTO `audit_log` VALUES (133, 'GET', '/users/1', 200, 'lhy', '2019-12-08 19:16:00', '2019-12-08 19:16:03');
INSERT INTO `audit_log` VALUES (134, 'GET', '/users/1', 200, 'lhy', '2019-12-08 19:16:21', '2019-12-08 19:16:39');
INSERT INTO `audit_log` VALUES (135, 'GET', '/users/1', 200, 'lhy', '2019-12-08 19:18:17', '2019-12-08 19:18:22');
INSERT INTO `audit_log` VALUES (136, 'GET', '/users/1', 200, 'lhy', '2019-12-08 19:18:40', '2019-12-08 19:18:52');
INSERT INTO `audit_log` VALUES (137, 'GET', '/users/1', 200, 'lhy', '2019-12-08 19:21:06', '2019-12-08 19:21:23');
INSERT INTO `audit_log` VALUES (138, 'GET', '/users/12', 200, 'lhy', '2019-12-08 19:23:35', '2019-12-08 19:23:43');
INSERT INTO `audit_log` VALUES (139, 'GET', '/error', 500, 'lhy', '2019-12-08 19:23:43', '2019-12-08 19:23:43');
INSERT INTO `audit_log` VALUES (140, 'GET', '/users/12', 500, 'lhy', '2019-12-08 19:46:34', '2019-12-08 19:46:38');
INSERT INTO `audit_log` VALUES (141, 'GET', '/users/12', 500, 'lhy', '2019-12-08 20:50:41', '2019-12-08 20:50:41');
INSERT INTO `audit_log` VALUES (142, 'GET', '/users/1', 200, 'lhy', '2019-12-08 20:50:51', '2019-12-08 20:50:51');
INSERT INTO `audit_log` VALUES (143, 'GET', '/users/1', 200, 'lhy', '2019-12-08 20:51:01', '2019-12-08 20:51:01');
INSERT INTO `audit_log` VALUES (144, 'GET', '/users/1', 200, 'lhy', '2019-12-08 20:52:34', '2019-12-08 20:52:34');
INSERT INTO `audit_log` VALUES (145, 'POST', '/users', 401, NULL, '2019-12-08 20:56:29', '2019-12-08 20:56:29');
INSERT INTO `audit_log` VALUES (146, 'POST', '/users', 401, NULL, '2019-12-08 20:58:52', '2019-12-08 20:58:52');
INSERT INTO `audit_log` VALUES (147, 'POST', '/users', 403, 'lhy', '2019-12-08 20:59:12', '2019-12-08 20:59:12');

-- ----------------------------
-- Table structure for oauth_access_token
-- ----------------------------
DROP TABLE IF EXISTS `oauth_access_token`;
CREATE TABLE `oauth_access_token`  (
  `token_id` varchar(180) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `token` blob NULL,
  `authentication_id` varchar(180) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `user_name` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `client_id` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `authentication` blob NULL,
  `refresh_token` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`authentication_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of oauth_access_token
-- ----------------------------
INSERT INTO `oauth_access_token` VALUES ('7205b480eb7b7f4ecc23460702f1913c', 0xACED0005737200436F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E636F6D6D6F6E2E44656661756C744F4175746832416363657373546F6B656E0CB29E361B24FACE0200064C00156164646974696F6E616C496E666F726D6174696F6E74000F4C6A6176612F7574696C2F4D61703B4C000A65787069726174696F6E7400104C6A6176612F7574696C2F446174653B4C000C72656672657368546F6B656E74003F4C6F72672F737072696E676672616D65776F726B2F73656375726974792F6F61757468322F636F6D6D6F6E2F4F417574683252656672657368546F6B656E3B4C000573636F706574000F4C6A6176612F7574696C2F5365743B4C0009746F6B656E547970657400124C6A6176612F6C616E672F537472696E673B4C000576616C756571007E000578707372001E6A6176612E7574696C2E436F6C6C656374696F6E7324456D7074794D6170593614855ADCE7D002000078707372000E6A6176612E7574696C2E44617465686A81014B597419030000787077080000016E315EAD007870737200256A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C65536574801D92D18F9B80550200007872002C6A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C65436F6C6C656374696F6E19420080CB5EF71E0200014C0001637400164C6A6176612F7574696C2F436F6C6C656374696F6E3B7870737200176A6176612E7574696C2E4C696E6B656448617368536574D86CD75A95DD2A1E020000787200116A6176612E7574696C2E48617368536574BA44859596B8B7340300007870770C000000103F400000000000027400047265616474000577726974657874000662656172657274002431393264323961302D363738382D346231612D626234342D636138336534343264333762, '681928225d72552cc4c0b2e86117cdf0', 'lhy', 'orderApp', 0xACED0005737200416F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E70726F76696465722E4F417574683241757468656E7469636174696F6EBD400B02166252130200024C000D73746F7265645265717565737474003C4C6F72672F737072696E676672616D65776F726B2F73656375726974792F6F61757468322F70726F76696465722F4F4175746832526571756573743B4C00127573657241757468656E7469636174696F6E7400324C6F72672F737072696E676672616D65776F726B2F73656375726974792F636F72652F41757468656E7469636174696F6E3B787200476F72672E737072696E676672616D65776F726B2E73656375726974792E61757468656E7469636174696F6E2E416273747261637441757468656E7469636174696F6E546F6B656ED3AA287E6E47640E0200035A000D61757468656E746963617465644C000B617574686F7269746965737400164C6A6176612F7574696C2F436F6C6C656374696F6E3B4C000764657461696C737400124C6A6176612F6C616E672F4F626A6563743B787000737200266A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C654C697374FC0F2531B5EC8E100200014C00046C6973747400104C6A6176612F7574696C2F4C6973743B7872002C6A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C65436F6C6C656374696F6E19420080CB5EF71E0200014C00016371007E00047870737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000001770400000001737200426F72672E737072696E676672616D65776F726B2E73656375726974792E636F72652E617574686F726974792E53696D706C654772616E746564417574686F7269747900000000000001FE0200014C0004726F6C657400124C6A6176612F6C616E672F537472696E673B787074000A524F4C455F41444D494E7871007E000C707372003A6F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E70726F76696465722E4F41757468325265717565737400000000000000010200075A0008617070726F7665644C000B617574686F72697469657371007E00044C000A657874656E73696F6E7374000F4C6A6176612F7574696C2F4D61703B4C000B726564697265637455726971007E000E4C00077265667265736874003B4C6F72672F737072696E676672616D65776F726B2F73656375726974792F6F61757468322F70726F76696465722F546F6B656E526571756573743B4C000B7265736F7572636549647374000F4C6A6176612F7574696C2F5365743B4C000D726573706F6E7365547970657371007E0014787200386F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E70726F76696465722E426173655265717565737436287A3EA37169BD0200034C0008636C69656E74496471007E000E4C001172657175657374506172616D657465727371007E00124C000573636F706571007E001478707400086F72646572417070737200256A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C654D6170F1A5A8FE74F507420200014C00016D71007E00127870737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F400000000000067708000000080000000374000A6772616E745F7479706574000870617373776F72647400057363706F6574000472656164740008757365726E616D657400036C687978737200256A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C65536574801D92D18F9B80550200007871007E0009737200176A6176612E7574696C2E4C696E6B656448617368536574D86CD75A95DD2A1E020000787200116A6176612E7574696C2E48617368536574BA44859596B8B7340300007870770C000000103F4000000000000274000472656164740005777269746578017371007E0025770C000000103F40000000000000787371007E001A3F40000000000000770800000010000000007870707371007E0025770C000000103F4000000000000174000C6F726465722D736572766572787371007E0025770C000000103F40000000000000787372004F6F72672E737072696E676672616D65776F726B2E73656375726974792E61757468656E7469636174696F6E2E557365726E616D6550617373776F726441757468656E7469636174696F6E546F6B656E00000000000001FE0200024C000B63726564656E7469616C7371007E00054C00097072696E636970616C71007E00057871007E0003017371007E00077371007E000B0000000177040000000171007E000F7871007E0031737200176A6176612E7574696C2E4C696E6B6564486173684D617034C04E5C106CC0FB0200015A000B6163636573734F726465727871007E001A3F400000000000067708000000080000000371007E001C71007E001D71007E001E71007E001F71007E002071007E0021780070737200326F72672E737072696E676672616D65776F726B2E73656375726974792E636F72652E7573657264657461696C732E5573657200000000000001FE0200075A00116163636F756E744E6F6E457870697265645A00106163636F756E744E6F6E4C6F636B65645A001563726564656E7469616C734E6F6E457870697265645A0007656E61626C65644C000B617574686F72697469657371007E00144C000870617373776F726471007E000E4C0008757365726E616D6571007E000E7870010101017371007E0022737200116A6176612E7574696C2E54726565536574DD98509395ED875B0300007870737200466F72672E737072696E676672616D65776F726B2E73656375726974792E636F72652E7573657264657461696C732E5573657224417574686F72697479436F6D70617261746F7200000000000001FE020000787077040000000171007E000F787071007E0021, NULL);

-- ----------------------------
-- Table structure for oauth_approvals
-- ----------------------------
DROP TABLE IF EXISTS `oauth_approvals`;
CREATE TABLE `oauth_approvals`  (
  `userId` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `clientId` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `scope` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `expiresAt` datetime(0) NULL DEFAULT NULL,
  `lastModifiedAt` datetime(0) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for oauth_client_details
-- ----------------------------
DROP TABLE IF EXISTS `oauth_client_details`;
CREATE TABLE `oauth_client_details`  (
  `client_id` varchar(180) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `resource_ids` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `client_secret` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `scope` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `authorized_grant_types` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `web_server_redirect_uri` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `authorities` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `access_token_validity` int(11) NULL DEFAULT NULL,
  `refresh_token_validity` int(11) NULL DEFAULT NULL,
  `additional_information` varchar(4096) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `autoapprove` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`client_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of oauth_client_details
-- ----------------------------
INSERT INTO `oauth_client_details` VALUES ('gateway', 'order-server', '$2a$10$U2QYW9P2F5Q9Eai1CP9px.GPdzWEBFzNXRfjaa9uCIIVyr/yABroC', 'read,write', 'password', NULL, NULL, 3600, NULL, NULL, NULL);
INSERT INTO `oauth_client_details` VALUES ('orderApp', 'order-server', '$2a$10$I/gCU2wH5j.EsOBsKIWfF.zb2D6PvDGwjTWwBHKEp8f5XJLdUwTFO', 'read,write', 'password', NULL, NULL, 3600, NULL, NULL, NULL);
INSERT INTO `oauth_client_details` VALUES ('orderService', 'order-server', '$2a$10$U2QYW9P2F5Q9Eai1CP9px.GPdzWEBFzNXRfjaa9uCIIVyr/yABroC', 'read', 'password', NULL, NULL, 3600, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for oauth_client_token
-- ----------------------------
DROP TABLE IF EXISTS `oauth_client_token`;
CREATE TABLE `oauth_client_token`  (
  `token_id` varchar(180) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `token` blob NULL,
  `authentication_id` varchar(180) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `user_name` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `client_id` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`authentication_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for oauth_code
-- ----------------------------
DROP TABLE IF EXISTS `oauth_code`;
CREATE TABLE `oauth_code`  (
  `code` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `authentication` blob NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for oauth_refresh_token
-- ----------------------------
DROP TABLE IF EXISTS `oauth_refresh_token`;
CREATE TABLE `oauth_refresh_token`  (
  `token_id` varchar(180) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `token` blob NULL,
  `authentication` blob NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for spring_session
-- ----------------------------
DROP TABLE IF EXISTS `spring_session`;
CREATE TABLE `spring_session`  (
  `PRIMARY_ID` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `SESSION_ID` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `CREATION_TIME` bigint(20) NOT NULL,
  `LAST_ACCESS_TIME` bigint(20) NOT NULL,
  `MAX_INACTIVE_INTERVAL` int(11) NOT NULL,
  `EXPIRY_TIME` bigint(20) NOT NULL,
  `PRINCIPAL_NAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`PRIMARY_ID`) USING BTREE,
  UNIQUE INDEX `SPRING_SESSION_IX1`(`SESSION_ID`) USING BTREE,
  INDEX `SPRING_SESSION_IX2`(`EXPIRY_TIME`) USING BTREE,
  INDEX `SPRING_SESSION_IX3`(`PRINCIPAL_NAME`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for spring_session_attributes
-- ----------------------------
DROP TABLE IF EXISTS `spring_session_attributes`;
CREATE TABLE `spring_session_attributes`  (
  `SESSION_PRIMARY_ID` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ATTRIBUTE_NAME` varchar(180) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ATTRIBUTE_BYTES` blob NOT NULL,
  PRIMARY KEY (`SESSION_PRIMARY_ID`, `ATTRIBUTE_NAME`) USING BTREE,
  CONSTRAINT `SPRING_SESSION_ATTRIBUTES_FK` FOREIGN KEY (`SESSION_PRIMARY_ID`) REFERENCES `spring_session` (`PRIMARY_ID`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `username` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '登录用户名',
  `password` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '密码',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `permissions` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '权限',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'lhy', '123', '阳仔', 'r');
INSERT INTO `user` VALUES (2, 'nb', '123', '牛呗', 'rw');

SET FOREIGN_KEY_CHECKS = 1;
