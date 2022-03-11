-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 11, 2022 at 04:45 AM
-- Server version: 5.7.24
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e-learn`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(10) NOT NULL,
  `admin_name` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `user_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `admin_name`, `email`, `user_id`) VALUES
(1, 'Admin 1', 'admin1@gmail.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `id` int(10) NOT NULL,
  `class_name` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `nis` int(10) NOT NULL,
  `student_name` varchar(50) NOT NULL,
  `student_address` varchar(255) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `class_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `user_id`, `nis`, `student_name`, `student_address`, `phone_number`, `class_id`) VALUES
(1, 3, 1234567890, 'Student 1', 'Home 1', '081234567890', 1);

-- --------------------------------------------------------

--
-- Table structure for table `survey_question`
--

CREATE TABLE `survey_question` (
  `id` int(10) NOT NULL,
  `question` varchar(255) NOT NULL,
  `category` enum('1','2') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `survey_question`
--

INSERT INTO `survey_question` (`id`, `question`, `category`) VALUES
(1, 'Saya merasa senang mengikuti pelajaran biologi selama pembelajaran daring', '1'),
(2, 'Saya tidak pernah mengeluh jika ada tugas biologi', '1'),
(3, 'Saya sering hadir pada saat pelajaran biologi', '1'),
(4, 'Apabila mengalami kesulitan dalam memahami materi, saya bertanya.', '1'),
(5, 'Tugas yang diberikan guru membuat saya semakin tertatik dengan biologi.', '1'),
(6, 'Ketika di rumah saya memilih bermain daripada belajar biologi.', '2'),
(7, 'Tanpa ada yang menyuruh, saya belajar biologi sendiri di rumah. ', '2'),
(8, 'Saya tidak merasa kesulitan dalam memahami materi-materi biologi', '2'),
(9, 'Saat ulangan saya sering mendapat nilai > 75', '2'),
(10, 'Saya pernah mengikuti olimpiade biologi', '2');

-- --------------------------------------------------------

--
-- Table structure for table `survey_result`
--

CREATE TABLE `survey_result` (
  `id` int(10) NOT NULL,
  `level_result` int(2) NOT NULL,
  `student_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `teacher_name` varchar(50) NOT NULL,
  `teacher_address` varchar(255) NOT NULL,
  `nip` varchar(20) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `class_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `user_id`, `teacher_name`, `teacher_address`, `nip`, `phone_number`, `email`, `class_id`) VALUES
(1, 2, 'Teacher 1', 'Home 1', '199292921992021020', '081234567890', 'teacher1@gmail.com', 1),
(2, 18, 'Guru 1', 'Alamat Guru 1', '12345678901', '0812309814908', '', 3);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `login` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level_user` enum('1','2','3') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `login`, `password`, `level_user`) VALUES
(1, 'admin1@gmail.com', '$2a$10$QGFZIfjT05AN6pUJzhhicenl0d/49i6aNiz0tUUhbywdfiJGs1khe', '1'),
(2, '199292921992021020', '$2a$10$Rwx0mbwGA6.PYiqc.S1M/.rnj.AqKnyLAQoIA44u6BrYjXGOKfuOu', '2'),
(3, '1234567890', '$2a$10$mbwXyaaRoPJ6zN/4DbGvh.e/G7cGSeOSQvJgHiOgRZzSMbvbE7tVy', '3'),
(18, '12345678901', '$2y$10$SMSG35O5Opb1gkPknsZvdOTbY70PKRLmnMgSA9BNqIJF5Cp1wqCgG', '2'),
(19, '512047310', '$2y$10$R86vsvcnwS/dpUlKSGjeBefMnmXU2dS5s0otVC0XApmMEQQ.eBjQ.', '2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `survey_question`
--
ALTER TABLE `survey_question`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `survey_result`
--
ALTER TABLE `survey_result`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `survey_question`
--
ALTER TABLE `survey_question`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `survey_result`
--
ALTER TABLE `survey_result`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;