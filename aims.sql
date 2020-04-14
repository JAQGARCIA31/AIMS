-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 14, 2020 at 01:01 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aims`
--

-- --------------------------------------------------------

--
-- Table structure for table `college`
--

CREATE TABLE `college` (
  `college_id` int(16) NOT NULL,
  `college_nme` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_id` varchar(255) NOT NULL,
  `course_nme` varchar(255) NOT NULL,
  `yrlvl_reqrmnt` varchar(255) NOT NULL,
  `pre_requisite` varchar(255) NOT NULL,
  `co-requisite` varchar(255) NOT NULL,
  `units` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `course_nme`, `yrlvl_reqrmnt`, `pre_requisite`, `co-requisite`, `units`) VALUES
('ENGL 0', 'English Plus', 'First Year', '', '', '3'),
('FIL 1-11', 'Komunikasyon sa Akademikong Filipino', 'First Year', '', '', '3'),
('IT 111', 'IT Fundamentals', 'First Year', '', '', '2'),
('IT 111L', 'IT Fundamentals 1 Lab', 'First Year', '', '', '1'),
('IT 112', 'Computer Programming 1', 'First Year', '', '', '2'),
('IT 112L', 'Computer Programming 1 Lab', 'First Year', '', '', '1'),
('MAT 111', 'College Algebra', 'First Year', '', '', '3'),
('MAT 112', 'Plane & Spherical Trigonometry', 'First Year', '', '', '3'),
('NSTP 1', 'National Service Training Program 1', 'First Year', '', '', '3'),
('PE 1', 'Physical Fitness', 'First Year', '', '', '2'),
('POL SCI 2', 'Politics & Governance(w/ Phil. Constitution)', 'First Year', '', '', '3');

-- --------------------------------------------------------

--
-- Table structure for table `course_crediting_transno`
--

CREATE TABLE `course_crediting_transno` (
  `stud_id` varchar(255) NOT NULL,
  `college_id` varchar(255) NOT NULL,
  `prog_id` varchar(255) NOT NULL,
  `yr_lvl` varchar(255) NOT NULL,
  `acad_yr_term` varchar(255) NOT NULL,
  `former_school` varchar(255) NOT NULL,
  `curr_id` varchar(255) NOT NULL,
  `course_id` varchar(255) NOT NULL,
  `total_units` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `course_sub_transno`
--

CREATE TABLE `course_sub_transno` (
  `stud_id` varchar(255) NOT NULL,
  `college_id` varchar(255) NOT NULL,
  `prog_id` varchar(255) NOT NULL,
  `yr_lvl` varchar(255) NOT NULL,
  `acad_yr` varchar(255) NOT NULL,
  `course_id` varchar(255) NOT NULL,
  `total-units` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `curriculum`
--

CREATE TABLE `curriculum` (
  `curr_id` int(16) NOT NULL,
  `prog_id` varchar(255) NOT NULL,
  `course_id` varchar(255) NOT NULL,
  `sem` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `dept_id` varchar(255) NOT NULL,
  `dept_nme` varchar(255) NOT NULL,
  `college_id` int(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `grade_bank`
--

CREATE TABLE `grade_bank` (
  `stud_id` varchar(255) NOT NULL,
  `course_id` varchar(255) NOT NULL,
  `grade` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `overload_transno`
--

CREATE TABLE `overload_transno` (
  `stud_id` varchar(255) NOT NULL,
  `college_id` varchar(255) NOT NULL,
  `prog_id` varchar(255) NOT NULL,
  `yr_lvl` varchar(255) NOT NULL,
  `acad_yr_term` varchar(255) NOT NULL,
  `course_id` varchar(255) NOT NULL,
  `allowed_units` int(6) NOT NULL,
  `total_units` int(6) NOT NULL,
  `reason` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `program`
--

CREATE TABLE `program` (
  `prog_id` varchar(255) NOT NULL,
  `prog_nme` varchar(255) NOT NULL,
  `college_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `shiftprog_transno`
--

CREATE TABLE `shiftprog_transno` (
  `stud_id` varchar(255) NOT NULL,
  `prog_id` varchar(255) NOT NULL,
  `yr_lvl` varchar(255) NOT NULL,
  `acad_yr_term` varchar(255) NOT NULL,
  `dept_id` varchar(255) NOT NULL,
  `college_id` varchar(255) NOT NULL,
  `reason` text NOT NULL,
  `justify` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `student_info`
--

CREATE TABLE `student_info` (
  `stud_id` varchar(255) NOT NULL,
  `s_fnme` varchar(255) NOT NULL,
  `s_mnme` varchar(255) NOT NULL,
  `s_lnme` varchar(255) NOT NULL,
  `prog_id` varchar(255) NOT NULL,
  `sem_admtted` varchar(255) NOT NULL,
  `yr_admtted` varchar(255) NOT NULL,
  `yrlvl_admtted` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_info`
--

INSERT INTO `student_info` (`stud_id`, `s_fnme`, `s_mnme`, `s_lnme`, `prog_id`, `sem_admtted`, `yr_admtted`, `yrlvl_admtted`) VALUES
('1414205951', 'Judy Anne', 'Quirante', 'Garcia', 'BSIT', '1st Semester', '2016', '2nd Year');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `college`
--
ALTER TABLE `college`
  ADD PRIMARY KEY (`college_id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `course_crediting_transno`
--
ALTER TABLE `course_crediting_transno`
  ADD PRIMARY KEY (`stud_id`);

--
-- Indexes for table `course_sub_transno`
--
ALTER TABLE `course_sub_transno`
  ADD PRIMARY KEY (`stud_id`);

--
-- Indexes for table `curriculum`
--
ALTER TABLE `curriculum`
  ADD PRIMARY KEY (`curr_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`dept_id`);

--
-- Indexes for table `grade_bank`
--
ALTER TABLE `grade_bank`
  ADD PRIMARY KEY (`stud_id`);

--
-- Indexes for table `overload_transno`
--
ALTER TABLE `overload_transno`
  ADD PRIMARY KEY (`stud_id`);

--
-- Indexes for table `program`
--
ALTER TABLE `program`
  ADD PRIMARY KEY (`prog_id`);

--
-- Indexes for table `shiftprog_transno`
--
ALTER TABLE `shiftprog_transno`
  ADD PRIMARY KEY (`stud_id`);

--
-- Indexes for table `student_info`
--
ALTER TABLE `student_info`
  ADD PRIMARY KEY (`stud_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
