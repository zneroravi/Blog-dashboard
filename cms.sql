-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 07, 2017 at 10:24 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(3) NOT NULL,
  `cat_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(48, 'Programming'),
(53, 'ebooks');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(3) NOT NULL,
  `comment_post_id` int(3) NOT NULL,
  `comment_author` varchar(255) NOT NULL,
  `comment_email` varchar(255) NOT NULL,
  `comment_content` text NOT NULL,
  `comment_status` varchar(255) NOT NULL,
  `comment_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(3) NOT NULL,
  `post_category_id` int(3) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_author` varchar(255) NOT NULL,
  `post_user` varchar(255) NOT NULL,
  `post_date` date NOT NULL,
  `post_image` text NOT NULL,
  `post_content` text NOT NULL,
  `post_tags` varchar(255) NOT NULL,
  `post_comment_count` varchar(255) NOT NULL,
  `post_status` varchar(255) NOT NULL DEFAULT 'draft',
  `post_views_count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `post_category_id`, `post_title`, `post_author`, `post_user`, `post_date`, `post_image`, `post_content`, `post_tags`, `post_comment_count`, `post_status`, `post_views_count`) VALUES
(136, 53, 'Java: A Beginner\\\'s Guide, 7th Edition', '', 'zneroravi', '2017-10-31', '3.jpg', '<p>Fully updated for Java Platform, Standard Edition 9 (Java SE 9), Java: A Beginner\'s Guide, Seventh Edition, gets you started programming in Java right away. Bestselling programming author Herb Schildt begins with the basics, such as how to create, compile, and run a Java program. He then moves on to the keywords, syntax, and constructs that form the core of the Java language. <br /><br />The book also covers some of Java\'s more advanced features, including multithreaded programming, generics, lambda expressions, Swing, and JavaFX. This practical Oracle Press guide features details on Java SE 9\'s innovative new module system, and, as an added bonus, it includes an introduction to JShell, Java\'s new interactive programming tool.<br /><br />Designed for Easy Learning:<br />Key Skills and Concepts-Chapter-opening lists of specific skills covered in the chapter<br />Ask the Expert-Q&amp;A sections filled with bonus information and helpful tips<br />Try This-Hands-on exercises that show you how to apply your skills<br />Self Tests-End-of-chapter quizzes to reinforce your skills<br />Annotated Syntax-Example code with commentary that describes the programming techniques being illustrated<br /><br /><strong>Download:</strong><br /><br /><a href=\"http://longfiles.com/ppv55h24j4qm/Java_A_Beginner\'s_Guide,_7th_Edition.epub.html\">http://longfiles.com/ppv55h24j4qm/Java_A_Beginner\'s_Guide,_7th_Edition.epub.html</a></p>', 'Java', '', 'published', 8),
(137, 53, 'Machine Learning: End-to-End guide for Java developers', '', 'zneroravi', '2017-10-31', '2.png', '<p>Machine Learning is one of the core area of Artificial Intelligence where computers are trained to self-learn, grow, change, and develop on their own without being explicitly programmed. This course demonstrates complex data extraction and statistical analysis techniques supported by Java, applying various machine learning methods, exploring machine learning sub-domains, and exploring real-world use cases such as recommendation systems, fraud detection, natural language processing, and more, using Java programming. The course begins with an introduction to data science and basic data science tasks such as data collection, data cleaning, data analysis, and data visualization. The next section has a detailed overview of statistical techniques, covering machine learning, neural networks, and deep learning. The next couple of sections cover applying machine learning methods using Java to a variety of chores including classifying, predicting, forecasting, market basket analysis, clustering stream learning, active learning, semi-supervised learning, probabilistic graph modeling, text mining, and deep learning.<br /><br />The last section highlights real-world test cases such as performing activity recognition, developing image recognition, text classification, and anomaly detection. The course includes premium content from three of our most popular books:<br /><br />Java for Data Science<br />Machine Learning in Java<br />Mastering Java Machine Learning<br /><br /><strong>Download:</strong><br /><br /><a href=\"http://longfiles.com/l1ldqxrsowhz/Machine_Learning_End-to-End_guide_for_Java_developers_Data_Analysis,_Machine_Learning,_and_Neural_Networks_simplified.azw3.html\">http://longfiles.com/l1ldqxrsowhz/Machine_Learning_End-to-End_guide_for_Java_developers_Data_Analysis,_Machine_Learning,_and_Neural_Networks_simplified.azw3.html</a></p>', '#machine_learning #java', '', 'published', 0),
(138, 53, 'Java Data Analysis', '', 'zneroravi', '2017-10-31', '3.jpg', '<p>Get your basics right for data analysis with Java and make sense of your data through effective visualizations.<br />Use various Java APIs and tools such as Rapidminer and WEKA for effective data analysis and machine learning.<br />This is your companion to understanding and implementing a solid data analysis solution using Java<br /><br />Book Description<br /><br />Data analysis is a process of inspecting, cleansing, transforming, and modeling data with the aim of discovering useful information. Java is one of the most popular languages to perform your data analysis tasks.<br /><br />This book will help you learn the tools and techniques in Java to conduct data analysis without any hassle. After getting a quick overview of what data science is and the steps involved in the process, you\'ll learn the statistical data analysis techniques and implement them using the popular Java APIs and libraries. Through practical examples, you will also learn the machine learning concepts such as classification and regression.<br /><br />In the process, you\'ll familiarize yourself with tools such as Rapidminer and WEKA and see how these Java-based tools can be used effectively for analysis. You will also learn how to analyze text and other types of multimedia. Learn to work with relational, NoSQL, and time-series data. This book will also show you how you can utilize different Java-based libraries to create insightful and easy to understand plots and graphs.<br /><br />By the end of this book, you will have a solid understanding of the various data analysis techniques, and how to implement them using Java.<br /><br />What you will learn<br /><br />Develop Java programs that analyze data sets of nearly any size, including text<br />Implement important machine learning algorithms such as regression, classification, and clustering<br />Interface with and apply standard open source Java libraries and APIs to analyze and visualize data<br />Process data from both relational and non-relational databases and from time-series data<br />Employ Java tools to visualize data in various forms<br />Understand multimedia data analysis algorithms and implement them in Java.<br /><br />About the Author<br /><br />John R. Hubbard has been doing computer-based data analysis for over 40 years at colleges and universities in Pennsylvania and Virginia. He holds an MSc in computer science from Penn State University and a PhD in mathematics from the University of Michigan. He is currently a professor of mathematics and computer science, Emeritus, at the University of Richmond, where he has been teaching data structures, database systems, numerical analysis, and big data.<br /><br />Dr. Hubbard has published many books and research papers, including six other books on computing. Some of these books have been translated into German, French, Chinese, and five other languages. He is also an amateur timpanist.<br /><br />Table of Contents<br /><br />Introduction to Data Analysis<br />Data Preprocessing<br />Data Visualization<br />Statistics: Elementary statistical methods and their implementation in Java<br />Relational Database Access<br />Regression Analysis<br />Classification Analysis<br />Cluster Analysis<br />Recommender Systems<br />Working with NoSQL Databases<br />Big Data Analysis with Java<br />Appendix A<br /><br /><strong>Download:</strong><br /><br /><a href=\"http://longfiles.com/hdajvprsnkh1/Java_Data_Analysis.azw3.html\">http://longfiles.com/hdajvprsnkh1/Java_Data_Analysis.azw3.html</a></p>', '#java #data_analysis', '', 'published', 0),
(139, 53, 'Python for Finance - Second Edition', '', 'zneroravi', '2017-10-31', '', '<p>This book assumes that the readers have some basic knowledge related to Python. However, he/she has no knowledge of quantitative finance. In addition, he/she has no knowledge about financial data.<br />What You Will Learn:<br /><br />- Become acquainted with Python in the first two chapters<br />- Run CAPM, Fama-French 3-factor, and Fama-French-Carhart 4-factor models<br />- Learn how to price a call, put, and several exotic options<br />- Understand Monte Carlo simulation, how to write a Python program to replicate the Black-Scholes-Merton options model, and how to price a few exotic options<br />- Understand the concept of volatility and how to test the hypothesis that volatility changes over the years<br />- Understand the ARCH and GARCH processes and how to write related Python programs<br /><br />This book uses Python as its computational tool. Since Python is free, any school or organization can download and use it.<br /><br />This book is organized according to various finance subjects. In other words, the first edition focuses more on Python, while the second edition is truly trying to apply Python to finance.<br /><br />The book starts by explaining topics exclusively related to Python. Then we deal with critical parts of Python, explaining concepts such as time value of money stock and bond evaluations, capital asset pricing model, multi-factor models, time series analysis, portfolio theory, options and futures.<br /><br />This book will help us to learn or review the basics of quantitative finance and apply Python to solve various problems, such as estimating IBM\\\'s market risk, running a Fama-French 3-factor, 5-factor, or Fama-French-Carhart 4 factor model, estimating the VaR of a 5-stock portfolio, estimating the optimal portfolio, and constructing the efficient frontier for a 20-stock portfolio with real-world stock, and with Monte Carlo Simulation. Later, we will also learn how to replicate the famous Black-Scholes-Merton option model and how to price exotic options such as the average price call option.<br /><br /><strong>Download:</strong><br /><br /><a href=\"\\&quot;http:/longfiles.com/x8xmmlwzdjf8/Python_for_Finance_-_Second_Edition.pdf.html\\&quot;\">http://longfiles.com/x8xmmlwzdjf8/Python_for_Finance_-_Second_Edition.pdf.html</a></p>', '#python', '', 'published', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(3) NOT NULL,
  `username` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_firstname` varchar(255) NOT NULL,
  `user_lastname` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_image` text NOT NULL,
  `user_role` varchar(255) NOT NULL,
  `randSalt` varchar(255) NOT NULL DEFAULT '$2y$10$iusesomecrazystrings22'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `user_password`, `user_firstname`, `user_lastname`, `user_email`, `user_image`, `user_role`, `randSalt`) VALUES
(46, 'zneroravi', '$2y$12$WZ/YzLKIPf0uJPdxtsr55uuSC3Sz2uwcptHds83oIjodZR2Jx6.h.', '', '', 'zneroravi@gmail.com', '', 'subscriber', '$2y$10$iusesomecrazystrings22'),
(47, 'utkarsh', '$2y$12$cDukXIMw8GR/8zXY.DExmuhwQxYP3JtoC5k/CmpaYmA01mIyvDag.', '', '', 'utkarshsingh2017@gmail.com', '', 'subscriber', '$2y$10$iusesomecrazystrings22'),
(48, 'knight', '$2y$10$iusesomecrazystrings2usMoIxEmR9RsJp.qScmj6xqttnBGiBlm', 'Ajankya', 'knight', 'ajankyaknight@gmail.com', '', 'admin', '$2y$10$iusesomecrazystrings22');

-- --------------------------------------------------------

--
-- Table structure for table `users_online`
--

CREATE TABLE `users_online` (
  `id` int(11) NOT NULL,
  `session` varchar(255) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_online`
--

INSERT INTO `users_online` (`id`, `session`, `time`) VALUES
(44, '', 1447434996),
(45, 's47g806mg6788i92u5ogm6kqi4', 1447441570),
(46, '72clfovqk7vo2p8fiii26tkmr4', 1447461586),
(47, '3gs3q67k5ntpma8tbp2kuvof23', 1447691896),
(48, 'bouqd4fslhn2b1nv20k559col1', 1447796024),
(49, 'tign71tbpar4di74k13f8nr022', 1447867949),
(50, 'ju0s1j019d1qlc1q4tb703rgm3', 1447880891),
(51, 'tp6khbvgo4hdlfueekpmaefcu0', 1447952096),
(52, 'kv0klvlajm8j50d3uqt6go4bm6', 1448174347),
(53, 'qsdv073j4c3lqd6m0rtdpg3615', 1448296313),
(54, 'tmliedhtcgvi8r96l6qplehos4', 1448292854),
(55, 'vrumjbdrjrauucdhg6cta8hhn6', 1448800892),
(56, 'eb1ae8996caf679d187c1037ec9620b1', 1478098539),
(57, '40780dfe8631b764c435168775d44432', 1479443689),
(58, '6d9081fbf0106e9bfef3e77f6fa68f8a', 1481004509),
(59, 'b57212ad3e92b65c05d8ddcd1805a370', 1481382178),
(60, '3cf8d2b7eb470cb635a6102868ae9bd6', 1481397855),
(61, 'c7e0ac8eeeaaf5d3ac4329af9bf4b777', 1481685807),
(62, 'l5k2b3401p7ghjk98fs9bbucn4', 1501873709),
(63, 'bnjcllups3ksnm4tq63o6pijr3', 1502021028),
(64, 't1nunkmdtut1vbcr3a6s2qdjf3', 1509445587),
(65, 'kj7r5t39p5qcol96rqrj860bg5', 1509823324),
(66, 'nkca31e11ep4lfi9v30pkg6si1', 1509963930),
(67, 'adfo5o9d95akritfpkblh6p342', 1510046509);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `users_online`
--
ALTER TABLE `users_online`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(3) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `users_online`
--
ALTER TABLE `users_online`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
