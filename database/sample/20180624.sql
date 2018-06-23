-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 24, 2018 at 01:15 AM
-- Server version: 5.6.35
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `simple_blog`
--

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_06_20_172005_create_posts_table', 1);

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
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `overview` varchar(290) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `content`, `overview`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'aaaa eos odit et possimus ipsum consequatur.', '**Hi, Thang**\r\n\r\n1.I\'m a HR super\r\n\r\n2.How are you?', 'Aspernatur qui praesentium nobis eaque numquam dolorum cumque facilis. Nihil porro ex repellat dolor aut esse.', 1, '2018-06-21 10:40:05', '2018-06-22 22:05:33'),
(2, 5, 'Et reprehenderit accusantium sed repellendus veniam.', 'Et et dolorum dolorem aut exercitationem. Aut dolorem sed veritatis aliquid sit dolorum sunt. Inventore corrupti vel quae iure a. Quos enim et quas et in.', 'Quas non nemo nulla amet ipsa. Alias deserunt ex amet architecto.', 1, '2018-06-21 10:40:05', '2018-06-21 10:40:05'),
(3, 4, 'Numquam neque maxime laboriosam ipsa qui pariatur quam.', 'Consequatur quidem est et in eos assumenda ut. Fugiat quidem tempora optio optio optio error.', 'Repellendus numquam nam voluptas eaque. Repellat iusto id illo et et nobis maiores.', 1, '2018-06-21 10:40:05', '2018-06-21 10:40:05'),
(4, 6, 'Consequatur assumenda voluptas tempora reprehenderit inventore.', 'Dolor perferendis numquam nulla laudantium eum quo. Quas maxime maiores aut ullam ut veritatis. Quam minus facilis repellat et.', 'Nemo temporibus ut et et deserunt expedita sit. Consequuntur est possimus eum vel.', 1, '2018-06-21 10:40:05', '2018-06-21 10:40:05'),
(5, 6, 'Est debitis a nesciunt minus magnam dolor quidem.', 'Quo molestiae voluptatem adipisci numquam. Accusamus aut perferendis architecto velit sint eveniet. Sed dolorem necessitatibus fugit nam ut deserunt ut. Iusto quos voluptatum culpa quisquam voluptas. Ea quae ratione ad illo vero ut.', 'Officia fugit itaque accusamus. Impedit blanditiis praesentium optio cupiditate.', 1, '2018-06-21 10:40:05', '2018-06-21 10:40:05'),
(6, 1, 'Necessitatibus nobis molestiae qui incidunt officia optio.', 'Sint voluptatem fuga recusandae cupiditate. Unde nobis voluptatem voluptatem sint ut pariatur repudiandae. Qui consectetur harum officiis quas. Dolores quia impedit architecto omnis esse.', 'Eum quis nihil quo. Earum eius occaecati sit ut numquam sunt et.', 1, '2018-06-21 10:40:05', '2018-06-21 10:40:05'),
(7, 8, 'Et pariatur quia dicta dolores qui.', 'Iure omnis est asperiores distinctio ut reiciendis. Placeat qui alias dolor et dolorum quisquam provident. Ab deserunt dolore accusamus earum cum fugiat dolores voluptatem. Ut nam non sed illum veritatis.', 'Illo voluptas nihil eos non autem. Dolore est tempora architecto rerum quia soluta minus.', 1, '2018-06-21 10:40:05', '2018-06-21 10:40:05'),
(8, 10, 'Hic animi alias qui nostrum ut.', 'Totam officia sit vel beatae sed et. Rem adipisci error aut eum ex laudantium. Nisi dolores et possimus quaerat.', 'Similique aut rem nemo asperiores voluptatem. Doloribus quod quia ducimus asperiores et magnam et.', 1, '2018-06-21 10:40:05', '2018-06-21 10:40:05'),
(9, 2, 'Sed nobis explicabo sed dolor.', 'Nam dignissimos totam optio exercitationem rerum ea. Harum nisi vel eius fugit. Aut minima officiis dolore numquam ex ea. Dicta magnam autem unde voluptatem omnis tempora error saepe.', 'Qui unde velit molestiae et inventore harum consequatur unde. Similique qui cum rem nam est quia dolorum.', 1, '2018-06-21 10:40:05', '2018-06-21 10:40:05'),
(10, 2, 'Est ad hic id porro.', 'Aperiam ut qui neque. Incidunt quo sint recusandae labore aut autem. Nesciunt ut eveniet ab magni quisquam. Qui architecto perferendis qui.', 'Voluptas soluta natus aut autem quis qui veniam. Est placeat dolorem quidem perspiciatis quidem.', 1, '2018-06-21 10:40:05', '2018-06-21 10:40:05'),
(11, 2, 'Repudiandae iusto deserunt non voluptas minima eveniet quibusdam ab.', 'Minus ad aliquam rerum debitis sapiente modi fugiat. Autem occaecati est quibusdam dicta. Eaque occaecati laborum aliquid perferendis est.', 'Voluptas quos nihil ut et iste. Enim voluptas minima a voluptate earum fugit sapiente.', 1, '2018-06-21 10:40:05', '2018-06-21 10:40:05'),
(12, 9, 'Accusamus sunt quisquam molestiae deleniti nesciunt.', 'Voluptas nihil reiciendis ipsam et reiciendis libero explicabo qui. Quidem quia eius laborum omnis adipisci. Ratione pariatur quia consectetur unde ipsa. Sequi et fugiat quos repudiandae dolores dolores inventore veniam.', 'Nisi fugit accusamus quasi ut sequi ut. Est ut autem maxime mollitia aliquam.', 1, '2018-06-21 10:40:05', '2018-06-21 10:40:05'),
(13, 7, 'Molestiae aut amet amet ad ad vitae maxime.', 'Vero rerum ut fuga eius eligendi. Nemo qui velit facere dolores quia. Id reprehenderit veritatis aliquid perspiciatis temporibus et.', 'Quisquam dolor omnis ipsa ut similique aut libero. Libero dolore repudiandae ad.', 1, '2018-06-21 10:40:05', '2018-06-21 10:40:05'),
(14, 3, 'Voluptas beatae quis voluptatem enim et itaque voluptatem.', 'Error laboriosam dolores voluptas officiis distinctio sit eligendi. Rerum odio exercitationem praesentium ipsa. Nesciunt quisquam ea error voluptas itaque amet sint.', 'Ut optio id nisi neque veritatis nam. Tenetur eos consequatur iure.', 1, '2018-06-21 10:40:05', '2018-06-21 10:40:05'),
(15, 6, 'Rem et temporibus aut omnis.', 'Ut consequatur est quam quis dolorum culpa est. Modi doloremque molestiae et sit saepe voluptates distinctio.', 'Dolore quasi molestias voluptatem doloribus. Rem voluptas ad recusandae ut.', 1, '2018-06-21 10:40:05', '2018-06-21 10:40:05'),
(16, 2, 'Ipsa aspernatur similique nesciunt repellendus itaque iste modi laborum.', 'Harum et nemo quibusdam ad quod. Odit velit velit similique eos. Voluptatem odit sint optio autem dolorum. Molestiae ut iusto quaerat qui est at. Ad est atque excepturi ex dignissimos repellat.', 'Dolorum nemo sit accusantium laborum ipsa vero. Laborum ad aperiam dolore repellendus neque eos.', 1, '2018-06-21 10:40:05', '2018-06-21 10:40:05'),
(17, 5, 'Enim rerum doloribus voluptatem sed molestias voluptatem et laboriosam.', 'Alias sint eum ducimus quidem sed sed. Aspernatur sunt harum eum non. Non quas eum debitis voluptas voluptatem in at.', 'Cum autem ipsum quam sint consequatur eaque quae. Molestiae doloremque aperiam quam eius corporis numquam.', 1, '2018-06-21 10:40:05', '2018-06-21 10:40:05'),
(18, 8, 'Deleniti et ut quis vero quis.', 'Eum vitae dolor iusto saepe aut autem enim. Totam aut maiores dolorum rerum repudiandae. Voluptatum doloremque sed dolore tenetur suscipit delectus dignissimos quia. Sit aut hic dolorem est architecto.', 'Vel et et unde doloribus eum consequuntur dolor. Voluptas libero ipsa aut est voluptates dolore officia nihil.', 1, '2018-06-21 10:40:05', '2018-06-21 10:40:05'),
(19, 7, 'Minus ab sit ducimus esse pariatur.', 'Ducimus tempore et eos incidunt excepturi veniam. Sed vel aut possimus blanditiis velit voluptatibus.', 'Maiores nemo odio eos. Harum quis sed et neque qui.', 1, '2018-06-21 10:40:05', '2018-06-21 10:40:05'),
(20, 5, 'Nihil aspernatur nobis pariatur tenetur fugit.', 'Aut sapiente unde quia minima excepturi accusamus a. Possimus aspernatur perferendis quibusdam et atque hic. Laborum autem accusantium distinctio soluta. Et accusantium adipisci porro aut iste sint amet aliquam. Vitae adipisci omnis praesentium facilis provident illum.', 'Qui commodi doloribus quia necessitatibus. Modi earum odio ut reprehenderit id sint.', 1, '2018-06-21 10:40:05', '2018-06-21 10:40:05'),
(21, 4, 'Nam unde amet recusandae distinctio ratione.', 'Reprehenderit autem totam repellat perspiciatis tenetur dolor tenetur. Delectus officiis odio magnam iste enim. Veritatis dolores velit dicta suscipit iusto a. Voluptatem vel voluptatibus hic quis cumque voluptas assumenda.', 'In et quia consequatur voluptatibus. Sunt accusantium libero officiis laboriosam.', 1, '2018-06-21 10:40:05', '2018-06-21 10:40:05'),
(22, 4, 'Cum dolor iste enim in aliquam.', 'Fuga facilis qui veritatis ut ab odit ut. Molestiae beatae et sit illo explicabo. Nihil assumenda aut adipisci quas iusto repudiandae corporis atque. Aliquam omnis quis voluptatem esse molestias quos.', 'Harum aut eum culpa nisi doloremque. Non qui sed labore eos qui.', 1, '2018-06-21 10:40:05', '2018-06-21 10:40:05'),
(23, 6, 'Et est omnis nobis beatae rerum.', 'Quia ut id rerum qui. Quisquam aut sequi fuga numquam quis molestias. Excepturi atque quasi voluptas dolorum.', 'Ipsam eveniet commodi illum impedit. Delectus quam quia quas quo itaque modi tempora.', 1, '2018-06-21 10:40:05', '2018-06-21 10:40:05'),
(24, 9, 'Quasi qui at voluptate assumenda.', 'Consequatur ducimus et nesciunt cum. Voluptates aut ut aut omnis nesciunt sapiente nam. Repudiandae nihil asperiores quia voluptatem labore. Aut aut cumque sit sunt qui dolor.', 'Fuga similique eligendi est. Inventore sint est praesentium magnam est officia id consequatur.', 1, '2018-06-21 10:40:05', '2018-06-21 10:40:05'),
(25, 4, 'Molestiae totam itaque voluptatum voluptatem assumenda voluptas.', 'Voluptate quia nam et est repellat magnam. Quia dolorem ea maxime aliquid. Voluptatem pariatur quia deserunt dolores aut molestias qui. Autem alias commodi autem nobis et porro provident. Quia quia est et repellendus nisi.', 'Fugit ut qui quia aperiam ipsum. Ea quisquam et quae qui.', 1, '2018-06-21 10:40:05', '2018-06-21 10:40:05'),
(26, 10, 'Esse in dolore aut nemo non deleniti similique.', 'Eveniet harum qui dolorem ea consequatur tempore unde. Minima veritatis aut sed aut natus ipsa. Perferendis dolores corporis voluptatem.', 'Consequuntur ea similique omnis. Eum sit qui exercitationem autem numquam quo.', 1, '2018-06-21 10:40:05', '2018-06-21 10:40:05'),
(27, 6, 'Quia nobis ipsa et quibusdam est quia impedit.', 'Est tenetur est officiis. Qui vitae cupiditate quaerat neque ea quisquam aspernatur soluta. Et nesciunt autem ea odit consequatur quia voluptas.', 'Enim repudiandae rem eum animi. Voluptas asperiores facilis dolorem.', 1, '2018-06-21 10:40:05', '2018-06-21 10:40:05'),
(28, 1, 'Molestiae temporibus blanditiis animi soluta perferendis sed.', 'Commodi numquam et earum est facilis sunt vel. Aliquid modi est sed praesentium est ut voluptate. Velit itaque nobis facilis aut. Nihil tempore distinctio ut minus. Ratione quos illo aut vel et et id.', 'Quia fugit est totam voluptatem autem et libero. Dicta magnam omnis illo repellendus fugit reiciendis.', 1, '2018-06-21 10:40:05', '2018-06-21 10:40:05'),
(29, 6, 'Voluptatibus non quia animi rem sit hic eaque qui.', 'Quod sed ut laborum enim. Omnis eos eos architecto enim tenetur. Aliquam beatae nam dolorem labore in aperiam illo.', 'Sit laborum explicabo nihil nemo corrupti. Ut rerum id dolorem qui vitae ipsam reiciendis.', 1, '2018-06-21 10:40:05', '2018-06-21 10:40:05'),
(30, 1, 'Aspernatur voluptatibus voluptas aut voluptatem et eum.', 'Qui et corporis deleniti consequatur perferendis. Neque officiis perspiciatis ut eligendi suscipit sequi voluptas. Ut veniam quae maiores.', 'Vitae mollitia velit qui nihil dolores laboriosam et. Animi ut amet et nam.', 1, '2018-06-21 10:40:05', '2018-06-21 10:40:05'),
(31, 10, 'Id temporibus ut ea velit voluptatem nemo.', 'Quod quia repellat dolore unde quisquam ipsam sed. Excepturi ipsam error laboriosam labore corporis molestias quisquam. Aut ipsum facilis est ab. Ipsam qui unde et rem magnam numquam sit.', 'Enim molestiae vero ab omnis quia quia. Sit qui quam quo debitis sed consectetur.', 1, '2018-06-21 10:40:05', '2018-06-21 10:40:05'),
(32, 9, 'Unde quod labore nihil sapiente consectetur.', 'Qui labore consectetur omnis qui error enim porro. Optio earum velit aliquam repellat alias aut. Eveniet voluptatum esse cupiditate nemo totam quasi ipsum. Sed est quia consequatur consequatur quia libero voluptatem.', 'Quia vel fuga doloribus officiis voluptate eius quis. Voluptate nobis reprehenderit est similique expedita et enim.', 1, '2018-06-21 10:40:05', '2018-06-21 10:40:05'),
(33, 1, 'Sunt occaecati sit ipsa ratione esse.', 'Consequatur quod nesciunt praesentium architecto quisquam dolor. Praesentium et quidem vitae dignissimos placeat id odit voluptas. Exercitationem nostrum et voluptatem doloremque. Optio temporibus consectetur quae nihil aut qui.', 'Excepturi hic qui praesentium accusantium repellat. Quae possimus alias ad sequi.', 1, '2018-06-21 10:40:05', '2018-06-21 10:40:05'),
(34, 8, 'Aut quidem assumenda natus.', 'Dolores minus animi ea magnam. Et pariatur dolorem sapiente ipsum ipsam nisi.', 'Itaque nihil quia velit voluptatem id. Est tenetur nesciunt velit sapiente quia.', 1, '2018-06-21 10:40:05', '2018-06-21 10:40:05'),
(35, 6, 'Aut et ut molestiae molestiae.', 'Animi praesentium dolor neque. Eum quam voluptates laboriosam consequatur culpa possimus necessitatibus. Eaque dolores ipsa quas consectetur quia.', 'Earum odio et aut dolores. Libero et tempora eos blanditiis non saepe.', 1, '2018-06-21 10:40:05', '2018-06-21 10:40:05'),
(36, 6, 'Repellat tempore autem et aut provident et architecto sunt.', 'Reiciendis amet illum necessitatibus voluptatem blanditiis possimus. Ipsam nam cumque deleniti perspiciatis ad aut dolores. Quod minima sapiente est labore voluptate.', 'Quidem asperiores incidunt neque. Quaerat voluptas et et tenetur tempore est qui.', 1, '2018-06-21 10:40:05', '2018-06-21 10:40:05'),
(37, 7, 'Doloribus est perspiciatis sapiente dolor cumque.', 'Voluptas dicta saepe esse consequuntur et error. Nobis soluta itaque hic est id. Aspernatur veniam sit quos quae voluptate. Voluptatibus voluptatem autem deserunt aut ad.', 'Ad at laboriosam laborum rem dolore architecto. Totam iure commodi blanditiis est ut nihil.', 1, '2018-06-21 10:40:05', '2018-06-21 10:40:05'),
(38, 5, 'Sit dolor voluptas alias.', 'Animi eos a id quo. Quia debitis enim nostrum autem maiores sed ut perferendis. Enim quia saepe ipsa facere.', 'Amet nemo vero dolor eum. Quos consequatur distinctio nihil perferendis enim nihil laudantium autem.', 1, '2018-06-21 10:40:05', '2018-06-21 10:40:05'),
(39, 5, 'Numquam consequatur porro nemo fugit architecto eius repellat deserunt.', 'Nobis aliquid est laborum hic officiis dolores. Quaerat distinctio commodi quia sint.', 'Et magnam quia assumenda voluptatibus dicta ex et voluptatem. Repellendus quo harum nihil et.', 1, '2018-06-21 10:40:05', '2018-06-21 10:40:05'),
(40, 7, 'Consequatur eum at alias illum.', 'Non repellat libero optio sunt et. Veritatis voluptatem quas et eaque repellendus ut repudiandae.', 'Quas magni impedit quos ut voluptatem modi. Ut sed aut suscipit quasi autem pariatur quia.', 1, '2018-06-21 10:40:05', '2018-06-21 10:40:05'),
(41, 1, 'Sit est est possimus non libero.', 'Et repudiandae dolor aut error id quia culpa. Natus modi sed assumenda qui. Quas alias in ea ut quibusdam tempora. Laudantium culpa voluptates voluptatibus non ipsa quod.', 'Non magnam adipisci eum praesentium accusantium. Vel cum placeat sed magni.', 1, '2018-06-21 10:40:05', '2018-06-21 10:40:05'),
(42, 7, 'Omnis qui ut maxime hic.', 'Et quod dolorem corporis alias consequatur. Sapiente et quidem rerum amet.', 'Ducimus non dolorem neque enim placeat eveniet sit. At quia inventore qui ducimus accusamus.', 1, '2018-06-21 10:40:05', '2018-06-21 10:40:05'),
(43, 4, 'Hic enim ipsam facere perferendis nulla sed.', 'Harum quis molestiae molestiae occaecati nisi. Nesciunt amet labore voluptatem cupiditate voluptas. Autem laborum nostrum asperiores id ea molestiae officia fuga.', 'Fuga provident consequuntur non et ratione delectus. Repellat ea iure libero eos consectetur odio quibusdam.', 1, '2018-06-21 10:40:05', '2018-06-21 10:40:05'),
(44, 4, 'Voluptate officiis et nemo quis voluptatibus aliquam blanditiis.', 'Aspernatur et in corrupti. Aut ipsum voluptatem laboriosam assumenda architecto velit dolores. Aut cum iste ut accusamus.', 'Voluptatem omnis ut necessitatibus. Ex blanditiis veniam possimus fugiat pariatur est.', 1, '2018-06-21 10:40:05', '2018-06-21 10:40:05'),
(45, 10, 'Placeat optio dolorem qui et labore.', 'Eligendi at aut sunt dolor ea adipisci laboriosam. Minima quibusdam delectus ullam itaque commodi et at eligendi. Sint ipsam aliquid qui odit sint sed aspernatur. Animi nulla illo optio doloremque dignissimos necessitatibus.', 'Quia sapiente dolores vitae deserunt libero et voluptates dolorum. Voluptas qui debitis mollitia ut animi.', 1, '2018-06-21 10:40:05', '2018-06-21 10:40:05'),
(46, 7, 'Culpa labore atque soluta rerum.', 'Accusantium ea et rerum debitis. Dolor laborum quos fugiat voluptas neque. Quo ut beatae veritatis et nostrum id eos.', 'Sit incidunt et enim aut voluptas ratione et. Quisquam sint id ut nisi aliquam sit fugit.', 1, '2018-06-21 10:40:05', '2018-06-21 10:40:05'),
(47, 6, 'Iusto libero aut nesciunt temporibus voluptas totam.', 'Eos autem tempora excepturi odio laborum in distinctio. Laudantium iusto tempora saepe dolor et qui. Optio et et ut eaque enim totam.', 'Numquam molestiae exercitationem nemo consequatur aliquam. Aut repellendus a aperiam qui doloribus.', 1, '2018-06-21 10:40:05', '2018-06-21 10:40:05'),
(48, 3, 'Quia autem dolores eos.', 'Blanditiis deleniti voluptatum sint nesciunt explicabo qui. Vel aspernatur ipsam quis ullam omnis. Veritatis voluptatem reprehenderit qui placeat.', 'Dolorem alias sed voluptatum enim voluptas. Quos rerum sunt accusantium est.', 1, '2018-06-21 10:40:05', '2018-06-21 10:40:05'),
(49, 4, 'Officiis voluptate sapiente ab ipsam.', 'Eum et vel delectus vel ex neque. Sit qui earum et a dolorem et. Ex deleniti vero minima enim enim atque pariatur. Recusandae perspiciatis quo reiciendis omnis distinctio.', 'Officiis mollitia eum consequatur tempora corporis cupiditate incidunt qui. Vel dolorum illum qui accusantium.', 1, '2018-06-21 10:40:05', '2018-06-21 10:40:05'),
(50, 9, 'Omnis ipsum ipsam totam recusandae qui commodi accusamus.', 'Harum a aut inventore. Ad unde illum ut ut dolorem. Perferendis enim exercitationem non vero id accusantium delectus architecto.', 'Sed veniam nam quo porro libero excepturi id. Nam facilis molestiae qui ea et sapiente.', 1, '2018-06-21 10:40:05', '2018-06-21 10:40:05'),
(51, 1, 'aaa', 'sdfsdffff', 'sdfsdf', 0, '2018-06-21 10:57:55', '2018-06-21 10:57:55'),
(53, 2, 'Name bo', 'aaaddfasdf', 'efsfs', 1, '2018-06-21 11:04:05', '2018-06-23 10:45:05'),
(54, 2, 'Wow ---1', 'yo', 'hey', 1, '2018-06-21 11:21:52', '2018-06-23 10:46:12'),
(55, 1, 'fafa', 'aaaa', 'ffaa', 1, '2018-06-21 11:23:50', '2018-06-23 10:44:27'),
(56, 2, 'Test title', '**Heading**\r\n\r\n1.first item\r\n\r\n2.second item\r\n\r\n3.third item', 'This is an overview for post', 1, '2018-06-23 11:01:14', '2018-06-23 11:03:51');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` tinyint(4) DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `type`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Duc Thang', 'ducthang310@gmail.com', '$2y$10$4TfwxLiJW/Jem0twhzb25OT/UW.ATu8/LGtDo9p/GN3Swo1HamYG6', 0, 'woSYnAoPDY8svMSTA2kx7DdrTPHF3GIBRK453Qahem3BNeHJ5krlyB2YGsdW', '2018-06-21 10:40:05', '2018-06-21 10:40:05'),
(2, 'John Smith', 'johnnysm310@gmail.com', '$2y$10$4TfwxLiJW/Jem0twhzb25OT/UW.ATu8/LGtDo9p/GN3Swo1HamYG6', 1, 'eDpMbKMAzaV6DGtvAhO2yiw3eYWeDZq7hBvNLYE1bLVrBmENUQzxTcxJpouS', '2018-06-21 10:40:05', '2018-06-21 10:40:05'),
(3, 'Rasheed Schowalter', 'ssstest101@gmail.com', '$2y$10$4TfwxLiJW/Jem0twhzb25OT/UW.ATu8/LGtDo9p/GN3Swo1HamYG6', 0, 'SZJSIG7dhj', '2018-06-21 10:40:05', '2018-06-21 10:40:05'),
(4, 'Dr. Emil Feest', 'ssstest102@gmail.com', '$2y$10$4TfwxLiJW/Jem0twhzb25OT/UW.ATu8/LGtDo9p/GN3Swo1HamYG6', 1, 'HYxwZTID86', '2018-06-21 10:40:05', '2018-06-21 10:40:05'),
(5, 'Herminia Lowe Sr.', 'swaniawski.jordon@example.net', '$2y$10$4TfwxLiJW/Jem0twhzb25OT/UW.ATu8/LGtDo9p/GN3Swo1HamYG6', 1, 'AtH8lMcEru', '2018-06-21 10:40:05', '2018-06-21 10:40:05'),
(6, 'Grayson Berge I', 'schiller.austyn@example.net', '$2y$10$4TfwxLiJW/Jem0twhzb25OT/UW.ATu8/LGtDo9p/GN3Swo1HamYG6', 1, 'aXrTtwdP9i', '2018-06-21 10:40:05', '2018-06-21 10:40:05'),
(7, 'Dr. Jesse Okuneva DDS', 'matilde54@example.com', '$2y$10$4TfwxLiJW/Jem0twhzb25OT/UW.ATu8/LGtDo9p/GN3Swo1HamYG6', 1, 'Gu8Zku9u2O', '2018-06-21 10:40:05', '2018-06-21 10:40:05'),
(8, 'Britney Reilly', 'maida.block@example.org', '$2y$10$4TfwxLiJW/Jem0twhzb25OT/UW.ATu8/LGtDo9p/GN3Swo1HamYG6', 1, 'Kuif2HCRDq', '2018-06-21 10:40:05', '2018-06-21 10:40:05'),
(9, 'Fritz Daniel', 'nellie05@example.com', '$2y$10$4TfwxLiJW/Jem0twhzb25OT/UW.ATu8/LGtDo9p/GN3Swo1HamYG6', 1, 'RHSBE2HzZY', '2018-06-21 10:40:05', '2018-06-21 10:40:05'),
(10, 'Prof. Tamia Kohler', 'von.joseph@example.net', '$2y$10$4TfwxLiJW/Jem0twhzb25OT/UW.ATu8/LGtDo9p/GN3Swo1HamYG6', 1, 'fSXYlwuAfd', '2018-06-21 10:40:05', '2018-06-21 10:40:05');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_title_unique` (`title`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
