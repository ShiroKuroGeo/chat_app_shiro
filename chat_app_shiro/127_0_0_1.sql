-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 04, 2023 at 06:11 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bff101`
--
CREATE DATABASE IF NOT EXISTS `bff101` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bff101`;

-- --------------------------------------------------------

--
-- Table structure for table `assignment_no.`
--

CREATE TABLE `assignment_no.` (
  `stud_id` int(11) DEFAULT NULL,
  `Assignment` varchar(25) DEFAULT NULL,
  `Subject` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `stud_id` int(11) NOT NULL,
  `fname` varchar(25) DEFAULT NULL,
  `lname` varchar(25) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `address` varchar(25) DEFAULT NULL,
  `bday` date DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `course` varchar(10) DEFAULT 'NULL'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`stud_id`, `fname`, `lname`, `gender`, `address`, `bday`, `number`, `course`) VALUES
(1, 'John', 'Doe', 'Male', 'CPC', '2023-10-10', 2147483647, 'BSIT'),
(2, 'Uno', 'Dos', 'Male', 'CPC', '2011-11-12', 2147483647, 'BSIT');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`stud_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `stud_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `chat_db`
--
CREATE DATABASE IF NOT EXISTS `chat_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `chat_db`;

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `message_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `message_text` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Database: `databaseuser`
--
CREATE DATABASE IF NOT EXISTS `databaseuser` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `databaseuser`;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `age` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
--
-- Database: `dungligan`
--
CREATE DATABASE IF NOT EXISTS `dungligan` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `dungligan`;

-- --------------------------------------------------------

--
-- Table structure for table `tblassignment`
--

CREATE TABLE `tblassignment` (
  `ass_id` int(11) NOT NULL,
  `assignment` int(11) DEFAULT NULL,
  `student` int(11) DEFAULT NULL,
  `deadline_date` date DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `kaya pa?` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tblassignment`
--

INSERT INTO `tblassignment` (`ass_id`, `assignment`, `student`, `deadline_date`, `score`, `kaya pa?`) VALUES
(15, 6, 12, '2023-10-11', 43, NULL),
(16, 7, 12, '2023-10-20', 100, NULL),
(17, 7, 9, '2023-10-04', 75, NULL),
(18, 10, 14, '2023-10-03', 52, NULL),
(19, 9, 9, '2023-11-05', 43, NULL),
(20, 11, 9, '2023-11-07', 22, NULL),
(21, 11, 14, '2023-11-25', 25, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblassignmentlist`
--

CREATE TABLE `tblassignmentlist` (
  `ass_no` int(11) NOT NULL,
  `ass_title` varchar(250) NOT NULL,
  `total_score` int(11) NOT NULL,
  `subject` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tblassignmentlist`
--

INSERT INTO `tblassignmentlist` (`ass_no`, `ass_title`, `total_score`, `subject`) VALUES
(6, 'ACTIVITY 1', 50, 10),
(7, 'FINALS', 100, 9),
(8, 'ACTIVITY 2', 50, 7),
(9, 'ACTIVITY 3', 50, 11),
(10, 'ACTIVITY 4', 50, 7),
(11, 'NEW', 58, 10);

-- --------------------------------------------------------

--
-- Table structure for table `tblstudent`
--

CREATE TABLE `tblstudent` (
  `stud_id` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `age` int(11) NOT NULL,
  `section` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tblstudent`
--

INSERT INTO `tblstudent` (`stud_id`, `fname`, `lname`, `gender`, `age`, `section`) VALUES
(9, 'latrell', 'Ligan', 'male', 29, '3-A'),
(11, 'bernie', 'dungog', 'male', 32, '4-A'),
(12, 'bram', 'vicada', 'male', 47, 'BSIT -3A'),
(14, 'crissy', 'g.', 'femboy', 43, 'BSIT-3A'),
(15, 'LAT', 'REL', 'MALE', 23, '3A');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubject`
--

CREATE TABLE `tblsubject` (
  `subjectId` int(11) NOT NULL,
  `subject_title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tblsubject`
--

INSERT INTO `tblsubject` (`subjectId`, `subject_title`) VALUES
(7, 'ENGLISH'),
(8, 'MATH'),
(9, 'ESP'),
(10, 'SCIENCE'),
(11, 'IM2'),
(13, 'BSRS');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblassignment`
--
ALTER TABLE `tblassignment`
  ADD PRIMARY KEY (`ass_id`) USING BTREE,
  ADD KEY `assignment` (`assignment`) USING BTREE,
  ADD KEY `student` (`student`) USING BTREE;

--
-- Indexes for table `tblassignmentlist`
--
ALTER TABLE `tblassignmentlist`
  ADD PRIMARY KEY (`ass_no`) USING BTREE;

--
-- Indexes for table `tblstudent`
--
ALTER TABLE `tblstudent`
  ADD PRIMARY KEY (`stud_id`) USING BTREE;

--
-- Indexes for table `tblsubject`
--
ALTER TABLE `tblsubject`
  ADD PRIMARY KEY (`subjectId`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblassignment`
--
ALTER TABLE `tblassignment`
  MODIFY `ass_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tblassignmentlist`
--
ALTER TABLE `tblassignmentlist`
  MODIFY `ass_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tblstudent`
--
ALTER TABLE `tblstudent`
  MODIFY `stud_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tblsubject`
--
ALTER TABLE `tblsubject`
  MODIFY `subjectId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tblassignment`
--
ALTER TABLE `tblassignment`
  ADD CONSTRAINT `tblassignment_ibfk_1` FOREIGN KEY (`assignment`) REFERENCES `tblassignmentlist` (`ass_no`),
  ADD CONSTRAINT `tblassignment_ibfk_2` FOREIGN KEY (`student`) REFERENCES `tblstudent` (`stud_id`);
--
-- Database: `im2_3b`
--
CREATE DATABASE IF NOT EXISTS `im2_3b` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `im2_3b`;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `stud_id` int(11) NOT NULL,
  `fname` varchar(25) DEFAULT NULL,
  `lname` varbinary(25) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `course` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`stud_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `stud_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Database: `im2_3d`
--
CREATE DATABASE IF NOT EXISTS `im2_3d` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `im2_3d`;

-- --------------------------------------------------------

--
-- Table structure for table `assignments`
--

CREATE TABLE `assignments` (
  `assID` int(11) NOT NULL,
  `assName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `assignments`
--

INSERT INTO `assignments` (`assID`, `assName`) VALUES
(1, 'Article Summary'),
(2, 'Poetry Analysis'),
(3, 'Reaction Paper');

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE `grades` (
  `stud_id` int(11) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `prelim` float NOT NULL,
  `midterm` float NOT NULL,
  `semi_final` float NOT NULL,
  `final` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `studID` int(11) NOT NULL,
  `studName` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`studID`, `studName`) VALUES
(1, 'Jeff Smith'),
(2, 'Nancy Jones'),
(3, 'Jane Scott');

-- --------------------------------------------------------

--
-- Table structure for table `student_list`
--

CREATE TABLE `student_list` (
  `stud_id` int(11) NOT NULL,
  `fname` varchar(255) DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `gender` varchar(6) DEFAULT NULL,
  `age` int(11) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `nationality` varchar(255) DEFAULT NULL,
  `religion` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_list`
--

INSERT INTO `student_list` (`stud_id`, `fname`, `lname`, `gender`, `age`, `address`, `nationality`, `religion`) VALUES
(1, 'John', 'Paolo', 'Male', 20, '123 Main St', 'Cordova', 'Catholic'),
(3, 'Johnmil', 'Rabago', 'Male', 26, 'Carajay', 'Gun-Ob', 'Catholic'),
(4, 'JV Kim', 'Endona', 'New Ge', 25, 'New Address', 'New Nationality', 'New Religion'),
(5, 'James', 'Nemenzo', 'Male', 22, 'Cordova', 'Ibabao', 'Catholic'),
(6, 'Rachiel', 'Ravina', 'Female', 22, 'Gun-ob', 'Lapu-Lapu', 'INC'),
(7, 'Jason', 'Javar', 'Male', 12, 'Gun-ob', 'Lapu-Lapu', 'INC'),
(8, 'Lebron', 'James', 'Male', 34, 'US', 'Lapu-Lapu', 'INC'),
(9, 'Stephen', 'Curry', 'Male', 34, 'New York', 'Lapu-Lapu', 'INC'),
(10, 'Jamela', 'Kim', 'Female', 14, 'Japan', 'Lapu-Lapu', 'INC'),
(11, 'Sabaw', 'Koo', 'Male', 67, 'Manila', 'Lapu-Lapu', 'INC');

-- --------------------------------------------------------

--
-- Table structure for table `stud_table`
--

CREATE TABLE `stud_table` (
  `name` varchar(50) NOT NULL,
  `ass1` varchar(255) NOT NULL,
  `ass2` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stud_table`
--

INSERT INTO `stud_table` (`name`, `ass1`, `ass2`) VALUES
('Jeff Smith', 'Article Summary', 'Poetry Analysis'),
('Nancy Jones', 'Article Summary', 'Reaction Paper'),
('Jane Scott', 'Article Summary', 'Poetry Analysis'),
('John Paolok', 'what is hatdog', 'what is papaya');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assignments`
--
ALTER TABLE `assignments`
  ADD PRIMARY KEY (`assID`);

--
-- Indexes for table `grades`
--
ALTER TABLE `grades`
  ADD KEY `FK_grades_student_list_stud_id` (`stud_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`studID`);

--
-- Indexes for table `student_list`
--
ALTER TABLE `student_list`
  ADD PRIMARY KEY (`stud_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assignments`
--
ALTER TABLE `assignments`
  MODIFY `assID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `studID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `student_list`
--
ALTER TABLE `student_list`
  MODIFY `stud_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `grades`
--
ALTER TABLE `grades`
  ADD CONSTRAINT `FK_grades_student_list_stud_id` FOREIGN KEY (`stud_id`) REFERENCES `student_list` (`stud_id`) ON DELETE CASCADE ON UPDATE NO ACTION;
--
-- Database: `im_3b`
--
CREATE DATABASE IF NOT EXISTS `im_3b` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `im_3b`;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `stud_id` int(11) NOT NULL,
  `fname` varchar(25) DEFAULT NULL,
  `lname` varchar(25) DEFAULT NULL,
  `gender` varchar(25) DEFAULT NULL,
  `course` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_assignment2`
--

CREATE TABLE `tbl_assignment2` (
  `assignment_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`stud_id`);

--
-- Indexes for table `tbl_assignment2`
--
ALTER TABLE `tbl_assignment2`
  ADD PRIMARY KEY (`assignment_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `stud_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_assignment2`
--
ALTER TABLE `tbl_assignment2`
  MODIFY `assignment_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"chat_db\",\"table\":\"message\"},{\"db\":\"chat_db\",\"table\":\"user\"},{\"db\":\"\",\"table\":\"users\"},{\"db\":\"sample\",\"table\":\"users\"},{\"db\":\"samplenode\",\"table\":\"friend\"},{\"db\":\"samplenode\",\"table\":\"relationchat\"},{\"db\":\"samplenode\",\"table\":\"users\"},{\"db\":\"sampleipt\",\"table\":\"user\"},{\"db\":\"im2_3d\",\"table\":\"studass\"},{\"db\":\"im2_3d\",\"table\":\"stud_table\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2023-11-04 05:11:28', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `reservation`
--
CREATE DATABASE IF NOT EXISTS `reservation` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `reservation`;

-- --------------------------------------------------------

--
-- Table structure for table `assignment`
--

CREATE TABLE `assignment` (
  `id` int(11) DEFAULT NULL,
  `assignments` varchar(255) NOT NULL DEFAULT 'NULL',
  `assignment_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `assignment_list`
--

CREATE TABLE `assignment_list` (
  `assignment_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `deadline` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `fname` varchar(50) DEFAULT 'NULL',
  `lname` varchar(255) DEFAULT 'NULL'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `fname`, `lname`) VALUES
(0, 'Mark Angelou', 'Jamandre');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assignment`
--
ALTER TABLE `assignment`
  ADD PRIMARY KEY (`assignment_id`,`assignments`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assignment`
--
ALTER TABLE `assignment`
  MODIFY `assignment_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `upholster`
--
CREATE DATABASE IF NOT EXISTS `upholster` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `upholster`;

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `address_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `address_region` varchar(225) NOT NULL,
  `address_province` varchar(225) NOT NULL,
  `address_city` varchar(225) NOT NULL,
  `address_barangay` varchar(225) NOT NULL,
  `address_street` varchar(225) NOT NULL,
  `address_zipCode` varchar(225) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`address_id`, `user_id`, `address_region`, `address_province`, `address_city`, `address_barangay`, `address_street`, `address_zipCode`, `created_at`, `updated_at`) VALUES
(1, 2, '123', '123', '123', '123', '123', '123', '2023-10-14 05:39:29', '2023-10-14 05:39:29');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `cart_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantityCart` int(11) NOT NULL DEFAULT 1,
  `statusCart` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`cart_id`, `user_id`, `product_id`, `quantityCart`, `statusCart`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 1, 1, '2023-10-14 05:39:05', '2023-10-14 05:39:05'),
(2, 2, 1, 1, 1, '2023-10-14 05:39:11', '2023-10-14 05:39:11');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `address_id` int(11) NOT NULL,
  `order_quantity` int(11) NOT NULL,
  `order_status` int(11) NOT NULL DEFAULT 3 COMMENT '1 is approve, 2 is cancelled, 3 is pending.',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `product_id`, `address_id`, `order_quantity`, `order_status`, `created_at`, `updated_at`) VALUES
(68, 2, 1, 1, 1, 1, '2023-10-14 05:40:14', '2023-10-14 05:39:38');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_picture` text NOT NULL,
  `productName` varchar(125) NOT NULL,
  `productDescription` text NOT NULL,
  `productPrice` int(11) NOT NULL,
  `productQuantity` int(11) NOT NULL,
  `productStatus` int(11) NOT NULL DEFAULT 1 COMMENT '0 is Recommended,  1 is displayed, 2 is Not displayed',
  `productSales` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_picture`, `productName`, `productDescription`, `productPrice`, `productQuantity`, `productStatus`, `productSales`, `created_at`, `updated_at`) VALUES
(1, 'asdf.jpg', 'Animal ka glen', 'This shit is shit.', 1, 11, 0, 1, '2023-10-14 05:37:23', '2023-10-14 05:37:23');

-- --------------------------------------------------------

--
-- Table structure for table `recommendations`
--

CREATE TABLE `recommendations` (
  `id` int(11) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phoneNumber` varchar(16) DEFAULT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `recommendations`
--

INSERT INTO `recommendations` (`id`, `fullname`, `email`, `phoneNumber`, `message`, `created_at`, `updated_at`) VALUES
(1, 'George Alfeser', 'inocgeorgealfeser@gmail.com', '09484750030', 'My tupad is so boang that makes me want to kill this shit.\r\nHelajldihgasgdbais nhgkabdoiaj sdgvas dnahkg da SPodjhasbdasdn ', '2023-10-14 05:36:10', '2023-10-14 05:36:10');

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

CREATE TABLE `request` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `address_id` int(11) NOT NULL,
  `Types` varchar(125) NOT NULL,
  `color` varchar(125) NOT NULL,
  `message` text NOT NULL,
  `paymentMethod` varchar(125) NOT NULL,
  `status` int(11) NOT NULL COMMENT '1 is not done, 2 is done',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `requestform`
--

CREATE TABLE `requestform` (
  `requestForm_id` int(11) NOT NULL,
  `Types` varchar(100) NOT NULL,
  `Color` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `transac_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `address_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `transac_quantity` int(11) NOT NULL,
  `transac_status` int(11) NOT NULL COMMENT '1 is to be delivered, 2 is delivered',
  `date_delivery` varchar(110) DEFAULT NULL,
  `date_delivered` varchar(112) DEFAULT NULL COMMENT 'Only the employee who delivered the transactions.',
  `date_deleted` varchar(112) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`transac_id`, `customer_id`, `employee_id`, `product_id`, `address_id`, `created_at`, `transac_quantity`, `transac_status`, `date_delivery`, `date_delivered`, `date_deleted`) VALUES
(1, 2, 1, 1, 1, '2023-10-14 05:40:14', 1, 1, '2023-10-20 07:40:14', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` text DEFAULT NULL,
  `email` varchar(125) NOT NULL,
  `phone` bigint(14) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `code` text NOT NULL,
  `role` int(11) NOT NULL DEFAULT 3,
  `profilePicture` text NOT NULL DEFAULT 'DefualtProfile.png',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `firstname`, `lastname`, `username`, `password`, `email`, `phone`, `status`, `code`, `role`, `profilePicture`, `created_at`, `updated_at`) VALUES
(1, 'George Alfeser', 'Inoc', 'Admin', '202cb962ac59075b964b07152d234b70', 'inocgeorgealfeser@gmail.com', 9484750030, 1, 'O85jI6YGgz', 1, 'DefualtProfile.png', NULL, '2023-07-11 05:24:24'),
(2, 'Glen', 'amaw', 'glenboang123', 'f5bb0c8de146c67b44babbf4e6584cc0', 'glenamaw@gmail.com', 9484750030, 1, 'E3WzvDVdvn', 3, 'AGAW.jpg', NULL, '2023-10-14 05:38:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`address_id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `recommendations`
--
ALTER TABLE `recommendations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `request`
--
ALTER TABLE `request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `requestform`
--
ALTER TABLE `requestform`
  ADD PRIMARY KEY (`requestForm_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`transac_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `recommendations`
--
ALTER TABLE `recommendations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `request`
--
ALTER TABLE `request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `requestform`
--
ALTER TABLE `requestform`
  MODIFY `requestForm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `transac_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `userdatabase`
--
CREATE DATABASE IF NOT EXISTS `userdatabase` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `userdatabase`;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) DEFAULT NULL,
  `firstname` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
