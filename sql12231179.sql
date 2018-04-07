-- phpMyAdmin SQL Dump
-- version 4.7.1
-- https://www.phpmyadmin.net/
--
-- Host: sql12.freesqldatabase.com
-- Generation Time: Apr 07, 2018 at 01:42 PM
-- Server version: 5.5.58-0ubuntu0.14.04.1
-- PHP Version: 7.0.28-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sql12231179`
--

-- --------------------------------------------------------

--
-- Table structure for table `applicants`
--

CREATE TABLE `applicants` (
  `id` int(10) UNSIGNED NOT NULL,
  `application_letter` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `job_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `applicants`
--

INSERT INTO `applicants` (`id`, `application_letter`, `status`, `created_at`, `updated_at`, `user_id`, `job_id`) VALUES
(1, 'Dear Hiring Manager,\r\n\r\nI want to apply for this Admin Needed for Marketing Agency.\r\n\r\nThanks,\r\nJohn Ray', 'pending', '2018-04-07 14:39:43', '2018-04-07 14:39:43', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `applicant_job`
--

CREATE TABLE `applicant_job` (
  `id` int(10) UNSIGNED NOT NULL,
  `applicant_user_id` int(11) NOT NULL,
  `job_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `applicant_job`
--

INSERT INTO `applicant_job` (`id`, `applicant_user_id`, `job_id`, `created_at`, `updated_at`) VALUES
(1, 3, 1, '2018-04-07 14:39:43', '2018-04-07 14:39:43');

-- --------------------------------------------------------

--
-- Table structure for table `education`
--

CREATE TABLE `education` (
  `id` int(10) UNSIGNED NOT NULL,
  `course` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `school` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `achievement` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `education`
--

INSERT INTO `education` (`id`, `course`, `school`, `year`, `achievement`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Bachelor of Science in Computer Engineering', 'University of Rizal System', '2006 - 2010', NULL, 3, '2018-04-07 14:44:01', '2018-04-07 14:44:33');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `budget` decimal(8,2) NOT NULL,
  `category_id` int(11) NOT NULL,
  `position_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_duration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `title`, `body`, `budget`, `category_id`, `position_type`, `project_duration`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Admin Needed for Marketing Agency [Full-Time]', '<p>&quot;Help! I need somebody<br />\r\nHelp! Not just anybody<br />\r\nHelp! You know I need someone<br />\r\nHelp!&quot;<br />\r\n- The Beatles<br />\r\n<br />\r\nSeller&#39;s Choice is a rapidly growing full-service digital marketing service provider for e-commerce sellers.<br />\r\nThe Director of Marketing &amp; Operations, as well as the CEO, needs some serious help.<br />\r\n<br />\r\nWe are looking for a full-time administrative assistant to help us with keeping things in order and helping them stay organized and working at their best.<br />\r\n<br />\r\nREQUIREMENTS<br />\r\n- Able to work on Eastern Standard Time<br />\r\n- VERY organized<br />\r\n- Extremely responsive<br />\r\n- Quick learner<br />\r\n- Fluent in English<br />\r\n- Willing to be part of a team<br />\r\n<br />\r\nPOSSIBLE JOB FUNCTIONS&nbsp;<br />\r\n- Organization of emails<br />\r\n- Help to maintain our partnership program (contacting other similar companies to do blog posts, etc.)<br />\r\n- Contacting and managing other VAs.<br />\r\n- Organizing of online files<br />\r\n- Research<br />\r\n<br />\r\nWe use Slack here so experience with that would be great. Obviously, we have email too. (We use Google Suite) However, we have some VAs on Skype as well so you will need to use Skype also. - In your cover letter use the word &quot;FINAGLE&quot; so we know you actually read through everything here. - We would most likely want to set up weekly calls to make sure we&#39;re all on the same page, etc.<br />\r\n<br />\r\nWe need help with so much random stuff that it&#39;s nearly impossible for us to list them here because they kind of just show up....so someone who is a critical thinker would be perfect for this role!</p>', '1300.00', 6, 'full-time', '1 - 3 months', 2, '2018-04-07 14:35:58', '2018-04-07 14:37:16'),
(2, '6 graphics for Powerpoint', '<p>6 Powerpoint Slides<br />\r\nShown on screen at a non profit Banquet<br />\r\nPowerpoint to recognize public figures who serve the community<br />\r\n<br />\r\nCreate Aesthetic based on Banquet Theme&nbsp;<br />\r\nCrop photo of Public Figure<br />\r\nAdd content with fitting typography</p>', '120.00', 1, 'part-time', 'Less than 1 week', 4, '2018-04-07 18:19:06', '2018-04-07 18:19:06'),
(3, 'Logo Design for a Beagle Niche TShirt Website!', '<p>so attached is the name and logo of the lab, the implant tooth between the uk and dental is the company logo.<br />\r\n<br />\r\nIm using blue white and red because its the British colours of course. I had a few designs on canva but i didn&#39;t like them i wanted to incorporate a British union jack in there to emphasis that its a British lab in Pakistan.<br />\r\n<br />\r\n<br />\r\nThe front side should have the logo name of the lab&nbsp;<br />\r\n<br />\r\n<br />\r\non the other side there will be a price list which i haven&#39;t yet finished as i&#39;m working it out slowly and waiting for my samples to be made so i can take pics of them to add to the price list.<br />\r\n<br />\r\n<br />\r\nwould be great if you could help me with the front cover!</p>', '60.00', 1, 'part-time', 'Less than 1 week', 5, '2018-04-07 18:20:01', '2018-04-07 18:20:01'),
(4, 'Logo Redesign for Dementia Company', '<p>Redesigning existing Logo for company that focuses on providing information and support for caregivers of loved ones with Alzheimer&#39;s or Dementia.&nbsp;<br />\r\n<br />\r\nHere is the website with the existing Logo: (link removed)/<br />\r\n<br />\r\nLooking for a new more modern and simplified look (clean lines) while also being a little playful.</p>', '50.00', 1, 'part-time', 'Less than 1 week', 6, '2018-04-07 18:23:17', '2018-04-07 18:23:17'),
(5, 'Unique Tee Shirt Designs for Etsy', '<p>Searching for reliable designer who could work with our small company.<br />\r\n<br />\r\nWe need designs for adults &amp; kids. 300 Designs in total in the next months.<br />\r\n<br />\r\nBegin your application with the word &quot; SHIRTS &quot;<br />\r\n<br />\r\nAlso state your cost per shirt in the application.</p>', '1000.00', 1, 'full-time', 'More than 6 months', 7, '2018-04-07 18:24:16', '2018-04-07 18:24:16'),
(6, 'Facebook cover', '<p>I would like to design a cover, a profile picture and a logo for my Facebook page. ( Design in Arabic )<br />\r\n<br />\r\nThis job was posted from a mobile device, so please pardon any typos or any missing details.</p>', '6.00', 1, 'part-time', 'Less than 1 week', 8, '2018-04-07 18:24:52', '2018-04-07 18:24:52'),
(7, 'Flyer Design (5X7)', '<p>I need someone to redesign my flyer that promotes my app for businesses. I do not have the time or patience to finish this. I am attaching a flyer a couple flyers that I like but need the text changed. I need it to be a 5X7in design size.</p>', '10.00', 1, 'part-time', 'Less than 1 week', 2, '2018-04-07 18:26:17', '2018-04-07 18:26:17'),
(8, 'Graphic art - Design of wine label', '<p>I am looking for a graphic art designer who is able to create (guided by the inspiration of my base idea) an artistic, unique and striking design for a wine label which is intended for the use of a potential new wine collection launch.&nbsp;<br />\r\n<br />\r\nThe candidate must be good at free hand drawing and must be able to create a fusion between slightly modern and antique styles.&nbsp;<br />\r\nPrevious experience as cartoonist would be an advantage or experience with drawing pirates and ancient maps/sea charts.&nbsp;<br />\r\n<br />\r\nIf this sounds like something for you, please do get in touch.&nbsp;</p>', '75.00', 1, 'part-time', 'Less than 1 week', 4, '2018-04-07 18:27:36', '2018-04-07 18:27:36'),
(9, 'Shopify Ecommerce Store', '<p>Looking for an experienced web programmer/designer for our Shopify store. We need to make some changes on our production page. We need someone to design our web site.<br />\r\n<br />\r\nThis job was posted from a mobile device, so please pardon any typos or any missing details.</p>', '1000.00', 2, 'full-time', '3 - 6 months', 5, '2018-04-07 18:31:39', '2018-04-07 18:31:39'),
(10, 'Corporate Web Site Design', '<p>We are looking for a graphics designer to help us define and create our corporate website for us.<br />\r\n<br />\r\nThe site must have links to social media platforms. It will also hosts some videos.<br />\r\n<br />\r\nThe site must be mobile friendly and support multi-language.<br />\r\n<br />\r\nThis website will also host one of our e-commerce service which is being developed separately.</p>', '250.00', 2, 'part-time', 'Less than 1 month', 6, '2018-04-07 18:32:18', '2018-04-07 18:32:18'),
(11, 'User Interface for Personal Finance Web App', '<p>Hello,<br />\r\n<br />\r\nI&#39;m looking for a talented user interfacer/user experience designer to develop a design for around 5 pages of a web app that I am trying to build.<br />\r\n<br />\r\nThe ideal designer will have good communication skills, has worked on many similar projects in the past, and has high attention to detail and quality.&nbsp;<br />\r\n<br />\r\nThe output of this job will be a 5-page PSD (or similar) high fidelity design that can be developed by a programmer to be user-friendly and responsive.&nbsp;<br />\r\n<br />\r\nPlease provide an estimate of the total time and cost to complete this job. Also, please provide some sample designs that you have developed that are now in use on live websites.<br />\r\n<br />\r\nI will provide specifications after I have selected a person for the job.<br />\r\n<br />\r\nFYI, my website is running on the Wordpress platform.</p>', '100.00', 2, 'full-time', 'Less than 1 month', 7, '2018-04-07 18:33:29', '2018-04-07 18:33:29'),
(12, 'Web Design Project', '<p>We&#39;re about to launch our company&#39;s MVP site, and need some professional design help. What you see at the link right now is just the depiction of the functionality on a sandbox. We feel good about the logo and need a style guide to go along. The attached sitemap is pretty much all of the web pages, and everything colored in purple needs a proper design.&nbsp;<br />\r\n<br />\r\nNow given it&#39;s a bootstrapped startup on a budget, if we can&#39;t afford to get all 20 pages custom designed, at a minimum we need help with the homepage and a style guile to apply throughout the site. If you have the availability, would you be interested in discussing further?</p>', '700.00', 2, 'full-time', '1 - 3 months', 8, '2018-04-07 18:34:22', '2018-04-07 18:34:22'),
(13, 'Website development required for new site', '<p>We are looking to get back some template frameworks to utilize for our website.&nbsp;&nbsp;The website is for a computer company that offers cloud based solutions and as a service product and models for its North American clientele base.<br />\r\n<br />\r\nWe offer technical consulting across all technical areas of business with a focus on the North American energy sector. Working closely with over 170 partners and providing customers with state of the art mobile solutions, technical security models, automation, network architecture, complete cloud based infrastructure solutions, data centre design and hosting, UCaas (Unified Communications as a Service), as well as complete turn key IT enterprise solutions.<br />\r\n<br />\r\nSite needs to load without issue and be device agnostic. We also have a backend portal that our sales partners will access through the website. It just requires a link to the backend portal.&nbsp;&nbsp;We also would like to have a form that people can click on for new sales requests for our customers as well as partner link that potential partners can fill out and it would be sent to us via email.<br />\r\n<br />\r\nWe currently have a GoDaddy web package for the hosting of this website. We are looking to have this created asap and will more than likely work with the selected development group for a long period of time on multiple projects.&nbsp;&nbsp;We can utilize Wordpress or something else depending on your recommendation.&nbsp;&nbsp;We will provide the wording but will look for assistance with graphics, pictures, overall layout in a wireframe so we can pick the best one and go from there.&nbsp;&nbsp;<br />\r\n<br />\r\nPlease let us know what you bid for this project and when you can start.&nbsp;&nbsp;We will be selecting a developer very shortly.</p>', '1000.00', 2, 'full-time', 'More than 6 months', 2, '2018-04-07 18:35:39', '2018-04-07 18:35:39'),
(14, 'Developer needed to design a travel (hotel) booking website', '<p>Looking for an experienced website developer to design a travel booking (hotels) website. Please take the following into account when making your offers:<br />\r\n<br />\r\n1. Previous experience, similar sites developed (please provide examples). If not similar sites developed, provide an example of what your proposed solution will look like.<br />\r\n2. Integration with hotelscombined.com (or other - please specify).<br />\r\n3. The website should run on WordPress.<br />\r\n4. Graphic design, such as logo, pictures, should be included in your offer (if extra price, please specify).<br />\r\n5. Should be visually attractive and easy to use.</p>', '200.00', 2, 'part-time', 'Less than 1 month', 4, '2018-04-07 18:36:10', '2018-04-07 18:36:10'),
(15, 'Seeking UX/UI Genuis to Improve Custom Element for our E-commerce Site', '<p>Hello! We&#39;re looking for a UX/UI genius to update a main element of our website. We&#39;ve created an ordering system for balloon letters and numbers, but it needs to be better designed for mobile.<br />\r\n<br />\r\nYou can see it on our website: instaballoons.com&nbsp;&nbsp;It&#39;s the main first element where it says &quot;CLICK HERE TO START&quot; spelled out in balloons<br />\r\n<br />\r\nIt allows our customers to order our products and see what it would look like before ordering, they can also click on the fun balloons to add them, then the background of the builder gives a perspective on how big each balloon is compared to the 6-foot tall guy.&nbsp;<br />\r\n<br />\r\nI am looking for someone to update this so it&#39;s a seamless experience for our customers on mobile. On a computer, it&#39;s somewhat well designed, but mobile not so much.<br />\r\n<br />\r\nThis is 100% CSS based and we would work together to integrate it into our custom programming.&nbsp;&nbsp;Our website is built on the Shopify Platform, using Blackdeers Theme.&nbsp;&nbsp;It would be helpful if you are handy with Javascript.<br />\r\n<br />\r\nYou would work off of our existing branding, or we&#39;re open to your creative ideas. Most importantly, the design should be modern, but fun and be somewhat intuitive for the user.&nbsp;</p>', '200.00', 2, 'part-time', 'Less than 1 month', 5, '2018-04-07 18:36:53', '2018-04-07 18:36:53'),
(16, 'Help finishing a website', '<p>I have a website being built in Cargo Collective which is 90% finished but unfortunately the coder who was working on it had to suddenly stop due to personal circumstances. Designed by myself and a very experienced graphic designer (most aspects are mocked up clearly). Once talked through in person (on Upwork video messenger) you will see that there is only about an hours work - so not a big pay cheque but on the plus side a quick and simple job for someone with the right experience. We did not want to punish the original coder by paying him 10% less so we do not have much budget for this - roughly $60. This is a high-end fashion project and the brand and visual language of this project is very important, so I guess that only a designer based in a western country will understand al the nuance of the brief fully, but perhaps not - happy to talk.</p>', '60.00', 2, 'part-time', 'Less than 1 week', 6, '2018-04-07 18:37:26', '2018-04-07 18:37:26'),
(17, 'Google Shopping Campaign', '<p>I am seeking a Google Marketing expert to optimize our shopping campaign on Google and extend similar campaign to 5 others countries. You need to understand how to target searches on various language versions of Google, Google UAE English and Google UAE Arabic.</p>', '300.00', 3, 'part-time', 'Less than 1 month', 7, '2018-04-07 19:05:16', '2018-04-07 19:05:16'),
(18, 'Need help in sourcing', '<p>i need help in sourcing the parts of our 2 door sports car concept for GGC market,i need the quotation for the following parts<br />\r\n1. Allumunium mould for doors, bonnet, front and rear fendor and the main monocque<br />\r\n2.the same in carbon fiber material per piece price for 100 quantity<br />\r\n3.front and rear bumper injection mould..<br />\r\nneed the quotation of the parts mentioned from atleast 3 companies</p>', '500.00', 3, 'part-time', '3 - 6 months', 8, '2018-04-07 19:06:10', '2018-04-07 19:06:10'),
(19, 'Market research for Gadolinium based Contrast media', '<p>We are planning to develop Dossier for one particular Gadolinium based contrast media. We need Market research for Sales, Opportunities, market size.&nbsp;<br />\r\n<br />\r\nFor detailed info please contact us.</p>', '300.00', 3, 'part-time', 'Less than 1 month', 2, '2018-04-07 19:06:46', '2018-04-07 19:06:46'),
(20, 'Male American Voice Over Needed (Internet Marketing Product)', '<p>Hi,<br />\r\n<br />\r\nI need a male american voice over for 2 scripts word count:<br />\r\n<br />\r\nScript 1: Word Count 7043 words<br />\r\nScript 2: Word Count 5173 words<br />\r\n<br />\r\nThis is for an Internet Marketing product so we are looking for someone who has a very convincing and sales voice and has done previous work in this field before.<br />\r\n<br />\r\nMust be able to provide previous work and have good feedback.</p>', '40.00', 3, 'part-time', 'Less than 1 month', 4, '2018-04-07 19:07:20', '2018-04-07 19:07:20'),
(21, 'Analysis of my Paid Media, Search & Email Marketing', '<p>Good afternoon, I&#39;ve just started my 3rd business and I need someone to help with online marketing while I focus on sales/HR. I need an expert in Paid Search &amp; Media<br />\r\n<br />\r\nWhat will happen? I will send you screenshots of my marketing campaigns and I will need a report from you on what to improve within 48/72 hours.&nbsp;<br />\r\n<br />\r\nIf you like working with me, I&#39;m also offering a full time role with my company based on the performance</p>', '60.00', 3, 'part-time', 'Less than 1 week', 5, '2018-04-07 19:08:16', '2018-04-07 19:08:16'),
(22, 'Help with Social media marketing for my SaaS product', '<p>Hi<br />\r\n<br />\r\nI provide an online classroom product service for Students, Teachers , Educational Training institutes etc<br />\r\n<br />\r\nI would like to promote my service and increase my subscription base across globally<br />\r\n<br />\r\nI&#39;m looking for an experienced social marketing individual who can help in the following<br />\r\n<br />\r\n- Provide marketing plan and ideas on how to promote my services<br />\r\n- Suggest any improvements in my website to improve my online presence<br />\r\n- Facebook Marketing, Google Analytics , SEO, etc..<br />\r\n- Content Marketing , Social Media posts, Ads etc..<br />\r\n<br />\r\nHe / She should have experience in running campaigns and have past record in achieving the targeted results.</p>', '150.00', 3, 'part-time', '1 - 3 months', 6, '2018-04-07 19:09:22', '2018-04-07 19:09:22'),
(23, 'Looking for Facebook marketing for an app', '<p>Hi,<br />\r\n<br />\r\nI want to promote my game on Fabebook through Advertising.<br />\r\n<br />\r\nIf anyone can do this job let me know so we can talk in details.<br />\r\n<br />\r\nWe need result by this advertisement</p>', '200.00', 3, 'part-time', '1 - 3 months', 7, '2018-04-07 19:10:01', '2018-04-07 19:10:01'),
(24, 'Need a writer for regular content creation (baby/kids products)', '<p>This is a ongoing project. I need a high-quality freelance writer for a number of content creation tasks for an ecommerce website.<br />\r\n<br />\r\nGenerally these are the types of content I will request:<br />\r\n<br />\r\n1. Social media updates<br />\r\n2. Blog posts (incl. Wordpress submission)<br />\r\n3. Email copies<br />\r\n4. Video transcript (future tasks)<br />\r\n<br />\r\nI will give you clear guideline and examples.<br />\r\n<br />\r\nPlease only bid if you can meet below requirement:<br />\r\n<br />\r\n1. Willing to spend time learning new concept (I will give you blog posts and videos to learn)<br />\r\n2. Submit the output within 24-48 upon request (Most types require 24-hour turnaround time)<br />\r\n3. Be able to work and always ready on Mon to Fri (Stability is critical. If your location has power issue or you always have personal and family issues, please do not bid)<br />\r\n4. Highly responsive (Usually we will communicate via upwork message and I expect to fix any question ASAP, during Mon to Fri)<br />\r\n5. Agree to be paid per 100 words. For example, if your rate is USD3, I will pay USD3 for every 100 words. And if the task is 50 words, I will pay USD1.5.<br />\r\n6. Agree to work on samples after bidding (Please understand I need to check whether you are capable of the project. I will pay USD2/100 words for the samples)<br />\r\n<br />\r\nPlease only bid if you agree to all of the above. If interested, please bid and I will further discuss with you.<br />\r\n&nbsp;</p>', '50.00', 4, 'part-time', 'Less than 1 month', 8, '2018-04-07 19:11:52', '2018-04-07 19:11:52'),
(25, 'Write me a bio', '<p>Write me a BIo Am Giving service to a website there i need to make my profile 100% thats why i need to make a bio for my profile ..&nbsp;<br />\r\nThe bio need to be 100% professional and unique .<br />\r\nDont bid over budget bid please .<br />\r\nTHanks .</p>', '5.00', 4, 'part-time', 'Less than 1 week', 2, '2018-04-07 19:12:49', '2018-04-07 19:12:49'),
(26, 'Ebook writer for amazon kindle publishing', '<p>Hi, i need an ebook writer for my business on amazon kindle publishing.<br />\r\nThe book should have an average of 10.000/12.500.<br />\r\nI am looking for a fixed price job and after the first book i need Others.<br />\r\n<br />\r\nLet me know if you can accept this job.<br />\r\nHave a nice day, Francesco.</p>', '100.00', 4, 'part-time', 'Less than 1 month', 4, '2018-04-07 19:13:21', '2018-04-07 19:13:21'),
(27, '10 + Blog and Article Writers Needed', '<p><strong>Needs to hire 10 Freelancers</strong></p>\r\n\r\n<p>Please do not apply if you are not a NATIVE English speaker and cannot commit to writing at least four, 500-1000-word articles per week.<br />\r\nWe are undergoing a very rapid expansion and need to hire at least another 10-20 writers or more immediately.<br />\r\nWe work for several SEO marketing companies providing blogs, landing pages, website copy, and press releases.<br />\r\nPrimary subjects include healthcare and medical, logistics, apparel, jewelry, weddings, construction, and much more.<br />\r\nPlease read our Upwork reviews, which are excellent, to assuage any concerns about how we operate.&nbsp;<br />\r\n<br />\r\nWhat Types of Writers Do We Want<br />\r\n<br />\r\nWe actively seek writers with varied backgrounds, degrees, and interests. Many of our current writers are matriculating undergraduate or graduate students studying English, Engineering, Biology, Law, History, Math, Business, Pre-Med, and more. We have many who already have advanced degrees. Some write part or full time.&nbsp;<br />\r\nIf you are new to Upwork, but are a NATIVE English-speaking writer, you are welcome to apply.<br />\r\n<br />\r\nPayments<br />\r\n<br />\r\nWriter hired here on Upwork are paid using the Upwork system. However, we do NOT use Upwork&rsquo;s platform. We work by email.&nbsp;<br />\r\nWe pay our writers by the piece. Pricing ranges from about $8-$10 for 500-750-word minimum word count to $30-$35 for 2000-words.<br />\r\nPayments are approximately monthly, sometimes within two-three weeks or sooner after submission, depending on the payment terms with our clients.<br />\r\n<br />\r\nHow We Operate<br />\r\n<br />\r\nWe do not direct assign work. We send out emails with the articles available, and you ask for the ones you want. If it is a specialty article, for example, we likely will send the list first to authors that have that specialty (for example, engineers, health care professionals, or whatever you mention is your preference).<br />\r\nDue dates are CRITICAL. The due dates MUST be met. While we understand that personal emergencies happen, your grandmother can only die once.<br />\r\nIf you are late, we assess a 20% penalty and possible removal from distribution.&nbsp;<br />\r\nYou are not required to take an article. If, however, you do not write 4 articles per week, we delete your name from distribution.<br />\r\nRequirements<br />\r\nYou MUST be a native English speaker. I cannot emphasize that enough. Our business niche requires excellent quality, well-proofed, articles that have been researched properly and have native quality syntax.&nbsp;<br />\r\nYou MUST proofread your work, run spell checks, and revise as appropriate BEFORE you send us your draft.<br />\r\nYou MUST meet the minimum word count. Although you may think shorter is better, and it may be, our clients require a minimum word count or we (and you) don&rsquo;t get paid.<br />\r\nWe expect informative pieces without filler words/phrases or paragraphs.<br />\r\nYour writing style must be clear and concise. Flowery language, long descriptive narratives are NOT what is required. These are non-fiction pieces posted on client&rsquo;s sites and elsewhere to help them improve sales.<br />\r\nYOU MUST BE ABLE TO FOLLOW INSTRUCTIONS. None of our instructions are complicated. Most of our articles require three images (you do not pay for the images), and hyperlinks (we will provide you with instructions on how to add hyperlinks).<br />\r\nWe will provide you with a template, so you don&rsquo;t have to worry about font, font size, or spacing. We will also provide you with writing guidelines.<br />\r\n<br />\r\nOpportunities<br />\r\n<br />\r\nWe offer the opportunity for good writers to work exclusively for one client. In other words, you would have a certain number of blogs or landing pages due to us on a certain date each month. For example, you might be assigned a construction company client, requiring 6 blogs and 10 landing pages per month. You would write them at your leisure as long as we receive them by the due date.<br />\r\nWe also have internal writer and editor opportunities for select authors. These authors are put on contract, paid bi-weekly, and write and/or edit assigned pieces.<br />\r\n<br />\r\nPlease answer the questions below based on the job posting to ensure you have read it.<br />\r\n<br />\r\nThank you for reviewing our ad. We look forward to reading responses from qualified applicants.</p>\r\n\r\n<ol>\r\n</ol>', '5000.00', 4, 'full-time', 'More than 6 months', 5, '2018-04-07 19:14:08', '2018-04-07 19:14:08'),
(28, 'Require freelance writer for a news/media website', '<p>I don&#39;t really need lengthy articles. Just short news releases. I will send the writer content. Looking for long-term collab $10/ 3 articles. Usually about 150 words<br />\r\n<br />\r\nContract will be constantly increased​ depending on the performance of the freelancer.&nbsp;<br />\r\n<br />\r\nWill help if person is an arts and culture enthusiast.</p>', '20.00', 4, 'part-time', 'Less than 1 week', 6, '2018-04-07 19:14:47', '2018-04-07 19:14:47'),
(29, 'Article Spinner / Writer for 10 articles', '<p><strong>Needs to hire 3 Freelancers</strong></p>\r\n\r\n<p>I need a freelance writer to write Articles (Topic will be given)<br />\r\n<br />\r\nArticle Requirements<br />\r\n- Minimum 300 - 650 words depending on topics<br />\r\n- This is a long-term job. If you can&#39;t commit, please do not apply<br />\r\n- Content must be engaging and informative. No fluff or filler<br />\r\n- Strong understanding of SEO will be an advantage<br />\r\n- 100% original content (no copy-paste/plagiarised, re-spun content)<br />\r\n- Articles need to be check on copyscape<br />\r\n- Not indexed in the search engines and on Copyscape<br />\r\n- Written in proper US English and Grammar<br />\r\n<br />\r\nYou AGREE not to re-use, re-spin, re-sell or re-distribute the articles.</p>', '40.00', 4, 'part-time', 'Less than 1 month', 7, '2018-04-07 19:15:25', '2018-04-07 19:15:25'),
(30, 'Research blog - Eye Health and Supplements 350-400 words.', '<p>I need someone to help me write down two eye health blogs a week focusing on the following keywords:<br />\r\n<br />\r\ncorneal hypoxia&nbsp;<br />\r\nhyaluronic acid eye drops for floaters<br />\r\ncorneal hypoxia symptoms<br />\r\nhow long do eye floaters last&nbsp;<br />\r\nhyaluronic acid for eye floaters<br />\r\n<br />\r\nBasically, one keyphrase per blog. You may use the same keyphrase twice per week, but it would have to be different next week until you complete the rotation. Start your cover letter with the word &quot;pharmacy&quot; so I know you read the job post.<br />\r\n<br />\r\nI&#39;ll show you some sample blogs I wrote when I interview you.&nbsp;<br />\r\n<br />\r\nKeep in mind, I&#39;ll need you to work with me for at least three months so please allot the necessary time. If we work well together, I may delegate more work such as supplement reviews.&nbsp;<br />\r\n<br />\r\nPS: Bid according to 400 words exclusive of citations.</p>', '20.00', 4, 'part-time', 'Less than 1 week', 8, '2018-04-07 19:17:01', '2018-04-07 19:17:01'),
(31, 'Creative Writer+SEO Expert for Blog Writing', '<p>Hello,<br />\r\n<br />\r\nI need creative, fun style of writing about Influencer Marketing.<br />\r\nFun, humorous and engaging styles only.<br />\r\n<br />\r\nI need 2-3 to start with and followed with 2 short articles every week. This is an ongoing project.</p>', '150.00', 4, 'part-time', 'Less than 1 month', 2, '2018-04-07 19:17:55', '2018-04-07 19:17:55'),
(32, 'Make an amazing Youtube 20 second outro & logo flyer / brand intro fly in', '<p>I need an amazing Youtube 20 second outro. I have a Youtube channel around travel&nbsp;&nbsp;planes so it will need to have some animation around planes with it.<br />\r\n<br />\r\nI want a 20 second backdrop that has a template built around the videos like as shown in the Nick Nimman video.&nbsp;&nbsp;I attached another example of a nice end screen template.<br />\r\n<br />\r\nI want the end screen near the bottom right to say:&nbsp;<br />\r\n<br />\r\nSubscribe to become an expert Travel Hacker&nbsp;</p>', '50.00', 5, 'part-time', 'Less than 1 week', 4, '2018-04-07 20:23:16', '2018-04-07 20:23:16'),
(33, 'Product review and unboxing video', '<p>Hello,&nbsp;<br />\r\nI am looking for a US based english native speaker to produce (shooting and editing) a simple product review (unboxing and installing).&nbsp;<br />\r\nThe product is a sort of a small compact camping tent. Camping / hiking experience is a must! You must be able to install the tent perfectly. length of the video should be around 2 minutes.&nbsp;&nbsp;The video should not look too professional, it&#39;s not a commercial. No special effect or editing skills needed. Just a basic video that looks good and seems like it&#39;s made by an amateur. you can even use your smartphone camera (if it&#39;s high quality). Further instructions will be given soon. The payment does not include the product, which will be given for free.</p>', '50.00', 5, 'part-time', 'Less than 1 week', 5, '2018-04-07 20:23:50', '2018-04-07 20:23:50'),
(34, 'Editing of a 3 minute holiday vlog in Italy', '<p>I would like to have an edited video of my holidays in Italy (approximately 3 minutes ).</p>\r\n\r\n<p>Please contact me if this is something you could be interested in in order to discuss budget and the details.</p>', '40.00', 5, 'part-time', 'Less than 1 week', 6, '2018-04-07 20:27:29', '2018-04-07 20:27:29'),
(35, 'Urgent: Typography Music Lyrics Video', '<p>I need the below done immediately and finalised in 24 hours, please only apply if you can comply.&nbsp;<br />\r\n<br />\r\nI would like a typography lyrics video created from an mp3 and a file containing the lyrics.<br />\r\n<br />\r\nThe video should be created in After Effects or Premiere Pro to enable myself to make any necessary changes. It must also be rendered in HD and I would like the source files for the project once completed.</p>', '30.00', 5, 'part-time', 'Less than 1 week', 7, '2018-04-07 20:34:38', '2018-04-07 20:34:38'),
(36, 'VIDEOSCRIBE 30 SECONDS VIDEO IN ONE DAY', '<p>Task: Produce a 30 second instructional animation video using Video Scribe in 1 day.<br />\r\nDeadline: 8th April 2018 (tomorrow)</p>\r\n\r\n<p>Note: Images, Text &amp; Script will be provided<br />\r\nFinal export: MOV, FULL HD 1080, frame rate: 25</p>', '50.00', 5, 'part-time', 'Less than 1 week', 8, '2018-04-07 20:35:22', '2018-04-07 20:35:22'),
(37, 'Produce short 30-90 seconds Smartphone Review Videos', '<p>i want short videos for tips &amp; tricks about smartphones (Android/IOS) or also smartphone reviews, or short videos introducing features of latest smartphones</p>\r\n\r\n<p>the video shots with the presenter and voice recording i would do myself, as i need it in local langauge</p>', '50.00', 5, 'part-time', 'Less than 1 week', 2, '2018-04-07 20:36:05', '2018-04-07 20:36:05'),
(38, 'Template Slideshow Video Creator (ongoing)', '<p>Looking for someone that can work with us long term to create slideshow videos using templates, for our clients.<br />\r\n<br />\r\nIt will be a combination of 1) clients providing all text, images, video and 2) us providing text, images, videos based on client&#39;s needs. You will be required to find stock photos, etc to get the client&#39;s message across.<br />\r\n<br />\r\nThese will be templates we purchase from videohive, so you just need to have basic AE skills but you need to have a big focus on client satisfaction, and not complain when they need 1 small revision even though they already used their max revisions for example. Client happiness comes first.<br />\r\n<br />\r\nPlease provide price for creating template slideshow video where:<br />\r\n<br />\r\n1. Client provides all materials<br />\r\n2.&nbsp;&nbsp;Client provides half of the materials, you find the rest<br />\r\n3. You find all materials based on client&#39;s needs<br />\r\n<br />\r\nAssume a 30 second template video with only photos and music.<br />\r\n<br />\r\nWe are in early stages but can eventually provide full time work for the right person with the right price.</p>', '10.00', 5, 'part-time', 'Less than 1 week', 4, '2018-04-07 20:36:50', '2018-04-07 20:36:50'),
(39, 'Group parts in 3D model and prepare for animation', '<p>We have three 3D models. Each of them is a variation of a grinding head (part of an industrial machine). Our animator needs to do an explode-view animation with it and the deadline is very soon, so we&#39;re seeking some help to prepare the model for him to animate, while he is working on the other animations. As a reference how the grouping should be done we have a video of the animation and you can also ask our animator when you have any questions.<br />\r\nWe will need somebody to do the grouping to start as soon as possible and finish within 2 days.<br />\r\nThe budget limit for each model is $40. We will choose the candidate with the best offer, best availability and reliableness.<br />\r\n<br />\r\nThe 3D models I will send to you are sensitive data and you need to sign an NDA before starting to work.</p>', '120.00', 5, 'part-time', 'Less than 1 month', 5, '2018-04-07 20:37:19', '2018-04-07 20:37:19'),
(40, 'A Simple Gantt Chart is to be made in MS Project', '<p>I need someone to help me in making a Gantt chart in MS Project. All required details will be provided in a form of an excel file.</p>', '5.00', 6, 'part-time', 'Less than 1 week', 6, '2018-04-07 21:05:02', '2018-04-07 21:05:02'),
(41, 'Data Analyst Excel Expert', '<h2>Data Analyst Excel Expert</h2>', '100.00', 6, 'part-time', 'Less than 1 month', 7, '2018-04-07 21:05:39', '2018-04-07 21:05:39'),
(42, 'Create list of Australian media contacts with names and emails', '<p><br />\r\nI am looking for someone to build out an extensive list of Australian media contacts from business magazines.&nbsp;<br />\r\n<br />\r\nThis should include:&nbsp;<br />\r\n- Researching publications<br />\r\n- Multiple points of contact (e.g. journalists &amp; editors name with direct email address NOT simply the generic pitching email)<br />\r\n<br />\r\nSome of the publications we want to target include: Financial Review, CEO Magazine, Qantas Magazine, Virgin Magazine, Forbes, Smart Company + other niche publications in the leadership/management/human resources space.&nbsp;</p>', '100.00', 6, 'part-time', 'Less than 1 month', 8, '2018-04-07 21:06:14', '2018-04-07 21:06:14'),
(43, 'Data entry in Excel and Uploading in Wordpress', '<p>As discussed on skype</p>', '40.00', 6, 'part-time', 'Less than 1 month', 2, '2018-04-07 21:07:11', '2018-04-07 21:07:11'),
(44, '100 Freshers Required for basic Data Entry Job {Easy Job} LongTerm', '<p>Freshers, Required for a very easy Data Entry Job.&nbsp;<br />\r\nBasic Computer and Internet skills required.<br />\r\nGreat Chance to get 5 star rating on your profile, especially for new comers.&nbsp;<br />\r\n<br />\r\nWe require more than 100 freshers. Please message to that we can discuss the project in detail.</p>', '200.00', 6, 'full-time', 'More than 6 months', 4, '2018-04-07 21:07:52', '2018-04-07 21:07:52'),
(45, 'Patient Data Entry Helper With Light Photoshop Knowledge', '<p>I need a detail-oriented, careful &amp; patient virtual assistant to help with data entry &amp; various tasks related to an online store.&nbsp;&nbsp;Help needed include the following:&nbsp;&nbsp;create product lisitngs, post contents on Facebook, light customer support via email, etc.. Quick learner, flexible, someone who pays great attention to details, is organized, have great written English communiation skills and have a friendly personality.&nbsp;&nbsp;<br />\r\n<br />\r\nBasic Photoshop skill needed. Show us work you have done with Photoshop to let us know your level of knowledge.<br />\r\n<br />\r\nMust have high speed internet and be able to help 25 to 30 Hrs per week on weekdays.<br />\r\n<br />\r\nInitial Test Project to see if you are a good fit = $30<br />\r\n<br />\r\nProject details will be given to applicants that we think will be a good fit.&nbsp;&nbsp;After you know exactly what you&#39;ll be expected to help, then you decide whether or not to take the project.​</p>', '30.00', 6, 'full-time', 'More than 6 months', 5, '2018-04-07 21:08:35', '2018-04-07 21:08:35'),
(46, 'Data entry: manual excel data entry', '<p>i am looking to hire someone with an excellent feedback rating to do this manual data entry.<br />\r\n<br />\r\nyou should be able to read web documents and enter share ownership data for each of the 1250 individuals into multiple cells in an excel sheet.<br />\r\n<br />\r\nthis is not a quickie job. it requires attention to detail and the patience to read and enter the data.<br />\r\n<br />\r\nif you do not have excellent credentials, i will not consider your proposal, so don&#39;t waste it.<br />\r\n<br />\r\ni will provide more details to qualified people. thanks.</p>', '75.00', 6, 'part-time', 'Less than 1 week', 6, '2018-04-07 21:09:31', '2018-04-07 21:09:31'),
(47, 'I2C Pull-up Resistor Values', '<p>Hi, I&#39;m looking for someone with knowledge on I2C bus to calculate the pull-up resistors required, I understand this is really important and something I need done correctly.<br />\r\n<br />\r\nI have a system that has many devices on the I2C bus, there&#39;s 3 IC&#39;s on the PCB that connect to it and never change but there&#39;s also other devices that may or may not be connected. There could be a max of say 16 devices connected.<br />\r\n<br />\r\nI&#39;m unsure if just the main input should have pull-ups or if the other devices should also have them.<br />\r\n<br />\r\nIf you accept the job you have to show me how you come up with the values chosen so I know you know what your doing, no guessing and picking a value! I can give you part numbers for the devices if you need that.</p>', '50.00', 7, 'part-time', 'Less than 1 week', 7, '2018-04-07 21:11:55', '2018-04-07 21:11:55'),
(48, '3D Flyby of Buildings', '<p>Need to make a flyby of building complex. Already have design and some 3DMax models of my current renders</p>', '10.00', 7, 'part-time', 'Less than 1 month', 8, '2018-04-07 21:12:27', '2018-04-07 21:12:27'),
(49, 'Manufacture two PCBs from design: alarm and remote', '<p>You are to build an alarm and remote control board prototype from designs provided to you, for the purposes of allowing our programmer to code the onboard controllers.<br />\r\n<br />\r\nYou will work with our engineer to ensure the product is manufactured properly. I will send to you a functioning device of similar design if needed to ensure accuracy.&nbsp;<br />\r\n<br />\r\nDeliverables are the two manufactured boards with all components that work as needed. You are to ship them to our microcontroller programmer (we will pay for shipping).</p>', '275.00', 7, 'part-time', '1 - 3 months', 2, '2018-04-07 21:13:37', '2018-04-07 21:13:37'),
(50, 'Room design for kitchen family room.', '<p>Use existing floor plan drawing , design open concept kitchen and family room<br />\r\n<br />\r\nThis job was posted from a mobile device, so please pardon any typos or any missing details.</p>', '50.00', 7, 'part-time', 'Less than 1 week', 4, '2018-04-07 21:14:11', '2018-04-07 21:14:11'),
(51, 'Park/Building 3D Rendering needed in 3dsmax / vray', '<p>I need a 3d rendering of a building park/plaza.&nbsp;&nbsp;My client will have a design Monday, so need to focus on modeling the existing:<br />\r\n<br />\r\nlocation:&nbsp;<a href=\"https://www.upwork.com/leaving-odesk?ref=https%3A%2F%2Fgoo.gl%2Fmaps%2F8ejiDGBcjiM2\" target=\"_blank\">https://goo.gl/maps/8ejiDGBcjiM2</a><br />\r\nTwo identical buildings:&nbsp;<a href=\"https://www.upwork.com/leaving-odesk?ref=https%3A%2F%2Fgoo.gl%2Fmaps%2FYSXUoN72zT92\" target=\"_blank\">https://goo.gl/maps/YSXUoN72zT92</a><br />\r\nplan for development attached.<br />\r\nFrom the client: &quot;exterior rendering out the front of the building that captures the lake and building in the background. We will create an outdoor space with features like klyde warren park.&quot;<br />\r\n<br />\r\nOnly apply if you&#39;re available to start now and finish early this week.</p>', '40.00', 7, 'part-time', '1 - 3 months', 2, '2018-04-07 21:14:49', '2018-04-07 21:14:49'),
(52, 'Create a 2D & 3D rendering of a neighborhood. On-going projects', '<p>I&#39;ve included two images that we want accurately re-drawn so we have a clean design. This is very basic drawing, but we need to accurately show the layout of the buildings, surrounding nature, parks, addresses, and roads.&nbsp;<br />\r\n<br />\r\nThis is something we will continue to do on an ongoing basis. The coordinates for Google maps if it helps is 1022 Sagamore Dr<br />\r\nSchaumburg, IL 60194<br />\r\n42.031819, -88.106128</p>', '20.00', 7, 'part-time', 'Less than 1 week', 5, '2018-04-07 21:15:17', '2018-04-07 21:15:17'),
(53, 'Realistic Comercial 3D visualizer', '<p>I&#39;m looking for a professional realistic high quality and high resolution render for a commercial building.</p>', '100.00', 7, 'part-time', 'Less than 1 month', 6, '2018-04-07 21:15:51', '2018-04-07 21:15:51'),
(54, 'Preparing annual return with financial statements', '<p>I need someone to prepare and file the annual return for an ltd in Ireland. The company was incorporated in September 16, 2016. I understand that I need to file the annual return by the end of next week, so it is a bit urgent.&nbsp;<br />\r\n<br />\r\nThe good news is that accounts are very easy, on the bank statements there are only 20 movements, and only 10 invoices were paid.<br />\r\n<br />\r\nI do not have any tax number issued for the company, not sure if I need to request it before filing the annual return.<br />\r\n<br />\r\nThis job may lead to future financial planning and advise.</p>', '450.00', 8, 'part-time', '1 - 3 months', 7, '2018-04-07 21:18:21', '2018-04-07 21:18:21'),
(55, 'Oracle Payroll Reports', '<p>I need 3 Oracle Payroll Reports Done;<br />\r\n<br />\r\na. Payslip<br />\r\nb. Deductions with Balances<br />\r\nc. Earnings with Balances</p>', '100.00', 8, 'part-time', 'Less than 1 month', 8, '2018-04-07 21:18:58', '2018-04-07 21:18:58'),
(56, 'Excel Spreadsheet to Quickbooks Estimate', '<p>Hello, I am using an excel spreadsheet to calculate my material cost, quantities, profit, mark up . selling price etc .&nbsp;<br />\r\n<br />\r\nOnce I&nbsp;&nbsp;fill up everything I share the cost with my client and if they approve everything I am entering everything line by line in Quickbooks. This is a time consuming process( takes 10-15 min ) and leaves room for data entry errors.&nbsp;<br />\r\n<br />\r\nI want to redo my excel spreadsheet in a way that can be imported in QB in to an estimate form</p>', '75.00', 8, 'part-time', 'Less than 1 week', 2, '2018-04-07 21:19:22', '2018-04-07 21:19:22'),
(57, 'Swedish Company assistance', '<p>Needed&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;for&nbsp;&nbsp;&nbsp;&nbsp;Swedish&nbsp;&nbsp;&nbsp;A.B.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;;Styrilse supplemant&nbsp;&nbsp;&nbsp;with no&nbsp;&nbsp;active&nbsp;&nbsp;&nbsp;function.<br />\r\nfurther&nbsp;&nbsp;&nbsp;should&nbsp;&nbsp;&nbsp;be&nbsp;&nbsp;&nbsp;willing&nbsp;&nbsp;to&nbsp;&nbsp;act&nbsp;&nbsp;as&nbsp;&nbsp;; Delgivningsmottagere&quot;<br />\r\nHe&nbsp;&nbsp;&nbsp;&nbsp;should&nbsp;&nbsp;&nbsp;have&nbsp;&nbsp;a&nbsp;&nbsp;&nbsp;swedish&nbsp;&nbsp;person&nbsp;&nbsp;number and&nbsp;&nbsp;&nbsp;a&nbsp;&nbsp;swedish&nbsp;&nbsp;address .<br />\r\npayment&nbsp;&nbsp;&nbsp;for&nbsp;&nbsp;&nbsp;&nbsp;1&nbsp;&nbsp;Year&nbsp;&nbsp;&nbsp;period</p>', '150.00', 8, 'part-time', 'Less than 1 month', 4, '2018-04-07 21:19:49', '2018-04-07 21:19:49'),
(58, 'Perform audit on a small firm with one emplyee', '<h2>perform audit on a small firm with one emplyee</h2>', '100.00', 8, 'part-time', 'Less than 1 week', 5, '2018-04-07 21:20:18', '2018-04-07 21:20:18'),
(59, 'Need some calculations/strategy doing for the best way to compound interest under certain conditions', '<p>I need to come up with the best strategy to maximise earnings. e.g should I invest daily smaller amounts of larger amounts more spread out?</p>', '20.00', 8, 'part-time', 'Less than 1 week', 6, '2018-04-07 21:20:40', '2018-04-07 21:20:40'),
(60, 'Seeking Professional to help develop business plans with good Powerpoint Design Skills', '<p>I am currently working on 2 business plans that have to presented in both cases to various different Boards of Directors, who need to see strong content but at the same time very eye catching visuals representations on the presentations.&nbsp;<br />\r\n<br />\r\nAll Plans to be done and delivered in editable PowerPoint Format as there are other parties who may need to add or subtract information before presentation.&nbsp;<br />\r\n<br />\r\nThe projects are:&nbsp;<br />\r\n<br />\r\n1. Transformation of a Middle Eastern IT company into a Digital Content Marketing company, based on the strength of the IT companies focus which centers on website creation and cybersecurity (full disclosure and details will be given to successful freelancer candidate). URGENT.&nbsp;<br />\r\n<br />\r\n2. Creation of a new advertising and marketing communications company in Moscow that will partner with a non Russian agency group.&nbsp;<br />\r\n<br />\r\n<br />\r\n<br />\r\nI am offering 2,000 USD per business plan, so if you take on both you earn 4,000 USD.<br />\r\n<br />\r\nIf we are successful, there will be a lot more work to be done in the future.</p>', '4000.00', 8, 'full-time', 'More than 6 months', 7, '2018-04-07 21:21:11', '2018-04-07 21:21:11'),
(61, 'Interior Design CAD-3D designer wanted', '<p>I am an interior design working in the luxury home market.&nbsp;&nbsp;I am looking for a team of people that can work with me to take my ideas and help be create my ideas through a beautiful presentation to clients.<br />\r\nI work in new construction and remodeling, as well as decorating.<br />\r\nI am looking for an as need basis.&nbsp;&nbsp;I need someone who can work on a project at will, who has good communication skills and while commited to a job will respond within a days time to changes needed.<br />\r\nI pay immediately when invoices arrive.<br />\r\nI am looking for someone how has as much passion as I do and who want to help me impress my clients as much as I do.<br />\r\n<br />\r\nThis job was posted from a mobile device, so please pardon any typos or any missing details.</p>', '300.00', 7, 'part-time', '1 - 3 months', 8, '2018-04-07 21:37:21', '2018-04-07 21:37:21'),
(62, 'Company Logo Design', '<p>Hello! I&#39;m searching for graphic designers to create me a logo for a new project in field of communication and design. It&#39;s more about different ideas and scribbles. The logo can be in black and white, and has to be made as a vector file.<br />\r\nI&#39;m interested in a future and constant collaboration, so I&#39;m searching for designers with high skills of innovation, flexibility and a high comprehension.&nbsp;<br />\r\nLooking forward to see some works from you in a portfolio, thank you for your interest!</p>', '15.00', 1, 'part-time', 'Less than 1 week', 2, '2018-04-07 21:38:05', '2018-04-07 21:38:05');
INSERT INTO `jobs` (`id`, `title`, `body`, `budget`, `category_id`, `position_type`, `project_duration`, `user_id`, `created_at`, `updated_at`) VALUES
(63, 'VA needed to aid in strategy and execution of ecommerce email marketing campaigns', '<p>I am looking for a talented VA who has a genuine interest in email marketing and is interested in more work as my company grows. We specialize in e-commerce email marketing.&nbsp;<br />\r\n<br />\r\nMUST HAVE EXPERIENCE&nbsp;&nbsp;WITH KLAVIYO ( Other CRM&#39;s are a bonus)<br />\r\n<br />\r\nYou will be required to share your input on strategic decisions and think creatively to complete your tasks.<br />\r\n<br />\r\nTasks will include:<br />\r\n- Assisting in configuring and optimizing&nbsp;&nbsp;triggered flows&nbsp;<br />\r\n- Writing creative sales copy for weekly campaigns ranging in objectives. (engage, build a relationship, share valuable articles on relevant topics, promote sales, holiday specials, segmentation, ascension, re-engagement)<br />\r\n- Creating flows/ campaigns within klaviyo with visually attractive layouts<br />\r\n- Testing for and troubleshooting deliverability with test accounts<br />\r\n<br />\r\nAt the moment we are a small company but once I find competent assistance I will be looking to bring on multiple clients. With each new client will come more work and more compensation.<br />\r\n<br />\r\nThis job will be broken into 4 milestones 150/ 4 = 37.50 per milestone&nbsp;<br />\r\n- you will be asked to give input on strategic approach and then you will need to create a campaign designed to run over a few days with certain objectives, ie. holiday promo, share a valuable article, promote a certain collection, etc...<br />\r\n<br />\r\n<br />\r\nYOU DON&#39;T NEED TO HAVE ALL THE ANSWERS, BUT YOU WILL NEED TO BE WILLING TO:<br />\r\n- MUST BE ABLE TO WORK INDEPENDENTLY<br />\r\n- MUST BE WILLING TO TROUBLESHOOT ISSUES (RESEARCH ANSWERS AT TIMES)<br />\r\n- MUST HAVE&nbsp;&nbsp;STRONG COMMAND OF WRITTEN ENGLISH (I SHOULD RARELY HAVE TO CORRECT YOUR WORK FOR GRAMMAR, SPELLING, OR SENTENCE STRUCTURE)<br />\r\n- NEED TO BE AVAILABLE FOR AT LEAST ONE WEEKLY CALL&nbsp;<br />\r\n- GOOD COMMUNICATION IS A MUST, I EXPECT A REPLY TO MY QUESTIONS WITHIN A REASONABLE ABOUT OF TIME LESS THAN 12 (WHERE EVER POSSIBLE)<br />\r\n- YOU WILL BE REQUIRED TO WRITE SALES COPY<br />\r\n-MUST BE FAMILIAR WITH KLAVIYO<br />\r\n- MUST UNDERSTAND EMAIL MARKETING AND DELIVERABILITY BEST PRACTICES<br />\r\n- MUST BE RELIABLE AS BUSINESS PICKS UP DEADLINES WILL BE CRUITIAL FOR FINISHING ASSIGNMENTS<br />\r\n- MUST TAKE DIRECTION WELL<br />\r\n- MUST BE COMFORTABLE ASKING FOR HELP WHEN NEEDED (I ENCOURAGE ASKING QUESTION EARLY AND OFTEN)<br />\r\n- MUST BE A HARD WORKER<br />\r\n<br />\r\nAny application that does not answer the following will not be considered<br />\r\nBegin your proposal with &quot;look no further, I am the man/woman for the job&quot; &amp; give me 2 examples of an abandon cart subject line, mothers day promotion, customer win back, engagement campaign.</p>', '150.00', 3, 'part-time', 'Less than 1 month', 4, '2018-04-07 21:39:01', '2018-04-07 21:39:01'),
(64, 'Easy Article Writing Job', '<p>Long-term contract. Must be able to deliver 1 article a day (500 words).</p>', '300.00', 4, 'full-time', 'More than 6 months', 5, '2018-04-07 21:39:34', '2018-04-07 21:39:34'),
(65, 'All-purpose virtual assistant and researcher', '<p>Looking for somebody that complements my laziness to get things actually done, and also to answer random questions I have. Somebody tech savvy enough to research online with ease, and also open minded enough to research anything including things on drugs.<br />\r\n<br />\r\nExpanding:<br />\r\n<br />\r\nI&#39;m somebody who has high ambitions, and big ideas. I&#39;m constantly planning and thinking and there&#39;s a lot i want to do. Problem is I&#39;m the laziest and least disciplined person I know and require assistance with even basic parts of my life. I know what needs doing, for the most part, I just don&#39;t do it.<br />\r\n<br />\r\nI&#39;m young and doing a lot of things right now, including helping my family business, planning my career, returning to school, moving up in my job, and some more. I&#39;m building plans for each of these things, but I require assistance in executing those plans.<br />\r\n<br />\r\nI&#39;m looking for somebody that&#39;s opened minded and just as much a researcher as they are a do-er. I will sometimes give you specific tasks and sometimes just give you a topic to research and give me a summary on. I may ask you to contact people or watch something and summarize, or I may ask you to hire another freelancer for a different kind of job.<br />\r\n<br />\r\nI&#39;m a kind person and will work together with you all the way, so this won&#39;t be just a one-sided set up. Critique and honesty will always be welcome. Unfortunately, i&#39;m currently not at all well off financially. Eventually when I have more money, I will still need a virtual assistant and want to pay you as much as I can afford, as this is a service I drastically need. For now, however, I&#39;m a soon to be student and part time worker, so I don&#39;t have much to spend. Hoping to find somebody temporarily ok with that.</p>', '1500.00', 6, 'full-time', '3 - 6 months', 6, '2018-04-07 21:40:23', '2018-04-07 21:40:23');

-- --------------------------------------------------------

--
-- Table structure for table `job_categories`
--

CREATE TABLE `job_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_categories`
--

INSERT INTO `job_categories` (`id`, `category_name`, `created_at`, `updated_at`) VALUES
(1, 'Graphics & Design', NULL, NULL),
(2, 'Programming & Tech', NULL, NULL),
(3, 'Digital Marketing', NULL, NULL),
(4, 'Writing & Translation', NULL, NULL),
(5, 'Video & Animation', NULL, NULL),
(6, 'Admin Support', NULL, NULL),
(7, 'Architecture & Engineering', NULL, NULL),
(8, 'Management & Finance', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(24, '2014_10_12_000000_create_users_table', 1),
(25, '2014_10_12_100000_create_password_resets_table', 1),
(26, '2018_02_20_192613_create_jobs_table', 1),
(27, '2018_02_20_192818_create_job_categories_table', 1),
(28, '2018_02_23_054623_add_roles_to_users_table', 1),
(29, '2018_02_23_054958_add_columns_to_jobs_table', 1),
(30, '2018_02_23_061657_create_roles_table', 1),
(31, '2018_02_25_082407_create_profiles_table', 1),
(32, '2018_02_25_085449_add_photo_profiles_table', 1),
(33, '2018_02_25_104251_create_skills_table', 1),
(34, '2018_02_25_104449_create_skill_user_table', 1),
(35, '2018_02_25_112259_create_education_table', 1),
(36, '2018_02_25_121854_create_works_table', 1),
(37, '2018_02_28_063027_change_photo_column_to_nullable', 1),
(38, '2018_02_28_071505_change_achievement_column_from_education_table_to_nullable', 1),
(39, '2018_02_28_083917_change_description_column_from_work_table_to_nullable', 1),
(40, '2018_03_01_010626_create_applicants_table', 1),
(41, '2018_03_01_011542_add_user_id_in_applicants_table', 1),
(42, '2018_03_01_011919_create_applicant_job_table', 1),
(43, '2018_03_06_041120_change_profile_table_columnst_to_nullable', 1),
(44, '2018_03_06_041355_change_education_table_columns_to_nullable', 1),
(45, '2018_03_06_041504_change_works_table_columns_to_nullable', 1),
(46, '2018_03_07_065806_add_jobs_id_in_applicants', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `job_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `overview` text COLLATE utf8mb4_unicode_ci,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `province` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `job_title`, `overview`, `city`, `province`, `country`, `user_id`, `created_at`, `updated_at`, `photo`) VALUES
(1, 'Magento Developer | Web Designer | Web Developer', 'I am a Magento developer with 7 years experience in PHP', 'Morong', 'Rizal', 'Philippines', 3, '2018-04-07 14:40:39', '2018-04-07 14:40:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role`, `created_at`, `updated_at`) VALUES
(1, 'freelancer', NULL, NULL),
(2, 'client', NULL, NULL),
(3, 'admin', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` int(10) UNSIGNED NOT NULL,
  `skill` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `skill`, `created_at`, `updated_at`) VALUES
(1, 'Adobe Illustrator', NULL, NULL),
(2, 'Adobe Photoshop', NULL, NULL),
(3, 'Graphic Design', NULL, NULL),
(4, 'Photo Editing', NULL, NULL),
(5, 'Illustration\r\n', NULL, NULL),
(6, 'Adobe InDesign', NULL, NULL),
(8, 'Logo Design', NULL, NULL),
(9, 'Adobe XD', NULL, NULL),
(10, 'Sketch', NULL, NULL),
(11, 'Banner Ad Design', NULL, NULL),
(12, 'Print Design', NULL, NULL),
(13, 'Print Layout Design', NULL, NULL),
(14, 'HTML5', NULL, NULL),
(15, 'CSS3', NULL, NULL),
(16, 'Javascript', NULL, NULL),
(17, 'jQuery', NULL, NULL),
(18, 'Ajax', NULL, NULL),
(19, 'PHP', NULL, NULL),
(20, 'MySQL', NULL, NULL),
(21, 'Laravel', NULL, NULL),
(22, 'Java', NULL, NULL),
(23, 'C#', NULL, NULL),
(24, 'C++', NULL, NULL),
(25, 'Code Igniter', NULL, NULL),
(26, 'Angular JS', NULL, NULL),
(27, 'React JS', NULL, NULL),
(28, 'Vue JS', NULL, NULL),
(29, 'Internet Marketing', NULL, NULL),
(30, 'Social Media Marketing', NULL, NULL),
(31, 'Facebook Marketing', NULL, NULL),
(32, 'Instagram Marketing', NULL, NULL),
(33, 'Marketing Strategy', NULL, NULL),
(34, 'Google AdWords', NULL, NULL),
(35, 'Google Analytics', NULL, NULL),
(36, 'Pay Per Click Advertising', NULL, NULL),
(37, 'Branding', NULL, NULL),
(38, 'Pay Per Click Advertising', NULL, NULL),
(39, 'Search Engine Marketing (SEM)', NULL, NULL),
(40, 'Search Engine Optimization (SEO)', NULL, NULL),
(41, 'SEO Keyword Research ', NULL, NULL),
(42, 'Blog Writing', NULL, NULL),
(43, 'Content Development', NULL, NULL),
(44, 'Content Marketing', NULL, NULL),
(45, 'Content Writing', NULL, NULL),
(46, 'Copywriting', NULL, NULL),
(47, 'Article Writing', NULL, NULL),
(48, 'SEO Writing', NULL, NULL),
(49, 'Technical Writing', NULL, NULL),
(50, 'Animation', NULL, NULL),
(51, 'Video Animation', NULL, NULL),
(52, 'YouTube Development', NULL, NULL),
(53, 'Video Editing', NULL, NULL),
(54, 'Video Production', NULL, NULL),
(55, 'Video Strategy', NULL, NULL),
(56, 'CorelDRAW', NULL, NULL),
(57, 'Drawing', NULL, NULL),
(58, 'Explainer Videos', NULL, NULL),
(59, 'Final Cut Pro', NULL, NULL),
(60, 'VideoScribe', NULL, NULL),
(61, 'Video Processing', NULL, NULL),
(62, 'Motion Graphics', NULL, NULL),
(63, 'Administrative Support', NULL, NULL),
(64, 'Data Entry', NULL, NULL),
(65, 'Email Handling', NULL, NULL),
(66, 'Internet Research', NULL, NULL),
(67, 'Microsoft Excel', NULL, NULL),
(68, 'Microsoft Word', NULL, NULL),
(69, 'Property Management', NULL, NULL),
(70, 'Real Estate Management', NULL, NULL),
(71, 'Typing', NULL, NULL),
(72, 'Google Docs', NULL, NULL),
(73, 'Telephone Handling', NULL, NULL),
(74, 'Virtual Assistant', NULL, NULL),
(75, 'Customer Service', NULL, NULL),
(76, 'Logistics & Shipping', NULL, NULL),
(77, 'Human Resource Management', NULL, NULL),
(78, 'Sourcing', NULL, NULL),
(79, '3D Rendering', NULL, NULL),
(80, 'Architecture', NULL, NULL),
(81, 'Architectural Rendering', NULL, NULL),
(82, 'AutoCAD', NULL, NULL),
(83, 'Construction Management', NULL, NULL),
(84, 'Autodesk Revit Architecture', NULL, NULL),
(85, '\r\nInterior Design\r\n', NULL, NULL),
(86, '3D Design', NULL, NULL),
(87, '3D Modeling', NULL, NULL),
(88, '3D Rendering', NULL, NULL),
(89, '3D Max', NULL, NULL),
(90, 'Computer-Aided Design', NULL, NULL),
(91, 'Home Design', NULL, NULL),
(92, 'Budgeting & Forecasting', NULL, NULL),
(93, 'Financial Accounting', NULL, NULL),
(94, 'Financial Analysis', NULL, NULL),
(95, 'Financial Management', NULL, NULL),
(96, 'Financial Modeling', NULL, NULL),
(97, 'Account Reconciliation', NULL, NULL),
(98, 'Accounting', NULL, NULL),
(99, 'Accounts Payable Management', NULL, NULL),
(100, 'Accounts Receivable Management', NULL, NULL),
(101, 'Auditing Bank Reconciliation', NULL, NULL),
(102, 'Bookkeeping', NULL, NULL),
(103, 'Budgeting & Forecasting', NULL, NULL),
(104, 'Corporate Finance', NULL, NULL),
(105, 'Corporate Taxes', NULL, NULL),
(106, 'Cost Accounting', NULL, NULL),
(107, 'Expense Reporting', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `skill_user`
--

CREATE TABLE `skill_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `skill_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `skill_user`
--

INSERT INTO `skill_user` (`id`, `user_id`, `skill_id`, `created_at`, `updated_at`) VALUES
(1, 3, 6, '2018-04-07 15:00:52', '2018-04-07 15:00:52'),
(2, 3, 2, '2018-04-07 15:00:52', '2018-04-07 15:00:52'),
(3, 3, 3, '2018-04-07 15:00:53', '2018-04-07 15:00:53');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `role`) VALUES
(1, 'admin', 'admin@email.com', '$2y$10$MyaSBEZdDfyHlSlbkp.P/.Q8w/2lzX7ODvPIULnhWog4C2JsBHQam', 'wri5Pd0M33FHu8iizsO0RHuYYNrSIxGnFgq9GKQ297ccekfEKFZ3D5c9RzxJ', '2018-04-07 14:11:07', '2018-04-07 14:11:07', 3),
(2, 'Uncle Sam', 'unclesam@email.com', '$2y$10$alEbFv1tyxZZ.PgQDOn.FOELvkE44FAMud7iYzAnusj/nMbbvVn2u', 'n3QvLRQzNP6Y3byTLIDm8Snn4LiC9x6zUk1gNzrEn5Y4zepSvjELy5ib5Pct', '2018-04-07 14:32:07', '2018-04-07 14:32:07', 2),
(3, 'John Ray Pantaleon', 'john@email.com', '$2y$10$K0NgYgMPO6OWAL3uwEJEDuSlXV6slIoIf9QnGET0dHhwQ1AdfOb.q', 'QbtVr8ZZMXnWLcOJQ2Qc9k2BqhrYaivfO55BVUMi0V0HdqZBX7PcUCbhcgmI', '2018-04-07 14:38:56', '2018-04-07 14:46:11', 1),
(4, 'Chester Almonte', 'chester@email.com', '$2y$10$69fwG42vRlRC47.jFfkwe.jybI.9MgSAhjA1gpL9gQ8.F5SATxEpq', 'M0fyBOH1DFTKvAIGqr4Cbzq1JReQdqmKFkZhOIURniIoxl1aNTDt8tAqOvFl', '2018-04-07 21:22:06', '2018-04-07 21:22:06', 2),
(5, 'Kevin Payas', 'kevin@email.com', '$2y$10$VLVWsinRaSJq8P/MUbN1Ee6bXeJc.cHLX9vQrbc3XpaTuFn0Uaqp6', 'i6HXfX1fUtUOIWSbGC0nTNFaFz6B0TtJQCesIn4LKisQZ1fPCncax6aXV14o', '2018-04-07 21:22:49', '2018-04-07 21:22:49', 2),
(6, 'Raniel Escalante', 'raniel@email.com', '$2y$10$54JsRPnZJjnuGCribfFGt.0IHHAjXuwHhufoj1Yszwyg6ylTzgXne', 'Fo8MEaQqHyL40VPNWFZMylhprQYeRfeWe7xqmh79ef77RocjY0vPjSxVJQbM', '2018-04-07 21:23:21', '2018-04-07 21:23:21', 2),
(7, 'Al Jayson Miranda', 'aljayson@yahoo.com', '$2y$10$VDShsw6MEICbCSj0QmcLIeVtu3tCt3sGSMcjfW5OrMczawnA3BOHW', 'cetwyJ99DUvQ5HlNwcVrhKl0otqcHsA9LYB8VtBJNNmyTADYtwNTZDURkBYc', '2018-04-07 21:23:54', '2018-04-07 21:23:54', 2),
(8, 'Neil John Faeldonia', 'neiljohn@example.com', '$2y$10$sZMIqErlcuJsegU89Q1uluF85qrXN0PPRDFrfN7nnb.WeX5T0A9Cq', NULL, '2018-04-07 21:24:22', '2018-04-07 21:24:22', 2);

-- --------------------------------------------------------

--
-- Table structure for table `works`
--

CREATE TABLE `works` (
  `id` int(10) UNSIGNED NOT NULL,
  `position` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `works`
--

INSERT INTO `works` (`id`, `position`, `company`, `year`, `description`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Freelancer', 'Upwork', '2012 - 2017', 'Uploading products in different E-commerce websites\nManaging Wordpress sites with woocommerce plugins\nSetting up Shopify stores\nHad other experience working in BigCommerce, Shopify, Woocommerce, Bloomtools, Amazon, Xero, TradeGecko, Vend, Microbiz', 3, '2018-04-07 18:15:14', '2018-04-07 18:15:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `applicants`
--
ALTER TABLE `applicants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `applicants_job_id_foreign` (`job_id`);

--
-- Indexes for table `applicant_job`
--
ALTER TABLE `applicant_job`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `education`
--
ALTER TABLE `education`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_categories`
--
ALTER TABLE `job_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skill_user`
--
ALTER TABLE `skill_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `works`
--
ALTER TABLE `works`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `applicants`
--
ALTER TABLE `applicants`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `applicant_job`
--
ALTER TABLE `applicant_job`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `education`
--
ALTER TABLE `education`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;
--
-- AUTO_INCREMENT for table `job_categories`
--
ALTER TABLE `job_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;
--
-- AUTO_INCREMENT for table `skill_user`
--
ALTER TABLE `skill_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `works`
--
ALTER TABLE `works`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `applicants`
--
ALTER TABLE `applicants`
  ADD CONSTRAINT `applicants_job_id_foreign` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
