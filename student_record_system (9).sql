-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 06, 2025 at 11:16 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `student_record_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `role` enum('admin','teacher','student') NOT NULL,
  `activity` varchar(255) NOT NULL,
  `details` text DEFAULT NULL,
  `activity_time` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`id`, `user_id`, `role`, `activity`, `details`, `activity_time`) VALUES
(240, 1118, 'admin', 'Logged in', NULL, '2025-06-05 15:52:20'),
(241, 1361, 'admin', 'Created admin user', 'Name: Ram Karki', '2025-06-05 15:54:44'),
(242, 1361, 'admin', 'Logged in', NULL, '2025-06-05 15:56:10'),
(243, 1361, 'admin', 'Logged out', NULL, '2025-06-05 16:08:22'),
(244, 1118, 'admin', 'Logged in', NULL, '2025-06-05 16:08:41'),
(245, 1118, 'admin', 'Logged out', NULL, '2025-06-05 16:12:35'),
(246, 1118, 'admin', 'Logged in', NULL, '2025-06-06 08:08:19'),
(247, 1118, 'admin', 'Logged out', NULL, '2025-06-06 08:08:36'),
(248, 1118, 'admin', 'Logged in', NULL, '2025-06-06 08:08:39'),
(249, 40130, 'student', 'Logged in', NULL, '2025-06-06 08:11:23'),
(250, 1011, 'teacher', 'Logged in', NULL, '2025-06-06 08:13:01'),
(251, 1011, 'teacher', 'Logged out', NULL, '2025-06-06 10:26:38'),
(252, 1011, 'teacher', 'Logged in', NULL, '2025-06-06 10:40:42'),
(253, 1011, 'teacher', 'Logged out', NULL, '2025-06-06 11:09:46'),
(254, 1118, 'admin', 'Logged in', NULL, '2025-06-06 11:09:54'),
(255, 1118, 'admin', 'Logged out', NULL, '2025-06-06 11:12:56'),
(256, 1011, 'teacher', 'Logged in', NULL, '2025-06-06 11:13:02'),
(257, 1011, 'teacher', 'Logged out', NULL, '2025-06-06 11:13:32'),
(258, 1118, 'admin', 'Logged in', NULL, '2025-06-06 11:14:33'),
(259, 1118, 'admin', 'Logged out', NULL, '2025-06-06 11:14:58'),
(260, 1011, 'teacher', 'Logged in', NULL, '2025-06-06 11:15:02');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `email` varchar(25) DEFAULT NULL,
  `contact` char(8) DEFAULT NULL,
  `role` varchar(25) DEFAULT NULL,
  `user_name` varchar(15) DEFAULT NULL,
  `hash_password` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `status` enum('pending','approved','rejected') DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `name`, `email`, `contact`, `role`, `user_name`, `hash_password`, `last_login`, `status`) VALUES
(1111, 'Josephine Thompson', 'joshth09@gmail.com', '72901234', 'Coordinator', 'joshephine01', 'josh@ad', '2025-05-28 00:00:00', 'pending'),
(1112, 'Magana Green', 'magana@gmail.com', '71456456', 'Super Admin', 'mgreen_admin', '$2y$10$7KCyQpUriZGboF8HOusEAOy/kXMCXzAviHH/8Fq0rR1e.8dKoBsLy', NULL, 'pending'),
(1113, 'Blue Gomez', 'bluegomez@gmail.com', '92123123', 'Department Admin', 'bgomez_admin', '$2y$10$aYjU3TLWc4V3UQnkzCl7KOrrNDcJwFUDN4pdkFmXBQOF//QZ5jKZW', '2025-05-28 00:00:00', 'pending'),
(1114, 'Joe Khan', 'joekhan1@gmail.com', '74159159', 'Course Admin', 'jkhan_admin', '$2y$10$EN8DwneesxCe4py5OWSgNuZFAx.5gwI6rD.Z.0S4wbvHZiD./kPg2', '2025-05-28 00:00:00', 'pending'),
(1116, 'Rachel Stephan', 'rachel11@gmail.com', '94789987', 'Teacher Admin', 'rstephan_admin', '$2y$10$6wkI3pFG/uuJ6yGbVvkfl.cyI8DyyJdqpsgZkdOu5y0N19zXYX2/C', '2025-05-27 00:00:00', 'pending'),
(1117, 'Suspa Thompson', 'suspathomp@gmail.com', '98656741', 'Student Admin', 'sthompson_admin', '$2y$10$PgQki07Xd6bSAIF.C91txe1kDDiBGTS.eyp9mtxq.feTAbviXfn0a', NULL, 'pending'),
(1118, 'Seemran Khadka', 'seemrankhadka@gmail.com', '12345678', 'Super Admin', 'skhadka_admin', '$2y$10$KT.rrvoC6BsGe1pB4uWqieUc.8wdOaknGbPgHsAtD7VlJY/vCc.w2', '2025-06-06 11:14:33', 'approved'),
(1119, 'Ram Karki', 'ramkarki12@gmail.com', '98601142', 'Department Admin', 'rkarki_admin', '$2y$10$YwO8Pw4WOJuySAwAciaZk.RBslLLpVedXU8Z.Gl9/xAR4uvv7E91K', '2025-06-05 15:56:10', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `assignments`
--

CREATE TABLE `assignments` (
  `id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `code` varchar(50) NOT NULL,
  `title` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `uploaded_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `assignments`
--

INSERT INTO `assignments` (`id`, `teacher_id`, `code`, `title`, `file_name`, `file_path`, `uploaded_at`) VALUES
(1, 1011, 'AS901', 'Art ', 'Lecture 13 Part 1.pdf', 'uploads/1749201329_Lecture 13 Part 1.pdf', '2025-06-06 09:15:29'),
(2, 1011, 'AS901', 'Art Design', 'Lecture 17-RelyGuar-Part 1.pdf', 'uploads/1749201342_Lecture 17-RelyGuar-Part 1.pdf', '2025-06-06 09:15:42');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `code` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `type` varchar(100) DEFAULT NULL,
  `credits` float NOT NULL,
  `description` varchar(200) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `teacher_id` int(11) DEFAULT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `status` enum('pending','approved','rejected') DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`code`, `name`, `type`, `credits`, `description`, `image`, `is_active`, `teacher_id`, `admin_id`, `status`) VALUES
('AM801', 'Animation & Motion Graphic', 'Theoretical', 1.5, 'Covers the principles of animation, frame-by-frame drawing, and motion design using tools like Adobe After Effects or Blender. Students create animated shorts, GIFs, and title sequences. It’s a blend ', 'img/animation.png', 1, 1001, 1114, 'pending'),
('AS901', 'Sound Design for Virtual Reality', 'Theoretical', 1.5, 'explores the unique challenges and techniques of sound design in immersive environments like virtual reality (VR). Students learn how to create spatialized audio, design interactive soundscapes, and m', 'img/sounddesign.jpg', 1, 1011, 1114, 'pending'),
('AS903', 'Media Archaeology', 'Practical', 1.5, 'focuses on the history and evolution of media technologies, exploring the forgotten and obscure forms of communication and media devices that have shaped our digital world.', 'img/media.png', 0, NULL, 1114, 'pending'),
('AS905', 'Transmedia Storytelling', 'Theoretical', 1.5, 'Teaches students how to create narratives that unfold across multiple platforms and media formats, such as films, video games, social media, and interactive websites.', 'img/transmedia.jpg', 0, NULL, 1114, 'pending'),
('DI601', 'Digital Art & Illustration', 'Practical', 2.5, 'This course introduces students to creating art using digital tools like tablets and design software (e.g., Adobe Illustrator, Procreate). Topics include character design, vector art, and visual story', 'img/digital.png', 1, 1006, 1114, 'pending'),
('DP301', 'Drawing & Painting Techniques', 'Practical', 1.5, 'Drawing & Painting Techniques', 'img/drawing.png', 0, NULL, 1114, 'pending'),
('FD905', 'Fashion Design and Textile Art', 'Practical', 2.5, 'Students learn the basics of fashion illustration, garment design, and textile manipulation. The course includes sketching clothing concepts, using fabrics, and basic sewing techniques to create wears', 'img/fashion.png', 0, NULL, 1114, 'pending'),
('FM201', 'Film Making And Editing', 'Theoretical', 1.5, 'Film Making And Editing', 'img/film.png', 0, NULL, 1114, 'pending'),
('IM780', 'Interactive Media & UI Design', 'Practical', 1.5, 'This course explores how to design intuitive, interactive user experiences for apps, websites, and digital installations.', 'img/media.jpg', 0, NULL, 1114, 'pending'),
('MP501', ' Music Production', 'Theoretical', 3.5, 'Students learn how to compose, record, mix, and produce music using digital audio workstations (DAWs) like FL Studio or GarageBand. The course covers beats, sampling, and sound design. It’s hands-on a', 'img/music.png', 1, 1008, 1114, 'pending'),
('PV701', 'Photography and Visual Storytelling', 'Practical', 4.5, 'Covers camera techniques, composition, lighting, and photo editing. Students explore how images can convey emotions, ideas, and narratives. Projects include portrait, landscape, and documentary-style ', 'img/photography.png', 1, NULL, 1114, 'pending'),
('QW12', 'Cultural Coding and Digital Art', 'Theoretical', 1.5, 'Merges digital art creation with cultural studies, focusing on the use of coding and software tools to express cultural identity and social issues.', 'img/cultural.jpg', 0, NULL, 1114, 'pending'),
('TA401', 'Theatre & Acting', 'Practical', 1.5, 'Introduces the basics of stage performance, character development, and script analysis. Students engage in monologues, improvisation, and short plays. The course builds confidence, public speaking, an', 'img/theatre.png', 1, 1002, 1114, 'pending');

--
-- Triggers `course`
--
DELIMITER $$
CREATE TRIGGER `trg_credits_insert` BEFORE INSERT ON `course` FOR EACH ROW BEGIN
  IF NEW.credits < 1.0 OR NEW.credits > 6.0 THEN
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'Credits must be between 1.0 and 6.0';
  END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trg_credits_update` BEFORE UPDATE ON `course` FOR EACH ROW BEGIN
  IF NEW.credits < 1.0 OR NEW.credits > 6.0 THEN
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'Credits must be between 1.0 and 6.0';
  END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `course_materials`
--

CREATE TABLE `course_materials` (
  `id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `code` varchar(50) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `uploaded_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course_materials`
--

INSERT INTO `course_materials` (`id`, `teacher_id`, `code`, `file_name`, `file_path`, `uploaded_at`) VALUES
(1, 1011, 'AS901', 'combinepdf.pdf', 'img/combinepdf.pdf', '2025-06-06 09:11:31'),
(2, 1011, 'AS901', 'Practical 16.pdf', 'img/Practical 16.pdf', '2025-06-06 09:11:52'),
(3, 1011, 'AS903', 'CTEC2712-04-Interaction.pdf', 'img/CTEC2712-04-Interaction.pdf', '2025-06-06 09:12:46'),
(4, 1001, 'AM801', 'New Usecase.png', 'img/New Usecase.png', '2025-06-02 10:55:54');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `name` varchar(20) NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  `admin_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`name`, `description`, `admin_id`) VALUES
('Arts & Media', 'Arts and media shape public discourse, influence student.', 1119);

-- --------------------------------------------------------

--
-- Table structure for table `enroll`
--

CREATE TABLE `enroll` (
  `enroll_id` int(11) NOT NULL,
  `student_id` int(50) NOT NULL,
  `code` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `enroll`
--

INSERT INTO `enroll` (`enroll_id`, `student_id`, `code`) VALUES
(10000, 40111, 'AM801'),
(10001, 40112, 'AM801'),
(10002, 40113, 'AM801'),
(10003, 40114, 'TA401'),
(10004, 40115, 'TA401'),
(10005, 40116, 'TA401'),
(10006, 40117, 'MP501'),
(10007, 40118, 'MP501'),
(10008, 40119, 'MP501'),
(10009, 40110, 'AM801'),
(10010, 40111, 'AM801'),
(10011, 40112, 'AM801'),
(10012, 40113, 'AM801'),
(10013, 40117, 'TA401'),
(10014, 40118, 'TA401'),
(10015, 40119, 'TA401'),
(10016, 40121, 'MP501'),
(10017, 40122, 'MP501'),
(10018, 40110, 'MP501'),
(10019, 40115, 'PV701'),
(10020, 40123, 'PV701'),
(10021, 40124, 'PV701'),
(10022, 40125, 'AM801'),
(10023, 40127, 'AS901'),
(10024, 40128, 'AS901'),
(10025, 40114, 'DI601'),
(10026, 40116, 'DI601');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `class` int(10) DEFAULT NULL,
  `is_on_scholarship` tinyint(1) DEFAULT NULL,
  `user_name` varchar(200) DEFAULT NULL,
  `hash_password` varchar(255) DEFAULT NULL,
  `status` enum('pending','approved','rejected') DEFAULT 'pending',
  `admin_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `name`, `email`, `class`, `is_on_scholarship`, `user_name`, `hash_password`, `status`, `admin_id`) VALUES
(40110, 'Jacob Jensen', 'jacod@std.uni.edu', 7, 0, 'jjensen_student', '$2y$10$G/BbgGGhQYe7Pd3/X5lZ0OQqHUQa8tqh.pH/1VO5H949vccDklm0y', 'pending', 1117),
(40111, 'Jack Forsman', 'jack@std.uni.edu', 5, 0, 'jforsman_student', '$2y$10$wjlrTHgYmDty6V8y0g.IJO1/MfUrE1qxProkcYIAq7NvEN1V3zDMe', 'pending', 1117),
(40112, 'Lukas Hansen', 'lukas@std.uni.edu', 5, 0, 'lhansen_student', '$2y$10$.FKLJY6D.6rOrVDL1k1qEeAZWlLaRa0Tp08OTFYYBUn1Y093JUfna', 'pending', 1117),
(40113, 'Emma Sorenson', 'emma@std.uni.edu', 5, 0, 'esorenson_student', '$2y$10$u2kcdW2KK8ieJqWdxo.l5OCp6/xS/3Jx8EnUZ0U8q24of7AJNAp..', 'pending', 1117),
(40114, 'Noah Larsen', 'noah@std.uni.edu', 10, 0, 'nlarsen_student', '$2y$10$pKKQjOmy8vESt0SYSHjm7ueGc6vecPwfUGnUJ9yRv81RWw.aQYwga', 'pending', 1117),
(40115, 'Freja Moller', 'freja@std.uni.edu', 8, 0, 'fmoller_student', '$2y$10$Aw7sWk.CT64CxUvSHCTeWOp/6Qu5h7IQR74LqwS5H3phRx8Jh1hne', 'pending', 1117),
(40116, 'Victor Henrik', 'victor@std.uni.edu', 10, 1, 'vhenrik_student', '$2y$10$Hu0fW4YBEorlLZsx0Gqm6.1Jc.dUTxB7kfY3SkHv.vGhBDSJfiIdG', 'pending', 1117),
(40117, 'Marc Hennery', 'marc@std.uni.edu', 6, 0, 'mhennery_student', '$2y$10$89zOH5bxKwFP8Axt.IQ5k.m15aQgTU9PMmAQXsvwGno0fDRWj4eq.', 'pending', 1117),
(40118, 'Selena Gomez', 'selena@std.uni.edu', 6, 0, 'sgomez_student', '$2y$10$whQgkAXWEQU7uNHY2zPVlu8mJ4kTzvy8Ua9rctsuHS.JMUrsfYyxi', 'pending', 1117),
(40119, 'Matthew lewis', 'matthew@std.uni.edu', 6, 0, 'mlewis_student', '$2y$10$sYr287CvJ8TOTW0BCkG54Ou4APmpn1l8DUSE/qGGPm5gjznKqNcRS', 'pending', 1117),
(40121, 'Taylor Swift', 'taylor@std.uni.edu', 7, 1, 'tswift_student', '$2y$10$vc4ho3RpFeYbQF0tYVKb2OsqvFcTsziqEH.Wc7RKRu0JPiKnK4e36', 'pending', 1117),
(40122, 'Thea Williamson', 'thea@std.uni.edu', 7, 0, 'twilliamson_student', '$2y$10$reMuTugnJLOjT95hKqcfeOU7lARhP9Fze3XBvtQlIACfdBALZfk6y', 'pending', 1117),
(40123, 'David Beckham', 'david@std.uni.edu', 8, 0, 'dbeckham_student', '$2y$10$LFL4gBIi0wTdcK.fgYtPseIutoWdsA5Fr4Dzg7QmnavUnNevfOhQy', 'pending', 1117),
(40124, 'Ragnar Lothbrok', 'ragnar@std.uni.edu', 8, 0, 'rlothbrok_student', '$2y$10$0unNJxOpJLEAESAO63/0Q.ycpAIeYYtJnWpoyACL1pBJ8XDx7yT/y', 'pending', 1117),
(40125, 'Rollo William', 'rollo@std.uni.edu', 5, 0, 'rwilliam_student', '$2y$10$mnmTUy5jwsjTFLLeXveUC.WB0M3bF0OgLneKTye2uYLi4vpZ8U2X.', 'pending', 1117),
(40126, 'Peter', 'peter@std.uni.edu', 6, 0, 'ppeter_student', '$2y$10$GWhZJP1MgfL/yDLs8DunKeDLTMr7kqpiZ106AdzN7YVrl1bf8ICXq', 'pending', 1117),
(40127, 'Erling Haland', 'erling@std.uni.edu', 9, 0, 'ehaland_student', '$2y$10$lGIfbx7Y497EHiZ2YMN.2.syFJlLrM5H2TeFK9GAT40d0ohL6BJ7i', 'pending', 1117),
(40128, 'Roman Reigns', 'roman@std.uni.edu', 9, 0, 'rreigns_student', '$2y$10$AD6WdeIlKdRmx4RjUdFayOlIsqF4KTDPxJSkd9lQNd7EkPtYMYbmW', 'pending', 1117),
(40130, 'Nishan kc', 'nishan@gmail.com', 7, 1, 'nkc_student', '$2y$10$svWvKa42ImzU/9jILpBWkexxrcAFyfElx2lXPzExXmkyJsBAv.Y/6', 'pending', 1117);

-- --------------------------------------------------------

--
-- Table structure for table `submitted_assignments`
--

CREATE TABLE `submitted_assignments` (
  `id` int(11) NOT NULL,
  `student_id` int(200) NOT NULL,
  `file_name` varchar(200) NOT NULL,
  `file_path` varchar(500) NOT NULL,
  `code` varchar(20) NOT NULL,
  `teacher_id` int(200) NOT NULL,
  `uploaded_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `submitted_assignments`
--

INSERT INTO `submitted_assignments` (`id`, `student_id`, `file_name`, `file_path`, `code`, `teacher_id`, `uploaded_at`) VALUES
(1, 40113, 'ctec2712_wad_php-lab-worksheet-01_getting-started.pdf', 'uploads/1748469209_ctec2712_wad_php-lab-worksheet-01_getting-started.pdf', 'DI601', 1010, '2025-05-28 21:53:29'),
(3, 40113, 'database.pdf', 'uploads/1748813319_database.pdf', 'DI601', 1009, '2025-06-01 21:28:39'),
(4, 40120, 'scenario.pdf', 'uploads/1748849705_scenario.pdf', 'AS905', 1010, '2025-06-02 07:35:05');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `teacher_id` int(11) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `qualification` varchar(100) DEFAULT NULL,
  `user_name` varchar(15) DEFAULT NULL,
  `hash_password` varchar(200) DEFAULT NULL,
  `photo` varchar(200) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `status` enum('pending','approved','rejected') DEFAULT 'pending',
  `admin_id` int(11) NOT NULL,
  `code` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`teacher_id`, `name`, `email`, `qualification`, `user_name`, `hash_password`, `photo`, `description`, `status`, `admin_id`, `code`) VALUES
(1001, 'Sophie Graversen', 'sophie.graversen@university.edu', 'MA. Animation ARTS', 'sgraversen_teac', '$2y$10$ssIOtToHebs5MRZL7iYG6OqB8BfOa.QQmTS9EchKYb8cYic8S4XRu', 'img/sophie.jpg', 'This program offers a multidisciplinary approach to studio art, encompassing areas such as painting, sculpture, photography, and digital media. Students engage in individual and group critiques, semin', 'pending', 1116, 'AM801'),
(1002, 'Alice Jensen', 'alice.jensen@university.edu', 'MA. Acting for Screen or Stage', 'ajensen_teacher', '$2y$10$iUP31r5kBqPwtz/moAToJ.kCrDA8V/pz5mzvgp7Ho4tfRHCtiLvru', 'img/alice.jpg', 'Focusing on performance techniques for both stage and screen, this course offers intensive training in acting, voice, movement, and text analysis. Students work closely with industry professionals to ', 'pending', 1116, 'TA401'),
(1003, 'Henrik Olsen', 'henrik.olsen@university.edu', 'MA. Visual Communication(Photography)', 'holsen_teacher', '$2y$10$A/jB4ahTx6AJh36a34wMqO72SqK0xDsz9.EY53U38iAbzpHh.8NGi', 'img/henrik.jpg', 'This program emphasizes the development of visual storytelling skills through photography. Students engage in both traditional and digital imaging techniques, learning to communicate effectively throu', 'pending', 1116, NULL),
(1004, 'Emily Norgaard', 'emily.norgaard@university.edu', 'MA. Drama and Theatre Studies', 'enorgaard_teach', '$2y$10$Q92Qi2Fvd20tSKOJNP34ou.2AuK2eHe5DQOl3yWjSe4sCX2PtEJyW', 'img/emily.jpg', 'Designed to equip students with advanced skills in editing and post-production processes, this program covers creative editing techniques, color grading, visual effects, and industry-standard workflow', 'pending', 1116, NULL),
(1005, 'Benjamin Madsen', 'benjamin.madsen@university.edu', 'MA. Music Production', 'bmadsen_teacher', '$2y$10$mDMA0GZv/wFyvsUFIryRbOq.PwG7ujnjqKXyMZzPnxw9g3j5Z85RO', 'img/benjamin.jpg', 'Aimed at developing high-level music production skills, this program covers creative practices, technical studio work, critical listening, and research. Students are prepared for careers as skilled pr', 'pending', 1116, NULL),
(1006, 'Linda Shah', 'linda.shah@university.edu', 'MFA. Studio Art', 'lshah_teacher', '$2y$10$WaPAnhfuX4qYNPMB2QKqyOSrZhAqDwdFx4Fwd49rcstktZ7wxOv7e', 'img/linda.jpg', 'Designed to equip students with advanced skills in editing and post-production processes, this program covers creative editing techniques, color grading, visual effects, and industry-standard workflow', 'pending', 1116, 'DI601'),
(1007, 'Mark Taylor', 'mark.taylor@university.edu', 'MA. Electronic Music Production', 'mtaylor_teacher', '$2y$10$u0O7btHi563jPK97oOrtSOomBjaI2bsajxDk8SVQ4oxoAh8ZZNZdy', 'img/mark.jpg', 'This degree focuses on the intersection of music production, technology, and innovation. Students explore cutting-edge developments in music creation, utilizing advanced digital tools to produce and m', 'pending', 1116, NULL),
(1008, 'Johan Sorensen', 'johan.sorensen@university.edu', 'MA. Fine Art Photography', 'jsorensen_teach', '$2y$10$tzickTMuuMrQvwjXnQwTaOgmrnmo2yZkeadJRPzRbJlDVLbb94TQu', 'img/johan.jpg', 'This course encourages students to explore photography as a fine art medium, fostering experimentation and critical engagement. Through seminars and workshops, students develop a personal artistic vis', 'pending', 1116, 'MP501'),
(1009, 'Amrit Singh', 'amrit.singh@university.edu', 'MA. Film Production', 'asingh_teacher', '$2y$10$E7JBW7EyiUek0kTZBwD6k.MWS5IeiN1xMOqMULZFF.AaCa.lV3qDG', 'img/amrit.jpg', 'This degree provides comprehensive training in film and media production, including scriptwriting, cinematography, sound recording, and editing. Students gain both practical skills and theoretical kno', 'pending', 1116, NULL),
(1010, 'Raj Patel', 'raj.patel@university.edu', 'MA. Digital Art and Design', 'rpatel_teacher', '$2y$10$cQKK5gLsd96f21krS9zvku.hJRY19oIZsHvayu3.2KSRx8J5SUW5y', 'img/raj.webp', 'Focusing on the dynamic field of digital art, this program integrates studio practice with studies in history, theory, and technology. Students explore interdisciplinary approaches to digital creation', 'pending', 1116, NULL),
(1011, 'Anam Naeupane', 'aeman@gmail.com', 'Masters in Philosophy', 'anaeupane_teach', '$2y$10$oY9eaKIgZjCZF6Pdeoehte2PtMvF3qvtdgz78Xe/L50xVyxqGseR2', 'img/fashion.png', 'abcsddfgfg', 'pending', 1116, 'AS901');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`),
  ADD UNIQUE KEY `unique_email` (`email`),
  ADD UNIQUE KEY `user_name` (`user_name`);

--
-- Indexes for table `assignments`
--
ALTER TABLE `assignments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teacher_assignments` (`teacher_id`),
  ADD KEY `course_assignments` (`code`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`code`),
  ADD KEY `teacher_id` (`teacher_id`),
  ADD KEY `admin_id` (`admin_id`);

--
-- Indexes for table `course_materials`
--
ALTER TABLE `course_materials`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teacher_course_materials` (`teacher_id`),
  ADD KEY `code_course_materials` (`code`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`name`),
  ADD KEY `admin_id` (`admin_id`);

--
-- Indexes for table `enroll`
--
ALTER TABLE `enroll`
  ADD PRIMARY KEY (`enroll_id`),
  ADD KEY `fk_student_enroll` (`student_id`),
  ADD KEY `fk_course_enroll` (`code`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`),
  ADD UNIQUE KEY `unique_email` (`email`),
  ADD UNIQUE KEY `user_name` (`user_name`),
  ADD KEY `admin_student` (`admin_id`);

--
-- Indexes for table `submitted_assignments`
--
ALTER TABLE `submitted_assignments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_submitted_assignments_student` (`student_id`),
  ADD KEY `fk_sa_teacher` (`teacher_id`),
  ADD KEY `fk_submitted_assignments_course` (`code`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`teacher_id`),
  ADD UNIQUE KEY `unique_email` (`email`),
  ADD UNIQUE KEY `user_name` (`user_name`),
  ADD KEY `fk_teacher_admin` (`admin_id`),
  ADD KEY `fk_teacher_course` (`code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=261;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1362;

--
-- AUTO_INCREMENT for table `assignments`
--
ALTER TABLE `assignments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `course_materials`
--
ALTER TABLE `course_materials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `enroll`
--
ALTER TABLE `enroll`
  MODIFY `enroll_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10027;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40133;

--
-- AUTO_INCREMENT for table `submitted_assignments`
--
ALTER TABLE `submitted_assignments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `teacher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1018;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `assignments`
--
ALTER TABLE `assignments`
  ADD CONSTRAINT `course_assignments` FOREIGN KEY (`code`) REFERENCES `course` (`code`),
  ADD CONSTRAINT `teacher_assignments` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`teacher_id`);

--
-- Constraints for table `course`
--
ALTER TABLE `course`
  ADD CONSTRAINT `course_ibfk_1` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`teacher_id`),
  ADD CONSTRAINT `course_ibfk_2` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`admin_id`);

--
-- Constraints for table `course_materials`
--
ALTER TABLE `course_materials`
  ADD CONSTRAINT `code_course_materials` FOREIGN KEY (`code`) REFERENCES `course` (`code`),
  ADD CONSTRAINT `teacher_course_materials` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`teacher_id`);

--
-- Constraints for table `department`
--
ALTER TABLE `department`
  ADD CONSTRAINT `department_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`admin_id`);

--
-- Constraints for table `enroll`
--
ALTER TABLE `enroll`
  ADD CONSTRAINT `fk_course_enroll` FOREIGN KEY (`code`) REFERENCES `course` (`code`),
  ADD CONSTRAINT `fk_student_enroll` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`);

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `admin_student` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`admin_id`);

--
-- Constraints for table `teacher`
--
ALTER TABLE `teacher`
  ADD CONSTRAINT `fk_teacher_admin` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`admin_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
