-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 10, 2024 at 07:40 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookstoredb`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `book_id` int(11) NOT NULL,
  `author` varchar(255) DEFAULT NULL,
  `description` mediumtext NOT NULL,
  `image` longblob DEFAULT NULL,
  `isbn` varchar(255) DEFAULT NULL,
  `last_update_date` date DEFAULT NULL,
  `price` float NOT NULL,
  `publish_date` date DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `image_path` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`book_id`, `author`, `description`, `image`, `isbn`, `last_update_date`, `price`, `publish_date`, `title`, `category_id`, `image_path`) VALUES
(6, 'Darrel L. Graham', 'The authors present the complete guide to ANSI standard C language programming. Written by the developers of C, this new version helps readers keep up with the finalized ANSI standard for C while showing how to take advantage of C\'s rich set of operators, economy of expression, improved control flow, and data structures. ', NULL, '0131103628', NULL, 45.9, '1998-03-18', 'C Programming Language', 12, '/images/books/C_proramming_language.jpg'),
(7, 'Susie Tate', 'As a scruffy, disorganised daydreamer, Lucy Mayweather is like a fish out of water at the high-powered offices of her brother’s billionaire best friend. When she agreed to work for Felix, she had no idea quite how cut-throat his world – or he – would be. She just wanted to escape her reclusive life and be close to her childhood crush, hoping he might notice her.', NULL, 'B0D644VWTD', NULL, 10.5, '2024-06-27', 'Daydreamer', 9, '/images/books/day_dreamer.jpg'),
(8, 'Hope Start', 'Accidentally Alaska: A Wild Awakening by Hope Star\r\nVacation to Transformation: A young woman\'s two-week Alaskan escape becomes a life-changing adventure. Swap scorching Oklahoma plains for Alaska\'s untamed beauty – a world without stores, electricity, or running water.', NULL, ' B0D7SVH9HY', NULL, 29, '2024-11-01', 'Accidentally Alaska', 2, '/images/books/alaska.jpg'),
(10, 'James Clear', ' No matter your goals, Atomic Habits offers a proven framework for improving - every day. James Clear, one of the world\'s leading experts on habit formation, reveals practical strategies that will teach you exactly how to form good habits, break bad ones, and master the tiny behaviors that lead to remarkable results.', NULL, 'B07RFSSYBH', NULL, 15, '2018-10-16', 'Atomic Habits', 6, '/images/books/atomic_habit.jpg'),
(11, 'Charles Martin', ' When MacThomas Pockets finished his last tour as part of the Scottish Special Forces, he was hired to consult for a film director to finesse some scenes that weren’t working. In a twist he never saw coming, he ended up moving to L.A. to work as the bodyguard for movie star Maybe Joe Sue.', NULL, 'B0BZT899W7', NULL, 12.93, '2023-03-15', 'The Last Exchange', 4, '/images/books/thelastexchange.jpg'),
(12, 'David Baldacci', ' Every day without fail, Travis Devine puts on a cheap suit, grabs his faux-leather briefcase, and boards the 6:20 commuter train to Manhattan, where he works as an entry-level analyst at the city’s most prestigious investment firm. In the mornings, he gazes out the train window at the lavish homes of the uberwealthy, dreaming about joining their ranks. In the evenings, he listens to the fiscal news on his phone, already preparing for the next grueling day in the cutthroat realm of finance. Then one morning Devine’s tedious routine is shattered by an anonymous email: She is dead.', NULL, 'B09VR4LQNY', NULL, 10.99, '2022-07-12', 'The 6:20 Man', 7, '/images/books/the_620_man.jpg'),
(13, 'Michael Terpin', ' Bitcoin has been the best performing asset class of all time—better than gold, silver, real estate, and the stock market. Its value has risen from one tenth of a cent in 2009 to a new high of over $70,000. But misconceptions about its reliability have prevented most people from creating life-changing wealth.\r\n', NULL, '151078215X', NULL, 32.99, '2024-02-18', 'Bitcoin Supercycle', 12, '/images/books/bitcoin.jpeg'),
(14, 'John P. Ellington', ' Nestled between the smoky, rolling peaks of Southern Appalachia lies the town of Brevard, North Carolina. When Chris Avery’s family moves to Brevard in the early 1970s, Chris quickly becomes immersed in a world untouched by the mire of life outside the mountains.', NULL, '979-8989508808', NULL, 14.54, '2024-02-01', 'Whispering Winds Of Appalachia', 2, '/images/books/whispering.jpeg'),
(15, 'Joel P. Kramer', ' In contrast to the biblical skepticism common today, Where God Came Down: The Archaeological Evidence emphasizes agreement between the Bible and archaeology. Using Scripture as his primary ancient text and interpretive tool, author Joel Kramer examines the archaeological record for ten locations recorded in the Bible.', NULL, ' 0998037419', NULL, 26.99, '2020-10-14', 'Where God Came Down', 2, '/images/books/wheregod.jpg'),
(16, 'Lucy Score', ' Bearded, bad-boy barber Knox prefers to live his life the way he takes his coffee: Alone. Unless you count his basset hound, Waylon. Knox doesn’t tolerate drama, even when it comes in the form of a stranded, runaway bride. Naomi wasn’t just running away from her wedding. She was riding to the rescue of her estranged twin, to Knockemout, Virginia, a rough-around-the-edges town where disputes are settled the old-fashioned way....With fists and beer. Usually in that order.', NULL, 'B09TPW7SPN', NULL, 20.99, '2022-03-01', 'Things We Never Got Over', 9, '/images/books/things_we_never_got_over.jpg'),
(17, 'Eric Matthes', ' Python Crash Course is the world’s best-selling guide to the Python programming language. This fast-paced, thorough introduction will have you writing programs, solving problems, and developing functioning applications in no time.', NULL, '978-1718502703', NULL, 29.99, '2023-01-10', 'Python Crash Course', 12, '/images/books/python_crash_course.jpg'),
(18, 'David Grann', ' On January 28, 1742, a ramshackle vessel of patched-together wood and cloth washed up on the coast of Brazil. Inside were thirty emaciated men, barely alive, and they had an extraordinary tale to tell. They were survivors of His Majesty’s Ship the Wager, a British vessel that had left England in 1740 on a secret mission during an imperial war with Spain. While the Wager had been chasing a Spanish treasure-filled galleon known as “the prize of all the oceans,” it had wrecked on a desolate island off the coast of Patagonia. The men, after being marooned for months and facing starvation, built the flimsy craft and sailed for more than a hundred days, traversing nearly 3,000 miles of storm-wracked seas. They were greeted as heroes.', NULL, '978-0385534260', NULL, 16.05, '2023-04-18', 'The Wager: A Tale of Shipwreck', 14, '/images/books/the_wager.jpg'),
(19, 'David Grann', ' In the 1920s, the richest people per capita in the world were members of the Osage Nation in Oklahoma. After oil was discovered beneath their land, the Osage rode in chauffeured automobiles, built mansions, and sent their children to study in Europe.', NULL, '978-0307742483', NULL, 17, '2018-04-03', 'Killers of the Flower Moon', 14, '/images/books/killers_of_the_flower_moon.jpg'),
(20, 'Thimothy J. Hack', ' Look no further! \"Quantum Physics for Beginners: Quantum Made Simple - A Clear Path to Understanding Quantum Mechanics and How to Apply It to Everyday Life\" is your ticket to mastering the fundamental concepts of quantum physics without getting lost in a sea of technical jargon.', NULL, '979-8862068528', NULL, 14.99, '2023-09-21', 'Quantum Physics for Beginners', 1, '/images/books/quantum_physics.jpg'),
(21, 'Neil deGrasse Tyson', ' What is the nature of space and time? How do we fit within the universe? How does the universe fit within us? There’s no better guide through these mind-expanding questions than acclaimed astrophysicist and best-selling author Neil deGrasse Tyson.', NULL, '978-0393609394', NULL, 18.95, '2017-05-02', 'Astrophysics for People in a H', 1, '/images/books/astrophysics.jpg'),
(22, 'DK Author', ' Universe opens with a look at astronomy and the history of the Universe, using 3D artworks to provide a comprehensive grounding in the fundamental concepts of astronomy, including the basic techniques of practical astronomy.', NULL, '978-1465499950', NULL, 50, '2020-09-08', 'Universe, Third Edition', 1, '/images/books/universe.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `bookorders`
--

CREATE TABLE `bookorders` (
  `book_order_id` int(11) NOT NULL,
  `address_line1` varchar(255) DEFAULT NULL,
  `address_line2` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `order_date` datetime(6) NOT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `shipping_fee` float NOT NULL,
  `state` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `subtotal` float NOT NULL,
  `tax` float NOT NULL,
  `total` float NOT NULL,
  `zipcode` varchar(255) DEFAULT NULL,
  `customer_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bookorders`
--

INSERT INTO `bookorders` (`book_order_id`, `address_line1`, `address_line2`, `city`, `country`, `first_name`, `last_name`, `order_date`, `payment_method`, `phone`, `shipping_fee`, `state`, `status`, `subtotal`, `tax`, `total`, `zipcode`, `customer_id`, `book_id`) VALUES
(6, '2428 Stratford Crossing Dr', '', 'Winston Salem', 'USA', 'Evan', 'Thais', '2024-12-10 10:09:22.000000', 'Credit Card', '3360009999', 5, 'NC', 'Shipping', 45.9, 9.18, 91.8, '27106', 15, 6),
(7, '12 Summit rd', '', 'Greensboro', 'USA', 'John', 'Smith', '2024-12-10 12:51:57.000000', 'Credit Card', '3367778888', 5, 'NC', 'Completed', 10.99, 1.099, 10.99, '24706', 16, 12),
(9, '100 Random St', '', 'Clemmons', 'USA', 'Bob', 'Dan', '2024-12-10 13:07:14.000000', 'Credit Card', '3360005670', 5, 'NC', 'Processing', 29, 5.8, 29, '27890', 17, 8),
(10, '200 Random Rd', '', 'Los Angeles', 'USA', 'John', 'Adams', '2024-12-10 13:19:18.000000', 'Credit Card', '4756787879', 5, 'California', 'Processing', 32.99, 3.299, 32.99, '47568', 18, 13),
(11, '200 Random Rd', '', 'Los Angeles', 'USA', 'John', 'Adams', '2024-12-10 13:19:37.000000', 'Credit Card', '4756787879', 5, 'California', 'Processing', 15, 1.5, 15, '47568', 18, 10);

-- --------------------------------------------------------

--
-- Table structure for table `bookorders_books`
--

CREATE TABLE `bookorders_books` (
  `book_order_book_order_id` int(11) NOT NULL,
  `books_book_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `book_orders`
--

CREATE TABLE `book_orders` (
  `book_order_id` int(11) NOT NULL,
  `address_line1` varchar(255) NOT NULL,
  `address_line2` varchar(255) DEFAULT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `order_date` datetime(6) NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `shipping_fee` double NOT NULL,
  `state` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `subtotal` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `zipcode` varchar(255) NOT NULL,
  `book_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `book_orders_books`
--

CREATE TABLE `book_orders_books` (
  `book_order_book_order_id` int(11) NOT NULL,
  `books_book_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`) VALUES
(1, 'Science'),
(2, 'Fiction'),
(3, 'Non-Fiction'),
(4, 'Mystery'),
(5, 'Fantasy'),
(6, 'Self-Help'),
(7, 'Thriller'),
(9, 'Romance'),
(12, 'Computer & Technology'),
(14, 'Adventure');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(11) NOT NULL,
  `address_line1` varchar(255) DEFAULT NULL,
  `address_line2` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `register_date` date DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `zipcode` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `address_line1`, `address_line2`, `city`, `country`, `email`, `first_name`, `last_name`, `password`, `phone`, `register_date`, `state`, `zipcode`) VALUES
(15, '2428 Stratford Crossing Dr', '', 'Winston Salem', 'USA', 'evanthai@gmail.com', 'Evan', 'Thai', '$2a$10$Z8zR0U7Py3nrx9y4Zs1mIu2oBU9lSjh3nYiGDrYWUMyI3ocJUaiVC', '3360009999', NULL, 'NC', '27106'),
(16, '12 Summit rd', '', 'Greensboro', 'USA', 'johnsmith@yahoo.com', 'John', 'Smith', '$2a$10$SAy4GbHlhjZNufiTUE0n2exVnMwkgK5WB53GezJNfSVfcy2nD1eoa', '3367778888', '2024-12-10', 'NC', '24706'),
(17, '100 Random St', '', 'Clemmons', 'USA', 'bob1879@gmail.com', 'Bob', 'Dan', '$2a$10$v0Og2Lz.91KCeO0TRCfeneeYQ8/moh/ZYJo7uh3sMm4pzANdnhJKe', '3360005670', '2024-12-10', 'NC', '27890'),
(18, '200 Random Rd', '', 'Los Angeles', 'USA', 'thisisjohn@yahoo.com', 'John', 'Adams', '$2a$10$JkNHQfAJDoVFkdu8ZyxIjeNdLYK/7fSvDG8gOqiFHKFiIcH0OQJKy', '4756787879', '2024-12-10', 'California', '47568');

-- --------------------------------------------------------

--
-- Table structure for table `orderdetails`
--

CREATE TABLE `orderdetails` (
  `order_detail_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `subtotal` float NOT NULL,
  `book_id` int(11) NOT NULL,
  `book_order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orderdetails`
--

INSERT INTO `orderdetails` (`order_detail_id`, `quantity`, `subtotal`, `book_id`, `book_order_id`, `customer_id`) VALUES
(11, 2, 91.8, 6, 6, 15),
(12, 1, 10.99, 12, 7, 16),
(14, 1, 29, 8, 9, 17),
(15, 1, 32.99, 13, 10, 18),
(16, 1, 15, 10, 11, 18);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `review_id` int(11) NOT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `date_review` date DEFAULT NULL,
  `headline` varchar(255) DEFAULT NULL,
  `rating` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`review_id`, `comment`, `date_review`, `headline`, `rating`, `book_id`, `customer_id`) VALUES
(34, 'I love it', '2024-12-09', 'Interesting', 5, 7, 15),
(35, 'Need to have One', '2024-12-10', 'Helpful!!!', 5, 6, 15),
(36, 'Good to read!!', '2024-12-10', 'Cool', 4, 12, 16),
(37, 'I really enjoy it!!!!', '2024-12-10', 'Great', 5, 8, 17),
(38, 'If you want to be a successful man, you should read it right now!!!', '2024-12-10', 'Excellent Book', 5, 10, 18);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` bigint(20) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `email`, `full_name`, `password`) VALUES
(602, 'admin@gmail.com', 'Admin Admin', '$2a$10$MKSfaxXOA0COC86lWtUv8ewOvKgcYyZhFiaP5vsapDpJdJguadVdO'),
(652, 'admin2@gmail.com', 'Admin 2', '$2a$10$dqaRXiJLo4LRHf4g0GWUvedlr78JTwQ2UsaZnuzN8EUMJjp/50fpa'),
(702, 'superadmin@gmail.com', 'Super Admin', '$2a$10$4InmGjvRWGearR9GA9y4j.aromNvgTQMO.P9rJzRbn85KX/Z.88YC'),
(852, 'a@gmail.com', 'Jsu Temp', '$2a$10$E9v9BBeBG0bEM4d7ZtUDyOcKUhF.q6ggqWzG.YXct3oodoboTPDuq');

-- --------------------------------------------------------

--
-- Table structure for table `users_seq`
--

CREATE TABLE `users_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users_seq`
--

INSERT INTO `users_seq` (`next_val`) VALUES
(951);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`book_id`),
  ADD UNIQUE KEY `UKg0286ag1dlt4473st1ugemd0m` (`title`),
  ADD KEY `FKam9riv8y6rjwkua1gapdfew4j` (`category_id`);

--
-- Indexes for table `bookorders`
--
ALTER TABLE `bookorders`
  ADD PRIMARY KEY (`book_order_id`),
  ADD KEY `FK59tib1wuv79g3phyvkxcgr49b` (`customer_id`),
  ADD KEY `FKnsr00fgf971h0sgid0fdmd4k` (`book_id`);

--
-- Indexes for table `bookorders_books`
--
ALTER TABLE `bookorders_books`
  ADD KEY `FKosnawi06lae05dqjuvtnrq0k9` (`books_book_id`),
  ADD KEY `FKqst4k5whpm77iy9nc8gvrkmrr` (`book_order_book_order_id`);

--
-- Indexes for table `book_orders`
--
ALTER TABLE `book_orders`
  ADD PRIMARY KEY (`book_order_id`),
  ADD KEY `FKf8u7xxf2brayoeqjmd7y40qhp` (`book_id`),
  ADD KEY `FKfspqj2dxijj81b6r6g0ojlc8` (`customer_id`);

--
-- Indexes for table `book_orders_books`
--
ALTER TABLE `book_orders_books`
  ADD KEY `FK4fqtory3t3iqlgjgjr971y7vv` (`books_book_id`),
  ADD KEY `FK2rn3ulmbddl0jb8lcefnjl2s5` (`book_order_book_order_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD PRIMARY KEY (`order_detail_id`),
  ADD KEY `FKfqkuxjksst0r1xgmo524qybi5` (`book_id`),
  ADD KEY `FKl1mcva7rk6ic4sv1lesohnyhy` (`book_order_id`),
  ADD KEY `FKcsi79b0yvn65yhnigjgy870ji` (`customer_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `FKgiq1y1159fhcjfigdijlsvdx2` (`book_id`),
  ADD KEY `FK4sm0k8kw740iyuex3vwwv1etu` (`customer_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `bookorders`
--
ALTER TABLE `bookorders`
  MODIFY `book_order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `book_orders`
--
ALTER TABLE `book_orders`
  MODIFY `book_order_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `orderdetails`
--
ALTER TABLE `orderdetails`
  MODIFY `order_detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `book`
--
ALTER TABLE `book`
  ADD CONSTRAINT `FKam9riv8y6rjwkua1gapdfew4j` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`);

--
-- Constraints for table `bookorders`
--
ALTER TABLE `bookorders`
  ADD CONSTRAINT `FK59tib1wuv79g3phyvkxcgr49b` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`),
  ADD CONSTRAINT `FKnsr00fgf971h0sgid0fdmd4k` FOREIGN KEY (`book_id`) REFERENCES `book` (`book_id`);

--
-- Constraints for table `bookorders_books`
--
ALTER TABLE `bookorders_books`
  ADD CONSTRAINT `FKosnawi06lae05dqjuvtnrq0k9` FOREIGN KEY (`books_book_id`) REFERENCES `book` (`book_id`),
  ADD CONSTRAINT `FKqst4k5whpm77iy9nc8gvrkmrr` FOREIGN KEY (`book_order_book_order_id`) REFERENCES `bookorders` (`book_order_id`);

--
-- Constraints for table `book_orders`
--
ALTER TABLE `book_orders`
  ADD CONSTRAINT `FKf8u7xxf2brayoeqjmd7y40qhp` FOREIGN KEY (`book_id`) REFERENCES `book` (`book_id`),
  ADD CONSTRAINT `FKfspqj2dxijj81b6r6g0ojlc8` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`);

--
-- Constraints for table `book_orders_books`
--
ALTER TABLE `book_orders_books`
  ADD CONSTRAINT `FK2rn3ulmbddl0jb8lcefnjl2s5` FOREIGN KEY (`book_order_book_order_id`) REFERENCES `book_orders` (`book_order_id`),
  ADD CONSTRAINT `FK4fqtory3t3iqlgjgjr971y7vv` FOREIGN KEY (`books_book_id`) REFERENCES `book` (`book_id`);

--
-- Constraints for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD CONSTRAINT `FKcsi79b0yvn65yhnigjgy870ji` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`),
  ADD CONSTRAINT `FKfqkuxjksst0r1xgmo524qybi5` FOREIGN KEY (`book_id`) REFERENCES `book` (`book_id`),
  ADD CONSTRAINT `FKl1mcva7rk6ic4sv1lesohnyhy` FOREIGN KEY (`book_order_id`) REFERENCES `bookorders` (`book_order_id`);

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `FK4sm0k8kw740iyuex3vwwv1etu` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`),
  ADD CONSTRAINT `FKgiq1y1159fhcjfigdijlsvdx2` FOREIGN KEY (`book_id`) REFERENCES `book` (`book_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
