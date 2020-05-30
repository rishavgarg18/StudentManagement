-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 30, 2020 at 05:31 PM
-- Server version: 8.0.20-0ubuntu0.19.10.1
-- PHP Version: 7.2.24-0ubuntu0.18.04.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sms`
--

-- --------------------------------------------------------

--
-- Table structure for table `authtoken_token`
--

CREATE TABLE `authtoken_token` (
  `key` varchar(40) NOT NULL,
  `created` datetime(6) NOT NULL,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int NOT NULL,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add permission', 2, 'add_permission'),
(5, 'Can change permission', 2, 'change_permission'),
(6, 'Can delete permission', 2, 'delete_permission'),
(7, 'Can add group', 3, 'add_group'),
(8, 'Can change group', 3, 'change_group'),
(9, 'Can delete group', 3, 'delete_group'),
(10, 'Can add user', 4, 'add_user'),
(11, 'Can change user', 4, 'change_user'),
(12, 'Can delete user', 4, 'delete_user'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add student detail', 7, 'add_studentdetail'),
(20, 'Can change student detail', 7, 'change_studentdetail'),
(21, 'Can delete student detail', 7, 'delete_studentdetail'),
(22, 'Can add Token', 8, 'add_token'),
(23, 'Can change Token', 8, 'change_token'),
(24, 'Can delete Token', 8, 'delete_token'),
(25, 'Can add user', 9, 'add_customuser'),
(26, 'Can change user', 9, 'change_customuser'),
(27, 'Can delete user', 9, 'delete_customuser'),
(28, 'Can add users', 10, 'add_users'),
(29, 'Can change users', 10, 'change_users'),
(30, 'Can delete users', 10, 'delete_users'),
(31, 'Can add student detail', 11, 'add_studentdetail'),
(32, 'Can change student detail', 11, 'change_studentdetail'),
(33, 'Can delete student detail', 11, 'delete_studentdetail'),
(34, 'Can add query', 12, 'add_query'),
(35, 'Can change query', 12, 'change_query'),
(36, 'Can delete query', 12, 'delete_query');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$100000$41bm7bUFwoYD$1F+T3gdd7hLbZQMR5sKqM1Q80fJ5mP153De5tL2gwUI=', '2020-05-17 05:46:42.978628', 1, 'rishav', '', '', '', 1, 1, '2020-05-17 05:46:29.409862');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(8, 'authtoken', 'token'),
(5, 'contenttypes', 'contenttype'),
(10, 'login', 'users'),
(12, 'query', 'query'),
(6, 'sessions', 'session'),
(7, 'sms', 'studentdetail'),
(11, 'studentdetails', 'studentdetail'),
(9, 'users', 'customuser');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-05-12 09:05:40.284334'),
(2, 'auth', '0001_initial', '2020-05-12 09:06:02.564999'),
(3, 'admin', '0001_initial', '2020-05-12 09:06:08.550746'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-05-12 09:06:09.055628'),
(5, 'contenttypes', '0002_remove_content_type_name', '2020-05-12 09:06:13.036742'),
(6, 'auth', '0002_alter_permission_name_max_length', '2020-05-12 09:06:15.312411'),
(7, 'auth', '0003_alter_user_email_max_length', '2020-05-12 09:06:15.656225'),
(8, 'auth', '0004_alter_user_username_opts', '2020-05-12 09:06:15.829429'),
(9, 'auth', '0005_alter_user_last_login_null', '2020-05-12 09:06:17.976749'),
(10, 'auth', '0006_require_contenttypes_0002', '2020-05-12 09:06:18.170827'),
(11, 'auth', '0007_alter_validators_add_error_messages', '2020-05-12 09:06:18.336515'),
(12, 'auth', '0008_alter_user_username_max_length', '2020-05-12 09:06:23.348455'),
(13, 'auth', '0009_alter_user_last_name_max_length', '2020-05-12 09:06:25.349029'),
(14, 'sessions', '0001_initial', '2020-05-12 09:06:27.459278'),
(15, 'sms', '0001_initial', '2020-05-15 14:56:03.825459'),
(16, 'users', '0001_initial', '2020-05-17 06:19:29.837928'),
(17, 'authtoken', '0001_initial', '2020-05-17 06:19:32.836075'),
(18, 'authtoken', '0002_auto_20160226_1747', '2020-05-17 06:19:35.299012'),
(19, 'login', '0001_initial', '2020-05-18 06:05:51.501253'),
(20, 'login', '0002_users_id_type', '2020-05-18 06:10:39.987359'),
(21, 'studentdetails', '0001_initial', '2020-05-22 04:56:03.902420'),
(22, 'studentdetails', '0002_studentdetail_status', '2020-05-22 05:12:17.292067'),
(23, 'query', '0001_initial', '2020-05-29 04:56:51.620248'),
(24, 'query', '0002_auto_20200529_0459', '2020-05-29 04:59:22.489671');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('5j6zmmx4qfm1k67j39avoxz2raqv960t', 'YzJmNmEyNWMwMzhjYzMxOTYzYWIzOGM2YzQ4YWIyMDMyNzRkZDkzMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhZWNkMTFmMjEzNWUxZTc2NGI0MGEzZDQ4NGEyYzMyMGZkZGMyNmZiIn0=', '2020-05-31 05:46:43.264533');

-- --------------------------------------------------------

--
-- Table structure for table `login_users`
--

CREATE TABLE `login_users` (
  `id` int NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `id_type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `login_users`
--

INSERT INTO `login_users` (`id`, `username`, `password`, `id_type`) VALUES
(1, 'test', 'test', 'teacher'),
(3, 'test2', 'test', 'teacher'),
(4, 'pc.12345678', 'pc', 'student'),
(5, 'rishav.1900290110077', 'rishav', 'student'),
(6, 'sammer.1900290110078', 'sammer', 'student'),
(7, 'saksham.35', 'saksham', 'student'),
(8, 'Harsh.87', 'Harsh', 'student'),
(9, 'Vishal.12', 'Vishal', 'student');

-- --------------------------------------------------------

--
-- Table structure for table `query_query`
--

CREATE TABLE `query_query` (
  `id` int NOT NULL,
  `query` varchar(500) NOT NULL,
  `status` varchar(100) NOT NULL,
  `date` datetime(6) NOT NULL,
  `answer` varchar(1000) DEFAULT NULL,
  `student_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `query_query`
--

INSERT INTO `query_query` (`id`, `query`, `status`, `date`, `answer`, `student_id`) VALUES
(1, 'testquery', 'DONE', '2020-05-29 05:11:51.699061', 'testqueryanswer', 19),
(2, 'testquery', 'PENDING', '2020-05-29 05:15:40.088035', NULL, 19),
(3, 'testquery', 'PENDING', '2020-05-29 05:18:58.132332', NULL, 21),
(4, 'testquery1', 'DONE', '2020-05-29 05:19:07.270970', 'testquery2answer', 21),
(5, 'testquery2', 'PENDING', '2020-05-29 17:21:37.820089', NULL, 21),
(6, 'testquery3', 'PENDING', '2020-05-29 17:22:37.075426', NULL, 19),
(7, 'testquery4', 'PENDING', '2020-05-29 17:23:03.725843', NULL, 20),
(8, 'testquery6', 'DONE', '2020-05-29 17:23:31.748635', 'answerlast', 19);

-- --------------------------------------------------------

--
-- Table structure for table `studentdetails_studentdetail`
--

CREATE TABLE `studentdetails_studentdetail` (
  `id` int NOT NULL,
  `user_name` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `first_name` varchar(200) NOT NULL,
  `last_name` varchar(200) NOT NULL,
  `roll_no` varchar(200) NOT NULL,
  `father_name` varchar(200) NOT NULL,
  `email` varchar(100) NOT NULL,
  `section` varchar(50) NOT NULL,
  `branch` varchar(200) NOT NULL,
  `phone_no` varchar(200) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `studentdetails_studentdetail`
--

INSERT INTO `studentdetails_studentdetail` (`id`, `user_name`, `password`, `first_name`, `last_name`, `roll_no`, `father_name`, `email`, `section`, `branch`, `phone_no`, `status`) VALUES
(19, 'pc.12345678', 'pc', 'pc', 'lastanem', '12345678', 'pcfather', 'pc@gmail.com', 'd', 'it', '1234567890', 'Deactive'),
(20, 'rishav.1900290110077', 'rishav', 'rishav', 'garg', '1900290110077', 'tarun agarwal', 'rgr@gmail.co', 'c', 'CSI', '1234567890', 'Active'),
(21, 'sammer.1900290110078', 'sammer', 'sammer', 'verma', '1900290110078', 'Pankaj verma', 'sameer@gmail.com', 'X', 'ECE', '9897654321', 'Active'),
(22, 'saksham.35', 'saksham', 'saksham', 'sahu', '35', 'pankaj', 'saksham@gmail.co', 'D', 'CSI', '1234567890', 'Active'),
(23, 'Harsh.87', 'Harsh', 'Harsh', 'Verma', '87', 'TRIPATHI', 'harsh@gmail.com', 'E', 'ECE', '1234567890', 'Active'),
(24, 'Vishal.12', 'Vishal', 'Vishal', 'singh', '12', 'Sameer', 'vishal@gmail.com', 'W', 'ME', '1234563332', 'Active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authtoken_token`
--
ALTER TABLE `authtoken_token`
  ADD PRIMARY KEY (`key`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `login_users`
--
ALTER TABLE `login_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `query_query`
--
ALTER TABLE `query_query`
  ADD PRIMARY KEY (`id`),
  ADD KEY `query_query_student_id_11fa5ddc_fk_studentde` (`student_id`);

--
-- Indexes for table `studentdetails_studentdetail`
--
ALTER TABLE `studentdetails_studentdetail`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `login_users`
--
ALTER TABLE `login_users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `query_query`
--
ALTER TABLE `query_query`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `studentdetails_studentdetail`
--
ALTER TABLE `studentdetails_studentdetail`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `authtoken_token`
--
ALTER TABLE `authtoken_token`
  ADD CONSTRAINT `authtoken_token_user_id_35299eff_fk_users_customuser_id` FOREIGN KEY (`user_id`) REFERENCES `users_customuser` (`id`);

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `query_query`
--
ALTER TABLE `query_query`
  ADD CONSTRAINT `query_query_student_id_11fa5ddc_fk_studentde` FOREIGN KEY (`student_id`) REFERENCES `studentdetails_studentdetail` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
