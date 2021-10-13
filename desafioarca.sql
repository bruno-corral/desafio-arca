-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 13-Out-2021 às 15:01
-- Versão do servidor: 10.1.30-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `desafioarca`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `companies`
--

CREATE TABLE `companies` (
  `id` int(10) UNSIGNED NOT NULL,
  `company` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zipcode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `companies`
--

INSERT INTO `companies` (`id`, `company`, `phone`, `address`, `zipcode`, `city`, `state`, `description`, `category`) VALUES
(1, 'Facebook', '997182828', 'Rua do facebook', '16016456', 'São paulo', 'SP', 'Esta é uma grande empresa', 'Site'),
(2, 'Twitter', '997280000', 'Rua do Twitter', '13019111', 'Rio de Janeiro', 'RJ', 'Esta empresa é demais!!!', 'entertainment'),
(3, 'Google', '998792880', 'Rua Marechal Deodoro da Fonseca', '13013900', 'Salvador', 'BA', 'Empresa com um dinamismo fora do comum.', 'auto'),
(4, 'Colgate', '887102829', 'Rua dos limoeiros', '10020300', 'Rio Preto', 'SP', 'Essa empresa é divina', 'auto'),
(5, 'Intel', '997788654', 'Avenida grande', '12033999', 'Campo Grande', 'MS', 'Muito grande essa empresa', 'entertainment'),
(6, 'Kelloggs', '908376124', 'Rua dos Descobridores', '77765788', 'Araguaína', 'TO', 'Essa empresa é muito longe', 'beautyadnfitness'),
(7, 'Ferrari', '890076756', 'Rua Barão de Vitória', '09961660', 'Diadema', 'SP', 'Ela irá crescer muito nos próximos anos', 'entertainment'),
(8, 'C&A', '998005456', 'QE 11 Área Especial C', '71020631', 'Brasília', 'DF', 'Essa empresa é muito massa', 'foodanddining'),
(9, 'Gillette', '997131343', 'Rua Domingos Olímpio', '62011140', 'Sobral', 'CE', 'Não gostei tanto dessa empresa', 'foodanddining'),
(10, 'Disney', '980096557', 'Avenida Desembargador Moreira', '60170001', 'Fortaleza', 'CE', 'Empresa de desenho e filmes', 'foodanddining'),
(11, 'Nestlé', '963385092', 'Rodovia Raposo Tavares', '06709015', 'Cotia', 'SP', 'Empresa do setor de alimentos e bebidas', 'health'),
(12, 'Siemens', '969156391', 'Rua Pereira Estéfano', '04144070', 'São Paulo', 'SP', 'Essa empresa é divina', 'auto'),
(13, 'Harley Davidson', '996652029', 'Rua dos Carijós', '30120060', 'Belo Horizonte', 'MG', 'Empresa de motos', 'travel'),
(14, 'McDonalds', '978545923', 'Rua Arlindo Nogueira', '64000290', 'Teresina', 'PI', 'Empresa americana', 'foodanddining'),
(15, 'Procter & Gamble', '988774816', 'Avenida Tocantins', '75802095', 'Jataí', 'GO', 'É uma empresa de bens de consumo, fundada em 1837', 'travel'),
(16, 'Skype', '915312699', 'Praça da República', '68700216', 'São Paulo', 'SP', 'O conceito original é Sky Peer-To-Peer.', 'travel'),
(17, 'Adobe', '981733383', 'Rua Frederico Moura', '14401150', 'Franca', 'SP', 'A cor dessa empresa é vermelha', 'entertainment'),
(18, '3M', '949074860', 'Travessa Antônio Ferreira', '68700216', 'Capanema', 'PA', 'é um grupo econômico multinacional americano de tecnologia diversificada', 'health'),
(19, 'Amazon', '922888392', 'Avenida São João', '13216000', 'Jundiaí', 'SP', 'é uma empresa multinacional de tecnologia norte-americana com sede em Seattle', 'travel'),
(20, 'Audi', '967521206', 'Rua das Fiandeiras', '04545005', 'São Paulo', 'SP', 'Empresa de carros', 'auto');

-- --------------------------------------------------------

--
-- Estrutura da tabela `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_10_06_160305_create_companies_table', 1),
(6, '2021_10_09_140405_create_states_table', 1),
(7, '2021_10_11_135601_create_categories_table', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Bruno', 'bruno@meuemail.com', NULL, '$2y$10$t8rCVt8BzoZZHxxeV.bBZ.l7U9qw3mjkfKOQ3dpfLkOUYwOSgapdy', NULL, '2021-10-11 22:10:35', '2021-10-11 22:10:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
