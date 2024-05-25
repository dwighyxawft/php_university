-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 25, 2024 at 06:06 PM
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
(1, 1, 1, 'Quantum Mechanics', 'An in-depth study of quantum theory and applications.', 'PHY101', 'https://via.placeholder.com/200x200'),
(2, 1, 1, 'Advanced Quantum Mechanics', 'Further exploration of quantum mechanics focusing on complex systems.', 'PHY201', 'https://via.placeholder.com/200x200'),
(3, 1, 2, 'Classical Mechanics', 'Fundamentals of classical mechanics with practical applications.', 'PHY102', 'https://via.placeholder.com/200x200'),
(4, 1, 2, 'Electromagnetism', 'A study of electric and magnetic fields and their interactions.', 'PHY103', 'https://via.placeholder.com/200x200'),
(5, 1, 2, 'Thermodynamics', 'Principles of thermodynamics and statistical mechanics.', 'PHY104', 'https://via.placeholder.com/200x200'),
(6, 1, 1, 'Particle Physics', 'Introduction to the field of particle physics and elementary particles.', 'PHY202', 'https://via.placeholder.com/200x200'),
(7, 2, 3, 'Organic Chemistry', 'Study of the structure, properties, and reactions of organic compounds.', 'CHEM101', 'https://via.placeholder.com/200x200'),
(8, 2, 3, 'Advanced Organic Chemistry', 'In-depth analysis of organic reactions and mechanisms.', 'CHEM201', 'https://via.placeholder.com/200x200'),
(9, 2, 4, 'Inorganic Chemistry', 'Study of inorganic compounds and materials.', 'CHEM102', 'https://via.placeholder.com/200x200'),
(10, 2, 4, 'Physical Chemistry', 'Examination of the physical principles underlying chemical systems.', 'CHEM103', 'https://via.placeholder.com/200x200'),
(11, 2, 5, 'Environmental Chemistry', 'Focus on chemical processes in the environment.', 'CHEM104', 'https://via.placeholder.com/200x200'),
(12, 2, 5, 'Analytical Chemistry', 'Techniques and principles of chemical analysis.', 'CHEM202', 'https://via.placeholder.com/200x200'),
(13, 3, 6, 'Molecular Biology', 'Detailed study of the molecular mechanisms of biological processes.', 'BIO101', 'https://via.placeholder.com/200x200'),
(14, 3, 6, 'Genetic Research', 'Exploration of genetic research techniques and findings.', 'BIO201', 'https://via.placeholder.com/200x200'),
(15, 3, 7, 'Cell Biology', 'Comprehensive overview of cell structure and function.', 'BIO102', 'https://via.placeholder.com/200x200'),
(16, 3, 7, 'Microbiology', 'Study of microorganisms and their impact on humans.', 'BIO103', 'https://via.placeholder.com/200x200'),
(17, 3, 8, 'Ecology', 'Examination of ecological principles and ecosystems.', 'BIO104', 'https://via.placeholder.com/200x200'),
(18, 3, 8, 'Biostatistics', 'Application of statistics to biological research.', 'BIO202', 'https://via.placeholder.com/200x200'),
(19, 4, 9, 'Medieval History', 'A comprehensive study of medieval European history.', 'HIST101', 'https://via.placeholder.com/200x200'),
(20, 4, 9, 'Renaissance History', 'Examination of the Renaissance period and its impact.', 'HIST201', 'https://via.placeholder.com/200x200'),
(21, 4, 10, 'Modern History', 'Overview of significant events in modern history.', 'HIST102', 'https://via.placeholder.com/200x200'),
(22, 4, 10, 'World War I & II', 'Detailed analysis of the World Wars and their global impact.', 'HIST103', 'https://via.placeholder.com/200x200'),
(23, 4, 11, 'Ancient Civilizations', 'Study of ancient civilizations and their contributions.', 'HIST104', 'https://via.placeholder.com/200x200'),
(24, 4, 11, 'History of the Americas', 'Exploration of the history of North and South America.', 'HIST202', 'https://via.placeholder.com/200x200'),
(25, 5, 12, 'Existentialism', 'In-depth study of existentialist philosophy.', 'PHIL101', 'https://via.placeholder.com/200x200'),
(26, 5, 12, 'Modern Philosophy', 'Examination of key figures and ideas in modern philosophy.', 'PHIL201', 'https://via.placeholder.com/200x200'),
(27, 5, 13, 'Ethics', 'Study of ethical theories and their applications.', 'PHIL102', 'https://via.placeholder.com/200x200'),
(28, 5, 13, 'Political Philosophy', 'Exploration of philosophical ideas about politics and society.', 'PHIL103', 'https://via.placeholder.com/200x200'),
(29, 5, 14, 'Metaphysics', 'Examination of the fundamental nature of reality.', 'PHIL104', 'https://via.placeholder.com/200x200'),
(30, 5, 14, 'Philosophy of Mind', 'Study of philosophical issues related to the mind and consciousness.', 'PHIL202', 'https://via.placeholder.com/200x200'),
(31, 6, 15, 'Linguistics', 'Introduction to the scientific study of language.', 'LANG101', 'https://via.placeholder.com/200x200'),
(32, 6, 15, 'Advanced Linguistics', 'In-depth analysis of linguistic theories and methods.', 'LANG201', 'https://via.placeholder.com/200x200'),
(33, 6, 16, 'Language Acquisition', 'Study of how people learn languages.', 'LANG102', 'https://via.placeholder.com/200x200'),
(34, 6, 16, 'Applied Linguistics', 'Application of linguistic knowledge in various fields.', 'LANG103', 'https://via.placeholder.com/200x200'),
(35, 6, 17, 'Sociolinguistics', 'Examination of the relationship between language and society.', 'LANG104', 'https://via.placeholder.com/200x200'),
(36, 6, 17, 'Language Policy', 'Study of the development and implementation of language policies.', 'LANG202', 'https://via.placeholder.com/200x200'),
(37, 7, 18, 'Robotics', 'Study of robotic systems and their applications.', 'MECH101', 'https://via.placeholder.com/200x200'),
(38, 7, 18, 'Advanced Robotics', 'In-depth exploration of robotic technologies and their development.', 'MECH201', 'https://via.placeholder.com/200x200'),
(39, 7, 19, 'Industrial Engineering', 'Principles and practices of industrial engineering.', 'MECH102', 'https://via.placeholder.com/200x200'),
(40, 7, 19, 'Manufacturing Processes', 'Study of manufacturing techniques and processes.', 'MECH103', 'https://via.placeholder.com/200x200'),
(41, 7, 20, 'Thermodynamics', 'Examination of the principles of thermodynamics.', 'MECH104', 'https://via.placeholder.com/200x200'),
(42, 7, 20, 'Fluid Mechanics', 'Study of fluid behavior and its applications.', 'MECH202', 'https://via.placeholder.com/200x200'),
(43, 8, 21, 'Structural Engineering', 'Study of the principles of structural engineering.', 'CIVIL101', 'https://via.placeholder.com/200x200'),
(44, 8, 21, 'Advanced Structural Engineering', 'In-depth analysis of structural engineering techniques.', 'CIVIL201', 'https://via.placeholder.com/200x200'),
(45, 8, 22, 'Environmental Engineering', 'Study of environmental engineering principles.', 'CIVIL102', 'https://via.placeholder.com/200x200'),
(46, 8, 22, 'Sustainable Development', 'Focus on sustainable development practices.', 'CIVIL103', 'https://via.placeholder.com/200x200'),
(47, 8, 23, 'Geotechnical Engineering', 'Study of soil mechanics and geotechnical engineering.', 'CIVIL104', 'https://via.placeholder.com/200x200'),
(48, 8, 23, 'Advanced Geotechnical Engineering', 'In-depth analysis of geotechnical engineering techniques.', 'CIVIL202', 'https://via.placeholder.com/200x200'),
(49, 9, 24, 'Circuit Analysis', 'Study of electric circuits and their analysis.', 'ELEC101', 'https://via.placeholder.com/200x200'),
(50, 9, 24, 'Advanced Circuit Analysis', 'In-depth analysis of complex electrical circuits.', 'ELEC201', 'https://via.placeholder.com/200x200'),
(51, 9, 25, 'Digital Systems', 'Study of digital systems and their applications.', 'ELEC102', 'https://via.placeholder.com/200x200'),
(52, 9, 25, 'Control Systems', 'Examination of control systems and their design.', 'ELEC103', 'https://via.placeholder.com/200x200'),
(53, 9, 26, 'Power Systems', 'Study of electrical power systems and their components.', 'ELEC104', 'https://via.placeholder.com/200x200'),
(54, 9, 26, 'Renewable Energy Systems', 'Focus on renewable energy technologies and their applications.', 'ELEC202', 'https://via.placeholder.com/200x200'),
(55, 10, 27, 'Minimally Invasive Surgery', 'Advanced techniques in minimally invasive surgical procedures.', 'SUR501', 'https://via.placeholder.com/200x200'),
(56, 10, 28, 'General Surgery', 'Comprehensive overview of general surgical practices.', 'SUR502', 'https://via.placeholder.com/200x200'),
(57, 10, 29, 'Cardiovascular Surgery', 'Innovative procedures in cardiovascular surgery.', 'SUR503', 'https://via.placeholder.com/200x200'),
(58, 10, 27, 'Surgical Anatomy', 'Detailed study of human anatomy for surgical applications.', 'SUR504', 'https://via.placeholder.com/200x200'),
(59, 10, 28, 'Surgical Techniques', 'Hands-on training in various surgical techniques.', 'SUR505', 'https://via.placeholder.com/200x200'),
(60, 10, 29, 'Patient-Centered Surgery', 'Approaches to patient-centered care in surgery.', 'SUR506', 'https://via.placeholder.com/200x200'),
(61, 11, 30, 'Developmental Pediatrics', 'Study of developmental disorders in children.', 'PED501', 'https://via.placeholder.com/200x200'),
(62, 11, 31, 'Child Health', 'Comprehensive overview of child health care.', 'PED502', 'https://via.placeholder.com/200x200'),
(63, 11, 32, 'Pediatric Infectious Diseases', 'Study of infectious diseases in children.', 'PED503', 'https://via.placeholder.com/200x200'),
(64, 11, 30, 'Pediatric Nutrition', 'Nutritional needs and guidelines for children.', 'PED504', 'https://via.placeholder.com/200x200'),
(65, 11, 31, 'Clinical Pediatrics', 'Clinical approaches in pediatric care.', 'PED505', 'https://via.placeholder.com/200x200'),
(66, 11, 32, 'Pediatric Research', 'Research methodologies in pediatrics.', 'PED506', 'https://via.placeholder.com/200x200'),
(67, 12, 33, 'Mood Disorders', 'In-depth study of mood disorders and treatments.', 'PSY501', 'https://via.placeholder.com/200x200'),
(68, 12, 35, 'Adolescent Psychiatry', 'Psychiatric care for adolescents.', 'PSY502', 'https://via.placeholder.com/200x200'),
(69, 12, 34, 'Clinical Psychiatry', 'Clinical practices in psychiatric care.', 'PSY503', 'https://via.placeholder.com/200x200'),
(70, 12, 33, 'Psychiatric Research', 'Research methodologies in psychiatry.', 'PSY504', 'https://via.placeholder.com/200x200'),
(71, 12, 34, 'Psychopharmacology', 'Study of medications used in psychiatric treatment.', 'PSY505', 'https://via.placeholder.com/200x200'),
(72, 12, 35, 'Cognitive Behavioral Therapy', 'Principles and applications of CBT.', 'PSY506', 'https://via.placeholder.com/200x200'),
(73, 13, 36, 'Constitutional Law', 'Study of constitutional principles and case law.', 'LAW501', 'https://via.placeholder.com/200x200'),
(74, 13, 37, 'Public Policy', 'Legal aspects of public policy development.', 'LAW502', 'https://via.placeholder.com/200x200'),
(75, 13, 36, 'Administrative Law', 'Regulation of government agencies and their actions.', 'LAW503', 'https://via.placeholder.com/200x200'),
(76, 13, 37, 'Human Rights Law', 'Legal frameworks for the protection of human rights.', 'LAW504', 'https://via.placeholder.com/200x200'),
(77, 13, 36, 'Environmental Law', 'Legal principles related to environmental protection.', 'LAW505', 'https://via.placeholder.com/200x200'),
(78, 13, 37, 'Public International Law', 'Principles of international public law.', 'LAW506', 'https://via.placeholder.com/200x200'),
(79, 14, 38, 'Contract Law', 'Fundamentals of contract formation and enforcement.', 'LAW507', 'https://via.placeholder.com/200x200'),
(80, 14, 39, 'Property Law', 'Legal principles governing property ownership and use.', 'LAW508', 'https://via.placeholder.com/200x200'),
(81, 14, 38, 'Family Law', 'Laws regulating family relationships and disputes.', 'LAW509', 'https://via.placeholder.com/200x200'),
(82, 14, 39, 'Commercial Law', 'Legal aspects of business and commerce.', 'LAW510', 'https://via.placeholder.com/200x200'),
(83, 14, 38, 'Intellectual Property Law', 'Protection of intellectual property rights.', 'LAW511', 'https://via.placeholder.com/200x200'),
(84, 14, 39, 'Tort Law', 'Legal remedies for civil wrongs.', 'LAW512', 'https://via.placeholder.com/200x200'),
(85, 15, 40, 'International Trade Law', 'Regulation of international trade and commerce.', 'LAW513', 'https://via.placeholder.com/200x200'),
(86, 15, 41, 'International Human Rights Law', 'Legal frameworks for international human rights.', 'LAW514', 'https://via.placeholder.com/200x200'),
(87, 15, 40, 'Law of the Sea', 'Legal principles governing maritime activities.', 'LAW515', 'https://via.placeholder.com/200x200'),
(88, 15, 41, 'International Criminal Law', 'Prosecution and defense of international crimes.', 'LAW516', 'https://via.placeholder.com/200x200'),
(89, 15, 40, 'Diplomatic Law', 'Legal aspects of diplomacy and international relations.', 'LAW517', 'https://via.placeholder.com/200x200'),
(90, 15, 41, 'International Environmental Law', 'Legal principles for environmental protection globally.', 'LAW518', 'https://via.placeholder.com/200x200'),
(91, 16, 42, 'Forensic Accounting', 'Study of financial fraud detection and prevention.', 'ACC501', 'https://via.placeholder.com/200x200'),
(92, 16, 43, 'Advanced Financial Accounting', 'In-depth analysis of financial accounting standards and practices.', 'ACC502', 'https://via.placeholder.com/200x200'),
(93, 16, 43, 'Cost Accounting', 'Introduction to cost accounting principles and techniques.', 'ACC503', 'https://via.placeholder.com/200x200'),
(94, 16, 42, 'International Accounting', 'Accounting principles and practices in an international context.', 'ACC504', 'https://via.placeholder.com/200x200'),
(95, 16, 43, 'Taxation', 'Comprehensive study of tax systems and their application.', 'ACC505', 'https://via.placeholder.com/200x200'),
(96, 16, 42, 'Auditing', 'Principles and practices of auditing.', 'ACC506', 'https://via.placeholder.com/200x200'),
(97, 17, 44, 'Strategic Management', 'Study of strategy formulation and implementation.', 'MGT501', 'https://via.placeholder.com/200x200'),
(98, 17, 44, 'Organizational Behavior', 'Examination of individual and group behavior in organizations.', 'MGT502', 'https://via.placeholder.com/200x200'),
(99, 17, 45, 'Human Resource Management', 'Introduction to HRM practices and policies.', 'MGT503', 'https://via.placeholder.com/200x200'),
(100, 17, 44, 'Leadership and Management', 'Exploration of leadership theories and practices.', 'MGT504', 'https://via.placeholder.com/200x200'),
(101, 17, 45, 'Project Management', 'Principles of planning, executing, and closing projects.', 'MGT505', 'https://via.placeholder.com/200x200'),
(102, 17, 45, 'Business Ethics', 'Study of ethical issues in business.', 'MGT506', 'https://via.placeholder.com/200x200'),
(103, 18, 46, 'Financial Markets', 'Overview of financial markets and instruments.', 'FIN501', 'https://via.placeholder.com/200x200'),
(104, 18, 47, 'Corporate Finance', 'Study of corporate financial management.', 'FIN502', 'https://via.placeholder.com/200x200'),
(105, 18, 46, 'Investment Analysis', 'Principles of investment analysis and portfolio management.', 'FIN503', 'https://via.placeholder.com/200x200'),
(106, 18, 46, 'International Finance', 'Study of financial management in an international context.', 'FIN504', 'https://via.placeholder.com/200x200'),
(107, 18, 47, 'Financial Risk Management', 'Strategies for managing financial risks.', 'FIN505', 'https://via.placeholder.com/200x200'),
(108, 18, 47, 'Behavioral Finance', 'Study of psychological influences on financial decision-making.', 'FIN506', 'https://via.placeholder.com/200x200'),
(109, 19, 48, 'Curriculum Design', 'Principles of curriculum design and development.', 'EDU501', 'https://via.placeholder.com/200x200'),
(110, 19, 48, 'Instructional Strategies', 'Effective instructional strategies for diverse classrooms.', 'EDU502', 'https://via.placeholder.com/200x200'),
(111, 19, 49, 'Educational Assessment', 'Methods of educational assessment and evaluation.', 'EDU503', 'https://via.placeholder.com/200x200'),
(112, 19, 48, 'Curriculum Innovation', 'Innovative approaches to curriculum development.', 'EDU504', 'https://via.placeholder.com/200x200'),
(113, 19, 49, 'Policy and Practice', 'Examination of educational policy and its impact on practice.', 'EDU505', 'https://via.placeholder.com/200x200'),
(114, 19, 49, 'Technology in Education', 'Integration of technology in educational settings.', 'EDU506', 'https://via.placeholder.com/200x200'),
(115, 20, 50, 'Cognitive Development', 'Study of cognitive development in children and adolescents.', 'EDP501', 'https://via.placeholder.com/200x200'),
(116, 20, 50, 'Learning Theories', 'Examination of major theories of learning.', 'EDP502', 'https://via.placeholder.com/200x200'),
(117, 20, 51, 'Educational Assessment', 'Methods and tools for assessing student learning.', 'EDP503', 'https://via.placeholder.com/200x200'),
(118, 20, 50, 'Motivation in Education', 'Study of motivational theories and their application in education.', 'EDP504', 'https://via.placeholder.com/200x200'),
(119, 20, 51, 'Classroom Management', 'Strategies for effective classroom management.', 'EDP505', 'https://via.placeholder.com/200x200'),
(120, 20, 51, 'Special Education Needs', 'Overview of special educational needs and inclusive practices.', 'EDP506', 'https://via.placeholder.com/200x200'),
(121, 21, 52, 'Inclusive Education', 'Principles and practices of inclusive education.', 'SED501', 'https://via.placeholder.com/200x200'),
(122, 21, 52, 'Disability Studies', 'Examination of disability from a social and educational perspective.', 'SED502', 'https://via.placeholder.com/200x200'),
(123, 21, 53, 'Assistive Technology', 'Use of assistive technology in special education.', 'SED503', 'https://via.placeholder.com/200x200'),
(124, 21, 52, 'Behavioral Interventions', 'Behavioral strategies for students with special needs.', 'SED504', 'https://via.placeholder.com/200x200'),
(125, 21, 53, 'Special Education Law', 'Legal aspects of special education.', 'SED505', 'https://via.placeholder.com/200x200'),
(126, 21, 53, 'Collaboration and Teaming', 'Collaborative practices in special education.', 'SED506', 'https://via.placeholder.com/200x200'),
(127, 22, 54, 'Social Inequality', 'Study of social inequality and stratification.', 'SOC501', 'https://via.placeholder.com/200x200'),
(128, 22, 54, 'Sociological Theory', 'Examination of classical and contemporary sociological theories.', 'SOC502', 'https://via.placeholder.com/200x200'),
(129, 22, 55, 'Research Methods', 'Introduction to sociological research methods.', 'SOC503', 'https://via.placeholder.com/200x200'),
(130, 22, 54, 'Urban Sociology', 'Study of urbanization and urban life.', 'SOC504', 'https://via.placeholder.com/200x200'),
(131, 22, 55, 'Gender Studies', 'Exploration of gender in society.', 'SOC505', 'https://via.placeholder.com/200x200'),
(132, 22, 55, 'Globalization', 'Examination of globalization and its social impact.', 'SOC506', 'https://via.placeholder.com/200x200'),
(133, 23, 56, 'Political Theory', 'Study of political theories and ideologies.', 'POL501', 'https://via.placeholder.com/200x200'),
(134, 23, 57, 'Comparative Politics', 'Examination of political systems and governance in different countries.', 'POL502', 'https://via.placeholder.com/200x200'),
(135, 23, 56, 'International Relations', 'Study of international relations and global politics.', 'POL503', 'https://via.placeholder.com/200x200'),
(136, 23, 57, 'Public Policy', 'Analysis of public policy processes and implementation.', 'POL504', 'https://via.placeholder.com/200x200'),
(137, 23, 56, 'Political Economy', 'Study of the relationship between politics and economics.', 'POL505', 'https://via.placeholder.com/200x200'),
(138, 23, 57, 'Government and Politics', 'Examination of governmental structures and political processes.', 'POL506', 'https://via.placeholder.com/200x200'),
(139, 24, 58, 'Cultural Anthropology', 'Study of cultural practices and beliefs.', 'ANT501', 'https://via.placeholder.com/200x200'),
(140, 24, 59, 'Archaeological Methods', 'Introduction to archaeological methods and techniques.', 'ANT502', 'https://via.placeholder.com/200x200'),
(141, 24, 58, 'Anthropological Theory', 'Examination of key theoretical frameworks in anthropology.', 'ANT503', 'https://via.placeholder.com/200x200'),
(142, 24, 58, 'Ethnography', 'Methods and practices of ethnographic research.', 'ANT504', 'https://via.placeholder.com/200x200'),
(143, 24, 59, 'Human Evolution', 'Study of human biological and cultural evolution.', 'ANT505', 'https://via.placeholder.com/200x200'),
(144, 24, 59, 'Anthropology of Religion', 'Examination of religious beliefs and practices across cultures.', 'ANT506', 'https://via.placeholder.com/200x200'),
(145, 25, 60, 'Sustainable Agriculture', 'Principles and practices of sustainable agriculture.', 'CRP501', 'https://via.placeholder.com/200x200'),
(146, 25, 60, 'Plant Breeding', 'Techniques and principles of plant breeding.', 'CRP502', 'https://via.placeholder.com/200x200'),
(147, 25, 61, 'Crop Physiology', 'Study of physiological processes in crop plants.', 'CRP503', 'https://via.placeholder.com/200x200'),
(148, 25, 60, 'Soil Fertility', 'Management of soil fertility and plant nutrition.', 'CRP504', 'https://via.placeholder.com/200x200'),
(149, 25, 61, 'Pest Management', 'Integrated pest management strategies.', 'CRP505', 'https://via.placeholder.com/200x200'),
(150, 25, 61, 'Agroecology', 'Ecological principles applied to agricultural systems.', 'CRP506', 'https://via.placeholder.com/200x200'),
(151, 26, 62, 'Animal Nutrition', 'Principles of animal nutrition and feed formulation.', 'ANS501', 'https://via.placeholder.com/200x200'),
(152, 26, 63, 'Livestock Management', 'Techniques and practices in livestock management.', 'ANS502', 'https://via.placeholder.com/200x200'),
(153, 26, 62, 'Animal Genetics', 'Study of genetic principles in animal breeding.', 'ANS503', 'https://via.placeholder.com/200x200'),
(154, 26, 63, 'Animal Health', 'Introduction to animal health and veterinary science.', 'ANS504', 'https://via.placeholder.com/200x200'),
(155, 26, 62, 'Dairy Science', 'Study of dairy production and management.', 'ANS505', 'https://via.placeholder.com/200x200'),
(156, 26, 63, 'Poultry Science', 'Principles and practices of poultry production.', 'ANS506', 'https://via.placeholder.com/200x200'),
(157, 27, 64, 'Soil Chemistry', 'Chemical properties and processes in soils.', 'SSL501', 'https://via.placeholder.com/200x200'),
(158, 27, 64, 'Soil Physics', 'Physical properties and processes of soil.', 'SSL502', 'https://via.placeholder.com/200x200'),
(159, 27, 65, 'Soil Fertility Management', 'Techniques for managing soil fertility.', 'SSL503', 'https://via.placeholder.com/200x200'),
(160, 27, 64, 'Soil Conservation', 'Principles and practices of soil conservation.', 'SSL504', 'https://via.placeholder.com/200x200'),
(161, 27, 65, 'Environmental Soil Science', 'Impact of soils on the environment.', 'SSL505', 'https://via.placeholder.com/200x200'),
(162, 27, 65, 'Soil Microbiology', 'Study of microorganisms in soil.', 'SSL506', 'https://via.placeholder.com/200x200'),
(163, 28, 66, 'Environmental Impact Assessment', 'Methods for assessing environmental impacts.', 'ENV501', 'https://via.placeholder.com/200x200'),
(164, 28, 66, 'Sustainability Management', 'Principles of sustainability and their application.', 'ENV502', 'https://via.placeholder.com/200x200'),
(165, 28, 67, 'Environmental Policy', 'Study of environmental policy-making processes.', 'ENV503', 'https://via.placeholder.com/200x200'),
(166, 28, 66, 'Climate Change', 'Examination of climate change and its impacts.', 'ENV504', 'https://via.placeholder.com/200x200'),
(167, 28, 67, 'Waste Management', 'Techniques and practices in waste management.', 'ENV505', 'https://via.placeholder.com/200x200'),
(168, 28, 67, 'Environmental Law', 'Legal frameworks for environmental protection.', 'ENV506', 'https://via.placeholder.com/200x200'),
(169, 29, 68, 'Forest Ecology', 'Study of ecological processes in forests.', 'FOR501', 'https://via.placeholder.com/200x200'),
(170, 29, 68, 'Silviculture', 'Principles and practices of silviculture.', 'FOR502', 'https://via.placeholder.com/200x200'),
(171, 29, 69, 'Forest Management', 'Techniques for managing forest resources.', 'FOR503', 'https://via.placeholder.com/200x200'),
(172, 29, 68, 'Forest Conservation', 'Principles of forest conservation and protection.', 'FOR504', 'https://via.placeholder.com/200x200'),
(173, 29, 69, 'Urban Forestry', 'Study of forestry practices in urban environments.', 'FOR505', 'https://via.placeholder.com/200x200'),
(174, 29, 69, 'Forest Policy', 'Examination of policies affecting forest management.', 'FOR506', 'https://via.placeholder.com/200x200'),
(175, 30, 70, 'Wildlife Ecology', 'Study of ecological principles in wildlife management.', 'WLD501', 'https://via.placeholder.com/200x200'),
(176, 30, 70, 'Conservation Biology', 'Principles of conservation biology and its application.', 'WLD502', 'https://via.placeholder.com/200x200'),
(177, 30, 71, 'Wildlife Habitat Management', 'Techniques for managing wildlife habitats.', 'WLD503', 'https://via.placeholder.com/200x200'),
(178, 30, 71, 'Wildlife Law', 'Legal frameworks for wildlife protection.', 'WLD504', 'https://via.placeholder.com/200x200'),
(179, 30, 70, 'Wildlife Research Methods', 'Methods for conducting wildlife research.', 'WLD505', 'https://via.placeholder.com/200x200'),
(180, 30, 71, 'Human-Wildlife Conflict', 'Study of conflicts between humans and wildlife and their resolution.', 'WLD506', 'https://via.placeholder.com/200x200'),
(181, 31, 72, 'Software Development', 'Principles of software development and lifecycle management.', 'SWE501', 'https://via.placeholder.com/200x200'),
(182, 31, 73, 'Systems Design', 'Advanced techniques in systems design and architecture.', 'SWE502', 'https://via.placeholder.com/200x200'),
(183, 31, 72, 'Agile Methodologies', 'Introduction to agile development methodologies.', 'SWE503', 'https://via.placeholder.com/200x200'),
(184, 31, 73, 'Software Testing', 'Principles and practices of software testing.', 'SWE504', 'https://via.placeholder.com/200x200'),
(185, 31, 72, 'Mobile App Development', 'Techniques for developing mobile applications.', 'SWE505', 'https://via.placeholder.com/200x200'),
(186, 31, 73, 'Cloud Computing', 'Study of cloud computing principles and practices.', 'SWE506', 'https://via.placeholder.com/200x200'),
(187, 32, 74, 'Information Systems Analysis', 'Techniques for analyzing information systems.', 'ISY501', 'https://via.placeholder.com/200x200'),
(188, 32, 75, 'Database Management', 'Principles of database design and management.', 'ISY502', 'https://via.placeholder.com/200x200'),
(189, 32, 74, 'IT Project Management', 'Introduction to IT project management practices.', 'ISY503', 'https://via.placeholder.com/200x200'),
(190, 32, 75, 'Enterprise Systems', 'Study of enterprise resource planning systems.', 'ISY504', 'https://via.placeholder.com/200x200'),
(191, 32, 74, 'Business Intelligence', 'Principles and practices of business intelligence.', 'ISY505', 'https://via.placeholder.com/200x200'),
(192, 32, 75, 'Information Security', 'Introduction to information security principles.', 'ISY506', 'https://via.placeholder.com/200x200'),
(193, 33, 76, 'Network Security', 'Principles of network security and protocols.', 'CYS501', 'https://via.placeholder.com/200x200'),
(194, 33, 77, 'Cybersecurity Management', 'Management practices in cybersecurity.', 'CYS502', 'https://via.placeholder.com/200x200'),
(195, 33, 76, 'Ethical Hacking', 'Introduction to ethical hacking techniques.', 'CYS503', 'https://via.placeholder.com/200x200'),
(196, 33, 77, 'Cryptography', 'Study of cryptographic principles and applications.', 'CYS504', 'https://via.placeholder.com/200x200'),
(197, 33, 76, 'Incident Response', 'Techniques for responding to cybersecurity incidents.', 'CYS505', 'https://via.placeholder.com/200x200'),
(198, 33, 77, 'Digital Forensics', 'Principles and practices of digital forensics.', 'CYS506', 'https://via.placeholder.com/200x200'),
(199, 34, 78, 'Investigative Journalism', 'Techniques and practices of investigative journalism.', 'JOU501', 'https://via.placeholder.com/200x200'),
(200, 34, 79, 'Broadcast Journalism', 'Principles and skills of broadcast journalism.', 'JOU502', 'https://via.placeholder.com/200x200'),
(201, 34, 78, 'Digital Journalism', 'Strategies for producing journalism in digital formats.', 'JOU503', 'https://via.placeholder.com/200x200'),
(202, 34, 79, 'Photojournalism', 'Techniques of visual storytelling in journalism.', 'JOU504', 'https://via.placeholder.com/200x200'),
(203, 34, 78, 'Ethics in Journalism', 'Ethical considerations in the practice of journalism.', 'JOU505', 'https://via.placeholder.com/200x200'),
(204, 34, 79, 'Journalism Writing', 'Skills for effective writing in journalistic contexts.', 'JOU506', 'https://via.placeholder.com/200x200'),
(205, 35, 80, 'Strategic PR Planning', 'Strategies for planning effective public relations campaigns.', 'PR501', 'https://via.placeholder.com/200x200'),
(206, 35, 81, 'Media Relations', 'Skills for managing relationships with the media.', 'PR502', 'https://via.placeholder.com/200x200'),
(207, 35, 80, 'Crisis Communication', 'Strategies for managing communication during crises.', 'PR503', 'https://via.placeholder.com/200x200'),
(208, 35, 81, 'Corporate PR', 'Practices of public relations within corporate contexts.', 'PR504', 'https://via.placeholder.com/200x200'),
(209, 35, 80, 'Social Media PR', 'Utilizing social media platforms for public relations purposes.', 'PR505', 'https://via.placeholder.com/200x200'),
(210, 35, 81, 'PR Campaign Management', 'Skills for managing PR campaigns from conception to execution.', 'PR506', 'https://via.placeholder.com/200x200'),
(211, 36, 82, 'Advertising Strategy', 'Development of effective advertising strategies.', 'ADV501', 'https://via.placeholder.com/200x200'),
(212, 36, 83, 'Digital Advertising', 'Utilizing digital platforms for advertising purposes.', 'ADV502', 'https://via.placeholder.com/200x200'),
(213, 36, 82, 'Branding and Identity', 'Building and managing brand identity.', 'ADV503', 'https://via.placeholder.com/200x200'),
(214, 36, 83, 'Creative Advertising', 'Techniques for creating compelling advertising content.', 'ADV504', 'https://via.placeholder.com/200x200'),
(215, 36, 82, 'Advertising Campaign Management', 'Skills for managing advertising campaigns.', 'ADV505', 'https://via.placeholder.com/200x200'),
(216, 36, 83, 'Consumer Behavior', 'Understanding consumer behavior for effective advertising.', 'ADV506', 'https://via.placeholder.com/200x200');

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
(25, 9, 'Department of Crop Science', 'Description for Department of Crop Science', 'https://via.placeholder.com/300x200', '1500', 400),
(26, 9, 'Department of Animal Science', 'Description for Department of Animal Science', 'https://via.placeholder.com/300x200', '2100', 280),
(27, 9, 'Department of Soil Science', 'Description for Department of Soil Science', 'https://via.placeholder.com/300x200', '180', 1700),
(28, 10, 'Department of Environmental Management', 'Description for Department of Environmental Management', 'https://via.placeholder.com/300x200', '1000', 120),
(29, 10, 'Department of Forestry', 'Description for Department of Forestry', 'https://via.placeholder.com/300x200', '1200', 158),
(30, 10, 'Department of Wildlife Management', 'Description for Department of Wildlife Management', 'https://via.placeholder.com/300x200', '3000', 198),
(31, 11, 'Department of Software Engineering', 'Description for Department of Software Engineering', 'https://via.placeholder.com/300x200', '3500', 259),
(32, 11, 'Department of Information Systems', 'Description for Department of Information Systems', 'https://via.placeholder.com/300x200', '3000', 192),
(33, 11, 'Department of Cyber Security', 'Description for Department of Cyber Security', 'https://via.placeholder.com/300x200', '4000', 298),
(34, 12, 'Department of Journalism', 'Description for Department of Journalism', 'https://via.placeholder.com/300x200', '1400', 123),
(35, 12, 'Department of Public Relations', 'Description for Department of Public Relations', 'https://via.placeholder.com/300x200', '1500', 174),
(36, 12, 'Department of Advertising', 'Description for Department of Advertising', 'https://via.placeholder.com/300x200', '1500', 162);

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
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=217;

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
