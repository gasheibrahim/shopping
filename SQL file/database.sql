-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jun 04, 2021 at 05:13 AM
-- Server version: 5.7.26
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `shopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `image` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `image`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', 'images/66001664LWS_5239-Recovered.jpg', 'admin', '2021-06-02 00:13:38', '');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(1, 'Fruits', 'For human needs (e.g. wheat, maize, legumes, rice, potatoes, tomatoes).', '2021-06-03 09:21:01', NULL),
(2, 'Vegetables', 'For human needs (e.g. wheat, maize, legumes, rice, potatoes, tomatoes).', '2021-06-03 09:21:09', NULL),
(3, 'Dried', 'For human needs (e.g. wheat, maize, legumes, rice, potatoes, tomatoes).', '2021-06-03 09:21:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cooperative`
--

CREATE TABLE `cooperative` (
  `id` int(10) NOT NULL,
  `username` varchar(100) NOT NULL,
  `image` text NOT NULL,
  `location` varchar(100) NOT NULL,
  `production` varchar(100) NOT NULL,
  `represantation` varchar(100) NOT NULL,
  `field` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cooperative`
--

INSERT INTO `cooperative` (`id`, `username`, `image`, `location`, `production`, `represantation`, `field`, `password`) VALUES
(1, 'KEHMU', '', 'Rusizi', 'Umuceri', 'ubuhim@umuceri', 'bugarama', 'cooperative'),
(2, 'TURWANYE UBUKENE CYERU', '', 'Burera', 'ibirayi and ibigori', 'ubuhinzi!@ibirayi&ibigori', 'cyeru ', 'cooperative'),
(3, 'ABATARUSHWA', '', 'gakenke', 'imbuto', 'ubuhinzi!ubucuruzi@imbuto(inanasi)', 'rusasa', 'cooperative'),
(4, 'COAK KANZENZE Cooperative', '', 'Bugesera', 'imboga', 'ubuhinzi@&Imboga', 'ntarama', 'cooperative');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `orderDate`, `paymentMethod`, `orderStatus`) VALUES
(1, 1, '3', 1, '2017-03-07 19:32:57', 'COD', NULL),
(3, 1, '4', 1, '2017-03-10 19:43:04', 'Debit / Credit card', 'Delivered'),
(4, 1, '17', 1, '2017-03-08 16:14:17', 'COD', 'in Process'),
(5, 1, '3', 1, '2017-03-08 19:21:38', 'COD', NULL),
(6, 1, '4', 1, '2017-03-08 19:21:38', 'COD', NULL),
(7, 4, '2', 1, '2021-05-22 09:08:14', 'Debit / Credit card', 'Delivered'),
(8, 4, '11', 1, '2021-05-22 09:08:14', 'Debit / Credit card', NULL),
(9, 4, '2', 1, '2021-05-22 16:22:21', 'Internet Banking', NULL),
(10, 4, '2', 1, '2021-05-22 16:24:58', 'Internet Banking', NULL),
(11, 4, '2', 1, '2021-05-23 09:57:17', 'Debit / Credit card', NULL),
(12, 4, '4', 1, '2021-05-23 10:00:25', 'mobile money', NULL),
(13, 5, '4', 1, '2021-05-23 10:01:56', 'Airtel Money', 'Delivered'),
(14, 4, '3', 1, '2021-05-25 10:30:12', 'mobile money', NULL),
(15, 4, '4', 1, '2021-05-25 10:30:12', 'mobile money', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ordertrackhistory`
--

CREATE TABLE `ordertrackhistory` (
  `id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ordertrackhistory`
--

INSERT INTO `ordertrackhistory` (`id`, `orderId`, `status`, `remark`, `postingDate`) VALUES
(1, 3, 'in Process', 'Order has been Shipped.', '2017-03-10 19:36:45'),
(2, 1, 'Delivered', 'Order Has been delivered', '2017-03-10 19:37:31'),
(3, 3, 'Delivered', 'Product delivered successfully', '2017-03-10 19:43:04'),
(4, 4, 'in Process', 'Product ready for Shipping', '2017-03-10 19:50:36'),
(5, 7, 'Delivered', 'good', '2021-05-22 09:11:21'),
(6, 13, 'Delivered', 'thank you', '2021-05-23 10:03:27');

-- --------------------------------------------------------

--
-- Table structure for table `productreviews`
--

CREATE TABLE `productreviews` (
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `review` longtext,
  `reviewDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `productreviews`
--

INSERT INTO `productreviews` (`id`, `productId`, `quality`, `price`, `value`, `name`, `summary`, `review`, `reviewDate`) VALUES
(2, 3, 4, 5, 5, 'Anuj Kumar', 'BEST PRODUCT FOR ME :)', 'BEST PRODUCT FOR ME :)', '2017-02-26 20:43:57'),
(3, 3, 3, 4, 3, 'Sarita pandey', 'Nice Product', 'Value for money', '2017-02-26 20:52:46'),
(4, 3, 3, 4, 3, 'Sarita pandey', 'Nice Product', 'Value for money', '2017-02-26 20:59:19');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(11) DEFAULT NULL,
  `quantity` varchar(100) NOT NULL,
  `productDescription` longtext,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `quantity`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(1, 1, 1, 'Banana', 'ABATARUSHWA', 800, 1000, '1KG', '<span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif; font-size: 14px;\">A banana is an elongated, edible fruit – botanically a berry – produced by several kinds of large herbaceous flowering plants in the genus Musa. In some countries, bananas used for cooking may be called \"plantains\", distinguishing them from dessert bananas.</span><br>', 'pile-fresh-bananas-healthy-84528541.jpg', 'bananas-isolated-17054388.jpg', 'bananas-29361168.jpg', 1000, 'In Stock', '2021-06-04 03:38:39', NULL),
(2, 1, 1, 'Mango', 'ABATARUSHWA', 1000, 1500, '1KG', '<b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Mangoes</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;are a tropical&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">fruit</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;from the drupe family. This means they have a single large seed or stone in the middle. Sometimes called the “king of&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">fruits</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">,”&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">mangoes</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;are one of the most widely consumed&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">fruits</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;in the world.&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Mangoes</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;originated in India around 5,000 years ago.</span><br>', 'mango-26359699.jpg', 'fruits-mango-scientific-name-mangifera-indica-anacardiaceae-ripened-fruit-piled-up-sale-thiruvananthapuram-kerala-india-48649430.jpg', 'mango-tree-9742865.jpg', 1000, 'In Stock', '2021-06-04 03:47:08', NULL),
(3, 1, 1, 'Tamarillo', 'ABATARUSHWA', 900, 1000, '1KG', '<span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif; font-size: 14px;\">The tamarillo is a small tree or shrub in the flowering plant family Solanaceae. It is best known as the species that bears the tamarillo, an egg-shaped edible fruit.</span><br>', 'tamarillo-tasty-ripe-white-45638446.jpg', 'tamarillo-5392172.jpg', 'tamarillo-market-tamarillo-fruit-sale-grocery-market-fruit-also-referred-to-as-tree-tomato-167114601.jpg', 1000, 'In Stock', '2021-06-04 03:49:22', NULL),
(4, 1, 1, 'TOMATOE', 'ABATARUSHWA', 1000, 1500, '1KG', '<span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif; font-size: 14px;\">The tomato is the edible berry of the plant Solanum lycopersicum, commonly known as a tomato plant. The species originated in western South America and Central America. The Nahuatl word tomatl gave rise to the Spanish word tomate, from which the English word tomato derived.</span><br>', 'roma-tomatoes-stack-also-known-as-italian-italian-plum-tomatos-39814351.jpg', 'tomatoes-565617.jpg', 'product-5.jpg', 1000, 'In Stock', '2021-06-04 03:54:21', NULL),
(5, 2, 2, 'CARROTS', 'COAK KANZENZE Cooperative', 400, 500, '1KG', '<span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif; font-size: 14px;\">The carrot is a root vegetable, usually orange in color, though purple, black, red, white, and yellow cultivars exist. They are a domesticated form of the wild carrot, Daucus carota, native to Europe and Southwestern Asia. The plant probably originated in Persia and was originally cultivated for its leaves and seeds.</span><br>', 'product-7.jpg', 'carrot-pile-close-up-orange-presenting-fresh-vegetables-34736039.jpg', 'carrot-garden-13329002.jpg', 1000, 'In Stock', '2021-06-04 03:55:54', NULL),
(6, 2, 2, 'Green Vegetables', 'COAK KANZENZE Cooperative', 300, 400, '1KG', '<span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif; font-size: 14px;\">Leaf vegetables, also called leafy greens, salad greens, pot herbs, vegetable greens, or simply greens, are plant leaves eaten as a vegetable, sometimes accompanied by tender petioles and shoots.</span><br>', 'green-vegetable-24376347.jpg', 'green-vegetable-21969905.jpg', 'green-vegetable-12376868.jpg', 1000, 'In Stock', '2021-06-04 03:59:26', NULL),
(7, 2, 2, 'Cabbage', 'COAK KANZENZE Cooperative', 900, 1000, '1KG', '<span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif; font-size: 14px;\">Cabbage is a leafy green, red, or white biennial plant grown as an annual vegetable crop for its dense-leaved heads. It is descended from the wild cabbage, and belongs to the \"cole crops\" or brassicas, meaning it is closely related to broccoli and cauliflower; Brussels sprouts; and Savoy cabbage.</span><br>', 'cabbage-cut-cabage-wooden-board-head-63026434.jpg', 'cabage-field-rows-farming-organic-cabbage-cabbage-field-ready-to-harvest-green-78214796.jpg', 'cabage-crops-rows-field-summer-day-rural-area-agriculture-background-191624135.jpg', 1000, 'In Stock', '2021-06-04 04:09:23', NULL),
(8, 2, 2, 'Onion', 'COAK KANZENZE Cooperative', 1000, 1500, '1KG', '<span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif; font-size: 14px;\">The onion, also known as the bulb onion or common onion, is a vegetable that is the most widely cultivated species of the genus Allium. The shallot is a botanical variety of the onion. Until 2010, the shallot was classified as a separate species.</span><br>', 'red-onion-28668540.jpg', 'fresh-onion-market-115636429.jpg', 'onion-food-10691232.jpg', 1000, 'In Stock', '2021-06-04 04:12:06', NULL),
(9, 3, 3, 'Sugar Cane', 'TURWANYE UBUKENE CYERU ', 300, 400, '1KG', '<span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif; font-size: 14px;\">Sugarcane or sugar cane refers to several species and hybrids of tall perennial grass in the genus Saccharum, tribe Andropogoneae, that are used for sugar production. The plants are 2-6 m tall with stout, jointed, fibrous stalks that are rich in sucrose, which accumulates in the stalk internodes.</span><br>', 'sugar-cane-29535630.jpg', 'sugar-cane-20834122.jpg', 'field-sugar-cane-10427528.jpg', 1000, 'In Stock', '2021-06-04 04:19:41', NULL),
(10, 3, 3, 'potatoes', 'TURWANYE UBUKENE CYERU ', 230, 300, '1KG', '<span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif; font-size: 14px;\">The&nbsp;</span><span style=\"font-weight: bold; color: rgb(95, 99, 104); font-family: arial, sans-serif; font-size: 14px;\">potato</span><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif; font-size: 14px;\">&nbsp;is a root vegetable native to the Americas, a starchy tuber of the plant Solanum tuberosum, and the plant itself is a perennial in the nightshade family</span><br>', 'lars-blankers-B0s3Xndk6tw-unsplash.jpg', 'eric-prouzet-52DMHPBAvXY-unsplash.jpg', 'hai-nguyen-LSZfNPVZjTw-unsplash.jpg', 1000, 'In Stock', '2021-06-04 04:23:59', NULL),
(11, 3, 3, 'Cassava', 'TURWANYE UBUKENE CYERU ', 300, 400, '1KG', '<b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Cassava</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;is a root vegetable. It is the underground part of the&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">cassava</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;shrub, which has the Latin name Manihot esculenta. Like potatoes and yams, it is a tuber crop.&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Cassava</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;roots have a similar shape to sweet potatoes. People can also eat the leaves of the&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">cassava</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;plant.</span><br>', 'cassava-root-17324753.jpg', 'cassava-15369216.jpg', 'one-cut-cassava-16000699.jpg', 1000, 'In Stock', '2021-06-04 04:25:39', NULL),
(12, 3, 3, 'Sweet Potatoes', 'TURWANYE UBUKENE CYERU ', 200, 250, '1KG', '<span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif; font-size: 14px;\">The sweet potato or sweetpotato is a dicotyledonous plant that belongs to the bindweed or morning glory family, Convolvulaceae. Its large, starchy, sweet-tasting, tuberous roots are a root vegetable. The young shoots and leaves are sometimes eaten as greens.</span><br>', 'group-japanese-sweet-potatoes-texture-background-i-157687085.jpg', 'sweet-potatoes-17115642.jpg', 'sweet-potatoes-5433096.jpg', 1000, 'In Stock', '2021-06-04 04:27:03', NULL),
(13, 3, 3, 'Maize', 'TURWANYE UBUKENE CYERU ', 150, 200, '1KG', '<span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif; font-size: 14px;\">Maize, also known as corn, is a cereal grain first domesticated by indigenous peoples in southern Mexico about 10,000 years ago. The leafy stalk of the plant produces pollen inflorescences and separate ovuliferous inflorescences called ears that yield kernels or seeds, which are fruits.</span><br>', 'samuel-agyeman-duah-Gyxf5xtYkKI-unsplash.jpg', 'kelly-sikkema-yntEERed0SY-unsplash.jpg', 'joran-quinten--lGomT_Ps8s-unsplash.jpg', 1000, 'In Stock', '2021-06-04 04:30:30', NULL),
(14, 3, 3, 'peanuts', 'TURWANYE UBUKENE CYERU ', 1000, 1200, '1KG', '<span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif; font-size: 14px;\">The peanut, also known as the groundnut, goober, pindar or monkey nut, and taxonomically classified as Arachis hypogaea, is a legume crop grown mainly for its edible seeds. It is widely grown in the tropics and subtropics, being important to both small and large commercial producers.</span><br>', 'peanut-background-made-up-salted-peanuts-their-shells-closeup-to-peanuts-sunshine-106706109.jpg', 'peanuts-peanuts-ground-nut-basket-110452988.jpg', 'peanuts-isolated-white-background-54290791.jpg', 1000, 'In Stock', '2021-06-04 04:32:44', NULL),
(15, 3, 3, 'sorghum', 'TURWANYE UBUKENE CYERU ', 500, 600, '1KG', '<span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif; font-size: 14px;\">Sorghum is a genus of about 25 species of flowering plants in the grass family. Some of these species are grown as cereals for human consumption and some in pastures for animals. One species, Sorghum bicolor, was originally domesticated in Africa and has since spread throughout the globe.</span><br>', 'sorghum-field-4563253.jpg', 'sorghum-1908418.jpg', 'sorghum-field-10688688.jpg', 1000, 'In Stock', '2021-06-04 04:35:08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int(10) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `image` text NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `firstname`, `lastname`, `username`, `image`, `email`, `phone`, `status`, `password`) VALUES
(1, 'Ibrahim', 'Gashema', 'Ibrahim', 'images/68771517_PIT2073.jpg', 'ibrahimgashema154@gmail.com', '+250789859109', 'RCA Staff', 'staff');

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(1, 1, 'First fruits', '2021-06-03 09:21:25', NULL),
(2, 2, 'First Vegetables', '2021-06-03 09:21:31', NULL),
(3, 3, 'First Dried', '2021-06-03 09:21:38', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 11:18:50', '', 1),
(2, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 11:29:33', '', 1),
(3, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 11:30:11', '', 1),
(4, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 15:00:23', '26-02-2017 11:12:06 PM', 1),
(5, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 18:08:58', '', 0),
(6, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 18:09:41', '', 0),
(7, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 18:10:04', '', 0),
(8, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 18:10:31', '', 0),
(9, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 18:13:43', '', 1),
(10, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-27 18:52:58', '', 0),
(11, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-27 18:53:07', '', 1),
(12, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-03 18:00:09', '', 0),
(13, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-03 18:00:15', '', 1),
(14, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-06 18:10:26', '', 1),
(15, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-07 12:28:16', '', 1),
(16, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-07 18:43:27', '', 1),
(17, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-07 18:55:33', '', 1),
(18, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-07 19:44:29', '', 1),
(19, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-08 19:21:15', '', 1),
(20, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-15 17:19:38', '', 1),
(21, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-15 17:20:36', '15-03-2017 10:50:39 PM', 1),
(22, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-16 01:13:57', '', 1),
(23, 'hgfhgf@gmass.com', 0x3a3a3100000000000000000000000000, '2018-04-29 09:30:40', '', 1),
(24, 'ibrahimgashema154@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-22 09:07:31', '22-05-2021 02:39:57 PM', 1),
(25, 'ibrahimgashema154@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-22 16:22:02', '22-05-2021 09:57:25 PM', 1),
(26, 'ibrahimgashema154@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-23 09:56:57', '23-05-2021 03:30:29 PM', 1),
(27, 'mugabe@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-23 10:01:19', NULL, 1),
(28, 'ibrahimgashema154@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-25 10:30:09', NULL, 1),
(29, 'mugabe@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-04 05:01:20', '04-06-2021 10:32:34 AM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`) VALUES
(1, 'Anuj Kumar', 'anuj.lpu1@gmail.com', 9009857868, 'f925916e2754e5e03f75dd58a5733251', 'CS New Delhi', 'New Delhi', 'Delhi', 110001, 'New Delhi', 'New Delhi', 'Delhi', 110092, '2017-02-04 19:30:50', ''),
(2, 'Amit ', 'amit@gmail.com', 8285703355, '5c428d8875d2948607f3e3fe134d71b4', '', '', '', 0, '', '', '', 0, '2017-03-15 17:21:22', ''),
(3, 'hg', 'hgfhgf@gmass.com', 1121312312, '827ccb0eea8a706c4c34a16891f84e7b', '', '', '', 0, '', '', '', 0, '2018-04-29 09:30:32', ''),
(4, 'Ibrahim Gashema', 'ibrahimgashema154@gmail.com', 789859109, 'f1c083e61b32d3a9be76bc21266b0648', 'Kigali, Kicukiro, Kicukiro', 'Kigali city', 'kigali city', 250, 'Kigali, Kicukiro\r\nKicukiro', 'Kigali city', 'kigali city', 250, '2021-05-22 09:07:08', NULL),
(5, 'mugabe patrick', 'mugabe@gmail.com', 733323234, '250cc1a95fcd5744d371da1f1a89bbe8', 'Kigali, Kicukiro, Kicukiro', 'Kigali city', 'kigali city', 250, 'kigali\r\nkicukiro', 'Rwanda', 'kigali city', 250, '2021-05-23 10:01:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `userId`, `productId`, `postingDate`) VALUES
(1, 1, 0, '2017-02-27 18:53:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cooperative`
--
ALTER TABLE `cooperative`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productreviews`
--
ALTER TABLE `productreviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cooperative`
--
ALTER TABLE `cooperative`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
