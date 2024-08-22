-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 30, 2024 at 05:00 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blogsite`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_slug` varchar(190) NOT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `publication_status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `user_id`, `category_name`, `category_slug`, `meta_title`, `meta_keywords`, `meta_description`, `publication_status`, `created_at`, `updated_at`) VALUES
(16, 1, 'Technology', 'Technology', 'Technology intro', 'Technology', 'Technology', 1, '2024-07-29 03:01:51', '2024-07-29 03:01:51'),
(17, 1, 'Education', 'Education', 'Education intro', 'Education', 'Education', 1, '2024-07-29 06:42:33', '2024-07-29 06:42:33'),
(18, 1, 'Charity', 'Charity', 'Charity', 'Charity', 'Charity', 1, '2024-07-29 06:45:38', '2024-07-29 06:45:38'),
(19, 1, 'Arts and Culture', 'Arts_and_Culture', 'Arts and Culture', 'Arts, Culture', 'Arts and Culturen', 1, '2024-07-29 07:00:13', '2024-07-30 07:35:05'),
(20, 1, 'Science', 'Science', 'Science', 'Science, Innovation', 'Science', 1, '2024-07-30 07:28:18', '2024-07-30 07:28:18');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `parent_comment_id` int(10) UNSIGNED DEFAULT NULL,
  `comment` text NOT NULL,
  `publication_status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `caption` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `publication_status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `user_id`, `caption`, `image`, `publication_status`, `created_at`, `updated_at`) VALUES
(20, 1, '1', '20.jpg', 1, '2024-07-29 03:19:14', '2024-07-29 03:21:06'),
(21, 1, '2', '21.jpg', 1, '2024-07-29 03:21:48', '2024-07-29 03:21:48'),
(22, 1, '3', '22.jpg', 1, '2024-07-29 03:22:22', '2024-07-29 03:22:22'),
(23, 1, '4', '23.jpg', 1, '2024-07-29 03:22:42', '2024-07-29 03:22:43'),
(24, 1, '5', '24.jpg', 1, '2024-07-29 03:23:35', '2024-07-29 03:23:35'),
(25, 1, '6', '25.jpg', 1, '2024-07-29 03:23:58', '2024-07-29 03:23:59'),
(26, 1, '7', '26.jpg', 1, '2024-07-29 03:24:46', '2024-07-29 03:24:46'),
(27, 1, '8 --', '27.jpg', 0, '2024-07-29 03:25:06', '2024-07-29 03:25:40'),
(28, 1, '8', '28.jpg', 1, '2024-07-29 03:25:59', '2024-07-29 03:26:00'),
(29, 1, '9', '29.jpg', 1, '2024-07-29 03:28:29', '2024-07-29 03:28:29'),
(30, 1, '10', '30.jpg', 1, '2024-07-29 03:31:31', '2024-07-29 03:31:32');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_02_26_172534_create_categories_table', 1),
(4, '2018_03_06_095213_create_tags_table', 1),
(5, '2018_03_06_103250_create_posts_table', 1),
(6, '2018_03_07_081755_create_post_tag_table', 2),
(7, '2018_03_11_091823_create_subscribers_table', 3),
(8, '2018_03_11_095148_create_settings_table', 3),
(9, '2018_03_14_081014_create_comments_table', 4),
(10, '2018_03_14_100742_create_pages_table', 4),
(11, '2018_03_14_101657_create_galleries_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `page_name` varchar(255) NOT NULL,
  `page_slug` varchar(190) NOT NULL,
  `page_content` text NOT NULL,
  `page_featured_image` varchar(255) DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `publication_status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `user_id`, `page_name`, `page_slug`, `page_content`, `page_featured_image`, `meta_title`, `meta_keywords`, `meta_description`, `publication_status`, `created_at`, `updated_at`) VALUES
(8, 1, 'About Us', 'About_Us', '<p><b><span style=\"font-family: Verdana; background-color: rgb(255, 255, 255); color: rgb(8, 82, 148);\">Welcome to Blog Master! </span></b></p><p><span style=\"font-family: Verdana; color: rgb(115, 24, 66);\">At Blog Master, we are passionate about delivering high-quality, insightful, and engaging content across a diverse range of topics. Whether you\'re interested in technology, health, lifestyle, education, or more, our goal is to inform, inspire, and entertain our readers. Our dedicated team of writers and experts work tirelessly to bring you the latest trends, tips, and in-depth analyses, ensuring you stay well-informed and connected to the world around you.</span></p><p><span style=\"font-family: Verdana; color: rgb(115, 24, 66);\">We believe in the power of knowledge and its ability to transform lives. That\'s why we strive to provide articles that are not only informative but also thought-provoking and relevant to everyday life. From expert advice on the latest tech gadgets to practical tips for a healthier lifestyle, we cover it all.</span></p><p><span style=\"font-family: Verdana; color: rgb(115, 24, 66);\">Thank you for visiting Blog Master.We hope you find our content valuable and inspiring. </span></p><p><br></p><p><span style=\"font-family: Verdana;\"><span style=\"color: rgb(115, 24, 66);\">Stay connected with us for continuous updates and insights. For any inquiries or feedback, feel free to reach out to us at</span> </span><a rel=\"noreferrer\" style=\"background-color: rgb(255, 255, 255);\"><span style=\"font-family: Verdana;\">blogmaster@gmail.com</span></a><span style=\"font-family: Verdana;\"> <span style=\"color: rgb(115, 24, 66);\">or follow us on our social media channels.</span></span></p><p>#BlogMaster #E-Blog #ClusterCodingBlog</p>', '8.jpg', 'About Us', 'About Us', 'About Us', 1, '2024-07-30 08:14:22', '2024-07-30 08:35:32');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(100) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `post_date` date NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_slug` varchar(255) NOT NULL,
  `post_details` text NOT NULL,
  `featured_image` varchar(255) DEFAULT NULL,
  `youtube_video_url` varchar(255) DEFAULT NULL,
  `publication_status` tinyint(4) NOT NULL DEFAULT 0,
  `is_featured` tinyint(4) NOT NULL DEFAULT 0,
  `view_count` int(11) NOT NULL DEFAULT 0,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `category_id`, `post_date`, `post_title`, `post_slug`, `post_details`, `featured_image`, `youtube_video_url`, `publication_status`, `is_featured`, `view_count`, `meta_title`, `meta_keywords`, `meta_description`, `created_at`, `updated_at`) VALUES
(24, 1, 18, '2024-07-29', 'Charity', 'Charity', '<p>Charity, the act of giving and sharing with those in need, is a fundamental aspect of human society that transcends cultures, religions, and borders. It is an expression of compassion and empathy, a way to connect with others and contribute to the betterment of our world. In this blog, we will explore the profound impact of charity on individuals, communities, and society as a whole.</p><p>The Essence of Charity</p>\r\n\r\n<p>At its core, charity is about helping others without expecting anything in return. It can take many forms, from monetary donations to volunteering time and skills, to simply offering emotional support. The motivations behind charitable acts are diverse: some are driven by religious beliefs, others by a desire to give back to their communities, and many by a simple wish to make the world a better place.</p>', '24.jpg', '', 0, 0, 0, 'Charity', 'Charity', '<p>The Essence of Charity</p>', '2024-07-29 06:49:21', '2024-07-29 12:01:19'),
(25, 1, 16, '2024-07-29', 'Stay Smart, Stay Safe with Online scams', 'Stay_Safe_with_Online_scams', '<p style=\"text-align:justify;\"><span style=\"font-family:Verdana;color:rgb(115,24,66);\">In today\'s digital age, the internet is an essential part of our daily lives. It offers countless benefits, from staying connected with loved ones to shopping conveniently from home. However, the online world also has its dangers, with online scams becoming increasingly sophisticated and prevalent. Protecting yourself from these scams is crucial to ensure your personal and financial safety.</span></p>\r\n\r\n<p style=\"text-align:justify;\"><span style=\"font-family:Verdana;color:rgb(115,24,66);\"><br></span></p>\r\n\r\n<p style=\"text-align:justify;\"><span style=\"font-family:Verdana;color:rgb(115,24,66);\"><b>Understand Common Scams</b></span></p>\r\n\r\n<p style=\"text-align:justify;\"><span style=\"font-family:Verdana;color:rgb(115,24,66);\">Phishing scams involve fraudulent emails or messages that appear to be from legitimate sources, such as banks or online services. These messages often ask for personal information or direct you to fake websites. Always verify the sender\'s address and never click on suspicious links. Identity theft occurs when scammers use stolen personal information to commit fraud. Protect your personal data by using strong, unique passwords for your accounts and enabling two-factor authentication wherever possible. Online shopping scams promise deals that seem too good to be true. Always shop from reputable websites and check for secure payment methods. Look for reviews and verify the legitimacy of the seller before making any purchases. Tech support scams involve scammers posing as tech support agents, claiming your computer is infected with a virus. They often ask for remote access or payment to fix the problem. Remember, legitimate tech companies will not contact you unsolicited. Investment scams promise high returns with little risk. Always do thorough research before investing your money and consult with a financial advisor if unsure.</span></p>\r\n\r\n<p style=\"text-align:justify;\"><span style=\"font-family:Verdana;color:rgb(115,24,66);\"><br></span></p>\r\n\r\n<p style=\"text-align:justify;\"><span style=\"font-family:Verdana;color:rgb(115,24,66);\"><b>Tips to Stay Safe Online</b></span></p>\r\n\r\n<p style=\"text-align:justify;\"><span style=\"font-family:Verdana;color:rgb(115,24,66);\">Educate yourself about the latest scams and how they operate. Awareness is the first line of defense. Always verify the authenticity of emails, messages, and websites before providing any personal information. Look for signs of phishing, such as poor grammar, unexpected requests, and unfamiliar sender addresses. Create strong, unique passwords for each of your online accounts. Use a combination of letters, numbers, and special characters. </span></p>\r\n\r\n<p style=\"text-align:justify;\"><span style=\"font-family:Verdana;color:rgb(115,24,66);\">Consider using a password manager to keep track of your passwords securely. Two-factor authentication adds an extra layer of security by requiring a second form of verification, such as a code sent to your phone. Enable this feature on all accounts that offer it. Regularly update your operating system, browser, and security software to protect against the latest threats. These updates often include security patches that fix vulnerabilities. Limit the amount of personal information you share online. Be wary of sharing details like your full name, address, and financial information on social media or unfamiliar websites. </span></p>\r\n\r\n<p style=\"text-align:justify;\"><span style=\"font-family:Verdana;color:rgb(115,24,66);\">Regularly check your bank statements and credit reports for any unusual activity. Report any suspicious transactions to your bank or credit card company immediately. When accessing sensitive information online, ensure you are using a secure connection. Look for \"https://\" in the website\'s URL and avoid using public Wi-Fi for financial transactions. If you encounter a scam, report it to the relevant authorities. In the U.S., you can report scams to the Federal Trade Commission (FTC) at reportfraud.ftc.gov. Reporting scams helps prevent others from becoming victims. Lastly, if something feels off or too good to be true, it probably is. Trust your instincts and err on the side of caution.</span></p>\r\n\r\n<p style=\"text-align:justify;\"><span style=\"font-family:Verdana;color:rgb(115,24,66);\">Staying smart and staying safe online requires vigilance and awareness. By understanding common scams and following these safety tips, you can protect yourself and your loved ones from falling victim to online fraud. Remember, your best defense against online scams is to stay informed and be cautious with your personal information. Stay smart, stay safe!</span></p>', '25.jpg', NULL, 1, 0, 5, 'Stay Smart, Stay Safe with Online scams', 'Online scams', '<p>Online scams</p>', '2024-07-29 07:05:21', '2024-07-30 08:29:53'),
(26, 1, 18, '2024-07-31', 'How Giving Transforms Lives and Communities', 'How_Giving_Transforms_Lives_and_Communities', '<p><span style=\"color:rgb(115,24,66);\"><span style=\"font-family:Verdana;\">Charity, the act of giving and sharing with those in need, is a fundamental aspect of human society that transcends cultures, religions, and borders. It is an expression of compassion and empathy, a way to connect with others and contribute to the betterment of our world. In this blog, we will explore the profound impact of charity on individuals, communities, and society as a whole.</span><br></span></p>\r\n\r\n\r\n\r\n\r\n\r\n<p><span style=\"font-family:Verdana;color:rgb(115,24,66);\">At its core, charity is about helping others without expecting anything in return. It can take many forms, from monetary donations to volunteering time and skills, to simply offering emotional support. The motivations behind charitable acts are diverse: some are driven by religious beliefs, others by a desire to give back to their communities, and many by a simple wish to make the world a better place.</span></p>\r\n\r\n\r\n\r\n<p><span style=\"font-family:\'Source Sans Pro\';color:rgb(115,24,66);\"><br></span></p>\r\n\r\n<p><span style=\"font-family:Verdana;color:rgb(115,24,66);\"><b>The Benefits of Charity</b></span></p>\r\n\r\n\r\n\r\n\r\n\r\n<p><span style=\"color:rgb(115,24,66);\"><strong><span style=\"font-family:Verdana;\">1. Personal Fulfillment:</span></strong><span style=\"font-family:Verdana;\">\r\nGiving to charity can be deeply fulfilling. It fosters a sense of purpose and belonging, and knowing that one\'s actions have made a positive difference can be immensely rewarding. This sense of fulfillment can improve mental and emotional well-being, leading to a happier and more content life.</span></span></p>\r\n\r\n\r\n\r\n\r\n\r\n<p><span style=\"color:rgb(115,24,66);\"><strong><span style=\"font-family:Verdana;\">2. Strengthening Communities:</span></strong><span style=\"font-family:Verdana;\">\r\nCharitable activities often bring people together, fostering a sense of community and mutual support. Local charities, in particular, can address specific needs within a community, from providing food and shelter to offering educational opportunities and healthcare services. By working together towards a common goal, communities become more resilient and cohesive.</span></span></p>\r\n\r\n\r\n\r\n\r\n\r\n<p><span style=\"color:rgb(115,24,66);\"><strong><span style=\"font-family:Verdana;\">3. Addressing Social Inequality:</span></strong><span style=\"font-family:Verdana;\">\r\nCharity plays a crucial role in addressing social inequalities. It provides resources and opportunities to those who are disadvantaged, helping to level the playing field. Whether through scholarships for education, funding for medical treatments, or support for social services, charitable efforts can break the cycle of poverty and create pathways to a better future.</span></span></p>\r\n\r\n\r\n\r\n\r\n\r\n<p><span style=\"color:rgb(115,24,66);\"><strong><span style=\"font-family:Verdana;\">4. Encouraging Empathy and Compassion:</span></strong><span style=\"font-family:Verdana;\">\r\nEngaging in charitable activities fosters empathy and compassion. It encourages individuals to see the world from different perspectives and to understand the challenges faced by others. This empathy can lead to more inclusive and supportive societies where people are more willing to help one another.</span></span></p>\r\n\r\n\r\n\r\n<p><span style=\"font-family:\'Source Sans Pro\';color:rgb(115,24,66);\"><br></span></p>\r\n\r\n<p><span style=\"font-family:Verdana;color:rgb(115,24,66);\"><b>Examples of Charitable Impact</b></span></p>\r\n\r\n\r\n\r\n\r\n\r\n<p><span style=\"color:rgb(115,24,66);\"><strong><span style=\"font-family:Verdana;\">1. Education Initiatives:</span></strong><span style=\"font-family:Verdana;\">\r\nCharities focused on education can transform lives by providing access to knowledge and skills. Scholarships, school supplies, and funding for educational programs can help individuals achieve their potential and contribute to the development of their communities.</span></span></p>\r\n\r\n\r\n\r\n\r\n\r\n<p><span style=\"color:rgb(115,24,66);\"><strong><span style=\"font-family:Verdana;\">2. Health and Medical Support:</span></strong><span style=\"font-family:Verdana;\">\r\nHealthcare-focused charities provide essential services to those who might otherwise be unable to afford them. From funding medical research to offering free clinics and health education, these organizations save lives and improve the quality of life for countless individuals.</span></span></p>\r\n\r\n\r\n\r\n\r\n\r\n<p><span style=\"color:rgb(115,24,66);\"><strong><span style=\"font-family:Verdana;\">3. Disaster Relief:</span></strong><span style=\"font-family:Verdana;\">\r\nIn times of crisis, charitable organizations are often on the front lines, providing immediate assistance to those affected by natural disasters, conflicts, or other emergencies. Their efforts can mean the difference between life and death, and they play a vital role in rebuilding and recovery.</span></span></p>\r\n\r\n\r\n\r\n<p><span style=\"font-family:\'Source Sans Pro\';color:rgb(115,24,66);\"><br></span></p>\r\n\r\n<p><span style=\"font-family:Verdana;color:rgb(115,24,66);\"><b>How to Get Involved</b></span></p>\r\n\r\n\r\n\r\n\r\n\r\n<p><span style=\"font-family:Verdana;color:rgb(115,24,66);\">Getting involved in charitable activities is easier than ever. Here are a few ways you can make a difference:</span></p>\r\n\r\n\r\n\r\n\r\n\r\n<ul><li><span style=\"color:rgb(115,24,66);\"><strong><span style=\"font-family:Verdana;\">Donate:</span></strong><span style=\"font-family:Verdana;\"> Monetary donations, no matter how small, can have a significant impact. Choose causes that resonate with you and contribute what you can.</span></span></li></ul>\r\n\r\n<ul><li><span style=\"color:rgb(115,24,66);\"><strong><span style=\"font-family:Verdana;\">Volunteer:</span></strong><span style=\"font-family:Verdana;\"> Offer your time and skills to local charities or non-profit organizations. Volunteering can be a rewarding way to give back and directly see the impact of your efforts.</span></span></li></ul>\r\n\r\n<ul><li><span style=\"color:rgb(115,24,66);\"><strong><span style=\"font-family:Verdana;\">Raise Awareness:</span></strong><span style=\"font-family:Verdana;\"> Use your voice to advocate for causes you care about. Social media, blogs, and community events are great platforms to raise awareness and encourage others to get involved.</span></span></li></ul>\r\n\r\n<ul><li><span style=\"color:rgb(115,24,66);\"><strong><span style=\"font-family:Verdana;\">Organize Fundraisers:</span></strong><span style=\"font-family:Verdana;\"> Organize or participate in fundraising events such as charity runs, bake sales, or auctions. These events not only raise money but also build community spirit.</span></span></li></ul>\r\n\r\n\r\n\r\n<p><span style=\"color:rgb(115,24,66);\"><span style=\"font-family:Verdana;\">﻿</span><br></span></p>\r\n\r\n\r\n\r\n\r\n\r\n<p><span style=\"font-family:Verdana;color:rgb(115,24,66);\">Charity is a powerful force for good, capable of transforming lives and building stronger, more compassionate communities. Whether through donations, volunteering, or advocacy, each of us has the ability to make a difference. By embracing the spirit of charity, we can contribute to a brighter, more equitable future for all.</span></p>\r\n\r\n\r\n\r\n\r\n\r\n<p><span style=\"font-family:Verdana;color:rgb(115,24,66);\">Remember, the act of giving is not just about helping others; it\'s about creating a ripple effect of kindness and generosity that can touch countless lives. So, find a cause that speaks to you, and take the first step towards making a positive impact today.</span></p>', '26.jpg', NULL, 1, 0, 3, 'Charity', 'Charity', '<p>charity</p>', '2024-07-29 11:41:54', '2024-07-30 08:30:17'),
(28, 1, 17, '2024-08-01', 'The Importance of Online Learning', 'The_Importance_of_Online_Learning', '<p style=\"text-align:justify;\"><span style=\"font-family:Verdana;color:rgb(115,24,66);\">Online learning has become an integral part of modern education, revolutionizing how we acquire knowledge and skills. Its importance cannot be overstated, as it offers numerous benefits and opportunities that traditional classroom settings often cannot match.</span></p>\r\n\r\n\r\n\r\n<p style=\"text-align:justify;\"><span style=\"font-family:Verdana;color:rgb(115,24,66);\">One of the primary advantages of online learning is its accessibility. It breaks down geographical barriers, allowing students from any part of the world to access quality education. This is particularly beneficial for those living in remote areas or countries with limited educational resources. Online learning platforms provide access to courses from top universities and institutions, democratizing education and making it available to a broader audience.</span></p>\r\n\r\n\r\n\r\n<p style=\"text-align:justify;\"><span style=\"font-family:Verdana;color:rgb(115,24,66);\">Flexibility is another significant benefit of online learning. It caters to individuals with diverse schedules and commitments, such as working professionals, parents, or those with other responsibilities. Online courses can be taken at one\'s own pace, allowing learners to balance their studies with other aspects of their lives. This flexibility enhances lifelong learning, enabling people to continue their education at any stage of their careers.</span></p>\r\n\r\n\r\n\r\n<p style=\"text-align:justify;\"><span style=\"font-family:Verdana;color:rgb(115,24,66);\">Cost-effectiveness is also a crucial factor. Online learning often reduces the financial burden associated with traditional education, such as commuting, accommodation, and physical textbooks. Many online courses are free or significantly cheaper than their on-campus counterparts. This affordability opens doors for many who might otherwise be unable to pursue higher education due to financial constraints.</span></p>\r\n\r\n\r\n\r\n<p style=\"text-align:justify;\"><span style=\"font-family:Verdana;color:rgb(115,24,66);\">Online learning fosters a personalized learning experience. Advanced technologies, such as artificial intelligence and machine learning, can tailor educational content to individual needs and learning styles. Students can receive immediate feedback, track their progress, and focus on areas where they need improvement. This personalized approach enhances the overall learning experience and increases the likelihood of academic success.</span></p>\r\n\r\n\r\n\r\n<p style=\"text-align:justify;\"><span style=\"font-family:Verdana;color:rgb(115,24,66);\">Moreover, online learning encourages the development of digital literacy and other essential 21st-century skills. As students navigate online platforms, participate in virtual discussions, and utilize digital resources, they become proficient in using technology, which is crucial in today\'s digital world. These skills are transferable to the workplace, making online learners more competitive in the job market.</span></p>\r\n\r\n\r\n\r\n<p style=\"text-align:justify;\"><span style=\"font-family:Verdana;color:rgb(115,24,66);\">Collaboration and communication are also enhanced through online learning. Virtual classrooms, discussion forums, and group projects allow students to interact and collaborate with peers from diverse backgrounds. This exposure to different perspectives fosters a global mindset and improves intercultural communication skills, which are invaluable in our increasingly interconnected world.</span></p>\r\n\r\n\r\n\r\n<p style=\"text-align:justify;\"><span style=\"font-family:Verdana;color:rgb(115,24,66);\">In conclusion, online learning plays a vital role in modern education by providing accessible, flexible, and cost-effective learning opportunities. It supports personalized learning, develops essential digital skills, and fosters collaboration and communication. As technology continues to evolve, the importance of online learning will only grow, further transforming the educational landscape and making quality education accessible to all.</span></p>', '28.jpg', NULL, 1, 0, 2, 'The Importance of Online Learning', 'Education, Online Learning', '<p>Importance of Online Learning</p>', '2024-07-30 03:06:19', '2024-07-30 08:20:46'),
(29, 1, 20, '2024-07-30', 'Fascinating World of Scientific Discoveries', 'Fascinating_World_of_Scientific_Discoveries', '<p style=\"text-align:justify;\"><span style=\"font-family:Verdana;color:rgb(115,24,66);\">Scientific discoveries have always played a pivotal role in advancing human knowledge and improving our understanding of the universe. From groundbreaking medical breakthroughs to the exploration of distant galaxies, these discoveries shape our world and inspire future generations. In this blog, we will delve into some of the most recent and impactful scientific discoveries, exploring their significance and potential to transform our lives.</span></p>\r\n\r\n<div><b><br></b></div>\r\n\r\n\r\n\r\n<div><b><span style=\"font-family:Verdana;\">The Quantum Leap: Quantum Computing</span></b></div>\r\n\r\n<p style=\"text-align:justify;\"><span style=\"font-family:Verdana;color:rgb(115,24,66);\">One of the most exciting advancements in recent years is the development of quantum computing. Unlike classical computers, which use bits to process information in binary form (0s and 1s), quantum computers use quantum bits, or qubits. These qubits can exist in multiple states simultaneously, thanks to the principles of superposition and entanglement. This capability allows quantum computers to perform complex calculations at unprecedented speeds.</span></p>\r\n\r\n<p style=\"text-align:justify;\"><span style=\"font-family:Verdana;color:rgb(115,24,66);\">In 2019, Google announced that its quantum computer, Sycamore, had achieved quantum supremacy by solving a problem that would take classical supercomputers thousands of years to complete. This milestone represents a significant step forward in computational power, with potential applications in cryptography, material science, and drug discovery.</span></p>\r\n\r\n<div><br></div>\r\n\r\n\r\n\r\n<div><b><span style=\"font-family:Verdana;\">The CRISPR Revolution: Gene Editing</span></b></div>\r\n\r\n<p style=\"text-align:justify;\"><span style=\"font-family:Verdana;color:rgb(115,24,66);\">The advent of CRISPR-Cas9 technology has revolutionized the field of genetics, offering a precise and efficient method for editing genes. This powerful tool allows scientists to modify DNA sequences, potentially curing genetic disorders and enhancing our understanding of gene functions.</span></p>\r\n\r\n<p style=\"text-align:justify;\"><span style=\"font-family:Verdana;color:rgb(115,24,66);\">In 2020, Emmanuelle Charpentier and Jennifer Doudna were awarded the Nobel Prize in Chemistry for their pioneering work in developing CRISPR-Cas9. This technology holds promise for treating conditions such as cystic fibrosis, sickle cell anemia, and even certain types of cancer. However, it also raises ethical questions about the potential for genetic enhancements and the implications of editing human embryos.</span></p>\r\n\r\n<div><br></div>\r\n\r\n\r\n\r\n<div><b><span style=\"font-family:Verdana;\">The Dark Side of the Universe: Dark Matter and Dark Energy</span></b></div>\r\n\r\n<p style=\"text-align:justify;\"><span style=\"font-family:Verdana;color:rgb(115,24,66);\">While we have made significant strides in understanding the visible universe, much of it remains shrouded in mystery. Dark matter and dark energy, which together make up about 95% of the universe, are among the most enigmatic components of our cosmos. Dark matter is thought to provide the gravitational scaffolding that holds galaxies together, while dark energy is believed to be responsible for the accelerated expansion of the universe.</span></p>\r\n\r\n<p style=\"text-align:justify;\"><span style=\"font-family:Verdana;color:rgb(115,24,66);\">Recent discoveries using advanced telescopes and observational techniques have provided more clues about these elusive phenomena. For instance, the detection of gravitational waves by the LIGO and Virgo collaborations has opened a new window into the study of cosmic events, offering potential insights into the nature of dark matter and dark energy.</span></p>\r\n\r\n<div><br></div>\r\n\r\n\r\n\r\n<div><b><span style=\"font-family:Verdana;\">Exploring the Red Planet: Mars Missions</span></b></div>\r\n\r\n<p style=\"text-align:justify;\"><span style=\"font-family:Verdana;color:rgb(115,24,66);\">Mars has long been a focal point of space exploration, with numerous missions aimed at uncovering the planet\'s secrets. In 2021, NASA\'s Perseverance rover successfully landed on Mars, equipped with cutting-edge instruments to search for signs of past life and collect samples for future return to Earth. This mission marks a significant step in our quest to understand whether life ever existed on the Red Planet and lays the groundwork for potential human exploration.</span></p>\r\n\r\n<p style=\"text-align:justify;\"><span style=\"font-family:Verdana;color:rgb(115,24,66);\">In addition to NASA\'s efforts, other space agencies and private companies are also making strides in Mars exploration. The United Arab Emirates\' Hope probe and China\'s Tianwen-1 mission have both contributed valuable data about Mars\' atmosphere and surface conditions, broadening our understanding of our neighboring planet.</span></p>\r\n\r\n<div><br></div>\r\n\r\n\r\n\r\n<div><b><span style=\"font-family:Verdana;\">The Human Microbiome: A New Frontier in Medicine</span></b></div>\r\n\r\n<p style=\"text-align:justify;\"><span style=\"font-family:Verdana;color:rgb(115,24,66);\">The human microbiome, the collection of trillions of microorganisms living in and on our bodies, has emerged as a critical area of research in recent years. These microbes play essential roles in digestion, immune function, and even mental health. Advances in DNA sequencing and computational biology have enabled scientists to study the microbiome in unprecedented detail, uncovering its complex interactions with our bodies.</span></p>\r\n\r\n<p style=\"text-align:justify;\"><span style=\"font-family:Verdana;color:rgb(115,24,66);\">Research into the microbiome holds promise for developing new treatments for a range of conditions, from inflammatory bowel disease to depression. By understanding the intricate balance of microbial communities, we can potentially manipulate them to improve health and prevent disease.</span></p>', '29.png', NULL, 1, 0, 1, 'Science', 'Science, Innovation', '<p>Science</p>', '2024-07-30 07:30:50', '2024-07-30 08:26:15'),
(30, 1, 19, '2024-07-30', 'Sigiriya: The Ancient Marvel of SL\'s Lion Rock Fortress', 'Sigiriya_The_Ancient_Marvel_of_Sri_Lanka', '<p><span style=\"font-family:Verdana;color:rgb(115,24,66);\">Nestled in the heart of Sri Lanka, Sigiriya stands as a testament to the ingenuity, artistry, and architectural prowess of an ancient civilization. Known as the \"Lion Rock,\" this majestic fortress rises nearly 200 meters above the surrounding plains, offering a glimpse into the island\'s rich history and cultural heritage. Designated as a UNESCO World Heritage Site, Sigiriya is not only a marvel of ancient engineering but also a symbol of Sri Lanka\'s historical and cultural identity.</span></p>\r\n\r\n<p><br><b><span style=\"font-family:Verdana;background-color:rgb(255,255,255);color:rgb(115,24,66);\">Historical Background</span></b></p>\r\n\r\n<p><span style=\"font-family:Verdana;color:rgb(115,24,66);\">Sigiriya\'s history dates back to the 5th century AD, during the reign of King Kashyapa I (477-495 AD). According to historical records, Kashyapa, the son of King Dhatusena, seized the throne from his father and built his new capital atop the Sigiriya rock to secure his reign. The choice of Sigiriya was strategic, providing a natural fortress with an extensive view of the surrounding area, making it difficult for enemies to launch surprise attacks.</span></p>\r\n\r\n<p><span style=\"font-family:Verdana;color:rgb(115,24,66);\">King Kashyapa transformed Sigiriya into a sophisticated city and royal palace complex, incorporating advanced urban planning, sophisticated water management systems, and breathtaking art and architecture. The site served as the royal residence for only a short period until Kashyapa\'s death in 495 AD, after which it was abandoned as a capital and later used as a Buddhist monastery until the 14th century.</span></p>\r\n\r\n<p><span style=\"color:rgb(115,24,66);\"><br><b><span style=\"font-family:Verdana;\">Architectural Marvels</span></b></span></p>\r\n\r\n<p><span style=\"font-family:Verdana;color:rgb(115,24,66);\">Sigiriya is renowned for its remarkable architecture and urban design. The entrance to the fortress is through the \"Lion Gate,\" a massive stone structure shaped like a lion, with the lion\'s paws still visible today. The lion\'s head and upper body, which once formed the entrance, have long since crumbled.</span></p>\r\n\r\n<p><span style=\"font-family:Verdana;color:rgb(115,24,66);\">The ascent to the summit of Sigiriya involves climbing a series of steep staircases and pathways that wind their way up the rock face. Along the way, visitors encounter the famous \"Mirror Wall,\" a highly polished surface covered in ancient graffiti, poems, and inscriptions left by visitors over the centuries.</span></p>\r\n\r\n<p><span style=\"font-family:Verdana;color:rgb(115,24,66);\">One of the most iconic features of Sigiriya is the series of frescoes known as the \"Sigiriya Damsels.\" These exquisite paintings depict celestial maidens, or apsaras, adorned in vibrant clothing and jewelry. The frescoes, created using natural pigments, are a testament to the artistic skill of the ancient Sinhalese.</span></p>\r\n\r\n<p><span style=\"font-family:Verdana;color:rgb(115,24,66);\">The summit of Sigiriya is home to the remains of King Kashyapa\'s palace, which includes foundations of buildings, rock-cut pools, and terraces. The palace complex was ingeniously designed to incorporate natural rock formations into its structure, creating a harmonious blend of nature and architecture.</span></p>\r\n\r\n<p><span style=\"color:rgb(115,24,66);\"><br><b><span style=\"font-family:Verdana;\">Water Gardens and Landscaping</span></b></span></p>\r\n\r\n<p><span style=\"font-family:Verdana;color:rgb(115,24,66);\">Sigiriya\'s water gardens are among the oldest landscaped gardens in the world. These gardens, located at the base of the rock, are divided into three distinct sections: the symmetrical water gardens, the boulder gardens, and the terraced gardens. The water gardens feature sophisticated hydraulic systems, including fountains, moats, and pools, which were designed to enhance the aesthetic beauty and provide cooling during the hot tropical climate.</span></p>\r\n\r\n<p><span style=\"font-family:Verdana;color:rgb(115,24,66);\">The boulder gardens are composed of massive rock formations, skillfully integrated into the garden design, while the terraced gardens are built on the slopes of the rock, creating a stepped effect. These gardens showcase the advanced engineering and landscaping techniques of the ancient builders.</span></p>\r\n\r\n<p><span style=\"color:rgb(115,24,66);\"><br><b><span style=\"font-family:Verdana;\">Cultural Significance</span></b></span></p>\r\n\r\n<p><span style=\"font-family:Verdana;color:rgb(115,24,66);\">Sigiriya holds immense cultural and historical significance for Sri Lanka. It is a symbol of the island\'s ancient heritage and a testament to the creativity and innovation of its people. The site is a source of national pride and continues to inspire artists, historians, and architects.</span></p>\r\n\r\n<p><span style=\"font-family:Verdana;color:rgb(115,24,66);\">Sigiriya also plays a crucial role in understanding the social and political history of ancient Sri Lanka. The inscriptions and graffiti on the Mirror Wall provide insights into the thoughts and emotions of visitors from different periods, reflecting the site\'s enduring appeal and significance.</span></p>\r\n\r\n<p><span style=\"color:rgb(115,24,66);\"><br><b><span style=\"font-family:Verdana;\">Preservation and Tourism</span></b></span></p>\r\n\r\n<p><span style=\"font-family:Verdana;color:rgb(115,24,66);\">Today, Sigiriya is a major tourist attraction, drawing visitors from around the world who come to marvel at its historical and architectural wonders. The site is carefully managed and preserved by the Sri Lankan government and international organizations to ensure its protection for future generations.</span></p>\r\n\r\n<p><span style=\"font-family:Verdana;color:rgb(115,24,66);\">Efforts to preserve Sigiriya include regular maintenance, archaeological research, and measures to mitigate the impact of tourism. Visitors are encouraged to respect the site\'s cultural and historical value by following guidelines and regulations.</span></p>\r\n\r\n<p><span style=\"color:rgb(115,24,66);\"><br></span></p>\r\n\r\n<p><span style=\"font-family:Verdana;color:rgb(115,24,66);\">Sigiriya is not just an ancient fortress; it is a living testament to the rich history and cultural heritage of Sri Lanka. Its architectural brilliance, artistic treasures, and historical significance make it a unique and invaluable part of the world\'s heritage. As we continue to explore and preserve this magnificent site, Sigiriya remains a source of inspiration and a window into the past, reminding us of the enduring legacy of human creativity and ingenuity.</span></p>', '30.jpg', NULL, 1, 0, 1, 'Heritage', 'Heritage, History', '<p>Heritage</p>', '2024-07-30 07:42:48', '2024-07-30 08:32:18');

-- --------------------------------------------------------

--
-- Table structure for table `post_tag`
--

CREATE TABLE `post_tag` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_tag`
--

INSERT INTO `post_tag` (`id`, `post_id`, `tag_id`) VALUES
(81, 25, 19),
(82, 26, 20),
(83, 26, 21),
(84, 28, 22),
(85, 30, 24),
(86, 30, 25),
(87, 25, 17),
(88, 29, 18),
(89, 29, 23),
(90, 25, 26),
(91, 29, 17),
(92, 26, 27),
(93, 28, 28),
(94, 28, 29),
(95, 29, 28),
(96, 29, 29),
(97, 30, 28),
(98, 30, 29),
(99, 25, 28),
(100, 25, 29),
(101, 26, 28),
(102, 26, 29);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `website_title` varchar(250) DEFAULT NULL,
  `logo` varchar(50) DEFAULT NULL,
  `favicon` varchar(50) DEFAULT NULL,
  `about_us` text DEFAULT NULL,
  `copyright` varchar(255) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(25) DEFAULT NULL,
  `mobile` varchar(25) DEFAULT NULL,
  `fax` varchar(20) DEFAULT NULL,
  `address_line_one` varchar(255) DEFAULT NULL,
  `address_line_two` varchar(255) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `zip` varchar(20) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `map_iframe` text DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `google_plus` varchar(255) DEFAULT NULL,
  `linkedin` varchar(255) DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `gallery_meta_title` varchar(255) DEFAULT NULL,
  `gallery_meta_keywords` varchar(255) DEFAULT NULL,
  `gallery_meta_description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `website_title`, `logo`, `favicon`, `about_us`, `copyright`, `email`, `phone`, `mobile`, `fax`, `address_line_one`, `address_line_two`, `state`, `city`, `zip`, `country`, `map_iframe`, `facebook`, `twitter`, `google_plus`, `linkedin`, `meta_title`, `meta_keywords`, `meta_description`, `gallery_meta_title`, `gallery_meta_keywords`, `gallery_meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Cluster Coding Blog', 'logo.png', 'favicon.png', 'Blog Master - your hub for insightful and engaging content across technology, lifestyle, health, and more. Our dedicated team delivers high-quality, thought-provoking articles to keep you informed and inspired. Stay connected with us for the latest trends, tips, and insights.', 'Copyright 2024 <a href=\"http://localhost/blog_master/index.php\" target=\"_blank\">BlogMaster</a>, All rights reserved.', 'blogmaster@gmail.com', '+94 65 224 04 86', '+94 77 336 81 81', '80880', 'Eravur Urban Council,', 'QJF5+88X, Town,', 'Eravur - 30300,', 'Eastern, Sri Lanka.', NULL, NULL, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d18804.485512128074!2d81.60838301988815!3d7.773265234072803!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3afad3f6afb5ab2d%3A0x7b1ad8cea343a9fc!2zRXJhdnVyIFVyYmFuIENvdW5jaWwg4K6P4K6x4K6-4K614K-C4K6w4K-NIOCuqOCuleCusOCumuCuquCviCDgtpHgtrvgt4_gt4Dgt5Tgtrvgt4og4Lax4Lac4La7IOC3g-C2t-C3j-C3gA!5e0!3m2!1sen!2slk!4v1722326304860!5m2!1sen!2slk\" width=\"80\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 'https://www.facebook.com/asn.marzook/', 'https://twitter.com/', 'https://plus.google.com/asn-marzook/', 'https://www.linkedin.com/in/asna-marzook/', 'Blog Master', 'Blog Master, Coding, Blog', 'Blog Master - your hub for insightful and engaging content across technology, lifestyle, health, and more. Our dedicated team delivers high-quality, thought-provoking articles to keep you informed and inspired. Stay connected with us for the latest trends, tips, and insights.', 'Blog Master Coding Gallery', 'Blog Master, Coding, Gallery', 'Blog Master - your hub for insightful and engaging content across technology, lifestyle, health, and more. Our dedicated team delivers high-quality, thought-provoking articles to keep you informed and inspired. Stay connected with us for the latest trends, tips, and insights.', '2018-03-11 10:37:29', '2024-07-30 09:38:02');

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`, `created_at`, `updated_at`) VALUES
(112, 'marzookasna@gmail.com', '2024-07-29 02:58:35', '2024-07-29 02:58:35');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `tag_name` varchar(255) NOT NULL,
  `tag_slug` varchar(190) NOT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `publication_status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `user_id`, `tag_name`, `tag_slug`, `meta_title`, `meta_keywords`, `meta_description`, `publication_status`, `created_at`, `updated_at`) VALUES
(16, 1, 'hhh', 'hhmhhhh', 'Technology intro', 'Technology', 'ggg', 0, '2024-07-29 03:38:33', '2024-07-30 02:34:21'),
(17, 1, 'Education', 'Education', 'Education', 'Education', 'Education', 1, '2024-07-29 06:43:29', '2024-07-29 06:43:29'),
(18, 1, 'Innovation', 'Innovation', 'Innovation', 'Innovation', 'Common Innovation', 1, '2024-07-29 06:58:53', '2024-07-30 07:27:12'),
(19, 1, 'OnlineScam', 'OnlineScam', 'Online Scam', 'Online Scam', 'Online Scam', 1, '2024-07-29 07:00:56', '2024-07-30 08:40:57'),
(20, 1, 'Charity', 'Charity', 'Charity', 'Charity', 'Charity', 1, '2024-07-29 11:35:39', '2024-07-29 11:35:39'),
(21, 1, 'Volunteering', 'Volunteering', 'Volunteering', 'Volunteering', 'Volunteering', 1, '2024-07-29 11:36:31', '2024-07-29 11:36:31'),
(22, 1, 'TechSafety', 'Tech_Safety', 'TechSafety', 'TechSafety, Online', 'Stay Safe Online', 1, '2024-07-30 03:17:45', '2024-07-30 03:17:45'),
(23, 1, 'Science', 'Science', 'Science', 'Science', 'Science', 1, '2024-07-30 07:24:14', '2024-07-30 07:24:14'),
(24, 1, 'ArtsAndCulture', 'Arts_and-Culture', 'Arts and Culture', 'Arts, Culture', 'Arts and Culture', 1, '2024-07-30 07:38:24', '2024-07-30 08:40:46'),
(25, 1, 'Heritage', 'Heritage', 'Heritage', 'Heritage, History', 'Heritage', 1, '2024-07-30 07:38:53', '2024-07-30 07:38:53'),
(26, 1, 'DigitalSecurity', 'Digital_Security', 'DigitalSecurity', 'DigitalSecurity, Scam', 'DigitalSecurity', 1, '2024-07-30 08:37:56', '2024-07-30 08:37:56'),
(27, 1, 'ActOfKindness', 'Act_Of_Kindness', 'Act Of Kindness', 'ActOfKindness, Charity', 'ActOfKindness', 1, '2024-07-30 08:40:29', '2024-07-30 08:40:29'),
(28, 1, 'E-Blog', 'E-Blog', 'E-Blog', 'E-Blog', 'E-Blog', 1, '2024-07-30 08:42:30', '2024-07-30 08:42:30'),
(29, 1, 'BlogMaster', 'Blog_Master', 'BlogMaster', 'BlogMaster', 'BlogMaster', 1, '2024-07-30 08:43:25', '2024-07-30 08:43:25');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `google_plus` varchar(255) DEFAULT NULL,
  `linkedin` varchar(255) DEFAULT NULL,
  `about` text DEFAULT NULL,
  `role` varchar(50) NOT NULL,
  `activation_status` tinyint(4) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `password`, `avatar`, `gender`, `phone`, `address`, `facebook`, `twitter`, `google_plus`, `linkedin`, `about`, `role`, `activation_status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Asna Marzook', 'Asna', 'marzookasna@gmail.com', '$2y$10$kgpVHlOToP.cAI9yciXPJ.ZWZY9Jn96cbzJhCj/Z0M0mPqF//JgRG', '1.png', 'f', '+94 77 336 81 81', '389, SL. Hajiyar road, Valaichenai', 'asnmarzook', 'asn_marzook', 'asna', 'https://www.linkedin.com/in/asna-marzook/', 'Software Developer', 'admin', 1, 'Yp1LayZ5t1Zch6R3KFadI3k5XhoftOAWUcjUG383ggVnkyer88PSWRguaYQe', '2018-07-26 11:10:00', '2024-07-29 03:37:38'),
(22, 'Admin', 'Admin', 'admin@gmail.com', '$2y$10$kx3cuTSWeeVnF/iyrFwDK.urOBn2ee87YZYYElacXfoiB.yPlP73e', NULL, 'm', '+94 74 037 5190', 'blog_master, Sri Lanka', 'blog_master', 'blog_master', 'blog_master', 'blog_master', 'Social Worker', 'admin', 1, '3y82eGNmMYiMOhDrQ97N5JR53ZHPT0Vb54jc5LUBwvsOjNEMXuERBGyzEa1I', '2024-07-29 03:53:35', '2024-07-29 07:10:04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_category_slug_unique` (`category_slug`),
  ADD KEY `categories_user_id_index` (`user_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_user_id_index` (`user_id`),
  ADD KEY `comments_post_id_index` (`post_id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `galleries_user_id_index` (`user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_page_slug_unique` (`page_slug`),
  ADD KEY `pages_user_id_index` (`user_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_index` (`user_id`),
  ADD KEY `posts_category_id_index` (`category_id`);

--
-- Indexes for table `post_tag`
--
ALTER TABLE `post_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_tag_post_id_foreign` (`post_id`),
  ADD KEY `post_tag_tag_id_foreign` (`tag_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscribers_email_unique` (`email`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tags_tag_slug_unique` (`tag_slug`),
  ADD KEY `tags_user_id_index` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `post_tag`
--
ALTER TABLE `post_tag`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `galleries`
--
ALTER TABLE `galleries`
  ADD CONSTRAINT `galleries_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pages`
--
ALTER TABLE `pages`
  ADD CONSTRAINT `pages_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `post_tag`
--
ALTER TABLE `post_tag`
  ADD CONSTRAINT `post_tag_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `post_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tags`
--
ALTER TABLE `tags`
  ADD CONSTRAINT `tags_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
