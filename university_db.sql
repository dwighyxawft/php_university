-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2024 at 10:05 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `university_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `course_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `code` varchar(19) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`course_id`, `department_id`, `staff_id`, `name`, `description`, `code`, `image`) VALUES
(1, 1, 1, 'Quantum Mechanics', 'An in-depth course on the principles of quantum mechanics.', 'PHY101', 'https://via.placeholder.com/300x200'),
(2, 1, 2, 'Thermodynamics', 'Study of the laws governing heat and energy transfer.', 'PHY102', 'https://via.placeholder.com/300x200'),
(3, 1, 1, 'Electromagnetism', 'Course on the theory and application of electromagnetic fields.', 'PHY103', 'https://via.placeholder.com/300x200'),
(4, 1, 3, 'Classical Mechanics', 'Fundamental principles of motion and forces.', 'PHY104', 'https://via.placeholder.com/300x200'),
(5, 1, 2, 'Statistical Physics', 'Introduction to statistical methods in physics.', 'PHY105', 'https://via.placeholder.com/300x200'),
(6, 1, 3, 'Solid State Physics', 'Study of physical properties of solid materials.', 'PHY106', 'https://via.placeholder.com/300x200'),
(7, 2, 4, 'Organic Chemistry', 'Detailed study of carbon-containing compounds.', 'CHE101', 'https://via.placeholder.com/300x200'),
(8, 2, 5, 'Inorganic Chemistry', 'Examination of inorganic compounds and materials.', 'CHE102', 'https://via.placeholder.com/300x200'),
(9, 2, 4, 'Physical Chemistry', 'Analysis of physical properties and phenomena in chemistry.', 'CHE103', 'https://via.placeholder.com/300x200'),
(10, 2, 6, 'Analytical Chemistry', 'Techniques for analyzing chemical substances.', 'CHE104', 'https://via.placeholder.com/300x200'),
(11, 2, 5, 'Biochemistry', 'Chemistry of living organisms.', 'CHE105', 'https://via.placeholder.com/300x200'),
(12, 2, 6, 'Environmental Chemistry', 'Impact of chemicals on the environment.', 'CHE106', 'https://via.placeholder.com/300x200'),
(13, 3, 7, 'Cell Biology', 'Comprehensive study of cell structure and function.', 'BIO101', 'https://via.placeholder.com/300x200'),
(14, 3, 8, 'Genetics', 'Fundamentals of heredity and gene function.', 'BIO102', 'https://via.placeholder.com/300x200'),
(15, 3, 7, 'Microbiology', 'Study of microorganisms and their effects.', 'BIO103', 'https://via.placeholder.com/300x200'),
(16, 3, 9, 'Ecology', 'Interaction of organisms with their environment.', 'BIO104', 'https://via.placeholder.com/300x200'),
(17, 3, 8, 'Evolutionary Biology', 'Mechanisms of evolution and species diversity.', 'BIO105', 'https://via.placeholder.com/300x200'),
(18, 3, 9, 'Plant Biology', 'Biological processes in plants.', 'BIO106', 'https://via.placeholder.com/300x200'),
(19, 4, 10, 'Ancient Civilizations', 'Exploration of ancient cultures and societies.', 'HIS101', 'https://via.placeholder.com/300x200'),
(20, 4, 11, 'Medieval History', 'Study of historical events from the 5th to 15th century.', 'HIS102', 'https://via.placeholder.com/300x200'),
(21, 4, 10, 'Modern History', 'History of the modern world from the 16th century to present.', 'HIS103', 'https://via.placeholder.com/300x200'),
(22, 4, 12, 'World Wars', 'Detailed study of the first and second world wars.', 'HIS104', 'https://via.placeholder.com/300x200'),
(23, 4, 11, 'History of Science', 'Development of scientific ideas and discoveries.', 'HIS105', 'https://via.placeholder.com/300x200'),
(24, 4, 12, 'Cultural History', 'Examination of cultural developments through history.', 'HIS106', 'https://via.placeholder.com/300x200'),
(25, 5, 13, 'Ethics', 'Study of moral principles and values.', 'PHI101', 'https://via.placeholder.com/300x200'),
(26, 5, 14, 'Logic', 'Fundamentals of logical reasoning and argumentation.', 'PHI102', 'https://via.placeholder.com/300x200'),
(27, 5, 13, 'Metaphysics', 'Exploration of the nature of reality and existence.', 'PHI103', 'https://via.placeholder.com/300x200'),
(28, 5, 15, 'Epistemology', 'Study of knowledge and belief.', 'PHI104', 'https://via.placeholder.com/300x200'),
(29, 5, 14, 'Philosophy of Science', 'Philosophical analysis of scientific methods and principles.', 'PHI105', 'https://via.placeholder.com/300x200'),
(30, 5, 15, 'Political Philosophy', 'Examination of political ideologies and theories.', 'PHI106', 'https://via.placeholder.com/300x200'),
(31, 6, 16, 'Linguistics', 'Scientific study of language structure and use.', 'LAN101', 'https://via.placeholder.com/300x200'),
(32, 6, 17, 'English Literature', 'Critical analysis of English literary works.', 'LAN102', 'https://via.placeholder.com/300x200'),
(33, 6, 16, 'Translation Studies', 'Theory and practice of translating texts.', 'LAN103', 'https://via.placeholder.com/300x200'),
(34, 6, 18, 'French Language', 'Comprehensive study of the French language.', 'LAN104', 'https://via.placeholder.com/300x200'),
(35, 6, 17, 'Spanish Language', 'Comprehensive study of the Spanish language.', 'LAN105', 'https://via.placeholder.com/300x200'),
(36, 6, 18, 'Comparative Literature', 'Analysis of literary works from different cultures.', 'LAN106', 'https://via.placeholder.com/300x200'),
(37, 7, 19, 'Thermodynamics', 'Study of energy, heat, and work.', 'ME101', 'https://via.placeholder.com/300x200'),
(38, 7, 20, 'Fluid Mechanics', 'Analysis of fluid behavior and properties.', 'ME102', 'https://via.placeholder.com/300x200'),
(39, 7, 19, 'Mechanical Design', 'Principles of designing mechanical systems.', 'ME103', 'https://via.placeholder.com/300x200'),
(40, 7, 21, 'Manufacturing Processes', 'Overview of manufacturing techniques.', 'ME104', 'https://via.placeholder.com/300x200'),
(41, 7, 20, 'Material Science', 'Properties and applications of engineering materials.', 'ME105', 'https://via.placeholder.com/300x200'),
(42, 7, 21, 'Control Systems', 'Study of dynamic systems and control theory.', 'ME106', 'https://via.placeholder.com/300x200'),
(43, 8, 22, 'Structural Analysis', 'Study of structures under various loads.', 'CE101', 'https://via.placeholder.com/300x200'),
(44, 8, 23, 'Geotechnical Engineering', 'Principles of soil mechanics and foundation design.', 'CE102', 'https://via.placeholder.com/300x200'),
(45, 8, 22, 'Hydraulics', 'Behavior and applications of fluid mechanics.', 'CE103', 'https://via.placeholder.com/300x200'),
(46, 8, 24, 'Transportation Engineering', 'Planning and design of transportation systems.', 'CE104', 'https://via.placeholder.com/300x200'),
(47, 8, 23, 'Environmental Engineering', 'Study of environmental systems and impacts.', 'CE105', 'https://via.placeholder.com/300x200'),
(48, 8, 24, 'Construction Management', 'Principles and practices of construction project management.', 'CE106', 'https://via.placeholder.com/300x200'),
(49, 9, 25, 'Circuit Analysis', 'Fundamentals of electrical circuits and networks.', 'EE101', 'https://via.placeholder.com/300x200'),
(50, 9, 26, 'Electromagnetic Fields', 'Study of electric and magnetic fields and their applications.', 'EE102', 'https://via.placeholder.com/300x200'),
(51, 9, 25, 'Power Systems', 'Design and operation of power generation and distribution systems.', 'EE103', 'https://via.placeholder.com/300x200'),
(52, 9, 27, 'Control Systems', 'Theory and application of control systems.', 'EE104', 'https://via.placeholder.com/300x200'),
(53, 9, 26, 'Digital Electronics', 'Design and analysis of digital circuits.', 'EE105', 'https://via.placeholder.com/300x200'),
(54, 9, 27, 'Microelectronics', 'Design and fabrication of microelectronic devices.', 'EE106', 'https://via.placeholder.com/300x200'),
(55, 10, 28, 'General Surgery', 'Principles and practices of general surgery.', 'SUR101', 'https://via.placeholder.com/300x200'),
(56, 10, 29, 'Orthopedic Surgery', 'Study and treatment of musculoskeletal system disorders.', 'SUR102', 'https://via.placeholder.com/300x200'),
(57, 10, 28, 'Neurosurgery', 'Surgical treatment of neurological disorders.', 'SUR103', 'https://via.placeholder.com/300x200'),
(58, 10, 30, 'Cardiothoracic Surgery', 'Surgical treatment of heart and lung diseases.', 'SUR104', 'https://via.placeholder.com/300x200'),
(59, 10, 29, 'Plastic Surgery', 'Reconstruction and repair of body defects.', 'SUR105', 'https://via.placeholder.com/300x200'),
(60, 10, 30, 'Pediatric Surgery', 'Surgical treatment of children.', 'SUR106', 'https://via.placeholder.com/300x200'),
(61, 11, 31, 'Neonatology', 'Care of newborn infants, especially ill or premature newborns.', 'PED101', 'https://via.placeholder.com/300x200'),
(62, 11, 32, 'Pediatric Cardiology', 'Diagnosis and treatment of heart problems in children.', 'PED102', 'https://via.placeholder.com/300x200'),
(63, 11, 31, 'Pediatric Neurology', 'Neurological disorders in children.', 'PED103', 'https://via.placeholder.com/300x200'),
(64, 11, 33, 'Pediatric Oncology', 'Diagnosis and treatment of cancer in children.', 'PED104', 'https://via.placeholder.com/300x200'),
(65, 11, 32, 'Pediatric Gastroenterology', 'Digestive system disorders in children.', 'PED105', 'https://via.placeholder.com/300x200'),
(66, 11, 33, 'Pediatric Infectious Diseases', 'Infectious diseases in children.', 'PED106', 'https://via.placeholder.com/300x200'),
(67, 12, 34, 'Clinical Psychiatry', 'Diagnosis and treatment of mental health disorders.', 'PSY101', 'https://via.placeholder.com/300x200'),
(68, 12, 35, 'Child and Adolescent Psychiatry', 'Mental health disorders in children and adolescents.', 'PSY102', 'https://via.placeholder.com/300x200'),
(69, 12, 34, 'Forensic Psychiatry', 'Intersection of mental health and law.', 'PSY103', 'https://via.placeholder.com/300x200'),
(70, 12, 36, 'Geriatric Psychiatry', 'Mental health disorders in older adults.', 'PSY104', 'https://via.placeholder.com/300x200'),
(71, 12, 35, 'Addiction Psychiatry', 'Treatment of substance use disorders.', 'PSY105', 'https://via.placeholder.com/300x200'),
(72, 12, 36, 'Consultation-Liaison Psychiatry', 'Psychiatric consultation in medical settings.', 'PSY106', 'https://via.placeholder.com/300x200'),
(73, 13, 37, 'Constitutional Law', 'Study of the principles and practices of constitutional law.', 'LAW101', 'https://via.placeholder.com/300x200'),
(74, 13, 38, 'Administrative Law', 'Legal principles governing public administration.', 'LAW102', 'https://via.placeholder.com/300x200'),
(75, 13, 37, 'Human Rights Law', 'Study of the laws protecting human rights.', 'LAW103', 'https://via.placeholder.com/300x200'),
(76, 13, 39, 'Criminal Law', 'Principles of criminal liability and criminal justice.', 'LAW104', 'https://via.placeholder.com/300x200'),
(77, 13, 38, 'Environmental Law', 'Laws protecting the environment.', 'LAW105', 'https://via.placeholder.com/300x200'),
(78, 13, 39, 'International Law', 'Study of legal relations between countries.', 'LAW106', 'https://via.placeholder.com/300x200'),
(79, 14, 40, 'Contract Law', 'Principles and practices of contract law.', 'LAW201', 'https://via.placeholder.com/300x200'),
(80, 14, 41, 'Tort Law', 'Study of civil wrongs and liability.', 'LAW202', 'https://via.placeholder.com/300x200'),
(81, 14, 40, 'Property Law', 'Legal principles governing ownership and use of property.', 'LAW203', 'https://via.placeholder.com/300x200'),
(82, 14, 42, 'Family Law', 'Legal aspects of family relationships.', 'LAW204', 'https://via.placeholder.com/300x200'),
(83, 14, 41, 'Business Law', 'Laws affecting business and commerce.', 'LAW205', 'https://via.placeholder.com/300x200'),
(84, 14, 42, 'Intellectual Property Law', 'Protection of intellectual property rights.', 'LAW206', 'https://via.placeholder.com/300x200'),
(85, 15, 43, 'Public International Law', 'Study of laws governing international relations.', 'LAW301', 'https://via.placeholder.com/300x200'),
(86, 15, 44, 'Private International Law', 'Conflict of laws in private transactions across borders.', 'LAW302', 'https://via.placeholder.com/300x200'),
(87, 15, 43, 'International Humanitarian Law', 'Laws of armed conflict and humanitarian issues.', 'LAW303', 'https://via.placeholder.com/300x200'),
(88, 15, 45, 'International Trade Law', 'Regulation of international trade.', 'LAW304', 'https://via.placeholder.com/300x200'),
(89, 15, 44, 'International Arbitration', 'Resolution of international disputes through arbitration.', 'LAW305', 'https://via.placeholder.com/300x200'),
(90, 15, 45, 'Law of the Sea', 'Legal principles governing maritime activities.', 'LAW306', 'https://via.placeholder.com/300x200'),
(91, 16, 46, 'Financial Accounting', 'Principles and practices of financial accounting.', 'ACC101', 'https://via.placeholder.com/300x200'),
(92, 16, 47, 'Managerial Accounting', 'Accounting for management decision-making.', 'ACC102', 'https://via.placeholder.com/300x200'),
(93, 16, 46, 'Auditing', 'Study of auditing principles and practices.', 'ACC103', 'https://via.placeholder.com/300x200'),
(94, 16, 48, 'Taxation', 'Principles and practices of taxation.', 'ACC104', 'https://via.placeholder.com/300x200'),
(95, 16, 47, 'Cost Accounting', 'Accounting for costs and cost control.', 'ACC105', 'https://via.placeholder.com/300x200'),
(96, 16, 48, 'Accounting Information Systems', 'Use of information systems in accounting.', 'ACC106', 'https://via.placeholder.com/300x200');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `department_id` int(11) NOT NULL,
  `faculty_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `fees` varchar(10) NOT NULL,
  `students` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`department_id`, `faculty_id`, `name`, `description`, `image`, `fees`, `students`) VALUES
(1, 1, 'Department of Physics', 'Description for Department of Physics', 'https://via.placeholder.com/300x200', '2500', 180),
(2, 1, 'Department of Chemistry', 'Description for Department of Chemistry', 'https://via.placeholder.com/300x200', '2000', 400),
(3, 1, 'Department of Biology', 'Description for Department of Biology', 'https://via.placeholder.com/300x200', '2500', 200),
(4, 2, 'Department of History', 'Description for Department of History', 'https://via.placeholder.com/300x200', '350', 1000),
(5, 2, 'Department of Philosophy', 'Description for Department of Philosophy', 'https://via.placeholder.com/300x200', '1500', 220),
(6, 2, 'Department of Languages', 'Description for Department of Languages', 'https://via.placeholder.com/300x200', '2000', 380),
(7, 3, 'Department of Mechanical Engineering', 'Description for Department of Mechanical Engineering', 'https://via.placeholder.com/300x200', '3500', 420),
(8, 3, 'Department of Civil Engineering', 'Description for Department of Civil Engineering', 'https://via.placeholder.com/300x200', '3000', 320),
(9, 3, 'Department of Electrical Engineering', 'Description for Department of Electrical Engineering', 'https://via.placeholder.com/300x200', '3500', 330),
(10, 4, 'Department of Surgery', 'Description for Department of Surgery', 'https://via.placeholder.com/300x200', '4000', 240),
(11, 4, 'Department of Pediatrics', 'Description for Department of Pediatrics', 'https://via.placeholder.com/300x200', '3800', 260),
(12, 4, 'Department of Psychiatry', 'Description for Department of Psychiatry', 'https://via.placeholder.com/300x200', '1200', 140),
(13, 5, 'Department of Public Law', 'Description for Department of Public Law', 'https://via.placeholder.com/300x200', '1000', 325),
(14, 5, 'Department of Private Law', 'Description for Department of Private Law', 'https://via.placeholder.com/300x200', '1000', 342),
(15, 5, 'Department of International Law', 'Description for Department of International Law', 'https://via.placeholder.com/300x200', '1000', 361),
(16, 6, 'Department of Accounting', 'Description for Department of Accounting', 'https://via.placeholder.com/300x200', '1800', 220),
(17, 6, 'Department of Management', 'Description for Department of Management', 'https://via.placeholder.com/300x200', '1900', 360),
(18, 6, 'Department of Finance', 'Description for Department of Finance', 'https://via.placeholder.com/300x200', '1500', 327),
(19, 7, 'Department of Curriculum Studies', 'Description for Department of Curriculum Studies', 'https://via.placeholder.com/300x200', '1000', 300),
(20, 7, 'Department of Educational Psychology', 'Description for Department of Educational Psychology', 'https://via.placeholder.com/300x200', '2250', 276),
(21, 7, 'Department of Special Education', 'Description for Department of Special Education', 'https://via.placeholder.com/300x200', '1000', 221),
(22, 8, 'Department of Sociology', 'Description for Department of Sociology', 'https://via.placeholder.com/300x200', '1250', 243),
(23, 8, 'Department of Political Science', 'Description for Department of Political Science', 'https://via.placeholder.com/300x200', '1700', 280),
(24, 8, 'Department of Anthropology', 'Description for Department of Anthropology', 'https://via.placeholder.com/300x200', '2100', 0),
(25, 9, 'Department of Crop Science', 'Description for Department of Crop Science', 'https://via.placeholder.com/300x200', '', 0),
(26, 9, 'Department of Animal Science', 'Description for Department of Animal Science', 'https://via.placeholder.com/300x200', '', 0),
(27, 9, 'Department of Soil Science', 'Description for Department of Soil Science', 'https://via.placeholder.com/300x200', '', 0),
(28, 10, 'Department of Environmental Management', 'Description for Department of Environmental Management', 'https://via.placeholder.com/300x200', '', 0),
(29, 10, 'Department of Forestry', 'Description for Department of Forestry', 'https://via.placeholder.com/300x200', '', 0),
(30, 10, 'Department of Wildlife Management', 'Description for Department of Wildlife Management', 'https://via.placeholder.com/300x200', '', 0),
(31, 11, 'Department of Software Engineering', 'Description for Department of Software Engineering', 'https://via.placeholder.com/300x200', '', 0),
(32, 11, 'Department of Information Systems', 'Description for Department of Information Systems', 'https://via.placeholder.com/300x200', '', 0),
(33, 11, 'Department of Cyber Security', 'Description for Department of Cyber Security', 'https://via.placeholder.com/300x200', '', 0),
(34, 12, 'Department of Journalism', 'Description for Department of Journalism', 'https://via.placeholder.com/300x200', '', 0),
(35, 12, 'Department of Public Relations', 'Description for Department of Public Relations', 'https://via.placeholder.com/300x200', '', 0),
(36, 12, 'Department of Advertising', 'Description for Department of Advertising', 'https://via.placeholder.com/300x200', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `faculty_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `dean_name` varchar(200) NOT NULL DEFAULT 'Daniel Warner',
  `dean_image` varchar(200) NOT NULL DEFAULT 'http://via.placeholder.com/300x200',
  `dean_role` varchar(200) NOT NULL DEFAULT 'Dean'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`faculty_id`, `name`, `description`, `image`, `dean_name`, `dean_image`, `dean_role`) VALUES
(1, 'Faculty of Science', 'Description for Faculty of Science', 'https://via.placeholder.com/300x200', 'Daniel Warner', 'http://via.placeholder.com/300x200', 'Dean'),
(2, 'Faculty of Arts', 'Description for Faculty of Arts', 'https://via.placeholder.com/300x200', 'Daniel Warner', 'http://via.placeholder.com/300x200', 'Dean'),
(3, 'Faculty of Engineering', 'Description for Faculty of Engineering', 'https://via.placeholder.com/300x200', 'Daniel Warner', 'http://via.placeholder.com/300x200', 'Dean'),
(4, 'Faculty of Medicine', 'Description for Faculty of Medicine', 'https://via.placeholder.com/300x200', 'Daniel Warner', 'http://via.placeholder.com/300x200', 'Dean'),
(5, 'Faculty of Law', 'Description for Faculty of Law', 'https://via.placeholder.com/300x200', 'Daniel Warner', 'http://via.placeholder.com/300x200', 'Dean'),
(6, 'Faculty of Business', 'Description for Faculty of Business', 'https://via.placeholder.com/300x200', 'Daniel Warner', 'http://via.placeholder.com/300x200', 'Dean'),
(7, 'Faculty of Education', 'Description for Faculty of Education', 'https://via.placeholder.com/300x200', 'Daniel Warner', 'http://via.placeholder.com/300x200', 'Dean'),
(8, 'Faculty of Social Sciences', 'Description for Faculty of Social Sciences', 'https://via.placeholder.com/300x200', 'Daniel Warner', 'http://via.placeholder.com/300x200', 'Dean'),
(9, 'Faculty of Agriculture', 'Description for Faculty of Agriculture', 'https://via.placeholder.com/300x200', 'Daniel Warner', 'http://via.placeholder.com/300x200', 'Dean'),
(10, 'Faculty of Environmental Sciences', 'Description for Faculty of Environmental Sciences', 'https://via.placeholder.com/300x200', 'Daniel Warner', 'http://via.placeholder.com/300x200', 'Dean'),
(11, 'Faculty of Computer Science', 'Description for Faculty of Computer Science', 'https://via.placeholder.com/300x200', 'Daniel Warner', 'http://via.placeholder.com/300x200', 'Dean'),
(12, 'Faculty of Communication', 'Description for Faculty of Communication', 'https://via.placeholder.com/300x200', 'Daniel Warner', 'http://via.placeholder.com/300x200', 'Dean');

-- --------------------------------------------------------

--
-- Table structure for table `materials`
--

CREATE TABLE `materials` (
  `material_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `file_path` varchar(255) DEFAULT NULL,
  `thumbnail` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `news_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text DEFAULT NULL,
  `publication_date` date DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `publications`
--

CREATE TABLE `publications` (
  `publication_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `file` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `publication_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `staff_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `role` varchar(100) DEFAULT 'Lecturer',
  `bio` text DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `qualification` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`staff_id`, `department_id`, `name`, `role`, `bio`, `email`, `password`, `age`, `gender`, `qualification`, `image`) VALUES
(1, 1, 'John Doe', 'Lecturer', 'Dr. John Doe is a renowned physicist with a focus on quantum mechanics. His research has been published in numerous high-impact journals.', 'john.doe@university.edu', 'password123!', NULL, 'Male', 'PhD in Physics, M in Physics', 'https://via.placeholder.com/200x200'),
(2, 1, 'Jane Smith', 'Lecturer', 'Jane Smith has extensive experience in teaching undergraduate physics and has been a lecturer for over 10 years.', 'jane.smith@university.edu', 'password123!', NULL, 'Female', 'M in Physics', 'https://via.placeholder.com/200x200'),
(3, 2, 'Alice Brown', 'Lecturer', 'Dr. Alice Brown specializes in organic chemistry and has been awarded multiple grants for her research.', 'alice.brown@university.edu', 'password123!', NULL, 'Female', 'PhD in Chemistry, M in Chemistry', 'https://via.placeholder.com/200x200'),
(4, 2, 'Bob Green', 'Lecturer', 'Bob Green is a dedicated educator with a strong background in chemical engineering and laboratory management.', 'bob.green@university.edu', 'password123!', NULL, 'Male', 'M in Chemistry', 'https://via.placeholder.com/200x200'),
(5, 2, 'Charlie Black', 'Lecturer', 'Dr. Charlie Black focuses on environmental chemistry and sustainable solutions. He has published several papers on pollution control.', 'charlie.black@university.edu', 'password123!', NULL, 'Male', 'PhD in Chemistry, M in Chemistry', 'https://via.placeholder.com/200x200'),
(6, 3, 'Diana White', 'Lecturer', 'Dr. Diana White is an expert in molecular biology with numerous accolades for her work on genetic research.', 'diana.white@university.edu', 'password123!', NULL, 'Female', 'PhD in Biology, M in Biology', 'https://via.placeholder.com/200x200'),
(7, 3, 'Evan Blue', 'Lecturer', 'Evan Blue has a rich teaching history in biological sciences and has contributed to various educational initiatives.', 'evan.blue@university.edu', 'password123!', NULL, 'Male', 'M in Biology', 'https://via.placeholder.com/200x200'),
(8, 3, 'Fiona Gray', 'Lecturer', 'Dr. Fiona Gray’s research interests lie in cellular biology, and she is a key member of several interdisciplinary projects.', 'fiona.gray@university.edu', 'password123!', NULL, 'Female', 'PhD in Biology, M in Biology', 'https://via.placeholder.com/200x200'),
(9, 4, 'George Brown', 'Lecturer', 'Dr. George Brown is a distinguished historian with a focus on medieval history and has published multiple books on the subject.', 'george.brown@university.edu', 'password123!', NULL, 'Male', 'PhD in History, M in History', 'https://via.placeholder.com/200x200'),
(10, 4, 'Hannah Green', 'Lecturer', 'Hannah Green is a well-respected lecturer with expertise in modern history and educational outreach.', 'hannah.green@university.edu', 'password123!', NULL, 'Female', 'M in History', 'https://via.placeholder.com/200x200'),
(11, 4, 'Isaac Black', 'Lecturer', 'Dr. Isaac Black’s research encompasses ancient civilizations, and he is known for his engaging lecture style.', 'isaac.black@university.edu', 'password123!', NULL, 'Male', 'PhD in History, M in History', 'https://via.placeholder.com/200x200'),
(12, 5, 'Jack White', 'Lecturer', 'Dr. Jack White specializes in existentialism and has contributed significantly to philosophical discourse.', 'jack.white@university.edu', 'password123!', NULL, 'Male', 'PhD in Philosophy, M in Philosophy', 'https://via.placeholder.com/200x200'),
(13, 5, 'Karen Blue', 'Lecturer', 'Karen Blue has extensive experience teaching philosophy and is known for her insightful lectures.', 'karen.blue@university.edu', 'password123!', NULL, 'Female', 'M in Philosophy', 'https://via.placeholder.com/200x200'),
(14, 5, 'Louis Gray', 'Lecturer', 'Dr. Louis Gray’s work in metaphysics has been widely recognized, and he regularly presents at international conferences.', 'louis.gray@university.edu', 'password123!', NULL, 'Male', 'PhD in Philosophy, M in Philosophy', 'https://via.placeholder.com/200x200'),
(15, 6, 'Mia Red', 'Lecturer', 'Dr. Mia Red is a linguistics expert with numerous publications on language acquisition and syntax.', 'mia.red@university.edu', 'password123!', NULL, 'Female', 'PhD in Linguistics, M in Linguistics', 'https://via.placeholder.com/200x200'),
(16, 6, 'Nate Brown', 'Lecturer', 'Nate Brown has a solid background in teaching multiple languages and developing innovative language learning programs.', 'nate.brown@university.edu', 'password123!', NULL, 'Male', 'M in Linguistics', 'https://via.placeholder.com/200x200'),
(17, 6, 'Olivia Green', 'Lecturer', 'Dr. Olivia Green’s research focuses on sociolinguistics and language policy, and she has been an advisor on several governmental projects.', 'olivia.green@university.edu', 'password123!', NULL, 'Female', 'PhD in Linguistics, M in Linguistics', 'https://via.placeholder.com/200x200'),
(18, 7, 'Paul Black', 'Lecturer', 'Dr. Paul Black is a leading figure in mechanical engineering, with a focus on robotics and automation.', 'paul.black@university.edu', 'password123!', NULL, 'Male', 'PhD in Mechanical Engineering, M in Mechanical Engineering', 'https://via.placeholder.com/200x200'),
(19, 7, 'Quinn White', 'Lecturer', 'Quinn White has a strong background in industrial engineering and has been a consultant for various manufacturing firms.', 'quinn.white@university.edu', 'password123!', NULL, 'Male', 'M in Mechanical Engineering', 'https://via.placeholder.com/200x200'),
(20, 7, 'Rachel Blue', 'Lecturer', 'Dr. Rachel Blue specializes in thermodynamics and fluid mechanics, with several patents to her name.', 'rachel.blue@university.edu', 'password123!', NULL, 'Female', 'PhD in Mechanical Engineering, M in Mechanical Engineering', 'https://via.placeholder.com/200x200'),
(21, 8, 'Steve Gray', 'Lecturer', 'Dr. Steve Gray is an expert in structural engineering and has overseen numerous major construction projects.', 'steve.gray@university.edu', 'password123!', NULL, 'Male', 'PhD in Civil Engineering, M in Civil Engineering', 'https://via.placeholder.com/200x200'),
(22, 8, 'Tina Red', 'Lecturer', 'Tina Red’s expertise lies in environmental engineering and sustainable development practices.', 'tina.red@university.edu', 'password123!', NULL, 'Female', 'M in Civil Engineering', 'https://via.placeholder.com/200x200'),
(23, 8, 'Uma Black', 'Lecturer', 'Dr. Uma Black focuses on geotechnical engineering and has published widely on soil mechanics.', 'uma.black@university.edu', 'password123!', NULL, 'Female', 'PhD in Civil Engineering, M in Civil Engineering', 'https://via.placeholder.com/200x200'),
(24, 9, 'Vince White', 'Lecturer', 'Dr. Vince White is a renowned researcher in power systems and renewable energy technologies.', 'vince.white@university.edu', 'password123!', NULL, 'Male', 'PhD in Electrical Engineering, M in Electrical Engineering', 'https://via.placeholder.com/200x200'),
(25, 9, 'Wendy Blue', 'Lecturer', 'Wendy Blue has extensive experience in telecommunications and has worked with several leading tech companies.', 'wendy.blue@university.edu', 'password123!', NULL, 'Female', 'M in Electrical Engineering', 'https://via.placeholder.com/200x200'),
(26, 9, 'Xander Gray', 'Lecturer', 'Dr. Xander Gray is an expert in microelectronics and has contributed to significant advancements in semiconductor technology.', 'xander.gray@university.edu', 'password123!', NULL, 'Male', 'PhD in Electrical Engineering, M in Electrical Engineering', 'https://via.placeholder.com/200x200'),
(27, 10, 'Yara Red', 'Lecturer', 'Dr. Yara Red is a top surgeon specializing in minimally invasive techniques and has trained many residents.', 'yara.red@university.edu', 'password123!', NULL, 'Female', 'PhD in Medicine, M in Surgery', 'https://via.placeholder.com/200x200'),
(28, 10, 'Zach Brown', 'Lecturer', 'Zach Brown is an experienced general surgeon with a focus on patient-centered care and medical education.', 'zach.brown@university.edu', 'password123!', NULL, 'Male', 'M in Surgery', 'https://via.placeholder.com/200x200'),
(29, 10, 'Anna White', 'Lecturer', 'Dr. Anna White has a distinguished career in cardiovascular surgery and has pioneered several innovative procedures.', 'anna.white@university.edu', 'password123!', NULL, 'Female', 'PhD in Surgery, M in Surgery', 'https://via.placeholder.com/200x200'),
(30, 11, 'Ben Green', 'Lecturer', 'Dr. Ben Green is a pediatric specialist with a focus on developmental disorders and child health.', 'ben.green@university.edu', 'password123!', NULL, 'Male', 'PhD in Pediatrics, M in Pediatrics', 'https://via.placeholder.com/200x200'),
(31, 11, 'Cara Black', 'Lecturer', 'Cara Black has extensive clinical experience in pediatrics and is known for her compassionate approach to child care.', 'cara.black@university.edu', 'password123!', NULL, 'Female', 'M in Pediatrics', 'https://via.placeholder.com/200x200'),
(32, 11, 'Derek White', 'Lecturer', 'Dr. Derek White is involved in pediatric research and has published widely on infectious diseases in children.', 'derek.white@university.edu', 'password123!', NULL, 'Male', 'PhD in Pediatrics, M in Pediatrics', 'https://via.placeholder.com/200x200'),
(33, 12, 'Ella Blue', 'Lecturer', 'Dr. Ella Blue is a renowned psychiatrist with a focus on mood disorders and has received several awards for her clinical work.', 'ella.blue@university.edu', 'password123!', NULL, 'Female', 'PhD in Psychiatry, M in Psychiatry', 'https://via.placeholder.com/200x200'),
(34, 12, 'Frank Black', 'Lecturer', 'Frank Black has extensive experience in psychiatric care and has been a mentor to many young psychiatrists.', 'frank.black@university.edu', 'password123!', NULL, 'Male', 'M in Psychiatry', 'https://via.placeholder.com/200x200'),
(35, 12, 'Gina Red', 'Lecturer', 'Dr. Gina Red specializes in adolescent psychiatry and has contributed significantly to mental health research.', 'gina.red@university.edu', 'password123!', NULL, 'Female', 'PhD in Psychiatry, M in Psychiatry', 'https://via.placeholder.com/200x200'),
(36, 13, 'Henry Green', 'Lecturer', 'Dr. Henry Green is an expert in constitutional law and has been a key advisor on several high-profile legal reforms.', 'henry.green@university.edu', 'password123!', NULL, 'Male', 'PhD in Law, M in Public Law', 'https://via.placeholder.com/200x200'),
(37, 13, 'Ivy Black', 'Lecturer', 'Ivy Black has a strong background in public law and has been involved in various policy-making processes.', 'ivy.black@university.edu', 'password123!', NULL, 'Female', 'M in Public Law', 'https://via.placeholder.com/200x200'),
(38, 14, 'Jake White', 'Lecturer', 'Dr. Jake White is a leading figure in private law with numerous publications and a wealth of teaching experience.', 'jake.white@university.edu', 'password123!', NULL, 'Male', 'PhD in Law, M in Private Law', 'https://via.placeholder.com/200x200'),
(39, 14, 'Kim Blue', 'Lecturer', 'Kim Blue has extensive legal practice experience and has been a mentor to many young lawyers.', 'kim.blue@university.edu', 'password123!', NULL, 'Female', 'M in Private Law', 'https://via.placeholder.com/200x200'),
(40, 15, 'Liam Black', 'Lecturer', 'Dr. Liam Black is an expert in international law and has been involved in several high-profile international legal cases.', 'liam.black@university.edu', 'password123!', NULL, 'Male', 'PhD in Law, M in International Law', 'https://via.placeholder.com/200x200'),
(41, 15, 'Nina White', 'Lecturer', 'Nina White has extensive experience in international legal frameworks and has worked with various global organizations.', 'nina.white@university.edu', 'password123!', NULL, 'Female', 'M in International Law', 'https://via.placeholder.com/200x200'),
(42, 16, 'Oscar Green', 'Lecturer', 'Dr. Oscar Green is a renowned accountant with a focus on forensic accounting and has been a consultant for several multinational firms.', 'oscar.green@university.edu', 'password123!', NULL, 'Male', 'PhD in Accounting, M in Accounting', 'https://via.placeholder.com/200x200'),
(43, 16, 'Paula Black', 'Lecturer', 'Paula Black has a solid background in financial accounting and has contributed to various academic publications.', 'paula.black@university.edu', 'password123!', NULL, 'Female', 'M in Accounting', 'https://via.placeholder.com/200x200'),
(44, 17, 'Quincy White', 'Lecturer', 'Dr. Quincy White specializes in strategic management and has published extensively on organizational behavior.', 'quincy.white@university.edu', 'password123!', NULL, 'Male', 'PhD in Management, M in Management', 'https://via.placeholder.com/200x200'),
(45, 17, 'Rachel Blue', 'Lecturer', 'Rachel Blue has a wealth of experience in human resource management and has been an advisor to several leading companies.', 'rachel.blue@university.edu', 'password123!', NULL, 'Female', 'M in Management', 'https://via.placeholder.com/200x200'),
(46, 18, 'Steve Gray', 'Lecturer', 'Dr. Steve Gray is an expert in financial markets and has been a keynote speaker at numerous international conferences.', 'steve.gray@university.edu', 'password123!', NULL, 'Male', 'PhD in Finance, M in Finance', 'https://via.placeholder.com/200x200'),
(47, 18, 'Tina Red', 'Lecturer', 'Tina Red has a strong background in corporate finance and has been involved in various high-profile financial projects.', 'tina.red@university.edu', 'password123!', NULL, 'Female', 'M in Finance', 'https://via.placeholder.com/200x200'),
(48, 19, 'Uma Black', 'Lecturer', 'Dr. Uma Black is an expert in curriculum development and has been instrumental in designing innovative educational programs.', 'uma.black@university.edu', 'password123!', NULL, 'Female', 'PhD in Education, M in Curriculum Studies', 'https://via.placeholder.com/200x200'),
(49, 19, 'Vince White', 'Lecturer', 'Vince White has a wealth of experience in educational policy and has been a consultant for various educational institutions.', 'vince.white@university.edu', 'password123!', NULL, 'Male', 'M in Curriculum Studies', 'https://via.placeholder.com/200x200'),
(50, 20, 'Wendy Blue', 'Lecturer', 'Dr. Wendy Blue specializes in cognitive development and has published extensively on learning processes.', 'wendy.blue@university.edu', 'password123!', NULL, 'Female', 'PhD in Educational Psychology, M in Educational Psychology', 'https://via.placeholder.com/200x200'),
(51, 20, 'Xander Gray', 'Lecturer', 'Xander Gray has a strong background in psychological assessment and has been a key figure in educational psychology.', 'xander.gray@university.edu', 'password123!', NULL, 'Male', 'M in Educational Psychology', 'https://via.placeholder.com/200x200'),
(52, 21, 'Yara Red', 'Lecturer', 'Dr. Yara Red is an expert in special education and has been involved in various initiatives to support students with special needs.', 'yara.red@university.edu', 'password123!', NULL, 'Female', 'PhD in Special Education, M in Special Education', 'https://via.placeholder.com/200x200'),
(53, 21, 'Zach Brown', 'Lecturer', 'Zach Brown has a strong background in inclusive education and has been a mentor to many special education teachers.', 'zach.brown@university.edu', 'password123!', NULL, 'Male', 'M in Special Education', 'https://via.placeholder.com/200x200'),
(54, 22, 'Anna White', 'Lecturer', 'Dr. Anna White is a renowned sociologist with a focus on social inequality and has published widely in the field.', 'anna.white@university.edu', 'password123!', NULL, 'Female', 'PhD in Sociology, M in Sociology', 'https://via.placeholder.com/200x200'),
(55, 22, 'Ben Green', 'Lecturer', 'Ben Green has a wealth of experience in sociological research and has been a keynote speaker at various conferences.', 'ben.green@university.edu', 'password123!', NULL, 'Male', 'M in Sociology', 'https://via.placeholder.com/200x200'),
(56, 23, 'Cara Black', 'Lecturer', 'Dr. Cara Black specializes in political theory and has been a consultant for several governmental organizations.', 'cara.black@university.edu', 'password123!', NULL, 'Female', 'PhD in Political Science, M in Political Science', 'https://via.placeholder.com/200x200'),
(57, 23, 'Derek White', 'Lecturer', 'Derek White has a strong background in comparative politics and has been a mentor to many political science students.', 'derek.white@university.edu', 'password123!', NULL, 'Male', 'M in Political Science', 'https://via.placeholder.com/200x200'),
(58, 24, 'Ella Blue', 'Lecturer', 'Dr. Ella Blue is a leading anthropologist with a focus on cultural anthropology and has conducted extensive fieldwork.', 'ella.blue@university.edu', 'password123!', NULL, 'Female', 'PhD in Anthropology, M in Anthropology', 'https://via.placeholder.com/200x200'),
(59, 24, 'Frank Black', 'Lecturer', 'Frank Black has a strong background in archaeological anthropology and has been involved in various excavations.', 'frank.black@university.edu', 'password123!', NULL, 'Male', 'M in Anthropology', 'https://via.placeholder.com/200x200'),
(60, 25, 'Gina Red', 'Lecturer', 'Dr. Gina Red is an expert in crop science and has been involved in several research projects on sustainable agriculture.', 'gina.red@university.edu', 'password123!', NULL, 'Female', 'PhD in Crop Science, M in Crop Science', 'https://via.placeholder.com/200x200'),
(61, 25, 'Henry Green', 'Lecturer', 'Henry Green has a wealth of experience in crop production and has been a consultant for various agricultural firms.', 'henry.green@university.edu', 'password123!', NULL, 'Male', 'M in Crop Science', 'https://via.placeholder.com/200x200'),
(62, 26, 'Ivy Black', 'Lecturer', 'Dr. Ivy Black is a leading figure in animal science with numerous publications on livestock management.', 'ivy.black@university.edu', 'password123!', NULL, 'Female', 'PhD in Animal Science, M in Animal Science', 'https://via.placeholder.com/200x200'),
(63, 26, 'Jake White', 'Lecturer', 'Jake White has a strong background in animal husbandry and has been a mentor to many animal science students.', 'jake.white@university.edu', 'password123!', NULL, 'Male', 'M in Animal Science', 'https://via.placeholder.com/200x200'),
(64, 27, 'Kim Blue', 'Lecturer', 'Dr. Kim Blue is an expert in soil science and has been involved in various soil conservation projects.', 'kim.blue@university.edu', 'password123!', NULL, 'Female', 'PhD in Soil Science, M in Soil Science', 'https://via.placeholder.com/200x200'),
(65, 27, 'Liam Black', 'Lecturer', 'Liam Black has extensive experience in soil management and has been a consultant for several environmental firms.', 'liam.black@university.edu', 'password123!', NULL, 'Male', 'M in Soil Science', 'https://via.placeholder.com/200x200'),
(66, 28, 'Mia White', 'Lecturer', 'Dr. Mia White is a renowned expert in environmental management and has been involved in several sustainability initiatives.', 'mia.white@university.edu', 'password123!', NULL, 'Female', 'PhD in Environmental Management, M in Environmental Management', 'https://via.placeholder.com/200x200'),
(67, 28, 'Nina Green', 'Lecturer', 'Nina Green has a wealth of experience in environmental policy and has been a consultant for various government agencies.', 'nina.green@university.edu', 'password123!', NULL, 'Female', 'M in Environmental Management', 'https://via.placeholder.com/200x200'),
(68, 29, 'Oscar Black', 'Lecturer', 'Dr. Oscar Black is an expert in forestry and has been involved in numerous reforestation projects worldwide.', 'oscar.black@university.edu', 'password123!', NULL, 'Male', 'PhD in Forestry, M in Forestry', 'https://via.placeholder.com/200x200'),
(69, 29, 'Paula White', 'Lecturer', 'Paula White has extensive experience in forest management and has been a consultant for various environmental organizations.', 'paula.white@university.edu', 'password123!', NULL, 'Female', 'M in Forestry', 'https://via.placeholder.com/200x200'),
(70, 30, 'Quincy Green', 'Lecturer', 'Dr. Quincy Green is a leading expert in wildlife management and has been involved in various conservation projects.', 'quincy.green@university.edu', 'password123!', NULL, 'Male', 'PhD in Wildlife Management, M in Wildlife Management', 'https://via.placeholder.com/200x200'),
(71, 30, 'Rachel Black', 'Lecturer', 'Rachel Black has a strong background in wildlife conservation and has been a mentor to many young conservationists.', 'rachel.black@university.edu', 'password123!', NULL, 'Female', 'M in Wildlife Management', 'https://via.placeholder.com/200x200'),
(72, 31, 'Steve White', 'Lecturer', 'Dr. Steve White is an expert in software engineering and has led several large-scale software development projects.', 'steve.white@university.edu', 'password123!', NULL, 'Male', 'PhD in Software Engineering, M in Software Engineering', 'https://via.placeholder.com/200x200'),
(73, 31, 'Tina Black', 'Lecturer', 'Tina Black has a wealth of experience in software design and has been a consultant for various tech firms.', 'tina.black@university.edu', 'password123!', NULL, 'Female', 'M in Software Engineering', 'https://via.placeholder.com/200x200'),
(74, 32, 'Uma Green', 'Lecturer', 'Dr. Uma Green is a renowned expert in information systems and has been involved in numerous IT infrastructure projects.', 'uma.green@university.edu', 'password123!', NULL, 'Female', 'PhD in Information Systems, M in Information Systems', 'https://via.placeholder.com/200x200'),
(75, 32, 'Vince Black', 'Lecturer', 'Vince Black has extensive experience in systems analysis and has been a mentor to many IT professionals.', 'vince.black@university.edu', 'password123!', NULL, 'Male', 'M in Information Systems', 'https://via.placeholder.com/200x200'),
(76, 33, 'Wendy White', 'Lecturer', 'Dr. Wendy White is a leading expert in cyber security and has been involved in several high-profile security projects.', 'wendy.white@university.edu', 'password123!', NULL, 'Female', 'PhD in Cyber Security, M in Cyber Security', 'https://via.placeholder.com/200x200'),
(77, 33, 'Xander Green', 'Lecturer', 'Xander Green has a strong background in network security and has been a consultant for various government agencies.', 'xander.green@university.edu', 'password123!', NULL, 'Male', 'M in Cyber Security', 'https://via.placeholder.com/200x200'),
(78, 34, 'Yara Blue', 'Lecturer', 'Dr. Yara Blue is a renowned journalist with a focus on investigative journalism and has been awarded for her outstanding reporting.', 'yara.blue@university.edu', 'password123!', NULL, 'Female', 'PhD in Journalism, M in Journalism', 'https://via.placeholder.com/200x200'),
(79, 34, 'Zach Black', 'Lecturer', 'Zach Black has a wealth of experience in broadcast journalism and has been a mentor to many young journalists.', 'zach.black@university.edu', 'password123!', NULL, 'Male', 'M in Journalism', 'https://via.placeholder.com/200x200'),
(80, 35, 'Ava White', 'Lecturer', 'Dr. Ava White is an expert in public relations and has been involved in several high-profile PR campaigns.', 'ava.white@university.edu', 'password123!', NULL, 'Female', 'PhD in Public Relations, M in Public Relations', 'https://via.placeholder.com/200x200'),
(81, 35, 'Ben Black', 'Lecturer', 'Ben Black has extensive experience in media relations and has been a consultant for various corporate firms.', 'ben.black@university.edu', 'password123!', NULL, 'Male', 'M in Public Relations', 'https://via.placeholder.com/200x200'),
(82, 36, 'Cara Green', 'Lecturer', 'Dr. Cara Green is a leading figure in advertising with numerous successful campaigns to her name.', 'cara.green@university.edu', 'password123!', NULL, 'Female', 'PhD in Advertising, M in Advertising', 'https://via.placeholder.com/200x200'),
(83, 36, 'Derek Black', 'Lecturer', 'Derek Black has a wealth of experience in digital advertising and has been a consultant for various brands.', 'derek.black@university.edu', 'password123!', NULL, 'Male', 'M in Advertising', 'https://via.placeholder.com/200x200');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`course_id`),
  ADD KEY `department_id` (`department_id`),
  ADD KEY `staff_id` (`staff_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`department_id`),
  ADD KEY `faculty_id` (`faculty_id`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`faculty_id`);

--
-- Indexes for table `materials`
--
ALTER TABLE `materials`
  ADD PRIMARY KEY (`material_id`),
  ADD KEY `course_id` (`course_id`),
  ADD KEY `staff_id` (`staff_id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`news_id`);

--
-- Indexes for table `publications`
--
ALTER TABLE `publications`
  ADD PRIMARY KEY (`publication_id`),
  ADD KEY `staff_id` (`staff_id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`staff_id`),
  ADD KEY `department_id` (`department_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `department_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `faculty_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `materials`
--
ALTER TABLE `materials`
  MODIFY `material_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `publications`
--
ALTER TABLE `publications`
  MODIFY `publication_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `staff_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `department` (`department_id`),
  ADD CONSTRAINT `courses_ibfk_2` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`staff_id`);

--
-- Constraints for table `department`
--
ALTER TABLE `department`
  ADD CONSTRAINT `department_ibfk_1` FOREIGN KEY (`faculty_id`) REFERENCES `faculty` (`faculty_id`);

--
-- Constraints for table `materials`
--
ALTER TABLE `materials`
  ADD CONSTRAINT `materials_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`),
  ADD CONSTRAINT `materials_ibfk_2` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`staff_id`);

--
-- Constraints for table `publications`
--
ALTER TABLE `publications`
  ADD CONSTRAINT `publications_ibfk_1` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`staff_id`);

--
-- Constraints for table `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `staff_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `department` (`department_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
