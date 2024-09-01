-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: mysql
-- Generation Time: Sep 01, 2024 at 04:15 PM
-- Server version: 9.0.0
-- PHP Version: 8.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myDB`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `birthdate` varchar(50) NOT NULL,
  `linkedin` varchar(50) NOT NULL,
  `jobtitle` varchar(50) NOT NULL,
  `status` enum('friend','family','known','coworker') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `firstname`, `lastname`, `email`, `phone`, `mobile`, `birthdate`, `linkedin`, `jobtitle`, `status`) VALUES
(1, 'John', 'Doe', 'john.doe@example.com', '123-456-7890', '987-654-3210', '1985-06-15', 'https://linkedin.com/in/johndoe', 'Software Developer', 'friend'),
(2, 'Jane', 'Smith', 'jane.smith@example.com', '234-567-8901', '876-543-2109', '1990-02-20', 'https://linkedin.com/in/janesmith', 'Project Manager', 'coworker'),
(3, 'Michael', 'Johnson', 'michael.johnson@example.com', '345-678-9012', '765-432-1098', '1982-12-05', 'https://linkedin.com/in/michaeljohnson', 'Marketing Specialist', 'known'),
(4, 'Emily', 'Davis', 'emily.davis@example.com', '456-789-0123', '654-321-0987', '1988-08-30', 'https://linkedin.com/in/emilydavis', 'HR Manager', 'friend'),
(5, 'Daniel', 'Wilson', 'daniel.wilson@example.com', '567-890-1234', '543-210-9876', '1995-04-12', 'https://linkedin.com/in/danielwilson', 'Financial Analyst', 'coworker'),
(6, 'Sophia', 'Brown', 'sophia.brown@example.com', '678-901-2345', '432-109-8765', '1992-07-23', 'https://linkedin.com/in/sophiabrown', 'Graphic Designer', 'family'),
(7, 'James', 'Taylor', 'james.taylor@example.com', '789-012-3456', '321-098-7654', '1980-11-11', 'https://linkedin.com/in/jamestaylor', 'Content Writer', 'friend'),
(8, 'Olivia', 'Anderson', 'olivia.anderson@example.com', '890-123-4567', '210-987-6543', '1991-09-09', 'https://linkedin.com/in/oliviaanderson', 'Web Developer', 'known'),
(9, 'William', 'Thomas', 'william.thomas@example.com', '901-234-5678', '109-876-5432', '1986-03-17', 'https://linkedin.com/in/williamthomas', 'Sales Executive', 'coworker'),
(10, 'Ava', 'Martinez', 'ava.martinez@example.com', '012-345-6789', '098-765-4321', '1994-05-25', 'https://linkedin.com/in/avamartinez', 'Operations Manager', 'family');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
