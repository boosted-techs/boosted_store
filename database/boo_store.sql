-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 08, 2021 at 11:26 AM
-- Server version: 5.6.38
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `boo_store`
--
CREATE DATABASE IF NOT EXISTS `boo_store` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `boo_store`;

-- --------------------------------------------------------

--
-- Table structure for table `access_keys`
--

DROP TABLE IF EXISTS `access_keys`;
CREATE TABLE `access_keys` (
  `id` int(11) NOT NULL,
  `access_key` varchar(130) NOT NULL,
  `user` int(11) NOT NULL,
  `date_added` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `access_keys`
--

INSERT INTO `access_keys` (`id`, `access_key`, `user`, `date_added`) VALUES
(18, 'b99df1dcd502c60d64743305275156040fb98fa81e64ce2f4283b14d3435d8f69fc96603916c82d2ac15f5036d0d5e9b71ebcdd307397d8e531b2b1b3c64e624', 3, '2020-11-19'),
(19, 'b99df1dcd502c60d64743305275156040fb98fa81e64ce2f4283b14d3435d8f69fc96603916c82d2ac15f5036d0d5e9b71ebcdd307397d8e531b2b1b3c64e624', 3, '2020-11-19'),
(20, '827a58f73e6120706c054f6b21adb7d3498c62dc5c5611baa070522e37cf6efcd1bd6a07a2961898a2ced595b0ea3156b01d3abc0c6e1f85b1fbd37fed698a9a', 3, '2020-11-19'),
(21, 'dec80e3e919ff0ce2d12ad1c33e13a8a998dfdcc108cb22655490f80699eb260c829dd42208d3f604812f2997969a1ce56d6e64c98e82cd5d3a9a212d228abea', 3, '2020-11-19'),
(22, '8d462681028b66118ff3a7e1f30fa855ed8b532cc263248d62e93f39c45a33515d337948b2c1ddd0c2f3160eddbcedadb24056786e2b220b11d572598b74f37c', 3, '2020-11-19'),
(23, '0594fa3be6822ceb53e2628b6458deba3b8bb91c910056c07d0bb708a6fd5ea640d9469e6a6d8a2ce04dbdfcd8c5e1ae38027c688e70c832b85961517911d67f', 3, '2020-11-19'),
(24, '0e37d57ccf03a261f2d8f0562ad152edb7a6670d1b25f0bdbffca2fa6b3f447f160c767d36890ae51d8a33283386a7c267b69ecaa8fc859d88e8237845a3b32a', 3, '2020-11-22'),
(25, 'd91bcb940a8c0619f1267293e4c7c62535e92222b5490799e76708f506f55767f75e3c27a6e905734490b95f0d7b00d4be4a77f202509bfba1d67497b2e5d14c', 4, '2020-11-28'),
(26, '571632d573cf9def933a0f4c09e484a911b0d66f0f75fb7f587e6c5414ce793b86e8995757742bde4e4b50b4917b43534e16ca3a3a6a5c2d25ddf05f72be0483', 4, '2020-11-29'),
(27, 'ee4590cd95eb292090bfa794765161a594fa9f23a01f8a5c177fbe20a743400587895bd2d0d5b9d1d8a6c30714695af8f167795cd08e96b09b2a6cbc27bdd2a6', 4, '2020-11-30'),
(28, 'fa6f4de714714e99104df55382762da058f0f52ef7cb43ff110bd99cc5502b3c0f01059f1313096ec922353f4404aeb1970cedb1f1861d052c151e11e22669e4', 4, '2020-11-30'),
(29, '786b43e4a6770ad870879509571190d0bf929da412e332ce878a6d4b67a150498ef2949269ce2237049c4419a2d49821f152920a431b4a650ccc37deb039cf56', 11, '2020-12-06'),
(30, '62ab6424cbfb5672f859914f61442157c1918314647f1d32896fa1481b409078b08c8c3613aa6e69f795bb82e6db8838a3cece6a428b12e33aaed8ad9ef07ad6', 11, '2020-12-06'),
(31, '057cc4bec036c4fd4c50418d1e1b25b5d07f92094381692fb9d06690fd9218fad39cd9c4098780328e149c76b349c7db9a6604a3eef2e1b8f3d37a1499cc9499', 11, '2020-12-06'),
(32, 'd207a8ae31f2e31efd297ad494bd697927e698e2b777076b236fbe4c6427fa247577da63ddfdbba876d0892783c56897c56a6fe4de78a9c8b034a8330bd2dde0', 11, '2020-12-06'),
(33, 'c2fbd210633162ca77d385dd8632aed7e09d6cd95b5e0b0af1a6d445d984e667d37f843f169d8f58f8812e5a97a342ff8c31de682f7fab3848c90b8cc51fc500', 11, '2020-12-06'),
(34, '07007e5d1fc2e62f6ecb2ef0271f38c067eb6617cdca0e10be5e5d8dd3736d0317710ce7af7526d210f56be11fdfdffe1913892653c16dcb488394ebd36df503', 11, '2020-12-06'),
(35, '50f0bf3d3543993138fad45b0661b1d66c88df986933950ffff5a9abe00ad7f711b159b85dc52561fd9cee074151a8754b437d317ac51e5d570e0b6e2a0d91cd', 11, '2020-12-06'),
(36, 'e38cdf96419a0febfea52acf01bcb08c86e94ede78f3493176964911c5f5b3e577d5bf7c557f378c24cc095a97927868d572d7cbc0321be15c9d41ee28d9be3c', 11, '2020-12-06'),
(37, 'a559746d46455cb6e3c7ab8dc820255384b3b1c41f08219dee03cd45bc7463fd5df91d8c4f5f0b3704864f130856281c222b42ab9a7dce171c6c2366dfc1fe42', 11, '2020-12-06'),
(38, '2dbc89bd6ff57f249871572fe07563a3e06cde9a7b7cef98b346a4f9d87e4206ec79b08ffca4447b57ba5101e636d06380add6bd07405a3f3e4d576e869d7e26', 11, '2020-12-08'),
(39, '749da194d1c88c1cc8012244b117713eafa6eb82cf16b9f6d990822ef229082b432b6e8acedaef3441871d163f754b4c063536034f9ec15fd045de52a7c2bccc', 11, '2020-12-08'),
(40, '1ab317524a633848b516ba8733aa1b1675c6d76207df867b330e899a70a1f05adb78a94278f00d0fbccf953dfd963173fbe6829c4336936e0856f6b082c39b52', 11, '2020-12-08'),
(41, '1ab317524a633848b516ba8733aa1b1675c6d76207df867b330e899a70a1f05adb78a94278f00d0fbccf953dfd963173fbe6829c4336936e0856f6b082c39b52', 11, '2020-12-08'),
(42, '56cd27eadda9a239e1fc292f6a4c3ed4e204ff0bb087e797f231a3f76ec4568479fe843fb1b23fbbe7dfac3cbf758f7e1a1a9416ea0f7a763fcfe2801cf76740', 11, '2020-12-08'),
(43, '56cd27eadda9a239e1fc292f6a4c3ed4e204ff0bb087e797f231a3f76ec4568479fe843fb1b23fbbe7dfac3cbf758f7e1a1a9416ea0f7a763fcfe2801cf76740', 11, '2020-12-08'),
(44, '56cd27eadda9a239e1fc292f6a4c3ed4e204ff0bb087e797f231a3f76ec4568479fe843fb1b23fbbe7dfac3cbf758f7e1a1a9416ea0f7a763fcfe2801cf76740', 11, '2020-12-08'),
(45, '56cd27eadda9a239e1fc292f6a4c3ed4e204ff0bb087e797f231a3f76ec4568479fe843fb1b23fbbe7dfac3cbf758f7e1a1a9416ea0f7a763fcfe2801cf76740', 11, '2020-12-08'),
(46, '56cd27eadda9a239e1fc292f6a4c3ed4e204ff0bb087e797f231a3f76ec4568479fe843fb1b23fbbe7dfac3cbf758f7e1a1a9416ea0f7a763fcfe2801cf76740', 11, '2020-12-08'),
(47, '56cd27eadda9a239e1fc292f6a4c3ed4e204ff0bb087e797f231a3f76ec4568479fe843fb1b23fbbe7dfac3cbf758f7e1a1a9416ea0f7a763fcfe2801cf76740', 11, '2020-12-08'),
(48, '767058230282a7bcc35a9913fae1944dce40330ae4a20927031419a591b1fc77b4984f277a84348651e44cef100ac957af7e5c5af6d80f3a4f842392e1478c47', 11, '2020-12-10'),
(49, 'c2677d5f25449d9fe502ec358388617dd4cc8a6b357ad38b4f85d217dd5c4050866c5907babd261002a5d6d42180fcebeee398a02098124de585db256e60ff90', 11, '2020-12-11'),
(50, 'cd4b1f75b392cf3cbb728dbc50bc81751588cdb5d471f67f8e735a9cc412510ea26fd737e20e05f349289b9c8ff9d3e60bbc306706d499e1cd4ea91cba1fc5ae', 11, '2021-01-01'),
(51, '50f4eedca7df078902b854e8abebda92a8fb0ccd6db4b68da63167cf3c6ad53575e738c7a405d4ac4fd9d11608572867f1612333a3a363c5a223e4d53bc5a363', 5, '2021-01-02'),
(52, 'c52d85408161fd7e5c7657d2ade26150e1317f99b303950ccb218c9781b2a98d966ccd823c9967c70f6c3e93d0612b859ddacecd74b6359a2bb6fb73e65e90e8', 5, '2021-01-02'),
(53, 'f59a0859b0e6109e5ec147af90a84bbf2aafc0c542197500c8aec6cf0b5e0d9e993e020e078aee2dd26a52cfd6fff519ff4ef3202508638642e23f910af14393', 5, '2021-01-02'),
(54, '0b66e60d8dd14ddafa0cf1b019f8e7f6d8a60e12e1bb8db93f38368cdb46d94f442ff76a209828dc8bce191cf62ddc0f31c64c60669f7235066bc138824bdcfb', 5, '2021-01-02'),
(55, 'c4998c46de70df1ead54ad6a902a5d18729c2d0694d56afa012f5a3f3a788588f460af508cee6af2cb0c3331b411e6deb25799c29381aa6a986b5518964e8d71', 5, '2021-01-02'),
(56, '844ada2f36070f27bde737a7ded4c7f479dc1acd5f4273b2f9c404118c117b80172e79914d2461b7c42f3ccdae46c59f807f9054fe508d0aabc9a35c624da3b8', 5, '2021-01-02'),
(57, '1ba6be31d3d5db3969de737bd68738773461492c30a12e701e1e7d261c1f5ba957c3cbbb6fe48441068276cda720705eda15eed462493a770012c8d87e974ce6', 5, '2021-01-02'),
(58, 'ae138cc06ae3e92b31702fd5d9630b9c63eac2b6e6a8f2fd3448c66a5b28943f42d5bc449d228b946f4465fde02f7e1925d559e4886878452caa4985d3a61093', 5, '2021-01-02'),
(59, 'b591343a60a3e9fa301201517afb1beeeb4dfa23c43812dc62e2405dfc1d881825036db08d4c18e2c205b6d601734aa02cfe7b3cac658b541472f1c04f81fbb0', 5, '2021-01-04'),
(60, 'c643ce309cb57d75f1d6ea2c90181cf06b99145c31d6d223524ce2b0a33ae1ad38e60c7179a614358db3c3970470fa66a039bfbdddb6f8effdc216777cd416e6', 5, '2021-01-09'),
(61, 'b7a221d2cadaeb6dad6894fd7ab9de766d1d661eaa53ab1419dc6e1fff38f24a62bfdcb75bff363580e47d13ad1e5a7c84163c8647e73990274c0cc9f2caf5fb', 5, '2021-01-09'),
(62, '259886dc097352e4f50c7457bf19f9748ba1001af7e907b7dde4417ef86b868933d4434f28f32b5e3146066c47d443055ab29200d57f4ea9338fc8c6beb9a837', 5, '2021-01-09'),
(63, '2cb8e33467dc0e8aca93ede687f3dcf8dbe5d3161a305863770dadc11c7c01331f63c979e53c437b876272e4cf8f11842c8adee1f541510b04a5ca6189d8444a', 57, '2021-01-24'),
(64, '7a8a693a4e36b997b1e6f6f3694de5ff7702af89a98012d04b82eb11cb2c1d93e7acbe991b235813347c132107c4e70a79c881d822fa12c0c4f1e7d4ca07c1df', 5, '2021-01-24');

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

DROP TABLE IF EXISTS `addresses`;
CREATE TABLE `addresses` (
  `id` int(11) NOT NULL,
  `user` int(11) DEFAULT NULL,
  `district` mediumint(100) DEFAULT NULL,
  `village` varchar(100) DEFAULT NULL,
  `country` mediumint(100) DEFAULT NULL,
  `phone_no` varchar(100) DEFAULT NULL,
  `box_no` varchar(100) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `street` varchar(100) DEFAULT NULL,
  `temporary_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `user`, `district`, `village`, `country`, `phone_no`, `box_no`, `company`, `email`, `street`, `temporary_id`) VALUES
(1, 3, 8, 'Kampala', 1, '0705098174', '44444', 'Boosted Technologies', 'ashrikan@gmail.com', 'Kampala', 0),
(2, 4, 28, 'Kampala', 0, '0705098174', '44444', 'Boosted Technologies', 'ashrikan@gmail.com', 'Kampala', 0),
(8, 11, 8, 'Kawempe', 1, '0705098174', '1234 Kampala', 'Tumusiime Ashiraff', 'ashrikan@gmail.com', 'Kampala', 8),
(9, 5, 8, 'gggg', 1, '+256784565201', 'ff', 'fff', 'ashrikan@gmail.com', 'fff', 9);

-- --------------------------------------------------------

--
-- Table structure for table `affiliate_commissions`
--

DROP TABLE IF EXISTS `affiliate_commissions`;
CREATE TABLE `affiliate_commissions` (
  `id` int(11) NOT NULL,
  `commission` tinyint(3) NOT NULL COMMENT 'comission in percentage',
  `date_added` date NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `affiliate_commissions`
--

INSERT INTO `affiliate_commissions` (`id`, `commission`, `date_added`, `status`) VALUES
(1, 5, '2020-12-11', 1);

-- --------------------------------------------------------

--
-- Table structure for table `affiliate_transactions`
--

DROP TABLE IF EXISTS `affiliate_transactions`;
CREATE TABLE `affiliate_transactions` (
  `id` int(11) NOT NULL,
  `user` int(11) DEFAULT NULL,
  `affiliate` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `temporary_id` int(11) DEFAULT NULL,
  `date_added` date NOT NULL,
  `date_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `affiliate_transactions`
--

INSERT INTO `affiliate_transactions` (`id`, `user`, `affiliate`, `discount`, `temporary_id`, `date_added`, `date_updated`, `order`) VALUES
(1, 11, 3, 5, 0, '2020-12-11', '2020-12-11 07:42:19', 33),
(2, 11, 3, 5, 0, '2020-12-11', '2020-12-11 08:05:58', 34);

-- --------------------------------------------------------

--
-- Table structure for table `affiliate_withdraws`
--

DROP TABLE IF EXISTS `affiliate_withdraws`;
CREATE TABLE `affiliate_withdraws` (
  `id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `date_of_request` datetime NOT NULL,
  `date_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` smallint(3) NOT NULL DEFAULT '0' COMMENT '0 is pending, 1 is approved, 3 is paid',
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `basic_info`
--

DROP TABLE IF EXISTS `basic_info`;
CREATE TABLE `basic_info` (
  `user` int(11) NOT NULL,
  `names` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `country` char(50) DEFAULT NULL,
  `dob` date NOT NULL,
  `theme` tinyint(1) NOT NULL,
  `gender` tinyint(1) NOT NULL,
  `continent` varchar(50) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `timezone` char(100) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `role` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1 is admin, 0 is client',
  `mail` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 is when welcome mail is not sent. 1 is sent welcome mail',
  `boo_cash` tinyint(1) NOT NULL DEFAULT '0',
  `affiliate_discount` tinyint(3) NOT NULL DEFAULT '0',
  `supplier` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `basic_info`
--

INSERT INTO `basic_info` (`user`, `names`, `image`, `country`, `dob`, `theme`, `gender`, `continent`, `city`, `email`, `timezone`, `id`, `username`, `role`, `mail`, `boo_cash`, `affiliate_discount`, `supplier`) VALUES
(11, 'Tumusiime Ashan', 'https://lh5.googleusercontent.com/-ssgsBzie4e8/AAAAAAAAAAI/AAAAAAAAAAA/AMZuucly5NY-JCL5M4LvrvVAnZBOLSAIWg/s96-c/photo.jpg', 'Uganda', '2000-01-01', 0, 1, 'Africa', 'Kampala', 'tumusiimeashan@gmail.com', NULL, 6, 'tumusiime-ashan-1', 1, 1, 1, 0, 1),
(5, 'Tumusiime Ashan', 'https://lh3.googleusercontent.com/a-/AOh14Gi3cnvrzRqkyRZa_fyYKrgRZJsz0pdHwWN5OvDP9Q=s96-c', 'Uganda', '1995-09-14', 1, 1, 'Africa', 'Kampala', 'ashrikan@gmail.com', NULL, 7, 'tumusiime-ashan-2', 1, 1, 0, 0, 0),
(57, 'Tumusiime Ashan', 'https://auth.boostedtechs.com/blank-man.jpg', 'Uganda', '1995-09-14', 0, 1, 'Africa', 'None', 'ashan@boostedtechs.com', NULL, 8, 'tumusiime-ashan-3', 1, 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `country` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `country`, `status`) VALUES
(1, 'Uganda', 1),
(2, 'Kenya', 0),
(3, 'Rwanda', 0),
(4, 'South Sudan', 0),
(5, 'Tanzania', 0),
(6, 'Democratic Republic of Congo', 0);

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

DROP TABLE IF EXISTS `districts`;
CREATE TABLE `districts` (
  `id` int(11) NOT NULL,
  `country` int(11) NOT NULL DEFAULT '1',
  `district` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `region` tinyint(4) NOT NULL DEFAULT '4',
  `delivery_amount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `country`, `district`, `status`, `region`, `delivery_amount`) VALUES
(1, 1, 'Buikwe', 1, 1, 6000),
(2, 1, 'Bukomansimbi  ', 1, 1, 6000),
(3, 1, 'Butambala', 1, 1, 6000),
(4, 1, 'Buvuma', 1, 1, 6000),
(5, 1, 'Gomba', 1, 1, 6000),
(6, 1, 'Kalangala', 1, 1, 6000),
(7, 1, 'Kalungu', 1, 1, 6000),
(8, 1, 'Kampala', 1, 1, 6000),
(9, 1, 'Kampala', 1, 1, 6000),
(10, 1, 'Kiboga', 1, 1, 6000),
(11, 1, 'Kyankwanzi', 1, 1, 6000),
(12, 1, 'Luweero', 1, 1, 6000),
(13, 1, 'Lwengo', 1, 1, 6000),
(14, 1, 'Lyantonde', 1, 1, 6000),
(15, 1, 'Masaka', 1, 1, 6000),
(16, 1, 'Mityana', 1, 1, 6000),
(17, 1, 'Mpigi', 1, 1, 6000),
(18, 1, 'Mubende', 1, 1, 6000),
(19, 1, 'Mukono', 1, 1, 6000),
(20, 1, 'Nakaseke', 1, 1, 6000),
(21, 1, 'Nakasongola', 1, 1, 6000),
(22, 1, 'Rakai', 1, 1, 6000),
(23, 1, 'Sembabule', 1, 1, 6000),
(24, 1, 'Wakiso', 1, 1, 6000),
(25, 1, 'Amuria', 1, 2, 12000),
(26, 1, 'Budaka', 1, 2, 12000),
(27, 1, 'Bududa', 1, 2, 12000),
(28, 1, 'Bugiri', 1, 2, 12000),
(29, 1, 'Bukedea', 1, 2, 12000),
(30, 1, 'Bukwa', 1, 2, 12000),
(31, 1, 'Bulambuli', 1, 2, 12000),
(32, 1, 'Busia', 1, 2, 12000),
(33, 1, 'Butaleja', 1, 2, 12000),
(34, 1, 'Buyende', 1, 2, 12000),
(35, 1, 'Iganga', 1, 2, 12000),
(36, 1, 'Jinja', 1, 2, 12000),
(37, 1, 'Kaberamaido', 1, 2, 12000),
(38, 1, 'Kaliro', 1, 2, 12000),
(39, 1, 'Kamuli', 1, 2, 12000),
(40, 1, 'Kapchorwa', 1, 2, 12000),
(41, 1, 'Katakwi', 1, 2, 12000),
(42, 1, 'Kibuku', 1, 2, 12000),
(43, 1, 'Kumi', 1, 2, 12000),
(44, 1, 'Kween', 1, 2, 12000),
(45, 1, 'Luuka', 1, 2, 12000),
(46, 1, 'Manafwa', 1, 2, 12000),
(47, 1, 'Mayuge', 1, 2, 12000),
(48, 1, 'Mbale', 1, 2, 12000),
(49, 1, 'Namayingo', 1, 2, 12000),
(50, 1, 'Namutumba', 1, 2, 12000),
(51, 1, 'Ngora', 1, 2, 12000),
(52, 1, 'Pallisa', 1, 2, 12000),
(53, 1, 'Serere', 1, 2, 12000),
(54, 1, 'Sironko', 1, 2, 12000),
(55, 1, 'Soroti', 1, 2, 12000),
(56, 1, 'Tororo', 1, 2, 12000),
(57, 1, 'Abim', 1, 3, 15000),
(58, 1, 'Adjumani', 1, 3, 15000),
(59, 1, 'Agago', 1, 3, 15000),
(60, 1, 'Alebtong', 1, 3, 15000),
(61, 1, 'Amolatar', 1, 3, 15000),
(62, 1, 'Amudat', 1, 3, 15000),
(63, 1, 'Amuru', 1, 3, 15000),
(64, 1, 'Apac', 1, 3, 15000),
(65, 1, 'Arua', 1, 3, 15000),
(66, 1, 'Dokolo', 1, 3, 15000),
(67, 1, 'Gulu', 1, 3, 15000),
(68, 1, 'Kaabong', 1, 3, 15000),
(69, 1, 'Kitgum', 1, 3, 15000),
(70, 1, 'Koboko', 1, 3, 15000),
(71, 1, 'Kole', 1, 3, 15000),
(72, 1, 'Kotido', 1, 3, 15000),
(73, 1, 'Lamwo', 1, 3, 15000),
(74, 1, 'Lira', 1, 3, 15000),
(75, 1, 'Maracha', 1, 3, 15000),
(76, 1, 'Moroto', 1, 3, 15000),
(77, 1, 'Moyo', 1, 3, 15000),
(78, 1, 'Nakapiripirit', 1, 3, 15000),
(79, 1, 'Napak', 1, 3, 15000),
(80, 1, 'Nebbi', 1, 3, 15000),
(81, 1, 'Nwoya', 1, 3, 15000),
(82, 1, 'Otuke', 1, 3, 15000),
(83, 1, 'Oyam', 1, 3, 15000),
(84, 1, 'Pader', 1, 3, 15000),
(85, 1, 'Yumbe', 1, 3, 15000),
(86, 1, 'Zombo', 1, 3, 15000),
(87, 1, 'Buhweju', 1, 4, 15000),
(88, 1, 'Buliisa', 1, 4, 15000),
(89, 1, 'Bundibugyo', 1, 4, 15000),
(90, 1, 'Bushenyi', 1, 4, 15000),
(91, 1, 'Hoima', 1, 4, 15000),
(92, 1, 'Ibanda', 1, 4, 15000),
(93, 1, 'Isingiro', 1, 4, 15000),
(94, 1, 'Kabale', 1, 4, 15000),
(95, 1, 'Kabarole', 1, 4, 15000),
(96, 1, 'Kamwenge', 1, 4, 15000),
(97, 1, 'Kanungu', 1, 4, 15000),
(98, 1, 'Kasese', 1, 4, 15000),
(99, 1, 'Kibaale', 1, 4, 15000),
(100, 1, 'Kiruhura', 1, 4, 15000),
(101, 1, 'Kiryandongo', 1, 4, 15000),
(102, 1, 'Kisoro', 1, 4, 15000),
(103, 1, 'Kyegegwa', 1, 4, 15000),
(104, 1, 'Kyenjojo', 1, 4, 15000),
(105, 1, 'Masindi', 1, 4, 15000),
(106, 1, 'Mbarara', 1, 4, 15000),
(107, 1, 'Mitooma', 1, 4, 15000),
(108, 1, 'Ntoroko', 1, 4, 15000),
(109, 1, 'Ntungamo', 1, 4, 15000),
(110, 1, 'Rubirizi', 1, 4, 15000),
(111, 1, 'Rukungiri', 1, 4, 15000),
(112, 1, 'Sheema', 1, 4, 15000);

-- --------------------------------------------------------

--
-- Table structure for table `mail_subscription`
--

DROP TABLE IF EXISTS `mail_subscription`;
CREATE TABLE `mail_subscription` (
  `id` int(11) NOT NULL,
  `email` char(100) NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mail_subscription`
--

INSERT INTO `mail_subscription` (`id`, `email`, `date_added`) VALUES
(4, 'ashrikan@gmail.com', '2020-12-01 11:50:25');

-- --------------------------------------------------------

--
-- Table structure for table `ordered_items`
--

DROP TABLE IF EXISTS `ordered_items`;
CREATE TABLE `ordered_items` (
  `id` int(11) NOT NULL,
  `order` int(11) NOT NULL,
  `product` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `color` int(11) DEFAULT NULL,
  `size` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ordered_items`
--

INSERT INTO `ordered_items` (`id`, `order`, `product`, `qty`, `amount`, `color`, `size`) VALUES
(11, 8, 3, 1, 4000, NULL, NULL),
(12, 8, 7, 1, 4000, 2, 1),
(13, 9, 7, 1, 4000, 2, 1),
(14, 10, 11, 1, 40000, 1, 1),
(15, 11, 6, 1, 4000, 2, 1),
(16, 11, 7, 1, 4000, 2, 1),
(17, 11, 11, 2, 40000, 1, 1),
(18, 11, 12, 2, 30000, 3, 10),
(19, 12, 9, 1, 1000000, 1, NULL),
(20, 13, 10, 1, 1500000, 5, NULL),
(21, 14, 14, 1, 40000, 5, 12),
(22, 15, 12, 1, 30000, 3, 10),
(23, 15, 13, 1, 3000000, 1, 10),
(24, 16, 10, 1, 1500000, 5, NULL),
(25, 17, 12, 1, 30000, 3, 10),
(26, 18, 12, 1, 30000, 3, 10),
(27, 18, 13, 1, 3000000, 1, 10),
(28, 19, 11, 2, 40000, 1, 1),
(29, 20, 14, 1, 40000, 5, 12),
(30, 21, 12, 1, 30000, 3, 10),
(31, 22, 14, 1, 40000, 5, 12),
(32, 34, 12, 1, 30000, 3, 10),
(33, 35, 13, 1, 3000000, 1, 10),
(34, 36, 14, 1, 40000, 5, 12);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user` int(11) DEFAULT NULL,
  `order_state` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 is pending, 1 is submited, 2 pending_delivery, 3 is delivered, 4 is returned',
  `amount` int(11) NOT NULL,
  `date_created` datetime NOT NULL,
  `payment_confirmation` tinyint(1) NOT NULL DEFAULT '0',
  `date_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `mail` tinyint(1) NOT NULL DEFAULT '0',
  `delivery_district` smallint(200) DEFAULT NULL,
  `temporary_id` int(11) DEFAULT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user`, `order_state`, `amount`, `date_created`, `payment_confirmation`, `date_updated`, `mail`, `delivery_district`, `temporary_id`, `description`) VALUES
(8, 4, 1, 11000, '2020-11-28 00:00:00', 1, '2020-12-01 12:58:36', 1, NULL, NULL, ''),
(9, 4, 1, 7000, '2020-11-28 00:00:00', 1, '2020-12-01 12:58:48', 1, NULL, NULL, ''),
(10, 4, 1, 43000, '2020-12-01 00:00:00', 1, '2020-12-01 12:59:00', 1, NULL, NULL, ''),
(11, 3, 1, 151000, '2020-12-01 00:00:00', 1, '2020-12-11 13:55:34', 1, NULL, NULL, ''),
(12, 4, 0, 1003000, '2020-12-03 05:55:52', 0, '2020-12-03 05:55:52', 0, 57, NULL, ''),
(13, 4, 0, 1503000, '2020-12-03 05:58:09', 0, '2020-12-03 05:58:09', 0, 57, NULL, ''),
(14, 4, 0, 43000, '2020-12-04 03:44:02', 0, '2020-12-04 03:44:02', 0, 57, NULL, ''),
(15, 11, 1, 3033000, '2020-12-08 14:13:36', 1, '2020-12-11 13:55:46', 1, 8, 8, 'How much is other products.. Can we get them for free'),
(16, 11, 1, 1503000, '2020-12-08 14:17:44', 1, '2020-12-11 13:55:57', 1, 8, 8, 'Here is the rate. I like your products'),
(17, 11, 1, 33000, '2020-12-08 17:46:29', 1, '2020-12-11 13:56:08', 1, 8, 0, 'I need this product is awesome.. I just need it for good'),
(18, 11, 1, 3033000, '2020-12-08 18:11:41', 1, '2020-12-11 13:56:21', 1, 8, 0, 'New changes here'),
(19, 11, 1, 83000, '2020-12-08 18:53:21', 1, '2020-12-11 13:56:31', 1, 8, 0, 'New changes'),
(20, 11, 1, 46000, '2020-12-08 19:06:00', 1, '2020-12-08 19:06:43', 0, 8, 0, 'new orders come here'),
(21, 11, 1, 36000, '2020-12-08 19:24:04', 1, '2020-12-08 19:25:24', 0, 8, 0, ''),
(22, 11, 1, 46000, '2020-12-10 21:13:50', 1, '2020-12-10 21:14:35', 0, 8, 0, '6660'),
(23, 11, 0, 36000, '2020-12-11 07:14:36', 0, '2020-12-11 07:14:36', 0, 8, 0, 'hey, new order'),
(24, 11, 0, 36000, '2020-12-11 07:16:16', 0, '2020-12-11 07:16:16', 0, 8, 0, 'new orders'),
(25, 11, 0, 36000, '2020-12-11 07:16:32', 0, '2020-12-11 07:16:32', 0, 8, 0, 'new orders'),
(26, 11, 0, 36000, '2020-12-11 07:18:14', 0, '2020-12-11 07:18:14', 0, 8, 0, 'new orders'),
(27, 11, 0, 36000, '2020-12-11 07:33:21', 0, '2020-12-11 07:33:21', 0, 8, 0, 'new orders'),
(28, 11, 0, 36000, '2020-12-11 07:33:34', 0, '2020-12-11 07:33:34', 0, 8, 0, 'new orders'),
(29, 11, 0, 36000, '2020-12-11 07:34:43', 0, '2020-12-11 07:34:43', 0, 8, 0, ''),
(30, 11, 0, 36000, '2020-12-11 07:36:31', 0, '2020-12-11 07:36:31', 0, 8, 0, 'new changes'),
(31, 11, 0, 36000, '2020-12-11 07:39:38', 0, '2020-12-11 07:39:38', 0, 8, 0, 'new changes'),
(32, 11, 0, 36000, '2020-12-11 07:40:50', 0, '2020-12-11 07:40:50', 0, 8, 0, 'new changes'),
(33, 11, 0, 36000, '2020-12-11 07:42:19', 0, '2020-12-11 07:42:19', 0, 8, 0, 'new changes'),
(34, 11, 1, 36000, '2020-12-11 08:05:58', 1, '2020-12-11 08:06:42', 0, 8, 0, 'here is the order from many orders'),
(35, 5, 0, 3006000, '2021-01-04 23:31:17', 0, '2021-01-09 05:18:52', 0, 8, 9, ''),
(36, 5, 0, 46000, '2021-01-05 10:06:30', 0, '2021-01-09 05:18:52', 0, 8, 9, '');

-- --------------------------------------------------------

--
-- Table structure for table `order_keys`
--

DROP TABLE IF EXISTS `order_keys`;
CREATE TABLE `order_keys` (
  `id` int(11) NOT NULL,
  `order` int(11) NOT NULL,
  `order_ref` varchar(100) NOT NULL,
  `user` int(11) NOT NULL,
  `date_created` date NOT NULL,
  `response_data` text NOT NULL,
  `temporary_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_keys`
--

INSERT INTO `order_keys` (`id`, `order`, `order_ref`, `user`, `date_created`, `response_data`, `temporary_id`) VALUES
(2, 8, 'd963e49a787fac72857a26ec3453d7cf_ref_8_4', 4, '2020-11-28', '{\"status\":\"success\",\"message\":\"Transaction fetched successfully\",\"data\":{\"id\":1732423,\"tx_ref\":\"d963e49a787fac72857a26ec3453d7cf_ref_8_4\",\"flw_ref\":\"FLW-MOCK-6793be1074ed7f95fddbf01621aaab1d\",\"device_fingerprint\":\"cc68e3dd0da4befc759f5a60b9fb27fd\",\"amount\":11000,\"currency\":\"UGX\",\"charged_amount\":11000,\"app_fee\":418,\"merchant_fee\":0,\"processor_response\":\"Please enter the OTP sent to your mobile number 080****** and email te**@rave**.com\",\"auth_model\":\"NOAUTH\",\"ip\":\"154.229.85.148\",\"narration\":\"CARD Transaction \",\"status\":\"successful\",\"payment_type\":\"card\",\"created_at\":\"2020-11-28T19:40:36.000Z\",\"account_id\":661746,\"card\":{\"first_6digits\":\"418742\",\"last_4digits\":\"4246\",\"issuer\":\"ACCESS BANK PLC DEBIT CLASSIC\",\"country\":\"NIGERIA NG\",\"type\":\"VISA\",\"token\":\"flw-t1nf-f126a5ab6b5550bb1938f7f4fe3c7fbb-m03k\",\"expiry\":\"09/32\"},\"meta\":{\"consumer_id\":\"4\",\"consumer_mac\":\"92a3-912ba-1192a\"},\"amount_settled\":10582,\"customer\":{\"id\":536749,\"name\":\"Tumusiime Ashan\",\"phone_number\":\"256705098174\",\"email\":\"ashrikan@gmail.com\",\"created_at\":\"2020-11-28T12:39:57.000Z\"}}}', NULL),
(3, 9, 'f204ceedfd061563ac919b791e69d1ab_ref_9_4', 4, '2020-11-28', '{\"status\":\"success\",\"message\":\"Transaction fetched successfully\",\"data\":{\"id\":1732476,\"tx_ref\":\"f204ceedfd061563ac919b791e69d1ab_ref_9_4\",\"flw_ref\":\"FLW-MOCK-ae5c8bd9a1549967acf3a66da357d9c8\",\"device_fingerprint\":\"cc68e3dd0da4befc759f5a60b9fb27fd\",\"amount\":7000,\"currency\":\"UGX\",\"charged_amount\":7000,\"app_fee\":266,\"merchant_fee\":0,\"processor_response\":\"Please enter the OTP sent to your mobile number 080****** and email te**@rave**.com\",\"auth_model\":\"NOAUTH\",\"ip\":\"154.229.85.148\",\"narration\":\"CARD Transaction \",\"status\":\"successful\",\"payment_type\":\"card\",\"created_at\":\"2020-11-28T20:27:20.000Z\",\"account_id\":661746,\"card\":{\"first_6digits\":\"418742\",\"last_4digits\":\"4246\",\"issuer\":\"ACCESS BANK PLC DEBIT CLASSIC\",\"country\":\"NIGERIA NG\",\"type\":\"VISA\",\"token\":\"flw-t1nf-f126a5ab6b5550bb1938f7f4fe3c7fbb-m03k\",\"expiry\":\"09/32\"},\"meta\":{\"consumer_id\":\"4\",\"consumer_mac\":\"92a3-912ba-1192a\"},\"amount_settled\":6734,\"customer\":{\"id\":536749,\"name\":\"Tumusiime Ashan\",\"phone_number\":\"256705098174\",\"email\":\"ashrikan@gmail.com\",\"created_at\":\"2020-11-28T12:39:57.000Z\"}}}', NULL),
(4, 10, '7a95670edb87130b9fd6596c24bc77dd_ref_10_4', 4, '2020-12-01', '{\"status\":\"success\",\"message\":\"Transaction fetched successfully\",\"data\":{\"id\":1740156,\"tx_ref\":\"7a95670edb87130b9fd6596c24bc77dd_ref_10_4\",\"flw_ref\":\"FLW-MOCK-cbe28399012386eac1e5124787a8b6f3\",\"device_fingerprint\":\"cc68e3dd0da4befc759f5a60b9fb27fd\",\"amount\":43000,\"currency\":\"UGX\",\"charged_amount\":43000,\"app_fee\":1634,\"merchant_fee\":0,\"processor_response\":\"Please enter the OTP sent to your mobile number 080****** and email te**@rave**.com\",\"auth_model\":\"NOAUTH\",\"ip\":\"154.228.252.226\",\"narration\":\"CARD Transaction \",\"status\":\"successful\",\"payment_type\":\"card\",\"created_at\":\"2020-12-01T10:05:06.000Z\",\"account_id\":661746,\"card\":{\"first_6digits\":\"418742\",\"last_4digits\":\"4246\",\"issuer\":\"ACCESS BANK PLC DEBIT CLASSIC\",\"country\":\"NIGERIA NG\",\"type\":\"VISA\",\"token\":\"flw-t1nf-f126a5ab6b5550bb1938f7f4fe3c7fbb-m03k\",\"expiry\":\"09/32\"},\"meta\":{\"consumer_id\":\"4\",\"consumer_mac\":\"92a3-912ba-1192a\"},\"amount_settled\":41366,\"customer\":{\"id\":536749,\"name\":\"Tumusiime Ashan\",\"phone_number\":\"256705098174\",\"email\":\"ashrikan@gmail.com\",\"created_at\":\"2020-11-28T12:39:57.000Z\"}}}', NULL),
(5, 11, '97da699ac4abf2ad8de06209826fe3a1_ref_11_3', 3, '2020-12-01', '{\"status\":\"success\",\"message\":\"Transaction fetched successfully\",\"data\":{\"id\":1741223,\"tx_ref\":\"97da699ac4abf2ad8de06209826fe3a1_ref_11_3\",\"flw_ref\":\"FLW-MOCK-874672a955ec8b8a492b1050e935fe42\",\"device_fingerprint\":\"4495c893366c087c9cb589157ee908c4\",\"amount\":151000,\"currency\":\"UGX\",\"charged_amount\":151000,\"app_fee\":5738,\"merchant_fee\":0,\"processor_response\":\"Please enter the OTP sent to your mobile number 080****** and email te**@rave**.com\",\"auth_model\":\"NOAUTH\",\"ip\":\"102.84.71.117\",\"narration\":\"CARD Transaction \",\"status\":\"successful\",\"payment_type\":\"card\",\"created_at\":\"2020-12-01T18:50:49.000Z\",\"account_id\":661746,\"card\":{\"first_6digits\":\"418742\",\"last_4digits\":\"4246\",\"issuer\":\"ACCESS BANK PLC DEBIT CLASSIC\",\"country\":\"NIGERIA NG\",\"type\":\"VISA\",\"token\":\"flw-t1nf-9475b00314c8e4378ab5fa744a03087f-m03k\",\"expiry\":\"09/32\"},\"meta\":{\"consumer_id\":\"3\",\"consumer_mac\":\"92a3-912ba-1192a\"},\"amount_settled\":145262,\"customer\":{\"id\":538640,\"name\":\"Tumusiime Ashiraff\",\"phone_number\":\"+256784565201\",\"email\":\"ashrikan@gmail.com\",\"created_at\":\"2020-12-01T18:50:48.000Z\"}}}', NULL),
(6, 12, 'a155f46d05fc5d623dbccb0d8a304463_ref_12_4', 4, '2020-12-03', '', NULL),
(7, 13, '1438dcbded1efaf3648f1bf753a2b84e_ref_13_4', 4, '2020-12-03', '', NULL),
(8, 14, '18b5fca36797c472b8d5349a7eb34497_ref_14_4', 4, '2020-12-04', '', NULL),
(9, 15, '47627a9e416c37e0781334dba254d80d_ref_15_', 11, '2020-12-08', '{\"status\":\"success\",\"message\":\"Transaction fetched successfully\",\"data\":{\"id\":1756237,\"tx_ref\":\"47627a9e416c37e0781334dba254d80d_ref_15_\",\"flw_ref\":\"flwm3s4m0c1607456069994\",\"device_fingerprint\":\"cc68e3dd0da4befc759f5a60b9fb27fd\",\"amount\":3033000,\"currency\":\"UGX\",\"charged_amount\":3033000,\"app_fee\":90990,\"merchant_fee\":0,\"processor_response\":\"Approved\",\"auth_model\":\"MOBILEMONEY\",\"ip\":\"102.87.177.80\",\"narration\":\"Boosted Technologies UG\",\"status\":\"successful\",\"payment_type\":\"mobilemoneyug\",\"created_at\":\"2020-12-08T19:34:29.000Z\",\"account_id\":661746,\"meta\":{\"consumer_id\":\"11\",\"consumer_mac\":\"92a3-912ba-1192a\"},\"amount_settled\":2942010,\"customer\":{\"id\":540342,\"name\":\"Tumusiime Ashan\",\"phone_number\":\"0757074590\",\"email\":\"ashrikan@gmail.com\",\"created_at\":\"2020-12-04T11:04:04.000Z\"}}}', 8),
(10, 16, 'af974f1e949e72bafeb93d33be7846e7_ref_16__8', 11, '2020-12-08', '{\"status\":\"success\",\"message\":\"Transaction fetched successfully\",\"data\":{\"id\":1755792,\"tx_ref\":\"af974f1e949e72bafeb93d33be7846e7_ref_16__8\",\"flw_ref\":\"flwm3s4m0c1607437107509\",\"device_fingerprint\":\"cc68e3dd0da4befc759f5a60b9fb27fd\",\"amount\":1506000,\"currency\":\"UGX\",\"charged_amount\":1506000,\"app_fee\":45180,\"merchant_fee\":0,\"processor_response\":\"Approved\",\"auth_model\":\"MOBILEMONEY\",\"ip\":\"102.87.177.80\",\"narration\":\"Boosted Technologies UG\",\"status\":\"successful\",\"payment_type\":\"mobilemoneyug\",\"created_at\":\"2020-12-08T14:18:26.000Z\",\"account_id\":661746,\"meta\":{\"consumer_id\":\"8_temp\",\"consumer_mac\":\"92a3-912ba-1192a\"},\"amount_settled\":1460820,\"customer\":{\"id\":542419,\"name\":\"Tumusiime Ashiraff\",\"phone_number\":\"0757074590\",\"email\":\"ashrikan@gmail.com\",\"created_at\":\"2020-12-08T14:14:18.000Z\"}}}', 8),
(11, 17, '705f4aef078cee5e8a40d71ccb7fab5e_ref_17_11_', 11, '2020-12-08', '{\"status\":\"success\",\"message\":\"Transaction fetched successfully\",\"data\":{\"id\":1756104,\"tx_ref\":\"705f4aef078cee5e8a40d71ccb7fab5e_ref_17_11_\",\"flw_ref\":\"flwm3s4m0c1607449645566\",\"device_fingerprint\":\"cc68e3dd0da4befc759f5a60b9fb27fd\",\"amount\":36000,\"currency\":\"UGX\",\"charged_amount\":36000,\"app_fee\":1080,\"merchant_fee\":0,\"processor_response\":\"Approved\",\"auth_model\":\"MOBILEMONEY\",\"ip\":\"102.87.177.80\",\"narration\":\"Boosted Technologies UG\",\"status\":\"successful\",\"payment_type\":\"mobilemoneyug\",\"created_at\":\"2020-12-08T17:47:24.000Z\",\"account_id\":661746,\"meta\":{\"consumer_id\":\"11\",\"consumer_mac\":\"92a3-912ba-1192a\"},\"amount_settled\":34920,\"customer\":{\"id\":540342,\"name\":\"Tumusiime Ashan\",\"phone_number\":\"0757074590\",\"email\":\"ashrikan@gmail.com\",\"created_at\":\"2020-12-04T11:04:04.000Z\"}}}', 0),
(12, 18, 'cfdc6200dc3127024614af10a8920085_ref_18_11_', 11, '2020-12-08', '{\"status\":\"success\",\"message\":\"Transaction fetched successfully\",\"data\":{\"id\":1756124,\"tx_ref\":\"cfdc6200dc3127024614af10a8920085_ref_18_11_\",\"flw_ref\":\"flwm3s4m0c1607451143448\",\"device_fingerprint\":\"cc68e3dd0da4befc759f5a60b9fb27fd\",\"amount\":3036000,\"currency\":\"UGX\",\"charged_amount\":3036000,\"app_fee\":91080,\"merchant_fee\":0,\"processor_response\":\"Approved\",\"auth_model\":\"MOBILEMONEY\",\"ip\":\"102.87.177.80\",\"narration\":\"Boosted Technologies UG\",\"status\":\"successful\",\"payment_type\":\"mobilemoneyug\",\"created_at\":\"2020-12-08T18:12:22.000Z\",\"account_id\":661746,\"meta\":{\"consumer_id\":\"11\",\"consumer_mac\":\"92a3-912ba-1192a\"},\"amount_settled\":2944920,\"customer\":{\"id\":540342,\"name\":\"Tumusiime Ashan\",\"phone_number\":\"0757074590\",\"email\":\"ashrikan@gmail.com\",\"created_at\":\"2020-12-04T11:04:04.000Z\"}}}', 0),
(13, 19, '72d3b1178a04022a59e103dbfbd7a933_ref_19_11_', 11, '2020-12-08', '{\"status\":\"success\",\"message\":\"Transaction fetched successfully\",\"data\":{\"id\":1756181,\"tx_ref\":\"72d3b1178a04022a59e103dbfbd7a933_ref_19_11_\",\"flw_ref\":\"flwm3s4m0c1607453641198\",\"device_fingerprint\":\"cc68e3dd0da4befc759f5a60b9fb27fd\",\"amount\":86000,\"currency\":\"UGX\",\"charged_amount\":86000,\"app_fee\":2580,\"merchant_fee\":0,\"processor_response\":\"Approved\",\"auth_model\":\"MOBILEMONEY\",\"ip\":\"102.87.177.80\",\"narration\":\"Boosted Technologies UG\",\"status\":\"successful\",\"payment_type\":\"mobilemoneyug\",\"created_at\":\"2020-12-08T18:54:00.000Z\",\"account_id\":661746,\"meta\":{\"consumer_id\":\"11\",\"consumer_mac\":\"92a3-912ba-1192a\"},\"amount_settled\":83420,\"customer\":{\"id\":540342,\"name\":\"Tumusiime Ashan\",\"phone_number\":\"0757074590\",\"email\":\"ashrikan@gmail.com\",\"created_at\":\"2020-12-04T11:04:04.000Z\"}}}', 0),
(14, 20, 'bc172b92885a6ea417cf2556fb467bd8_ref_20_11_', 11, '2020-12-08', '{\"status\":\"success\",\"message\":\"Transaction fetched successfully\",\"data\":{\"id\":1756203,\"tx_ref\":\"bc172b92885a6ea417cf2556fb467bd8_ref_20_11_\",\"flw_ref\":\"flwm3s4m0c1607454393391\",\"device_fingerprint\":\"cc68e3dd0da4befc759f5a60b9fb27fd\",\"amount\":46000,\"currency\":\"UGX\",\"charged_amount\":46000,\"app_fee\":1380,\"merchant_fee\":0,\"processor_response\":\"Approved\",\"auth_model\":\"MOBILEMONEY\",\"ip\":\"102.87.177.80\",\"narration\":\"Boosted Technologies UG\",\"status\":\"successful\",\"payment_type\":\"mobilemoneyug\",\"created_at\":\"2020-12-08T19:06:32.000Z\",\"account_id\":661746,\"meta\":{\"consumer_id\":\"11\",\"consumer_mac\":\"92a3-912ba-1192a\"},\"amount_settled\":44620,\"customer\":{\"id\":540342,\"name\":\"Tumusiime Ashan\",\"phone_number\":\"0757074590\",\"email\":\"ashrikan@gmail.com\",\"created_at\":\"2020-12-04T11:04:04.000Z\"}}}', 0),
(15, 21, '4277e8bbefb6f18809816d67b3c5eecb_ref_21_11_', 11, '2020-12-08', '{\"status\":\"success\",\"message\":\"Transaction fetched successfully\",\"data\":{\"id\":1756224,\"tx_ref\":\"4277e8bbefb6f18809816d67b3c5eecb_ref_21_11_\",\"flw_ref\":\"flwm3s4m0c1607455513137\",\"device_fingerprint\":\"cc68e3dd0da4befc759f5a60b9fb27fd\",\"amount\":36000,\"currency\":\"UGX\",\"charged_amount\":36000,\"app_fee\":1080,\"merchant_fee\":0,\"processor_response\":\"Approved\",\"auth_model\":\"MOBILEMONEY\",\"ip\":\"102.87.177.80\",\"narration\":\"Boosted Technologies UG\",\"status\":\"successful\",\"payment_type\":\"mobilemoneyug\",\"created_at\":\"2020-12-08T19:25:12.000Z\",\"account_id\":661746,\"meta\":{\"consumer_id\":\"11\",\"consumer_mac\":\"92a3-912ba-1192a\"},\"amount_settled\":34920,\"customer\":{\"id\":540342,\"name\":\"Tumusiime Ashan\",\"phone_number\":\"0757074590\",\"email\":\"ashrikan@gmail.com\",\"created_at\":\"2020-12-04T11:04:04.000Z\"}}}', 0),
(16, 22, '4f6444c947590a9f54c2ebf505f1a81c_ref_22_11_', 11, '2020-12-10', '{\"status\":\"success\",\"message\":\"Transaction fetched successfully\",\"data\":{\"id\":1761122,\"tx_ref\":\"4f6444c947590a9f54c2ebf505f1a81c_ref_22_11_\",\"flw_ref\":\"flwm3s4m0c1607634866004\",\"device_fingerprint\":\"cc68e3dd0da4befc759f5a60b9fb27fd\",\"amount\":46000,\"currency\":\"UGX\",\"charged_amount\":46000,\"app_fee\":1380,\"merchant_fee\":0,\"processor_response\":\"Approved\",\"auth_model\":\"MOBILEMONEY\",\"ip\":\"154.227.220.193\",\"narration\":\"Boosted Technologies UG\",\"status\":\"successful\",\"payment_type\":\"mobilemoneyug\",\"created_at\":\"2020-12-10T21:14:25.000Z\",\"account_id\":661746,\"meta\":{\"consumer_id\":\"11\",\"consumer_mac\":\"92a3-912ba-1192a\"},\"amount_settled\":44620,\"customer\":{\"id\":540342,\"name\":\"Tumusiime Ashan\",\"phone_number\":\"0757074590\",\"email\":\"ashrikan@gmail.com\",\"created_at\":\"2020-12-04T11:04:04.000Z\"}}}', 0),
(17, 34, 'a702ff0577e9fdf8e1ba667419ca5e64_ref_34_11_', 11, '2020-12-11', '{\"status\":\"success\",\"message\":\"Transaction fetched successfully\",\"data\":{\"id\":1761965,\"tx_ref\":\"a702ff0577e9fdf8e1ba667419ca5e64_ref_34_11_\",\"flw_ref\":\"flwm3s4m0c1607673991964\",\"device_fingerprint\":\"cc68e3dd0da4befc759f5a60b9fb27fd\",\"amount\":36000,\"currency\":\"UGX\",\"charged_amount\":36000,\"app_fee\":1080,\"merchant_fee\":0,\"processor_response\":\"Approved\",\"auth_model\":\"MOBILEMONEY\",\"ip\":\"154.227.220.193\",\"narration\":\"Boosted Technologies UG\",\"status\":\"successful\",\"payment_type\":\"mobilemoneyug\",\"created_at\":\"2020-12-11T08:06:31.000Z\",\"account_id\":661746,\"meta\":{\"consumer_id\":\"11\",\"consumer_mac\":\"92a3-912ba-1192a\"},\"amount_settled\":34920,\"customer\":{\"id\":540342,\"name\":\"Tumusiime Ashan\",\"phone_number\":\"0757074590\",\"email\":\"ashrikan@gmail.com\",\"created_at\":\"2020-12-04T11:04:04.000Z\"}}}', 0),
(18, 35, 'dd7cfe6c9fec6c182ff9e019e310f57a_ref_35__9', 5, '2021-01-04', '', 9),
(19, 36, '34c160ec9ed469f8d52ed32f2799d14c_ref_36__9', 5, '2021-01-05', '', 9);

-- --------------------------------------------------------

--
-- Table structure for table `payment_keys`
--

DROP TABLE IF EXISTS `payment_keys`;
CREATE TABLE `payment_keys` (
  `id` int(11) NOT NULL,
  `production` varchar(100) NOT NULL,
  `testing` varchar(100) NOT NULL,
  `secret_key` varchar(100) NOT NULL,
  `testing_key` varchar(100) NOT NULL,
  `encryption` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `payment_keys`
--

INSERT INTO `payment_keys` (`id`, `production`, `testing`, `secret_key`, `testing_key`, `encryption`) VALUES
(1, 'FLWPUBK-bede5c47dc0f59b4cacb66d7059397c8-X', 'FLWPUBK_TEST-ea8276349f78a208c5e3231a1ba5487f-X', 'FLWSECK-93313b8a0e29881936a43d55e4fc2ffc-X', 'FLWSECK_TEST-11bbd37698ba8bd689217fc19ff5629c-X', '93313b8a0e29c2746b3a6806');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `metric` smallint(6) DEFAULT NULL,
  `currency` smallint(6) NOT NULL,
  `description` text NOT NULL,
  `summary` tinytext NOT NULL,
  `price_1` int(11) NOT NULL,
  `price_2` int(11) NOT NULL,
  `feature_photo` varchar(130) DEFAULT NULL,
  `rates` int(11) DEFAULT NULL,
  `date_added` date NOT NULL,
  `date_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `sub_category` int(11) NOT NULL,
  `supplier` int(11) NOT NULL,
  `url` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `in_stock` tinyint(1) NOT NULL DEFAULT '1',
  `keywords` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `metric`, `currency`, `description`, `summary`, `price_1`, `price_2`, `feature_photo`, `rates`, `date_added`, `date_updated`, `user`, `category`, `sub_category`, `supplier`, `url`, `status`, `in_stock`, `keywords`) VALUES
(3, 'Alovera Big 4 edit', 10, 8, 'Big description three', 'small description two', 4000, 0, '0f7a17f0a57493022de471ee0cf5fa71.png', NULL, '2020-11-26', '2020-11-27 05:43:31', 3, 1, 5, 1, 'alovera-big-4', 1, 1, ''),
(4, 'Super fast Charger', 7, 7, 'Super fast charger is the charger for everyone to enjoy charging', 'Super fast charger', 3000, 0, '2b9f65c286e280d3ba553d6a2c912f95.jpg', NULL, '2020-11-24', '2020-11-27 05:10:16', 3, 1, 4, 3, 'super-fast-charger', 1, 1, ''),
(5, 'Beard Oil', 6, 8, 'Make the best of the beards on your face with our beard oil,', 'Beard oil is for men who do not have beards', 4000, 0, NULL, NULL, '2020-11-27', '2020-11-27 05:52:44', 3, 3, 5, 4, 'beard-oil', 0, 1, ''),
(6, 'Beard Oil', 6, 8, 'Make the best of the beards on your face with our beard oil,', 'Beard oil is for men who do not have beards', 4000, 0, '065887123b98c8a3f60caa6bfcc6704e.png', NULL, '2020-11-27', '2020-11-27 06:52:51', 3, 3, 5, 4, 'beard-oil-1', 1, 1, ''),
(7, 'Men sweater ', 10, 8, 'The sweater you will put on and everyone asks where you bought if from', 'These are sweaters from the best of sweaters', 4000, 0, '7e1adfd0168eed1117d1942124b3e386.jpg', NULL, '2020-11-27', '2020-11-27 06:52:51', 3, 3, 5, 3, 'men-sweater-', 1, 1, ''),
(8, 'Oxford Men shoe', 7, 8, 'New products in production', 'New shoes on the block', 50000, 0, 'a43243c3012792fb49b024073f60d783.jpg', NULL, '2020-11-27', '2020-11-27 06:53:15', 3, 6, 5, 4, 'oxford-men-shoe', 1, 1, ''),
(9, 'Nikon sx powerhot camera', 7, 8, 'Taking photos has never been easy but with the NIKON powershot, pics are at stable', 'Take still photos, power your live record experience', 1000000, 0, 'f4d9f4c4af9a36792061b829e8fdaca6.jpeg', NULL, '2020-11-27', '2020-11-27 06:53:15', 3, 8, 10, 4, 'nikon-sx-powerhot-camera', 1, 1, ''),
(10, 'Canon Powerhot camera', 7, 8, 'Take professional photos with Canon xs30is.\r\nThe powershot is here for you to do the best of staff on market', 'The powershot x30is is here for you to do professsional photos', 1500000, 0, '5672ae123872e0e8d946ac1bc36442a2.jpg', NULL, '2020-11-27', '2020-11-27 06:53:15', 3, 8, 10, 4, 'canon-powerhot-camera', 1, 1, ''),
(11, 'Slik dress', 7, 8, 'Silk comfortable dresses are available in all designs.\r\nTake close look at how you look and do staff', 'The silk dress comes with a perfect silk inside that makes your breasts comfortable', 40000, 0, '44dad8eb3d19c1c7dea1236443d18988.jpeg', NULL, '2020-11-27', '2020-11-27 06:53:15', 3, 3, 5, 4, 'slik-dress', 1, 1, ''),
(12, 'Purple rain dress', 7, 8, 'All discounted at the same time', 'Enjoy the best of purple rain. The classy brand for the 20 century geeks.', 30000, 0, '35279212236b8ba5ae2931353da71ce8.jpg', NULL, '2020-11-27', '2020-11-27 06:53:15', 3, 3, 6, 4, 'purple-rain-dress', 1, 1, ''),
(13, 'HP Utra Notebook', 15, 8, 'I5 Hp utra book with new device record', 'Comes with new ultra screen recording, ', 3000000, 0, 'bd5abb9b3a9e95857953937a8b94b6cd.jpg', NULL, '2020-11-27', '2020-11-27 06:53:15', 3, 7, 8, 4, 'hp-utra-notebook', 1, 1, ''),
(14, 'Califonia Hot shoe', 7, 8, 'Comes in four categories', 'Braid shoe is the best shoe for shoe collection', 40000, 45000, 'a43243c3012792fb49b024073f60d783.jpg', NULL, '2021-01-01', '2021-01-01 11:36:27', 3, 6, 5, 4, 'califonia-hot-shoe', 1, 1, 'Hos shoe, cheap shoes, cheap califonia shoe'),
(15, 'Califonia Hot shoe', 7, 8, 'Comes in four categories', 'Braid shoe is the best shoe for shoe collection', 40000, 45000, 'a43243c3012792fb49b024073f60d783.jpg', NULL, '2021-02-04', '2021-01-01 11:36:27', 7, 6, 5, 4, 'califonia-hot-shoe-1', 1, 1, 'Hos shoe, cheap shoes, cheap califonia shoe'),
(16, 'Califonia Hot shoe', 7, 8, 'Comes in four categories', 'Braid shoe is the best shoe for shoe collection', 40000, 45000, 'a43243c3012792fb49b024073f60d783.jpg', NULL, '2021-02-04', '2021-01-01 11:36:27', 7, 6, 5, 4, 'califonia-hot-shoe-2', 1, 1, 'Hos shoe, cheap shoes, cheap califonia shoe'),
(17, 'Califonia Hot shoe', 7, 8, 'Comes in four categories', 'Braid shoe is the best shoe for shoe collection', 40000, 45000, 'a43243c3012792fb49b024073f60d783.jpg', NULL, '2021-02-04', '2021-01-01 11:36:27', 7, 6, 5, 4, 'califonia-hot-shoe-3', 0, 1, 'Hos shoe, cheap shoes, cheap califonia shoe'),
(18, 'Califonia Hot shoe', 7, 8, 'Comes in four categories', 'Braid shoe is the best shoe for shoe collection', 40000, 45000, 'a43243c3012792fb49b024073f60d783.jpg', NULL, '2021-02-04', '2021-01-01 11:36:27', 7, 6, 5, 4, 'califonia-hot-shoe-4', 0, 1, 'Hos shoe, cheap shoes, cheap califonia shoe'),
(19, 'Califonia Hot shoe', 7, 8, 'Comes in four categories', 'Braid shoe is the best shoe for shoe collection', 40000, 45000, 'a43243c3012792fb49b024073f60d783.jpg', NULL, '2021-02-04', '2021-01-01 11:36:27', 7, 6, 5, 4, 'califonia-hot-shoe-5', 0, 1, 'Hos shoe, cheap shoes, cheap califonia shoe'),
(20, 'Califonia Hot shoe', 7, 8, 'Comes in four categories', 'Braid shoe is the best shoe for shoe collection', 40000, 45000, 'a43243c3012792fb49b024073f60d783.jpg', NULL, '2021-02-04', '2021-01-01 11:36:27', 7, 6, 5, 4, 'califonia-hot-shoe-6', 0, 1, 'Hos shoe, cheap shoes, cheap califonia shoe'),
(21, 'Califonia Hot shoe', 7, 8, 'Comes in four categories', 'Braid shoe is the best shoe for shoe collection', 40000, 45000, 'a43243c3012792fb49b024073f60d783.jpg', NULL, '2021-02-04', '2021-01-01 11:36:27', 7, 6, 5, 4, 'califonia-hot-shoe-7', 0, 1, 'Hos shoe, cheap shoes, cheap califonia shoe'),
(22, 'Califonia Hot shoe', 7, 8, 'Comes in four categories', 'Braid shoe is the best shoe for shoe collection', 40000, 45000, 'a43243c3012792fb49b024073f60d783.jpg', NULL, '2021-02-04', '2021-01-01 11:36:27', 7, 6, 5, 4, 'califonia-hot-shoe-8', 0, 1, 'Hos shoe, cheap shoes, cheap califonia shoe'),
(23, 'Califonia Hot shoe', 7, 8, 'Comes in four categories', 'Braid shoe is the best shoe for shoe collection', 40000, 45000, 'a43243c3012792fb49b024073f60d783.jpg', NULL, '2021-02-04', '2021-01-01 11:36:27', 7, 6, 5, 4, 'califonia-hot-shoe-9', 0, 1, 'Hos shoe, cheap shoes, cheap califonia shoe'),
(24, 'Men sweater ', 10, 8, 'The sweater you will put on and everyone asks where you bought if from', 'These are sweaters from the best of sweaters', 4000, 0, '7e1adfd0168eed1117d1942124b3e386.jpg', NULL, '2021-02-04', '2020-11-27 06:52:51', 7, 3, 5, 3, 'men-sweater--1', 0, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `products_best_deals`
--

DROP TABLE IF EXISTS `products_best_deals`;
CREATE TABLE `products_best_deals` (
  `id` int(11) NOT NULL,
  `product` int(11) NOT NULL,
  `date_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products_best_deals`
--

INSERT INTO `products_best_deals` (`id`, `product`, `date_updated`, `user`) VALUES
(1, 14, '2020-11-27 07:56:30', 3),
(2, 13, '2020-11-27 07:56:30', 3),
(3, 12, '2020-11-27 07:56:30', 3),
(4, 11, '2020-11-27 07:56:30', 3),
(5, 10, '2020-11-27 07:56:30', 3),
(6, 9, '2020-11-27 07:56:30', 3);

-- --------------------------------------------------------

--
-- Table structure for table `products_featured`
--

DROP TABLE IF EXISTS `products_featured`;
CREATE TABLE `products_featured` (
  `id` int(11) NOT NULL,
  `product` int(11) NOT NULL,
  `date_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products_featured`
--

INSERT INTO `products_featured` (`id`, `product`, `date_updated`, `user`) VALUES
(1, 14, '2020-11-27 07:56:26', 3),
(2, 13, '2020-11-27 07:56:26', 3),
(3, 12, '2020-11-27 07:56:26', 3),
(4, 11, '2020-11-27 07:56:26', 3),
(5, 10, '2020-11-27 07:56:26', 3),
(6, 9, '2020-11-27 07:56:26', 3);

-- --------------------------------------------------------

--
-- Table structure for table `products_searched`
--

DROP TABLE IF EXISTS `products_searched`;
CREATE TABLE `products_searched` (
  `id` int(11) NOT NULL,
  `user` int(11) DEFAULT NULL,
  `product` int(11) NOT NULL,
  `search_query` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products_searched`
--

INSERT INTO `products_searched` (`id`, `user`, `product`, `search_query`) VALUES
(1, 4, 8, 1),
(2, 4, 13, 1),
(3, 4, 14, 1),
(4, 4, 8, 2),
(5, 4, 13, 2),
(6, 4, 14, 2),
(7, 4, 8, 3),
(8, 4, 13, 3),
(9, 4, 14, 3),
(10, 4, 8, 4),
(11, 4, 9, 4),
(12, 4, 10, 4),
(13, 4, 14, 4),
(14, 4, 8, 5),
(15, 4, 9, 5),
(16, 4, 10, 5),
(17, 4, 14, 5),
(18, 4, 8, 6),
(19, 4, 9, 6),
(20, 4, 10, 6),
(21, 4, 14, 6),
(22, 4, 8, 7),
(23, 4, 9, 7),
(24, 4, 10, 7),
(25, 4, 14, 7),
(26, 4, 3, 8),
(27, 4, 4, 8),
(28, 4, 5, 8),
(29, 4, 6, 8),
(30, 4, 7, 8),
(31, 4, 8, 8),
(32, 4, 9, 8),
(33, 4, 10, 8),
(34, 4, 11, 8),
(35, 4, 12, 8),
(36, 4, 13, 8),
(37, 4, 14, 8),
(38, 4, 3, 9),
(39, 4, 4, 9),
(40, 4, 5, 9),
(41, 4, 6, 9),
(42, 4, 7, 9),
(43, 4, 8, 9),
(44, 4, 9, 9),
(45, 4, 10, 9),
(46, 4, 11, 9),
(47, 4, 12, 9),
(48, 4, 13, 9),
(49, 4, 14, 9),
(50, 4, 3, 12),
(51, 4, 4, 12),
(52, 4, 5, 12),
(53, 4, 6, 12),
(54, 4, 7, 12),
(55, 4, 8, 12),
(56, 4, 9, 12),
(57, 4, 10, 12),
(58, 4, 11, 12),
(59, 4, 12, 12),
(60, 4, 13, 12),
(61, 4, 14, 12),
(62, 4, 9, 15),
(63, 4, 10, 15),
(64, 4, 14, 15),
(65, 4, 9, 16),
(66, 4, 10, 16),
(67, 4, 9, 17),
(68, 4, 10, 17),
(69, 4, 3, 18),
(70, 4, 3, 19),
(71, 4, 8, 19),
(72, 4, 14, 19),
(73, 4, 8, 23),
(74, 4, 9, 23),
(75, 4, 10, 23),
(76, 4, 14, 23),
(77, 4, 8, 24),
(78, 4, 9, 24),
(79, 4, 10, 24),
(80, 4, 14, 24),
(81, 4, 7, 25),
(82, 4, 8, 25),
(83, 4, 7, 26),
(84, 4, 8, 26),
(85, 4, 7, 27),
(86, 4, 8, 27),
(87, 4, 7, 28),
(88, 4, 8, 28),
(89, NULL, 9, 31),
(90, NULL, 10, 31),
(91, NULL, 9, 32),
(92, NULL, 10, 32),
(93, NULL, 9, 33),
(94, NULL, 10, 33),
(95, NULL, 9, 34),
(96, NULL, 10, 34),
(97, NULL, 9, 40),
(98, NULL, 10, 40),
(99, NULL, 9, 41),
(100, NULL, 10, 42),
(101, NULL, 9, 43),
(102, NULL, 9, 44),
(103, NULL, 10, 44),
(104, 3, 8, 46),
(105, 3, 9, 46),
(106, 3, 10, 46),
(107, 3, 14, 46),
(108, 3, 14, 47),
(109, 3, 14, 48),
(110, 3, 14, 50),
(111, 3, 14, 51),
(112, 3, 14, 52),
(113, 3, 14, 54),
(114, 3, 14, 55),
(115, 3, 8, 56),
(116, 3, 9, 56),
(117, 3, 10, 56),
(118, 3, 14, 56),
(119, 3, 9, 58),
(120, 3, 10, 58),
(121, 11, 13, 59),
(122, 11, 13, 60),
(123, 11, 13, 61),
(124, 11, 13, 62),
(125, 11, 13, 63),
(126, 11, 13, 64),
(127, 11, 13, 65),
(128, 11, 13, 66),
(129, 11, 13, 67),
(130, 11, 13, 68),
(131, 11, 13, 69),
(132, 11, 13, 70),
(133, 11, 13, 71),
(134, 11, 13, 72),
(135, 11, 13, 73),
(136, 11, 13, 74),
(137, 11, 13, 75),
(138, 11, 13, 76),
(139, 11, 13, 77),
(140, 11, 13, 78),
(141, 11, 13, 79),
(142, 11, 13, 80),
(143, 11, 13, 81),
(144, 11, 13, 82),
(145, 11, 13, 83),
(146, 11, 13, 84),
(147, 11, 13, 85),
(148, 5, 14, 90),
(149, 5, 14, 91),
(150, 5, 14, 92),
(151, 5, 14, 93),
(152, 5, 14, 94),
(153, 5, 14, 95),
(154, 5, 7, 97),
(155, 5, 8, 97),
(156, 5, 7, 98),
(157, 5, 8, 98),
(158, 5, 7, 99),
(159, 5, 8, 99),
(160, 5, 7, 100),
(161, 5, 8, 100),
(162, 5, 7, 101),
(163, 5, 8, 101),
(164, 5, 7, 102),
(165, 5, 8, 102),
(166, 5, 7, 103),
(167, 5, 8, 103),
(168, 5, 7, 104),
(169, 5, 8, 104),
(170, 5, 7, 105),
(171, 5, 8, 105),
(172, 5, 7, 106),
(173, 5, 8, 106),
(174, 5, 7, 107),
(175, 5, 8, 107),
(176, 5, 7, 108),
(177, 5, 8, 108),
(178, 5, 7, 109),
(179, 5, 8, 109),
(180, 5, 7, 110),
(181, 5, 8, 110);

-- --------------------------------------------------------

--
-- Table structure for table `products_search_base`
--

DROP TABLE IF EXISTS `products_search_base`;
CREATE TABLE `products_search_base` (
  `id` int(11) NOT NULL,
  `user` int(11) DEFAULT NULL,
  `search_term` varchar(200) NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products_search_base`
--

INSERT INTO `products_search_base` (`id`, `user`, `search_term`, `date_added`) VALUES
(1, 4, '0', '2020-11-30 06:14:39'),
(2, 4, 'shoe hp', '2020-11-30 06:15:45'),
(3, 4, 'shoe hp', '2020-11-30 06:16:15'),
(4, 4, 'hot shoe', '2020-11-30 06:51:02'),
(5, 4, 'hot shoe', '2020-11-30 06:53:23'),
(6, 4, 'hot shoe', '2020-11-30 06:54:42'),
(7, 4, 'hot shoe', '2020-11-30 06:56:01'),
(8, 4, ' hot shoe ', '2020-11-30 06:57:04'),
(9, 4, ' hot shoe ', '2020-11-30 06:58:25'),
(10, 4, 'powershot', '2020-11-30 07:01:17'),
(11, 4, 'powershot', '2020-11-30 07:01:53'),
(12, 4, ' powershot', '2020-11-30 07:02:05'),
(13, 4, 'powershot', '2020-11-30 07:03:54'),
(14, 4, 'powershot', '2020-11-30 07:04:10'),
(15, 4, 'hot', '2020-11-30 07:04:17'),
(16, 4, 'powerhot', '2020-11-30 07:04:43'),
(17, 4, 'powerhot', '2020-11-30 07:06:46'),
(18, 4, 'alovera', '2020-11-30 07:07:14'),
(19, 4, 'alovera shoe', '2020-11-30 07:14:38'),
(20, 4, 'powershot', '2020-11-30 07:31:51'),
(21, 4, 'powershot', '2020-11-30 07:32:27'),
(22, 4, 'powershot', '2020-11-30 07:32:57'),
(23, 4, 'hot shoe', '2020-11-30 12:48:07'),
(24, 4, 'hot shoe', '2020-12-01 08:31:31'),
(25, 4, 'men', '2020-12-01 18:07:22'),
(26, 4, 'men', '2020-12-01 18:10:07'),
(27, 4, 'men', '2020-12-01 18:11:05'),
(28, 4, 'men', '2020-12-01 18:15:42'),
(29, 4, '789', '2020-12-04 04:01:53'),
(30, 4, '789', '2020-12-04 04:04:52'),
(31, NULL, 'powerhot', '2020-12-10 07:02:01'),
(32, NULL, 'powerhot', '2020-12-10 07:02:41'),
(33, NULL, 'powerhot', '2020-12-10 07:02:52'),
(34, NULL, 'powerhot', '2020-12-10 07:06:26'),
(35, NULL, 'powerhot', '2020-12-10 07:06:35'),
(36, NULL, 'powerhot', '2020-12-10 07:06:41'),
(37, NULL, 'powerhot', '2020-12-10 07:06:42'),
(38, NULL, 'powerhot', '2020-12-10 07:06:43'),
(39, NULL, 'powerhot', '2020-12-10 07:06:44'),
(40, NULL, 'powerhot', '2020-12-10 07:06:45'),
(41, NULL, 'powerhot', '2020-12-10 07:07:02'),
(42, NULL, 'powerhot', '2020-12-10 07:07:04'),
(43, NULL, 'powerhot', '2020-12-10 07:07:07'),
(44, NULL, 'powerhot', '2020-12-10 07:07:26'),
(45, 3, 'california', '2020-12-10 09:26:03'),
(46, 3, 'hot shoe', '2020-12-10 09:26:20'),
(47, 3, 'cali', '2020-12-10 09:26:36'),
(48, 3, 'calif', '2020-12-10 09:26:42'),
(49, 3, 'california', '2020-12-10 09:26:47'),
(50, 3, 'califonia', '2020-12-10 09:26:53'),
(51, 3, 'califonia', '2020-12-10 09:28:31'),
(52, 3, 'califonia', '2020-12-10 09:28:46'),
(53, 3, 'california', '2020-12-10 09:29:25'),
(54, 3, 'calif', '2020-12-10 09:29:27'),
(55, 3, 'cali', '2020-12-10 09:29:29'),
(56, 3, 'hot shoe', '2020-12-10 09:29:33'),
(57, 3, 'product', '2020-12-10 09:30:04'),
(58, 3, 'powerhot', '2020-12-10 09:30:10'),
(59, 11, 'hp', '2020-12-10 16:37:36'),
(60, 11, 'hp', '2020-12-10 16:38:12'),
(61, 11, 'hp', '2020-12-10 16:38:20'),
(62, 11, 'hp', '2020-12-10 16:38:52'),
(63, 11, 'hp', '2020-12-10 16:39:08'),
(64, 11, 'hp', '2020-12-10 16:41:08'),
(65, 11, 'hp', '2020-12-10 16:41:18'),
(66, 11, 'hp', '2020-12-10 16:42:23'),
(67, 11, 'hp', '2020-12-10 16:42:35'),
(68, 11, 'hp', '2020-12-10 16:44:48'),
(69, 11, 'hp', '2020-12-10 16:45:40'),
(70, 11, 'hp', '2020-12-10 16:46:25'),
(71, 11, 'hp', '2020-12-10 16:47:10'),
(72, 11, 'hp', '2020-12-10 16:47:53'),
(73, 11, 'hp', '2020-12-10 16:50:48'),
(74, 11, 'hp', '2020-12-10 16:50:52'),
(75, 11, 'hp', '2020-12-10 16:50:53'),
(76, 11, 'hp', '2020-12-10 16:50:56'),
(77, 11, 'hp', '2020-12-10 16:51:57'),
(78, 11, 'hp', '2020-12-10 16:52:11'),
(79, 11, 'hp', '2020-12-10 16:52:24'),
(80, 11, 'hp', '2020-12-10 16:52:50'),
(81, 11, 'hp', '2020-12-10 16:53:08'),
(82, 11, 'hp', '2020-12-10 16:53:56'),
(83, 11, 'hp', '2020-12-10 16:54:48'),
(84, 11, 'hp', '2020-12-10 16:55:26'),
(85, 11, 'hp', '2020-12-10 16:56:19'),
(86, 5, 'ki', '2021-01-20 07:54:37'),
(87, 5, 'cos', '2021-01-20 07:54:47'),
(88, 5, 'kia', '2021-01-20 07:54:52'),
(89, 5, 'laptop', '2021-01-20 07:54:56'),
(90, 5, 'cal', '2021-01-20 07:56:01'),
(91, 5, 'cal', '2021-01-20 07:56:03'),
(92, 5, 'cal', '2021-01-20 07:56:04'),
(93, 5, 'cal', '2021-01-20 07:56:05'),
(94, 5, 'cal', '2021-01-20 07:56:12'),
(95, 5, 'cal', '2021-01-20 07:56:13'),
(96, 5, 'aloe', '2021-01-20 09:47:49'),
(97, 5, 'men', '2021-01-20 09:47:56'),
(98, 5, 'men', '2021-01-20 09:48:06'),
(99, 5, 'men', '2021-01-20 09:48:07'),
(100, 5, 'men', '2021-01-20 09:48:07'),
(101, 5, 'men', '2021-01-20 09:48:12'),
(102, 5, 'men', '2021-01-20 09:48:13'),
(103, 5, 'men', '2021-01-20 09:48:17'),
(104, 5, 'men', '2021-01-20 09:48:18'),
(105, 5, 'men', '2021-01-20 09:48:45'),
(106, 5, 'men', '2021-01-20 09:48:46'),
(107, 5, 'men', '2021-01-20 09:48:48'),
(108, 5, 'men', '2021-01-20 09:48:49'),
(109, 5, 'men', '2021-01-20 09:48:50'),
(110, 5, 'men', '2021-01-20 11:44:03');

-- --------------------------------------------------------

--
-- Table structure for table `products_special_offers`
--

DROP TABLE IF EXISTS `products_special_offers`;
CREATE TABLE `products_special_offers` (
  `id` int(11) NOT NULL,
  `product` int(11) NOT NULL,
  `date_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products_special_offers`
--

INSERT INTO `products_special_offers` (`id`, `product`, `date_updated`, `user`) VALUES
(3, 12, '2020-11-27 07:55:34', 3),
(4, 11, '2020-11-27 07:55:34', 3),
(5, 14, '2020-11-27 07:56:21', 3),
(6, 13, '2020-11-27 07:56:21', 3),
(7, 10, '2020-11-27 07:56:21', 3),
(8, 9, '2020-11-27 07:56:21', 3);

-- --------------------------------------------------------

--
-- Table structure for table `products_viewed`
--

DROP TABLE IF EXISTS `products_viewed`;
CREATE TABLE `products_viewed` (
  `id` int(11) NOT NULL,
  `product` int(11) NOT NULL,
  `user` int(11) DEFAULT NULL,
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products_viewed`
--

INSERT INTO `products_viewed` (`id`, `product`, `user`, `date_added`) VALUES
(1, 14, 4, '2020-11-30 06:49:57'),
(2, 14, 4, '2020-11-30 06:50:18'),
(3, 14, 4, '2020-11-30 06:52:54'),
(4, 14, 4, '2020-11-30 06:53:18'),
(5, 13, 4, '2020-11-30 14:28:27'),
(6, 13, 4, '2020-11-30 14:29:30'),
(7, 13, 4, '2020-11-30 14:33:05'),
(8, 13, 4, '2020-11-30 14:34:58'),
(9, 13, 4, '2020-11-30 14:35:28'),
(10, 11, 4, '2020-12-01 05:29:25'),
(11, 11, 4, '2020-12-01 05:30:02'),
(12, 11, 4, '2020-12-01 05:30:24'),
(13, 11, 4, '2020-12-01 05:32:47'),
(14, 12, 4, '2020-12-01 05:35:28'),
(15, 11, 4, '2020-12-01 05:35:30'),
(16, 9, 4, '2020-12-01 05:36:17'),
(17, 9, 4, '2020-12-01 05:37:10'),
(18, 14, 4, '2020-12-01 05:49:23'),
(19, 14, 4, '2020-12-01 06:45:01'),
(20, 14, 4, '2020-12-01 06:50:03'),
(21, 14, 4, '2020-12-01 06:50:51'),
(22, 14, 4, '2020-12-01 06:52:34'),
(23, 14, 4, '2020-12-01 08:31:38'),
(24, 11, 4, '2020-12-01 09:48:50'),
(25, 13, 4, '2020-12-01 13:19:21'),
(26, 13, 4, '2020-12-01 18:47:13'),
(27, 7, 3, '2020-12-01 19:13:20'),
(28, 7, 3, '2020-12-01 19:18:52'),
(29, 7, 3, '2020-12-01 19:19:33'),
(30, 14, 4, '2020-12-03 05:52:55'),
(31, 9, 4, '2020-12-03 05:54:32'),
(32, 14, 4, '2020-12-04 05:11:46'),
(33, 14, 4, '2020-12-04 05:13:10'),
(34, 14, 4, '2020-12-04 05:18:12'),
(35, 14, 4, '2020-12-04 15:38:41'),
(36, 14, 4, '2020-12-04 15:39:42'),
(37, 14, 4, '2020-12-04 15:39:53'),
(38, 14, 4, '2020-12-04 15:40:24'),
(39, 14, 4, '2020-12-04 15:42:18'),
(40, 14, 4, '2020-12-04 15:42:30'),
(41, 13, 4, '2020-12-04 16:19:26'),
(42, 14, 4, '2020-12-04 16:19:41'),
(43, 10, 4, '2020-12-05 05:59:20'),
(44, 10, 4, '2020-12-05 06:05:32'),
(45, 10, 4, '2020-12-05 06:09:19'),
(46, 13, 0, '2020-12-06 21:46:36'),
(47, 13, 0, '2020-12-06 21:47:16'),
(48, 13, 0, '2020-12-08 08:35:51'),
(49, 13, 0, '2020-12-08 08:54:33'),
(50, 12, 0, '2020-12-08 08:54:47'),
(51, 12, 0, '2020-12-08 10:43:40'),
(52, 10, 0, '2020-12-08 14:17:12'),
(53, 12, 11, '2020-12-08 17:45:51'),
(54, 13, 11, '2020-12-08 18:36:29'),
(55, 11, 11, '2020-12-08 18:36:49'),
(56, 12, 11, '2020-12-08 19:23:19'),
(57, 9, 0, '2020-12-10 07:07:44'),
(58, 9, 0, '2020-12-10 07:09:55'),
(59, 14, 0, '2020-12-10 08:17:47'),
(60, 7, 11, '2020-12-10 16:32:04'),
(61, 12, 11, '2020-12-10 17:10:10'),
(62, 3, 11, '2020-12-10 17:14:08'),
(63, 14, 11, '2020-12-10 21:13:31'),
(64, 11, 3, '2020-12-11 13:29:54'),
(65, 13, 11, '2020-12-27 06:13:29'),
(66, 13, 11, '2020-12-27 06:16:30'),
(67, 13, 3, '2020-12-30 18:19:22'),
(68, 10, 3, '2020-12-30 18:36:07'),
(69, 11, 3, '2020-12-30 20:25:21'),
(70, 11, 3, '2020-12-30 20:35:35'),
(71, 14, 3, '2020-12-30 22:18:28'),
(72, 10, 3, '2020-12-31 07:43:27'),
(73, 10, 3, '2020-12-31 07:45:46'),
(74, 10, 3, '2020-12-31 07:46:29'),
(75, 10, 3, '2020-12-31 07:46:34'),
(76, 10, 3, '2020-12-31 07:49:44'),
(77, 10, 3, '2020-12-31 07:50:39'),
(78, 14, 3, '2021-01-01 07:32:23'),
(79, 14, 3, '2021-01-01 07:32:33'),
(80, 14, 3, '2021-01-01 07:33:13'),
(81, 14, 3, '2021-01-01 07:33:15'),
(82, 14, 3, '2021-01-01 07:33:25'),
(83, 14, 3, '2021-01-01 07:34:10'),
(84, 14, 3, '2021-01-01 07:34:13'),
(85, 14, 3, '2021-01-01 07:37:48'),
(86, 14, 3, '2021-01-01 07:45:09'),
(87, 14, 3, '2021-01-01 11:41:15'),
(88, 14, 3, '2021-01-01 11:42:23'),
(89, 14, 3, '2021-01-01 11:42:43'),
(90, 14, 3, '2021-01-01 11:42:43'),
(91, 14, 3, '2021-01-01 11:42:54'),
(92, 14, 3, '2021-01-01 11:46:28'),
(93, 14, 3, '2021-01-01 11:46:32'),
(94, 14, 3, '2021-01-01 11:46:43'),
(95, 14, 3, '2021-01-01 11:46:53'),
(96, 13, 5, '2021-01-04 18:41:18'),
(97, 10, 5, '2021-01-04 20:18:40'),
(98, 14, 0, '2021-01-05 10:05:52'),
(99, 14, 5, '2021-01-09 07:23:02'),
(100, 14, 5, '2021-01-09 07:26:47'),
(101, 14, 5, '2021-01-09 07:27:24'),
(102, 14, 5, '2021-01-09 07:27:49'),
(103, 14, 5, '2021-01-12 11:49:17'),
(104, 14, 5, '2021-01-12 11:49:25'),
(105, 14, 5, '2021-01-17 13:26:13'),
(106, 14, 5, '2021-01-20 07:52:02'),
(107, 14, 5, '2021-01-20 07:52:11'),
(108, 14, 5, '2021-01-20 07:52:56'),
(109, 14, 5, '2021-01-20 07:53:36'),
(110, 14, 5, '2021-01-20 07:54:17'),
(111, 14, 5, '2021-01-20 07:54:22'),
(112, 14, 5, '2021-01-20 07:54:24'),
(113, 14, 5, '2021-01-20 07:54:25'),
(114, 14, 5, '2021-01-20 07:54:27'),
(115, 14, 5, '2021-01-20 07:54:28'),
(116, 14, 5, '2021-01-20 07:54:29'),
(117, 14, 5, '2021-01-20 07:54:30'),
(118, 14, 5, '2021-01-20 07:54:31'),
(119, 3, 0, '2021-05-29 12:25:55');

-- --------------------------------------------------------

--
-- Table structure for table `products_view_location`
--

DROP TABLE IF EXISTS `products_view_location`;
CREATE TABLE `products_view_location` (
  `id` int(11) NOT NULL,
  `product_view_id` int(11) NOT NULL,
  `country` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `region` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products_view_location`
--

INSERT INTO `products_view_location` (`id`, `product_view_id`, `country`, `city`, `region`) VALUES
(1, 1, 'Unknown', 'Unknown', 'Unknown'),
(2, 2, 'Unknown', 'Unknown', 'Unknown'),
(3, 3, 'Unknown', 'Unknown', 'Unknown'),
(4, 4, 'Unknown', 'Unknown', 'Unknown'),
(5, 5, 'Unknown', 'Unknown', 'Unknown'),
(6, 6, 'Unknown', 'Unknown', 'Unknown'),
(7, 7, 'Unknown', 'Unknown', 'Unknown'),
(8, 8, 'Unknown', 'Unknown', 'Unknown'),
(9, 9, 'Unknown', 'Unknown', 'Unknown'),
(10, 10, 'Unknown', 'Unknown', 'Unknown'),
(11, 11, 'Unknown', 'Unknown', 'Unknown'),
(12, 12, 'Unknown', 'Unknown', 'Unknown'),
(13, 13, 'Unknown', 'Unknown', 'Unknown'),
(14, 14, 'Unknown', 'Unknown', 'Unknown'),
(15, 15, 'Unknown', 'Unknown', 'Unknown'),
(16, 16, 'Unknown', 'Unknown', 'Unknown'),
(17, 17, 'Unknown', 'Unknown', 'Unknown'),
(18, 18, 'Unknown', 'Unknown', 'Unknown'),
(19, 19, 'Unknown', 'Unknown', 'Unknown'),
(20, 20, 'Unknown', 'Unknown', 'Unknown'),
(21, 21, 'Unknown', 'Unknown', 'Unknown'),
(22, 22, 'Unknown', 'Unknown', 'Unknown'),
(23, 23, 'Unknown', 'Unknown', 'Unknown'),
(24, 24, 'Unknown', 'Unknown', 'Unknown'),
(25, 25, 'Unknown', 'Unknown', 'Unknown'),
(26, 26, 'Unknown', 'Unknown', 'Unknown'),
(27, 27, 'Unknown', 'Unknown', 'Unknown'),
(28, 28, 'Unknown', 'Unknown', 'Unknown'),
(29, 29, 'Unknown', 'Unknown', 'Unknown'),
(30, 30, 'Unknown', 'Unknown', 'Unknown'),
(31, 31, 'Unknown', 'Unknown', 'Unknown'),
(32, 32, 'Unknown', 'Unknown', 'Unknown'),
(33, 33, 'Unknown', 'Unknown', 'Unknown'),
(34, 34, 'Unknown', 'Unknown', 'Unknown'),
(35, 35, 'Unknown', 'Unknown', 'Unknown'),
(36, 36, 'Unknown', 'Unknown', 'Unknown'),
(37, 37, 'Unknown', 'Unknown', 'Unknown'),
(38, 38, 'Unknown', 'Unknown', 'Unknown'),
(39, 39, 'Unknown', 'Unknown', 'Unknown'),
(40, 40, 'Unknown', 'Unknown', 'Unknown'),
(41, 41, 'Unknown', 'Unknown', 'Unknown'),
(42, 42, 'Unknown', 'Unknown', 'Unknown'),
(43, 43, 'Unknown', 'Unknown', 'Unknown'),
(44, 44, 'Unknown', 'Unknown', 'Unknown'),
(45, 45, 'Unknown', 'Unknown', 'Unknown'),
(46, 46, 'Unknown', 'Unknown', 'Unknown'),
(47, 47, 'Unknown', 'Unknown', 'Unknown'),
(48, 48, 'Unknown', 'Unknown', 'Unknown'),
(49, 49, 'Unknown', 'Unknown', 'Unknown'),
(50, 50, 'Unknown', 'Unknown', 'Unknown'),
(51, 51, 'Unknown', 'Unknown', 'Unknown'),
(52, 52, 'Unknown', 'Unknown', 'Unknown'),
(53, 53, 'Unknown', 'Unknown', 'Unknown'),
(54, 54, 'Unknown', 'Unknown', 'Unknown'),
(55, 55, 'Unknown', 'Unknown', 'Unknown'),
(56, 56, 'Unknown', 'Unknown', 'Unknown'),
(57, 57, 'Unknown', 'Unknown', 'Unknown'),
(58, 58, 'Unknown', 'Unknown', 'Unknown'),
(59, 59, 'Unknown', 'Unknown', 'Unknown'),
(60, 60, 'Unknown', 'Unknown', 'Unknown'),
(61, 61, 'Unknown', 'Unknown', 'Unknown'),
(62, 62, 'Unknown', 'Unknown', 'Unknown'),
(63, 63, 'Unknown', 'Unknown', 'Unknown'),
(64, 64, 'Unknown', 'Unknown', 'Unknown'),
(65, 65, 'Unknown', 'Unknown', 'Unknown'),
(66, 66, 'Unknown', 'Unknown', 'Unknown'),
(67, 67, 'Unknown', 'Unknown', 'Unknown'),
(68, 68, 'Unknown', 'Unknown', 'Unknown'),
(69, 69, 'Unknown', 'Unknown', 'Unknown'),
(70, 70, 'Unknown', 'Unknown', 'Unknown'),
(71, 71, 'Unknown', 'Unknown', 'Unknown'),
(72, 72, 'Unknown', 'Unknown', 'Unknown'),
(73, 73, 'Unknown', 'Unknown', 'Unknown'),
(74, 74, 'Unknown', 'Unknown', 'Unknown'),
(75, 75, 'Unknown', 'Unknown', 'Unknown'),
(76, 76, 'Unknown', 'Unknown', 'Unknown'),
(77, 77, 'Unknown', 'Unknown', 'Unknown'),
(78, 78, 'Unknown', 'Unknown', 'Unknown'),
(79, 79, 'Unknown', 'Unknown', 'Unknown'),
(80, 80, 'Unknown', 'Unknown', 'Unknown'),
(81, 81, 'Unknown', 'Unknown', 'Unknown'),
(82, 82, 'Unknown', 'Unknown', 'Unknown'),
(83, 83, 'Unknown', 'Unknown', 'Unknown'),
(84, 84, 'Unknown', 'Unknown', 'Unknown'),
(85, 85, 'Unknown', 'Unknown', 'Unknown'),
(86, 86, 'Unknown', 'Unknown', 'Unknown'),
(87, 87, 'Unknown', 'Unknown', 'Unknown'),
(88, 88, 'Unknown', 'Unknown', 'Unknown'),
(89, 89, 'Unknown', 'Unknown', 'Unknown'),
(90, 90, 'Unknown', 'Unknown', 'Unknown'),
(91, 91, 'Unknown', 'Unknown', 'Unknown'),
(92, 92, 'Unknown', 'Unknown', 'Unknown'),
(93, 93, 'Unknown', 'Unknown', 'Unknown'),
(94, 94, 'Unknown', 'Unknown', 'Unknown'),
(95, 95, 'Unknown', 'Unknown', 'Unknown'),
(96, 96, 'Unknown', 'Unknown', 'Unknown'),
(97, 97, 'Unknown', 'Unknown', 'Unknown'),
(98, 98, 'Unknown', 'Unknown', 'Unknown'),
(99, 99, 'Unknown', 'Unknown', 'Unknown'),
(100, 100, 'Unknown', 'Unknown', 'Unknown'),
(101, 101, 'Unknown', 'Unknown', 'Unknown'),
(102, 102, 'Unknown', 'Unknown', 'Unknown'),
(103, 103, 'Unknown', 'Unknown', 'Unknown'),
(104, 104, 'Unknown', 'Unknown', 'Unknown'),
(105, 105, 'Unknown', 'Unknown', 'Unknown'),
(106, 106, 'Unknown', 'Unknown', 'Unknown'),
(107, 107, 'Unknown', 'Unknown', 'Unknown'),
(108, 108, 'Unknown', 'Unknown', 'Unknown'),
(109, 109, 'Unknown', 'Unknown', 'Unknown'),
(110, 110, 'Unknown', 'Unknown', 'Unknown'),
(111, 111, 'Unknown', 'Unknown', 'Unknown'),
(112, 112, 'Unknown', 'Unknown', 'Unknown'),
(113, 113, 'Unknown', 'Unknown', 'Unknown'),
(114, 114, 'Unknown', 'Unknown', 'Unknown'),
(115, 115, 'Unknown', 'Unknown', 'Unknown'),
(116, 116, 'Unknown', 'Unknown', 'Unknown'),
(117, 117, 'Unknown', 'Unknown', 'Unknown'),
(118, 118, 'Unknown', 'Unknown', 'Unknown'),
(119, 119, 'Unknown', 'Unknown', 'Unknown');

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

DROP TABLE IF EXISTS `product_categories`;
CREATE TABLE `product_categories` (
  `id` int(11) NOT NULL,
  `category` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `user` int(11) NOT NULL,
  `date_created` date NOT NULL,
  `date_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `url` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `category`, `status`, `user`, `date_created`, `date_updated`, `url`) VALUES
(1, 'Dresses', 0, 3, '2020-11-22', '2020-11-27 05:18:28', 'Dresses'),
(2, 'Dresses', 0, 3, '2020-11-22', '2020-11-27 05:18:28', 'dresses-1'),
(3, 'Dresses', 1, 3, '2020-11-22', '2020-11-22 10:42:13', 'dresses-2'),
(4, 'Smart Phones', 1, 3, '2020-11-27', '2020-11-27 06:21:29', 'smart-phones'),
(5, 'Cosmetics', 1, 3, '2020-11-27', '2020-11-27 06:21:39', 'cosmetics'),
(6, 'Shoes', 1, 3, '2020-11-27', '2020-11-27 06:22:15', 'shoes'),
(7, 'Computers', 1, 3, '2020-11-27', '2020-11-27 06:22:22', 'computers'),
(8, 'Camera', 1, 3, '2020-11-27', '2020-11-27 06:27:55', 'camera');

-- --------------------------------------------------------

--
-- Table structure for table `product_colors`
--

DROP TABLE IF EXISTS `product_colors`;
CREATE TABLE `product_colors` (
  `id` int(11) NOT NULL,
  `color` varchar(50) NOT NULL,
  `date_created` date NOT NULL,
  `date_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_colors`
--

INSERT INTO `product_colors` (`id`, `color`, `date_created`, `date_updated`, `user`, `status`) VALUES
(1, 'GRAY', '2020-11-24', '2020-11-27 06:25:11', 3, 1),
(2, 'RED', '2020-11-24', '2020-11-24 15:58:27', 3, 1),
(3, 'BLUE', '2020-11-26', '2020-11-27 06:25:11', 3, 1),
(4, 'Transparent', '2020-11-27', '2020-11-27 06:25:21', 3, 1),
(5, 'Black', '2020-11-27', '2020-11-27 06:25:26', 3, 1),
(6, 'None', '2020-11-27', '2020-11-27 06:26:30', 3, 1),
(7, 'Dark gray', '2020-11-27', '2020-11-27 06:37:05', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_currency`
--

DROP TABLE IF EXISTS `product_currency`;
CREATE TABLE `product_currency` (
  `id` int(11) NOT NULL,
  `currency` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `user` int(11) NOT NULL,
  `date_created` date NOT NULL,
  `date_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `url` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_currency`
--

INSERT INTO `product_currency` (`id`, `currency`, `status`, `user`, `date_created`, `date_updated`, `url`) VALUES
(7, 'UGX', 0, 3, '2020-11-22', '2020-11-27 05:27:14', 'ugx'),
(8, 'UGX', 1, 3, '2020-11-22', '2020-11-22 14:57:13', 'ugx-1');

-- --------------------------------------------------------

--
-- Table structure for table `product_general_sizes`
--

DROP TABLE IF EXISTS `product_general_sizes`;
CREATE TABLE `product_general_sizes` (
  `id` int(11) NOT NULL,
  `size` varchar(50) NOT NULL,
  `date_created` date NOT NULL,
  `status` tinyint(1) DEFAULT '1',
  `user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_general_sizes`
--

INSERT INTO `product_general_sizes` (`id`, `size`, `date_created`, `status`, `user`) VALUES
(1, 'S', '2020-11-24', 1, 3),
(2, '300ML', '2020-11-24', 0, 3),
(3, '500', '2020-11-24', 0, 3),
(4, 'XL', '2020-11-26', 1, 3),
(5, 'None', '2020-11-27', 1, 3),
(6, '30', '2020-11-27', 1, 3),
(7, '32', '2020-11-27', 1, 3),
(8, '44', '2020-11-27', 1, 3),
(9, '55', '2020-11-27', 1, 3),
(10, '13', '2020-11-27', 1, 3),
(11, '14', '2020-11-27', 1, 3),
(12, '15', '2020-11-27', 1, 3),
(13, '16', '2020-11-27', 1, 3),
(14, 'None', '2020-11-27', 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

DROP TABLE IF EXISTS `product_images`;
CREATE TABLE `product_images` (
  `id` int(11) NOT NULL,
  `photo` varchar(150) NOT NULL,
  `product` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `date_created` date NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `feature_photo` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `photo`, `product`, `user`, `date_created`, `status`, `feature_photo`) VALUES
(2, '2b9f65c286e280d3ba553d6a2c912f95.jpg', 4, 3, '2020-11-26', 1, 1),
(3, 'f5dc5af400007e62d5aed8802282b554.png', 4, 3, '2020-11-26', 1, 0),
(4, 'f157dbfc1cd94493970ff72fba7e7aab.jpg', 4, 3, '2020-11-26', 1, 0),
(5, '0f7a17f0a57493022de471ee0cf5fa71.png', 3, 3, '2020-11-27', 1, 1),
(6, '065887123b98c8a3f60caa6bfcc6704e.png', 6, 3, '2020-11-27', 0, 1),
(7, '7e1adfd0168eed1117d1942124b3e386.jpg', 7, 3, '2020-11-27', 1, 1),
(8, 'a43243c3012792fb49b024073f60d783.jpg', 8, 3, '2020-11-27', 1, 1),
(9, 'f4d9f4c4af9a36792061b829e8fdaca6.jpeg', 9, 3, '2020-11-27', 1, 1),
(10, '5672ae123872e0e8d946ac1bc36442a2.jpg', 10, 3, '2020-11-27', 1, 1),
(11, '44dad8eb3d19c1c7dea1236443d18988.jpeg', 11, 3, '2020-11-27', 1, 1),
(12, '35279212236b8ba5ae2931353da71ce8.jpg', 12, 3, '2020-11-27', 1, 1),
(13, 'bd5abb9b3a9e95857953937a8b94b6cd.jpg', 13, 3, '2020-11-27', 1, 1),
(16, 'bedd2e53da71eab14eeb2e3646a69e9f.png', 14, 3, '2020-12-10', 0, 0),
(17, 'a43243c3012792fb49b024073f60d783.jpg', 14, 3, '2020-12-27', 1, 1),
(18, '558c6f9d8d41f57c86dc4abe45f2b761_boo_store.jpg', 14, 3, '2020-12-30', 0, 0),
(19, '7e1adfd0168eed1117d1942124b3e386.jpg', 24, 7, '2021-02-04', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_metrics`
--

DROP TABLE IF EXISTS `product_metrics`;
CREATE TABLE `product_metrics` (
  `id` int(11) NOT NULL,
  `metric` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `user` int(11) NOT NULL,
  `date_created` date NOT NULL,
  `date_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `url` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_metrics`
--

INSERT INTO `product_metrics` (`id`, `metric`, `status`, `user`, `date_created`, `date_updated`, `url`) VALUES
(6, 'Yards', 1, 3, '2020-11-22', '2020-11-22 14:18:10', 'yards'),
(7, 'PC', 1, 3, '2020-11-24', '2020-11-27 06:24:16', 'pc'),
(8, 'Kg', 1, 3, '2020-11-24', '2020-11-27 06:24:16', 'kg'),
(9, 'Cm', 1, 3, '2020-11-24', '2020-11-27 06:24:16', 'cm'),
(10, 'M', 1, 3, '2020-11-24', '2020-11-24 18:07:23', 'm'),
(11, 'Long', 1, 3, '2020-11-27', '2020-11-27 06:24:23', 'long'),
(12, 'Short', 1, 3, '2020-11-27', '2020-11-27 06:24:30', 'short'),
(13, 'Units', 1, 3, '2020-11-27', '2020-11-27 06:24:43', 'units'),
(14, 'Nill', 1, 3, '2020-11-27', '2020-11-27 06:26:41', 'nill'),
(15, 'Inch', 1, 3, '2020-11-27', '2020-11-27 06:37:16', 'inch'),
(16, 'None', 1, 3, '2020-11-27', '2020-11-27 06:37:29', 'none');

-- --------------------------------------------------------

--
-- Table structure for table `product_rate`
--

DROP TABLE IF EXISTS `product_rate`;
CREATE TABLE `product_rate` (
  `id` int(11) NOT NULL,
  `product` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `rate` tinyint(5) NOT NULL DEFAULT '0',
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_rate`
--

INSERT INTO `product_rate` (`id`, `product`, `user`, `rate`, `date_added`) VALUES
(1, 11, 4, 5, '2020-12-01 18:17:43'),
(2, 7, 4, 5, '2020-12-01 18:05:06'),
(3, 7, 3, 3, '2020-12-01 18:51:12'),
(4, 12, 3, 1, '2020-12-01 18:51:31'),
(5, 11, 3, 1, '2020-12-01 18:51:38'),
(6, 6, 3, 1, '2020-12-01 18:51:44');

-- --------------------------------------------------------

--
-- Table structure for table `product_set_colors`
--

DROP TABLE IF EXISTS `product_set_colors`;
CREATE TABLE `product_set_colors` (
  `id` int(11) NOT NULL,
  `color` varchar(50) NOT NULL,
  `date_created` date NOT NULL,
  `date_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user` int(11) NOT NULL,
  `product` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_set_colors`
--

INSERT INTO `product_set_colors` (`id`, `color`, `date_created`, `date_updated`, `user`, `product`) VALUES
(5, '1', '2020-11-24', '2020-11-24 21:04:27', 3, 4),
(6, '2', '2020-11-24', '2020-11-24 21:04:27', 3, 4),
(13, '2', '2020-11-27', '2020-11-27 05:53:28', 3, 6),
(14, '2', '2020-11-27', '2020-11-27 05:55:46', 3, 7),
(15, '5', '2020-11-27', '2020-11-27 06:39:07', 3, 8),
(16, '3', '2020-11-27', '2020-11-27 06:39:07', 3, 8),
(17, '7', '2020-11-27', '2020-11-27 06:41:30', 3, 9),
(18, '1', '2020-11-27', '2020-11-27 06:41:30', 3, 9),
(19, '5', '2020-11-27', '2020-11-27 06:43:52', 3, 10),
(20, '5', '2020-11-27', '2020-11-27 06:47:22', 3, 11),
(21, '3', '2020-11-27', '2020-11-27 06:47:22', 3, 11),
(22, '7', '2020-11-27', '2020-11-27 06:47:22', 3, 11),
(23, '1', '2020-11-27', '2020-11-27 06:47:22', 3, 11),
(24, '2', '2020-11-27', '2020-11-27 06:47:22', 3, 11),
(25, '5', '2020-11-27', '2020-11-27 06:49:17', 3, 12),
(26, '3', '2020-11-27', '2020-11-27 06:49:17', 3, 12),
(27, '5', '2020-11-27', '2020-11-27 06:51:25', 3, 13),
(28, '7', '2020-11-27', '2020-11-27 06:51:25', 3, 13),
(29, '1', '2020-11-27', '2020-11-27 06:51:25', 3, 13),
(30, '5', '2020-11-27', '2020-11-27 06:55:24', 3, 14),
(31, '7', '2020-11-27', '2020-11-27 06:55:24', 3, 14);

-- --------------------------------------------------------

--
-- Table structure for table `product_sizes`
--

DROP TABLE IF EXISTS `product_sizes`;
CREATE TABLE `product_sizes` (
  `id` int(11) NOT NULL,
  `size` int(11) NOT NULL,
  `date_created` date NOT NULL,
  `date_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `product` int(11) NOT NULL,
  `user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_sizes`
--

INSERT INTO `product_sizes` (`id`, `size`, `date_created`, `date_updated`, `product`, `user`) VALUES
(10, 2, '2020-11-24', '2020-11-24 21:04:27', 4, 3),
(11, 3, '2020-11-24', '2020-11-24 21:04:27', 4, 3),
(12, 1, '2020-11-24', '2020-11-24 21:04:27', 4, 3),
(15, 1, '2020-11-27', '2020-11-27 05:53:28', 6, 3),
(16, 4, '2020-11-27', '2020-11-27 05:53:28', 6, 3),
(17, 1, '2020-11-27', '2020-11-27 05:55:46', 7, 3),
(18, 4, '2020-11-27', '2020-11-27 05:55:46', 7, 3),
(19, 11, '2020-11-27', '2020-11-27 06:39:07', 8, 3),
(20, 12, '2020-11-27', '2020-11-27 06:39:07', 8, 3),
(21, 13, '2020-11-27', '2020-11-27 06:39:07', 8, 3),
(22, 6, '2020-11-27', '2020-11-27 06:39:07', 8, 3),
(23, 1, '2020-11-27', '2020-11-27 06:47:22', 11, 3),
(24, 4, '2020-11-27', '2020-11-27 06:47:22', 11, 3),
(25, 10, '2020-11-27', '2020-11-27 06:49:17', 12, 3),
(26, 11, '2020-11-27', '2020-11-27 06:49:17', 12, 3),
(27, 10, '2020-11-27', '2020-11-27 06:51:25', 13, 3),
(28, 11, '2020-11-27', '2020-11-27 06:51:25', 13, 3),
(29, 12, '2020-11-27', '2020-11-27 06:51:25', 13, 3),
(30, 13, '2020-11-27', '2020-11-27 06:51:25', 13, 3),
(31, 12, '2020-11-27', '2020-11-27 06:55:24', 14, 3),
(32, 13, '2020-11-27', '2020-11-27 06:55:24', 14, 3),
(33, 6, '2020-11-27', '2020-11-27 06:55:24', 14, 3),
(34, 7, '2020-11-27', '2020-11-27 06:55:24', 14, 3),
(35, 8, '2020-11-27', '2020-11-27 06:55:24', 14, 3);

-- --------------------------------------------------------

--
-- Table structure for table `product_sub_categories`
--

DROP TABLE IF EXISTS `product_sub_categories`;
CREATE TABLE `product_sub_categories` (
  `id` int(11) NOT NULL,
  `category` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `user` int(11) NOT NULL,
  `date_created` date NOT NULL,
  `date_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `url` varchar(64) NOT NULL,
  `display` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(2) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_sub_categories`
--

INSERT INTO `product_sub_categories` (`id`, `category`, `status`, `user`, `date_created`, `date_updated`, `url`, `display`, `priority`) VALUES
(4, 'Laptops', 0, 3, '2020-11-22', '2021-01-12 13:19:52', 'laptops', 1, 1),
(5, 'Shoes', 1, 3, '2020-11-22', '2021-01-12 13:20:27', 'shoes', 1, 7),
(6, 'Android', 1, 3, '2020-11-27', '2020-11-27 06:23:16', 'android', 0, 1),
(7, 'Iphone', 1, 3, '2020-11-27', '2020-11-27 06:23:22', 'iphone', 0, 1),
(8, 'Mac', 1, 3, '2020-11-27', '2021-01-12 13:20:24', 'mac', 1, 8),
(9, 'Braids', 1, 3, '2020-11-27', '2021-01-12 13:20:18', 'braids', 0, 8),
(10, 'Powershot', 1, 3, '2020-11-27', '2021-01-12 13:20:14', 'powershot', 1, 10),
(11, 'Video recorders', 1, 3, '2020-11-27', '2020-11-27 06:28:21', 'video-recorders', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_suppliers`
--

DROP TABLE IF EXISTS `product_suppliers`;
CREATE TABLE `product_suppliers` (
  `id` int(11) NOT NULL,
  `supplier` char(150) NOT NULL,
  `contacts` char(50) NOT NULL,
  `email` char(100) NOT NULL,
  `description` text NOT NULL,
  `user` int(11) NOT NULL,
  `date_created` date NOT NULL,
  `date_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `url` varchar(64) NOT NULL,
  `supplier_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_suppliers`
--

INSERT INTO `product_suppliers` (`id`, `supplier`, `contacts`, `email`, `description`, `user`, `date_created`, `date_updated`, `status`, `url`, `supplier_id`) VALUES
(1, 'Kia Cosmetics', '+256784565201', 'kia@gmail.com', 'Here is a good product to start with', 3, '2020-11-24', '2020-11-27 06:24:59', 1, 'kia-cosmetics', NULL),
(2, 'Kia Cosmetics', '+256784565201', 'kia@gmail.com', 'Here is a good product to start with', 3, '2020-11-24', '2020-11-27 05:30:24', 0, 'kia-cosmetics-1', NULL),
(3, 'Tumusiime Gadgets', '+256784565201', 'ashrikan@gmail.com', 'New suppliers from Dubai. Trust Him add see a difference', 3, '2020-11-24', '2020-11-24 14:39:15', 1, 'tumusiime-gadgets', NULL),
(4, 'Boo Store edit', '+256777584056', 'info@boostore.com', 'Boosted Store is the perfect store u need to work with. Enjoy new changes edit', 3, '2020-11-24', '2021-01-01 12:13:17', 1, 'boo-store', 11),
(8, 'Boosted technologies Uganda edited', '+256784565201', 'ashrikan@gmail.com', 'New description for my business edited', 3, '2021-01-01', '2021-01-02 11:03:09', 1, 'boosted-technologies-uganda-edited', 4);

-- --------------------------------------------------------

--
-- Table structure for table `product_supplier_images`
--

DROP TABLE IF EXISTS `product_supplier_images`;
CREATE TABLE `product_supplier_images` (
  `id` int(11) NOT NULL,
  `photo` varchar(150) NOT NULL,
  `supplier` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `date_created` date NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `feature_photo` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_supplier_images`
--

INSERT INTO `product_supplier_images` (`id`, `photo`, `supplier`, `user`, `date_created`, `status`, `feature_photo`) VALUES
(17, '57a09ffe170cbfb8cc67e2855d114bab.jpeg', 4, 3, '2020-12-10', 1, 0),
(18, 'f665e527469ade4a87a96e7f4eb4d204.jpeg', 4, 3, '2020-12-10', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_views`
--

DROP TABLE IF EXISTS `product_views`;
CREATE TABLE `product_views` (
  `id` int(11) NOT NULL,
  `product` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_views`
--

INSERT INTO `product_views` (`id`, `product`, `user`, `comment`, `date_added`) VALUES
(1, 11, 4, 'It is is a nice dress.. I love it and will always put it on.', '2020-12-01 17:02:55'),
(2, 7, 4, 'I love the fact that it is so cool....', '2020-12-01 18:05:24'),
(3, 11, 4, 'Cool product.', '2020-12-01 18:17:57'),
(4, 7, 3, 'I tried it but it is not cool', '2020-12-01 18:51:26'),
(5, 12, 3, 'n', '2020-12-01 18:51:34'),
(6, 6, 3, 'n', '2020-12-01 18:51:47');

-- --------------------------------------------------------

--
-- Table structure for table `supplier_requests`
--

DROP TABLE IF EXISTS `supplier_requests`;
CREATE TABLE `supplier_requests` (
  `id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `date_requested` date NOT NULL,
  `date_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `business_name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `address` tinytext NOT NULL,
  `phone_number` varchar(100) NOT NULL,
  `items_sold` tinytext NOT NULL,
  `district` tinyint(4) NOT NULL,
  `country` tinyint(4) NOT NULL,
  `business_type` varchar(50) NOT NULL DEFAULT 'Whole sale',
  `email` varchar(100) DEFAULT NULL,
  `website` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `supplier_requests`
--

INSERT INTO `supplier_requests` (`id`, `user`, `date_requested`, `date_updated`, `status`, `business_name`, `description`, `address`, `phone_number`, `items_sold`, `district`, `country`, `business_type`, `email`, `website`) VALUES
(1, 3, '2020-12-31', '2021-01-01 09:22:00', 1, 'Boosted technologies Uganda edited', 'New description for my business edited', 'Kampala Uganda edited', '+256784565201', 'Fish edited', 88, 1, 'wholesaler', 'ashrikan@gmail.com', ''),
(2, 11, '2021-01-01', '2021-01-01 12:13:17', 1, 'Boo Store', 'New clothes', 'Kampala', '0705098174', 'money', 87, 1, 'wholesaler', 'ashrikan@gmail.com', 'www.boostedtechs.com');

-- --------------------------------------------------------

--
-- Table structure for table `watchlist`
--

DROP TABLE IF EXISTS `watchlist`;
CREATE TABLE `watchlist` (
  `id` int(11) NOT NULL,
  `product` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `date_added` date NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `watchlist`
--

INSERT INTO `watchlist` (`id`, `product`, `user`, `date_added`, `status`) VALUES
(43, 13, 4, '2020-11-29', 1),
(44, 12, 4, '2020-11-29', 1),
(46, 11, 4, '2020-11-29', 1),
(47, 11, 3, '2021-01-01', 1),
(48, 14, 5, '2021-01-12', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `access_keys`
--
ALTER TABLE `access_keys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `affiliate_commissions`
--
ALTER TABLE `affiliate_commissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `affiliate_transactions`
--
ALTER TABLE `affiliate_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `affiliate_withdraws`
--
ALTER TABLE `affiliate_withdraws`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `basic_info`
--
ALTER TABLE `basic_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user` (`user`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mail_subscription`
--
ALTER TABLE `mail_subscription`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordered_items`
--
ALTER TABLE `ordered_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_keys`
--
ALTER TABLE `order_keys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_keys`
--
ALTER TABLE `payment_keys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `url` (`url`);

--
-- Indexes for table `products_best_deals`
--
ALTER TABLE `products_best_deals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products_featured`
--
ALTER TABLE `products_featured`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products_searched`
--
ALTER TABLE `products_searched`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products_search_base`
--
ALTER TABLE `products_search_base`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products_special_offers`
--
ALTER TABLE `products_special_offers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products_viewed`
--
ALTER TABLE `products_viewed`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products_view_location`
--
ALTER TABLE `products_view_location`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `url` (`url`);

--
-- Indexes for table `product_colors`
--
ALTER TABLE `product_colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_currency`
--
ALTER TABLE `product_currency`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `url` (`url`);

--
-- Indexes for table `product_general_sizes`
--
ALTER TABLE `product_general_sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_metrics`
--
ALTER TABLE `product_metrics`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `url` (`url`);

--
-- Indexes for table `product_rate`
--
ALTER TABLE `product_rate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_set_colors`
--
ALTER TABLE `product_set_colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_sizes`
--
ALTER TABLE `product_sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_sub_categories`
--
ALTER TABLE `product_sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `url` (`url`);

--
-- Indexes for table `product_suppliers`
--
ALTER TABLE `product_suppliers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `URL` (`url`);

--
-- Indexes for table `product_supplier_images`
--
ALTER TABLE `product_supplier_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_views`
--
ALTER TABLE `product_views`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier_requests`
--
ALTER TABLE `supplier_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `watchlist`
--
ALTER TABLE `watchlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `access_keys`
--
ALTER TABLE `access_keys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `affiliate_commissions`
--
ALTER TABLE `affiliate_commissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `affiliate_transactions`
--
ALTER TABLE `affiliate_transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `affiliate_withdraws`
--
ALTER TABLE `affiliate_withdraws`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `basic_info`
--
ALTER TABLE `basic_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `mail_subscription`
--
ALTER TABLE `mail_subscription`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ordered_items`
--
ALTER TABLE `ordered_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `order_keys`
--
ALTER TABLE `order_keys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `payment_keys`
--
ALTER TABLE `payment_keys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `products_best_deals`
--
ALTER TABLE `products_best_deals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products_featured`
--
ALTER TABLE `products_featured`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products_searched`
--
ALTER TABLE `products_searched`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=182;

--
-- AUTO_INCREMENT for table `products_search_base`
--
ALTER TABLE `products_search_base`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `products_special_offers`
--
ALTER TABLE `products_special_offers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `products_viewed`
--
ALTER TABLE `products_viewed`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT for table `products_view_location`
--
ALTER TABLE `products_view_location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `product_colors`
--
ALTER TABLE `product_colors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `product_currency`
--
ALTER TABLE `product_currency`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `product_general_sizes`
--
ALTER TABLE `product_general_sizes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `product_metrics`
--
ALTER TABLE `product_metrics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `product_rate`
--
ALTER TABLE `product_rate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `product_set_colors`
--
ALTER TABLE `product_set_colors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `product_sizes`
--
ALTER TABLE `product_sizes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `product_sub_categories`
--
ALTER TABLE `product_sub_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `product_suppliers`
--
ALTER TABLE `product_suppliers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `product_supplier_images`
--
ALTER TABLE `product_supplier_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `product_views`
--
ALTER TABLE `product_views`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `supplier_requests`
--
ALTER TABLE `supplier_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `watchlist`
--
ALTER TABLE `watchlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
