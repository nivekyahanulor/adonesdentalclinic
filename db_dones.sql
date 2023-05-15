-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 15, 2023 at 11:52 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_dones`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_about`
--

CREATE TABLE `tbl_about` (
  `about_id` int(12) NOT NULL,
  `page` varchar(32) NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_about`
--

INSERT INTO `tbl_about` (`about_id`, `page`, `content`) VALUES
(1, 'About', '<b>Mission</b> <br><br>\r\n“To provide our patients with excellent dental care, using the latest technology and technology, creating a warm and welcoming environment that fosters long-term relationships with our patients”.\r\n<br><br>\r\n<b>Vision</b>\r\n<br><br>\r\n\"We at Dones Dental CLinic will continually update ourselves regarding the best and most current materials and technology available in dentistry and infection control\".\r\n<br><br>\r\n<b>Goals</b>\r\n <br><br>\r\n-We provide comprehensive dental care from preventive, orthodontic, and cosmetic treatments to meet the needs of each patient. <br>\r\n-In order to provide our patients with the most advanced treatment, we are constantly incorporating the latest technology and technology in dentistry.<br>\r\n-We create a comfortable and welcoming environment where patients feel respected, informed and confident in their dental care.<br>\r\n-Build strong, long-term relationships with patients based on trust, communication and personal interest.\r\n-Actively work with communities through outreach and educational programs to promote the importance of oral health and dental hygiene.<br>\r\n-Providing high-quality dental care: The primary goal of any dental clinic is to provide excellent dental care to their patients. This includes preventative care, restorative treatments, and cosmetic services.'),
(2, 'Email', 'ml.orensedentalclinic@yahoo.com'),
(3, 'Facebook', 'https://www.facebook.com/m.l.orensedentalclinic'),
(4, 'Contact', '0910-529-9939'),
(5, 'Location', 'Blk 7 Lot 29 Emerald Cor. Sapphire st. Pacita 2a Pacita Complex Brgy. San Lorenzo, 4023 San Pedro, Laguna.'),
(6, 'Terms and Condition', '1. Customers with remaining balance can not book new appointment.<br>\r\n2. Service fee may change with further notice depending on the agreement of the dental clinic and customer.<br>\r\n3. New patients should pay 50% down payment for services with installment.<br>\r\n4. Regular patients can pay any amount depending on the agreement of the dental clinic and the customer.<br>\r\n5. 1Treatments with installment must be paid for each subsequent appointment of the customer. <br>\r\n\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_appointments`
--

CREATE TABLE `tbl_appointments` (
  `id` int(11) NOT NULL,
  `user_id` int(12) NOT NULL,
  `request_date` date NOT NULL,
  `request_time` varchar(35) NOT NULL,
  `service_id` text NOT NULL,
  `cancel_reason` text NOT NULL,
  `cancel_date` varchar(35) NOT NULL,
  `approved` int(11) NOT NULL DEFAULT 0,
  `cancel_by` int(11) NOT NULL,
  `is_calendar` int(11) NOT NULL,
  `is_payment` int(11) NOT NULL,
  `is_new` int(11) NOT NULL,
  `is_admin` int(11) NOT NULL,
  `date_added` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_doctors`
--

CREATE TABLE `tbl_doctors` (
  `doctor_id` int(12) NOT NULL,
  `name` varchar(100) NOT NULL,
  `photo` text NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_doctors`
--

INSERT INTO `tbl_doctors` (`doctor_id`, `name`, `photo`, `date_added`) VALUES
(1, 'Dr. Lloyd Anthony1', 'Bad-Ass-Beef-Logo-BIG.png', '2023-05-15 08:57:42'),
(3, 'Dr Antonio', 'Bad-Ass-Beef-Logo-BIG.png', '2023-05-15 09:15:55'),
(4, 'Dr. Ann Lorraine Dones', 'Bad-Ass-Beef-Logo-BIG.png', '2023-05-15 09:16:06');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_event`
--

CREATE TABLE `tbl_event` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `is_promo` int(1) NOT NULL,
  `services` text NOT NULL,
  `discount` varchar(12) NOT NULL,
  `start` varchar(100) NOT NULL,
  `end` varchar(100) NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_events`
--

CREATE TABLE `tbl_events` (
  `id` int(11) NOT NULL,
  `date` varchar(100) NOT NULL,
  `event` varchar(100) NOT NULL,
  `offer` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_history`
--

CREATE TABLE `tbl_history` (
  `id` int(11) NOT NULL,
  `user_id` int(12) NOT NULL,
  `dcu` date NOT NULL,
  `findings` varchar(250) NOT NULL,
  `before_photo` text NOT NULL,
  `after_photo` text NOT NULL,
  `remarks` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_information`
--

CREATE TABLE `tbl_information` (
  `id` int(11) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `birthday` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_information`
--

INSERT INTO `tbl_information` (`id`, `firstname`, `lastname`, `birthday`, `address`) VALUES
(1, 'Chester Joshper Maninang', 'Carasig ', 'November 9, 1996 ', '13 Mars Harmony Homes Barangay Maharlika San Pedro Laguna '),
(2, 'Red Joaquin ', 'Gerodias ', 'September 19,1998  ', 'City of San Pedro, Laguna'),
(3, 'Lorie Anne', 'Samson ', 'June 12, 2000', 'Kanto'),
(4, 'Marami', 'Ako', 'slkdfj', 'sdlkgjf'),
(5, 'dfhgdfgdf', 'gdfgsd', 'fsdfasd', 'asdasd'),
(6, 'dfghdfg', 'dfgdfg', 'dfgdfg', 'dfgdfgdfg'),
(7, 'ghjghjghk', 'hjkhjl', 'kjhhjk', 'hjkhjkhjk'),
(8, 'Chester Joshper', 'Carasig', 'November 9, 1996', '13 Mars Harmony Homes Barangay Maharlika San Pedro Laguna'),
(9, 'Lorie Anne', 'Bisbis', 'November 13, 2000', 'Laguna');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_installment`
--

CREATE TABLE `tbl_installment` (
  `installmen_id` int(12) NOT NULL,
  `service_id` int(12) NOT NULL,
  `amount` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_offer`
--

CREATE TABLE `tbl_offer` (
  `id` int(11) NOT NULL,
  `service` varchar(250) NOT NULL,
  `price` varchar(35) NOT NULL,
  `description` text NOT NULL,
  `installment` text NOT NULL,
  `photo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payment`
--

CREATE TABLE `tbl_payment` (
  `id` int(11) NOT NULL,
  `user_id` int(12) NOT NULL,
  `service_id` text NOT NULL,
  `payment_date` date NOT NULL,
  `service_charge` varchar(35) NOT NULL,
  `pay_amount` varchar(35) NOT NULL,
  `balance` varchar(35) NOT NULL,
  `installment` varchar(12) NOT NULL,
  `is_installment` varchar(5) NOT NULL,
  `payment_status` text NOT NULL,
  `is_paid` int(1) NOT NULL,
  `admin_name` varchar(100) NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_promo`
--

CREATE TABLE `tbl_promo` (
  `promo_id` int(12) NOT NULL,
  `event_id` int(12) NOT NULL,
  `title` varchar(50) NOT NULL,
  `service_id` int(12) NOT NULL,
  `percentage` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_signup`
--

CREATE TABLE `tbl_signup` (
  `id` int(11) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `birthday` varchar(100) NOT NULL,
  `address` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(250) CHARACTER SET utf8mb4 NOT NULL,
  `pass` varchar(100) NOT NULL,
  `type` varchar(250) NOT NULL,
  `is_balance` int(1) NOT NULL,
  `is_confirm` int(11) NOT NULL,
  `date_registered` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_signup`
--

INSERT INTO `tbl_signup` (`id`, `firstname`, `lastname`, `sex`, `birthday`, `address`, `email`, `password`, `pass`, `type`, `is_balance`, `is_confirm`, `date_registered`) VALUES
(1, 'Administrator ', '1', '', '', 'Cavite City', 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3', '', 'admin', 0, 1, '2022-11-19 04:49:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_about`
--
ALTER TABLE `tbl_about`
  ADD PRIMARY KEY (`about_id`);

--
-- Indexes for table `tbl_appointments`
--
ALTER TABLE `tbl_appointments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_doctors`
--
ALTER TABLE `tbl_doctors`
  ADD PRIMARY KEY (`doctor_id`);

--
-- Indexes for table `tbl_event`
--
ALTER TABLE `tbl_event`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_events`
--
ALTER TABLE `tbl_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_history`
--
ALTER TABLE `tbl_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_information`
--
ALTER TABLE `tbl_information`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_installment`
--
ALTER TABLE `tbl_installment`
  ADD PRIMARY KEY (`installmen_id`);

--
-- Indexes for table `tbl_offer`
--
ALTER TABLE `tbl_offer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_promo`
--
ALTER TABLE `tbl_promo`
  ADD PRIMARY KEY (`promo_id`);

--
-- Indexes for table `tbl_signup`
--
ALTER TABLE `tbl_signup`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_about`
--
ALTER TABLE `tbl_about`
  MODIFY `about_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_appointments`
--
ALTER TABLE `tbl_appointments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_doctors`
--
ALTER TABLE `tbl_doctors`
  MODIFY `doctor_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_event`
--
ALTER TABLE `tbl_event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_events`
--
ALTER TABLE `tbl_events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_history`
--
ALTER TABLE `tbl_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_information`
--
ALTER TABLE `tbl_information`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_installment`
--
ALTER TABLE `tbl_installment`
  MODIFY `installmen_id` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_offer`
--
ALTER TABLE `tbl_offer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_promo`
--
ALTER TABLE `tbl_promo`
  MODIFY `promo_id` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_signup`
--
ALTER TABLE `tbl_signup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3204;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
