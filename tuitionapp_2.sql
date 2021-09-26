-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 20, 2021 at 11:25 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tuitionapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `matchinfo`
--

CREATE TABLE `matchinfo` (
  `matchinfoid` int(100) NOT NULL,
  `area` varchar(100) NOT NULL,
  `edulevel` varchar(100) NOT NULL,
  `subject1` varchar(100) NOT NULL,
  `subject2` varchar(100) NOT NULL,
  `subject3` varchar(100) NOT NULL,
  `timeslot` varchar(100) NOT NULL,
  `availableday1` varchar(100) NOT NULL,
  `availableday2` varchar(100) NOT NULL,
  `availableday3` varchar(100) NOT NULL,
  `rate` int(100) NOT NULL,
  `used_id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `matchinfo`
--

INSERT INTO `matchinfo` (`matchinfoid`, `area`, `edulevel`, `subject1`, `subject2`, `subject3`, `timeslot`, `availableday1`, `availableday2`, `availableday3`, `rate`, `used_id`) VALUES
(25, 'Central', 'Lower Primary', 'English', '', '', 'Morning', 'Tuesday', '', '', 100, 45),
(35, 'North', 'Lower Primary', 'English', 'Chinese', '', 'Morning', 'Tuesday', 'Wednesday', '', 120, 55),
(45, 'North', 'Lower Primary', 'English', 'Malay', '', 'Morning', 'Monday', 'Tuesday', '', 100, 65),
(55, 'North', 'Lower Primary', 'English', 'Chinese', '', 'Morning', 'Monday', 'Tuesday', '', 100, 75),
(65, 'North', 'Lower Primary', 'English', 'Humanities', 'Maths', 'Morning', 'Monday', 'Tuesday', 'Wednesday', 100, 85),
(75, 'East', 'Junior College/MI', 'Malay', 'Science', '', 'Night', 'Thursday', 'Friday', '', 30, 95),
(95, 'North', 'Lower Primary', 'Maths', 'Malay', 'English', 'Night', 'Friday', 'Thursday', 'Wednesday', 50, 115),
(105, 'East', 'Lower Primary', 'Malay', 'Tamil', 'Chinese', 'Morning', 'Sunday', 'Friday', 'Saturday', 120, 125),
(115, 'West', 'Junior College/MI', 'Maths', 'Science', 'Tamil', 'Night', 'Saturday', 'Sunday', '', 120, 135),
(125, 'North', 'Lower Primary', 'English', 'Chinese', 'Malay', 'Morning', 'Tuesday', 'Thursday', 'Friday', 30, 145),
(135, 'West', 'Lower Secondary', 'Maths', 'English', 'Science', 'Night', 'Tuesday', 'Thursday', 'Wednesday', 70, 155),
(145, 'North', 'Lower Primary', 'English', 'English', '', 'Morning', 'Monday', 'Monday', 'Tuesday', 50, 165),
(155, 'Central', 'Lower Secondary', 'English', 'Humanities', '', 'Afternoon', 'Saturday', 'Sunday', '', 50, 175),
(165, 'East', 'Lower Primary', 'Tamil', 'Malay', 'Chinese', 'Morning', 'Sunday', 'Friday', 'Saturday', 30, 185),
(175, 'North', 'Lower Primary', 'Chinese', 'Malay', '', 'Night', 'Tuesday', '', '', 70, 195),
(185, 'North', 'Lower Primary', 'English', 'Malay', 'Chinese', 'Night', 'Wednesday', 'Friday', 'Sunday', 100, 205),
(195, 'North', 'Lower Primary', 'English', 'Maths', 'Science', 'Night', 'Saturday', 'Wednesday', 'Friday', 50, 215),
(205, 'North', 'Lower Primary', 'English', 'Malay', 'Science', 'Morning', 'Monday', 'Friday', 'Wednesday', 100, 225),
(215, 'North', 'Lower Primary', 'English', 'Maths', '', 'Night', 'Friday', 'Wednesday', 'Thursday', 50, 235),
(225, 'North', 'Lower Primary', 'English', 'Chinese', 'Malay', 'Morning', 'Monday', 'Wednesday', 'Friday', 30, 245),
(235, 'North', 'Lower Primary', 'English', 'Maths', 'Malay', 'Morning', 'Monday', 'Wednesday', 'Friday', 100, 255),
(245, 'East', 'Upper Secondary', 'Chinese', 'Tamil', 'Maths', 'Morning', 'Tuesday', 'Thursday', 'Friday', 50, 265);

-- --------------------------------------------------------

--
-- Table structure for table `matchrequest`
--

CREATE TABLE `matchrequest` (
  `matchid` int(11) NOT NULL,
  `loguser` varchar(100) NOT NULL,
  `requestid` int(11) NOT NULL,
  `requser` varchar(100) NOT NULL,
  `approval` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `matchrequest`
--

INSERT INTO `matchrequest` (`matchid`, `loguser`, `requestid`, `requser`, `approval`) VALUES
(15, '0001', 65, 'zxc', 'YES'),
(25, 'zxc', 45, '123', 'NO'),
(35, 'esterchua', 45, '123', 'NO'),
(45, 'weewoo', 145, 'esterchua', 'YES'),
(55, 'qwe', 55, 'asd', 'YES'),
(65, 'barry', 215, 'TomLee', 'NO'),
(75, 'qwe', 125, 'Makmoud', 'NO'),
(85, 'barry', 85, '0001', 'NO'),
(95, 'barry', 255, 'harry', 'YES'),
(105, 'qwe', 155, 'weewoo', 'NO'),
(115, 'qwe', 135, 'justgr', 'NO'),
(145, 'raypong12', 55, 'asd', 'YES'),
(155, 'qwe2', 185, 'qwe', 'YES'),
(165, 'raypong12', 205, 'JonathanLee', 'NO'),
(175, 'raypong12', 45, '123', 'NO');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `id` int(100) NOT NULL,
  `writeruser` varchar(100) NOT NULL,
  `targetuser` varchar(100) NOT NULL,
  `review` varchar(300) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`id`, `writeruser`, `targetuser`, `review`, `status`) VALUES
(5, 'weewoo', 'esterchua', 'fk you', 'BAD'),
(15, 'TomLee', 'barry', 'jerome is hairy', 'BAD'),
(25, 'barry', 'harry', 'Hey you are pretty cool!', 'GOOD'),
(35, 'raypong12', 'asd', '123', 'BAD');

-- --------------------------------------------------------

--
-- Table structure for table `sitereview`
--

CREATE TABLE `sitereview` (
  `reviewid` int(100) NOT NULL,
  `reviewername` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` int(100) NOT NULL,
  `reviewtext` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sitereview`
--

INSERT INTO `sitereview` (`reviewid`, `reviewername`, `email`, `phone`, `reviewtext`) VALUES
(5, 'dd', 'dd@gmail.com', 86116379, 'dd'),
(15, 'Myself', 'myself@myself.com', 999, 'YourHopes is a good tutor'),
(25, 'ester', 'ester@email.com', 564325341, 'Great!'),
(35, 'asd', 'asd@asd.com', 123124, 'asd'),
(45, 'qwe', '39573793@fesu.fnei', 29475935, 'test to comment without login');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` int(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `userType` text NOT NULL,
  `pic` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `phone`, `firstname`, `lastname`, `username`, `password`, `userType`, `pic`) VALUES
(45, '123@123.com', 123, '123', '123', '123', '1234', 'Tutor', 'kekw-emote.jpg'),
(55, 'asd@asd.com', 1234, 'asd', 'asd', 'asd', '123', 'Tutee', 'p.jpg'),
(65, 'zxc@zxc.com', 12345667, 'zxc', 'zxc', 'zxc', '123', 'Tutor', 'p.jpg'),
(75, 'bnm@bnm.com', 12345566, 'bnm', 'bnm', 'bnm', '123', 'Tutor', 'p.jpg'),
(85, 'dfg@fgh.com', 0, '0000', '0000', '0001', '123', 'Tutee', 'p.jpg'),
(95, 'bitch@nerd.com', 0, 'Ke', 'Xuan', 'Ke xuan nerd', 'nah', 'Tutor', 'p.jpg'),
(115, 'nerd@nerd.com', 999, 'Your', 'Hopes', 'YourHopes', 'oioioi', 'Tutee', ''),
(125, 'trottytrot@hotmail.com', 69696969, 'Makmoud', 'Sulaiman', 'Makmoud', '1234', 'Tutor', 'p.jpg'),
(135, 'justgr@hotmail.com', 99999999, 'Just', 'GR', 'justgr', '97278737', 'Tutor', 'p.jpg'),
(145, 'ester@email.com', 90008000, 'Ester', 'Chua', 'esterchua', '12345', 'Tutor', 'p.jpg'),
(155, '123@gmail.com', 31321, 'cat', 'dog', 'weewoo', '123', 'Tutee', 'p.jpg'),
(165, 'xxx@gmail.com', 323232323, '23232323', '323232323', '2323232', '32323232', 'Tutor', 'p.jpg'),
(175, 'gordoncge@hotmail.com', 92352239, 'Gordon', 'Chen', 'gordoncge', 'deathdenial1', 'Tutor', 'p.jpg'),
(185, 'flmwfe@mfem.com', 4837412, 'NFE', 'FNK', 'qwe', 'qwe123', 'Tutee', ''),
(195, '12345@12345.com', 123456, '123', '123', '123456', '123456', 'Tutor', 'p.jpg'),
(205, 'Jonathan@email.com', 83248543, 'Jonathan', 'Leet', 'JonathanLee', '123', 'Tutor', ''),
(215, 'tomdickharry@gmail.com', 0, 'Tom', 'Lee', 'TomLee', '123', 'Tutee', 'p.jpg'),
(225, 'Barry@gmail.com', 12345, 'Barry', 'Allen', 'barry', 'barry', 'Tutor', 'p.jpg'),
(235, 'test@example.com', 0, 'Ray', 'Pong', 'raypong12', '12345', 'Tutee', 'kekw-emote.jpg'),
(245, 'allen@gmail.com', 4113, 'allen', 'barry', 'allen', 'allen', 'Tutor', 'p.jpg'),
(255, 'harry@gmail.com', 101010, 'Harry', 'Potter', 'harry', 'harry', 'Tutee', 'p.jpg'),
(265, 'fekngnneg@nfen.com', 359375725, 'FEKN', 'FEFBG', 'qwe2', 'qwe123', 'Tutor', 'p.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `matchinfo`
--
ALTER TABLE `matchinfo`
  ADD PRIMARY KEY (`matchinfoid`),
  ADD KEY `used_id` (`used_id`);

--
-- Indexes for table `matchrequest`
--
ALTER TABLE `matchrequest`
  ADD PRIMARY KEY (`matchid`),
  ADD KEY `requestid` (`requestid`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sitereview`
--
ALTER TABLE `sitereview`
  ADD PRIMARY KEY (`reviewid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `matchinfo`
--
ALTER TABLE `matchinfo`
  MODIFY `matchinfoid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=255;

--
-- AUTO_INCREMENT for table `matchrequest`
--
ALTER TABLE `matchrequest`
  MODIFY `matchid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=205;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `sitereview`
--
ALTER TABLE `sitereview`
  MODIFY `reviewid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=275;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `matchinfo`
--
ALTER TABLE `matchinfo`
  ADD CONSTRAINT `matchinfo_ibfk_1` FOREIGN KEY (`used_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `matchrequest`
--
ALTER TABLE `matchrequest`
  ADD CONSTRAINT `matchrequest_ibfk_1` FOREIGN KEY (`requestid`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
