-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 19, 2022 at 03:57 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `codeigniter_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(150) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `created_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`, `status`, `created_at`) VALUES
(2, 'admin', '$2y$10$w57sVA3506fxlDERLiq6nesQbrBZS162JmHV/gdXiFtNv9IMPAsXS', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(100) NOT NULL,
  `category` int(11) NOT NULL,
  `author` varchar(50) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `description`, `image`, `category`, `author`, `status`, `created_at`, `updated_at`) VALUES
(10, 'Where does it come from?', '<p><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.</span><br></p>', 'be1adcdf9a0457a1887d50762f36eb65.jpg', 5, 'Peter', 1, '2022-02-09 07:22:10', NULL),
(11, '1914 translation by H. Rackham', '<p><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">\"On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish.&nbsp;</span><br></p>', 'dfddcc364a8686ae8053d4b275d810f2.jpg', 2, 'Hasib', 1, '2022-02-09 07:23:00', NULL),
(12, 'Where can I get some event\'s?', '<p><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.</span><br></p>', '814f904eb7853d795b4383488769f5d8.jpg', 2, 'Rakib', 1, '2022-02-09 07:24:01', '2022-02-09 12:35:32'),
(13, 'What is Lorem Ipsum?', '<p><strong style=\"margin: 0px; padding: 0px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.&nbsp;</span><br></p>', '48e3775f87a065a82d901dc1b85506fa.jpg', 4, 'Rony', 1, '2022-02-09 07:24:28', '2022-02-09 13:53:39'),
(14, 'The standard Lorem Ipsum passage', '<p><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span><br></p>', '0af0665c8459faa6d5a4a7109cb723e3.jpg', 3, 'Foysal', 1, '2022-02-09 10:34:17', '2022-02-09 10:36:51'),
(15, 'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet', '<p><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce id leo dignissim, mollis leo non, dictum leo. Duis porta tempus lorem mattis aliquam. Phasellus magna elit, elementum eu nisi sit amet, ornare aliquam sem. Donec nec fermentum purus, fringilla pellentesque erat. Proin ac ex quis lorem suscipit sollicitudin. Vestibulum vestibulum dapibus cursus. Etiam pulvinar vehicula tristique. Morbi non accumsan magna. Donec vel aliquam ligula. Morbi dapibus scelerisque tortor sit amet congue. Nulla vulputate, mi interdum ullamcorper egestas, nunc arcu varius nibh, quis tristique mauris sem nec dolor. In pulvinar ac nisl a vehicula.</span><br></p>', 'b611cbaf6f9c59771aa286061863ead6.jpg', 3, 'Tanvir', 1, '2022-02-09 12:35:24', NULL),
(16, 'Lorem ipsum dolor sit amet, consectetur', '<p><span style=\"color: rgb(123, 136, 152); font-family: &quot;Mercury SSm A&quot;, &quot;Mercury SSm B&quot;, Georgia, Times, &quot;Times New Roman&quot;, &quot;Microsoft YaHei New&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, SimSun, STXihei, 华文细黑, serif; font-size: 26px; background-color: rgb(85, 98, 113);\">&nbsp;Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span><br></p>', '73d7c9145d6075c949bc9eb98cae20ee.jpg', 3, 'Rafin', 1, '2022-02-09 14:42:23', NULL),
(18, 'Using Icons via Global Use', '<p><span style=\"color: rgb(77, 77, 77); font-family: Inter, ui-sans-serif, system-ui, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;\">Most modern React projects manage their dependencies using a package manager like&nbsp;</span><a href=\"https://www.npmjs.com/\" style=\"border-width: 0px; border-style: solid; border-color: rgba(208, 208, 208, var(--tw-border-opacity)); --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-transform: translateX(var(--tw-translate-x)) translateY(var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y)); --tw-border-opacity: 1; --tw-ring-inset: var(--tw-empty, ); --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(57, 146, 255, 0.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-blur: var(--tw-empty, ); --tw-brightness: var(--tw-empty, ); --tw-contrast: var(--tw-empty, ); --tw-grayscale: var(--tw-empty, ); --tw-hue-rotate: var(--tw-empty, ); --tw-invert: var(--tw-empty, ); --tw-saturate: var(--tw-empty, ); --tw-sepia: var(--tw-empty, ); --tw-drop-shadow: var(--tw-empty, ); --tw-filter: var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow); color: var(--base0D); --tw-text-opacity: 1; transition-timing-function: cubic-bezier(0.4, 0, 0.2, 1); transition-duration: 200ms; transition-property: opacity, background-color, border-color, color, fill, stroke; font-family: Inter, ui-sans-serif, system-ui, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; background-color: rgb(255, 255, 255);\">npm</a><span style=\"color: rgb(77, 77, 77); font-family: Inter, ui-sans-serif, system-ui, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;\">&nbsp;or&nbsp;</span><a href=\"https://yarnpkg.com/\" style=\"border-width: 0px; border-style: solid; border-color: rgba(208, 208, 208, var(--tw-border-opacity)); --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-transform: translateX(var(--tw-translate-x)) translateY(var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y)); --tw-border-opacity: 1; --tw-ring-inset: var(--tw-empty, ); --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(57, 146, 255, 0.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-blur: var(--tw-empty, ); --tw-brightness: var(--tw-empty, ); --tw-contrast: var(--tw-empty, ); --tw-grayscale: var(--tw-empty, ); --tw-hue-rotate: var(--tw-empty, ); --tw-invert: var(--tw-empty, ); --tw-saturate: var(--tw-empty, ); --tw-sepia: var(--tw-empty, ); --tw-drop-shadow: var(--tw-empty, ); --tw-filter: var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow); color: var(--base0D); --tw-text-opacity: 1; transition-timing-function: cubic-bezier(0.4, 0, 0.2, 1); transition-duration: 200ms; transition-property: opacity, background-color, border-color, color, fill, stroke; font-family: Inter, ui-sans-serif, system-ui, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; background-color: rgb(255, 255, 255);\">Yarn</a><span style=\"color: rgb(77, 77, 77); font-family: Inter, ui-sans-serif, system-ui, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;\">. To add React Router to an existing project, the first thing you should do is install the necessary dependencies with the tool of your choice:</span><br></p>', 'c0384786dc254c2ac64f3c5fc48a0946.jpg', 3, 'Rohim', 1, '2022-02-16 13:35:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `image`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Fashion', 'bdba9d6dd35de9495a57ead805d098b5.jpg', 1, '2022-02-07 17:33:29', '2022-02-09 10:28:07'),
(3, 'Technology', '582cb37678228b39865e492cbfb9d46c.jpg', 1, '2022-02-07 18:29:20', '2022-02-09 10:13:31'),
(4, 'Business', '1894b4f7d0e848490c951db94275d487.jpg', 1, '2022-02-07 18:31:27', '2022-02-09 10:13:09'),
(5, 'Tech', 'd695dde806dc89a5bcde648b0d753d8a.jpg', 1, '2022-02-07 18:43:16', '2022-02-09 10:38:36');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `comment` text NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `article_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `name`, `comment`, `status`, `article_id`, `created_at`) VALUES
(1, 'Jon Doe', ' It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. ', 1, 13, '2022-02-09 16:27:01'),
(2, 'Rokey', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 1, 13, '2022-02-09 16:54:28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
