-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-02-2018 a las 00:32:32
-- Versión del servidor: 10.1.26-MariaDB
-- Versión de PHP: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `shop`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(9, '2014_10_12_000000_create_users_table', 1),
(10, '2014_10_12_100000_create_password_resets_table', 1),
(11, '2018_02_13_212952_create_categories_table', 1),
(12, '2018_02_13_223154_create_products_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `long_description` text COLLATE utf8mb4_unicode_ci,
  `price` double(8,2) NOT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `long_description`, `price`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'omnis', 'Iusto id qui cum nostrum beatae temporibus dolorum eos non ea omnis unde esse.', 'Quia eum eum deleniti enim dolorem atque. Rerum explicabo incidunt placeat totam nulla officiis itaque quis. Officia cum enim error ipsum id eos.', 95.14, NULL, '2018-02-16 04:41:59', '2018-02-16 04:41:59'),
(2, 'facilis', 'Voluptatibus esse voluptatem beatae est nihil deleniti.', 'Earum debitis rem autem. Doloremque ducimus odit odio et unde recusandae quod. Accusantium ea dolorem repudiandae porro odit magni. Nihil delectus cum odio voluptatem a molestias.', 132.77, NULL, '2018-02-16 04:41:59', '2018-02-16 04:41:59'),
(3, 'mollitia', 'Odit ex eum dolorem voluptatibus facere est modi.', 'Doloremque et rem voluptatem. Sed qui sint corrupti odit. Amet nostrum quos et quia fugiat in commodi. Magnam architecto sapiente voluptatum omnis quam autem vitae.', 136.79, NULL, '2018-02-16 04:41:59', '2018-02-16 04:41:59'),
(4, 'autem', 'Non porro aperiam fuga aut rerum sint et quae soluta qui iste veniam quis.', 'Iure sit quas impedit hic aut enim minima. Harum et aperiam itaque. Dignissimos a velit repudiandae velit eaque dicta. Est dignissimos magni sunt facilis dolorem.', 42.51, NULL, '2018-02-16 04:41:59', '2018-02-16 04:41:59'),
(5, 'nam', 'Vero sunt quidem sapiente non illo voluptas consequatur accusantium.', 'Perspiciatis quia eos non vel. Voluptatum maxime odit sapiente et. Est porro facere at ducimus. Commodi magnam distinctio sed explicabo possimus.', 86.18, NULL, '2018-02-16 04:41:59', '2018-02-16 04:41:59'),
(6, 'incidunt', 'Culpa consequuntur consectetur facere et non sed.', 'Assumenda esse ut dolore dolore delectus. Non inventore et minima deserunt quam. Quos in animi eius et et. Eos id ut sit consequatur facilis nihil sed.', 77.82, NULL, '2018-02-16 04:41:59', '2018-02-16 04:41:59'),
(7, 'laborum', 'Ut et voluptate alias est aliquid rerum.', 'Sed ut quo explicabo qui asperiores placeat cupiditate. Id in ad possimus alias. Consequuntur ut in harum quam perspiciatis molestias a.', 77.88, NULL, '2018-02-16 04:41:59', '2018-02-16 04:41:59'),
(8, 'at', 'Nesciunt et fugit nihil culpa dolore nostrum similique molestiae non.', 'Sit maxime voluptatum cum sequi occaecati. Non sed voluptatem ut maxime aliquid. Molestias et voluptatum praesentium placeat incidunt.', 17.25, NULL, '2018-02-16 04:41:59', '2018-02-16 04:41:59'),
(9, 'excepturi', 'Eos aut aliquam consequatur enim iure sed veritatis.', 'Optio voluptatem sapiente dicta. Quo beatae est laudantium iste est sapiente excepturi. Debitis adipisci illum facere hic sint eius aperiam consequatur. Sunt dolore fuga natus hic ut molestias.', 133.40, NULL, '2018-02-16 04:41:59', '2018-02-16 04:41:59'),
(10, 'ut', 'Nesciunt velit rerum reprehenderit qui hic aut velit rerum reprehenderit nemo qui voluptatem.', 'Corporis neque culpa et reiciendis labore doloremque. Modi omnis provident qui est atque in alias. Minima hic id tenetur id ea odio. Non voluptatem suscipit adipisci expedita fuga repellat impedit.', 121.45, NULL, '2018-02-16 04:41:59', '2018-02-16 04:41:59'),
(11, 'odio', 'Voluptatem nobis hic repellendus ullam fugit et cupiditate quas ut soluta quis magni natus.', 'Impedit id rem est facilis consectetur. Perspiciatis sit perferendis sit necessitatibus cum eligendi. Ullam eos sint vero maiores magnam vel. Quas ut labore libero repellendus blanditiis dolor.', 140.72, NULL, '2018-02-16 04:41:59', '2018-02-16 04:41:59'),
(12, 'sed', 'Consequatur repellendus quia voluptatem perferendis aliquam pariatur accusamus non sit aut.', 'Nam dolorem mollitia facere rerum accusantium voluptatem sunt. Quod rem maiores ea ipsum autem qui. Explicabo aut harum unde et necessitatibus recusandae labore.', 86.80, NULL, '2018-02-16 04:41:59', '2018-02-16 04:41:59'),
(13, 'et', 'Corporis fugit reiciendis sequi non minima dolorem quia ipsum dolores non.', 'Distinctio aliquid quis ut sit accusamus. Voluptatum consequuntur quae sed et autem atque qui. Officiis nihil non saepe harum accusantium ut sint.', 70.98, NULL, '2018-02-16 04:41:59', '2018-02-16 04:41:59'),
(14, 'iusto', 'Et recusandae atque quia ut dignissimos vitae.', 'Sunt provident qui porro doloremque omnis corporis repellat. Odio qui nisi voluptate autem animi sunt. Asperiores totam sequi recusandae maiores vel ab.', 81.82, NULL, '2018-02-16 04:41:59', '2018-02-16 04:41:59'),
(15, 'ipsa', 'Occaecati id est nemo repellendus et distinctio.', 'Deleniti et iste in ex voluptates dolores. Iste ut ullam impedit non quis eos quidem. Qui autem porro nostrum dolorum libero.', 86.29, NULL, '2018-02-16 04:42:00', '2018-02-16 04:42:00'),
(16, 'autem', 'Sunt quis reiciendis aut dolores adipisci aperiam et ex nulla.', 'Consequatur nihil aut rerum. Eum quibusdam consectetur ratione iusto perferendis ut. Optio sed voluptate possimus enim. Sit non exercitationem id.', 65.62, NULL, '2018-02-16 04:42:00', '2018-02-16 04:42:00'),
(17, 'fuga', 'Veniam ut sit sapiente molestiae explicabo dolor animi.', 'Itaque ratione sit dolorem magnam harum non molestias. Magnam voluptatem repudiandae autem dolores. Ut dolor qui assumenda quae ducimus a.', 27.83, NULL, '2018-02-16 04:42:00', '2018-02-16 04:42:00'),
(18, 'eum', 'Et ut distinctio possimus consectetur quod quisquam illum natus.', 'Quae aut et atque. Hic quidem eveniet doloribus vel vero et. Labore ut et libero hic modi.', 114.52, NULL, '2018-02-16 04:42:00', '2018-02-16 04:42:00'),
(19, 'eveniet', 'Corporis facere excepturi quidem ducimus laborum reprehenderit ut.', 'Sit repellat sapiente quo eaque. Reprehenderit laborum non velit nam. Autem esse consequatur reiciendis eligendi dolorem. Aperiam at enim eaque.', 99.18, NULL, '2018-02-16 04:42:00', '2018-02-16 04:42:00'),
(20, 'cumque', 'Necessitatibus officia et ut aut non cumque aspernatur.', 'Autem quisquam ad sit eius et saepe. Eaque officiis sed aut optio soluta quidem consequatur. Sed quisquam reiciendis quis voluptatibus quod labore quis. Recusandae hic mollitia et soluta.', 42.43, NULL, '2018-02-16 04:42:00', '2018-02-16 04:42:00'),
(21, 'deleniti', 'Aperiam excepturi eos id et omnis a architecto earum voluptate.', 'Non ut alias et temporibus provident optio molestias. Ab accusantium est placeat qui aperiam qui occaecati. Eligendi id quis nisi reiciendis. Tenetur omnis facilis ea expedita.', 5.60, NULL, '2018-02-16 04:42:00', '2018-02-16 04:42:00'),
(22, 'repudiandae', 'Pariatur aliquid debitis consequatur saepe laudantium aspernatur non dolores distinctio dolorem et.', 'Dolorum omnis et blanditiis sapiente perspiciatis consequatur. Iusto perspiciatis id perferendis iure.', 133.25, NULL, '2018-02-16 04:42:00', '2018-02-16 04:42:00'),
(23, 'ex', 'Odit soluta sed et ipsa qui consequuntur corporis doloribus odit iste et.', 'Non voluptas repellendus unde voluptas. Velit consequatur eos magni autem nihil velit. Nemo ipsam voluptas sit omnis.', 61.62, NULL, '2018-02-16 04:42:00', '2018-02-16 04:42:00'),
(24, 'quisquam', 'Dolorum occaecati qui itaque enim natus ducimus ex illo dicta.', 'At officiis aut magnam quaerat laudantium dolorem aut. Ab est incidunt voluptate sit minima. Dolorem nulla a quis molestiae laborum accusantium minima.', 95.37, NULL, '2018-02-16 04:42:00', '2018-02-16 04:42:00'),
(25, 'voluptatem', 'Vel id ullam impedit ex suscipit sint nesciunt quam nihil tempora asperiores voluptatem.', 'Non dolor omnis quis consequatur dicta repellendus. Culpa alias itaque quod eos fuga enim occaecati. Nihil voluptas deserunt totam quam. Est natus nulla in dolores laborum.', 63.99, NULL, '2018-02-16 04:42:00', '2018-02-16 04:42:00'),
(26, 'tempora', 'Est pariatur aut aspernatur quia praesentium et accusamus in ipsam laboriosam assumenda.', 'Nostrum error voluptates quasi cumque eum aut aut. Iste doloribus sit voluptate nisi velit ut et autem.', 147.98, NULL, '2018-02-16 04:42:00', '2018-02-16 04:42:00'),
(27, 'aspernatur', 'Accusantium dolores nesciunt doloremque quos ut porro unde et consequuntur.', 'Autem sit non et nemo voluptatem voluptate in quae. Ipsa rerum corrupti expedita. Corrupti tenetur tenetur repudiandae exercitationem.', 139.16, NULL, '2018-02-16 04:42:00', '2018-02-16 04:42:00'),
(28, 'voluptatibus', 'Accusantium vel a autem praesentium delectus nesciunt accusamus dolorem illum natus odio numquam omnis.', 'Sit dolorum voluptatem quia possimus commodi quasi. Aperiam rerum debitis modi ratione repudiandae. Sapiente exercitationem a nesciunt suscipit quidem.', 73.26, NULL, '2018-02-16 04:42:00', '2018-02-16 04:42:00'),
(29, 'quis', 'Commodi harum eveniet et beatae et dicta.', 'Doloribus quia ullam exercitationem quis doloremque rerum. Qui asperiores ea iusto unde. Odit libero consequatur libero quis eius molestiae voluptas. Et ea id aut cupiditate dolorum impedit.', 91.67, NULL, '2018-02-16 04:42:00', '2018-02-16 04:42:00'),
(30, 'voluptates', 'Non eos ut in facilis minus nulla perspiciatis assumenda nemo.', 'Sint optio et est aliquam veritatis ut aut. Dignissimos dicta qui rem. Et quaerat officia quaerat recusandae repellat. Laudantium aut non enim nihil. Amet aut voluptas dignissimos in pariatur.', 17.87, NULL, '2018-02-16 04:42:00', '2018-02-16 04:42:00'),
(31, 'vitae', 'Ab explicabo sunt omnis deserunt veritatis molestiae temporibus.', 'Ducimus aut rem maiores officiis vitae qui. Ut sint voluptatem est velit. Consectetur reiciendis veritatis est minus sit cupiditate. Dicta inventore sint animi quos ab voluptatem.', 39.70, NULL, '2018-02-16 04:42:00', '2018-02-16 04:42:00'),
(32, 'aut', 'Tempore unde provident consequatur eligendi cumque dignissimos enim similique et autem similique.', 'Ratione qui ut voluptatem aliquid esse. Harum temporibus et dolorem autem sunt occaecati.', 52.84, NULL, '2018-02-16 04:42:00', '2018-02-16 04:42:00'),
(33, 'quos', 'Est quia reprehenderit ut consectetur deserunt ad consequatur maiores iure.', 'Dolorum consequatur ut et molestiae eos maiores vero. Dolorum et blanditiis dolores quam numquam neque quia.', 9.92, NULL, '2018-02-16 04:42:00', '2018-02-16 04:42:00'),
(34, 'facere', 'Unde fugit reprehenderit quidem est quaerat et.', 'Molestiae omnis explicabo voluptas consectetur sit reiciendis qui. Et illo quae accusamus quo voluptatum ipsum. Distinctio commodi minima tempore cum. Dolor quis aut est laboriosam.', 67.79, NULL, '2018-02-16 04:42:01', '2018-02-16 04:42:01'),
(35, 'aspernatur', 'Illum eos voluptatem laudantium sequi porro voluptate sequi fugit molestiae facilis officiis temporibus aut.', 'Aut dicta fugit consequatur repudiandae velit. Dolorem dolores non animi numquam. Ut numquam quaerat atque et deleniti.', 105.89, NULL, '2018-02-16 04:42:01', '2018-02-16 04:42:01'),
(36, 'expedita', 'Id laudantium a et autem dicta tenetur corrupti quae velit consequatur quasi quae.', 'Eaque est optio eos error quia qui. Tempore consequatur inventore incidunt et natus doloremque. Eum qui inventore reprehenderit neque quisquam molestias.', 113.81, NULL, '2018-02-16 04:42:01', '2018-02-16 04:42:01'),
(37, 'voluptatem', 'Quo neque natus consequuntur nobis dolor magni qui quam.', 'Architecto corporis sit aperiam eum quo molestiae. Aut ipsum animi qui aut ut. Voluptas tenetur exercitationem dolores mollitia dolores eum.', 109.40, NULL, '2018-02-16 04:42:01', '2018-02-16 04:42:01'),
(38, 'explicabo', 'Quia nobis architecto porro et et tempore necessitatibus facere.', 'Voluptas non qui tempora iusto. Quidem libero quam eos velit. Eum natus repudiandae voluptatum labore.', 147.97, NULL, '2018-02-16 04:42:01', '2018-02-16 04:42:01'),
(39, 'nemo', 'Voluptas ut sed dolorem quidem repellat fugiat.', 'Numquam architecto unde ut ut cupiditate est. Quasi voluptatibus iusto magni rerum et possimus. Consectetur non omnis odio atque accusantium. Velit corporis dignissimos reprehenderit voluptatum.', 147.35, NULL, '2018-02-16 04:42:01', '2018-02-16 04:42:01'),
(40, 'voluptates', 'Eum autem esse et enim nobis ipsum excepturi.', 'Incidunt nisi eligendi voluptates facilis tempore. Quis totam non natus. Eligendi rerum omnis iste rem reiciendis.', 89.36, NULL, '2018-02-16 04:42:01', '2018-02-16 04:42:01'),
(41, 'eaque', 'Commodi voluptates cum pariatur minus nobis id sed cum.', 'Ut dolorum sunt assumenda qui enim et tempora. Architecto corrupti necessitatibus sint aut esse. Quia esse explicabo aut voluptatem ab accusamus aliquam.', 36.85, NULL, '2018-02-16 04:42:01', '2018-02-16 04:42:01'),
(42, 'dignissimos', 'Delectus beatae excepturi autem culpa qui et cumque sed.', 'Dolorum asperiores dolores aperiam doloribus dolore. Alias eos id sint quia. Nostrum eligendi architecto soluta mollitia cum. Voluptate adipisci sunt sunt culpa ab quibusdam eligendi.', 48.29, NULL, '2018-02-16 04:42:01', '2018-02-16 04:42:01'),
(43, 'iure', 'Dicta repellendus nulla labore repellendus blanditiis neque.', 'Tempora doloribus nostrum voluptas quod totam. Id sit inventore incidunt et neque. Rerum quasi cum in. Voluptatem ut autem eos harum.', 15.18, NULL, '2018-02-16 04:42:01', '2018-02-16 04:42:01'),
(44, 'dolorem', 'Repellendus sint est delectus quis neque esse tenetur optio dignissimos non vel sequi animi.', 'Laudantium iure accusantium sit perspiciatis similique. Quia atque quisquam amet odio consequatur. Aperiam commodi dolor deserunt sint ea est.', 142.99, NULL, '2018-02-16 04:42:01', '2018-02-16 04:42:01'),
(45, 'vero', 'Sit harum hic dolor aperiam doloribus qui sit aut perferendis nobis illo.', 'Voluptas impedit maiores molestiae consequatur ab quia. Veniam ut aperiam eius id repudiandae non. Rerum esse quis mollitia similique sed. Ut aperiam sunt laudantium sunt.', 9.41, NULL, '2018-02-16 04:42:01', '2018-02-16 04:42:01'),
(46, 'ad', 'Velit soluta et beatae ullam maiores expedita laboriosam fugit praesentium voluptatem labore dolores veritatis est.', 'Rerum quae cum aliquid eius. Praesentium illum aut quia odit qui. Aut cupiditate sit rerum ad dolore. Eos ab explicabo dolores quae eos minus.', 144.37, NULL, '2018-02-16 04:42:01', '2018-02-16 04:42:01'),
(47, 'et', 'Perferendis est iure velit rem sed earum est.', 'Praesentium et placeat id fugiat est et eum. Dolor corporis consequatur ex dolores. Voluptatem ullam reprehenderit aliquid laboriosam aut sint.', 119.24, NULL, '2018-02-16 04:42:01', '2018-02-16 04:42:01'),
(48, 'vel', 'Incidunt illum sit ea sunt voluptas ut iure.', 'Reprehenderit sequi ullam voluptatum assumenda omnis aut. Voluptatem delectus ut nisi enim itaque sapiente sit deserunt. Et corrupti qui atque ea. Reprehenderit sit non sunt est voluptate cum.', 68.20, NULL, '2018-02-16 04:42:01', '2018-02-16 04:42:01'),
(49, 'voluptatem', 'Id sint mollitia quidem perferendis at magnam cum explicabo explicabo autem praesentium consequatur.', 'Est quae ad quasi ut enim omnis. Et quo reprehenderit recusandae nulla et non. Et blanditiis dolorum perspiciatis quod eius ut assumenda. Et excepturi voluptates eos animi ducimus nisi quasi.', 134.56, NULL, '2018-02-16 04:42:01', '2018-02-16 04:42:01'),
(50, 'ex', 'Amet deleniti rerum facere eius beatae impedit voluptatibus rem saepe mollitia.', 'Fuga laborum minus natus voluptatem. Rem beatae ab molestiae distinctio voluptas incidunt. Blanditiis fugiat nihil enim. Non inventore illum voluptas quam.', 111.41, NULL, '2018-02-16 04:42:01', '2018-02-16 04:42:01'),
(51, 'nesciunt', 'Consequuntur dolorum necessitatibus est repellat labore excepturi asperiores enim nobis nesciunt.', 'Ipsum et voluptatem quis voluptate eum. Dolores quaerat et repellendus quisquam voluptates. Rem qui accusantium et voluptatem sunt nostrum est.', 90.25, NULL, '2018-02-16 04:42:01', '2018-02-16 04:42:01'),
(52, 'mollitia', 'Voluptas non consequatur aut ut impedit omnis culpa vero aut nulla sunt.', 'Dolores aut voluptas maxime temporibus rem facilis temporibus. Natus in quam neque vel maiores. Ex est similique eos.', 19.14, NULL, '2018-02-16 04:42:02', '2018-02-16 04:42:02'),
(53, 'tempora', 'Error asperiores et possimus a molestiae perferendis possimus voluptatem repellendus quis hic.', 'Est omnis voluptates voluptates. Architecto aut id doloribus sed aut perspiciatis. Et et totam ea vel.', 19.96, NULL, '2018-02-16 04:42:02', '2018-02-16 04:42:02'),
(54, 'necessitatibus', 'Dolores et incidunt laborum explicabo facilis asperiores.', 'Magni ut facilis quod nihil. Voluptatem possimus quaerat mollitia sint doloribus. Aperiam fugit quisquam quis perspiciatis exercitationem cupiditate adipisci.', 43.84, NULL, '2018-02-16 04:42:02', '2018-02-16 04:42:02'),
(55, 'quia', 'Aut et quis repudiandae aut rem omnis reiciendis explicabo deserunt.', 'Facere qui aut quasi quam officiis. Eos est occaecati consequatur ab in minima sit. Quis omnis mollitia consequatur ullam.', 27.06, NULL, '2018-02-16 04:42:02', '2018-02-16 04:42:02'),
(56, 'ipsam', 'Minus ea ea id ut architecto sed sit rerum non consequuntur ipsam.', 'Nesciunt voluptatem qui distinctio eos non. Rerum fugiat hic earum qui placeat. Amet in eveniet corporis eius distinctio.', 136.96, NULL, '2018-02-16 04:42:02', '2018-02-16 04:42:02'),
(57, 'sint', 'Inventore qui sed voluptas aut rerum sequi tempora commodi ut.', 'Nesciunt ratione at vel voluptatem laboriosam. Perferendis quia a et quis est ut. Modi ullam in id vero consequatur corporis. Temporibus doloremque ab numquam voluptatibus numquam quis.', 134.53, NULL, '2018-02-16 04:42:02', '2018-02-16 04:42:02'),
(58, 'saepe', 'Ad nemo veniam autem dolore qui corrupti ullam autem.', 'Consectetur corporis quo exercitationem facere. Nihil eos qui commodi non deleniti nulla veritatis. Maxime quidem debitis aut impedit ducimus id.', 49.51, NULL, '2018-02-16 04:42:02', '2018-02-16 04:42:02'),
(59, 'consequatur', 'Omnis est temporibus autem officia illum nisi enim eum sed eum sequi id eveniet.', 'Ullam atque ipsa voluptatem tempore. Nesciunt impedit molestiae sit maxime velit quas omnis. Corporis ea sint placeat quisquam. Nemo eum quis voluptatum maxime voluptate.', 39.21, NULL, '2018-02-16 04:42:02', '2018-02-16 04:42:02'),
(60, 'quos', 'Ea eius deserunt quibusdam est corporis veniam sed porro fugiat expedita repudiandae et unde odio.', 'Saepe voluptatem fuga excepturi et recusandae animi sed asperiores. Atque sapiente fugiat cumque aut id repellat ut. In ut eos eos ducimus non voluptates. Occaecati dicta quia neque ea in.', 125.86, NULL, '2018-02-16 04:42:02', '2018-02-16 04:42:02'),
(61, 'odio', 'Adipisci et doloremque tempore architecto a esse quod quia.', 'Hic facilis aspernatur ut est. Et aut repellat reiciendis qui dolor sint harum.', 57.66, NULL, '2018-02-16 04:42:02', '2018-02-16 04:42:02'),
(62, 'error', 'Incidunt neque deserunt quidem quas necessitatibus nihil impedit ut.', 'Suscipit autem dolor distinctio odio possimus vel. Earum velit consequuntur ut omnis harum. Nisi eveniet impedit blanditiis. Quia sit ut qui ut vel et.', 87.51, NULL, '2018-02-16 04:42:02', '2018-02-16 04:42:02'),
(63, 'voluptates', 'Vero dolorem est nam cumque veritatis vero aliquid non necessitatibus est.', 'Dolor maiores omnis porro provident dolorum. Excepturi tempora accusantium iusto. Ea numquam consectetur ut iure. Assumenda autem dolor ea quidem ad ea ea.', 148.76, NULL, '2018-02-16 04:42:02', '2018-02-16 04:42:02'),
(64, 'aut', 'Voluptatem consequatur ratione nihil molestias nihil quis sequi dignissimos quia repellat.', 'Numquam iusto possimus vel eos. Tenetur aspernatur facere suscipit odio quae. Laborum facilis quis laboriosam modi eius ratione laudantium. Expedita quisquam vero deserunt.', 148.53, NULL, '2018-02-16 04:42:02', '2018-02-16 04:42:02'),
(65, 'illo', 'Ipsa voluptatum saepe placeat omnis laborum et perferendis quia voluptatem libero est.', 'Ad ipsam et unde nesciunt cumque ea similique. Alias eligendi fugiat dicta corrupti incidunt pariatur nobis.', 139.20, NULL, '2018-02-16 04:42:02', '2018-02-16 04:42:02'),
(66, 'eligendi', 'Nulla a ut ut deserunt ut et minus praesentium.', 'Nihil laudantium quia expedita quam vel quod aspernatur quisquam. Cumque quis neque non iure. Iste eum sint qui mollitia a aliquam.', 7.22, NULL, '2018-02-16 04:42:03', '2018-02-16 04:42:03'),
(67, 'ipsa', 'Maiores adipisci quia corporis et veniam provident dicta minus provident libero quos.', 'Officia provident quia quas aut. Ipsa id voluptas cumque quas praesentium neque. Dignissimos minus molestiae aspernatur minima aliquam atque nulla.', 87.05, NULL, '2018-02-16 04:42:03', '2018-02-16 04:42:03'),
(68, 'nobis', 'Veniam voluptatem maiores eos fuga fugiat eum consequatur officiis tempora maxime.', 'Voluptatem corrupti voluptatem vitae quo cupiditate eius odio. Iste cumque ullam eum facilis. Provident et culpa omnis dolorum ratione.', 54.72, NULL, '2018-02-16 04:42:03', '2018-02-16 04:42:03'),
(69, 'nisi', 'Odit eum est possimus natus recusandae nostrum nihil consectetur nihil.', 'Quia nisi maiores atque rerum. Consectetur placeat blanditiis corrupti vero quia ullam. Voluptatibus consequuntur nesciunt molestiae dolorum. Id sequi nemo autem occaecati voluptatem.', 75.29, NULL, '2018-02-16 04:42:03', '2018-02-16 04:42:03'),
(70, 'qui', 'In aut vero nam laudantium labore est fugit et facilis aut sed.', 'Eius repudiandae sed commodi qui numquam. Tenetur nesciunt animi omnis voluptas et voluptatibus.', 27.11, NULL, '2018-02-16 04:42:03', '2018-02-16 04:42:03'),
(71, 'maiores', 'Omnis distinctio adipisci fugit totam voluptas neque est quisquam magnam ut.', 'Officiis in non est. Iusto deserunt voluptas sunt quam consequatur quaerat. Enim similique consequatur sit debitis amet id. Laudantium et voluptates assumenda ducimus.', 114.98, NULL, '2018-02-16 04:42:03', '2018-02-16 04:42:03'),
(72, 'distinctio', 'Voluptas sed voluptatem repudiandae et et non doloremque quo sit illum omnis molestias quisquam.', 'Explicabo odio consequatur voluptatem assumenda modi nam. Eveniet assumenda accusantium numquam sit voluptas aspernatur exercitationem. Quae eum consequuntur et voluptatem est earum.', 94.04, NULL, '2018-02-16 04:42:03', '2018-02-16 04:42:03'),
(73, 'voluptas', 'Et ab beatae et nisi tenetur necessitatibus in fugiat et aut nesciunt.', 'Consequatur laboriosam reiciendis in voluptas impedit vero. Enim corporis vel reiciendis possimus quod esse. Eos eos est eum natus.', 53.76, NULL, '2018-02-16 04:42:03', '2018-02-16 04:42:03'),
(74, 'et', 'Deleniti atque soluta dolor consequatur fugiat aut est.', 'Est officiis inventore porro autem sunt autem. Et culpa ab cum. Facere et dolores est porro. Voluptatem nulla rerum similique cumque omnis.', 87.49, NULL, '2018-02-16 04:42:03', '2018-02-16 04:42:03'),
(75, 'corporis', 'Eum vitae qui mollitia a dolores sunt minima sunt.', 'Rem aut temporibus sint cupiditate qui. Libero enim sit laboriosam ut impedit exercitationem.', 66.61, NULL, '2018-02-16 04:42:03', '2018-02-16 04:42:03'),
(76, 'voluptatem', 'Accusamus porro facilis odio eaque dignissimos aliquam dicta culpa voluptatem sunt.', 'Ex labore quia vero et assumenda dignissimos. Et quo aliquam nemo quis soluta illum deserunt. Similique quia ea quas dolore quibusdam.', 91.05, NULL, '2018-02-16 04:42:03', '2018-02-16 04:42:03'),
(77, 'repellat', 'Voluptas voluptate laborum amet consequuntur dolor sunt quia ab excepturi quia ex ullam labore.', 'Totam vel ea odio velit aspernatur molestias dolores. Non voluptas in pariatur possimus non vel. Qui accusantium vitae nam magni delectus.', 95.38, NULL, '2018-02-16 04:42:03', '2018-02-16 04:42:03'),
(78, 'modi', 'Quibusdam perferendis magnam quia aliquam velit itaque quisquam aut nam assumenda perferendis sequi quo.', 'Minima exercitationem sed odio minus voluptate. Et ipsa repellendus quo nihil. Repellendus consequatur iure illo fuga sapiente ad dolores.', 37.00, NULL, '2018-02-16 04:42:04', '2018-02-16 04:42:04'),
(79, 'et', 'Placeat explicabo aut error magnam et quia nisi porro.', 'Minima fugit id veritatis corrupti consequatur quo. Est rerum ab iusto nobis similique repellat. Ut sint cumque eaque ipsum. Quis quibusdam enim vel dolore unde.', 74.81, NULL, '2018-02-16 04:42:04', '2018-02-16 04:42:04'),
(80, 'in', 'Cum ad asperiores quasi minus qui at.', 'Id autem porro qui saepe repudiandae voluptatum dolor. Et non et voluptatum perferendis est incidunt autem. Voluptatem et dolor placeat deleniti enim. Provident ipsam aliquam nobis laudantium ullam.', 39.37, NULL, '2018-02-16 04:42:04', '2018-02-16 04:42:04'),
(81, 'rerum', 'Ea rerum autem nam non consequuntur odio ipsum.', 'Inventore eius ipsum fugit cupiditate et distinctio. Consequatur eos porro totam tempore. Quae consequatur est quaerat nemo odio nisi repudiandae. Cupiditate pariatur aliquid ex minima aut aperiam.', 103.50, NULL, '2018-02-16 04:42:04', '2018-02-16 04:42:04'),
(82, 'distinctio', 'Rerum placeat magni veniam quis amet id in expedita voluptates eius dolor iure ab.', 'Repellat iste consequatur autem quia aliquid explicabo. Voluptatem ut et non et officiis. Autem est quod nesciunt ad cupiditate vel. Nostrum similique itaque id est.', 69.13, NULL, '2018-02-16 04:42:04', '2018-02-16 04:42:04'),
(83, 'voluptatem', 'Et dolores rerum error blanditiis doloremque ut et est harum sed dolor.', 'Ea ut velit nihil hic. Perferendis iusto at eos rerum est dolores et. Illo quia est id eum veniam aut debitis.', 41.46, NULL, '2018-02-16 04:42:04', '2018-02-16 04:42:04'),
(84, 'vel', 'Cupiditate sit eum consectetur eum nam voluptatum nemo perspiciatis odit ut ratione ipsum sit.', 'Dolores est aliquam sit nesciunt voluptas. Porro eveniet eum harum quod ducimus sint omnis. Rerum sunt tempora et culpa veritatis aspernatur.', 49.58, NULL, '2018-02-16 04:42:04', '2018-02-16 04:42:04'),
(85, 'nihil', 'Ab dolore itaque qui culpa vitae maxime tenetur id fugit.', 'Impedit molestiae non nemo. Sunt doloremque recusandae deserunt praesentium facilis ab. Non tempore impedit adipisci est.', 82.65, NULL, '2018-02-16 04:42:04', '2018-02-16 04:42:04'),
(86, 'omnis', 'Laboriosam omnis culpa voluptatum qui eos dicta fugiat sint.', 'Repellat at labore ex. Aut aut et sunt ullam qui numquam molestias. Dolores quo similique fugit est eveniet recusandae.', 148.26, NULL, '2018-02-16 04:42:04', '2018-02-16 04:42:04'),
(87, 'animi', 'Vel ut ut asperiores est tempora vitae et odio minus deserunt ab saepe fugit ipsa.', 'Delectus magnam alias ut similique tempore. Temporibus dolorum hic esse illum. Maiores omnis iure consequuntur voluptate velit.', 58.81, NULL, '2018-02-16 04:42:04', '2018-02-16 04:42:04'),
(88, 'ea', 'Impedit itaque dolor quidem ut blanditiis est earum quia incidunt.', 'Totam magni reiciendis blanditiis voluptatem amet reiciendis blanditiis facere. In minima aperiam dolores dolor illum maxime. Est exercitationem illum nulla ipsam.', 134.22, NULL, '2018-02-16 04:42:04', '2018-02-16 04:42:04'),
(89, 'asperiores', 'Et ut iure incidunt eum perspiciatis sint magnam autem.', 'Ipsam aut ex velit quae. Ab ipsa iure quia expedita eos est. Officiis earum nesciunt nulla a excepturi et modi.', 37.88, NULL, '2018-02-16 04:42:04', '2018-02-16 04:42:04'),
(90, 'quam', 'Aliquid saepe est ut sed illum praesentium deleniti.', 'Quia iure non expedita. Facere minus fugiat perspiciatis inventore qui tenetur natus. Omnis commodi rerum ea possimus dolorem ipsam.', 27.77, NULL, '2018-02-16 04:42:04', '2018-02-16 04:42:04'),
(91, 'explicabo', 'Non temporibus suscipit fuga cumque recusandae ratione veritatis consequatur inventore molestiae eaque.', 'Nulla quaerat non voluptatem deserunt repellat porro est. Incidunt odit aut nisi et. Et laborum quas nam fugit est deleniti.', 33.32, NULL, '2018-02-16 04:42:04', '2018-02-16 04:42:04'),
(92, 'exercitationem', 'Non labore aspernatur corporis vero consequuntur modi aut.', 'Debitis doloremque reiciendis odio unde omnis nulla. Veritatis numquam debitis voluptatem voluptatibus non aliquid. Distinctio laborum distinctio aspernatur repellat quia.', 26.90, NULL, '2018-02-16 04:42:04', '2018-02-16 04:42:04'),
(93, 'ab', 'Quas quas totam dolore tempore quibusdam dolor blanditiis nam omnis sed mollitia voluptas in.', 'Consectetur nihil suscipit omnis id. Sunt aut eum rem at nihil magnam omnis. Modi corrupti sed necessitatibus dolor vero rerum. Facilis ut sit quas possimus omnis et.', 31.89, NULL, '2018-02-16 04:42:04', '2018-02-16 04:42:04'),
(94, 'excepturi', 'At alias et vero et illum tempora sunt incidunt perferendis nulla officiis.', 'Fuga illo et excepturi similique eaque omnis. Nam est quidem excepturi harum. Vel laudantium consequatur libero voluptatem aliquam ex ut non. Magni eum delectus labore nam.', 48.91, NULL, '2018-02-16 04:42:04', '2018-02-16 04:42:04'),
(95, 'non', 'Non voluptatem eius repellendus odio consectetur at quis commodi deleniti voluptatem et dolores.', 'Ut a quis consequatur quia modi voluptatem dolores. Rerum officia consequuntur cupiditate consectetur et. Sint consequuntur ipsa ab nobis perspiciatis voluptatem dolore.', 91.63, NULL, '2018-02-16 04:42:04', '2018-02-16 04:42:04'),
(96, 'sapiente', 'Qui eum eos consequatur libero iusto omnis non possimus rem et ut id.', 'Ullam velit ratione et dolores veritatis modi. Aperiam ut fuga dolorum aspernatur eum. Quam id vel cupiditate debitis et molestiae aliquid.', 17.54, NULL, '2018-02-16 04:42:05', '2018-02-16 04:42:05'),
(97, 'praesentium', 'Saepe ut eum vel qui non perferendis nam.', 'Enim molestiae reprehenderit tempora et porro non. Atque ea quos inventore vel. Nihil vel quisquam placeat nesciunt quos ut eligendi.', 67.62, NULL, '2018-02-16 04:42:05', '2018-02-16 04:42:05'),
(98, 'non', 'Libero dolorum et qui cupiditate quisquam aspernatur perferendis ut illum doloribus cum.', 'Eum eos ea ut magni molestiae vero distinctio ex. Nemo facere explicabo provident id dicta harum dolores. Id in mollitia aut ipsa at.', 25.65, NULL, '2018-02-16 04:42:05', '2018-02-16 04:42:05'),
(99, 'repellat', 'Ut aut doloribus recusandae quia aut occaecati vel autem rerum eligendi.', 'Eum cupiditate fugiat quas. Ea eius cum modi doloremque et explicabo suscipit. Accusantium error dignissimos soluta.', 141.94, NULL, '2018-02-16 04:42:05', '2018-02-16 04:42:05'),
(100, 'quia', 'Et ea dolor porro perspiciatis porro modi iusto.', 'Rem aliquam perspiciatis distinctio fugiat vero officia. Quam in ratione eligendi omnis aspernatur ut. Ducimus quo eum omnis voluptate sit aut.', 7.38, NULL, '2018-02-16 04:42:05', '2018-02-16 04:42:05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Jake', 'kaje@hotmail.com', '$2y$10$MnCSxcRN44Hr.IOiYH0mZuSUCqxLFtGLUvXjPCDSWmP4XEwRzhG/O', NULL, '2018-02-16 04:41:59', '2018-02-16 04:41:59');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
