-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 20 Gru 2019, 15:30
-- Wersja serwera: 10.4.10-MariaDB
-- Wersja PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `gwarancje24`
--
CREATE DATABASE IF NOT EXISTS `gwarancje24` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `gwarancje24`;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `gw24_agreement`
--

CREATE TABLE `gw24_agreement` (
  `agreement_nr` int(20) NOT NULL,
  `agreement_number` varchar(50) CHARACTER SET armscii8 DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  `ending_date` date DEFAULT NULL,
  `company_name` varchar(50) NOT NULL,
  `street` varchar(50) NOT NULL,
  `address_number` varchar(10) NOT NULL,
  `local_number` varchar(10) DEFAULT NULL,
  `postal` varchar(10) NOT NULL,
  `city` varchar(50) NOT NULL,
  `nip` varchar(15) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `contact_street` varchar(50) DEFAULT NULL,
  `contact_address_number` varchar(10) DEFAULT NULL,
  `contact_local_number` varchar(10) DEFAULT NULL,
  `contact_postal` varchar(10) DEFAULT NULL,
  `contact_city` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `gw24_agreement`
--

INSERT INTO `gw24_agreement` (`agreement_nr`, `agreement_number`, `create_date`, `ending_date`, `company_name`, `street`, `address_number`, `local_number`, `postal`, `city`, `nip`, `first_name`, `last_name`, `contact_street`, `contact_address_number`, `contact_local_number`, `contact_postal`, `contact_city`) VALUES
(260, '3/06/2019', '2019-06-03', '2022-06-02', 'PRZEDSIĘBIORSTWO USŁUGOWO-HANDLOWE \"DRA-BUD\" SPÓŁK', 'ul. Władysława Reymonta', '16', '', '96-500', 'Sochaczew', '8371820670', 'MAŁGORZATA', 'DRABER', '', '', '', '', ''),
(261, '5/06/2019', '2019-06-27', '2022-06-26', 'DROGAP Agnieszka Pawlak', 'ul. Ułańska', '8', '', '05-077', 'Warszawa', '9521499018', 'Wojciech', 'Pawlak', '', '', '', '', ''),
(263, '7/07/2019	', '2019-07-09', '2022-07-08', 'CZATA OCHRONA OSÓB I MIENIA SPÓŁKA Z OGRANICZONĄ O', 'ul. Lotnicza', '19', '11', '82-300', 'Elbląg', '5783111527', 'Janusz', 'Staszewski', '', '', '', '', ''),
(264, '8/07/2019', '2019-07-10', '2022-07-09', 'MASTERS SPÓŁKA Z OGRANICZONĄ ODPOWIEDZIALNOŚCIĄ', 'ul. Władysława Broniewskiego', '47C', '15', '82-300', 'Elbląg', '5783122169', 'ANDRZEJ', 'CZERWIŃSKI', '', '', '', '', ''),
(274, '10/07/2019', '2019-07-26', '2022-07-25', 'CHMIEL ANNA USŁUGI-HANDEL-TRANSPORT', 'Charężów', '6', '', '26-060', 'Chęciny', '9591352059', 'Anna', 'Chmiel', 'Kolberga', '9', '', '25-516', 'Kielce'),
(277, '11/08/2019', '2019-08-02', '2022-08-01', 'PREAL\'S SPÓŁKA Z OGRANICZONĄ ODPOWIEDZIALNOŚCIĄ', 'ul. Algierska', '17', '5', '03-977', 'Warszawa', '1132920117', 'Kamil', 'Radomski', NULL, NULL, NULL, NULL, NULL),
(281, '13/08/2019', '2019-08-21', '2022-08-20', 'JANICKI TADEUSZ PRZEDSIĘBIORSTWO PRODUKCYJNO-HANDL', 'ul. Siemianicka', '57', '', '55-120', 'Oborniki Śląskie', '9150000259', 'TADEUSZ', 'JANICKI', NULL, NULL, NULL, NULL, NULL),
(282, '14/08/2019	', '2019-08-22', '2022-08-21', 'GREMEDIG SPÓŁKA Z OGRANICZONĄ ODPOWIEDZIALNOŚCIĄ', 'ul. Leonida Teligi', '21', '', '42-215', 'Częstochowa', '5732866339', 'Łukasz', 'Ignacyk', NULL, NULL, NULL, NULL, NULL),
(285, '9/07/2019', '2019-07-26', '2022-07-25', 'KAMILA NOWAKOWSKA KAMBUD', 'os. XX-lecia', '7', '24', '32-340', 'Wolbrom', '6372101634', 'KAMILA', 'NOWAKOWSKA', NULL, NULL, NULL, NULL, NULL),
(286, '16/09/2019', '2019-09-16', '2022-09-15', 'Sławomir Gradek \"TREST\"; \"Auto-Viper\"', 'ul. Wołoska', '70', '40', '02-507', 'Warszawa', '5210521848', 'SŁAWOMIR', 'GRADEK', NULL, NULL, NULL, NULL, NULL),
(287, '1/06/2019', '2019-05-24', '2022-05-23', 'USABILITY LAB SPÓŁKA Z OGRANICZONĄ ODPOWIEDZIALNOŚ', 'ul. Kazimierza Wielkiego', '7', '5', '65-047', 'Zielona Góra', '9731014524', 'Aneta', 'Płocharczyk-Rajkowska', '', '', '', '', ''),
(288, '2/06/2019', '2019-05-27', '2022-07-26', 'ERGOGIS SPÓŁKA Z OGRANICZONĄ ODPOWIEDZIALNOŚCIĄ', 'Aleja Monte Cassino', '6', '', '75-412	', 'Koszalin', '6692525175', 'Dariusz', 'Antoni Osuch', '', '', '', '', ''),
(289, '4/06/2019', '2019-06-19', '2022-06-18', 'EUROTEC POLAND SPÓŁKA Z OGRANICZONĄ ODPOWIEDZIALNO', '', '175', '', '87-140	', 'Grzywna', '5842726881', 'Krzysztof', 'Patyk', NULL, NULL, NULL, NULL, NULL),
(290, '6/07/2019', '2019-07-09', '2022-07-08', 'A&M Przedsiębiorstwo Robót Drogowych Mateusz Kűhn', 'ul. Tworkowska	', '48', '', '47-450', 'Krzyżanowice', '6392006353', 'Mateusz', 'Kuhn', NULL, NULL, NULL, NULL, NULL),
(291, '12/08/2019', '2019-08-13', '2022-08-12', 'ENDO-TECH BUCZMA WIŚNIEWSKI SPÓŁKA JAWNA', 'ul. Hutnicza', '59', '', '81-061', 'Gdynia', '9581677618', 'Robert', 'Wiśniewski', NULL, NULL, NULL, NULL, NULL),
(292, '15/10/2019', '2019-09-04', '2022-09-03', 'IWBIG SPÓŁKA Z OGRANICZONĄ ODPOWIEDZIALNOŚCIĄ', 'ul. Kaszubska', '6A', '1', '11-400', 'Kętrzyn', '7422256056', 'Jacek', 'Jakubowski', NULL, NULL, NULL, NULL, NULL),
(296, '17/09/2019', '2019-09-23', '2022-09-22', '\"GGS CONSULTING SPÓŁKA Z OGRANICZONĄ ODPOWIEDZIALN', 'ul. Żółta', '10', '', '54-043', 'Wrocław', '8943038262', 'Piotr ', 'Skołucki', NULL, NULL, NULL, NULL, NULL),
(297, '18/09/2019', '2019-09-24', '2022-09-23', 'MARCIN KRYSTECKI MERKURY MR DEVELOPMENT POLAND TEC', 'ul. Składowa', '28', '', '30-010', 'Kraków', '9452180896', 'MARCIN', 'KRYSTECKI', NULL, NULL, NULL, NULL, NULL),
(298, '19/09/2019', '2019-09-26', '2022-09-25', 'K2 GROUP SPÓŁKA Z OGRANICZONĄ ODPOWIEDZIALNOŚCIĄ', 'ul. Janiny Wengris', '26', '', '10-765', 'Olsztyn', '7393899690', 'Mateusz ', 'Kiełek', NULL, NULL, NULL, NULL, NULL),
(299, '20/09/2019', '2019-09-26', '2022-09-25', 'EFL POLARIS SPÓŁKA Z OGRANICZONĄ ODPOWIEDZIALNOŚCI', 'ul. Stefana Żeromskiego', '12 A', '', '05-250', 'Słupno', '5492413198', 'Dariusz ', 'Świątek', NULL, NULL, NULL, NULL, NULL),
(301, '21/10/2019', '2019-10-02', '2022-10-01', 'KAMIL RETES \"KAM - BUD\" USŁUGI OGÓLNOBUDOWLANE', 'ul. gen. Antoniego Madalińskiego', '13', '19', '07-410', 'Ostrołęka', '7582228264', 'KAMIL', 'RETES', NULL, NULL, NULL, NULL, NULL),
(302, '22/10/2019', '2019-10-16', '2022-10-15', 'BALTIC SUN SPÓŁKA Z OGRANICZONĄ ODPOWIEDZIALNOŚCIĄ', 'ul. Myśliwska', '78', '40', '80-283', 'Gdańsk', '9571090998', 'Krzysztof Unger Baltic Sun Sp. z o.o.', 'Krzysztof Unger ', NULL, NULL, NULL, NULL, NULL),
(304, '23/10/2019', '2019-10-24', '2022-10-23', 'NICRAM Marcin Górny', 'ul. Mariana Wyrzykowskiego', '5', '31', '03-142', 'Warszawa', '5641712263', 'MARCIN', 'GÓRNY', NULL, NULL, NULL, NULL, NULL),
(306, '24/10/2019', '2019-10-31', '2022-10-30', 'Niepubliczny Zakład Opieki Zdrowotnej RedMedic Sta', 'ul. Mikołaja Reja', '8', '11', '32-400', 'Myślenice', '6811989226', 'STANISŁAW', 'POKÓJ', NULL, NULL, NULL, NULL, NULL),
(307, '25/11/2019', '2019-11-05', '2022-11-04', 'NIEPUBLICZNY ZAKŁAD OPIEKI ZDROWOTNEJ \"VANMED\" W. ', 'ul. Wysokie Brzegi', '2', '', '32-600', 'Oświęcim', '5492206281', 'WOJCIECH', 'SIEPRAWSKI', NULL, NULL, NULL, NULL, NULL),
(308, '26/11/2019', '2019-11-06', '2022-11-05', 'BIURO OCHRONY SPECJALNEJ BOS SPÓŁKA Z OGRANICZONĄ ', 'ul. Lelewela', '8', '40', '42-202', 'Częstochowa', '9492194054', 'Beata', ' Pośpiech', NULL, NULL, NULL, NULL, NULL),
(309, '27/11/2019', '2019-11-06', '2022-11-05', 'COTRIP KOMPLEX SPÓŁKA Z OGRANICZONĄ ODPOWIEDZIALNO', 'ul. Poloczka', '2', '', '44-178', 'Przyszowice', '5492432965', 'Roman ', 'Zagórski', NULL, NULL, NULL, NULL, NULL),
(310, '28/11/2019', '2019-11-08', '2022-11-07', 'KMD PRZEMYSŁAW MYDLAK', 'Średnia Wieś', '69', '', '22-335', 'Żółkiewka-Osada', '5641723166', 'PRZEMYSŁAW', 'MYDLAK', NULL, NULL, NULL, NULL, NULL),
(311, '29/11/2019', '2019-11-18', '2022-11-17', '\"RINAR\" Rafał Krakowiak', 'Koźla', '44', '', '66-008', 'Świdnica', '9730795301', 'RAFAŁ', 'KRAKOWIAK', NULL, NULL, NULL, NULL, NULL),
(312, '30/11/2019', '2019-11-19', '2022-11-18', 'DOM-LAS DOMINIK STRYJAK', 'ul. Krotoszyńska', '74', '', '63-714', 'Tomnice', '6211052540', 'DOMINIK', 'STRYJAK', NULL, NULL, NULL, NULL, NULL),
(313, '31/11/2019', '2019-11-20', '2022-11-19', 'Zakład Usług Leśnych Tomasz Bałgaj', 'Gardzień', '21', '', '14-241', 'Ząbrowo', '7441230767', 'Tomasz', 'Bałgaj', NULL, NULL, NULL, NULL, NULL),
(314, '32/11/2019', '2019-11-21', '2022-11-20', 'ZAKŁAD USŁUG LEŚNYCH \"ZATBOR\" ZBIGNIEW CHOMEJ', 'Strażacka', '10', '', '07-217', 'Zatory', '7621011713', 'Zbigniew', 'Chomej', NULL, NULL, NULL, NULL, NULL),
(315, '33/11/2019', '2019-11-21', '2022-11-20', 'ZAKŁAD USŁUG LEŚNYCH MADEJ STANISŁAW', 'Leśna ', '7', '11', '76-015', 'Manowo', '4990386749', 'Stanislaw ', 'Madej', NULL, NULL, NULL, NULL, NULL),
(316, '34/12/2019', '2019-12-04', '2022-12-03', 'Specjaliści od Zieleni Grzegorz Zakrzewski', 'ul. Jana Kazimierza', '43', '', '05-126', 'Nieporęt', '5361870386', 'GRZEGORZ', 'ZAKRZEWSKI', NULL, NULL, NULL, NULL, NULL),
(317, '35/12/2019', '2019-12-08', '2022-12-07', 'ZAKŁAD USŁUGOWY ECHO-LAS JUSTYNA JANKOWSKA', 'Cichoradz', '20', '2', '87-133', 'Rzęczkowo', '9561684294', 'JUSTYNA', 'JANKOWSKA', NULL, NULL, NULL, NULL, NULL),
(318, '36/12/2019', '2019-12-09', '2022-12-08', 'Usługi leśne AD-KAM Ireneusz Łaciak - lider konsor', 'ul. Nyska', '26', '', '48-325', 'Ścinawa Nyska', '7531333749', 'IRENEUSZ', 'ŁACIAK', NULL, NULL, NULL, NULL, NULL),
(319, '37/12/2019', '2019-12-10', '2022-12-09', 'W GROUP SPÓŁKA Z OGRANICZONĄ ODPOWIEDZIALNOŚCIĄ', 'Mostki 17', '17', '', '63-507', 'Mostki', '5140344802', 'Arkadiusz', 'Wasielewski', NULL, NULL, NULL, NULL, NULL),
(320, '38/12/2019', '2019-12-11', '2022-12-10', 'STOWARZYSZENIE CENTRUM INTEGRACYJNO ANIMACYJNE', 'ul. Alejowa', '13', '', '08-450', 'Łaskarzew', '8261969945', 'Jan', 'Testowy', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `gw24_agreement_numbers`
--

CREATE TABLE `gw24_agreement_numbers` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `value` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `gw24_agreement_numbers`
--

INSERT INTO `gw24_agreement_numbers` (`id`, `name`, `value`) VALUES
(1, 'agreement_number', 38),
(2, 'W toku', 1),
(3, 'Zakończone', 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `gw24_alert`
--

CREATE TABLE `gw24_alert` (
  `id` int(11) NOT NULL,
  `header` varchar(1000) DEFAULT NULL,
  `desc_1` varchar(1000) DEFAULT 'NULL',
  `desc_2` varchar(1000) DEFAULT 'NULL',
  `color` varchar(100) NOT NULL DEFAULT 'warning' COMMENT 'bootstrap color, add text-*[color]',
  `isON` int(11) DEFAULT 0 COMMENT '0-turned off, 1- turned on'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `gw24_alert`
--

INSERT INTO `gw24_alert` (`id`, `header`, `desc_1`, `desc_2`, `color`, `isON`) VALUES
(1, 'Nagłówek alertu', 'Opis alertu', 'Dodatkowy opis alertu', 'warning', 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `gw24_auction`
--

CREATE TABLE `gw24_auction` (
  `id` int(11) NOT NULL,
  `przetarg_nr` varchar(250) NOT NULL,
  `przetarg_przedmiot` varchar(1200) NOT NULL,
  `kwota_polisy` decimal(20,0) DEFAULT NULL,
  `beneficjent_nip` varchar(50) NOT NULL,
  `przetarg_data_otwarcia` varchar(20) NOT NULL,
  `beneficjent_nazwa` varchar(350) NOT NULL,
  `beneficjent_ulica` varchar(100) NOT NULL,
  `beneficjent_nr_domu` varchar(50) NOT NULL,
  `beneficjent_nr_lokalu` varchar(30) NOT NULL,
  `beneficjent_kod_pocztowy` varchar(30) NOT NULL,
  `beneficjent_miasto` varchar(100) NOT NULL,
  `regon` varchar(15) DEFAULT NULL,
  `create_date` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `gw24_auction`
--

INSERT INTO `gw24_auction` (`id`, `przetarg_nr`, `przetarg_przedmiot`, `kwota_polisy`, `beneficjent_nip`, `przetarg_data_otwarcia`, `beneficjent_nazwa`, `beneficjent_ulica`, `beneficjent_nr_domu`, `beneficjent_nr_lokalu`, `beneficjent_kod_pocztowy`, `beneficjent_miasto`, `regon`, `create_date`) VALUES
(161, 'BF-II.3710.28.2019', 'Usługi wsparcia w zakresie wdrażanych standardów i procedur obsługi interesanta w sądownictwie powszechnym.', '790', '5261673166', '30.05.2019', 'MINISTERSTWO SPRAWIEDLIWOŚCI', 'Al. Ujazdowskie', '11', '', '00-567', 'Warszawa', '000319150', '2019-10-10 11:55:01'),
(162, 'IS.I.272.1.2019', 'Opracowanie cyfrowych arkuszy mapy topograficznej w skali 1:10 000 dla wybranego obszaru województwa małopolskiego wraz z aktualizacją zbiorów danych BDOT10k - część III', '490', '6762178337', '30.05.2019', 'WOJEWÓDZTWO MAŁOPOLSKIE', 'Basztowa', '22', '', '31-156', 'Kraków', '', '2019-10-10 11:55:01'),
(165, 'UD-XI-XXP.271.27.WIR.2019', 'Przebudowa budynku Szkoły Podstawowej nr 14 w zakresie zapleczy sanitarno-socjalnych oraz montaż wentylacji nawiewno - wywiewnej dla dwóch sal gimnastycznych przy ul. Sosnowskiego 10 w Warszawie', '290', '5252248481', '10.06.2019', 'MIASTO STOŁECZNE WARSZAWA', 'Plac Bankowy', '3', '5', '00-950', 'Warszawa', '015259640', '2019-10-10 11:55:01'),
(166, 'KOS.WOP.SZ.260.21.2019', 'Rozbiórki budynków w m. Gogółczyn dz. Nr5/22 ;5/26 ;5/29 ;5/30 ;5/31 obręb Gogółczyn ', '790', '5272818355', '25.06.2019', 'KRAJOWY OŚRODEK WSPARCIA ROLNICTWA Oddział Terenowy w Koszalinie  ', 'ul. Partyzantów ', '15A', '', '75-411', 'Koszalin ', '367849538', '2019-10-10 11:55:01'),
(168, 'WZP.271.32.2019', 'Budowa ulicy Bartosza na odcinku od ul. Szkolnej do ul. Staszica z kostki betonowej w ramach zadania budżetowego pn., „projekt i budowa ul. Bartosza”.', '290', '5321007014', '05.07.2019', 'Gmina Otwock', 'Armii Krajowej ', '5', '', '05-400', 'Otwock', '', '2019-10-10 11:55:01'),
(169, 'WZP.271.33.2019', 'Budowa ul. Pokojowej na odcinku od ul. Żeromskiego do ul. Sołtana wraz z przebudową sieci elektroenergetycznej w ramach zadania inwestycyjnego- „Budowa ul. Pokojowej”.', '290', '5321007014', '05.07.2019', 'Gmina Otwock', 'Armii Krajowej', '5', '', '05-400', 'Otwock', '013268770', '2019-10-10 11:55:01'),
(171, 'ZP.271.47.2019', 'Przebudowa ul. Bojanowskiej w Raciborzu', '590', '6391002175', '12.07.2019', 'Miasto Racibórz', 'Króla Stefana Batorego ', '6', '', '47-400', 'Racibórz', '276258397', '2019-10-10 11:55:01'),
(172, '2019/46', 'Świadczenie usługi ochrony fizycznej obiektów administrowanych przez COAR- Część II', '290', '5213590436', '12.07.2019', 'Centrum Obsługi Administracji Rządowej', 'ul. Powsińska ', '69', '71', '02-903', 'Elbląg', '142746130', '2019-10-10 11:55:01'),
(173, 'ZDW/RDW.E-2/PN/3220/51/19', 'Odnowy nawierzchni dróg wojewódzkich administrowanych przez Rejon Dróg w Elblągu z podziałem na części- CZĘŚĆ 2', '590', '7393890447', '18.07.2019', 'WOJEWÓDZTWO WARMIŃSKO-MAZURSKIE -ZARZĄD DRÓG WOJEWÓDZKICH', 'ul. Pstrowskiego', '28b', '', '10-602', 'Olsztyn', '510742333', '2019-10-10 11:55:01'),
(175, 'ZS/01/19', 'Świadczenie usług ochrony mienia i osób dla członków grupy zakupowej organizowanej przez GPP Sp. z O. O.', '590', '8762272847', '16.07.2019', 'GRUDZIĄDZKI PARK PRZEMYSŁOWY SPÓŁKA Z OGRANICZONĄ ODPOWIEDZIALNOŚCIĄ', 'ul. Ludwika Waryńskiego', '32-36', '', '86-300', 'Grudziądz', '340009029', '2019-10-10 11:55:01'),
(176, 'PRU.WOP.260.21.2019', 'Rozbiórka obiektów budowlanych znajdujących się na terenie powiatu człuchowskiego w miejscowość Główna, obręb Rozwory, gm. Debrzno', '290', '', '25.06.2019', 'Krajowy Ośrodek Wsparcia Rolnictwa Oddział Terenowy w Pruszczu Gdańskim	', 'ul. Powstańców Warszawy ', '28', '', '83-000 ', 'Pruszcz Gdański', '', '2019-10-10 11:55:01'),
(177, 'PRU.WOP.260.22.2019', 'Rozbiórka budynku mieszalni pasz położonego na dz. nr 3/25, obręb Biesowice, gm. Kępice, powiat słupski', '290', '', '25.06.2019', 'Krajowy Ośrodek Wsparcia Rolnictwa Oddział Terenowy w Pruszczu Gdańskim', 'ul. Powstańców Warszawy ', '28', '', '83-000 ', 'Pruszcz Gdański', '', '2019-10-10 11:55:01'),
(178, 'PRU.WOP.260.23.2019', 'Rozbiórka trzech obiektów znajdujących się na terenie gminy Morzeszczyn, powiat tczewski', '290', '', '25.06.2019', 'Krajowy Ośrodek Wsparcia Rolnictwa Oddział Terenowy w Pruszczu Gdańskim	', 'ul. Powstańców Warszawy ', '28', '', '83-000 ', 'Pruszcz Gdański', '', '2019-10-10 11:55:01'),
(181, 'RO.271.19.1', 'Prace modernizacyjne i adaptacyjne budynku położonego w Marchocicach dla potrzeb Ośrodka Aktywnego Seniora w ramach projektu „Aktywny Senior” w ramach RPO WM 2014-2020, 9 Oś priorytetowa Włączenie społeczne, Działania 9.2 Usługi społeczne i zdrowotne', '290', '6591184436', '07.08.2019', 'Gmina Racławice – Środowiskowy Dom Samopomocy w Kościejowie', '', '15', '', '32-222', 'Racławice', '', '2019-10-10 11:55:01'),
(182, 'GR.271.12.2019', 'Nazwa zadania: „Dowóz i rozwóz dzieci do szkół podstawowych i przedszkola na terenie gminy\r\nLelów pojazdami przeznaczonymi do przewozu dzieci od dnia 02.09.2019 r. do 26.06.2020 r.\r\noraz od 01.09.2020 r. do 25.06.2021 r., w formie zakupu biletów miesięcznych', '290', '9492172992', '29.07.2019', 'Gmina Lelów', 'ul. Szczekocińska', '18', '', '42-235', 'Lelów', '', '2019-10-10 11:55:01'),
(183, 'ZPI 271.7.2019', 'Dowóz uczniów do Szkoły Podstawowej im. Piotra Barylaka w Książnicach Wielkich\r\noraz Centrum Oświatowego w Koszycach w roku szkolnym 2019/2020', '290', '6821606646', '01.08.2019', 'GMINA KOSZYCE', 'ul. Elżbiety Łokietkówny', '14', '', '32-130', 'Koszyce', '291010091', '2019-10-10 11:55:01'),
(184, 'PRU.WOP.260.26.2019', '„Rozbiórka budynku kotłowni na działce nr 155/5, obręb Barlewice, gmina Sztum”', '390', '', '02.08.2019', 'Krajowy Ośrodek Wsparcia Rolnictwa 	 Oddział Terenowy w Pruszczu Gdańskim	', 'Powstańców Warszawy ', '28', '', '83-000', 'Pruszcz Gdański', '', '2019-10-10 11:55:01'),
(185, 'Oś 4464.1.2019', 'Dowóz uczniów do przedszkoli i  szkół na terenie Gminy Sadkowice', '290', '8351532028', '09.08.2019', 'Gmina Sadkowice', 'Sadkowice  ', '129A', '', '96-206 ', 'Sadkowice  ', '', '2019-10-10 11:55:01'),
(186, '580423-N-2019', 'Przedmiotem zamówienia są usługi w zakresie public relations, doradztwa PR, media relations, zarządzania projektami.', '390', '5420303307', '08.08.2019', 'REGIONALNA DYREKCJA LASÓW PAŃSTWOWYCH W BIAŁYMSTOKU', 'ul. Lipowa', '51', '', '15-424', 'Białystok', '050510720', '2019-10-10 11:55:01'),
(187, 'RIZ.271.1.21.2019', '„Modernizacja drogi Kiwajny - Galiny”\r\n', '390', '7431863005', '14.08.2019', 'Gmina Górowo Iławeckie ', 'ul. Kościuszki ', '17', '', '11-220', 'Górowo Iławieckie', '510742913', '2019-10-10 11:55:01'),
(188, '37/2019/ZP', 'Dostawa wykrywaczy materiałów wybuchowych – 31 kpl.', '790', '7010799793', '26.08.2019', 'SŁUŻBA OCHRONY PAŃSTWA', 'ul. Podchorążych', '38', '', '00-463', 'Warszawa', '369383133', '2019-10-10 11:55:01'),
(189, 'WZP.271.45.2019', 'Budowa ul. Ptasiej na odcinku od ul. Bagatela do ul. Wiązowskiej w ramach zadania inwestycyjnego- „Budowa ulicy Ptasiej w Otwocku”', '290', '5321007014', '27.08.2019', 'MIASTO OTWOCK', 'ul. Armii Krajowej', '5', '', '05-400', 'Otwock', '013268770', '2019-10-10 11:55:01'),
(190, '581178-N-2019 z dnia 2019-08-01 r', 'Termomodernizację remizo-świetlicy w Zabielu wraz z zagospodarowaniem terenu', '290', '7582141729', '21.08.2019', 'GMINA RZEKUŃ', 'ul. Kościuszki', '33', '', '07-411', 'Rzekuń', '550667959', '2019-10-10 11:55:01'),
(191, 'RO.271.19.2', 'Prace modernizacyjne i adaptacyjne budynku położonego w Marchocicach dla potrzeb Ośrodka Aktywnego Seniora w ramach projektu „Aktywny Senior” w ramach RPO WM 2014-2020, 9 Oś priorytetowa Włączenie społeczne, Działania 9.2 Usługi społeczne i zdrowotne, Poddziałania 9.2.3 Usługi opiekuńcze oraz interwencja kryzysowa – SPR, Typ projektu B. wsparcie dla tworzenia i/lub działalności placówek zapewniających dzienną opiekę i aktywizację osób niesamodzielnych', '290', '6591184436', '02.09.2019', 'Gmina Racławice – Środowiskowy Dom Samopomocy w Kościejowie', 'Racławice', '15', '', '32-222', 'Racławice', '291010613', '2019-10-10 11:55:01'),
(192, 'BOU-OA.471.10.2019', 'Wykonywanie kompleksowego sprzątania i utrzymania w czystości pomieszczeń, terenów zewnętrznych posesji obiektów użytkowanych przez Urząd Marszałkowski Województwa Dolnośląskiego ', '790', '8992708840', '10.09.2019', 'BIURO OBSŁUGI URZĘDU MARSZAŁKOWSKIEGO WOJEWÓDZTWA DOLNOŚLĄSKIEGO', 'ul. Wybrzeże J. Słowackiego', '12-14', '', '50-411', 'Wrocław', '021419270', '2019-10-10 11:55:01'),
(193, 'DZP - 3/2019', 'Usługa transportu sanitarnego - pakiet nr 3,4,5,6', '790', '6262510567', '27.08.2019', 'WOJEWÓDZKI SZPITAL SPECJALISTYCZNY NR 4 W BYTOMIU', 'Aleja Legionów', '10', '', '41-902', 'Bytom', '000296271', '2019-10-10 11:55:01'),
(195, 'DZP1/ZP/US/1/2019', 'Stała, bezpośrednia ochrona fizyczna mienia Zakładu Unieszkodliwiania Odpadów Komunalnych RUDNO Sp. z o.o.', '390', '7412074997', '03.09.2019', 'ZAKŁAD UNIESZKODLIWIANIA ODPADÓW KOMUNALNYCH RUDNO SPÓŁKA Z OGRANICZONĄ ODPOWIEDZIALNOŚCIĄ                                            ', 'Rudno', '17', '', '14-100', 'Ostróda', '280320880', '2019-10-10 11:55:01'),
(196, 'RI.272.9.2019', 'Digitalizacja dokumentów analogowych Państwowego Zasobu Geodezyjnego i Kartograficznego w Bochni wraz z utworzeniem bazy danych poprzez ich przetworzenie i konwersję do postaci zasobu elektronicznego wraz z renowacją dokumentów zasobu w postaci materialnej', '790', '8681599283', '06.09.2019', 'POWIAT BOCHEŃSKI', 'ul. Kazimierza Wielkiego', '31', '', '32-700', 'Bochnia', '851660565', '2019-10-10 11:55:01'),
(197, 'PRU.WOP.260.28.2019', 'Rozbiórka szklarni oraz obory położonych na działce nr 91/10 obręb Rzechcino, gmina Potęgowo, powiat słupski', '390', '5272818355', '18.09.2019', ' Krajowy Ośrodek Wsparcia Rolnictwa Oddział Terenowy w Pruszczu Gdańskim	                                            ', 'Powstańców Warszawy', '28', '', '83-000 ', 'Pruszcz Gdański', '367849538', '2019-10-10 11:55:01'),
(198, 'KOS.WOP.SZP.260.28.2019 ', 'Wykonanie rozbiórki całkowitej budynków i budowli położonych w miejscowości Pomierzyn,\r\ngmina Kalisz Pomorski, powiat drawski, województwo zachodniopomorskie na dz. nr 177/16,\r\n177/17, 177/18 obręb Pomierzyn', '390', '5272818355', '12.09.2019', 'Krajowy Ośrodek Wsparcia Rolnictwa Oddział Terenowy w Koszalinie                                  ', 'Partyzantów ', '15A', '', '75-411', 'Koszalin', '367849538', '2019-10-10 11:55:01'),
(199, 'WI.271.15.2019.JS', 'Przebudowa drogi ulica Dobra w Zakręcie - projekt i wykonawstwo', '290', '5320000234', '16.09.2019', 'GMINA WIĄZOWNA', 'ul. Lubelska', '59', '', '05-462', 'Wiązowna', '013268994', '2019-10-10 11:55:01'),
(200, 'WZP.271.51.2019', 'Przebudowa ul. Kukułczej na odcinku od ul. Bagatela do ul. Sowińskiego w ramach zadania inwestycyjnego - „Przebudowa ul. Kukułczej na odcinku od ul. Bagatela do ul. Sowińskiego”.', '290', '5321007014', '20.09.2019', 'MIASTO OTWOCK', 'ul. Armii Krajowej', '5', '', '05-400', 'Otwock', '013268770', '2019-10-10 11:55:01'),
(201, 'WTI.271.2.22.2019.ZP', 'Utworzenie Klubu dziecięcego w Załężu poprzez przebudowę i zmianę sposobu użytkowania części pomieszczeń świetlicy wiejskiej', '290', '6372003423', '20.09.2019', 'GMINA WOLBROM', 'ul. Krakowska', '1', '', '32-340', 'Wolbrom', '276258055', '2019-10-10 11:55:01'),
(202, '37/19/PN', 'Sprzątanie pomieszczeń biurowych Narodowego Centrum Badań i Rozwoju', '290', '7010073777', '23.09.2019', 'NARODOWE CENTRUM BADAŃ I ROZWOJU                                                                                                                 ', 'ul. Nowogrodzka', '47A', '', '00-695', 'Warszawa', '141032404', '2019-10-10 11:55:01'),
(203, '1001238000', 'usługi letniego i zimowego utrzymania terenów zewnętrznych oraz porządkowania i pielęgnacji terenów zielonych w PGE Energia Ciepła SA, PGE Paliwa sp.  z o.o., Zespole Elektrociepłowni Wrocławskich Kogeneracja SA ', '790', '6420000642', '25.09.2019', 'PGE ENERGIA CIEPŁA SPÓŁKA AKCYJNA', 'ul. Złota', '59', '', '00-120', 'Warszawa', '273204260', '2019-10-10 11:55:01'),
(204, '1001238000', 'usługi letniego i zimowego utrzymania terenów zewnętrznych oraz porządkowania i pielęgnacji terenów zielonych w PGE Energia Ciepła SA, PGE Paliwa sp.  z o.o., Zespole Elektrociepłowni Wrocławskich Kogeneracja SA ', '790', '6420000642', '25.09.2019', 'PGE ENERGIA CIEPŁA SPÓŁKA AKCYJNA', 'ul. Złota', '59', '', '00-120', 'Warszawa', '273204260', '2019-10-10 11:55:01'),
(205, '100 / 2019', 'Świadczenie usług konserwacji, napraw i usuwania awarii w zakresie branży wod-kan-gaz i c.o. na terenie nieruchomości i lokali będących w zasobach Gminy Miejskiej Kraków wraz z usługą pogotowia technicznego na terenie nieruchomości zarządzanych przez Zarząd Budynków Komunalnych w Krakowie oraz diagnozowanie przyczyn zalań lokali mieszkalnych w budynkach wspólnot mieszkaniowych, w podziale na 7 części - Część 7 – Zadania zlecone', '290', '6761013717', '27.09.2019', 'Gmina Miejska Kraków - Zarząd Budynków Komunalnych w Krakowie       ', 'ul. Bolesława Czerwieńskiego', '16', '', '31-319', 'Kraków', '351554353', '2019-10-10 11:55:01'),
(206, '100 / 2019', 'Świadczenie usług konserwacji, napraw i usuwania awarii w zakresie branży wod-kan-gaz i c.o. na terenie nieruchomości i lokali będących w zasobach Gminy Miejskiej Kraków wraz z usługą pogotowia technicznego na terenie nieruchomości zarządzanych przez Zarząd Budynków Komunalnych w Krakowie oraz diagnozowanie przyczyn zalań lokali mieszkalnych w budynkach wspólnot mieszkaniowych, w podziale na 7 części. - Część 3 – BOM - 2 Królewska 25', '290', '6761013717', '27.09.2019', 'Gmina Miejska Kraków - Zarząd Budynków Komunalnych w Krakowie                                            ', 'ul. Bolesława Czerwieńskiego', '16', '', '31-319', 'Kraków', '351554353', '2019-10-10 11:55:01'),
(207, '100 / 2019', 'Świadczenie usług konserwacji, napraw i usuwania awarii w zakresie branży wod-kan-gaz i c.o. na terenie nieruchomości i lokali będących w zasobach Gminy Miejskiej Kraków wraz z usługą pogotowia technicznego na terenie nieruchomości zarządzanych przez Zarząd Budynków Komunalnych w Krakowie oraz diagnozowanie przyczyn zalań lokali mieszkalnych w budynkach wspólnot mieszkaniowych, w podziale na 7 części. - Część 4 – BOM - 3 Zamoyskiego 3', '290', '6761013717', '27.09.2019', 'Gmina Miejska Kraków - Zarząd Budynków Komunalnych w Krakowie                                            ', 'ul. Bolesława Czerwieńskiego', '16', '', '31-319', 'Kraków', '351554353', '2019-10-10 11:55:01'),
(208, 'TI.271.18.2019', 'Remont zamku i wzgórza zamkowego w Nidzicy', '390', '9840161572', '27.09.2019', 'Gmina Nidzica                                            ', 'Plac Wolności', '1', '', '13-100', 'Nidzica', '510743640', '2019-10-10 11:55:01'),
(209, 'RI.271.9.2019  ', 'Modernizacja oświetlenia ulicznego na terenie Gminy Trojanów', '290', '8262037304', '30.09.2019', 'Gmina Trojanów                                            ', 'Trojanów', '57A', '', '08-455', 'Trojanów', '711582316', '2019-10-10 11:55:01'),
(211, 'WZP.271.58.2019', 'Remont ciągów komunikacyjnych w ul. Narutowicza w Otwocku', '290', '5321007014', '08.10.2019', 'Gmina Otwock którą reprezentuje Prezydent Miasta Otwock', 'ul. Armii Krajowej', '5', '', '05-400', 'Otwock', '013268770', '2019-10-10 11:55:01'),
(212, 'SP ZZOZ.ZP/47/2019', 'Termomodernizacja kompleksu budynków Szpitala w Przasnyszu- Pakiet IV', '290', '7611333881', '07.10.2019', 'SAMODZIELNY PUBLICZNY ZESPÓŁ ZAKŁADÓW OPIEKI ZDROWOTNEJ W PRZASNYSZU', 'ul. Sadowa', '9', '', '06-300', 'Przasnysz', '000302480', '2019-10-10 11:55:01'),
(213, 'WTI.271.2.26.2019.ZP', 'Utworzenie placówki wsparcia dziennego dla seniorów z Gminy Wolbrom – Klub Senior+', '290', '6372003423', '18.10.2019', 'Gmina Wolbrom', 'ul. Krakowska', '1', '', '32-340', 'Wolbrom', '276258055', '2019-10-10 11:55:01'),
(214, 'RR.271.15.2019.I', 'Budowa instalacji do produkcji energii ze źródeł odnawialnych na terenie Gminy Kaliska i Gminy partnerskiej Stara Kiszewa - część II - zaprojektowanie, dostawa i montaż zestawów fotowoltaicznych dla obiektów objętych zamówieniem zlokalizowanych w Gminie Stara Kiszewa', '490', '5922052829', '22.10.2019', 'GMINA KALISKA                                            ', 'ul. Nowowiejska', '2', '', '83-260', 'Kaliska', '191675698', '2019-10-18 09:18:44'),
(215, '334433', 'sdsdsd', '290', '1112394843', '30.10.2019', 'ABC', 'AHJ', '1', '1', '00-001', 'Warszawa', '3245678', '2019-10-21 16:01:25'),
(216, '334433', 'sdsdsd', '290', '1112394843', '30.10.2019', 'ABC', 'AHJ', '1', '1', '00-001', 'Warszawa', '3245678', '2019-10-21 16:01:45'),
(217, '334433', 'sdsdsd', '290', '1112394843', '30.10.2019', 'ABC', 'AHJ', '1', '1', '00-001', 'Warszawa', '3245678', '2019-10-21 16:01:52'),
(218, 'ZP.272.12.2019', 'Cyfryzacja materiałów źródłowych zasobu geodezyjnego i kartograficznego w powiecie jarosławskim 2017 – PSIP Zadanie 58', '490', '7922033661', '22.10.2019', 'POWIAT JAROSŁAWSKI', 'ul. Jana Pawła II', '17', '', '37-500', 'Jarosław', '650900306', '2019-10-21 16:53:38'),
(219, '106/PN/2019', 'Wykonanie dokumentacji projektowej oraz wykonanie wszelkich robót budowlanych i prac związanych z realizacją  dwóch projektów partycypacyjnych nr 2617 pod nazwą „Modernizacja dojścia do promu nad Wisłą” oraz nr 2312 „Rozbudowa dojścia do promu nad Wisłą”', '290', '5252248481', '28.10.2019', 'Miasto Stołeczne Warszawa w imieniu którego działa Zarząd Zieleni m.st. Warszawy', 'Plac Bankowy', '3', '5', '00-950', 'Warszawa', '015259640', '2019-10-25 07:20:52'),
(220, '56 57 75 4', 'Gdy uhgffrrd', '790', '2530337820', '31.10.2019', 'UBEZPIECZENIA DOROTA KUROWSKA', 'ul. Bolesława Krzywoustego', '2', '', '78-540', 'Kalisz Pomorski', '363643538', '2019-10-27 09:59:55'),
(221, '119/2019', 'Świadczenie usług konserwacji, napraw i usuwania awarii w zakresie branży wod-kan-gaz i c.o. na terenie nieruchomości i lokali będących w zasobach Gminy Miejskiej Kraków wraz z usługą pogotowia technicznego na terenie nieruchomości zarządzanych przez Zarząd Budynków Komunalnych w Krakowie oraz diagnozowanie przyczyn zalań lokali mieszkalnych w budynkach wspólnot mieszkaniowych, w podziale na 5 części.- część 5 - 1 000 zł', '290', '6761013717', '31.10.2019', 'Gmina Miejska Kraków - Zarząd Budynków Komunalnych w Krakowie                                     ', 'ul. Bolesława Czerwieńskiego', '16', '', '31-319', 'Kraków', '351554353', '2019-10-28 08:23:28'),
(222, '119/2019', 'Świadczenie usług konserwacji, napraw i usuwania awarii w zakresie branży wod-kan-gaz i c.o. na terenie nieruchomości i lokali będących w zasobach Gminy Miejskiej Kraków wraz z usługą pogotowia technicznego na terenie nieruchomości zarządzanych przez Zarząd Budynków Komunalnych w Krakowie oraz diagnozowanie przyczyn zalań lokali mieszkalnych w budynkach wspólnot mieszkaniowych, w podziale na 5 części. - część 2- 6 200 zł', '290', '6761013717', '31.10.2019', 'Gmina Miejska Kraków - Zarząd Budynków Komunalnych w Krakowie                                                                         ', 'ul. Bolesława Czerwieńskiego', '16', '', '31-319', 'Kraków', '351554353', '2019-10-28 08:26:50'),
(223, '621903324', 'Świadczenie usług w zakresie transportu sanitarnego dla Polskiej Grupy Górniczej S.A. Oddział KWK Murcki-Staszic', '490', '6342834728', '04.11.2019', 'POLSKA GRUPA GÓRNICZA SPÓŁKA AKCYJNA', 'ul. Powstańców', '30', '', '40-039', 'Myślenice', '360615984', '2019-10-31 16:22:50'),
(224, 'ZOZ.DZP.271.3.X.2019', 'Usługa wykonania transportu sanitarnego', '790', '5491591851', '20.11.2019', 'ZESPÓŁ OPIEKI ZDROWOTNEJ W OŚWIĘCIMIU', 'ul. Wysokie Brzegi', '4', '', '32-600', 'Oświęcim', '000304409', '2019-11-05 13:15:11'),
(225, '4WOG 1200.2712.102.2019', 'Świadczenie usług utrzymania czystości w budynkach i na wybranych terenach zewnętrznych w kompleksach wojskowych administrowanych przez 4 Wojskowy Oddział Gospodarczy - zadanie nr 4 - 14 000 zł, zadanie nr 7 - 32 000 zł', '790', '6312541341', '22.11.2019', '4 Wojskowy Oddział Gospodarczy w Gliwicach                                                                                        ', 'ul. Andersa', '47', '', '44-121', 'Gliwice', '240763798', '2019-11-13 09:04:59'),
(226, '4WOG 1200.2712.102.2019', 'Świadczenie usług utrzymania czystości w budynkach i na wybranych terenach zewnętrznych w kompleksach wojskowych administrowanych przez 4 Wojskowy Oddział Gospodarczy - zadanie nr 1 - 15 000 zł, zadanie nr 6 - 23 000 zł', '790', '6312541341', '22.11.2019', '4 Wojskowy Oddział Gospodarczy w Gliwicach', 'ul. Andersa', '47', '', '44-121', 'Gliwice', '240763798', '2019-11-13 09:16:25'),
(227, 'WA.263.61.2019.AH', 'Świadczenie usług utrzymania czystości dla  Centrum Projektów Europejskich i jego oddziałów zamiejscowych w czterech częściach- część I - 1 700,00 zł (słownie: jeden tysiąc siedemset złotych 00/100), część II - 300,00 zł (słownie: trzysta złotych 00/100)', '290', '7010158887', '14.11.2019', 'CENTRUM PROJEKTÓW EUROPEJSKICH                                            ', 'ul. Domaniewska', '39A', '', '02-672', 'Warszawa', '141681456', '2019-11-07 14:16:37'),
(228, 'I/PNE/154/2019/MD', 'Budowa budynku warsztatowego przy Zespole Szkół Architektury Krajobrazu i Handlowo - Usługowych w Gdańsku na potrzeby kształcenia w zawodzie technik obsługi turystycznej w branży Turystyka, sport i rekreacja oraz technik architektury krajobrazu w branży środowisko', '790', '5840203274', '20.11.2019', 'Gmina Miasta Gdańska - Dyrekcja Rozbudowy Miasta Gdańska                                            ', 'Żaglowa', '11', '', '80-560', 'Gdańsk', '000168372', '2019-11-13 13:18:56'),
(229, 'ZP-KCL-0019/19', 'Utrzymanie porządku na placach, drogach i terenach będących w zarządzie Oddziału Spółki Restrukturyzacji Kopalń S.A. w Dąbrowie Górniczej w Całkowitej Likwidacji wg części: Część I - Wola, Czechowice-Dziedzice, Lędziny, Bieruń, Brzeszcze, Libiąż, Trzebinia, Tychy', '490', '6262619005', '29.11.2019', 'SPÓŁKA RESTRUKTURYZACJI KOPALŃ SPÓŁKA AKCYJNA                                            ', 'ul. Strzelców Bytomskich', '207', '', '41-914', 'Bytom', '276902504', '2019-11-20 11:42:19'),
(230, 'ZP.270.1.8.2019', 'Wykonanie usług z zakresu gospodarki leśnej na terenie Nadleśnictwa Iława w roku 2020. - pakiet I - leśnictwa: Starkowo, Gardyny, Karaś, Rydzewo, Smolniki, Ostrów, Tylice', '790', '7440005181', '29.11.2019', 'Skarb Państwa - Państwowe Gospodarstwo Leśne Lasy Państwowe  Nadleśnictwo Iława', 'ul. Królowej Jadwigi', '30', '', '14-200', 'Iława', '510022426', '2019-11-20 13:46:05'),
(231, 'SA.270.7.2019', 'Wykonywanie usług z zakresu gospodarki leśnej na terenie Nadleśnictwa Pułtusk w roku 2020 - Pakiet VI - leśnictwa: Grabowiec, Zatory\r\n', '790', '5680003950', '22.11.2019', 'Skarb Państwa - Państwowe Gospodarstwo Leśne Lasy Państwowe \r\nNadleśnictwo Pułtusk\r\n                                            ', 'ul. Bartodziejska', '50', '', '06-100', 'Pułtusk', '130014659', '2019-11-21 10:23:27'),
(232, 'ZG.270.30.2019', 'Wykonywanie usług z zakresu gospodarki leśnej na terenie Nadleśnictwa Manowo w roku 2020 - Pakiet VII - Leśnictwo Mostowo', '490', '6690505010', '22.11.2019', 'Skarb Państwa - Państwowe Gospodarstwo Leśne Lasy Państwowe Nadleśnictwo Manowo\r\n                                       ', 'ul. Koszalińska', '35', '', '76-015', 'Manowo', '330044105', '2019-11-21 11:37:17'),
(233, 'SA.270.27.2019', 'Wykonywanie usług z zakresu gospodarki leśnej na terenie Nadleśnictwa Antonin w roku 2020. - Pakiet III – obręb leśny Świeca', '790', '6220008320', '27.11.2019', 'Skarb Państwa - Państwowe Gospodarstwo Leśne Lasy Państwowe Nadleśnictwo Antonin', 'ul. Wrocławska', '11', '', '63-421', 'Antonin', '250027301', '2019-11-22 09:35:29'),
(234, 'SA.270.27.2019', 'Wykonywanie usług z zakresu gospodarki leśnej na terenie Nadleśnictwa Antonin w roku 2020. - Pakiet IV', '390', '6220008320', '27.11.2019', 'Skarb Państwa - Państwowe Gospodarstwo Leśne Lasy Państwowe Nadleśnictwo Antonin', 'ul. Wrocławska', '11', '', '63-421', 'Antonin', '250027301', '2019-11-22 09:36:50'),
(235, 'S.270.7.2.2019', 'Wykonywanie usług z zakresu gospodarki leśnej na terenie Nadleśnictwa Tychowo w roku 2020. - Pakiet 4 – leśnictwo Dargiń', '390', '6720007559', '25.11.2019', 'Skarb Państwa - Państwowe Gospodarstwo Leśne Lasy Państwowe Nadleśnictwo Tychowo\r\n                                            ', 'ul. Bobolicka', '86', '', '78-220', 'Tychowo', '330044329', '2019-11-22 16:56:11'),
(236, '18/B/KGOHP/2019/BA', 'WYKONANIE USŁUGI W ZAKRESIE STAŁEGO UTRZYMANIA CZYSTOŚCI W BUDYNKACH UŻYTKOWANYCH PRZEZ KOMENDĘ GŁÓWNĄ OHP ZLOKALIZOWANYCH W WARSZAWIE PRZY UL. TAMKA 1 WRAZ Z PRZYLEGŁYM DO NICH TERENEM WEWNĘTRZNYM I ZEWNĘTRZNYM', '290', '5271118029', '29.11.2019', 'SKARB PAŃSTWA KOMENDA GŁÓWNA OCHOTNICZYCH HUFCÓW PRACY', 'ul. Tamka', '1', '', '00-349', 'Warszawa', '007001280', '2019-11-25 08:19:45'),
(237, 'ZG.270.02.2019', 'Wykonywanie usług z zakresu gospodarki leśnej na terenie Nadleśnictwa Kup w roku 2020 i I kwartale 2021. - Pakiet 7', '390', '7540005430', '28.11.2019', 'Skarb Państwa - Państwowe Gospodarstwo Leśne Lasy Państwowe Nadleśnictwo Kup', 'ul. 1 Maja', '9', '', '46-082', 'Kup', '530560272', '2019-11-26 09:07:22'),
(238, 'SA.270.10.2019', 'Wykonywanie usług z zakresu gospodarki leśnej na terenie Nadleśnictwa Miłomłyn w roku 2020 - Pakiet 4 - leśnictwo Ruś ', '390', '7410006520', '11.12.2019', 'Skarb Państwa - Państwowe Gospodarstwo Leśne Lasy Państwowe Nadleśnictwo Miłomłyn ', 'ul. Nadleśna', '9', '', '14-140', 'Miłomłyn', '510549659', '2019-11-26 10:00:29'),
(239, 'SA.270.10.2019 ', 'Wykonywanie usług z zakresu gospodarki leśnej na terenie Nadleśnictwa Miłomłyn w roku 2020 - Pakiet 5 - leśnictwo Perskie', '390', '7410006520', '11.12.2019', 'Skarb Państwa - Państwowe Gospodarstwo Leśne Lasy Państwowe Nadleśnictwo Miłomłyn ', 'ul. Nadleśna', '9', '', '14-140', 'Miłomłyn', '510549659', '2019-11-26 10:22:44'),
(240, 'SA.270.2.2019', 'Wykonywanie usług z zakresu gospodarki leśnej na terenie Nadleśnictwa Knyszyn w roku 2020.  Pakiet IV - leśnictwa: Szelągówka, Tykocin', '490', '5460000582', '27.11.2019', 'SKARB PAŃSTWA - PAŃSTWOWE GOSPODARSTWO LEŚNE LASY PAŃSTWOWE NADLEŚNICTWO KNYSZYN                                             ', 'Aleja Niepodległości', '31', '', '19-101', 'Mońki', '050026182', '2019-11-26 13:06:04'),
(241, 'ZP-KCL-0019/19', 'Utrzymanie porządku na placach, drogach i terenach będących w zarządzie Oddziału Spółki Restrukturyzacji Kopalń S.A. w Dąbrowie Górniczej w Całkowitej Likwidacji wg części: Część III - Czeladź, Sosnowiec, Mysłowice, Jaworzno, Dąbrowa Górnicza, Katowice, Będzin, Wojkowice', '790', '6262619005', '29.11.2019', 'SPÓŁKA RESTRUKTURYZACJI KOPALŃ SPÓŁKA AKCYJNA', 'ul. Strzelców Bytomskich', '207', '', '41-914', 'Bytom', '276902504', '2019-11-27 10:51:40'),
(242, 'SA.270.14.2019', 'Wykonywanie usług z zakresu gospodarki leśnej na terenie Nadleśnictwa Wieluń w roku 2020 - Pakiet V 	– leśnictwa: Sieniec\r\n', '390', '8320003702', '04.12.2019', 'Skarb Państwa - Państwowe Gospodarstwo Leśne Lasy Państwowe Nadleśnictwo Wieluń\r\n', 'ul. Stefana Żeromskiego', '5', '', '98-300', 'Wieluń', '730020990', '2019-11-29 09:44:57'),
(243, 'SA.270.14.2019', 'Wykonywanie usług z zakresu gospodarki leśnej na terenie Nadleśnictwa Wieluń w roku 2020 - Pakiet VI – leśnictwa: Radoszewice\r\n', '390', '8320003702', '04.12.2019', 'Skarb Państwa - Państwowe Gospodarstwo Leśne Lasy Państwowe Nadleśnictwo Wieluń\r\n', 'ul. Stefana Żeromskiego', '5', '', '98-300', 'Wieluń', '730020990', '2019-11-29 09:45:51'),
(244, 'ZP.271.46.2019', 'Zagospodarowanie terenów wokół rzeki Iławki na odcinku od mostu kolejowego, poprzez trasę pod mostem Al. Jana Pawła II do połączenia ulic Sosnowa/Świerkowa', '590', '7441660083', '10.12.2019', 'Gmina Miejska Iława reprezentowana przez Burmistrza Miasta Iławy', 'ul. Niepodległości', '13', '', '14-200', 'Iława', '510743456', '2019-12-03 08:23:55'),
(245, '158/PN/2019', 'Całoroczna pielęgnacja zieleni niskiej, utrzymanie czystości oraz konserwacja małej architektury na terenach zieleni położonych wzdłuż dróg krajowych, wojewódzkich i powiatowych na terenie m.st. Warszawy w latach 2019-2021. Część 1 - dzielnica Bielany o pow. ok.  113 ha', '790', '5252248481', '06.12.2019', 'Miasto Stołeczne Warszawa\r\npl. Bankowy 3/5, 00-950 Warszawa\r\nw imieniu którego działa:\r\nZarząd Zieleni m.st. Warszawy\r\n\r\n\r\n', 'ul. Hoża ', '13 a', '', '00-528', 'Warszawa', '015259640', '2019-12-05 09:27:13'),
(246, 'SA.270.1.4.2019', 'Wykonanie usług z zakresu gospodarki leśnej na terenie Nadleśnictwa Toruń w roku 2020 - Pakiet II – leśnictwa: Łysomice, Wrzosy', '490', '8790180413', '12.12.2019', 'Skarb Państwa - Państwowe Gospodarstwo Leśne Lasy Państwowe Nadleśnictwo Toruń', 'ul. Polna', '34/38', '', '87-100', 'Toruń', '870036850', '2019-12-11 08:28:51'),
(247, 'S.270.1.12.2019.WW', 'Wykonywanie usług z zakresu gospodarki leśnej na terenie Nadleśnictwa Prudnik obręb Prudnik w roku 2020', '790', '7550008631', '16.12.2019', 'Skarb Państwa - Państwowe Gospodarstwo Leśne Lasy Państwowe Nadleśnictwo Prudnik', 'ul. Dąbrowskiego', '34', '', '48-200', 'Prudnik', '530558915', '2019-12-10 08:36:41'),
(248, 'TI.271.10.2019', 'Utrzymanie zieleni na terenie miasta Czarnkowa', '290', '7632093092', '12.12.2019', 'GMINA MIASTA CZARNKÓW', 'Plac Wolności', '6', '', '64-700', 'Czarnków', '570791052', '2019-12-10 08:49:03'),
(249, '32442432', 'Łóżka do przedszkola', '790', '8980016131', '30.12.2019', 'DOLNOŚLĄSKA SPÓŁKA PRODUKCJI I USŁUG TECHNICZNYCH \"COMPLEXBUD\" SPÓŁKA Z OGRANICZONĄ ODPOWIEDZIALNOŚCIĄ                                            ', 'ul. Mikołaja Reja', '17', '5', '50-354', 'Wrocław', '001275673', '2019-12-11 12:39:02');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `gw24_blog_articles`
--

CREATE TABLE `gw24_blog_articles` (
  `id_blog` int(11) NOT NULL,
  `article_rewrite` varchar(255) NOT NULL,
  `tags` varchar(255) NOT NULL,
  `meta_keywords` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `date_add` date NOT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `gw24_blog_articles`
--

INSERT INTO `gw24_blog_articles` (`id_blog`, `article_rewrite`, `tags`, `meta_keywords`, `meta_description`, `category_id`, `title`, `img`, `content`, `date_add`, `is_active`) VALUES
(11, 'co-to-jest-wadium', 'co to jest wadium,wadium,gwarancja wadialna,gwarancje wadialne', 'wadium,co to jest,gwarancja wadialna,gwarancja przetargowa', 'Sprawdź co to jest wadium, kiedy jest wymagane, jakimi zasadami jest objęte i w jakich sytuacjach mamy z nim do czynienia. Zapraszamy do lektury precyzyjnych?', 7, 'Co to jest wadium?', 'assets/img/blog/11/co_to_wadium.png', '                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        <p style=\"margin-bottom: 6pt; line-height: 18.4px;\">Wadium to określona suma pieniędzy składana w poczet zabezpieczenia dotrzymania warunków danej umowy w ramach przetargu lub aukcji. Z wadium mamy do czynienia przede wszystkim w przetargach publicznych. Nie zawsze jest ono obligatoryjne. Wysokość wadium, tam, gdzie jest ono wymagane, określana jest indywidualnie i wynosi maksymalnie 3% szacowanej wartości zamówienia. Wadium wnoszone jest w chwili złożenia oferty. Niezłożenie lub złożenie wadium po terminie wiąże się z odrzucenia oferty. Złożenie wadium w formie nieokreślonej w warunkach przetargu jest nieskuteczne i wiąże się również z odrzuceniem oferty. Jakie prawa przysługują stronom postępowania i z jakich form wadium najczęściej korzystają oferenci? Zapraszamy do lektury.</p><p style=\"margin-bottom: 6pt; line-height: 18.4px;\"><br></p><h2 style=\"margin-bottom: 6pt; font-family: -apple-system, BlinkMacSystemFont, \"Segoe UI\", Roboto, \"Helvetica Neue\", Arial, sans-serif, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol\", \"Noto Color Emoji\"; line-height: 36.8px; color: rgb(0, 0, 0);\">Definicje wadium</h2><p style=\"margin-bottom: 6pt; line-height: 18.4px;\"><br></p><h3 style=\"margin-bottom: 6pt; font-family: -apple-system, BlinkMacSystemFont, \"Segoe UI\", Roboto, \"Helvetica Neue\", Arial, sans-serif, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol\", \"Noto Color Emoji\"; line-height: 32.2px; color: rgb(0, 0, 0);\">Definicja z Kodeksu Cywilnego</h3><p style=\"margin-bottom: 6pt; line-height: 18.4px;\">Definicja wadium została określona w Kodeksie Cywilnym, a wraz z nią zasady postępowania z wadium, które zabezpieczają interesy zamawiającego i oferenta. Dla zamawiającego wadium jest formą narzędzia, które pozwala dyscyplinować oferentów. Skutecznie i terminowo wniesione wadium stanowi przepustkę do udziału w postępowaniu przetargowym. Niewniesione w terminie uniemożliwia udział w przetargu. Po zakończeniu postępowania wadium zwracane jest oferentom, których oferta nie wygrała przetargu. W sytuacji, w której po zakończeniu przetargu i wyłonieniu zwycięzcy, któraś ze stron uchyla się od zawarcia umowy możliwe jest wyciągnięcie konsekwencji według następujących zasad:</p><ul><li>jeśli to przedsiębiorca wyłoniony w przetargu uchyla się od zawarcia umowy wadium może przepaść na korzyść zamawiającego,</li><li style=\"margin-bottom: 6pt; line-height: 18.4px;\">jeśli zaś to zamawiający uchyla się od zawarcia umowy przedsiębiorca wyłoniony w przetargu może oczekiwać zwrotu wadium w podwójnej wysokości.</li></ul><p style=\"margin-bottom: 6pt; line-height: 18.4px;\">Każda ze stron może żądać także naprawienia szkody powstałej w wyniku uchylenia się od zawarcia umowy.</p><p style=\"margin-bottom: 6pt; line-height: 18.4px;\"><br></p><p style=\"margin-bottom: 6pt; line-height: 18.4px;\">Definicja wadium, art. 704 Kodeksu cywilnego</p><p style=\"margin-bottom: 6pt; line-height: 18.4px;\">§1. W warunkach aukcji albo przetargu można zastrzec, że przystępujący do aukcji albo przetargu powinien, pod rygorem niedopuszczenia do nich, wpłacić organizatorowi określoną sumę albo ustanowić odpowiednie zabezpieczenie jej zapłaty (wadium).</p><p style=\"margin-bottom: 6pt; line-height: 18.4px;\">§2. Jeżeli uczestnik aukcji albo przetargu, mimo wyboru jego oferty, uchyla się od zawarcia umowy, której ważność zależy od spełnienia szczególnych wymagań przewidzianych w ustawie, organizator aukcji albo przetargu może pobraną sumę zachować albo dochodzić zaspokojenia z przedmiotu zabezpieczenia. W pozostałych wypadkach zapłacone wadium należy niezwłocznie zwrócić, a ustanowione zabezpieczenie wygasa. Jeżeli organizator aukcji albo przetargu uchyla się od zawarcia umowy, ich uczestnik, którego oferta została wybrana, może żądać zapłaty podwójnego wadium albo naprawienia szkody.</p><p style=\"margin-bottom: 6pt; text-align: right; line-height: 18.4px;\"><i>Źródło: Ustawa z dnia 23 kwietnia 1964 r. - Kodeks cywilny</i></p><p style=\"margin-bottom: 6pt; line-height: 18.4px;\"><br></p><h3 style=\"margin-bottom: 6pt; font-family: -apple-system, BlinkMacSystemFont, \"Segoe UI\", Roboto, \"Helvetica Neue\", Arial, sans-serif, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol\", \"Noto Color Emoji\"; line-height: 32.2px; color: rgb(0, 0, 0);\">Formy wadium</h3><p style=\"margin-bottom: 6pt; line-height: 18.4px;\">W przepisach określono zamknięty katalog form wadium, które są akceptowane w przetargach publicznych (Ustawa Prawo Zamówień Publicznych art. 45 ust. 6 PZP). Wniesienie wadium w formie innej niż określona w ustawie jest nieskuteczne i powoduje odrzucenie oferty. Wybór formy wadium zależy od oferenta. Przepisy pozwalają na złożenie wadium w dwóch i więcej formach. Ważne by łączna kwota złożonych w postępowaniu form wadium była nie niższa niż ta wymagana przez zamawiającego.</p><p style=\"margin-bottom: 6pt; line-height: 18.4px;\"><br></p><h4 style=\"margin-bottom: 6pt; font-family: -apple-system, BlinkMacSystemFont, \"Segoe UI\", Roboto, \"Helvetica Neue\", Arial, sans-serif, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol\", \"Noto Color Emoji\"; line-height: 27.6px; color: rgb(0, 0, 0);\">Trzy najczęściej stosowane formy wadium</h4><p style=\"margin-bottom: 6pt; line-height: 18.4px;\">Trzy najczęściej stosowane formy wadium to pieniądz, gwarancje bankowe lub gwarancje ubezpieczeniowe. Wadium w formie pieniądza to w praktyce wpłata środków na rachunek bankowy zamawiającego wskazany w Specyfikacji Istotnych Warunków Zamówienia (SIWZ). Co ważne wpłata ta musi znaleźć się na rachunku bankowym zamawiającego do godziny granicznej, do której przyjmowane są oferty. Brak kwoty na rachunku zamawiającego we wskazanym terminie oznacza nieskutecznie wniesione wadium, a zatem unieważnienie oferty w postępowaniu. Wadium w formie gwarancji bankowej lub gwarancji ubezpieczeniowej musi mieć formę pisemną i musi zostać złożone w oryginale. Treść dokumentu nie jest uregulowana ustawowo, co oznacza, że jest opracowana przez gwaranta. Co ważne gwarancje bankowe i ubezpieczeniowe powinny określać precyzyjnie beneficjenta oraz cel ustanowionego zabezpieczenia, czyli w przypadkach zamówień publicznych wadium, musi zostać przypisane do konkretnego postępowania (w gwarancji powinna być podana nazwa tego postępowania, numer, data). Ponadto w gwarancjach należy wskazać przypadki, w których nastąpi zapłata gwarantowanej kwoty opisowo, albo też przypadku, w których wadium zostanie zatrzymane (art. 46 ust. 4a oraz ust. 5 PZP). Gwarancje wystawione przez banki lub ubezpieczycieli powinny także zawierać klauzule o nie odwoływalności gwarancji, jej bezwarunkowości oraz zapis o dokonaniu zapłaty na pierwsze żądanie. Standardowe procedury wydania gwarancji stosowane przez banki i firmy ubezpieczeniowe mogą być czasochłonne i wymagać przedstawienia licznych dokumentów uwiarygadniających sytuację oferenta. Zupełnie inaczej jest w przypadku gwarancji ubezpieczeniowych wydawanych za pośrednictwem platformy gwarancje24.pl. To innowacyjne narzędzie, w którym zautomatyzowano procedury weryfikacji, dzięki czemu możliwe jest uzyskanie gwarancji wadialnej w zaledwie kilka chwil. Wnioskowanie, weryfikacja, zakup, wystawienie gwarancji wadialnej trwa kilka minut i odbywa się przez Internet za pośrednictwem strony gwarancje24.pl. W postępowaniach przetargowych liczy się czas, dzięki gwarancje24.pl gwarancję ubezpieczeniową, honorowaną we wszystkich przetargach publicznych, otrzymujemy nawet w jeden dzień bez wychodzenia w firmy lub domu (kliknij, by przejść do strony gdzie wypełnisz wniosek).</p><p style=\"margin-bottom: 6pt; line-height: 18.4px;\"><br></p><h4 style=\"margin-bottom: 6pt; font-family: -apple-system, BlinkMacSystemFont, \"Segoe UI\", Roboto, \"Helvetica Neue\", Arial, sans-serif, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol\", \"Noto Color Emoji\"; line-height: 27.6px; color: rgb(0, 0, 0);\">Rzadko stosowane form gwarancji</h4><p style=\"margin-bottom: 6pt; line-height: 18.4px;\">Do rzadko stosowanych w przetargach publicznych form wadium należą poręczenia bankowe lub te wystawiane przez SKOK oraz poręczenia udzielane przez podmioty takie jak Polskiej Agencji Rozwoju Przedsiębiorczości.</p>                                                                                                                                                                                                                                                                                                                                                                                                                                                                ', '2019-09-10', 1),
(12, 'wadium-w-pieniadzu-czy-gwarancja-wadialna', 'wadium w pieniadzu,wadium w gwarancji,gwarancja,wadium,gwarancja wadialna,co lepsze', 'wadium,gwarancja wadialna,gwarancja przetargowa,różnice,porównanie,co lepsze', 'Wadium w pieniądzu czy gwarancja wadialna? Sprawdź co jest lepsze. Dla Twojej firmy gdy bierzesz udział w przetargach. Zapraszamy do lektury.', 7, 'Wadium w pieniądzu czy gwarancja wadialna? Co jest lepsze?', 'assets/img/blog/12/co_lepsze.png', '                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        <p>Wadium wymagane w przetargach publicznych można złożyć w kilku różnych formach. Przedsiębiorcy mają szerokie spektrum form do wyboru. Zgodnie z obowiązującym prawem katalog form jest zamknięty, a wśród najpopularniejszych znajdują się: pieniądz, gwarancja bankowa, gwarancja wadialna. Poza nimi jest jeszcze kilka form rzadko stosowanych przez oferentów. My skupimy się na tych, po które przedsiębiorcy sięgają najczęściej i sprawdzimy ich zalety i wady.</p><h2 style=\"font-family: -apple-system, BlinkMacSystemFont, \" segoe=\"\" ui\",=\"\" roboto,=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" \"segoe=\"\" ui=\"\" symbol\",=\"\" \"noto=\"\" emoji\";=\"\" color:=\"\" rgb(0,=\"\" 0,=\"\" 0);\"=\"\">Wadium w różnych formach</h2><p>O formach wadium i tym czy jest pisaliśmy w ostatnim artykule pt. Co to jest wadium, który możecie przeczytać na blogu. W tym artykule skupimy się na zestawieniu trzech form wadium by porównać najistotniejsze parametry, które pod uwagę powinien wziąć przedsiębiorca. Aby nie były to tylko nasze wybory poprosiliśmy naszych Klientów o wskazanie najważniejszych parametrów, którymi kierują się lub kierowaliby się przy wyborze formy wadium. Wśród znalazły się:</p><ul><li>czas uzyskania wadium,</li><li>sposób uzyskania wadium,</li><li>weryfikacja przedsiębiorcy,</li><li>termin ważności wadium,</li><li>poufność wadium,</li><li>limity kwot wadium,</li><li>koszt uzyskania wadium.</li></ul><p>Przystępujemy zatem do zestawienia tych cech by móc porównać formy wadium i wybrać optymalną.</p><p><br></p><table class=\"table table-bordered\" style=\"max-width: 1200px;\"><tbody><tr><td><br></td><td><span style=\"font-weight: bolder;\">Pieniądze</span></td><td><span style=\"font-weight: bolder;\">Gwarancja bankowa </span>[1]</td><td><span style=\"font-weight: bolder;\">Gwarancja wadialna (Gwarancje 24)</span></td></tr><tr><td>Czas uzyskania wadium</td><td>Przelew, 1 dzień [2]<br></td><td>Od 7 dni<br></td><td>1 dzień (30 minut dla gwarancji w formie elektronicznej)<br></td></tr><tr><td>Sposób uzyskania wadium<br></td><td>Przez Internet<br></td><td>Wizyta w placówce banku <br></td><td>Przez Internet<br></td></tr><tr><td>Weryfikacja<br></td><td>Nie<br></td><td>Tak, automatyczna (online)<br></td><td>Tak, automatyczna (online)<br></td></tr><tr><td>Termin ważności</td><td>Do czasu zwrotu wadium, brak górnej granicy<br></td><td>Do 90 dni<br></td><td>Do 90 dni +15 dni ekstra<br></td></tr><tr><td>Poufność wadium<br></td><td><span style=\"font-weight: bold; color: rgb(255, 0, 0);\">Nie</span><br>Informacja o wniesionym wadium (zaksięgowaniu środków na koncie zamawiającego) jest dostępna przez otwarciem kopert z ofertami.<br></td><td><span style=\"font-weight: bold;\">Tak</span><br>Informacja o wniesieniu wadium (dostarczeniu oryginału dokumentu gwarancji bankowej) nie jest dostępna przez otwarciem kopert z ofertami – jest zawarta w komplecie zamkniętym w kopercie, przez co pozostaje poufna do czasu otwarcia kopert.<br></td><td><span style=\"font-weight: bold;\">Tak</span><br>Informacja o wniesieniu wadium (dostarczeniu oryginału dokumentu gwarancji bankowej) nie jest dostępna przez otwarciem kopert z ofertami – jest zawarta w komplecie zamkniętym w kopercie, przez co pozostaje poufna do czasu otwarcia kopert<br></td></tr><tr><td>Limit kwoty<br></td><td>Do wysokości środków zgromadzonych przedsiębiorcy.<br></td><td>200 000 euro<br></td><td>50 000 zł<br></td></tr><tr><td>Koszt uzyskania wadium<br></td><td>1,5 zł +166,67 zł [3]<br></td><td>0,2%, nie mniej niż 150 zł za rozpatrzenie wniosku, <br>200 zł za rozpatrzenie zlecenia udzielenia gwarancji<br>500 zł wystawienie promesy<br></td><td>Od 290 zł/gwarancja<br></td></tr></tbody></table><p><span style=\"font-weight: bolder;\"><br></span></p><hr><h6 style=\"font-family: -apple-system, BlinkMacSystemFont, \" segoe=\"\" ui\",=\"\" roboto,=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" \"segoe=\"\" ui=\"\" symbol\",=\"\" \"noto=\"\" emoji\";=\"\" color:=\"\" rgb(0,=\"\" 0,=\"\" 0);\"=\"\">[1] - Na podstawie PKO BP SA.<br>[2] - Założyliśmy, że przedsiębiorca posiada środki własne i nie musi ich pożyczać by wnieść wadium.<br>[3] - Koszt utraconego oprocentowania w wysokości 5%/12 miesięcy *2 (60 dni) od kwoty 20 000 zł.</h6><p></p><h3 style=\"font-family: -apple-system, BlinkMacSystemFont, \" segoe=\"\" ui\",=\"\" roboto,=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" \"segoe=\"\" ui=\"\" symbol\",=\"\" \"noto=\"\" emoji\";=\"\" color:=\"\" rgb(0,=\"\" 0,=\"\" 0);\"=\"\"><br></h3><h3 style=\"font-family: -apple-system, BlinkMacSystemFont, \" segoe=\"\" ui\",=\"\" roboto,=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" \"segoe=\"\" ui=\"\" symbol\",=\"\" \"noto=\"\" emoji\";=\"\" color:=\"\" rgb(0,=\"\" 0,=\"\" 0);\"=\"\"><span style=\"font-weight: bolder;\">Która forma wadium jest lepsza?</span></h3><p>Każda z przedstawionych form wadium ma swoje wady i zalety, które powodują, że część form wadium pasuje do przetargów, których wartość zamówienia jest wysoka, inne do postępowań o mniejszym budżecie. W każdym jednak przypadku to wadium w formie gwarancji ma przewagę nad wadium w formie pieniądza – nie obciąża płynności finansowej, która dla małych, średnich i dużych firm jest bardzo istotna. Wadium w formie gwarancji znosi barierę jaką są środki potrzebne na wpłatę wadium, a to zwiększa konkurencyjność, ponieważ pozwala większej liczbie podmiotów na udział w przetargach publicznych. Najprostsze proceduralnie i najtańsze jest wadium wyrażone w pieniądzu pod warunkiem, że przedsiębiorca posiada wystarczającą ilość środków na koncie firmy i co najważniejsze jest skłonny zamrozić je na 14-60 dni, do czasu, aż zamawiający dokona zwrotu wadium po rozstrzygnięciu postępowania przetargowego. Jeśli przedsiębiorca nie posiada środków potrzebnych na wniesienie wadium może uzyskać je w formie pożyczki lub kredytu, które niosą za sobą dodatkowe koszty, a przede wszystkim bezwzględny obowiązek spłaty zobowiązania wraz z kosztami niezależnie od wyniku postępowania. Jak się domyślacie mało kto z takich rozwiązań dzisiaj korzysta, ponieważ na rynku dostępne są różnego rodzaju gwarancje i poręczenia, które doskonale i skutecznie zastępują wadium w formie pieniądza.</p><h3 style=\"font-family: -apple-system, BlinkMacSystemFont, \" segoe=\"\" ui\",=\"\" roboto,=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" \"segoe=\"\" ui=\"\" symbol\",=\"\" \"noto=\"\" emoji\";=\"\" color:=\"\" rgb(0,=\"\" 0,=\"\" 0);\"=\"\"><br></h3><h3 style=\"font-family: -apple-system, BlinkMacSystemFont, \" segoe=\"\" ui\",=\"\" roboto,=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" \"segoe=\"\" ui=\"\" symbol\",=\"\" \"noto=\"\" emoji\";=\"\" color:=\"\" rgb(0,=\"\" 0,=\"\" 0);\"=\"\"><span style=\"font-weight: bolder;\">Wadium w formie gwarancji</span><br></h3><p>Gwarancja bankowa<br>To dobre rozwiązaniem dla większych graczy rynkowych, oferentów, którzy funkcjonują na rynku już jakiś czas, mogą pochwalić się obrotami i biorą udział w przetargach na duże szacowane kwoty zamówień, z czasem na złożenie ofert dłuższym niż 7 dni. <br></p><p>Gwarancja wadialna<br>To gwarancja wystawiana przez firmy ubezpieczeniowe. To bardzo dobra forma wadium dla wszystkich przedsiębiorców, w szczególności małych, średnich i dużych firm, przede wszystkim dla tych, którzy dbają o płynności finansową, biorą udział w przetargach i nie chcą blokować własnych środków na czas postępowania, a także chcą nie ujawniać informacji o wniesieniu wadium. To rozwiązanie dla przedsiębiorców, którym bardzo zależy na płynności, czasie i prostocie. To ostatnie ma szczególne znaczenie. Procedury przetargowe potrafią być bardzo angażujące i czasochłonne, dlatego uzyskanie wadium wymaganego w przetargu nie powinno być dodatkowym obciążeniem czasowym i finansowym dla przedsiębiorców.</p><h3 style=\"font-family: -apple-system, BlinkMacSystemFont, \" segoe=\"\" ui\",=\"\" roboto,=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" \"segoe=\"\" ui=\"\" symbol\",=\"\" \"noto=\"\" emoji\";=\"\" color:=\"\" rgb(0,=\"\" 0,=\"\" 0);\"=\"\"><br></h3><h3 style=\"font-family: -apple-system, BlinkMacSystemFont, \" segoe=\"\" ui\",=\"\" roboto,=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" \"segoe=\"\" ui=\"\" symbol\",=\"\" \"noto=\"\" emoji\";=\"\" color:=\"\" rgb(0,=\"\" 0,=\"\" 0);\"=\"\"><span style=\"font-weight: bolder;\">Gwarancja do przetargu przez Internet</span></h3><p>Wadium wnoszone w pieniądzu ma swoje wady, a pomimo to jest bardzo wygodne dla przedsiębiorców uczestniczących w przetargach publicznych. W praktyce wniesienie wadium w formie pieniądza sprowadza się do wykonania przelewu na konto zamawiającego, wydrukowania i załączenia do oferty noty memoriałowej potwierdzającej wykonanie przelewu na czas. Podobnie jest w przypadku gwarancji wadialnej, przede wszystkim tej dostępnej na platformie gwarancje24.pl. Procedura uzyskania gwarancji wadialnej jest bardzo podobna do przelewu. Cała operacja wykonana za pośrednictwem strony WWW gwarancje24.pl sprowadza się do kilku prostych kliknięć. Wnioskowanie, weryfikacja, płatność i wystawienie gwarancji odbywają się całkowicie przez Internet, a zakupiona gwarancja w krótkim czasie trafia w przesyłce kurierskiej pod wskazany adres. Wystawione gwarancje można odebrać także osobiście w warszawskiej placówce gwarancje24.pl lub w przypadku przetargów „elektronicznych” otrzymać ją w formie elektronicznej mailem. Dzięki technologii czas potrzebny do uzyskania wadium w formie gwarancji wadialnej jest zbliżony do czasu księgowania środków na koncie zamawiającego z tą różnicą, że w przypadku gwarancji wadialnej informacja o wniesionym wadium pozostaje poufna do czasu otwarcia kopert z ofertami, a na koncie firmy pozostają środki finansowe, które nie zostały zamrożone w wniesionym wadium. </p>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                ', '2019-09-25', 1),
(13, 'zwrot-wadium', 'wadium,zwrot wadium,gwarancje wadialne,gwarancje przetargowe', 'wadium,zwrot,zwrot wadium,terminy,wniosek,wzór wniosku', 'Sprawdź jak przebiega zwrot wadium. Z artykułu dowiesz się co musisz zrobić by otrzymać wadium, kiedy zostanie zwrócone, a kiedy przepadnie. Zapraszamy do lektury precyzyjnych  ?', 7, 'Zwrot wadium. Wszystko co musisz wiedzieć o zwrocie wadium krok po kroku', 'assets/img/blog/13/AdobeStock_200264484.jpeg', '                                                                                                            <p>Zwrot wadium następuje po zakończonym postępowaniu o udzielenie zamówienia publicznego w sytuacji, w której oferent dopełnił obowiązków wynikających z udziału w postępowaniu, a także w sytuacji, gdy w czasie trwania postępowania wycofał się ze złożonej oferty. <br></p><h2 style=\"font-family: -apple-system, BlinkMacSystemFont, \" segoe=\"\" ui\",=\"\" roboto,=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" \"segoe=\"\" ui=\"\" symbol\",=\"\" \"noto=\"\" emoji\";=\"\" color:=\"\" rgb(0,=\"\" 0,=\"\" 0);\"=\"\"><span style=\"font-weight: bolder;\">Zwrot wadium</span></h2><p>Wadium zwracane jest po zakończeniu postępowania, tj. po wyłonieniu wykonawcy lub po unieważnieniu postępowania, a także w sytuacji, gdy oferent wycofa ofertę przed upływem terminu składania ofert. Wadium wniesione w pieniądzu zwracane jest w formie pieniężnej, w formie wypłaty gotówki lub przelewu bankowego, natomiast wadium wniesione w formie gwarancji wadialnej lub gwarancji bankowej w postaci oryginału dokumentu gwarancji. W praktyce dokument gwarancji wadialnej nie jest zwracany ofertowi. Ponowne użycie gwarancji wadialnej jest niemożliwe, ponieważ gwarancja zawsze wystawiana jest dla konkretnego postępowania o udzielenie zamówienia publicznego. W niektórych przypadkach wadium zwracane jest w podwójnej wysokości o czym pisaliśmy w artykule pt. „Czy wadium przepada?”.<br></p><p>Wadium co do zasady nie jest zwracane automatycznie. Wadium zwracane jest na wniosek oferenta o zwrot wadium, którego wzór możecie pobrać <u><a href=\"https://gwarancje24.pl/pliki/Gwarancje24.pl_wniosek_o_zwrot_wadium.docx\" target=\"_blank\">tutaj</a></u>. Wypełniony wniosek należy przedłożyć zamawiającemu. Można to zrobić w formie elektronicznej przesyłając skan oraz w formie papierowej wysyłając lub dostarczając na adres zamawiającego podpisany dokument. Pomimo, że obieg dokumentów w formie skanów staje się coraz popularniejszy warto złożyć wniosek o zwrot wadium w oryginale, np. przesłać pocztą tradycyjną na adres zamawiającego.<br></p><h3 style=\"font-family: -apple-system, BlinkMacSystemFont, \" segoe=\"\" ui\",=\"\" roboto,=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" \"segoe=\"\" ui=\"\" symbol\",=\"\" \"noto=\"\" emoji\";=\"\" color:=\"\" rgb(0,=\"\" 0,=\"\" 0);\"=\"\"><span style=\"font-weight: bolder;\">Termin zwrotu wadium</span></h3><p>Wadium zwracane jest przez zamawiającego po zakończeniu postępowania przetargowego, tj. po wyłonieniu wykonawcy lub po unieważnieniu postępowania, a także w sytuacji, gdy oferent wycofa złożoną ofertę przed upływem terminu składania ofert. Zwrot wadium następuje niezwłocznie po otrzymaniu wniosku o zwrot wadium. Określenie niezwłocznie nie jest zdefiniowane co oznacza, że termin, w którym powinien nastąpić zwrot wadium nie jest określony konkretnym czasem np. 3 dni lub 7 dni.  Termin ten co do zasady oznacza natychmiastową realizację wniosku o zwrot wadium. Należy pamiętać, że w toku trwającego postępowania dla zamawiającego najważniejsza jest obsługa przetargu i zapytań oferentów, a następnie wyłonienie najkorzystniejszej oferty. Jeśli w toku trwania postępowania przetargowego oferent zdecyduje się wycofać ofertę powinien złożyć stosowną informację o wycofaniu oferty, a wraz z nią wniosek o zwrot wadium. <br></p><p>Zamawiający najpóźniej po wyłonieniu najkorzystniejszej oferty dokona zwrotu wadium.</p><h4 style=\"font-family: -apple-system, BlinkMacSystemFont, \" segoe=\"\" ui\",=\"\" roboto,=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" \"segoe=\"\" ui=\"\" symbol\",=\"\" \"noto=\"\" emoji\";=\"\" color:=\"\" rgb(0,=\"\" 0,=\"\" 0);\"=\"\"><span style=\"font-weight: bolder;\">Co należy zrobić krok po kroku</span></h4><p>1.<span style=\"white-space: pre;\">	</span>Pobierz wniosek: <u><a href=\"https://gwarancje24.pl/pliki/Gwarancje24.pl_wniosek_o_zwrot_wadium.docx\" target=\"_blank\">tutaj</a></u>.</p><p>2.<span style=\"white-space: pre;\">	</span>Wypełnij wniosek – podaj dane zamawiającego, oferenta oraz dane identyfikujące postępowanie publiczne o udzielenie zamówienia.</p><p>3.<span style=\"white-space: pre;\">	</span>Wydrukuj dokument w dwóch egzemplarzach i podpisz.</p><p>4.<span style=\"white-space: pre;\">	</span>Zachowaj jeden egzemplarz dla siebie.</p><p>5.<span style=\"white-space: pre;\">	</span>Zeskanuj dokument i wyślij do zamawiającego na adres poczty elektronicznej.</p><p>6.<span style=\"white-space: pre;\">	</span>Zapakuj dokument w kopertę i złóż w siedzibie zamawiającego lub prześlij dokument za pośrednictwem poczty tradycyjnej lub firmy kurierskiej.</p>                                                                                                ', '2019-10-04', 1),
(14, 'czy-wadium-przepada', 'wadium, gwarancja wadialna,zwrot wadium', 'wadium,kiedy wadium przepada,gwarancja wadialna,zwrot wadium', 'Zwrot wadium. Sprawdź kiedy wadium wraca do oferenta a kiedy przepada oraz kiedy zamawiający zobowiązany jest zwrócić je w podwójnej wysokości. Zapraszamy do lektury', 7, 'Czy wadium przepada?', 'assets/img/blog/14/AdobeStock_200264484.jpeg', '                                                                                                                                                <p style=\"font-family: \"Times New Roman\"; font-size: medium;\">Nie ma jednoznacznej odpowiedzi na to pytanie, ponieważ sposób postępowania z wadium wniesionym w postępowaniu o udzielenie zamówienia publicznego zależy o sposobu zakończenia tego postępowania, a przede wszystkim od dopełnienia obowiązków przez zamawiającego i oferenta.</p><h2 style=\"font-family: \"Times New Roman\"; color: rgb(0, 0, 0);\"><span style=\"font-weight: bolder;\">Wadium</span></h2><p style=\"font-family: \"Times New Roman\"; font-size: medium;\"></p><p style=\"font-family: \"Times New Roman\"; font-size: medium;\">Wadium to określona suma pieniędzy składana w poczet zabezpieczenia dotrzymania warunków danej umowy w ramach przetargu lub aukcji. Wadium może być wyrażone w pieniądzu lub w formie np. gwarancji wadialnej: bankowej lub <a href=\"https://www.gwarancje24.pl/\" target=\"_blank\">ubezpieczeniowej</a>, dostępnej także w formie elektronicznej. Występuje przeważnie w postępowaniach o udzielenie zamówienia publicznego, czyli przetargach publicznych, ale również w postępowaniach prowadzonych przez podmioty niepubliczne na podstawie regulaminów. Nie zawsze jest ono obligatoryjne. Co do zasady wadium jest zwrotne. Są jednak przypadki, w których przepada oraz takie, w których zwracane jest w podwójnej wysokości.</p><h3 style=\"font-family: \"Times New Roman\"; color: rgb(0, 0, 0);\"><span style=\"font-weight: bolder;\">Wniesienie wadium</span></h3><p style=\"font-family: \"Times New Roman\"; font-size: medium;\">Wadium, jeśli zostało ujęte w wymaganiach określonych w postępowaniu, musi zostać skutecznie wniesione do godziny, do której przyjmowane są oferty od oferentów. Dlaczego wniesione, a nie tylko wpłacone? Wadium można wpłacić w pieniądzu lub wnieść w formie gwarancji wadialnej, popularnie zwanej przetargową (gwarancji bankowej lub ubezpieczeniowej). O tym jakie formy wadium są najczęściej stosowane pisaliśmy w artykule pt. „<a href=\"https://www.gwarancje24.pl/blog/wadium-w-pieniadzu-czy-gwarancja-wadialna\" target=\"_blank\">Wadium w pieniądzu czy gwarancja wadialna? Co jest lepsze?</a>”.</p><p style=\"font-family: \"Times New Roman\"; font-size: medium;\">W związku z tym, że skuteczne wniesienie wadium musi nastąpić do określonej godziny, konkretnego dnia, wpłacenie przez oferenta wymaganej sumy pieniędzy jako wadium na konto zamawiającego w dniu przetargu może okazać się ryzykowne, ponieważ wymagana kwota może nie zostać zaksięgowana na koncie zamawiającego. Za datę księgowania środków uznawana jest bowiem data wpływu wymaganej kwoty wadium na rachunek bankowy zamawiającego, a nie data wykonania przelewu przez oferenta. Dlatego wnoszenie wadium w formie gwarancji stanowi wygodną formę dla oferenta. Ponadto wadium wnoszone w postaci gwarancji jest korzystne, ponieważ pozwala na pozostawienie środków pieniężnych w obrocie oferenta. Jest to ważne dla zachowania płynności finansowej firmy szczególnie przy wymaganych wysokich kwotach wadium lub przy przedłużających się postępowaniach. Skutecznie wniesione wadium w dowolnej formie stanowi przepustkę do dalszego procedowania postępowania o udzielenie zamówienia. Co dzieje się dalej z wadium po zakończonym postępowaniu?</p><h4 style=\"font-family: \"Times New Roman\"; color: rgb(0, 0, 0);\"><span style=\"font-weight: bolder;\">Zwrot wadium</span></h4><p style=\"font-family: \"Times New Roman\"; font-size: medium;\">Wadium zwracane jest po zakończeniu postępowania, tj. po wyłonieniu wykonawcy, po unieważnieniu postępowania lub w sytuacji, w której oferent wycofa ofertę przed upływem terminu składania ofert. W tych przypadkach wadium wraca do oferenta w całości, w przypadku wadium wniesionego w formie pieniądza w formie przelewu na konto, a w przypadku gwarancji wadialnej: ubezpieczeniowej lub bankowej w formie oryginału dokumentu gwarancji. Nie dzieje się to automatycznie i nie wszyscy oferenci otrzymują zwrot wadium w tym samym czasie. Najwcześniej wadium zwracane jest oferentom, którzy wycofali ofertę przez upływem terminu składania ofert. Następuje to na wniosek o zwrot wadium złożony przez oferenta, niezwłocznie po otrzymaniu wniosku o zwrot. Z uwagi na brak definicji słowa niezwłocznie oraz określenia sposobu dostarczenia wniosku oferent powinien wysłać zamawiającemu wniosek tego samego dnia, co informację o wycofaniu oferty pocztą elektroniczną, jeśli taka forma dostarczania dokumentów została dopuszczona w opisie przetargu oraz pocztą tradycyjną, by formalności stało się zadość. Jeśli wycofujący ofertę nie złoży wniosku zamawiający najprawdopodobniej zastosuje regułę ogólną i dokona zwrotu wadium po wyborze najkorzystniejszej oferty albo po unieważnieniu postępowania.</p><p style=\"font-family: \"Times New Roman\"; font-size: medium;\">Zatem należy pamiętać, że o zwrot wadium, przy wycofaniu oferty przed upływem terminu składania ofert, warto zawnioskować przed tym terminem, by mieć potwierdzenie wycofania oferty i pewność zwrotu wadium.</p><h5 style=\"font-family: \"Times New Roman\"; color: rgb(0, 0, 0);\"><span style=\"font-weight: bolder;\">Zwrot wadium w podwójnej wysokości</span></h5><p style=\"font-family: \"Times New Roman\"; font-size: medium;\">Zwrot wadium w podwójnej wysokości następuje w ściśle określonych warunkach. Wadium to narzędzie, które ma m.in. dyscyplinować strony (zamawiającego i oferenta) do poważnego traktowania ogłoszonego postępowania o udzielenie zamówienia. Ma zabezpieczyć interesy obu stron. W sytuacji, w której zamawiający zwleka z zawarciem umowy lub odmawia zawarcia umowy do zakończonego przetargu z wyłonionym i zweryfikowanym oferentem, oferent ma prawo zażądać zwrotu wadium w podwójnej wysokości, albo zwrotu wniesionego wadium i naprawienia powstałej szkody. W praktyce oznacza to, że wykonawca może wystąpić z roszczeniem o zwrot sumy wpłaconej tytułem wadium, a także rekompensaty równej wadium za niedojście do zawarcia umowy. Zasada ta obowiązuje wyłącznie dla wadium wpłaconego w pieniądzu, nie obowiązuje dla wadium wniesionego w innej formie – gwarancji wadialnej bankowej lub ubezpieczeniowej. W przypadku wadium w formie gwarancji zamawiającemu, z którym oferent nie zawarł umowy z winy zamawiającego przysługuje rekompensata za niedojście do zawarcia umowy odpowiadająca wartości wniesionego przez niego wadium.</p><h6 style=\"font-family: \"Times New Roman\"; color: rgb(0, 0, 0);\"><span style=\"font-weight: bolder;\">Brak zwrotu wadium</span></h6><p style=\"font-family: \"Times New Roman\"; font-size: medium;\">Groźba utraty wadium ma być motywatorem dla oferentów, którzy uchylają się od podpisania umowy po wygraniu przetargu. Oferent, którego oferta została wyłoniona jako najkorzystniejsza zobowiązany jest do podpisania umowy na wezwanie zamawiającego. Co do zasady jest zobowiązany podpisać umowę, jednak nie zawsze tak się dzieje. Zdarza się, że oferent nie decyduje się podpisać umowy, pomimo że jego oferta została wyłoniona jako najkorzystniejsza. Zgodnie z przepisami prawa, jeśli oferent – uczestnik aukcji lub przetargu, pomimo wyboru jego oferty uchyla się od zawarcia umowy, zamawiający może zatrzymać wadium. Oznacza to, że wadium wniesione przez oferenta przepada, jeżeli oferent ten uchyla się od zawarcia umowy, pomimo wygrania przetargu. Podobnie jest w przypadku niedopełnienia obowiązku dostarczenia dokumentów wymaganych przez zamawiającego w celu weryfikacji oferenta, nieprzedłożenie zabezpieczenia lub brak zgody na dokonanie korekty omyłki. W każdym z tych przypadków oferent traci wadium.</p>                                                                                                                                ', '2019-10-15', 1),
(15, 'przetargi-publiczne-ogloszenia', 'przetargi,przetargi publiczne,ogłoszenia', 'przetargi,przetargi publiczne,ogłoszenia,portale,strony,komunikaty', 'Przetargi publiczne. Gdzie szukać informacji o ogłoszonych przetargach? Zapraszamy do lektury artykułu na temat ogłaszanych przetargów publicznych.', 7, 'Przetargi publiczne. Gdzie szukać informacji o ogłoszonych przetargach?', 'assets/img/blog/15/przetargi_publiczne_gdzie_szukać_informacji.jpg', '                                                                                                                                                                                                                        <p>140 000 ogłoszeń o łącznej wartości 163,2 mld zł. Tak w telegraficznym skrócie wyglądał rynek zamówień publicznych w sektorze publicznym w 2017 roku. \r\n86% wszystkich postępowań o udzielenie zamówienia przeprowadzonych zostało \r\nw formie przetargu nieograniczonego, formie postępowania, w której udział może wziąć dowolna firma, która dowie się o trwającym postępowaniu. Dostęp do informacji \r\no prowadzonych przetargach jest powszechny i wynika z przepisów prawa, które zobowiązują instytucje i przedsiębiorstwa państwowe do publikowania informacji \r\no postępowaniach na stronach internetowych. Dotarcie do blisko 140 000 ogłoszeń, przetworzenie ich i wybór właściwego przetargu jest nie lada wyzwaniem. Jak przetwarzać tak ogromną ilość ogłoszeń? Gdzie szukać przejrzystych informacji \r\no przetargach? Zapraszamy do lektury.</p><h2><b>\r\n\r\nInformacje o przetargach\r\n</b></h2><h3><b>Strony internetowe instytucji i przedsiębiorstw państwowych oraz firm prywatnych</b></h3><p>\r\nPodstawowym źródłem informacji na temat prowadzonych postępowań przetargowych są strony internetowe instytucji i przedsiębiorstw z sektora publicznego oraz strony internetowe firm prywatnych. To na nich każdy z wymienionych państwowych podmiotów ma ustawowy obowiązek publikowania treści ogłoszeń oraz dokumentów opisujących przebieg postępowania, w szczególności specyfikacji istotnych warunków zamówień (w skrócie SIWZ). Choć przeglądanie wszystkich stron instytucji wydaje się niemożliwe to właśnie z nich dowiemy się o trwających przetargach.\r\n</p><h3><b>Portale branżowe </b></h3><p>\r\nZabranie i przetworzenie informacji o 140 000 postępowań przetargowych wymaga sporych zasobów, a co za tym idzie i nakładów finansowych. Wiedzą to firmy, które wyspecjalizowały się w gromadzeniu, przetwarzaniu i udostępnianiu informacji o prowadzonych postępowaniach przetargowych \r\ni pozostałych formach postępowań o udzielenie zamówień. Tego typu repozytoria danych i ogłoszeń istnieją od wielu lat i są dostępne przez Internet w formie narzędzi do przeglądania informacji. Tego typu rozwiązania to ważne ułatwienie, które pozwala oszczędzać czas i pieniądze. Zamiast przeglądać dziesiątki tysięcy stron zawierających nieskategoryzowane ogłoszenia możemy korzystać z jednej \r\nze stron internetowych, które ułatwiają przeszukiwanie informacji i zapewniają dostęp do informacji źródłowej. Obecnie na rynku dostępnych jest kilka tego typu narzędzi godnych uwagi:\r\n</p><ul><li>przetargi.egospodarka.pl </li><li>biznes-polska.pl </li><li>oferent.com.pl </li><li>aleo.com </li><li>komunikaty.pl </li><li>przetargi.info </li><li>portalzp.pl\r\n</li></ul><h3><b>Baza konkurencyjności\r\n</b></h3><p>Baza konkurencyjności to kolejne repozytorium zawierające informacje o ogłoszonych postępowaniach. To internetowa baza ofert zawierająca ogłoszenia firm, które otrzymały środki finansowe na realizację projektów (beneficjenci). Baza prowadzona jest przez Ministerstwo Inwestycji \r\ni Rozwoju. Publikacja ogłoszeń beneficjentów jest warunkiem spełnienia tzw. zasady konkurencyjności. Zasada konkurencyjności odnosi się do beneficjentów korzystających z Europejskiego Funduszu Rozwoju Regionalnego, Europejskiego Funduszu Społecznego oraz Funduszu Spójności i jest regulowana na poziomie wytycznych w zakresie kwalifikowalności wydatków. W praktyce jest to obowiązek opublikowania informacji o prowadzonym postępowaniu o udzielenie zamówienia w bazie konkurencyjności. Korzystanie z tego narzędzia jest bezpłatne dla firm zainteresowanych udziałem \r\nw postępowaniach o udzielenie zamówienia publicznego oraz dla beneficjentów. </p>                                                                                                                                                                                                ', '2019-11-06', 1),
(16, 'gwarancja-wadialna-w-formie-elektronicznej', 'gwarancja wadialna,wadium,gwarancja elektroniczna', ' gwarancja ubezpieczeniowa, gwarancja przetargowa, elektroniczna gwarancja wadialna,gwarancja wadialna', 'Gwarancja wadialna w formie elektronicznej to dokument stosowany w postępowania o udzielenia zamówienia publicznego w formie elektronicznej. Czym dokładnie jest i na co zwrócić uwagę? ', 7, 'Gwarancja wadialna w formie elektronicznej. Co musisz wiedzieć i na co trzeba zwrócić uwagę', 'assets/img/blog/16/AdobeStock_137800282.jpg', '                                    <p>Postępująca w większości dziedzin naszego życia cyfryzacja wprowadza ułatwienia, dzięki którym oszczędzamy czas, pieniądze, lepiej rozumiemy obowiązki obywatelskie a niekiedy coraz częściej podchodzimy do nich z cierpliwością. Im więcej spraw możemy załatwić przez Internet tym dla nas lepiej, szczególnie jeśli sprawy te dotyczą prowadzonego biznesu, a precyzyjnie rzecz ujmując udziału w przetargach, w których wymagane jest wniesienie wadium i spełnienie szeregu czasochłonnych formalności.\r\n</p><h2>Wadium w formie gwarancji wadialnej\r\n</h2><p>Wadium to określona suma pieniędzy składana na poczet zabezpieczenia dotrzymania warunków danej umowy w ramach przetargu lub aukcji, która zabezpiecza interesy stron. Z wadium mamy \r\ndo czynienia przede wszystkim w przetargach publicznych, ale nie zawsze jest ono obligatoryjne. Wysokość wadium określane jest indywidualnie i wynosi maksymalnie 3% szacowanej wartości zamówienia. Wadium wnoszone jest w chwili złożenia oferty. Więcej o wadium przeczytacie w naszym artykule pt. <a href=\"https://www.gwarancje24.pl/blog/co-to-jest-wadium\" target=\"_blank\">„Co to jest wadium?”</a>. </p><p>\r\nWadium może zostać wniesione w pieniądzu lub inne formie określonej w przepisach prawa, czyli \r\nnp. w formie gwarancji wadialnej bankowej lub gwarancji wadialnej ubezpieczeniowej, w tym gwarancji wadialnej w formie elektronicznej. O zaletach i wadach różnorodnych form wadium pisaliśmy \r\nw artykule pt. <a href=\"https://www.gwarancje24.pl/blog/wadium-w-pieniadzu-czy-gwarancja-wadialna\" target=\"_blank\">„Wadium w pieniądzu czy gwarancja wadialna? Co jest lepsze?”</a>. </p><h3>\r\nGwarancja wadialna w formie elektronicznej\r\n</h3><p>Gwarancja wadialna w formie gwarancji bankowej lub ubezpieczeniowej to dokument, który najczęściej ma postać papierową, który w oryginale stanowi załącznik do składanej przez oferenta oferty w czasie trwania przetargu. Obok tradycyjnej papierowej formy gwarancja wadialna (bankowa \r\nlub ubezpieczeniowa) występuje także w formie elektronicznej w postaci pliku podpisanego podpisem elektronicznym, który pomimo licznych wątpliwości wynikających z obowiązujących przepisów prawa czyni ją dokumentem powszechnie honorowanym. </p><h3>\r\nNa co należy zwrócić uwagę wybierając gwarancję wadialną w formie elektronicznej? </h3><p>\r\nGwarancja wadialna (bankowa lub ubezpieczeniowa) w formie elektronicznej, aby była honorowana musi zawierać wszystkie elementy stosowane dla tego typu dokumentów, w szczególności zobowiązanie gwaranta do zapłaty zatrzymanego przez zamawiającego wadium w ściśle określonych sytuacjach, które zostały określone w przepisach prawa. Gwarancja wadialna w formie elektronicznej musi zostać wystawiona w formie pliku i opatrzona ważnym kwalifikowanym podpisem elektronicznym w sposób, który zapewni przez co najmniej okres wymaganego zabezpieczenia oferty wadium możliwość dokonania kontroli integralności dokumentu elektronicznego, możliwość weryfikacji podpisu elektronicznego oraz możliwość odczytania wszystkich informacji zawartych w elektronicznym dokumencie gwarancji wadialnej. Oczywiście sam plik z gwarancją wadialną w formie elektronicznej musi zostać przekazany do zamawiającego podobnie jak pozostałe pliki z ofertą, oświadczeniami \r\ni innymi dokumentami. Przed wysłaniem pliku warto sprawdzić czy plik jest poprawny, tzn. czy otwiera się i właściwie wyświetla treść. Wysłanie uszkodzone pliku może być podstawą do wykluczenia oferenta z postępowania o udzielenie zamówienia publicznego.\r\n</p><h3>Kiedy warto stosować gwarancję wadialną w formie elektronicznej? </h3><p>\r\nGwarancja wadialna w formie elektronicznej zarówno gwarancja bankowa jak i gwarancja ubezpieczeniowa jest formą dokumentu stosowaną w przetargach przeprowadzanych w formie elektronicznej. Gwarancję wadialną w formie elektronicznej stosuje się wyłącznie w postępowaniach prowadzonych w formie elektronicznej. Elektroniczna forma prowadzenia postępowania stała się wyjątkowo popularna. Zgodnie z zapowiedziami rządu od 1 stycznia 2021 to właśnie forma elektroniczna prowadzenia przetargów zastąpi tradycyjna papierową. Warto już teraz pomyśleć \r\no wyposażeniu się w kwalifikowany podpis elektroniczny.\r\n</p><h3>Gdzie można nabyć gwarancję wadialną w formie elektronicznej?</h3><p>\r\nGwarancję wadialną w tym gwarancję wadialną w formie elektronicznej możecie kupić na stronie <a href=\"https://www.gwarancje24.pl/\" target=\"_blank\">gwarancje24.pl</a>. Proces zakupu przebiega sprawnie przez Internet bez wychodzenia z domu lub biura, a sam oryginał dokumentu, w formie elektronicznej lub papierowej, dostarczany jest pod adres wskazany adres mailowy lub siedziby firmy.  \r\n</p>                                ', '2019-11-13', 1),
(17, 'wysokosc-wadium-2020', 'wadium,przetargi,gwarancje wadialne', 'wadium,przetargi,przetargi publiczne,ogłoszenia,portale,strony,komunikaty,wysokość wadium', 'Czy i w ogóle nowe prawo zamówień publicznych wprowadza zmiany w wadium? Jakiej wysokości wadium będzie obowiązywać w przetargach w 2020 roku? ', 7, 'Wadium w przetargach w 2020', 'assets/img/blog/17/AdobeStock_296103159.jpeg', '                                                                                                                                                <p>Czy i w ogóle nowe prawo zamówień publicznych wprowadza zmiany w wadium? Jakiej wysokości wadium będzie obowiązywać w przetargach w 2020 roku? Zapraszamy \r\ndo lektury.\r\n</p><h2>Wadium </h2><p>\r\nWadium to określona suma pieniędzy składana na poczet zabezpieczenia dotrzymania warunków danej umowy w ramach przetargu lub aukcji. Wadium stosowane jest nieobligatoryjnie w przetargach organizowanych przez instytucje publiczne oraz firmy prywatne. Więcej o wadium pisaliśmy artykule pt. „<a href=\"https://www.gwarancje24.pl/blog/co-to-jest-wadium\" target=\"_blank\">Co to jest wadium</a>?”, do którego przeczytania zachęcamy.\r\n</p><h2>Wysokość wadium\r\n</h2><p>Wysokość wadium w postępowaniach o udzielenie zamówienia publicznego zostało określone \r\nw przepisach powszechnie obowiązującego prawa i wynosi od 0,5% do 3% przewidywanej wartości zamówienia. Podstawą ustalenia wartości zamówienia jest całkowite szacunkowe wynagrodzenie wykonawcy liczone bez podatku od towarów i usług (VAT), ustalane przez zamawiającego, oczywiście \r\nz należytą starannością.\r\n</p><h2>Przykład wyliczenia kwoty wadium\r\n</h2><p>Poniżej prezentujemy przykład ustalenia kwoty wadium dla postępowania o udzielenie zamówienia publicznego. Przykładowe postępowanie dotyczy dostawy sprzętu medycznego o wartości 140 000 euro (614 180,00 zł bez VAT) przez samodzielny publiczny zakład opieki zdrowotnej i jest podzielone \r\nna 4 części. </p><p>\r\nWysokość wadium dla części 1</p><ul><li>Wartość zamówienia: 20 000 euro (87 740,00 zł bez VAT)</li><li>Wadium: 2%</li><li>Kwota wadium dla tej części zamówienia: 1 754,80 zł\r\n</li></ul><p>Wysokość wadium dla części 2\r\n</p><ul><li>Wartość zamówienia: 30 000 euro (131 610,00 zł bez VAT)</li><li>Wadium: 2%</li><li>Kwota wadium dla tej części zamówienia: 2 632,20 zł\r\n</li></ul><p>Wysokość wadium dla części 3\r\n</p><ul><li>Wartość zamówienia: 40 000 euro (175 480,00 zł bez VAT) </li><li>Wadium: 2% </li><li>Kwota wadium dla tej części zamówienia: 3 509,60 zł\r\n</li></ul><p>Wysokość wadium dla części 4 </p><ul><li>Wartość zamówienia: 50 000 euro (219 350,00 zł bez VAT) </li><li>Procent wadium: 2% </li><li>Kwota wadium dla tej części zamówienia: 4 387,00 zł\r\n</li></ul><h2>Wysokość wadium w 2020\r\n</h2><p>Wadium w 2020 roku pozostanie na niezmienionym poziomie od 0,5% do 3% wartości zamówienia netto (bez podatku VAT). Zmiany w wysokości wadium zostaną wprowadzone 1 stycznia 2021 roku, \r\nna podstawie podpisanej przez Prezydenta nowelizacji ustawy prawo zamówień publicznych. \r\n</p>                                                                                                                                ', '2019-11-21', 1);
INSERT INTO `gw24_blog_articles` (`id_blog`, `article_rewrite`, `tags`, `meta_keywords`, `meta_description`, `category_id`, `title`, `img`, `content`, `date_add`, `is_active`) VALUES
(18, 'nowe-prawo-zamowien-publicznych', 'zamówienia publiczne,PZP,prawo', 'prawo,zamówienia publiczne,nowe prawo zamówień publicznych', 'Nowe prawo zamówień publicznych – najważniejsze zmiany. Prezydent podpisał ustawę. Zobacz co się zmieni od 1 stycznia 2021 roku.', 7, 'Nowe prawo zamówień publicznych – najważniejsze zmiany', 'assets/img/blog/18/AdobeStock_184306582.jpeg', '<p>Nowe prawo zamówień publicznych jest gotowe. Prezydent podpisał nowelizację ustawy. Prawo zacznie obowiązywać od 1 stycznia 2021 roku. Zmian jest wiele. Autorzy nowego prawa zamówień publicznych wskazują, że nowelizacja ustawy wprowadza szereg usprawnień, a jej zapisy zorientowane na potrzeby firm. </p><p>\r\nWśród najważniejszych atutów nowego prawa wymieniane są: </p><ul><li>wzmocnienie pozycji i lepsza ochrona praw wykonawców i podwykonawców, którzy będą wykonywać zobowiązania wynikające z zawartych umów w ramach rozstrzygniętych zamówień publicznych,\r\n</li><li>zabezpieczenie interesów wykonawców, ochrona wykonawców przed utratą płynności finansowej,\r\n</li><li>zwiększenie liczby firm małych, średnich i dużych biorących udział w przetargach, </li><li>zorientowanie na postępowania z kryteriami pozwalającymi uzyskiwać jak najlepszej jakości produkty, zamiast kierować się wyłącznie najniższą ceną, </li><li>wzrost innowacyjności polskiej gospodarki,\r\n</li><li>uproszczona procedura składania ofert, w tym postępowania prowadzone w formie cyfrowej.</li></ul><h2>\r\nOgromny rynek zamówień publicznych\r\n</h2><p>Zamówienia publiczne to kluczowa forma udziału sektora publicznego w gospodarce. Prawo zamówień publicznych reguluje zasady ogłaszania i rozstrzygania postępowań o udzielenie zamówienia publicznego, czyli de facto sposób poszukiwania i wyłaniania usługodawców i dostawców. W ten sposób towary, usługi i roboty budowlane zamawia w Polsce prawie 34 tys. podmiotów. Wartość zamówień udzielanych w procedurach przewidzianych prawem zamówień publicznych (PZP) to ok. 202 mld zł \r\nw 2018 r., co stanowi ok. 9,55% PKB (w 2017 r. 163 mld zł, 8,2% PKB). Przybliżona wartość rynku zamówień publicznych, która uwzględnia również zamówienia udzielane poza uregulowaniem ustawą, wyniosła 234,6 mld zł w 2017 r. (174,3 mld zł w 2016 r.). Dla co czwartego przedsiębiorcy zamówienia publiczne to ponad połowa przychodów, a dla co dziesiątego - 75% przychodów.\r\n</p><h2>Najważniejsze zmiany jakie wprowadza nowelizacja ustawy\r\n</h2><h3>Zasada efektywności\r\n</h3><p>Zapisy w ustawie zostały przygotowane tak by ogłaszane przetargi były nakierowane na to, by w ich efekcie powstawał produkt jak najlepszej jakości, a uzyskana za niego cena była konkurencyjna. To ma zostać osiągnięte poprzez obowiązek wykonania analizy potrzeb i możliwych rozwiązań na rynku wykonywaną przez podmioty planujące postępowania o udzielenie zamówienia publicznego przed rozpoczęciem dużych inwestycji. Przepisy te mają sprawić, że zamawiający odejdą od głównego kryterium ceny na rzecz jakości.\r\n</p><h3>Umowy z podwykonawcami równie korzystne, jak te z wykonawcami\r\n</h3><p>Ustawa prowadza obowiązek stosowania zapisów w umowach z ewentualnymi podwykonawcami nie mniej korzystnych niż te, które podpisuje z zamawiającym wykonawca. W takich kwestiach jak kary umowne, płatności czy waloryzacja, postanowienia umów z podwykonawcami nie mogą być mniej korzystne niż postanowienia umów z wykonawcami.\r\n</p><h3>Obowiązkowe częściowe płatności i zaliczki oraz poprawa płynności wykonawców\r\n</h3><p>Nowelizacja prawa przewiduje zastosowanie m.in. obowiązkowych, częściowych płatności i zaliczek \r\nw dłuższych umowach oraz wzmocnienie podziału zamówień na części dla wykonawców z sektora małych i średnich przedsiębiorstw (MŚP). Przewidziano także obniżenie maksymalnej wysokości wadium i zabezpieczenia należytego wykonania umowy o połowę co ma spowodować, że udział \r\nw postępowaniach będzie mniej obciążający dla przedsiębiorców.\r\n</p><h3>Procedura uproszczona poniżej progów unijnych\r\n</h3><p>Jednym z kluczowych rozwiązań nowych przepisów jest wprowadzenie procedury uproszczonej poniżej tzw. progów unijnych oraz uproszczeń w innych trybach i konkursach.\r\n</p><h3>Katalog klauzul abuzywnych i nowe zasady waloryzacji wynagrodzenia\r\n</h3><p>Nowe przepisy wprowadzą katalog klauzul abuzywnych (czyli niedozwolonych) naruszających równowagę stron oraz wprowadzą nowe zasady waloryzacji wynagrodzenia. Jeżeli pojawią się problemy, zamawiający będzie również zobowiązany do dokonania ewaluacji realizacji umowy co \r\nprzy obecnie obowiązujących przepisach najczęściej nie jest możliwe, ponieważ nie jest obowiązkiem \r\ni zależy od woli zamawiającego\r\n</p><h3>Usprawnienie postępowania przed Krajową Izbą Odwoławczą (KIO)\r\n</h3><p>Nowe prawo ma usprawnić postępowanie skargowe na orzeczenia. Co do zasady orzekać mają składy 3-osobowe. Po wprowadzeniu przepisów nastąpi obniżka opłaty od skargi na orzeczenie KIO (dziś jest to pięciokrotność opłaty wniesionej do KIO, a będzie trzykrotność). Wydłuży się - z 7 do 14 dni - termin na wniesienie takiej skargi.</p><h3>\r\nJeden sąd ds. zamówień publicznych\r\n</h3><p>Projekt zakłada wyznaczenie jednego sądu ds. zamówień publicznych. Miałby nim być Sąd Okręgowy \r\nw Warszawie. </p><h3>\r\nZasada koncyliacji\r\n</h3><p>W nowych przepisach przewidziano mechanizm koncyliacji, czyli ugodowego załatwiania największych sporów pomiędzy wykonawcą a zamawiającym na etapie wykonywania umowy. Strony będą mogły zwrócić się do Sądu Polubownego przy Prokuratorii Generalnej RP o szybkie rozstrzygnięcie sporu, zanim trafi on na drogę sądową. Koncyliacja jest tańsza i szybsza od sądu i umożliwi kontynuowanie realizacji umowy.\r\n</p><h3>Nowe zasady kontroli\r\n</h3><p>Mają pojawić się wspólne, dla organów kontrolujących zamówienia publiczne, zasady przeprowadzania kontroli oraz powołanie Komitetu ds. Kontroli w Zamówieniach Publicznych, czyli forum współpracy \r\ni wymiany informacji pomiędzy organami.</p><h3>\r\nPrezes UZP będzie propagował dobre praktyki\r\n</h3><p>Projekt przewiduje również wzmocnienie roli Prezesa Urzędu Zamówień Publicznych \r\nw przygotowywaniu i propagowaniu dobrych praktyk i wzorów dokumentów, które mają wspierać zamawiających. Prezes Urzędu będzie również publikował postanowienia umowne sprzeczne \r\nz zasadami wskazanymi w PZP oraz wyjaśniał wątpliwości interpretacyjne np. u organów kontroli\r\nW Urzędzie powstanie specjalna infolinia dla przedsiębiorców i zamawiających.\r\n</p><p>Tyle teorii na temat zmian jakie zaczną obowiązywać 1 stycznia 2021 roku. Jak w istocie będzie funkcjonował rynek przekonamy się zapewne w połowie 2021 roku, kiedy pierwsze przetargi zostaną rozstrzygnięte.\r\n                                                  </p>', '2019-11-27', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `gw24_blog_categories`
--

CREATE TABLE `gw24_blog_categories` (
  `id_category` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_rewrite` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `gw24_blog_categories`
--

INSERT INTO `gw24_blog_categories` (`id_category`, `category_name`, `category_rewrite`) VALUES
(7, 'Porady', 'porady');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `gw24_company_info`
--

CREATE TABLE `gw24_company_info` (
  `company_email` varchar(250) NOT NULL,
  `company_internal_phone` varchar(15) NOT NULL,
  `company_mobile_phone` varchar(15) NOT NULL,
  `company_open_hour` varchar(5) NOT NULL,
  `company_close_hour` varchar(5) NOT NULL,
  `company_address` varchar(250) NOT NULL,
  `company_owner` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `gw24_company_info`
--

INSERT INTO `gw24_company_info` (`company_email`, `company_internal_phone`, `company_mobile_phone`, `company_open_hour`, `company_close_hour`, `company_address`, `company_owner`) VALUES
('info@gwarancje24.pl', '+48 22 39 84 79', '+48 574 604 696', '08:00', '16:00', 'ul.Wielicka 36 lok. U 4, 02-657 Warszawa', 'Zbigniew Zieliński'),
('info@gwarancje24.pl', '+48 22 39 84 79', '+48 574 604 696', '08:00', '16:00', 'ul.Wielicka 36 lok. U 4, 02-657 Warszawa', 'Zbigniew Zieliński'),
('info@gwarancje24.pl', '+48 22 39 84 79', '+48 574 604 696', '08:00', '16:00', 'ul.Wielicka 36 lok. U 4, 02-657 Warszawa', 'Zbigniew Zieliński');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `gw24_customer`
--

CREATE TABLE `gw24_customer` (
  `user_id` int(20) NOT NULL,
  `create_date` datetime DEFAULT current_timestamp(),
  `company_name` varchar(400) NOT NULL,
  `nip` varchar(50) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `street` varchar(250) NOT NULL,
  `phone_number` varchar(50) NOT NULL,
  `address_number` varchar(50) NOT NULL,
  `local_number` varchar(50) DEFAULT NULL,
  `postal` varchar(10) NOT NULL,
  `city` varchar(100) NOT NULL,
  `email` varchar(155) NOT NULL,
  `zgoda1` tinyint(1) NOT NULL,
  `zgoda2` tinyint(1) NOT NULL,
  `zgoda3` tinyint(1) NOT NULL,
  `zgoda4` tinyint(1) NOT NULL,
  `zgoda5` tinyint(1) NOT NULL,
  `zgoda51` tinyint(1) NOT NULL,
  `zgoda52` tinyint(1) NOT NULL,
  `zgoda53` tinyint(1) NOT NULL,
  `zgoda54` tinyint(1) NOT NULL,
  `zgoda55` tinyint(1) NOT NULL,
  `zgoda56` tinyint(1) NOT NULL,
  `zgoda57` tinyint(1) NOT NULL,
  `zgoda58` tinyint(1) NOT NULL,
  `zgoda6` tinyint(1) NOT NULL,
  `general_agreement` tinyint(1) NOT NULL,
  `agreement_number` varchar(20) NOT NULL,
  `partner_id` int(30) NOT NULL,
  `pesel` varchar(50) NOT NULL,
  `regon` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `gw24_customer`
--

INSERT INTO `gw24_customer` (`user_id`, `create_date`, `company_name`, `nip`, `first_name`, `last_name`, `street`, `phone_number`, `address_number`, `local_number`, `postal`, `city`, `email`, `zgoda1`, `zgoda2`, `zgoda3`, `zgoda4`, `zgoda5`, `zgoda51`, `zgoda52`, `zgoda53`, `zgoda54`, `zgoda55`, `zgoda56`, `zgoda57`, `zgoda58`, `zgoda6`, `general_agreement`, `agreement_number`, `partner_id`, `pesel`, `regon`) VALUES
(103, '2019-05-27 00:00:00', 'ERGOGIS SPÓŁKA Z OGRANICZONĄ ODPOWIEDZIALNOŚCIĄ', '6692525175', 'Dariusz', 'Antoni Osuch', 'Aleja Monte Cassino', '+48 607 09', '6', '', '75-412', 'Koszalin', 'd.osuch@ergogis.eu', 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, '2/05/2019', 0, '63061303394', '362294343'),
(105, '2019-06-03 00:00:00', 'PRZEDSIĘBIORSTWO USŁUGOWO-HANDLOWE \"DRA-BUD\" SPÓŁKA Z OGRANICZONĄ ODPOWIEDZIALNOŚCIĄ', '8371820670', 'MAŁGORZATA', 'DRABER', 'ul. Władysława Reymonta', '693910761', '16', '', '96-500', 'Sochaczew', 'drabud@vp.pl', 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, '3/06/2019', 0, '55111700835', '365476949'),
(106, '2019-05-24 00:00:00', 'USABILITY LAB SPÓŁKA Z OGRANICZONĄ ODPOWIEDZIALNOŚCIĄ', '9731014524', 'Aneta', 'Płocharczyk-Rajkowska	', 'ul. Kazimierza Wielkiego', '', '7', '5', '65-047', 'Zielona Góra	', 'aplocharczyk@pir.edu.pl', 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, '1/05/2019', 0, '74050604040', '081139249'),
(107, '2019-06-18 00:00:00', 'EUROTEC POLAND SPÓŁKA Z OGRANICZONĄ ODPOWIEDZIALNOŚCIĄ', '5842726881', 'Krzysztof ', 'Patyk ', '', '575986777', '175', '', '87-140', 'Grzywna', 'Biuro.eurotecpoland@gmail.com', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '4/06/2019', 0, '76112205594', '221631867'),
(111, '2019-07-02 00:00:00', 'DROGAP Agnieszka Pawlak', '9521499018', 'Agnieszka', 'Pawlak', 'ul. Ułańska', '888353444', '8', '', '05-077', 'Warszawa', 'wojtek@drogap.pl', 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, '5/06/2019', 0, '77020407627', '366552227'),
(113, '2019-07-09 00:00:00', 'A&M Przedsiębiorstwo Robót Drogowych Mateusz Kűhn', '6392006353', 'Mateusz', 'Kuhn', 'ul. Tworkowska', '603885412', '48', '', '47-450', 'Krzyżanowice', 'amprdkuhn@gmail.com', 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, '6/07/2019', 0, '94111904535', '243581448'),
(114, '2019-07-09 00:00:00', 'CZATA OCHRONA OSÓB I MIENIA SPÓŁKA Z OGRANICZONĄ ODPOWIEDZIALNOŚCIĄ', '5783111527', 'Janusz', 'Staszewski', 'ul. Lotnicza', '603196045', '19', '11', '82-300', 'Elbląg', 'czata@czata.pl', 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, '7/07/2019', 10, '59040110590', '281463736'),
(115, '2019-07-10 00:00:00', 'MASTERS SPÓŁKA Z OGRANICZONĄ ODPOWIEDZIALNOŚCIĄ', '5783122169', 'ANDRZEJ', 'CZERWIŃSKI', 'ul. Władysława Broniewskiego', '511320438', '47', '15', '82-300', 'Elbląg', 'masters.elblag@wp.pl', 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, '8/07/2019', 0, '88051901471', '365573724'),
(118, '2019-07-26 00:00:00', 'KAMILA NOWAKOWSKA KAMBUD', '6372101634', 'Kamil', 'Nowakowski', 'os. XX-lecia', '514551805', '7', '24', '32-340', 'Wolbrom', 'biuro@fhu-kambud.pl', 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, '9/07/2019', 0, '87090311418', '122809750'),
(119, '2019-07-26 00:00:00', 'CHMIEL ANNA USŁUGI-HANDEL-TRANSPORT', '9591352059', 'Anna', 'Chmiel', 'Charężów', '601076652', '6', '', '26-060', 'Chęciny', 'biuro@muszkieter.pl', 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '10/07/2019', 0, '78090513689', '291274507'),
(120, '2019-08-09 13:16:11', 'PREAL\'S SPÓŁKA Z OGRANICZONĄ ODPOWIEDZIALNOŚCIĄ', '1132920117', 'Kamil', 'Radomski', 'ul. Algierska', '606379379', '17', '5', '03-977', 'Warszawa', 'kamil.radomski@preals.pl', 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, '11/08/2019', 0, '82011516291', '365620837'),
(121, '2019-08-13 13:37:19', 'ENDO-TECH BUCZMA WIŚNIEWSKI SPÓŁKA JAWNA', '9581677618', 'Robert', 'Wiśniewski', 'ul. Hutnicza', '721566885', '59', '', '81-061', 'Gdynia', 'robert.wisniewski@endo-tech.pl', 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, '12/08/2019', 0, '88050307452', '366377801'),
(123, '2019-08-21 10:06:50', 'JANICKI TADEUSZ PRZEDSIĘBIORSTWO PRODUKCYJNO-HANDLOWO-USŁUGOWE \"OSCAR\"', '9150000259', 'TADEUSZ', 'JANICKI', 'ul. Siemianicka', '602445434', '57', '', '55-120', 'Oborniki Śląskie', 'osc.oscar@wp.pl', 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '13/08/2019', 0, '59081511479', '931501951'),
(124, '2019-08-22 09:09:09', 'GREMEDIG SPÓŁKA Z OGRANICZONĄ ODPOWIEDZIALNOŚCIĄ', '5732866339', 'Łukasz', 'Ignacyk', 'ul. Leonida Teligi', '575112999', '21', '', '42-215', 'Częstochowa', 'gremedig@gmail.com', 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 1, 0, 1, 1, '14/08/2019', 0, '95082107853', '364835790'),
(125, '2019-09-04 09:30:47', 'IWBIG SPÓŁKA Z OGRANICZONĄ ODPOWIEDZIALNOŚCIĄ', '7422256056', 'Jacek', 'Jakubowski', 'ul. Kaszubska', '502572636', '6A', '1', '11-400', 'Kętrzyn', 'iwbig@o2.pl', 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, '15/09/2019', 0, '82071905918', '367471353'),
(126, '2019-09-16 10:02:00', 'Sławomir Gradek \"TREST\"; \"Auto-Viper\"', '5210521848', 'SŁAWOMIR', 'GRADEK', 'ul. Wołoska', '601216349', '70', '40', '02-507', 'Warszawa', 'trest@trest.pl', 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, '16/09/2019', 0, '58050805175', '011368467'),
(130, '2019-09-23 14:19:04', '\"GGS CONSULTING SPÓŁKA Z OGRANICZONĄ ODPOWIEDZIALNOŚCIĄ\" W RESTRUKTURYZACJI', '8943038262', 'Piotr ', 'Skołucki', 'ul. Żółta', '602306758', '10', '', '54-043', 'Wrocław', 'grazyna@ggs.net.pl', 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '17/09/2019', 0, '68020102193', '021829682'),
(131, '2019-09-24 12:28:47', 'MARCIN KRYSTECKI MERKURY MR DEVELOPMENT POLAND TECHNIKA GRZEWCZA I SANITARNA', '9452180896', 'MARCIN', 'KRYSTECKI', 'ul. Składowa', '500286898', '28', '', '30-010', 'Kraków', 'merkury.krakow.pl@interia.pl', 1, 1, 1, 1, 1, 0, 0, 1, 1, 0, 0, 1, 1, 1, 1, '18/09/2019', 0, '95030509171', '123210854'),
(132, '2019-09-26 10:39:56', 'K2 GROUP SPÓŁKA Z OGRANICZONĄ ODPOWIEDZIALNOŚCIĄ', '7393899690', 'Mateusz ', 'Kiełek', 'ul. Janiny Wengris', '512083383', '26', '', '10-765', 'Olsztyn', 'k2olsztyn@gmail.com', 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, '19/09/2019', 0, '91061602236', '367444161'),
(133, '2019-09-26 12:30:28', 'EFL POLARIS SPÓŁKA Z OGRANICZONĄ ODPOWIEDZIALNOŚCIĄ', '5492413198', 'Dariusz ', 'Świątek', 'ul. Stefana Żeromskiego', '577888091', '12', '', '05-250', 'Słupno', 'a.gondzik-polimeni@efl-polaris.com', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '20/09/2019', 0, '68012501555', '121402934'),
(136, '2019-10-02 20:05:06', 'KAMIL RETES \"KAM - BUD\" USŁUGI OGÓLNOBUDOWLANE', '7582228264', 'KAMIL', 'RETES', 'ul. gen. Antoniego Madalińskiego', '508850545', '13', '19', '07-410', 'Ostrołęka', 'kamil592@interia.eu', 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, '21/10/2019', 0, '86100811519', '140943500'),
(137, '2019-10-16 10:14:00', 'BALTIC SUN SPÓŁKA Z OGRANICZONĄ ODPOWIEDZIALNOŚCIĄ', '9571090998', 'Krzysztof', 'Unger ', 'ul. Myśliwska', '727933377', '78', '40', '80-283', 'Gdańsk', 'biuro@baltic-sun.gda.pl', 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, '22/10/2019', 0, '74070302933', '366346232'),
(138, '2019-10-24 14:35:50', 'NICRAM Marcin Górny', '5641712263', 'MARCIN', 'GÓRNY', 'ul. Mariana Wyrzykowskiego', '508689579', '5', '31', '03-142', 'Warszawa', 'gorny.marcin90@gmail.com', 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, '23/10/2019', 0, '90080909315', '367395511'),
(140, '2019-10-31 17:22:39', 'Niepubliczny Zakład Opieki Zdrowotnej RedMedic Stanisław Pokój', '6811989226', 'STANISŁAW', 'POKÓJ', 'ul. Mikołaja Reja', '608706179', '8', '11', '32-400', 'Myślenice', 'biuro@redmedic.pl', 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '24/10/2019', 0, '92041310170', '361815580'),
(141, '2019-11-05 14:12:49', 'NIEPUBLICZNY ZAKŁAD OPIEKI ZDROWOTNEJ \"VANMED\" W. MODZELEWSKI, W. SIEPRAWSKI SPÓŁKA JAWNA', '5492206281', 'WOJCIECH', 'SIEPRAWSKI', 'ul. Wysokie Brzegi', '502105299', '2', '', '32-600', 'Oświęcim', 'vanmed@o2.pl', 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, '25/11/2019', 4, '75042515515', '356862438'),
(142, '2019-11-06 11:10:12', 'BIURO OCHRONY SPECJALNEJ BOS SPÓŁKA Z OGRANICZONĄ ODPOWIEDZIALNOŚCIĄ', '9492194054', 'Beata', ' Pośpiech', 'ul. Lelewela', '698649831', '8', '40', '42-202', 'Częstochowa', 'bos47@op.pl', 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, '26/11/2019', 0, '74111610849', '243229970'),
(143, '2019-11-06 20:56:04', 'COTRIP KOMPLEX SPÓŁKA Z OGRANICZONĄ ODPOWIEDZIALNOŚCIĄ', '5492432965', 'Roman ', 'Zagórski', 'ul. Poloczka', '796441133', '2', '', '44-178', 'Przyszowice', 'biuro@cotrip.pl', 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, '27/11/2019', 0, '72081011534', '122477420'),
(144, '2019-11-08 12:19:18', 'KMD PRZEMYSŁAW MYDLAK', '5641723166', 'PRZEMYSŁAW', 'MYDLAK', 'Średnia Wieś', '731122117', '69', '', '22-335', 'Żółkiewka-Osada', 'ksiegowosc@kmd.biz.pl', 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, '28/11/2019', 0, '86040609290', '061662720'),
(145, '2019-11-18 11:13:35', '\"RINAR\" Rafał Krakowiak', '9730795301', 'RAFAŁ', 'KRAKOWIAK', 'Koźla', '791023464', '44', '', '66-008', 'Świdnica', 'rafikkrakowiak@gmail.com', 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, 0, 1, 1, 1, 0, '29/11/2019', 0, '85070502858', '360659510'),
(146, '2019-11-19 14:12:11', 'DOM-LAS DOMINIK STRYJAK', '6211052540', 'DOMINIK', 'STRYJAK', 'ul. Krotoszyńska', '724759740', '74', '', '63-714', 'Tomnice', 'dawidgoss@o2.pl', 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, '30/11/2019', 0, '74032714275', '361679160'),
(147, '2019-11-20 14:45:22', 'Zakład Usług Leśnych Tomasz Bagłaj', '7441230767', 'Tomasz', 'Bagłaj', 'Gardzień', '606500757', '21', '', '14-241', 'Ząbrowo', 'baglaj@poczta.onet.pl', 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, '31/11/2019', 9, '70031512975', '510434873'),
(148, '2019-11-21 08:43:12', 'ZAKŁAD USŁUG LEŚNYCH \"ZATBOR\" ZBIGNIEW CHOMEJ', '7621011713', 'Zbigniew', 'Chomej', 'ul. Strażacka', '502617600', '10', '', '07-217', 'Zatory', 'tomaszchomej@wp.pl', 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 1, 0, 1, 1, '32/11/2019', 0, '61030305031', '550419948'),
(149, '2019-11-21 10:02:17', 'ZAKŁAD USŁUG LEŚNYCH MADEJ STANISŁAW', '4990386749', 'Stanisław ', 'Madej', 'Leśna ', '795594267', '7', '11', '76-015', 'Manowo', 'madej22.83@o2.pl', 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, '33/11/2019', 0, '83121108194', '320842889'),
(150, '2019-12-04 23:29:46', 'Specjaliści od Zieleni Grzegorz Zakrzewski', '5361870386', 'GRZEGORZ', 'ZAKRZEWSKI', 'ul. Jana Kazimierza', '515794748', '43', '', '05-126', 'Nieporęt', 'specjalisciodzieleni@wp.pl', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '34/12/2019', 0, '91041407754', '362582533'),
(151, '2019-12-08 19:10:21', 'ZAKŁAD USŁUGOWY ECHO-LAS JUSTYNA JANKOWSKA', '9561684294', 'JUSTYNA', 'JANKOWSKA', 'Cichoradz', '509279998', '20', '2', '87-133', 'Rzęczkowo', 'martynajankowska6801@onet.pl', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '35/12/2019', 10, '79012413429', '340242694'),
(152, '2019-12-09 20:37:47', 'Usługi leśne AD-KAM Ireneusz Łaciak', '7531333749', 'IRENEUSZ', 'ŁACIAK', 'ul. Nyska', '692423437', '26', '', '48-325', 'Ścinawa Nyska', 'ireklaciak70@gmail.com', 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, '36/12/2019', 10, '70110703696', '160330839'),
(153, '2019-12-10 08:45:12', 'W GROUP SPÓŁKA Z OGRANICZONĄ ODPOWIEDZIALNOŚCIĄ', '5140344802', 'Arkadiusz', 'Wasielewski', 'Mostki ', '513897808', '17', '', '63-507', 'Kobyla Góra', 'biuro@wgroup.pl', 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '37/12/2019', 0, '91062011457', '368383852'),
(154, '2019-12-11 13:36:52', 'STOWARZYSZENIE CENTRUM INTEGRACYJNO ANIMACYJNE', '8261969945', 'Jan', 'Testowy2', 'ul. Alejowa', '23432434', '13', '34', '08-450', 'Łaskarzew', 'test@test.pl', 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '38/12/2019', 0, '72051061611', '712486193');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `gw24_customer_orders_invoice`
--

CREATE TABLE `gw24_customer_orders_invoice` (
  `id` int(11) NOT NULL,
  `customer_nip` varchar(100) DEFAULT NULL,
  `service_id` int(11) DEFAULT 0,
  `order_number` varchar(100) NOT NULL,
  `create_date` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `invoice_date` date DEFAULT NULL,
  `invoice_no` int(11) NOT NULL,
  `invoice_full_number` varchar(50) DEFAULT NULL,
  `service_name` varchar(1000) DEFAULT NULL,
  `service_description` varchar(1000) DEFAULT NULL,
  `invoice_type` varchar(20) NOT NULL,
  `file_path` varchar(1000) DEFAULT NULL,
  `file_name` varchar(500) DEFAULT NULL,
  `price` decimal(11,2) DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `gw24_customer_orders_invoice`
--

INSERT INTO `gw24_customer_orders_invoice` (`id`, `customer_nip`, `service_id`, `order_number`, `create_date`, `invoice_date`, `invoice_no`, `invoice_full_number`, `service_name`, `service_description`, `invoice_type`, `file_path`, `file_name`, `price`) VALUES
(42, '7791876257', 0, '998060106017', '0000-00-00 00:00:00', NULL, 16, NULL, NULL, NULL, 'kurier', NULL, NULL, NULL),
(43, '6372101634', 41, '', '0000-00-00 00:00:00', NULL, 2, NULL, NULL, NULL, 'przygotowanie', NULL, NULL, NULL),
(44, '9150000259', 0, '998060106024', '0000-00-00 00:00:00', NULL, 3, NULL, NULL, NULL, 'kurier', NULL, NULL, NULL),
(45, '5783111527', 0, '998060106026', '0000-00-00 00:00:00', NULL, 4, NULL, NULL, NULL, 'kurier', NULL, NULL, NULL),
(46, '5783111527', 42, '', '0000-00-00 00:00:00', NULL, 5, NULL, NULL, NULL, 'przygotowanie', NULL, NULL, NULL),
(47, '7422256056', 43, '', '0000-00-00 00:00:00', NULL, 1, NULL, NULL, NULL, 'przygotowanie', NULL, NULL, NULL),
(48, '5842726881', 44, '', '0000-00-00 00:00:00', NULL, 2, NULL, NULL, NULL, 'przygotowanie', NULL, NULL, NULL),
(49, '5842726881', 45, '', '0000-00-00 00:00:00', NULL, 3, NULL, NULL, NULL, 'przygotowanie', NULL, NULL, NULL),
(50, '6372101634', 46, '', '2019-09-16 12:46:34', NULL, 4, NULL, NULL, NULL, 'przygotowanie', NULL, NULL, NULL),
(51, '5210521848', 47, '', '2019-09-16 10:02:00', NULL, 5, NULL, NULL, NULL, 'przygotowanie', NULL, NULL, NULL),
(57, '9452180896', 49, '998060106035', '2019-09-25 07:30:29', '2019-09-24', 6, '6/09/2019', 'Usługa', 'Usługa przygotowania wniosku', 'przygotowanie', '/home/symbiozait/domains/gwarancje24.pl/public_html/Klienci/9452180896/Zamowienia/998060106035/Faktura_6_09.2019.pdf', 'Faktura_6_09.2019.pdf', '49.00'),
(58, '9452180896', 52, '998060106036', '2019-09-25 07:30:29', '2019-09-24', 7, '7/09/2019', 'Usługa', 'Usługa przygotowania wniosku', 'przygotowanie', '/home/symbiozait/domains/gwarancje24.pl/public_html/Klienci/9452180896/Zamowienia/998060106036/Faktura_7_09.2019.pdf', 'Faktura_7_09.2019.pdf', '49.00'),
(59, '9452180896', 53, '998060106037', '2019-09-25 07:30:29', '2019-09-24', 8, '8/09/2019', 'Usługa', 'Usługa przygotowania wniosku', 'przygotowanie', '/home/symbiozait/domains/gwarancje24.pl/public_html/Klienci/9452180896/Zamowienia/998060106037/Faktura_8_09.2019.pdf', 'Faktura_8_09.2019.pdf', '49.00'),
(62, '5492413198', 55, '998060106039', '2019-09-26 10:43:02', '2019-09-26', 9, '9/09/2019', 'Usługa', 'Usługa przygotowania wniosku', 'przygotowanie', '/home/symbiozait/domains/gwarancje24.pl/public_html/Klienci/5492413198/9/Faktura_9_09.2019.pdf', 'Faktura_9_09.2019.pdf', '49.00'),
(63, '7393899690', 0, '998060106038', '2019-09-26 10:38:00', '2019-09-26', 10, '10/09/2019', 'Usługa', 'Usługa przygotowania wniosku', 'przygotowanie', '/home/symbiozait/domains/gwarancje24.pl/public_html/Klienci/7393899690/Zamowienia/998060106038/Faktura_10_09.2019.pdf', 'Faktura_10_09.2019.pdf', '49.00'),
(66, '7582228264', 0, '998060106041', '2019-10-03 07:50:36', '2019-10-02', 1, '1/10/2019', 'Kurier', 'Przesyłka kurierska', 'kurier', '/home/symbiozait/domains/gwarancje24.pl/public_html/Klienci/7582228264/Zamowienia/998060106041/Faktura_2_10.2019.pdf', 'Faktura_1_10.2019.pdf', '19.00'),
(68, '6372101634', 56, '998060106042', '2019-10-07 08:05:03', '2019-10-07', 2, '2/10/2019', 'Usługa', 'Usługa przygotowania wniosku', 'przygotowanie', '/home/symbiozait/domains/gwarancje24.pl/public_html/Klienci/6372101634/Zamowienia/998060106042/Faktura_2_10.2019.pdf', 'Faktura_2_10.2019.pdf', '49.00'),
(70, '9571090998', 57, '998060106043', '2019-10-18 08:48:48', '2019-10-16', 3, '3/10/2019', 'Usługa', 'Usługa przygotowania wniosku', 'przygotowanie', '/home/symbiozait/domains/gwarancje24.pl/public_html/Klienci/9571090998/3/Faktura_3_10.2019.pdf', 'Faktura_3_10.2019.pdf', '49.00'),
(71, '7422256056', 58, '998060106045', '2019-10-21 16:52:09', '2019-10-21', 4, '4/10/2019', 'Usługa', 'Usługa przygotowania wniosku', 'przygotowanie', '/home/symbiozait/domains/gwarancje24.pl/public_html/Klienci/7422256056/4/Faktura_4_10.2019.pdf', 'Faktura_4_10.2019.pdf', '49.00'),
(72, '9452180896', 61, '998060106048', '2019-10-28 07:31:49', '2019-10-27', 5, '5/10/2019', 'Usługa', 'Usługa przygotowania wniosku', 'przygotowanie', '/home/symbiozait/domains/gwarancje24.pl/public_html/Klienci/9452180896/5/Faktura_5_10.2019.pdf', 'Faktura_5_10.2019.pdf', '49.00'),
(73, '9452180896', 0, '998060106047', '2019-10-28 09:18:04', '2019-10-28', 6, '6/10/2019', 'Usługa', 'Usługa przygotowania wniosku', 'przygotowanie', '/home/symbiozait/domains/gwarancje24.pl/public_html/Klienci/9452180896/Zamowienia/998060106047/Faktura_6_10.2019.pdf', 'Faktura_6_10.2019.pdf', '49.00'),
(74, '5492206281', 0, '998060106050', '2019-11-05 13:15:12', '2019-11-05', 1, '1/11/2019', 'Kurier', 'Przesyłka kurierska', 'kurier', '/home/symbiozait/domains/gwarancje24.pl/public_html/Klienci/5492206281/Zamowienia/998060106050/Faktura_1_11.2019.pdf', 'Faktura_1_11.2019.pdf', '19.00'),
(75, '9492194054', 62, '998060106051', '2019-11-06 11:13:42', '2019-11-06', 2, '2/11/2019', 'Usługa', 'Usługa przygotowania wniosku', 'przygotowanie', '/home/symbiozait/domains/gwarancje24.pl/public_html/Klienci/9492194054/2/Faktura_2_11.2019.pdf', 'Faktura_2_11.2019.pdf', '49.00'),
(76, '9492194054', 63, '998060106052', '2019-11-06 11:18:45', '2019-11-06', 3, '3/11/2019', 'Usługa', 'Usługa przygotowania wniosku', 'przygotowanie', '/home/symbiozait/domains/gwarancje24.pl/public_html/Klienci/9492194054/3/Faktura_3_11.2019.pdf', 'Faktura_3_11.2019.pdf', '49.00'),
(77, '5492432965', 64, '998060106055', '2019-11-20 08:39:53', '2019-11-06', 4, '4/11/2019', 'Usługa', 'Usługa przygotowania wniosku', 'przygotowanie', '/home/symbiozait/domains/gwarancje24.pl/public_html/Klienci/5492432965/4/Faktura_4_11.2019.pdf', 'Faktura_4_11.2019.pdf', '49.00'),
(78, '5210521848', 65, '998060106053', '2019-11-07 13:40:04', '2019-11-07', 5, '5/11/2019', 'Usługa', 'Usługa przygotowania wniosku', 'przygotowanie', '/home/symbiozait/domains/gwarancje24.pl/public_html/Klienci/5210521848/5/Faktura_5_11.2019.pdf', 'Faktura_5_11.2019.pdf', '49.00'),
(79, '5641723166', 66, '998060106054', '2019-11-13 09:55:04', '2019-11-08', 6, '6/11/2019', 'Usługa', 'Usługa przygotowania wniosku', 'przygotowanie', '/home/symbiozait/domains/gwarancje24.pl/public_html/Klienci/5641723166/6/Faktura_6_11.2019.pdf', 'Faktura_6_11.2019.pdf', '49.00'),
(80, '9730795301', 67, '', '2019-11-18 10:13:37', '2019-11-18', 7, '7/11/2019', 'Usługa', 'Usługa przygotowania wniosku', 'przygotowanie', '/home/symbiozait/domains/gwarancje24.pl/public_html/Klienci/9730795301/7/Faktura_7_11.2019.pdf', 'Faktura_7_11.2019.pdf', '49.00'),
(81, '6211052540', 68, '998060106059', '2019-11-22 09:32:56', '2019-11-19', 8, '8/11/2019', 'Usługa', 'Usługa przygotowania wniosku', 'przygotowanie', '/home/symbiozait/domains/gwarancje24.pl/public_html/Klienci/6211052540/8/Faktura_8_11.2019.pdf', 'Faktura_8_11.2019.pdf', '49.00'),
(82, '7621011713', 69, '998060106057', '2019-11-21 09:30:01', '2019-11-21', 9, '9/11/2019', 'Usługa', 'Usługa przygotowania wniosku', 'przygotowanie', '/home/symbiozait/domains/gwarancje24.pl/public_html/Klienci/7621011713/9/Faktura_9_11.2019.pdf', 'Faktura_9_11.2019.pdf', '49.00'),
(83, '4990386749', 70, '998060106058', '2019-11-21 10:12:21', '2019-11-21', 10, '10/11/2019', 'Usługa', 'Usługa przygotowania wniosku', 'przygotowanie', '/home/symbiozait/domains/gwarancje24.pl/public_html/Klienci/4990386749/10/Faktura_10_11.2019.pdf', 'Faktura_10_11.2019.pdf', '49.00'),
(84, '6211052540', 71, '998060106060', '2019-11-22 09:35:49', '2019-11-21', 11, '11/11/2019', 'Usługa', 'Usługa przygotowania wniosku', 'przygotowanie', '/home/symbiozait/domains/gwarancje24.pl/public_html/Klienci/6211052540/11/Faktura_11_11.2019.pdf', 'Faktura_11_11.2019.pdf', '49.00'),
(85, '4990386749', 72, '998060106061', '2019-11-22 16:38:35', '2019-11-22', 12, '12/11/2019', 'Usługa', 'Usługa przygotowania wniosku', 'przygotowanie', '/home/symbiozait/domains/gwarancje24.pl/public_html/Klienci/4990386749/12/Faktura_12_11.2019.pdf', 'Faktura_12_11.2019.pdf', '49.00'),
(86, '5492432965', 73, '998060106067', '2019-11-27 10:46:06', '2019-11-22', 13, '13/11/2019', 'Usługa', 'Usługa przygotowania wniosku', 'przygotowanie', '/home/symbiozait/domains/gwarancje24.pl/public_html/Klienci/5492432965/13/Faktura_13_11.2019.pdf', 'Faktura_13_11.2019.pdf', '49.00'),
(87, '5210521848', 74, '998060106062', '2019-11-25 08:16:12', '2019-11-25', 14, '14/11/2019', 'Usługa', 'Usługa przygotowania wniosku', 'przygotowanie', '/home/symbiozait/domains/gwarancje24.pl/public_html/Klienci/5210521848/14/Faktura_14_11.2019.pdf', 'Faktura_14_11.2019.pdf', '49.00'),
(88, '6211052540', 75, '998060106063', '2019-11-26 09:03:38', '2019-11-25', 15, '15/11/2019', 'Usługa', 'Usługa przygotowania wniosku', 'przygotowanie', '/home/symbiozait/domains/gwarancje24.pl/public_html/Klienci/6211052540/15/Faktura_15_11.2019.pdf', 'Faktura_15_11.2019.pdf', '49.00'),
(89, '7621011713', 0, '998060106066', '2019-11-26 13:06:15', '2019-11-26', 16, '16/11/2019', 'Usługa', 'Usługa przygotowania wniosku', 'przygotowanie', '/home/symbiozait/domains/gwarancje24.pl/public_html/Klienci/7621011713/Zamowienia/998060106066/Faktura_16_11.2019.pdf', 'Faktura_16_11.2019.pdf', '49.00'),
(90, '6211052540', 77, '998060106068', '2019-11-29 09:41:47', '2019-11-27', 17, '17/11/2019', 'Usługa', 'Usługa przygotowania wniosku', 'przygotowanie', '/home/symbiozait/domains/gwarancje24.pl/public_html/Klienci/6211052540/17/Faktura_17_11.2019.pdf', 'Faktura_17_11.2019.pdf', '49.00'),
(91, '6211052540', 78, '998060106069', '2019-11-29 09:45:03', '2019-11-27', 18, '18/11/2019', 'Usługa', 'Usługa przygotowania wniosku', 'przygotowanie', '/home/symbiozait/domains/gwarancje24.pl/public_html/Klienci/6211052540/18/Faktura_18_11.2019.pdf', 'Faktura_18_11.2019.pdf', '49.00'),
(92, '5641723166', 79, '998060106070', '2019-12-03 08:18:55', '2019-12-02', 1, '1/12/2019', 'Usługa', 'Usługa przygotowania wniosku', 'przygotowanie', '/home/symbiozait/domains/gwarancje24.pl/public_html/Klienci/5641723166/1/Faktura_1_12.2019.pdf', 'Faktura_1_12.2019.pdf', '49.00'),
(93, '5361870386', 0, '998060106071', '2019-12-05 09:35:14', '2019-12-05', 2, '2/12/2019', 'Usługa', 'Usługa przygotowania wniosku', 'przygotowanie', '/home/symbiozait/domains/gwarancje24.pl/public_html/Klienci/5361870386/Zamowienia/998060106071/Faktura_2_12.2019.pdf', 'Faktura_2_12.2019.pdf', '49.00'),
(94, '7531333749', 81, '998060106073', '2019-12-10 08:34:17', '2019-12-09', 3, '3/12/2019', 'Usługa', 'Usługa przygotowania wniosku', 'przygotowanie', '/home/symbiozait/domains/gwarancje24.pl/public_html/Klienci/7531333749/3/Faktura_3_12.2019.pdf', 'Faktura_3_12.2019.pdf', '49.00'),
(95, '5140344802', 0, '998060106074', '2019-12-10 08:53:19', '2019-12-10', 4, '4/12/2019', 'Usługa', 'Usługa przygotowania wniosku', 'przygotowanie', '/home/symbiozait/domains/gwarancje24.pl/public_html/Klienci/5140344802/Zamowienia/998060106074/Faktura_4_12.2019.pdf', 'Faktura_4_12.2019.pdf', '49.00'),
(96, '8261969945', 83, '998060106075', '2019-12-11 12:37:46', '2019-12-11', 5, '5/12/2019', 'Usługa', 'Usługa przygotowania wniosku', 'przygotowanie', 'C:\\xampp\\htdocs\\GW24\\CodeIgniter/Klienci/8261969945/5/Faktura_5_12.2019.pdf', 'Faktura_5_12.2019.pdf', '49.00');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `gw24_invoice_numbers`
--

CREATE TABLE `gw24_invoice_numbers` (
  `number` int(11) NOT NULL,
  `month` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `is_used` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `gw24_invoice_numbers`
--

INSERT INTO `gw24_invoice_numbers` (`number`, `month`, `year`, `is_used`) VALUES
(5, 5, 2019, 0),
(15, 6, 2019, 0),
(5, 7, 2019, 0),
(5, 8, 2019, 0),
(9, 9, 2019, 0),
(6, 10, 2019, 0),
(18, 11, 2019, 0),
(5, 12, 2019, 0),
(0, 1, 2020, 0),
(0, 2, 2020, 0),
(0, 3, 2020, 0),
(0, 4, 2020, 0),
(0, 5, 2020, 0),
(0, 6, 2020, 0),
(0, 7, 2020, 0),
(0, 8, 2020, 0),
(0, 9, 2020, 0),
(0, 10, 2020, 0),
(0, 11, 2020, 0),
(0, 12, 2020, 0),
(0, 1, 2021, 0),
(5, 5, 2019, 0),
(15, 6, 2019, 0),
(5, 7, 2019, 0),
(5, 8, 2019, 0),
(9, 9, 2019, 0),
(6, 10, 2019, 0),
(18, 11, 2019, 0),
(5, 12, 2019, 0),
(0, 1, 2020, 0),
(0, 2, 2020, 0),
(0, 3, 2020, 0),
(0, 4, 2020, 0),
(0, 5, 2020, 0),
(0, 6, 2020, 0),
(0, 7, 2020, 0),
(0, 8, 2020, 0),
(0, 9, 2020, 0),
(0, 10, 2020, 0),
(0, 11, 2020, 0),
(0, 12, 2020, 0),
(0, 1, 2021, 0),
(5, 5, 2019, 0),
(15, 6, 2019, 0),
(5, 7, 2019, 0),
(5, 8, 2019, 0),
(9, 9, 2019, 0),
(6, 10, 2019, 0),
(18, 11, 2019, 0),
(5, 12, 2019, 0),
(0, 1, 2020, 0),
(0, 2, 2020, 0),
(0, 3, 2020, 0),
(0, 4, 2020, 0),
(0, 5, 2020, 0),
(0, 6, 2020, 0),
(0, 7, 2020, 0),
(0, 8, 2020, 0),
(0, 9, 2020, 0),
(0, 10, 2020, 0),
(0, 11, 2020, 0),
(0, 12, 2020, 0),
(0, 1, 2021, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `gw24_mails`
--

CREATE TABLE `gw24_mails` (
  `id` int(11) NOT NULL,
  `order_number` varchar(40) DEFAULT NULL,
  `siwz_id` varchar(40) DEFAULT NULL,
  `email_address` varchar(250) DEFAULT NULL,
  `is_sent` tinyint(1) NOT NULL,
  `agreement_sent` tinyint(1) NOT NULL,
  `policy_sent` tinyint(1) NOT NULL,
  `warranty_sent` tinyint(1) NOT NULL,
  `invoice_sent` tinyint(1) NOT NULL,
  `sent_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `gw24_mails`
--

INSERT INTO `gw24_mails` (`id`, `order_number`, `siwz_id`, `email_address`, `is_sent`, `agreement_sent`, `policy_sent`, `warranty_sent`, `invoice_sent`, `sent_date`) VALUES
(1, '998060106001', NULL, NULL, 1, 0, 0, 0, 0, '2019-09-17 06:23:37'),
(2, '998060106002', NULL, NULL, 1, 0, 0, 0, 0, '2019-09-17 06:23:37'),
(3, '998060106003', NULL, NULL, 1, 0, 0, 0, 0, '2019-09-17 06:23:37'),
(4, '998060106004', NULL, NULL, 1, 0, 0, 0, 0, '2019-09-17 06:23:37'),
(5, '998060106013', NULL, NULL, 1, 0, 0, 0, 0, '2019-09-17 06:23:37'),
(6, '998060106008', NULL, NULL, 1, 0, 0, 0, 0, '2019-09-17 06:23:37'),
(7, '998060106009', NULL, NULL, 1, 0, 0, 0, 0, '2019-09-17 06:23:37'),
(8, '998060106010', NULL, NULL, 1, 0, 0, 0, 0, '2019-09-17 06:23:37'),
(9, '998060106011', NULL, NULL, 1, 0, 0, 0, 0, '2019-09-17 06:23:37'),
(10, '998060106012', NULL, NULL, 1, 0, 0, 0, 0, '2019-09-17 06:23:37'),
(11, '998060106005', NULL, NULL, 1, 0, 0, 0, 0, '2019-09-17 06:23:37'),
(12, '998060106007', NULL, NULL, 1, 0, 0, 0, 0, '2019-09-17 06:23:37'),
(13, '998060106014', NULL, NULL, 1, 0, 0, 0, 0, '2019-09-17 06:23:37'),
(14, '998060106015', NULL, NULL, 1, 0, 0, 0, 0, '2019-09-17 06:23:37'),
(15, '998060106016', NULL, NULL, 1, 0, 0, 0, 0, '2019-09-17 06:23:37'),
(16, '998060106017', NULL, NULL, 1, 0, 0, 0, 0, '2019-09-17 06:23:37'),
(17, '998060106019', NULL, NULL, 1, 0, 0, 0, 0, '2019-09-17 06:23:37'),
(18, '998060106020', NULL, NULL, 1, 0, 0, 0, 0, '2019-09-17 06:23:37'),
(19, '998060106022', NULL, NULL, 1, 0, 0, 0, 0, '2019-09-17 06:23:37'),
(20, '998060106021', NULL, NULL, 1, 0, 0, 0, 0, '2019-09-17 06:23:37'),
(21, '998060106018', NULL, NULL, 1, 0, 0, 0, 0, '2019-09-17 06:23:37'),
(22, '998060106023', NULL, NULL, 1, 0, 0, 0, 0, '2019-09-17 06:23:37'),
(23, '998060106024', NULL, NULL, 1, 0, 0, 0, 0, '2019-09-17 06:23:37'),
(24, '998060106025', NULL, NULL, 1, 0, 0, 0, 0, '2019-09-17 06:23:37'),
(25, '998060106026', NULL, NULL, 1, 0, 0, 0, 0, '2019-09-17 06:23:37'),
(26, '998060106030', NULL, NULL, 1, 0, 0, 0, 0, '2019-09-17 06:23:37'),
(27, '998060106031', NULL, NULL, 1, 0, 0, 0, 0, '2019-09-17 06:23:37'),
(28, '998060106034', NULL, NULL, 1, 0, 0, 0, 0, '2019-09-23 12:19:54'),
(29, '998060106040', NULL, NULL, 1, 0, 0, 0, 0, '2019-09-30 13:19:03'),
(30, '998060106041', NULL, NULL, 1, 0, 0, 0, 0, '2019-10-02 18:06:44'),
(31, '998060106042', NULL, NULL, 1, 0, 0, 0, 0, '2019-10-02 18:06:44'),
(32, '998060106044', NULL, NULL, 1, 0, 0, 0, 0, '2019-10-21 16:01:47'),
(33, '998060106046', NULL, NULL, 1, 0, 0, 0, 0, '2019-10-24 12:36:35'),
(34, '998060106050', NULL, NULL, 1, 0, 0, 0, 0, '2019-11-05 13:15:13'),
(35, '998060106053', '65', 'trest@trest.pl', 1, 0, 0, 0, 1, '2019-11-07 10:02:00'),
(36, '998060106054', '66', 'iwona.wysocka@kmd.biz.pl', 1, 1, 0, 0, 1, '2019-11-13 13:24:23'),
(37, NULL, '67', 'rafikkrakowiak@gmail.com', 1, 1, 0, 0, 1, '2019-11-18 10:13:37'),
(38, '998060106059', '68', 'dawidgoss@o2.pl', 1, 1, 0, 0, 1, '2019-11-22 14:20:03'),
(39, '998060106056', NULL, 'baglaj@poczta.onet.pl', 1, 1, 1, 1, 1, '2019-11-20 13:46:07'),
(40, '998060106057', '69', 'tomaszchomej@wp.pl', 1, 1, 0, 0, 1, '2019-11-21 09:58:09'),
(41, '998060106058', '70', 'madej22.83@o2.pl', 1, 1, 0, 0, 1, '2019-11-21 11:37:34'),
(42, '998060106060', '71', 'dawidgoss@o2.pl', 1, 1, 0, 0, 1, '2019-11-22 14:22:42'),
(43, '998060106061', '72', 'madej22.83@o2.pl', 1, 1, 0, 0, 1, '2019-11-22 16:56:16'),
(44, '998060106067', '73', 'biuro@cotrip.pl', 1, 1, 0, 0, 1, '2019-11-27 13:34:17'),
(45, '998060106062', '74', 'trest@trest.pl', 1, 1, 0, 0, 1, '2019-11-25 10:45:17'),
(46, '998060106063', '75', 'dawidgoss@o2.pl', 1, 1, 0, 0, 1, '2019-11-26 12:19:49'),
(47, '998060106064', NULL, 'baglaj@poczta.onet.pl', 1, 1, 1, 1, 1, '2019-11-26 10:00:31'),
(48, '998060106065', NULL, 'baglaj@poczta.onet.pl', 1, 1, 1, 1, 1, '2019-11-26 10:10:24'),
(49, '998060106068', '77', 'dawidgoss@o2.pl', 1, 1, 0, 0, 1, '2019-11-29 10:21:18'),
(50, '998060106069', '78', 'dawidgoss@o2.pl', 1, 1, 0, 0, 1, '2019-11-29 10:17:42'),
(51, '998060106070', '79', 'sekretariat@kmd.biz.pl', 1, 1, 0, 0, 1, '2019-12-03 11:21:32'),
(52, '998060106072', NULL, 'martynajankowska6801@onet.pl', 1, 1, 1, 1, 1, '2019-12-08 18:11:53'),
(53, '998060106073', '81', 'ireklaciak70@gmail.com', 1, 1, 0, 0, 1, '2019-12-10 09:51:21'),
(54, '998060106075', '83', 'test@test.pl', 1, 1, 0, 0, 1, '2019-12-11 12:39:19');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `gw24_nip_check_history`
--

CREATE TABLE `gw24_nip_check_history` (
  `id` int(11) NOT NULL,
  `create_date` datetime DEFAULT current_timestamp(),
  `nip` varchar(50) CHARACTER SET utf8 COLLATE utf8_polish_ci DEFAULT NULL,
  `company_name` varchar(1000) CHARACTER SET utf8 COLLATE utf8_polish_ci DEFAULT NULL,
  `person` varchar(250) CHARACTER SET utf8 COLLATE utf8_polish_ci DEFAULT NULL,
  `message` varchar(1000) CHARACTER SET utf8 COLLATE utf8_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `gw24_nip_check_history`
--

INSERT INTO `gw24_nip_check_history` (`id`, `create_date`, `nip`, `company_name`, `person`, `message`) VALUES
(22, '2019-10-27 17:00:34', '9452180896', 'MARCIN KRYSTECKI MERKURY MR DEVELOPMENT POLAND TECHNIKA GRZEWCZA I SANITARNA', 'MARCIN KRYSTECKI', 'Powodzenie, firma istnieje dłużej niż 2 lata.'),
(23, '2019-10-27 18:19:08', '9141514817', 'AS-BUD Adrian Szawara', 'ADRIAN SZAWARA', NULL),
(26, '2019-10-28 11:30:16', '7712899756', 'JMS CLEAN SERWIS Karol Szmerdt', 'KAROL SZMERDT', NULL),
(27, '2019-10-29 12:11:04', '8661735240', 'PRZEDSIĘBIORSTWO DROGOWE SPÓŁKA Z OGRANICZONĄ ODPOWIEDZIALNOŚCIĄ DYLMEX - INWESTYCJE SPÓŁKA KOMANDYTOWA', '', NULL),
(28, '2019-10-30 10:53:49', '7712899443', 'BAUBUDINVEST SPÓŁKA Z OGRANICZONĄ ODPOWIEDZIALNOŚCIĄ SPÓŁKA KOMANDYTOWA', '', NULL),
(30, '2019-10-30 13:36:47', '7971982216', 'PECOSSO Monika Czerwińska-Krajewska', 'MONIKA CZERWIŃSKA-KRAJEWSKA', NULL),
(31, '2019-10-30 13:45:33', '9291353356', 'EOBUWIE.PL SPÓŁKA AKCYJNA', '', NULL),
(33, '2019-10-31 17:18:01', '6811989226', 'Niepubliczny Zakład Opieki Zdrowotnej RedMedic Stanisław Pokój', 'STANISŁAW POKÓJ', 'Udana weryfikacja - firma istnieje dłuzej niż 2 lata'),
(34, '2019-11-02 10:42:52', '5252613348', 'ZZ BROKERS SPÓŁKA Z OGRANICZONĄ ODPOWIEDZIALNOŚCIĄ', '', 'Udana weryfikacja - firma istnieje dłuzej niż 2 lata'),
(35, '2019-11-04 09:47:37', '7421213599', 'GRZEGORZ MAZUREK', 'GRZEGORZ MAZUREK', 'Udana weryfikacja - firma istnieje dłuzej niż 2 lata'),
(36, '2019-11-04 11:06:28', '5492206281', 'NIEPUBLICZNY ZAKŁAD OPIEKI ZDROWOTNEJ \"VANMED\" W. MODZELEWSKI, W. SIEPRAWSKI SPÓŁKA JAWNA', '', 'Udana weryfikacja - firma istnieje dłuzej niż 2 lata'),
(37, '2019-11-04 21:13:49', '9452180896', 'MARCIN KRYSTECKI MERKURY MR DEVELOPMENT POLAND TECHNIKA GRZEWCZA I SANITARNA', 'MARCIN KRYSTECKI', 'Udana weryfikacja - firma istnieje dłuzej niż 2 lata'),
(38, '2019-11-05 13:40:16', '5492206281', 'NIEPUBLICZNY ZAKŁAD OPIEKI ZDROWOTNEJ \"VANMED\" W. MODZELEWSKI, W. SIEPRAWSKI SPÓŁKA JAWNA', '', 'Udana weryfikacja - firma istnieje dłuzej niż 2 lata'),
(39, '2019-11-05 13:43:21', '5492206281', 'NIEPUBLICZNY ZAKŁAD OPIEKI ZDROWOTNEJ \"VANMED\" W. MODZELEWSKI, W. SIEPRAWSKI SPÓŁKA JAWNA', '', 'Udana weryfikacja - firma istnieje dłuzej niż 2 lata'),
(40, '2019-11-05 14:07:28', '5492206281', 'NIEPUBLICZNY ZAKŁAD OPIEKI ZDROWOTNEJ \"VANMED\" W. MODZELEWSKI, W. SIEPRAWSKI SPÓŁKA JAWNA', '', 'Udana weryfikacja - firma istnieje dłuzej niż 2 lata'),
(41, '2019-11-05 15:00:45', '6221148112', 'SKLEP \"BOBAS\" MACHUŁA ALINA', 'ALINA MACHUŁA', 'Udana weryfikacja - firma istnieje dłuzej niż 2 lata'),
(42, '2019-11-06 11:06:05', '9492194054', 'BIURO OCHRONY SPECJALNEJ BOS SPÓŁKA Z OGRANICZONĄ ODPOWIEDZIALNOŚCIĄ', '', 'Udana weryfikacja - firma istnieje dłuzej niż 2 lata'),
(43, '2019-11-06 11:33:56', '5213550052', 'NNEXT SPÓŁKA Z OGRANICZONĄ ODPOWIEDZIALNOŚCIĄ', '', 'Udana weryfikacja - firma istnieje dłuzej niż 2 lata'),
(44, '2019-11-06 12:10:09', '9492194054', 'BIURO OCHRONY SPECJALNEJ BOS SPÓŁKA Z OGRANICZONĄ ODPOWIEDZIALNOŚCIĄ', '', 'Udana weryfikacja - firma istnieje dłuzej niż 2 lata'),
(45, '2019-11-06 14:26:43', '5252651751', 'ZALANDO LOGISTICS POLSKA SPÓŁKA Z OGRANICZONĄ ODPOWIEDZIALNOŚCIĄ', '', 'Udana weryfikacja - firma istnieje dłuzej niż 2 lata'),
(46, '2019-11-06 18:50:02', '4990386749', 'ZAKŁAD USŁUG LEŚNYCH MADEJ STANISŁAW', 'STANISŁAW MADEJ', 'Udana weryfikacja - firma istnieje dłuzej niż 2 lata'),
(47, '2019-11-06 18:53:12', '4990386749', 'ZAKŁAD USŁUG LEŚNYCH MADEJ STANISŁAW', 'STANISŁAW MADEJ', 'Udana weryfikacja - firma istnieje dłuzej niż 2 lata'),
(48, '2019-11-06 19:22:38', '4990386749', 'ZAKŁAD USŁUG LEŚNYCH MADEJ STANISŁAW', 'STANISŁAW MADEJ', 'Udana weryfikacja - firma istnieje dłuzej niż 2 lata'),
(49, '2019-11-06 20:44:28', '5492432965', 'COTRIP KOMPLEX SPÓŁKA Z OGRANICZONĄ ODPOWIEDZIALNOŚCIĄ', '', 'Udana weryfikacja - firma istnieje dłuzej niż 2 lata'),
(50, '2019-11-07 10:55:07', '5210521848', 'Sławomir Gradek \"TREST\"; \"Auto-Viper\"', 'SŁAWOMIR GRADEK', 'Udana weryfikacja - firma istnieje dłuzej niż 2 lata'),
(51, '2019-11-07 10:55:09', '9521884182', 'E.W.RENTAL SPÓŁKA Z OGRANICZONĄ ODPOWIEDZIALNOŚCIĄ', '', 'Udana weryfikacja - firma istnieje dłuzej niż 2 lata'),
(52, '2019-11-08 11:44:06', '6331573336', NULL, NULL, 'Błąd weryfikacji NIP - niepoprawna składnia numeru NIP'),
(53, '2019-11-08 11:44:21', '7341063873', NULL, NULL, 'Błąd weryfikacji NIP - niepoprawna składnia numeru NIP'),
(54, '2019-11-08 11:46:26', '9521884182', NULL, NULL, 'Błąd weryfikacji NIP - niepoprawna składnia numeru NIP'),
(55, '2019-11-08 11:50:01', '7341063873', NULL, NULL, 'Błąd weryfikacji NIP - niepoprawna składnia numeru NIP'),
(56, '2019-11-08 12:04:53', '5641723166', 'KMD PRZEMYSŁAW MYDLAK', 'PRZEMYSŁAW MYDLAK', 'Udana weryfikacja - firma istnieje dłuzej niż 2 lata'),
(57, '2019-11-08 12:05:26', '5641723166', 'KMD PRZEMYSŁAW MYDLAK', 'PRZEMYSŁAW MYDLAK', 'Udana weryfikacja - firma istnieje dłuzej niż 2 lata'),
(58, '2019-11-08 12:06:02', '5641723166', 'KMD PRZEMYSŁAW MYDLAK', 'PRZEMYSŁAW MYDLAK', 'Udana weryfikacja - firma istnieje dłuzej niż 2 lata'),
(59, '2019-11-08 12:08:28', '5641723166', 'KMD PRZEMYSŁAW MYDLAK', 'PRZEMYSŁAW MYDLAK', 'Udana weryfikacja - firma istnieje dłuzej niż 2 lata'),
(60, '2019-11-09 10:48:15', '9452180896', 'MARCIN KRYSTECKI MERKURY MR DEVELOPMENT POLAND TECHNIKA GRZEWCZA I SANITARNA', 'MARCIN KRYSTECKI', 'Udana weryfikacja - firma istnieje dłuzej niż 2 lata'),
(61, '2019-11-09 22:52:11', '9161055330', NULL, NULL, 'Błąd weryfikacji NIP - niepoprawna składnia numeru NIP'),
(62, '2019-11-09 22:53:02', '9161055330', NULL, NULL, 'Błąd weryfikacji NIP - niepoprawna składnia numeru NIP'),
(63, '2019-11-12 16:23:48', '7771636277', 'Pita-Bud PIOTR ZIELIŃSKI', 'PIOTR ZIELIŃSKI', 'Udana weryfikacja - firma istnieje dłuzej niż 2 lata'),
(64, '2019-11-12 16:24:35', '7771636277', 'Pita-Bud PIOTR ZIELIŃSKI', 'PIOTR ZIELIŃSKI', 'Udana weryfikacja - firma istnieje dłuzej niż 2 lata'),
(65, '2019-11-13 13:53:22', '5252613348', 'ZZ BROKERS SPÓŁKA Z OGRANICZONĄ ODPOWIEDZIALNOŚCIĄ', '', 'Udana weryfikacja - firma istnieje dłuzej niż 2 lata'),
(66, '2019-11-13 13:58:07', '5252239631', 'MMM MUENCHENER MEDIZIN MECHANIK POLSKA SPÓŁKA Z OGRANICZONĄ ODPOWIEDZIALNOŚCIĄ', '', 'Udana weryfikacja - firma istnieje dłuzej niż 2 lata'),
(67, '2019-11-14 09:59:09', '5242625887', 'TRAMCO SPÓŁKA Z OGRANICZONĄ ODPOWIEDZIALNOŚCIĄ', '', 'Udana weryfikacja - firma istnieje dłuzej niż 2 lata'),
(68, '2019-11-15 16:27:58', '7773273235', 'W.M-CONSTRUCTION SPÓŁKA Z OGRANICZONĄ ODPOWIEDZIALNOŚCIĄ', '', 'Udana weryfikacja - firma istnieje dłuzej niż 2 lata'),
(69, '2019-11-16 16:37:42', '8992739450', 'MKW BUDOWNICTWO SPÓŁKA Z OGRANICZONĄ ODPOWIEDZIALNOŚCIĄ SPÓŁKA KOMANDYTOWA', '', 'Udana weryfikacja - firma istnieje dłuzej niż 2 lata'),
(70, '2019-11-18 11:10:43', '9730795301', '\"RINAR\" Rafał Krakowiak', 'RAFAŁ KRAKOWIAK', 'Udana weryfikacja - firma istnieje dłuzej niż 2 lata'),
(71, '2019-11-18 11:10:45', '9730795301', '\"RINAR\" Rafał Krakowiak', 'RAFAŁ KRAKOWIAK', 'Udana weryfikacja - firma istnieje dłuzej niż 2 lata'),
(72, '2019-11-18 13:39:19', '7771601818', 'Wojciech Dembiński', 'WOJCIECH DEMBIŃSKI', 'Udana weryfikacja - firma istnieje dłuzej niż 2 lata'),
(73, '2019-11-18 13:55:29', '5971732642', 'MK TRANS SPÓŁKA Z OGRANICZONĄ ODPOWIEDZIALNOŚCIĄ', '', 'Udana weryfikacja - firma istnieje dłuzej niż 2 lata'),
(74, '2019-11-19 10:58:26', '6211052540', 'DOM-LAS DOMINIK STRYJAK', 'DOMINIK STRYJAK', 'Udana weryfikacja - firma istnieje dłuzej niż 2 lata'),
(75, '2019-11-19 11:06:44', '6481997718', 'ZARYS INTERNATIONAL GROUP SPÓŁKA Z OGRANICZONĄ ODPOWIEDZIALNOŚCIĄ SPÓŁKA KOMANDYTOWA', '', 'Udana weryfikacja - firma istnieje dłuzej niż 2 lata'),
(76, '2019-11-19 12:13:49', '1180016456', 'FOTOS WACŁAW MAJEWSKI', 'WACŁAW MAJEWSKI', 'Udana weryfikacja - firma istnieje dłuzej niż 2 lata'),
(77, '2019-11-19 13:08:17', '6211052540', 'DOM-LAS DOMINIK STRYJAK', 'DOMINIK STRYJAK', 'Udana weryfikacja - firma istnieje dłuzej niż 2 lata'),
(78, '2019-11-19 14:02:11', '6211052540', 'DOM-LAS DOMINIK STRYJAK', 'DOMINIK STRYJAK', 'Udana weryfikacja - firma istnieje dłuzej niż 2 lata'),
(79, '2019-11-19 14:05:32', '6211052540', 'DOM-LAS DOMINIK STRYJAK', 'DOMINIK STRYJAK', 'Udana weryfikacja - firma istnieje dłuzej niż 2 lata'),
(80, '2019-11-19 14:05:35', '6211052540', 'DOM-LAS DOMINIK STRYJAK', 'DOMINIK STRYJAK', 'Udana weryfikacja - firma istnieje dłuzej niż 2 lata'),
(81, '2019-11-19 14:06:29', '6211052540', 'DOM-LAS DOMINIK STRYJAK', 'DOMINIK STRYJAK', 'Udana weryfikacja - firma istnieje dłuzej niż 2 lata'),
(82, '2019-11-19 14:08:12', '6211052540', 'DOM-LAS DOMINIK STRYJAK', 'DOMINIK STRYJAK', 'Udana weryfikacja - firma istnieje dłuzej niż 2 lata'),
(83, '2019-11-19 14:26:26', '7441230767', NULL, NULL, 'Błąd weryfikacji NIP - niepoprawna składnia numeru NIP'),
(84, '2019-11-19 14:26:52', '7441230767', NULL, NULL, 'Błąd weryfikacji NIP - niepoprawna składnia numeru NIP'),
(85, '2019-11-19 14:27:07', '7441230767', NULL, NULL, 'Błąd weryfikacji NIP - niepoprawna składnia numeru NIP'),
(86, '2019-11-19 14:28:02', '7441230767', NULL, NULL, 'Błąd weryfikacji NIP - niepoprawna składnia numeru NIP'),
(87, '2019-11-19 14:29:01', '7441230767', NULL, NULL, 'Błąd weryfikacji NIP - niepoprawna składnia numeru NIP'),
(88, '2019-11-19 14:30:14', '7441230767', NULL, NULL, 'Błąd weryfikacji NIP - niepoprawna składnia numeru NIP'),
(89, '2019-11-19 15:56:48', '6331573336', 'JADWIGA CHOJNACKA', 'JADWIGA CHOJNACKA', 'Udana weryfikacja - firma istnieje dłuzej niż 2 lata'),
(90, '2019-11-20 08:25:18', '9492107026', 'X-KOM SPÓŁKA Z OGRANICZONĄ ODPOWIEDZIALNOŚCIĄ', '', 'Udana weryfikacja - firma istnieje dłuzej niż 2 lata'),
(91, '2019-11-20 10:41:26', '5328661840', NULL, NULL, 'Błąd weryfikacji NIP - niepoprawna składnia numeru NIP'),
(92, '2019-11-20 14:27:27', '8370000806', 'PRZEDSIĘBIORSTWO PRODUKCYJNO-USŁUGOWE \"HEGOR\" SPÓŁKA Z OGRANICZONĄ ODPOWIEDZIALNOŚCIĄ', '', 'Udana weryfikacja - firma istnieje dłuzej niż 2 lata i nie posiada zadłużeń w BIK'),
(93, '2019-11-20 21:41:58', '7621011713', 'ZAKŁAD USŁUG LEŚNYCH \"ZATBOR\" ZBIGNIEW CHOMEJ', 'ZBIGNIEW CHOMEJ', 'Udana weryfikacja - firma istnieje dłuzej niż 2 lata i nie posiada zadłużeń w BIK'),
(94, '2019-11-20 21:57:11', '7621011713', 'ZAKŁAD USŁUG LEŚNYCH \"ZATBOR\" ZBIGNIEW CHOMEJ', 'ZBIGNIEW CHOMEJ', 'Udana weryfikacja - firma istnieje dłuzej niż 2 lata i nie posiada zadłużeń w BIK'),
(95, '2019-11-20 21:57:56', '7621011713', 'ZAKŁAD USŁUG LEŚNYCH \"ZATBOR\" ZBIGNIEW CHOMEJ', 'ZBIGNIEW CHOMEJ', 'Udana weryfikacja - firma istnieje dłuzej niż 2 lata i nie posiada zadłużeń w BIK'),
(96, '2019-11-20 21:59:02', '7621011713', 'ZAKŁAD USŁUG LEŚNYCH \"ZATBOR\" ZBIGNIEW CHOMEJ', 'ZBIGNIEW CHOMEJ', 'Udana weryfikacja - firma istnieje dłuzej niż 2 lata i nie posiada zadłużeń w BIK'),
(97, '2019-11-20 21:59:56', '7621011713', 'ZAKŁAD USŁUG LEŚNYCH \"ZATBOR\" ZBIGNIEW CHOMEJ', 'ZBIGNIEW CHOMEJ', 'Udana weryfikacja - firma istnieje dłuzej niż 2 lata i nie posiada zadłużeń w BIK'),
(98, '2019-11-20 22:04:43', '7621011713', 'ZAKŁAD USŁUG LEŚNYCH \"ZATBOR\" ZBIGNIEW CHOMEJ', 'ZBIGNIEW CHOMEJ', 'Udana weryfikacja - firma istnieje dłuzej niż 2 lata i nie posiada zadłużeń w BIK'),
(99, '2019-11-21 08:13:39', '7621011713', 'ZAKŁAD USŁUG LEŚNYCH \"ZATBOR\" ZBIGNIEW CHOMEJ', 'ZBIGNIEW CHOMEJ', 'Udana weryfikacja - firma istnieje dłuzej niż 2 lata i nie posiada zadłużeń w BIK'),
(100, '2019-11-21 08:50:13', '4990386749', 'ZAKŁAD USŁUG LEŚNYCH MADEJ STANISŁAW', 'STANISŁAW MADEJ', 'Udana weryfikacja - firma istnieje dłuzej niż 2 lata i nie posiada zadłużeń w BIK'),
(101, '2019-11-21 09:08:41', '7621011713', 'ZAKŁAD USŁUG LEŚNYCH \"ZATBOR\" ZBIGNIEW CHOMEJ', 'ZBIGNIEW CHOMEJ', 'Udana weryfikacja - firma istnieje dłuzej niż 2 lata i nie posiada zadłużeń w BIK'),
(102, '2019-11-21 09:11:14', '7621011713', 'ZAKŁAD USŁUG LEŚNYCH \"ZATBOR\" ZBIGNIEW CHOMEJ', 'ZBIGNIEW CHOMEJ', 'Udana weryfikacja - firma istnieje dłuzej niż 2 lata i nie posiada zadłużeń w BIK'),
(103, '2019-11-21 09:15:47', '7742411908', NULL, NULL, 'Weryfikacja BIK - nieudana weryfikacja, klient posiada zadłużenie'),
(104, '2019-11-21 09:16:11', '5261003187', NULL, NULL, 'Weryfikacja BIK - nieudana weryfikacja, klient posiada zadłużenie'),
(105, '2019-11-21 09:16:29', '5261003187', NULL, NULL, 'Weryfikacja BIK - nieudana weryfikacja, klient posiada zadłużenie'),
(106, '2019-11-21 09:31:10', '4990386749', 'ZAKŁAD USŁUG LEŚNYCH MADEJ STANISŁAW', 'STANISŁAW MADEJ', 'Udana weryfikacja - firma istnieje dłuzej niż 2 lata i nie posiada zadłużeń w BIK'),
(107, '2019-11-21 10:39:47', '5220103756', 'PROFARM PS SPÓŁKA Z OGRANICZONĄ ODPOWIEDZIALNOŚCIĄ', '', 'Udana weryfikacja - firma istnieje dłuzej niż 2 lata i nie posiada zadłużeń w BIK'),
(108, '2019-11-21 10:40:29', '5220103756', 'PROFARM PS SPÓŁKA Z OGRANICZONĄ ODPOWIEDZIALNOŚCIĄ', '', 'Udana weryfikacja - firma istnieje dłuzej niż 2 lata i nie posiada zadłużeń w BIK'),
(109, '2019-11-21 10:40:51', '5252613348', 'ZZ BROKERS SPÓŁKA Z OGRANICZONĄ ODPOWIEDZIALNOŚCIĄ', '', 'Udana weryfikacja - firma istnieje dłuzej niż 2 lata i nie posiada zadłużeń w BIK'),
(110, '2019-11-21 11:35:03', '7621011713', 'ZAKŁAD USŁUG LEŚNYCH \"ZATBOR\" ZBIGNIEW CHOMEJ', 'ZBIGNIEW CHOMEJ', 'Udana weryfikacja - firma istnieje dłuzej niż 2 lata i nie posiada zadłużeń w BIK'),
(111, '2019-11-21 18:18:52', '6211052540', 'DOM-LAS DOMINIK STRYJAK', 'DOMINIK STRYJAK', 'Udana weryfikacja - firma istnieje dłuzej niż 2 lata i nie posiada zadłużeń w BIK'),
(112, '2019-11-22 13:07:58', '7821667157', 'YOLO Magdalena Szkudlarek', 'MAGDALENA SZKUDLAREK', 'Udana weryfikacja - firma istnieje dłuzej niż 2 lata i nie posiada zadłużeń w BIK'),
(113, '2019-11-22 14:12:13', '5261003187', NULL, NULL, 'Weryfikacja BIK - nieudana weryfikacja, klient posiada zadłużenie'),
(114, '2019-11-22 14:13:38', '7252065095', 'NIVER SPÓŁKA Z OGRANICZONĄ ODPOWIEDZIALNOŚCIĄ', '', 'Udana weryfikacja - firma istnieje dłużej niż 2 lata i nie posiada zadłużeń w BIK'),
(115, '2019-11-22 14:14:05', '5842638800', 'BET-BUD KRUSZYWA SPÓŁKA Z OGRANICZONĄ ODPOWIEDZIALNOSCIĄ', '', 'Udana weryfikacja - firma istnieje dłużej niż 2 lata i nie posiada zadłużeń w BIK'),
(116, '2019-11-22 14:14:33', '5261003187', NULL, NULL, 'Weryfikacja BIK - nieudana weryfikacja, klient posiada zadłużenie'),
(117, '2019-11-22 14:17:06', '5261003187', NULL, NULL, 'Weryfikacja BIK - nieudana weryfikacja, klient posiada zadłużenie'),
(118, '2019-11-22 14:18:15', '7811750796', 'LST - NET SPÓŁKA Z OGRANICZONĄ ODPOWIEDZIALNOŚCIĄ', '', 'Udana weryfikacja - firma istnieje dłużej niż 2 lata i nie posiada zadłużeń w BIK'),
(119, '2019-11-22 17:12:56', '4990386749', 'ZAKŁAD USŁUG LEŚNYCH MADEJ STANISŁAW', 'STANISŁAW MADEJ', 'Udana weryfikacja - firma istnieje dłużej niż 2 lata i nie posiada zadłużeń w BIK'),
(120, '2019-11-22 17:12:59', '4990386749', 'ZAKŁAD USŁUG LEŚNYCH MADEJ STANISŁAW', 'STANISŁAW MADEJ', 'Udana weryfikacja - firma istnieje dłużej niż 2 lata i nie posiada zadłużeń w BIK'),
(121, '2019-11-22 22:22:33', '5492432965', 'COTRIP KOMPLEX SPÓŁKA Z OGRANICZONĄ ODPOWIEDZIALNOŚCIĄ', '', 'Udana weryfikacja - firma istnieje dłużej niż 2 lata i nie posiada zadłużeń w BIK'),
(122, '2019-11-25 08:10:49', '5210521848', 'Sławomir Gradek \"TREST\"; \"Auto-Viper\"', 'SŁAWOMIR GRADEK', 'Udana weryfikacja - firma istnieje dłużej niż 2 lata i nie posiada zadłużeń w BIK'),
(123, '2019-11-25 14:51:35', '9512392396', 'VERBA-TEXT SPÓŁKA Z OGRANICZONĄ ODPOWIEDZIALNOŚCIĄ SPÓŁKA KOMANDYTOWA', '', 'Udana weryfikacja - firma istnieje dłużej niż 2 lata i nie posiada zadłużeń w BIK'),
(124, '2019-11-25 16:31:43', '6211052540', 'DOM-LAS DOMINIK STRYJAK', 'DOMINIK STRYJAK', 'Udana weryfikacja - firma istnieje dłużej niż 2 lata i nie posiada zadłużeń w BIK'),
(125, '2019-11-25 16:33:08', '6211052540', 'DOM-LAS DOMINIK STRYJAK', 'DOMINIK STRYJAK', 'Udana weryfikacja - firma istnieje dłużej niż 2 lata i nie posiada zadłużeń w BIK'),
(126, '2019-11-25 16:47:59', '5562730522', 'INOREM PAWEŁ KUBIAK', 'PAWEŁ KUBIAK', 'Udana weryfikacja - firma istnieje dłużej niż 2 lata i nie posiada zadłużeń w BIK'),
(127, '2019-11-25 16:49:57', '5562730522', 'INOREM PAWEŁ KUBIAK', 'PAWEŁ KUBIAK', 'Udana weryfikacja - firma istnieje dłużej niż 2 lata i nie posiada zadłużeń w BIK'),
(128, '2019-11-25 16:51:01', '5562730522', 'INOREM PAWEŁ KUBIAK', 'PAWEŁ KUBIAK', 'Udana weryfikacja - firma istnieje dłużej niż 2 lata i nie posiada zadłużeń w BIK'),
(129, '2019-11-25 18:51:55', '9512392396', 'VERBA-TEXT SPÓŁKA Z OGRANICZONĄ ODPOWIEDZIALNOŚCIĄ SPÓŁKA KOMANDYTOWA', '', 'Udana weryfikacja - firma istnieje dłużej niż 2 lata i nie posiada zadłużeń w BIK'),
(130, '2019-11-26 12:38:20', '7621011713', 'ZAKŁAD USŁUG LEŚNYCH \"ZATBOR\" ZBIGNIEW CHOMEJ', 'ZBIGNIEW CHOMEJ', 'Udana weryfikacja - firma istnieje dłużej niż 2 lata i nie posiada zadłużeń w BIK'),
(131, '2019-11-26 17:33:53', '8133711230', 'KANCELARIA FRYDRYCH SPÓŁKA Z OGRANICZONĄ ODPOWIEDZIALNOŚCIĄ', '', 'Udana weryfikacja - firma istnieje dłużej niż 2 lata i nie posiada zadłużeń w BIK'),
(132, '2019-11-27 07:16:17', '6211052540', 'DOM-LAS DOMINIK STRYJAK', 'DOMINIK STRYJAK', 'Udana weryfikacja - firma istnieje dłużej niż 2 lata i nie posiada zadłużeń w BIK'),
(133, '2019-11-27 07:21:23', '6211052540', 'DOM-LAS DOMINIK STRYJAK', 'DOMINIK STRYJAK', 'Udana weryfikacja - firma istnieje dłużej niż 2 lata i nie posiada zadłużeń w BIK'),
(134, '2019-11-27 07:54:59', '6211052540', 'DOM-LAS DOMINIK STRYJAK', 'DOMINIK STRYJAK', 'Udana weryfikacja - firma istnieje dłużej niż 2 lata i nie posiada zadłużeń w BIK'),
(135, '2019-11-28 11:36:22', '5552083736', 'FIRMA MARBRUK SPÓŁKA Z OGRANICZONĄ ODPOWIEDZIALNOŚCIĄ SPÓŁKA KOMANDYTOWA', '', 'Udana weryfikacja - firma istnieje dłużej niż 2 lata i nie posiada zadłużeń w BIK'),
(136, '2019-11-28 11:51:51', '7471778240', 'PAROKS ROKSANA PARTYKA', 'ROKSANA PARTYKA', 'Udana weryfikacja - firma istnieje dłużej niż 2 lata i nie posiada zadłużeń w BIK'),
(137, '2019-11-29 15:17:40', '7651010138', 'ZAKŁAD USŁUG LEŚNYCH  SŁAWOMIR SASIŃSKI', 'SŁAWOMIR SASIŃSKI', 'Udana weryfikacja - firma istnieje dłużej niż 2 lata i nie posiada zadłużeń w BIK'),
(138, '2019-11-29 17:12:44', '7651010138', 'ZAKŁAD USŁUG LEŚNYCH  SŁAWOMIR SASIŃSKI', 'SŁAWOMIR SASIŃSKI', 'Udana weryfikacja - firma istnieje dłużej niż 2 lata i nie posiada zadłużeń w BIK'),
(139, '2019-11-29 17:15:37', '7651010138', 'ZAKŁAD USŁUG LEŚNYCH  SŁAWOMIR SASIŃSKI', 'SŁAWOMIR SASIŃSKI', 'Udana weryfikacja - firma istnieje dłużej niż 2 lata i nie posiada zadłużeń w BIK'),
(140, '2019-12-01 18:24:16', '9561684294', 'ZAKŁAD USŁUGOWY ECHO-LAS JUSTYNA JANKOWSKA', 'JUSTYNA JANKOWSKA', 'Udana weryfikacja - firma istnieje dłużej niż 2 lata i nie posiada zadłużeń w BIK'),
(141, '2019-12-01 18:44:07', '9561684294', 'ZAKŁAD USŁUGOWY ECHO-LAS JUSTYNA JANKOWSKA', 'JUSTYNA JANKOWSKA', 'Udana weryfikacja - firma istnieje dłużej niż 2 lata i nie posiada zadłużeń w BIK'),
(142, '2019-12-02 12:21:08', '5641723166', 'KMD PRZEMYSŁAW MYDLAK', 'PRZEMYSŁAW MYDLAK', 'Udana weryfikacja - firma istnieje dłużej niż 2 lata i nie posiada zadłużeń w BIK'),
(143, '2019-12-02 21:41:00', '5971732642', 'MK TRANS SPÓŁKA Z OGRANICZONĄ ODPOWIEDZIALNOŚCIĄ', '', 'Udana weryfikacja - firma istnieje dłużej niż 2 lata i nie posiada zadłużeń w BIK'),
(144, '2019-12-02 22:25:42', '5361870386', 'Specjaliści od Zieleni Grzegorz Zakrzewski', 'GRZEGORZ ZAKRZEWSKI', 'Udana weryfikacja - firma istnieje dłużej niż 2 lata i nie posiada zadłużeń w BIK'),
(145, '2019-12-02 22:29:06', '5361870386', 'Specjaliści od Zieleni Grzegorz Zakrzewski', 'GRZEGORZ ZAKRZEWSKI', 'Udana weryfikacja - firma istnieje dłużej niż 2 lata i nie posiada zadłużeń w BIK'),
(146, '2019-12-03 10:55:24', '5361870386', 'Specjaliści od Zieleni Grzegorz Zakrzewski', 'GRZEGORZ ZAKRZEWSKI', 'Udana weryfikacja - firma istnieje dłużej niż 2 lata i nie posiada zadłużeń w BIK'),
(147, '2019-12-03 12:47:39', '7771601818', 'Wojciech Dembiński', 'WOJCIECH DEMBIŃSKI', 'Udana weryfikacja - firma istnieje dłużej niż 2 lata i nie posiada zadłużeń w BIK'),
(148, '2019-12-03 14:56:49', '7922296840', 'REMONTY.PL JAKUB JANIK', 'JAKUB JANIK', 'Udana weryfikacja - firma istnieje dłużej niż 2 lata i nie posiada zadłużeń w BIK'),
(149, '2019-12-04 14:48:12', '6731837856', 'Zakład Usług Leśnych Bulczak Junior Marek Bulczak', 'MAREK BULCZAK', 'Udana weryfikacja - firma istnieje dłużej niż 2 lata i nie posiada zadłużeń w BIK'),
(150, '2019-12-04 23:17:45', '5361870386', 'Specjaliści od Zieleni Grzegorz Zakrzewski', 'GRZEGORZ ZAKRZEWSKI', 'Udana weryfikacja - firma istnieje dłużej niż 2 lata i nie posiada zadłużeń w BIK'),
(151, '2019-12-04 23:25:18', '5361870386', 'Specjaliści od Zieleni Grzegorz Zakrzewski', 'GRZEGORZ ZAKRZEWSKI', 'Udana weryfikacja - firma istnieje dłużej niż 2 lata i nie posiada zadłużeń w BIK'),
(152, '2019-12-05 00:12:59', '5213632726', 'DIGITAL TOUCH SPÓŁKA Z OGRANICZONĄ ODPOWIEDZIALNOŚCIĄ', '', 'Udana weryfikacja - firma istnieje dłużej niż 2 lata i nie posiada zadłużeń w BIK'),
(153, '2019-12-08 16:49:41', '9561684294', 'ZAKŁAD USŁUGOWY ECHO-LAS JUSTYNA JANKOWSKA', 'JUSTYNA JANKOWSKA', 'Udana weryfikacja - firma istnieje dłużej niż 2 lata i nie posiada zadłużeń w BIK'),
(154, '2019-12-08 19:05:26', '9561684294', 'ZAKŁAD USŁUGOWY ECHO-LAS JUSTYNA JANKOWSKA', 'JUSTYNA JANKOWSKA', 'Udana weryfikacja - firma istnieje dłużej niż 2 lata i nie posiada zadłużeń w BIK'),
(155, '2019-12-09 09:24:11', '7531333749', 'Usługi leśne AD-KAM Ireneusz Łaciak', 'IRENEUSZ ŁACIAK', 'Udana weryfikacja - firma istnieje dłużej niż 2 lata i nie posiada zadłużeń w BIK'),
(156, '2019-12-09 09:29:22', '7531333749', 'Usługi leśne AD-KAM Ireneusz Łaciak', 'IRENEUSZ ŁACIAK', 'Udana weryfikacja - firma istnieje dłużej niż 2 lata i nie posiada zadłużeń w BIK'),
(157, '2019-12-09 14:07:49', '5140344802', 'W GROUP SPÓŁKA Z OGRANICZONĄ ODPOWIEDZIALNOŚCIĄ', '', 'Udana weryfikacja - firma istnieje dłużej niż 2 lata i nie posiada zadłużeń w BIK'),
(158, '2019-12-09 20:31:17', '7531333749', 'Usługi leśne AD-KAM Ireneusz Łaciak', 'IRENEUSZ ŁACIAK', 'Udana weryfikacja - firma istnieje dłużej niż 2 lata i nie posiada zadłużeń w BIK'),
(159, '2019-12-09 20:31:20', '7531333749', 'Usługi leśne AD-KAM Ireneusz Łaciak', 'IRENEUSZ ŁACIAK', 'Udana weryfikacja - firma istnieje dłużej niż 2 lata i nie posiada zadłużeń w BIK'),
(160, '2019-12-09 20:33:17', '7531333749', 'Usługi leśne AD-KAM Ireneusz Łaciak', 'IRENEUSZ ŁACIAK', 'Udana weryfikacja - firma istnieje dłużej niż 2 lata i nie posiada zadłużeń w BIK'),
(161, '2019-12-09 20:33:50', '7531333749', 'Usługi leśne AD-KAM Ireneusz Łaciak', 'IRENEUSZ ŁACIAK', 'Udana weryfikacja - firma istnieje dłużej niż 2 lata i nie posiada zadłużeń w BIK'),
(162, '2019-12-10 00:51:55', '6342830357', 'MBBM POLAND SPÓŁKA Z OGRANICZONĄ ODPOWIEDZIALNOŚCIĄ SPÓŁKA KOMANDYTOWA', '', 'Udana weryfikacja - firma istnieje dłużej niż 2 lata i nie posiada zadłużeń w BIK'),
(163, '2019-12-10 08:43:26', '5140344802', 'W GROUP SPÓŁKA Z OGRANICZONĄ ODPOWIEDZIALNOŚCIĄ', '', 'Udana weryfikacja - firma istnieje dłużej niż 2 lata i nie posiada zadłużeń w BIK'),
(164, '2019-12-11 10:22:55', '9452180896', 'MARCIN KRYSTECKI MERKURY MR DEVELOPMENT POLAND TECHNIKA GRZEWCZA I SANITARNA', 'MARCIN KRYSTECKI', 'Udana weryfikacja - firma istnieje dłużej niż 2 lata i nie posiada zadłużeń w BIK'),
(165, '2019-12-11 13:34:38', '6721864337', '\"LOS\" SPÓŁKA Z OGRANICZONĄ ODPOWIEDZIALNOŚCIĄ', '', 'Udana weryfikacja - firma istnieje dłużej niż 2 lata i nie posiada zadłużeń w BIK'),
(166, '2019-12-11 13:35:00', '8261969945', 'STOWARZYSZENIE CENTRUM INTEGRACYJNO ANIMACYJNE', '', 'Udana weryfikacja - firma istnieje dłużej niż 2 lata i nie posiada zadłużeń w BIK');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `gw24_orders`
--

CREATE TABLE `gw24_orders` (
  `id` int(15) NOT NULL,
  `order_number` varchar(50) NOT NULL,
  `service_id` varchar(100) DEFAULT NULL,
  `auction_number` varchar(50) NOT NULL,
  `security_deposit` varchar(20) NOT NULL,
  `value` decimal(10,0) NOT NULL,
  `days` int(11) NOT NULL,
  `bonus_days` int(11) DEFAULT 15,
  `customer_id` varchar(15) NOT NULL,
  `create_date` datetime NOT NULL DEFAULT current_timestamp(),
  `date_update` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `user_city` varchar(100) NOT NULL,
  `user_address` varchar(200) NOT NULL,
  `user_postal` varchar(10) NOT NULL,
  `user_company` varchar(400) NOT NULL,
  `email` varchar(150) NOT NULL,
  `shipment_address` varchar(250) NOT NULL,
  `shipment_postal` varchar(10) NOT NULL,
  `shipment_city` varchar(100) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `pesel` varchar(15) NOT NULL,
  `kod_rabatowy` varchar(50) NOT NULL,
  `kod_polecajacy` int(11) DEFAULT NULL,
  `status_id` int(11) NOT NULL,
  `order_group` int(11) NOT NULL DEFAULT 1,
  `order_type` varchar(50) NOT NULL,
  `shipment_type` varchar(50) NOT NULL,
  `payment_type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `gw24_orders`
--

INSERT INTO `gw24_orders` (`id`, `order_number`, `service_id`, `auction_number`, `security_deposit`, `value`, `days`, `bonus_days`, `customer_id`, `create_date`, `date_update`, `user_city`, `user_address`, `user_postal`, `user_company`, `email`, `shipment_address`, `shipment_postal`, `shipment_city`, `first_name`, `last_name`, `pesel`, `kod_rabatowy`, `kod_polecajacy`, `status_id`, `order_group`, `order_type`, `shipment_type`, `payment_type`) VALUES
(321, '998060106001', NULL, '161', '50000', '839', 60, 15, '9731014524', '2019-05-24 10:34:07', '2019-12-12 13:40:37', 'Zielona Góra', 'ul. Kazimierza Wielkiego 7/5', '65-047', 'USABILITY LAB SPÓŁKA Z OGRANICZONĄ ODPOWIEDZIALNOŚCIĄ', 'aplocharczyk@pir.edu.pl', 'ul. Kazimierza Wielkiego 7/5', '65-047', 'Zielona Góra', 'Aneta', 'Płocharczyk-Rajkowska', '74050604040', '', 9, 6, 3, '1', '1', ''),
(326, '998060106002', NULL, '162', '15000', '539', 60, 15, '6692525175', '2019-05-27 09:14:28', '2019-12-12 13:40:37', 'Koszalin', 'Aleja Monte Cassino 6', '75-412', 'ERGOGIS SPÓŁKA Z OGRANICZONĄ ODPOWIEDZIALNOŚCIĄ', 'd.osuch@ergogis.eu', 'Aleja Monte Cassino 6', '75-412', 'Koszalin', 'Dariusz, Antoni', 'Osuch', '63061303394', '', 10, 6, 3, '1', '1', ''),
(329, '998060106003', NULL, '165', '10000', '290', 30, 15, '8371820670', '2019-06-03 13:27:54', '2019-12-12 13:40:37', 'Sochaczew', 'ul. Władysława Reymonta 16A', '96-500', 'PRZEDSIĘBIORSTWO USŁUGOWO-HANDLOWE \"DRA-BUD\" SPÓŁKA z o.o', 'drabud@vp.pl', 'ul. Władysława Reymonta 16A', '96-500', 'Sochaczew', 'MAŁGORZATA', 'DRABER', '55111700835', '', 10, 6, 3, '2', '1', ''),
(330, '998060106004', NULL, '166', '22500', '839', 60, 15, '5842726881', '2019-06-18 08:32:44', '2019-12-13 09:13:11', 'Grzywna', ' 175', '87-140', 'EUROTEC POLAND SPÓŁKA Z OGRANICZONĄ ODPOWIEDZIALNOŚCIĄ', 'Biuro.eurotecpoland@gmail.com', ' 175', '87-140', 'Grzywna', 'Krzysztof ', 'Patyk ', '76112205594', '', 4, 6, 3, '1', '1', '1'),
(331, '998060106008', NULL, '168', '7500', '290', 30, 15, '9521499018', '2019-07-02 10:27:26', '2019-12-12 09:24:04', 'Warszawa', 'ul. Ułańska 8', '05-077', 'DROGAP Agnieszka Pawlak', 'biuro@drogap.pl', 'ul. Ułańska 8', '05-077', 'Warszawa', 'Wojciech', 'Pawlak', '78110910696', '', 10, 6, 3, '1', '1', '2'),
(332, '998060106009', NULL, '169', '5000', '290', 30, 15, '9521499018', '2019-07-03 11:22:51', '2019-12-12 10:28:24', 'Warszawa', 'ul. Ułańska 8', '05-077', 'DROGAP Agnieszka Pawlak', 'biuro@drogap.pl', 'ul. Ułańska 8', '05-077', 'Warszawa', 'Wojciech', 'Pawlak', '78110910696', '', 4, 6, 3, '2', '1', '2'),
(337, '998060106010', NULL, '171', '40000', '639', 30, 15, '6392006353', '2019-07-09 12:01:59', '2019-09-10 15:40:46', 'Krzyżanowice', 'ul. Tworkowska 48', '47-450', 'A&M Przedsiębiorstwo Robót Drogowych Mateusz Kűhn', 'amprdkuhn@gmail.com', 'ul. Tworkowska 48', '47-450', 'Krzyżanowice', 'Mateusz', 'Kuhn', '94111904535', '', 0, 6, 3, '2', '1', ''),
(338, '998060106011', NULL, '172', '3000', '290', 30, 15, '5783111527', '2019-07-09 15:54:01', '2019-12-12 11:16:29', 'Elbląg', 'ul. Lotnicza 19/11', '82-300', 'CZATA OCHRONA OSÓB I MIENIA SPÓŁKA Z OGRANICZONĄ ODPOWIEDZIALNOŚCIĄ', 'czata@czata.pl', 'ul. Lotnicza 19/11', '82-300', 'Elbląg', 'Janusz', 'Staszewski', '59040110590', '', 9, 6, 3, '1', '3', ''),
(339, '998060106012', NULL, '173', '40000', '609', 30, 15, '5783122169', '2019-07-10 10:17:16', '2019-09-10 15:40:46', 'Elbląg', 'ul. Władysława Broniewskiego 47C/15', '82-300', 'MASTERS SPÓŁKA Z OGRANICZONĄ ODPOWIEDZIALNOŚCIĄ', 'masters.elblag@wp.pl', 'ul. Władysława Broniewskiego 47C/15', '82-300', 'Elbląg', 'Andrzej', 'Czerwiński', '88051901471', '', 0, 6, 3, '2', '2', ''),
(341, '998060106013', NULL, '175', '30000', '609', 30, 15, '5783111527', '2019-07-11 14:19:24', '2019-09-10 15:40:46', 'Elbląg', 'ul. Lotnicza 19/11', '82-300', 'CZATA OCHRONA OSÓB I MIENIA SPÓŁKA Z OGRANICZONĄ ODPOWIEDZIALNOŚCIĄ', 'j.staszewski@czata.pl', 'ul. Lotnicza 19/11', '82-300', 'Elbląg', 'Janusz', 'Staszewski', '59040110590', '', 0, 6, 3, '2', '2', ''),
(350, '998060106005', NULL, '176', '10000', '339', 30, 15, '5842726881', '2019-06-18 10:32:44', '2019-09-13 13:22:17', 'Grzywna', ' 175', '87-140', 'EUROTEC POLAND SPÓŁKA Z OGRANICZONĄ ODPOWIEDZIALNOŚCIĄ', 'Biuro.eurotecpoland@gmail.com', ' 175', '87-140', 'Grzywna', 'Krzysztof ', 'Patyk ', '76112205594', '', 0, 6, 3, '1', '2', '1'),
(351, '998060106006', NULL, '177', '5500', '339', 30, 15, '5842726881', '2019-06-18 13:34:42', '2019-09-13 13:22:17', 'Grzywna', ' 175', '87-140', 'EUROTEC POLAND SPÓŁKA Z OGRANICZONĄ ODPOWIEDZIALNOŚCIĄ', 'Biuro.eurotecpoland@gmail.com', ' 175', '87-140', 'Grzywna', 'Krzysztof ', 'Patyk ', '76112205594', '', 0, 6, 3, '1', '2', '1'),
(352, '998060106007', NULL, '178', '3700', '339', 30, 15, '5842726881', '2019-06-18 13:39:42', '2019-09-13 13:22:17', 'Grzywna', ' 175', '87-140', 'EUROTEC POLAND SPÓŁKA Z OGRANICZONĄ ODPOWIEDZIALNOŚCIĄ', 'Biuro.eurotecpoland@gmail.com', ' 175', '87-140', 'Grzywna', 'Krzysztof ', 'Patyk ', '76112205594', '', 0, 6, 3, '1', '2', '1'),
(355, '998060106014', NULL, '181', '5000', '339', 30, 15, '6372101634', '2019-07-26 14:54:19', '2019-09-11 14:51:47', 'Wolbrom', 'os. XX-lecia 7/24', '32-340', 'KAMILA NOWAKOWSKA KAMBUD', 'biuro@fhu-kambud.pl', 'os. XX-lecia 7/24', '32-340', 'Wolbrom', 'Kamil', 'Nowakowski', '87090311418', '', 0, 6, 3, '2', '2', ''),
(357, '998060106015', NULL, '182', '2500', '290', 30, 15, '9591352059', '2019-07-26 14:54:02', '2019-09-11 14:52:07', 'Chęciny', 'Charężów 6', '26-060', 'CHMIEL ANNA USŁUGI-HANDEL-TRANSPORT', 'biuro@muszkieter.pl', 'Charężów 6', '26-060', 'Chęciny', 'Anna', 'Chmiel', '78090513689', '', 0, 6, 3, '2', '1', '2'),
(359, '998060106016', NULL, '183', '3000', '290', 30, 15, '9591352059', '2019-07-29 14:56:19', '2019-09-11 14:52:14', 'Chęciny', 'Charężów 6', '26-060', 'CHMIEL ANNA USŁUGI-HANDEL-TRANSPORT', 'biuro@muszkieter.pl', 'Charężów 6', '26-060', 'Chęciny', 'Anna', 'Chmiel', '78090513689', '', 0, 6, 3, '2', '1', '1'),
(361, '998060106017', NULL, '184', '11000', '439', 30, 15, '5842726881', '2019-08-01 08:00:00', '2019-09-11 14:52:29', 'Grzywna', ' 175', '87-140', 'EUROTEC POLAND SPÓŁKA Z OGRANICZONĄ ODPOWIEDZIALNOŚCIĄ', 'Biuro.eurotecpoland@gmail.com', ' 175', '87-140', 'Grzywna', 'Krzysztof ', 'Patyk ', '76112205594', '', 0, 6, 3, '1', '2', '1'),
(362, '998060106018', NULL, '185', '10000', '290', 30, 15, '9591352059', '2019-08-02 10:27:28', '2019-09-11 14:52:39', 'Chęciny', 'Charężów 6', '26-060', 'CHMIEL ANNA USŁUGI-HANDEL-TRANSPORT', 'biuro@muszkieter.pl', 'Charężów 6', '26-060', 'Chęciny', 'Anna', 'Chmiel', '78090513689', '', 0, 6, 3, '2', '1', '1'),
(363, '998060106019', NULL, '186', '18000', '390', 30, 15, '1132920117', '2019-08-02 13:38:37', '2019-09-11 14:53:20', 'Warszawa', 'ul. Algierska 17L/5', '03-977', 'PREAL\'S SPÓŁKA Z OGRANICZONĄ ODPOWIEDZIALNOŚCIĄ', 'kamil.radomski@preals.pl', 'ul. Algierska 17L/5', '03-977', 'Warszawa', 'Kamil', 'Radomski', '82011516291', '', 0, 6, 3, '2', '1', '1'),
(364, '998060106020', NULL, '187', '16800', '390', 30, 15, '5783122169', '2019-08-09 14:23:00', '2019-09-11 14:53:46', 'Elbląg', 'ul. Władysława Broniewskiego 47C/15', '82-300', 'MASTERS SPÓŁKA Z OGRANICZONĄ ODPOWIEDZIALNOŚCIĄ', 'masters.elblag@wp.pl', 'ul. Władysława Broniewskiego 47C/15', '82-300', 'Elbląg', 'Andrzej', 'Czerwiński', '88051901471', '', 0, 6, 3, '2', '1', '2'),
(365, '998060106021', NULL, '188', '27000', '839', 60, 15, '9581677618', '2019-08-13 13:18:52', '2019-09-11 14:54:01', 'Gdynia', 'ul. Hutnicza 59', '81-061', 'ENDO-TECH BUCZMA WIŚNIEWSKI SPÓŁKA JAWNA', 'robert.wisniewski@endo-tech.pl', 'ul. Hutnicza 59/', '81-061', 'Gdynia', 'Robert', 'Wiśniewski', '88050307452', '', 0, 6, 3, '1', '3', '2'),
(366, '998060106022', NULL, '189', '3000', '290', 30, 15, '9521499018', '2019-08-18 14:33:03', '2019-09-11 14:54:11', 'Warszawa', 'ul. Ułańska 8', '05-077', 'DROGAP Agnieszka Pawlak', 'wojciech.pawlak@drogap.pl', 'ul. Ułańska 8', '05-077', 'Warszawa', 'AGNIESZKA', 'PAWLAK', '78110910696', '', 0, 6, 3, '2', '1', '1'),
(368, '998060106023', NULL, '191', '5000', '339', 30, 15, '6372101634', '2019-08-19 10:21:55', '2019-10-07 09:57:26', 'Wolbrom', 'os. XX-lecia 7/24', '32-340', 'KAMILA NOWAKOWSKA KAMBUD', 'biuro@fhu-kambud.pl', 'Chmielna 38B', '32-329', 'Bolesław', 'Kamil', 'Nowakowski', '89080511965', '', 0, 6, 3, '1', '2', '2'),
(369, '998060106024', NULL, '192', '40000', '809', 60, 15, '9150000259', '2019-08-21 10:07:47', '2019-12-13 09:13:11', 'Oborniki Śląskie', 'ul. Siemianicka 57', '55-120', 'JANICKI TADEUSZ PRZEDSIĘBIORSTWO PRODUKCYJNO-HANDLOWO-USŁUGOWE \"OSCAR\"', 'osc.oscar@wp.pl', 'ul. Siemianicka 57', '55-120', 'Oborniki Śląskie', 'TADEUSZ', 'JANICKI', '59081511479', '', 0, 6, 3, '2', '2', '1'),
(370, '998060106025', NULL, '193', '35200', '790', 60, 15, '5732866339', '2019-08-22 09:09:34', '2019-10-14 15:11:19', 'Częstochowa', 'ul. Leonida Teligi 21', '42-215', 'GREMEDIG SPÓŁKA Z OGRANICZONĄ ODPOWIEDZIALNOŚCIĄ', 'gremedig@gmail.com', 'ul. Leonida Teligi 21', '42-215', 'Częstochowa', 'Łukasz', 'Ignacyk', '95082107853', '', 0, 6, 3, '2', '3', '2'),
(372, '998060106026', NULL, '195', '20000', '439', 30, 15, '5783111527', '2019-08-29 10:02:06', '2019-10-14 15:11:35', 'Elbląg', 'Lotnicza 19/11 biuro ul. Adama Mickiewicza 10/1', '82-300', 'CZATA OCHRONA OSÓB I MIENIA SPÓŁKA Z OGRANICZONĄ ODPOWIEDZIALNOŚCIĄ', 'czata@czata.pl', 'Lotnicza 19/11 biuro ul. Adama Mickiewicza 10/1', '82-300', 'Elbląg', 'Janusz', 'Staszewski', '59040110590', '', 0, 6, 3, '1', '2', '1'),
(373, '998060106027', NULL, '196', '25000', '839', 60, 15, '7422256056', '2019-09-04 10:00:44', '2019-10-14 15:11:46', 'Kętrzyn', 'ul. Kaszubska 6A/1', '11-400', 'IWBIG SPÓŁKA Z OGRANICZONĄ ODPOWIEDZIALNOŚCIĄ', 'iwbig@o2.pl', 'ul. Kaszubska 6A/1', '11-400', 'Kętrzyn', 'Jacek', 'Jakubowski', '82071905918', '', 0, 6, 3, '1', '3', '2'),
(374, '998060106028', NULL, '197', '13000', '439', 30, 15, '5842726881', '2019-09-04 14:15:14', '2019-10-14 15:11:53', 'Grzywna', ' 175', '87-140', 'EUROTEC POLAND SPÓŁKA Z OGRANICZONĄ ODPOWIEDZIALNOŚCIĄ', 'biuro.eurotecpoland@gmail.com', 'Polna 7b', '87-100', 'Toruń ', 'Krzysztof ', 'Patyk ', '76112205594', '', 0, 6, 3, '1', '2', '1'),
(375, '998060106029', NULL, '198', '14000', '439', 30, 15, '5842726881', '2019-09-04 14:31:49', '2019-10-14 15:12:56', 'Grzywna', ' 175', '87-140', 'EUROTEC POLAND SPÓŁKA Z OGRANICZONĄ ODPOWIEDZIALNOŚCIĄ', 'biuro.eurotecpoland@gmail.com', 'Polna 7b', '87-100', 'Toruń ', 'Krzysztof ', 'Patyk ', '76112205594', '', 0, 6, 3, '1', '2', '1'),
(376, '998060106030', NULL, '199', '4000', '290', 30, 15, '9521499018', '2019-09-12 10:04:03', '2019-10-14 15:12:51', 'Warszawa', 'ul. Ułańska 8', '05-077', 'DROGAP Agnieszka Pawlak', 'biuro@drogap.pl', 'ul. Ułańska 8', '05-077', 'Warszawa', 'AGNIESZKA', 'PAWLAK', '78110910696', '', 0, 6, 3, '2', '1', '2'),
(377, '998060106031', NULL, '200', '3000', '290', 30, 15, '9521499018', '2019-09-12 14:52:55', '2019-10-14 15:12:47', 'Warszawa', 'ul. Ułańska 8', '05-077', 'DROGAP Agnieszka Pawlak', 'biuro@drogap.pl', 'ul. Ułańska 8', '05-077', 'Warszawa', 'AGNIESZKA', 'PAWLAK', '78110910696', '', 0, 6, 3, '2', '1', '2'),
(378, '998060106032', NULL, '201', '10000', '339', 30, 15, '6372101634', '2019-09-16 09:22:50', '2019-10-14 15:12:38', 'Wolbrom', 'os. XX-lecia 7/24', '32-340', 'KAMILA NOWAKOWSKA KAMBUD', 'biuro@fhu-kambud.pl', 'ul.Chmielna 38B', '32-329', 'Bolesław', 'Kamil', 'Nowakowski', '89080511965', '', 0, 6, 3, '1', '2', '2'),
(379, '998060106033', NULL, '202', '10000', '339', 30, 15, '5210521848', '2019-09-16 10:26:14', '2019-10-14 15:12:33', 'Warszawa', 'ul. Wołoska 70/40', '02-507', 'Sławomir Gradek \"TREST\" \"Auto-Viper\"', 'trest@trest.pl', 'ul. Wołoska 70/40', '02-507', 'Warszawa', 'SŁAWOMIR', 'GRADEK', '58050805175', '', 0, 6, 3, '1', '1', '1'),
(380, '998060106034', NULL, '204', '50000', '790', 60, 15, '8943038262', '2019-09-23 14:19:28', '2019-10-14 15:12:28', 'Wrocław', 'ul. Żółta 10', '54-043', '\"GGS CONSULTING SPÓŁKA Z OGRANICZONĄ ODPOWIEDZIALNOŚCIĄ\" W RESTRUKTURYZACJI', 'grazyna@ggs.net.pl', 'ul. Żółta 10', '54-043', 'Wrocław', 'Piotr ', 'Skołucki', '68020102193', '', 0, 6, 3, '2', '3', '1'),
(382, '998060106035', NULL, '205', '1000', '339', 30, 15, '9452180896', '2019-09-24 13:18:45', '2019-10-14 15:12:21', 'Kraków', 'ul. Składowa 28', '30-010', 'MARCIN KRYSTECKI MERKURY MR DEVELOPMENT POLAND TECHNIKA GRZEWCZA I SANITARNA', 'merkury.krakow.pl@interia.pl', 'ul. Szopkarzy 6/1', '31-228', 'Kraków', 'Marcin', 'Krystecki', '95030509171', '', 0, 6, 3, '1', '2', '2'),
(383, '998060106036', NULL, '206', '1700', '339', 30, 15, '9452180896', '2019-09-24 15:01:38', '2019-10-14 15:12:16', 'Kraków', 'ul. Składowa 28', '30-010', 'MARCIN KRYSTECKI MERKURY MR DEVELOPMENT POLAND TECHNIKA GRZEWCZA I SANITARNA', 'merkury.krakow.pl@interia.pl', 'ul. Szopkarzy 6/1', '31-228', 'Kraków', 'Marcin', 'Krystecki', '95030509171', '', 0, 6, 3, '1', '2', '2'),
(384, '998060106037', NULL, '207', '6100', '339', 30, 15, '9452180896', '2019-09-24 15:05:05', '2019-10-14 15:12:10', 'Kraków', 'ul. Składowa 28', '30-010', 'MARCIN KRYSTECKI MERKURY MR DEVELOPMENT POLAND TECHNIKA GRZEWCZA I SANITARNA', 'merkury.krakow.pl@interia.pl', 'ul. Składowa 28', '30-010', 'Kraków', 'Marcin', 'Krystecki', '95030509171', '', 0, 6, 3, '1', '2', '2'),
(385, '998060106038', '54', '208', '20000', '439', 30, 15, '7393899690', '2019-09-26 12:11:31', '2019-12-10 13:00:44', 'Olsztyn', 'ul. Janiny Wengris 26', '10-765', 'K2 GROUP SPÓŁKA Z OGRANICZONĄ ODPOWIEDZIALNOŚCIĄ', 'k2olsztyn@gmail.com', 'ul. Janiny Wengris 26', '10-765', 'Olsztyn', 'Mateusz', 'Kiełek', '91061602236', '', 0, 6, 3, '1', '1', '1'),
(386, '998060106039', '55', '209', '10000', '339', 30, 15, '5492413198', '2019-09-26 12:43:02', '2019-12-10 13:00:54', 'Słupno', 'ul. Stefana Żeromskiego 12 A', '05-250', 'EFL POLARIS SPÓŁKA Z OGRANICZONĄ ODPOWIEDZIALNOŚCIĄ', 'a.gondzik-polimeni@efl-polaris.com', 'ul. Stefana Żeromskiego 12 A', '05-250', 'Słupno', 'Aneta', 'Gondzik-Polimeni', '68012501555', '', 0, 6, 3, '1', '2', '1'),
(388, '998060106040', NULL, '211', '10000', '290', 30, 15, '9521499018', '2019-09-30 15:16:38', '2019-12-10 13:01:19', 'Warszawa', 'ul. Ułańska 8', '05-077', 'DROGAP Agnieszka Pawlak', 'wojciech.pawlak@drogap.pl', 'ul. Ułańska 8', '05-077', 'Warszawa', 'AGNIESZKA', 'PAWLAK', '78110910696', '', 0, 6, 3, '2', '1', '2'),
(389, '998060106041', NULL, '212', '10000', '309', 30, 15, '7582228264', '2019-10-02 20:05:17', '2019-12-10 13:01:34', 'Ostrołęka', 'ul. gen. Antoniego Madalińskiego 13/19', '07-410', 'KAMIL RETES \"KAM - BUD\" USŁUGI OGÓLNOBUDOWLANE', 'kamil592@interia.eu', 'ul. gen. Antoniego Madalińskiego 13/19', '07-410', 'Ostrołęka', 'KAMIL', 'RETES', '86100811519', '', 0, 6, 3, '2', '2', '2'),
(390, '998060106042', '56', '213', '10000', '339', 30, 15, '6372101634', '2019-10-07 09:37:42', '2019-12-10 13:01:40', 'Wolbrom', 'os. XX-lecia 7/24', '32-340', 'KAMILA NOWAKOWSKA KAMBUD', 'biuro@fhu-kambud.pl', 'Chmielna 38B', '32-329', 'Bolesław', 'Kamil', 'Nowakowski', '89080511965', '', 0, 6, 3, '1', '2', '2'),
(391, '998060106043', '57', '214', '20000', '539', 60, 15, '9571090998', '2019-10-18 10:48:48', '2019-11-12 13:55:25', 'Gdańsk', 'ul. Myśliwska 78/40', '80-283', 'BALTIC SUN SPÓŁKA Z OGRANICZONĄ ODPOWIEDZIALNOŚCIĄ', 'biuro@baltic-sun.gda.pl', 'ul. Myśliwska 78/40', '80-283', 'Gdańsk', 'Krzysztof', 'Unger ', '74070302933', '', 0, 6, 3, '1', '3', '1'),
(392, '998060106044', NULL, '217', '10000', '290', 30, 15, '1132920117', '2019-10-21 18:01:25', '2019-10-22 09:34:52', 'Warszawa', 'ul. Algierska 17L/5', '03-977', 'PREAL\'S SPÓŁKA Z OGRANICZONĄ ODPOWIEDZIALNOŚCIĄ', 'kamil.radomski@preals.pl', 'ul. Algierska 17L/5', '03-977', 'Warszawa', 'Kamil', 'Radomski', '82011516291', '', 0, 2, 3, '2', '1', '1'),
(395, '998060106045', '58', '218', '20000', '539', 60, 15, '7422256056', '2019-10-21 18:52:09', '2019-12-10 13:02:24', 'Kętrzyn', 'ul. Kaszubska 6A/1', '11-400', 'IWBIG SPÓŁKA Z OGRANICZONĄ ODPOWIEDZIALNOŚCIĄ', 'iwbig@o2.pl', 'Trzy Lipy 5/1', '11-400', 'Kętrzyn', 'Jacek', 'Jakubowski', '82071905918', '', 0, 6, 3, '1', '3', '2'),
(396, '998060106046', NULL, '219', '6000', '290', 30, 15, '5641712263', '2019-10-24 14:36:33', '2019-12-10 13:02:51', 'Warszawa', 'ul. Mariana Wyrzykowskiego 5/31', '03-142', 'NICRAM Marcin Górny', 'gorny.marcin90@gmail.com', 'ul. Mariana Wyrzykowskiego 5/31', '03-142', 'Warszawa', 'MARCIN', 'GÓRNY', '90080909315', '', 0, 6, 3, '2', '1', '1'),
(398, '998060106047', '61', '221', '1000', '339', 30, 15, '9452180896', '2019-10-28 08:31:49', '2019-12-10 13:02:54', 'Kraków', 'ul. Składowa 28', '30-010', 'MARCIN KRYSTECKI MERKURY MR DEVELOPMENT POLAND TECHNIKA GRZEWCZA I SANITARNA', 'merkury.krakow.pl@interia.pl', 'ul. Szopkarzy 6/1', '31-228', 'Kraków', 'Marcin', 'Krystecki', '95030509171', '', 0, 6, 3, '1', '2', '2'),
(399, '998060106048', '59', '222', '6200', '339', 30, 15, '9452180896', '2019-10-28 08:47:13', '2019-12-10 13:02:56', 'Kraków', 'ul. Składowa 28', '30-010', 'MARCIN KRYSTECKI MERKURY MR DEVELOPMENT POLAND TECHNIKA GRZEWCZA I SANITARNA', 'merkury.krakow.pl@interia.pl', 'ul. Szopkarzy 6/1', '31-228', 'Kraków', 'Marcin', 'Krystecki', '95030509171', '', 0, 6, 3, '1', '2', '2'),
(400, '998060106049', NULL, '223', '6000', '490', 90, 15, '6811989226', '2019-10-31 17:22:50', '2019-11-04 14:52:05', 'Myślenice', 'ul. Mikołaja Reja 8/11', '32-400', 'Niepubliczny Zakład Opieki Zdrowotnej RedMedic Stanisław Pokój', 'biuro@redmedic.pl', 'ul. Mikołaja Reja 8/11', '32-400', 'Myślenice', 'STANISŁAW', 'POKÓJ', '92041310170', '', 0, 2, 3, '2', '3', '2'),
(401, '998060106050', NULL, '224', '46000', '790', 60, 15, '5492206281', '2019-11-05 14:15:11', '2019-12-10 13:03:58', 'Oświęcim', 'ul. Wysokie Brzegi 2', '32-600', 'NIEPUBLICZNY ZAKŁAD OPIEKI ZDROWOTNEJ \"VANMED\" W. MODZELEWSKI, W. SIEPRAWSKI SPÓŁKA JAWNA', 'vanmed@o2.pl', 'ul. Wysokie Brzegi 2', '32-600', 'Oświęcim', 'WOJCIECH', 'SIEPRAWSKI', '75042515515', '', 0, 6, 3, '2', '3', '1'),
(402, '998060106051', '62', '225', '46000', '839', 60, 15, '9492194054', '2019-11-06 12:13:42', '2019-12-10 13:04:01', 'Częstochowa', 'ul. Lelewela 8/40', '42-202', 'BIURO OCHRONY SPECJALNEJ BOS SPÓŁKA Z OGRANICZONĄ ODPOWIEDZIALNOŚCIĄ', 'bos47@op.pl', 'ul. Lelewela 8/40', '42-202', 'Częstochowa', 'Beata', 'Pośpiech', '74111610849', '', 0, 6, 3, '1', '3', '2'),
(403, '998060106052', '63', '226', '38000', '839', 60, 15, '9492194054', '2019-11-06 12:18:45', '2019-12-10 13:04:06', 'Częstochowa', 'ul. Lelewela 8/40', '42-202', 'BIURO OCHRONY SPECJALNEJ BOS SPÓŁKA Z OGRANICZONĄ ODPOWIEDZIALNOŚCIĄ', 'bos47@op.pl', 'ul. Lelewela 8/40', '42-202', 'Częstochowa', 'Beata', 'Pośpiech', '74111610849', '', 0, 6, 3, '1', '3', '2'),
(404, '998060106053', '65', '227', '2000', '339', 30, 15, '5210521848', '2019-11-07 14:40:04', '2019-12-10 13:04:09', 'Warszawa', 'ul. Wołoska 70/40', '02-507', 'Sławomir Gradek \"TREST\"; \"Auto-Viper\"', 'trest@trest.pl', 'ul. Wołoska 70/40', '02-507', 'Warszawa', 'Sławomir ', 'Gradek', '58050805175', '', 0, 6, 3, '1', '1', '1'),
(405, '998060106054', '66', '228', '50000', '839', 60, 15, '5641723166', '2019-11-13 10:55:04', '2019-12-10 13:04:12', 'Żółkiewka-Osada', 'Średnia Wieś 69', '22-335', 'KMD PRZEMYSŁAW MYDLAK', 'iwona.wysocka@kmd.biz.pl', 'Średnia Wieś 69', '22-335', 'Żółkiewka-Osada', 'IWONA', 'WYSOCKA', '86040609290', '', 0, 6, 3, '1', '3', '1'),
(406, '998060106055', '64', '229', '12900', '539', 60, 15, '5492432965', '2019-11-20 09:39:53', '2019-12-10 13:04:15', 'Przyszowice', 'ul. Poloczka 2', '44-178', 'COTRIP KOMPLEX SPÓŁKA Z OGRANICZONĄ ODPOWIEDZIALNOŚCIĄ', 'biuro@cotrip.pl', 'ul. Kałusa  30', '41-710', 'Ruda Śląska', 'Justyna', 'Zagórska', '72081011534', '', 0, 6, 3, '1', '3', '1'),
(407, '998060106056', NULL, '230', '43000', '790', 60, 15, '7441230767', '2019-11-20 14:46:05', '2019-12-10 13:04:18', 'Ząbrowo', 'Gardzień 21', '14-241', 'Zakład Usług Leśnych Tomasz Bałgaj', 'baglaj@poczta.onet.pl', 'Gardzień 21', '14-241', 'Ząbrowo', 'Tomasz', 'Bałgaj', '70031512975', '', 0, 6, 3, '2', '3', '1'),
(408, '998060106057', '69', '231', '38000', '839', 60, 15, '7621011713', '2019-11-21 10:30:01', '2019-12-10 13:04:20', 'Zatory', 'Strażacka 10', '07-217', 'ZAKŁAD USŁUG LEŚNYCH \"ZATBOR\" ZBIGNIEW CHOMEJ', 'tomaszchomej@wp.pl', 'Strażacka 10', '07-217', 'Zatory', 'Zbigniew', 'Chomej', '61030305031', '', 0, 6, 3, '1', '3', '2'),
(409, '998060106058', '70', '232', '16000', '539', 60, 15, '4990386749', '2019-11-21 11:12:21', '2019-12-10 13:04:25', 'Manowo', 'Leśna  7/11', '76-015', 'ZAKŁAD USŁUG LEŚNYCH MADEJ STANISŁAW', 'madej22.83@o2.pl', 'Leśna  7/11', '76-015', 'Manowo', 'Stanislaw ', 'Madej', '83121108194', '', 0, 6, 3, '1', '3', '1'),
(410, '998060106059', '68', '233', '25000', '839', 60, 15, '6211052540', '2019-11-22 10:32:56', '2019-12-10 13:04:28', 'Tomnice', 'ul. Krotoszyńska 74', '63-714', 'DOM-LAS DOMINIK STRYJAK', 'dawidgoss@o2.pl', 'ul. Krotoszyńska 74/', '63-714', 'Tomnice', 'Dominik', 'Stryjak', '74032714275', '', 0, 6, 3, '1', '3', '1'),
(411, '998060106060', '71', '234', '5000', '439', 60, 15, '6211052540', '2019-11-22 10:35:49', '2019-12-10 13:04:31', 'Tomnice', 'ul. Krotoszyńska 74', '63-714', 'DOM-LAS DOMINIK STRYJAK', 'dawidgoss@o2.pl', 'ul. Krotoszyńska 74/', '63-714', 'Tomnice', 'Dominik', 'Stryjak', '74032714275', '', 0, 6, 3, '1', '3', '1'),
(412, '998060106061', '72', '235', '6000', '439', 60, 15, '4990386749', '2019-11-22 17:38:35', '2019-12-10 13:04:33', 'Manowo', 'ul. Leśna 7/11', '76-015', 'ZAKŁAD USŁUG LEŚNYCH MADEJ STANISŁAW', 'madej22.83@o2.pl', 'ul. Leśna 7/11', '76-015', 'Manowo', 'Stanisław ', 'MADEJ ', '83121108194', '', 0, 6, 3, '1', '3', '1'),
(413, '998060106062', '74', '236', '2000', '339', 30, 15, '5210521848', '2019-11-25 09:16:12', '2019-12-10 13:04:36', 'Warszawa', 'ul. Wołoska 70/40', '02-507', 'Sławomir Gradek \"TREST\"; \"Auto-Viper\"', 'trest@trest.pl', 'ul. Wołoska 70/40', '02-507', 'Warszawa', 'Sławomir', 'Gradek', '58050805175', '', 0, 6, 3, '1', '1', '1'),
(414, '998060106063', '75', '237', '6200', '439', 60, 15, '6211052540', '2019-11-26 10:03:38', '2019-12-10 13:04:39', 'Tomnice', 'ul. Krotoszyńska 74', '63-714', 'DOM-LAS DOMINIK STRYJAK', 'dawidgoss@o2.pl', 'ul. Krotoszyńska 74/', '63-714', 'Tomnice', 'Dominik', 'Stryjak', '74032714275', '', 0, 6, 3, '1', '3', '1'),
(415, '998060106064', NULL, '238', '2700', '390', 60, 15, '7441230767', '2019-11-26 11:00:29', '2019-12-10 13:04:43', 'Ząbrowo', 'Gardzień 21', '14-241', 'Zakład Usług Leśnych Tomasz Bagłaj ', 'baglaj@poczta.onet.pl', 'Gardzień 21', '14-241', 'Ząbrowo', 'Tomasz ', 'Bagłaj', '70031512975', '', 0, 6, 3, '2', '3', '1'),
(416, '998060106065', NULL, '239', '2200', '390', 60, 15, '7441230767', '2019-11-26 11:10:22', '2019-12-10 13:04:45', 'Ząbrowo', 'Gardzień 21', '14-241', 'Zakład Usług Leśnych Tomasz Bagłaj', 'baglaj@poczta.onet.pl', 'Gardzień 21', '14-241', 'Ząbrowo', 'Tomasz', 'Bagłaj', '70031512975', '', 0, 6, 3, '2', '3', '1'),
(417, '998060106066', '76', '240', '13000', '539', 60, 15, '7621011713', '2019-11-26 13:51:47', '2019-12-10 13:04:48', 'Zatory', 'ul. Strażacka 10', '07-217', 'ZAKŁAD USŁUG LEŚNYCH \"ZATBOR\" ZBIGNIEW CHOMEJ', 'tomaszchomej@wp.pl', 'ul. Strażacka 10', '07-217', 'Zatory', 'Zbigniew', 'Chomej', '61030305031', '', 0, 6, 3, '1', '3', '2'),
(418, '998060106067', '73', '241', '24800', '839', 60, 15, '5492432965', '2019-11-27 11:46:06', '2019-12-10 13:04:50', 'Przyszowice', 'ul. Poloczka 2', '44-178', 'COTRIP KOMPLEX SPÓŁKA Z OGRANICZONĄ ODPOWIEDZIALNOŚCIĄ', 'biuro@cotrip.pl', 'ul. Poloczka 2', '44-178', 'Przyszowice', 'Justyna', 'Zagórska', '72081011534', '', 0, 6, 3, '1', '3', '1'),
(419, '998060106068', '77', '242', '5700', '439', 60, 15, '6211052540', '2019-11-29 10:41:47', '2019-12-10 13:05:01', 'Tomnice', 'ul. Krotoszyńska 74', '63-714', 'DOM-LAS DOMINIK STRYJAK', 'dawidgoss@o2.pl', 'ul. Krotoszyńska 74', '63-714', 'Tomnice', 'Dominik', 'Stryjak', '74032714275', '', 0, 6, 3, '1', '3', '1'),
(420, '998060106069', '78', '243', '7600', '439', 60, 15, '6211052540', '2019-11-29 10:45:03', '2019-12-10 13:05:06', 'Tomnice', 'ul. Krotoszyńska 74', '63-714', 'DOM-LAS DOMINIK STRYJAK', 'dawidgoss@o2.pl', 'ul. Krotoszyńska 74', '63-714', 'Tomnice', 'Dawid ', 'Goss ', '74032714275', '', 0, 6, 3, '1', '3', '1'),
(421, '998060106070', '79', '244', '50000', '639', 30, 15, '5641723166', '2019-12-03 09:18:55', '2019-12-18 08:47:56', 'Żółkiewka-Osada', 'Średnia Wieś 69', '22-335', 'KMD PRZEMYSŁAW MYDLAK', 'sekretariat@kmd.biz.pl', 'Astronomów, 5 5/', '80-299', 'Gdańsk', 'ALICJA', 'DYRAŁA', '86040609290', '', 0, 5, 3, '1', '2', '1'),
(422, '998060106071', '80', '245', '45000', '839', 60, 15, '5361870386', '2019-12-05 10:15:01', '2019-12-12 13:46:36', 'Nieporęt', 'ul. Jana Kazimierza 43', '05-126', 'Specjaliści od Zieleni Grzegorz Zakrzewski', 'specjalisciodzieleni@wp.pl', 'ul. Jana Kazimierza 43/', '05-126', 'Nieporęt', 'Grzegorz', 'Zakrzewski', '91041407754', '', 0, 6, 3, '1', '3', '2'),
(423, '998060106072', NULL, '246', '19000', '490', 60, 15, '9561684294', '2019-12-08 19:11:51', '2019-12-18 08:46:18', 'Rzęczkowo', 'Cichoradz 20/2', '87-133', 'ZAKŁAD USŁUGOWY ECHO-LAS JUSTYNA JANKOWSKA', 'martynajankowska6801@onet.pl', 'Cichoradz 20/2', '87-133', 'Rzęczkowo', 'JUSTYNA', 'JANKOWSKA', '79012413429', '', 0, 6, 3, '2', '3', '1'),
(424, '998060106073', '81', '247', '30000', '839', 60, 15, '7531333749', '2019-12-10 09:34:17', '2019-12-12 14:35:16', 'Ścinawa Nyska', 'ul. Nyska 26', '48-325', 'Usługi leśne AD-KAM Ireneusz Łaciak - lider konsorcjum', 'ireklaciak70@gmail.com', 'ul. Nyska 26/', '48-325', 'Ścinawa Nyska', 'Ireneusz', 'Łaciak', '70110703696', '', 0, 6, 3, '1', '3', '2'),
(425, '998060106074', '82', '248', '10000', '339', 30, 15, '5140344802', '2019-12-10 09:48:07', '2019-12-12 13:46:36', 'Mostki', 'Mostki 17 17', '63-507', 'W GROUP SPÓŁKA Z OGRANICZONĄ ODPOWIEDZIALNOŚCIĄ', 'biuro@wgroup.pl', 'Mostki 17 17/', '63-507', 'Mostki', 'Arkadiusz', 'Wasielewski', '91062011457', '', 0, 6, 3, '1', '2', '2'),
(426, '998060106075', '83', '249', '25000', '839', 60, 15, '8261969945', '2019-12-11 13:37:46', '2019-12-18 08:42:56', 'Łaskarzew', 'ul. Alejowa 13', '08-450', 'STOWARZYSZENIE CENTRUM INTEGRACYJNO ANIMACYJNE', 'test@test.pl', 'ul. Alejowa 13/12', '08-4501', 'Łaskarzew', 'Karol', 'Ryż', '72051061611', '', 0, 6, 3, '1', '3', '1');

--
-- Wyzwalacze `gw24_orders`
--
DELIMITER $$
CREATE TRIGGER `gw24_orders_status_update` BEFORE UPDATE ON `gw24_orders` FOR EACH ROW begin

if NEW.status_id=3  then
set NEW.Order_group = 2;



elseif NEW.status_id = 2 OR  NEW.status_id >=5 then
set NEW.Order_group = 3;
end if;
end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `gw24_order_group`
--

CREATE TABLE `gw24_order_group` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `gw24_order_group`
--

INSERT INTO `gw24_order_group` (`id`, `name`) VALUES
(1, 'planowane'),
(2, 'dzisiejsze'),
(3, 'zakończone');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `gw24_order_numbers_stock`
--

CREATE TABLE `gw24_order_numbers_stock` (
  `number` bigint(20) NOT NULL,
  `is_used` tinyint(1) NOT NULL DEFAULT 0,
  `edit_dt` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `gw24_order_numbers_stock`
--

INSERT INTO `gw24_order_numbers_stock` (`number`, `is_used`, `edit_dt`) VALUES
(998060106001, 1, '2019-05-27 13:55:59'),
(998060106002, 1, '2019-05-27 13:55:51'),
(998060106003, 1, '2019-06-03 11:06:59'),
(998060106004, 1, '2019-06-03 11:07:37'),
(998060106005, 1, '2019-07-12 12:12:21'),
(998060106006, 1, '2019-07-12 12:35:50'),
(998060106007, 1, '2019-07-12 13:11:34'),
(998060106008, 1, '2019-07-12 12:16:16'),
(998060106009, 1, '2019-07-12 12:08:32'),
(998060106010, 1, '2019-07-09 13:44:39'),
(998060106011, 1, '2019-07-09 15:54:18'),
(998060106012, 1, '2019-07-10 10:17:16'),
(998060106013, 1, '2019-07-11 13:37:56'),
(998060106014, 1, '2019-07-26 09:26:20'),
(998060106015, 1, '2019-07-26 10:19:21'),
(998060106016, 1, '2019-08-01 14:16:57'),
(998060106017, 1, '2019-08-01 14:16:57'),
(998060106018, 1, '2019-08-02 14:10:06'),
(998060106019, 1, '2019-08-02 21:30:18'),
(998060106020, 1, '2019-08-09 14:20:59'),
(998060106021, 1, '2019-08-13 13:18:52'),
(998060106022, 1, '2019-08-18 14:33:03'),
(998060106023, 1, '2019-08-19 10:21:55'),
(998060106024, 1, '2019-08-21 10:07:47'),
(998060106025, 1, '2019-08-22 09:09:34'),
(998060106026, 1, '2019-08-29 10:02:06'),
(998060106027, 1, '2019-09-04 10:00:44'),
(998060106028, 1, '2019-09-04 14:15:14'),
(998060106029, 1, '2019-09-04 14:31:49'),
(998060106030, 1, '2019-09-12 10:04:03'),
(998060106031, 1, '2019-09-12 14:52:55'),
(998060106032, 1, '2019-09-16 09:22:50'),
(998060106033, 1, '2019-09-16 10:26:14'),
(998060106034, 1, '2019-09-23 14:19:28'),
(998060106035, 1, '2019-09-24 13:18:45'),
(998060106036, 1, '2019-09-24 15:01:38'),
(998060106037, 1, '2019-09-24 15:05:04'),
(998060106038, 1, '2019-09-26 12:11:31'),
(998060106039, 1, '2019-09-26 12:43:02'),
(998060106040, 1, '2019-09-30 15:16:38'),
(998060106041, 1, '2019-10-02 20:05:17'),
(998060106042, 1, '2019-10-07 09:37:42'),
(998060106043, 1, '2019-10-18 10:48:48'),
(998060106044, 1, '2019-10-21 18:01:25'),
(998060106045, 1, '2019-10-21 18:52:09'),
(998060106046, 1, '2019-10-24 14:36:33'),
(998060106047, 1, '2019-10-27 10:59:55'),
(998060106048, 1, '2019-10-28 08:31:49'),
(998060106049, 1, '2019-10-31 17:22:50'),
(998060106050, 1, '2019-11-05 14:15:11'),
(998060106051, 1, '2019-11-06 12:13:42'),
(998060106052, 1, '2019-11-06 12:18:45'),
(998060106053, 1, '2019-11-07 14:40:04'),
(998060106054, 1, '2019-11-13 10:55:03'),
(998060106055, 1, '2019-11-20 09:39:53'),
(998060106056, 1, '2019-11-20 14:46:05'),
(998060106057, 1, '2019-11-21 10:30:01'),
(998060106058, 1, '2019-11-21 11:12:21'),
(998060106059, 1, '2019-11-22 10:32:56'),
(998060106060, 1, '2019-11-22 10:35:49'),
(998060106061, 1, '2019-11-22 17:38:35'),
(998060106062, 1, '2019-11-25 09:16:12'),
(998060106063, 1, '2019-11-26 10:03:38'),
(998060106064, 1, '2019-11-26 11:00:29'),
(998060106065, 1, '2019-11-26 11:10:22'),
(998060106066, 1, '2019-11-26 13:51:47'),
(998060106067, 1, '2019-11-27 11:46:06'),
(998060106068, 1, '2019-11-29 10:41:46'),
(998060106069, 1, '2019-11-29 10:45:03'),
(998060106070, 1, '2019-12-03 09:18:55'),
(998060106071, 1, '2019-12-05 10:15:01'),
(998060106072, 1, '2019-12-08 19:11:51'),
(998060106073, 1, '2019-12-10 09:34:17'),
(998060106074, 1, '2019-12-10 09:48:07'),
(998060106075, 1, '2019-12-11 13:37:46'),
(998060106076, 0, '2019-07-11 10:12:04'),
(998060106077, 0, '2019-07-11 10:12:04'),
(998060106078, 0, '2019-07-11 10:12:04'),
(998060106079, 0, '2019-07-11 10:12:04'),
(998060106080, 0, '2019-07-11 10:12:04'),
(998060106081, 0, '2019-07-11 10:12:04'),
(998060106082, 0, '2019-07-11 10:12:04'),
(998060106083, 0, '2019-07-11 10:12:04'),
(998060106084, 0, '2019-07-11 10:12:04'),
(998060106085, 0, '2019-07-11 10:12:04'),
(998060106086, 0, '2019-07-11 10:12:04'),
(998060106087, 0, '2019-07-11 10:12:04'),
(998060106088, 0, '2019-07-11 10:12:04'),
(998060106089, 0, '2019-07-11 10:12:04'),
(998060106090, 0, '2019-07-11 10:12:04'),
(998060106091, 0, '2019-07-11 10:12:04'),
(998060106092, 0, '2019-07-11 10:12:04'),
(998060106093, 0, '2019-07-11 10:12:04'),
(998060106094, 0, '2019-07-11 10:12:04'),
(998060106095, 0, '2019-07-11 10:12:04'),
(998060106096, 0, '2019-07-11 10:12:04'),
(998060106097, 0, '2019-07-11 10:12:04'),
(998060106098, 0, '2019-07-11 10:12:04'),
(998060106099, 0, '2019-07-11 10:12:04'),
(998060106100, 0, '2019-07-11 10:12:04'),
(998060106101, 0, '2019-07-12 10:12:38'),
(998060106102, 0, '2019-07-12 10:12:41'),
(998060106103, 0, '2019-07-12 10:12:49'),
(998060106104, 0, '2019-07-12 10:13:34'),
(998060106105, 0, '2019-07-12 10:13:39'),
(998060106106, 0, '2019-07-12 10:13:39'),
(998060106107, 0, '2019-07-12 10:13:40'),
(998060106108, 0, '2019-07-12 10:13:40'),
(998060106109, 0, '2019-07-12 10:13:41'),
(998060106110, 0, '2019-07-12 10:13:42'),
(998060106111, 0, '2019-07-12 10:13:42'),
(998060106112, 0, '2019-07-12 10:13:43'),
(998060106113, 0, '2019-07-12 10:13:44'),
(998060106114, 0, '2019-07-12 10:13:44'),
(998060106115, 0, '2019-07-12 10:13:45'),
(998060106116, 0, '2019-07-12 10:13:45'),
(998060106117, 0, '2019-07-12 10:13:46'),
(998060106118, 0, '2019-07-12 10:13:47'),
(998060106119, 0, '2019-07-12 10:13:47'),
(998060106120, 0, '2019-07-12 10:13:48'),
(998060106121, 0, '2019-07-12 10:13:48'),
(998060106122, 0, '2019-07-12 10:13:49'),
(998060106123, 0, '2019-07-12 10:13:49'),
(998060106124, 0, '2019-07-12 10:13:49'),
(998060106125, 0, '2019-07-12 10:13:49'),
(998060106126, 0, '2019-07-12 10:13:50'),
(998060106127, 0, '2019-07-12 10:13:50'),
(998060106128, 0, '2019-07-12 10:13:51'),
(998060106129, 0, '2019-07-12 10:13:51'),
(998060106130, 0, '2019-07-12 10:13:52'),
(998060106131, 0, '2019-07-12 10:13:52'),
(998060106132, 0, '2019-07-12 10:13:52'),
(998060106133, 0, '2019-07-12 10:13:53'),
(998060106134, 0, '2019-07-12 10:13:53'),
(998060106135, 0, '2019-07-12 10:13:54'),
(998060106136, 0, '2019-07-12 10:13:54'),
(998060106137, 0, '2019-07-12 10:13:54'),
(998060106138, 0, '2019-07-12 10:13:55'),
(998060106139, 0, '2019-07-12 10:13:55'),
(998060106140, 0, '2019-07-12 10:13:56'),
(998060106141, 0, '2019-07-12 10:13:56'),
(998060106142, 0, '2019-07-12 10:13:57'),
(998060106143, 0, '2019-07-12 10:13:58'),
(998060106144, 0, '2019-07-12 10:13:58'),
(998060106145, 0, '2019-07-12 10:13:59'),
(998060106146, 0, '2019-07-12 10:14:00'),
(998060106147, 0, '2019-07-12 10:14:00'),
(998060106148, 0, '2019-07-12 10:14:01'),
(998060106149, 0, '2019-07-12 10:14:01'),
(998060106150, 0, '2019-07-12 10:14:02');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `gw24_order_status`
--

CREATE TABLE `gw24_order_status` (
  `id` int(11) NOT NULL,
  `color` varchar(50) NOT NULL DEFAULT 'primary',
  `name` varchar(100) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `gw24_order_status`
--

INSERT INTO `gw24_order_status` (`id`, `color`, `name`, `active`) VALUES
(1, 'info', ' <i class=\"fas fa-ban\"></i> Nieopłacone', 1),
(2, 'danger', '<i class=\"fas fa-times\"></i> Anulowane', 1),
(3, 'primary', '<i class=\"fas fa-money-bill\"></i> Opłacone', 1),
(4, 'success', '<i class=\"fas fa-check\"></i> Gotowe', 1),
(5, 'warning', '<i class=\"fas fa-envelope text-white\"></i> Wysłane', 1),
(6, 'dark', '<i class=\"fas fa-file-invoice-dollar\"></i>  Rozliczone z T.U.', 1),
(7, 'secondary', '<i class=\"fas fa-user-check\"></i>  Rozliczone z partnerem', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `gw24_order_status_history`
--

CREATE TABLE `gw24_order_status_history` (
  `id` int(11) NOT NULL,
  `order_number` varchar(50) NOT NULL,
  `status_id_before` int(11) NOT NULL,
  `status_id_after` int(11) NOT NULL,
  `changer_id` int(11) NOT NULL,
  `updade_dt` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `gw24_order_type`
--

CREATE TABLE `gw24_order_type` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `gw24_order_type`
--

INSERT INTO `gw24_order_type` (`id`, `name`) VALUES
(1, 'Zlecono ekspertom'),
(2, 'Zamówienie samodzielne');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `gw24_partners`
--

CREATE TABLE `gw24_partners` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(200) NOT NULL,
  `kod` varchar(50) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `partner_commission` float(10,0) DEFAULT 0 COMMENT 'partner_commision in %'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `gw24_partners`
--

INSERT INTO `gw24_partners` (`id`, `nazwa`, `kod`, `active`, `partner_commission`) VALUES
(4, 'Bank Spółdzielczy Zator', 'BSZATOR', 1, 0),
(9, 'Delta Broker', 'db', 1, 8),
(10, 'Firmy Leśne', 'firmylesne', 1, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `gw24_payment_type`
--

CREATE TABLE `gw24_payment_type` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `gw24_payment_type`
--

INSERT INTO `gw24_payment_type` (`id`, `name`) VALUES
(1, 'Przelew tradycyjny'),
(2, 'Przelewy24');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `gw24_pricelist`
--

CREATE TABLE `gw24_pricelist` (
  `id` int(11) NOT NULL,
  `type` varchar(10) NOT NULL,
  `range_from` int(11) NOT NULL DEFAULT 0,
  `range_to` int(11) NOT NULL DEFAULT 0,
  `price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `update_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `gw24_pricelist`
--

INSERT INTO `gw24_pricelist` (`id`, `type`, `range_from`, `range_to`, `price`, `update_date`) VALUES
(4, '60', 0, 10000, '390.00', '2019-05-10'),
(7, '90', 0, 10000, '490.00', '2019-05-10'),
(9, 'shipment', 0, 0, '19.00', '2019-05-10'),
(10, 'service', 0, 0, '49.00', '2019-05-10'),
(14, '30', 0, 10000, '290.00', '2019-05-10'),
(16, '30', 10001, 20000, '390.00', '2019-05-10'),
(17, '30', 20001, 50000, '590.00', '2019-05-10'),
(18, '60', 10001, 20000, '490.00', '2019-05-10'),
(19, '60', 20001, 50000, '790.00', '2019-05-10'),
(20, '90', 10001, 20000, '590.00', '2019-05-10'),
(21, '90', 20001, 50000, '990.00', '2019-05-10');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `gw24_przelewy24`
--

CREATE TABLE `gw24_przelewy24` (
  `p24_session_id` varchar(250) NOT NULL,
  `user_id` varchar(250) DEFAULT NULL,
  `p24_ammount` int(11) NOT NULL,
  `p24_sign` varchar(50) NOT NULL,
  `order_id` varchar(250) NOT NULL,
  `status` varchar(50) NOT NULL,
  `payment_date` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `gw24_przelewy24`
--

INSERT INTO `gw24_przelewy24` (`p24_session_id`, `user_id`, `p24_ammount`, `p24_sign`, `order_id`, `status`, `payment_date`) VALUES
('1558695975', '2147483647', 839, 'e5b5d1dcd537b53ab4cbbef2885c6f58', '29', '1', '2019-08-05 09:31:33'),
('1558949565', '2147483647', 539, '6bf2a85d0d5ecf2e3f8317f2d2ea552e', '30', '1', '2019-08-05 09:31:33'),
('1562656006', '2147483647', 639, 'f6545ac6798e86d4ffd349fed8dcef9c', '37', '1', '2019-08-05 09:31:33'),
('1564112292', '2147483647', 339, '0c8e80275adce7ccbb8e30a14f6eed50', '38', '1', '2019-08-05 09:31:33'),
('1565353260', '5783122169', 390, '29e0a037c4f83ce042279ab69ec04d76', '998060106020', '1', '2019-08-09 14:21:00'),
('1565692471', '9581677618', 839, 'be92b954d562ee2c07f15f5f3a0a65a6', '40', '1', '2019-08-13 12:34:31'),
('1566122351', '6372101634', 339, 'cda4122ff38ed6f902e5953e340f369a', '41', '1', '2019-08-18 11:59:11'),
('1566131584', '9521499018', 290, 'dd738a0e47e164752b148aa984961541', '998060106022', '1', '2019-08-18 14:33:04'),
('1566199372', '7582228264', 290, '809094d7decc9dc0efa1f237f1ffa0dd', '998060106023', '1', '2019-08-19 09:22:52'),
('1566457774', '5732866339', 790, 'afd642cce29b94d3a4a2e4e58139eb3e', '998060106025', '1', '2019-08-22 09:09:34'),
('1567582247', '7422256056', 839, '75723aa35dd24ef9be43ea48868f795f', '43', '1', '2019-09-04 09:30:47'),
('1568275443', '9521499018', 290, 'f54cfae7d2744626586f5e0ec58fee30', '998060106030', '1', '2019-09-12 10:04:03'),
('1568292776', '9521499018', 290, '8e7f4476f573f1769f19c0ada37a4256', '998060106031', '1', '2019-09-12 14:52:56'),
('1568473333', '6372101634', 339, 'ede03f087ec08e02ed9f5334f0bbea0a', '46', '1', '2019-09-14 17:02:13'),
('1569241169', '8943038262', 790, '68fd6436acfbac7fa7d0e8dd2f020f32', '998060106034', '1', '2019-09-23 14:19:29'),
('1569320927', '9452180896', 339, '0c5a5b020f1797c56fbd9e42651d998e', '49', '1', '2019-09-24 12:28:47'),
('1569328994', '9452180896', 339, 'ac0ac0d34680ec13a1be31a0b768039c', '52', '1', '2019-09-24 14:43:14'),
('1569329204', '9452180896', 339, '24c4e286ce69498463eb8010c31b60a7', '53', '1', '2019-09-24 14:46:44'),
('1569487196', '7393899690', 439, 'd32374ad7089efedaa6b7bb6918de906', '54', '1', '2019-09-26 10:39:56'),
('1569753288', '9930670509', 390, 'ee82794293a88442e48339c9a23bc939', '998060106040', '1', '2019-09-29 12:34:48'),
('1569849399', '9521499018', 290, '7db4b49e31108efc24b7580612a62cc0', '998060106040', '1', '2019-09-30 15:16:39'),
('1570039518', '7582228264', 290, 'a62883d20976d3ad62a48af887049f2a', '998060106041', '1', '2019-10-02 20:05:18'),
('1570375608', '6372101634', 339, '976cc0210d500a3077cfe94a5a1a8397', '56', '1', '2019-10-06 17:26:48'),
('1571665958', '7422256056', 539, 'debd9cf8a5e6c05a63285e6d2c601062', '58', '1', '2019-10-21 15:52:38'),
('1571673686', '1132920117', 290, 'dbaa3c0d90d4c3b9d70c1c419c903d44', '998060106044', '1', '2019-10-21 18:01:26'),
('1572170395', '2530183475', 790, '4ef966a6b95ec38921dabfaad4ba5b18', '998060106047', '1', '2019-10-27 10:59:55'),
('1572190946', '9452180896', 339, '09d8fee8421d44d84b285cdde2688d6e', '59', '1', '2019-10-27 16:42:26'),
('1572191995', '9452180896', 339, '87a37dce8986f4041d9f3d1e4f75d3f7', '60', '1', '2019-10-27 16:59:55'),
('1572192179', '9452180896', 339, '1f51b98e873c99e1044a941f7ac3c98f', '61', '1', '2019-10-27 17:02:59'),
('1572538971', '6811989226', 490, '25fc9ae86c628a007025543b48653947', '998060106049', '1', '2019-10-31 17:22:51'),
('1573035012', '9492194054', 839, '62666dced7a109b62e41c91dd2bcdd9d', '62', '1', '2019-11-06 11:10:12'),
('1573038710', '9492194054', 839, 'd0dc7a6de0152d048fd5ce78f14978d0', '63', '1', '2019-11-06 12:11:50'),
('1574324491', '7621011713', 839, 'ebf31ee306a9255243dd137fcdfabedb', '69', '1', '2019-11-21 09:21:31'),
('1574768402', '7621011713', 539, '0e493b212ce7ace10aecfaccaf8100c5', '76', '1', '2019-11-26 12:40:02'),
('1575498586', '5361870386', 839, '90ede6ea715e94167620cc6cb60888c3', '80', '1', '2019-12-04 23:29:46'),
('1575920267', '7531333749', 839, 'ccf482d25b01e5ad37b6bb70cb8090af', '81', '1', '2019-12-09 20:37:47'),
('1575963912', '5140344802', 339, '4029254e247452e0c87ad06bf8f6e109', '82', '1', '2019-12-10 08:45:12');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `gw24_przelewy24_response_status`
--

CREATE TABLE `gw24_przelewy24_response_status` (
  `id` int(11) NOT NULL,
  `p24_merchant_id` int(11) NOT NULL,
  `p24_pos_id` int(11) NOT NULL,
  `p24_session_id` varchar(100) NOT NULL,
  `p24_amount` int(11) NOT NULL,
  `p24_currency` varchar(3) NOT NULL,
  `p24_order_id` varchar(100) NOT NULL,
  `p24_method` int(11) NOT NULL,
  `p24_statement` varchar(250) NOT NULL,
  `p24_sign` varchar(250) NOT NULL,
  `payment_date` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `gw24_przelewy24_response_status`
--

INSERT INTO `gw24_przelewy24_response_status` (`id`, `p24_merchant_id`, `p24_pos_id`, `p24_session_id`, `p24_amount`, `p24_currency`, `p24_order_id`, `p24_method`, `p24_statement`, `p24_sign`, `payment_date`) VALUES
(1, 53659, 53659, '1550651995', 49000, 'PLN', '300043005', 153, 'p24-C04-A30-A05', '22df0e8431d5c942562a3b6cba9e9c67', '2019-09-17 06:28:40'),
(2, 53659, 53659, '1550654065', 64000, 'PLN', '300043039', 154, 'p24-J04-A30-A39', '91580d7fc793dbb312f4630d42b171ed', '2019-09-17 06:28:40'),
(3, 53659, 53659, '1550654065', 64000, 'PLN', '300043039', 154, 'p24-J04-A30-A39', '91580d7fc793dbb312f4630d42b171ed', '2019-09-17 06:28:40'),
(4, 53659, 53659, '1550654515', 39000, 'PLN', '300043045', 153, 'p24-C04-A30-A45', '09357bb74553554f2007f38ff9ff8318', '2019-09-17 06:28:40'),
(5, 53659, 53659, '1550654687', 39000, 'PLN', '300043047', 154, 'p24-C04-A30-A47', '7745203f9af6fc19c172e9b1e1a4a0ad', '2019-09-17 06:28:40'),
(6, 53659, 53659, '1550654687', 39000, 'PLN', '300043047', 154, 'p24-C04-A30-A47', '7745203f9af6fc19c172e9b1e1a4a0ad', '2019-09-17 06:28:40'),
(7, 53659, 53659, '1550654687', 39000, 'PLN', '300043047', 154, 'p24-C04-A30-A47', '7745203f9af6fc19c172e9b1e1a4a0ad', '2019-09-17 06:28:40'),
(8, 53659, 53659, '1550654687', 39000, 'PLN', '300043047', 154, 'p24-C04-A30-A47', '7745203f9af6fc19c172e9b1e1a4a0ad', '2019-09-17 06:28:40'),
(9, 53659, 53659, '1550655658', 49000, 'PLN', '300043069', 153, 'p24-F04-A30-A69', '461fc04619e1f603662f7dc570d53835', '2019-09-17 06:28:40'),
(10, 53659, 53659, '1550657257', 49000, 'PLN', '300043128', 154, 'p24-J04-A31-A28', 'db524d0562e8f75890884065b03d043c', '2019-09-17 06:28:40'),
(11, 53659, 53659, '1550657889', 49000, 'PLN', '300043156', 154, 'p24-E04-A31-A56', 'c732816fcb0ed6f9917dc2515f52c062', '2019-09-17 06:28:40'),
(12, 53659, 53659, '1550657889', 49000, 'PLN', '300043156', 154, 'p24-E04-A31-A56', 'c732816fcb0ed6f9917dc2515f52c062', '2019-09-17 06:28:40'),
(13, 53659, 53659, '1550654687', 39000, 'PLN', '300043047', 154, 'p24-C04-A30-A47', '7745203f9af6fc19c172e9b1e1a4a0ad', '2019-09-17 06:28:40'),
(14, 53659, 53659, '1550654687', 39000, 'PLN', '300043047', 154, 'p24-C04-A30-A47', '7745203f9af6fc19c172e9b1e1a4a0ad', '2019-09-17 06:28:40'),
(15, 53659, 53659, '1550654687', 39000, 'PLN', '300043047', 154, 'p24-C04-A30-A47', '7745203f9af6fc19c172e9b1e1a4a0ad', '2019-09-17 06:28:40'),
(16, 53659, 53659, '1550659879', 49000, 'PLN', '300043206', 154, 'p24-G04-A32-A06', '53c65235d222f51e04b48536eac2b3b7', '2019-09-17 06:28:40'),
(17, 53659, 53659, '1550660216', 64000, 'PLN', '300043218', 154, 'p24-G04-A32-A18', 'c4fceb9cece97a250e7a3113a8187e06', '2019-09-17 06:28:40'),
(18, 53659, 53659, '1550660254', 64000, 'PLN', '300043220', 154, 'p24-B04-A32-A20', '833078fb52e8786c313f71b648a0bcd0', '2019-09-17 06:28:40'),
(19, 53659, 53659, '1550660317', 64000, 'PLN', '300043226', 154, 'p24-G04-A32-A26', 'cb12d863041d0a0b20258c0aab5e9849', '2019-09-17 06:28:40'),
(20, 53659, 53659, '1550660350', 64000, 'PLN', '300043228', 154, 'p24-B04-A32-A28', 'f7320bd1e3f7831d22dba5fb3c7af27d', '2019-09-17 06:28:40'),
(21, 53659, 53659, '1550663033', 29000, 'PLN', '300043298', 153, 'p24-C04-A32-A98', '41077181d90379ff90bbf5549d17432b', '2019-09-17 06:28:40'),
(22, 53659, 53659, '1550663108', 39000, 'PLN', '300043300', 153, 'p24-A04-A33-A00', 'baacb2d791789893e174468520600b25', '2019-09-17 06:28:40'),
(23, 53659, 53659, '1550663196', 29000, 'PLN', '300043303', 154, 'p24-G04-A33-A03', '42a1c6efd7b31f0a6bbbff25ae0737f0', '2019-09-17 06:28:40'),
(24, 53659, 53659, '1550674415', 64000, 'PLN', '300043545', 154, 'p24-F04-A35-A45', '4c30ee21b5ddad3592b32e1fb4a88595', '2019-09-17 06:28:40'),
(25, 53659, 53659, '1550757063', 49000, 'PLN', '300044248', 154, 'p24-A04-A42-A48', '2063604fc84a7fb70e810fbc24da0ed6', '2019-09-17 06:28:40'),
(26, 53659, 53659, '1550757107', 49000, 'PLN', '300044250', 154, 'p24-K04-A42-A50', '62739598b8b972f1ee0b8f67a431ffe7', '2019-09-17 06:28:40'),
(27, 53659, 53659, '1550757750', 49000, 'PLN', '300044262', 25, 'p24-J04-A42-A62', '8f07cee84ebb623aeb982bb49c82223b', '2019-09-17 06:28:40'),
(28, 53659, 53659, '1550794015', 49000, 'PLN', '300044493', 154, 'p24-B04-A44-A93', '150092e0355b101b30e5f3675a96ffcd', '2019-09-17 06:28:40'),
(29, 53659, 53659, '1550805744', 139000, 'PLN', '300044511', 154, 'p24-C04-A45-A11', '93367197466f575cabddb528e41728a6', '2019-09-17 06:28:40'),
(30, 53659, 53659, '1550806075', 139000, 'PLN', '300044512', 154, 'p24-A04-A45-A12', '9539ed18df437eda4574c0facef36c85', '2019-09-17 06:28:40'),
(31, 53659, 53659, '1550806135', 139000, 'PLN', '300044513', 121, 'p24-C04-A45-A13', '99eab0baf8ed1d931b71b4f975a75297', '2019-09-17 06:28:40'),
(32, 53659, 53659, '1550809905', 39000, 'PLN', '300044530', 154, 'p24-C04-A45-A30', '530ef392e02ba387fc496c6221a82076', '2019-09-17 06:28:40'),
(33, 53659, 53659, '1550828754', 59000, 'PLN', '300044734', 154, 'p24-D04-A47-A34', 'eecde2cd93c66624d0d89cdbbb015921', '2019-09-17 06:28:40'),
(34, 53659, 53659, '1550829066', 59000, 'PLN', '300044742', 154, 'p24-B04-A47-A42', '91645b9d3c4e04ae9d77ca70eb308a6b', '2019-09-17 06:28:40'),
(35, 53659, 53659, '1550829360', 59000, 'PLN', '300044752', 154, 'p24-A04-A47-A52', 'd7b2fe5ed7ba4299d7a3340e4eae9212', '2019-09-17 06:28:40'),
(36, 53659, 53659, '1551105374', 59000, 'PLN', '300046382', 154, 'p24-E04-A63-A82', 'c80a3b7cc22a71ee96f217f63ec38db8', '2019-09-17 06:28:40'),
(37, 53659, 53659, '1551105556', 59000, 'PLN', '300046388', 154, 'p24-E04-A63-A88', '6aa64eb4da90f5b1c7bf528d0ae7d433', '2019-09-17 06:28:40'),
(38, 53659, 53659, '1554186709', 29000, 'PLN', '300072381', 153, 'p24-F07-A23-A81', '9045de66b8f90e0a6ae672f73dbc7215', '2019-09-17 06:28:40'),
(39, 53659, 53659, '1554186709', 29000, 'PLN', '300072381', 153, 'p24-F07-A23-A81', '9045de66b8f90e0a6ae672f73dbc7215', '2019-09-17 06:28:40'),
(40, 53659, 53659, '1554186709', 29000, 'PLN', '300072381', 153, 'p24-F07-A23-A81', '9045de66b8f90e0a6ae672f73dbc7215', '2019-09-17 06:28:40'),
(41, 53659, 53659, '1554186709', 29000, 'PLN', '300072381', 153, 'p24-F07-A23-A81', '9045de66b8f90e0a6ae672f73dbc7215', '2019-09-17 06:28:40'),
(42, 53659, 53659, '1554186912', 29000, 'PLN', '300072386', 153, 'p24-C07-A23-A86', '00dd2c97b99b0dfc0acfa71109175207', '2019-09-17 06:28:40'),
(43, 53659, 53659, '1554187459', 29000, 'PLN', '300072394', 153, 'p24-D07-A23-A94', '96f4e34cd51a52f558923748a7d6a4a7', '2019-09-17 06:28:40'),
(44, 53659, 53659, '1554191745', 29000, 'PLN', '300072477', 153, 'p24-J07-A24-A77', '0974c6bc9bc3d0d7f82ab6e81c539147', '2019-09-17 06:28:40'),
(45, 53659, 53659, '1554195080', 40900, 'PLN', '300072565', 65, 'p24-J07-A25-A65', 'b525a3a0d6f3e9036c7af43a9cb0a88a', '2019-09-17 06:28:40'),
(46, 53659, 53659, '1554201049', 39000, 'PLN', '300072738', 153, 'p24-C07-A27-A38', '3d4c6eaea5f95993f9cb036cd6175487', '2019-09-17 06:28:40'),
(47, 53659, 53659, '1554211329', 29000, 'PLN', '300073076', 153, 'p24-F07-A30-A76', '44283c811047d2cdebdcb263f896de73', '2019-09-17 06:28:40'),
(48, 53659, 53659, '1554212424', 29000, 'PLN', '300073123', 153, 'p24-E07-A31-A23', '34d5fd70bb3e3c6b2c948ea4b093c8a7', '2019-09-17 06:28:40'),
(49, 53659, 53659, '1554295134', 80900, 'PLN', '300074061', 112, 'p24-E07-A40-A61', 'fbeaf65811f5ca8b5f16f8b73c821b7d', '2019-09-17 06:28:40'),
(50, 53659, 53659, '1554368250', 60900, 'PLN', '300074731', 25, 'p24-C07-A47-A31', 'c67d3e186daa14078b93f082e73f5478', '2019-09-17 06:28:40'),
(51, 53659, 53659, '1554382835', 39000, 'PLN', '300075054', 153, 'p24-D07-A50-A54', 'aace50682bae6f928a774c4a87cb23af', '2019-09-17 06:28:40'),
(52, 53659, 53659, '1554382835', 39000, 'PLN', '300075054', 153, 'p24-D07-A50-A54', 'aace50682bae6f928a774c4a87cb23af', '2019-09-17 06:28:40'),
(53, 53659, 53659, '1554383630', 29000, 'PLN', '300075072', 153, 'p24-G07-A50-A72', '75dc711fd5b84267c24cdb2995872d63', '2019-09-17 06:28:40'),
(54, 53659, 53659, '1554384208', 60900, 'PLN', '300075079', 65, 'p24-J07-A50-A79', '5b60d3731ec35da63807324ae995e8d9', '2019-09-17 06:28:40'),
(55, 53659, 53659, '1554814286', 60900, 'PLN', '300078563', 153, 'p24-K07-A85-A63', 'e8f6f14a006c8b7da99b17ec4fbecfc3', '2019-09-17 06:28:40'),
(56, 53659, 53659, '1554882374', 59000, 'PLN', '300079128', 153, 'p24-J07-A91-A28', '30571c9e056a80f28f96f10ded39650f', '2019-09-17 06:28:40'),
(57, 53659, 53659, '1554885128', 59000, 'PLN', '300079247', 153, 'p24-J07-A92-A47', '3929b24ea73afa4779ce9af175b179d7', '2019-09-17 06:28:40'),
(58, 53659, 53659, '1554888516', 39000, 'PLN', '300079360', 153, 'p24-G07-A93-A60', '6b55af9834c41e1a826fa78ddceaa89e', '2019-09-17 06:28:40'),
(59, 53659, 53659, '1554902298', 29000, 'PLN', '300079896', 20, 'p24-B07-A98-A96', 'e98de760abf860b7072ce3b4c99317ce', '2019-09-17 06:28:40'),
(60, 53659, 53659, '1554902676', 59000, 'PLN', '300079908', 20, 'p24-G07-A99-A08', '7d979d66db656ff802a625613b2118a4', '2019-09-17 06:28:40'),
(61, 53659, 53659, '1554918923', 40900, 'PLN', '300080239', 26, 'p24-F08-A02-A39', '753579fce01c67225ea9d43699e6facc', '2019-09-17 06:28:40'),
(62, 53659, 53659, '1554968538', 40900, 'PLN', '300080553', 20, 'p24-A08-A05-A53', 'b3e48a0bea9cf5c20173ca1a752de8f5', '2019-09-17 06:28:40'),
(63, 53659, 53659, '1555055560', 39000, 'PLN', '300081634', 153, 'p24-D08-A16-A34', '37c94aafc6c4102e3d8b92b024f146e8', '2019-09-17 06:28:40'),
(64, 53659, 53659, '1555065836', 59000, 'PLN', '300081986', 88, 'p24-F08-A19-A86', '5442003e878b3530d491270bf025674c', '2019-09-17 06:28:40'),
(65, 53659, 53659, '1555068830', 40900, 'PLN', '300082143', 153, 'p24-A08-A21-A43', '7b2beead5b0681e7741ea8695f051c7e', '2019-09-17 06:28:40'),
(66, 53659, 53659, '1555069021', 59000, 'PLN', '300082147', 88, 'p24-K08-A21-A47', '21132626945b5f845bd658c99a24b31e', '2019-09-17 06:28:40'),
(67, 53659, 53659, '1555488524', 50900, 'PLN', '300085561', 65, 'p24-B08-A55-A61', '307b13444c449bec25991c9735ccf975', '2019-09-17 06:28:40'),
(68, 53659, 53659, '1555620528', 59000, 'PLN', '300087256', 85, 'p24-F08-A72-A56', 'cf2dce9788ee367d2e18e4556b4dfec0', '2019-09-17 06:28:40'),
(69, 53659, 53659, '1555660560', 39000, 'PLN', '300087415', 85, 'p24-K08-A74-A15', '127e06117b9d51383db1b2574eb081be', '2019-09-17 06:28:40'),
(70, 53659, 53659, '1555663578', 59000, 'PLN', '300087496', 94, 'p24-F08-A74-A96', 'a4c597005e6346654bd4c052d4f1ca2e', '2019-09-17 06:28:40'),
(71, 53659, 53659, '1555664156', 79000, 'PLN', '300087508', 94, 'p24-G08-A75-A08', '9e9d0acd708c84a4db1a6cc8f0fdcb75', '2019-09-17 06:28:40'),
(72, 53659, 53659, '1555670591', 59000, 'PLN', '300087663', 31, 'p24-K08-A76-A63', '59948bbd6a25f86a458e646e88cc7b50', '2019-09-17 06:28:40'),
(73, 53659, 53659, '1556029202', 79000, 'PLN', '300089848', 65, 'p24-G08-A98-A48', 'b5673c77243c6180f6e47f071fdffff7', '2019-09-17 06:28:40'),
(74, 53659, 53659, '1557147130', 29000, 'PLN', '300097847', 94, 'p24-E09-A78-A47', 'ca5d3a09cb143186fc9cd552fd297a16', '2019-09-17 06:28:40'),
(75, 53659, 53659, '1557231717', 59000, 'PLN', '300098739', 85, 'p24-K09-A87-A39', '6e812bdda68ed140e3a964d10c43eab7', '2019-09-17 06:28:40'),
(76, 53659, 53659, '1557325136', 59000, 'PLN', '300100046', 94, 'p24-H10-A00-A46', 'ba505f7d455dac579621a75c37e827d8', '2019-09-17 06:28:40'),
(77, 53659, 53659, '1557329278', 39000, 'PLN', '300100160', 26, 'p24-K10-A01-A60', '9d3cebb408db0565fc3710283b0c2cb8', '2019-09-17 06:28:40'),
(78, 53659, 53659, '1557383344', 59000, 'PLN', '300100386', 94, 'p24-C10-A03-A86', '65acfebcc75562251e87523fd046b75f', '2019-09-17 06:28:40'),
(79, 53659, 53659, '1557398516', 29000, 'PLN', '300100721', 94, 'p24-D10-A07-A21', '630621971950649079646571baab4258', '2019-09-17 06:28:40'),
(80, 53659, 53659, '1557407906', 59000, 'PLN', '300100947', 20, 'p24-J10-A09-A47', 'b61c51ed863d5cf5804b3c9111eabf0e', '2019-09-17 06:28:40'),
(81, 53659, 53659, '1557831974', 29000, 'PLN', '300103891', 94, 'p24-F10-A38-A91', 'f55b65e6c9703f671253c795e48d1b79', '2019-09-17 06:28:40'),
(82, 53659, 53659, '1557831974', 29000, 'PLN', '300103891', 94, 'p24-F10-A38-A91', 'f55b65e6c9703f671253c795e48d1b79', '2019-09-17 06:28:40'),
(83, 53659, 53659, '1557831974', 29000, 'PLN', '300103891', 94, 'p24-F10-A38-A91', 'f55b65e6c9703f671253c795e48d1b79', '2019-09-17 06:28:40'),
(84, 53659, 53659, '1557832443', 30900, 'PLN', '300103899', 94, 'p24-K10-A38-A99', '67a3075fd0ab2e721939aa128b8ca280', '2019-09-17 06:28:40'),
(85, 53659, 53659, '1557835681', 50900, 'PLN', '300103950', 119, 'p24-E10-A39-A50', '39419401e068f1b04b223198bfb29d9c', '2019-09-17 06:28:40'),
(86, 53659, 53659, '1557837576', 29000, 'PLN', '300103985', 85, 'p24-J10-A39-A85', '46e0d0dc238d61aaa92c432dc8e79c53', '2019-09-17 06:28:40'),
(87, 53659, 53659, '1557840356', 79000, 'PLN', '300104028', 85, 'p24-F10-A40-A28', '9c0f6fe5ccfeb082490aaf9402db2729', '2019-09-17 06:28:40'),
(88, 53659, 53659, '1557871231', 60900, 'PLN', '300104235', 85, 'p24-K10-A42-A35', '8b997c864d7a302c5789990e746522aa', '2019-09-17 06:28:40'),
(89, 53659, 53659, '1557901514', 59000, 'PLN', '300104368', 85, 'p24-G10-A43-A68', 'aab9bc49ad010fff0cd93c0c28b9c2a0', '2019-09-17 06:28:40'),
(90, 53659, 53659, '1557901514', 59000, 'PLN', '300104368', 85, 'p24-G10-A43-A68', 'aab9bc49ad010fff0cd93c0c28b9c2a0', '2019-09-17 06:28:40'),
(91, 53659, 53659, '1557901621', 60900, 'PLN', '300104370', 85, 'p24-K10-A43-A70', 'd413a017e4def5ae68600faa70d61ab4', '2019-09-17 06:28:40'),
(92, 53659, 53659, '1557902809', 60900, 'PLN', '300104383', 85, 'p24-E10-A43-A83', 'a85f43f8650839ae0c1c503d5e560c24', '2019-09-17 06:28:40'),
(93, 53659, 53659, '1557903321', 60900, 'PLN', '300104390', 85, 'p24-H10-A43-A90', 'fbc8dd801f4982644c49e47ed6c0e682', '2019-09-17 06:28:40'),
(94, 53659, 53659, '1557903570', 60900, 'PLN', '300104392', 85, 'p24-B10-A43-A92', '83051a039f4a755fdf4054d0edc17ec5', '2019-09-17 06:28:40'),
(95, 53659, 53659, '1557903893', 60900, 'PLN', '300104396', 85, 'p24-A10-A43-A96', '132394812cb77300d38acd2af3a9d6d7', '2019-09-17 06:28:40'),
(96, 53659, 53659, '1557904049', 60900, 'PLN', '300104397', 85, 'p24-E10-A43-A97', '53ecf1fb1a2d657f8f1ce21ebb366da5', '2019-09-17 06:28:40'),
(97, 53659, 53659, '1557905481', 99000, 'PLN', '300104410', 88, 'p24-E10-A44-A10', '5b80437c08fec444175038d88c3fd9c8', '2019-09-17 06:28:40'),
(98, 53659, 53659, '1557906077', 40900, 'PLN', '300104421', 85, 'p24-H10-A44-A21', 'f8a2a01171222764f23e94e92ea9e408', '2019-09-17 06:28:40'),
(99, 53659, 53659, '1557908536', 59000, 'PLN', '300104479', 85, 'p24-E10-A44-A79', 'e6cf16a7ec0bc185f609718a453ad901', '2019-09-17 06:28:40'),
(100, 53659, 53659, '1557909088', 59000, 'PLN', '300104499', 85, 'p24-E10-A44-A99', 'd4a56aede9d10f5333d4e9a533fa555b', '2019-09-17 06:28:40'),
(101, 53659, 53659, '1557909815', 60900, 'PLN', '300104518', 94, 'p24-K10-A45-A18', '3737a18bf7fdcfd265bff1b3432481ac', '2019-09-17 06:28:40'),
(102, 53659, 53659, '1557910556', 30900, 'PLN', '300104534', 31, 'p24-C10-A45-A34', '509a1d0f3933f534e6a2d68487bcf619', '2019-09-17 06:28:40'),
(103, 53659, 53659, '1557997044', 29000, 'PLN', '300105330', 94, 'p24-A10-A53-A30', 'd563a37b8dc7ddbc3e5cb77359cd983d', '2019-09-17 06:28:40'),
(104, 53659, 53659, '1557999946', 29000, 'PLN', '300105369', 94, 'p24-D10-A53-A69', '9aa7f6bff3f22e60a032c7f38c4c9e23', '2019-09-17 06:28:40'),
(105, 53659, 53659, '1558090107', 30900, 'PLN', '300106267', 94, 'p24-K10-A62-A67', '64b3272e9d83e34b49bbfb8f98355701', '2019-09-17 06:28:40'),
(106, 53659, 53659, '1558099604', 40900, 'PLN', '300106442', 25, 'p24-C10-A64-A42', 'af541b9f5526367e634884fcaa2957de', '2019-09-17 06:28:40'),
(107, 53659, 53659, '1558425610', 29000, 'PLN', '300108005', 25, 'p24-E10-A80-A05', 'b0ce4b10d39e52cc21edd493763663fa', '2019-09-17 06:28:40'),
(108, 53659, 53659, '1558427166', 79000, 'PLN', '300108028', 20, 'p24-D10-A80-A28', '33caa969c1432d1cb728b672f9916478', '2019-09-17 06:28:40'),
(109, 53659, 53659, '1558429800', 59000, 'PLN', '300108072', 26, 'p24-J10-A80-A72', '2ea0015c050dfc57261b2bc37a251159', '2019-09-17 06:28:40'),
(110, 53659, 53659, '1558429812', 99000, 'PLN', '300108073', 135, 'p24-A10-A80-A73', 'b6a3017a4c7746404e09ab2a79875e43', '2019-09-17 06:28:40'),
(111, 53659, 53659, '1558431168', 59000, 'PLN', '300108121', 26, 'p24-E10-A81-A21', '8c02e506f7a0b2cfc6f9d5be115ce2f3', '2019-09-17 06:28:40'),
(112, 53659, 53659, '1558431590', 39000, 'PLN', '300108138', 135, 'p24-D10-A81-A38', '0103a00abdb1666c0e6a671608b228e0', '2019-09-17 06:28:40'),
(113, 62398, 62398, '1559552877', 29000, 'PLN', '365027379', 143, 'p24-C02-G73-F79', 'edc46edf009c593d49ed03632c4c202c', '2019-09-17 06:28:40'),
(114, 62398, 62398, '1559552877', 29000, 'PLN', '365027379', 143, 'p24-C02-G73-F79', 'edc46edf009c593d49ed03632c4c202c', '2019-09-17 06:28:40'),
(115, 62398, 62398, '1559552877', 29000, 'PLN', '365027379', 143, 'p24-C02-G73-F79', 'edc46edf009c593d49ed03632c4c202c', '2019-09-17 06:28:40'),
(116, 89447, 89447, '1562054950', 29000, 'PLN', '377221248', 65, 'p24-E22-H12-H48', '8e789afb69a33c68321958201163b064', '2019-09-17 06:28:40'),
(117, 89447, 89447, '1562138608', 29000, 'PLN', '377694129', 65, 'p24-A69-H41-H29', '197264bd2cd66b0ed62cec43de60c441', '2019-09-17 06:28:40'),
(118, 89447, 89447, '1564129171', 29000, 'PLN', '387848170', 25, 'p24-G84-J81-H70', '940f5472bbc37c44451ce418c18cc575', '2019-09-17 06:28:40'),
(119, 89447, 89447, '1564148897', 29000, 'PLN', '387987462', 25, 'p24-G98-J74-H62', '8b36a1da4df8447cbd7f9e58a538fe5c', '2019-09-17 06:28:40'),
(120, 89447, 89447, '1564747806', 29000, 'PLN', '390885093', 25, 'p24-F88-K50-A93', '359ae7dde1e388de0ee289b6e48d4792', '2019-09-17 06:28:40'),
(121, 89447, 89447, '1564747806', 29000, 'PLN', '390885093', 25, 'p24-F88-K50-A93', '359ae7dde1e388de0ee289b6e48d4792', '2019-09-17 06:28:40'),
(122, 89447, 89447, '1564747806', 29000, 'PLN', '390885093', 25, 'p24-F88-K50-A93', '359ae7dde1e388de0ee289b6e48d4792', '2019-09-17 06:28:40'),
(123, 89447, 89447, '1564747806', 29000, 'PLN', '390885093', 25, 'p24-F88-K50-A93', '359ae7dde1e388de0ee289b6e48d4792', '2019-09-17 06:28:40'),
(124, 89447, 89447, '1564747806', 29000, 'PLN', '390885093', 25, 'p24-F88-K50-A93', '359ae7dde1e388de0ee289b6e48d4792', '2019-09-17 06:28:40'),
(125, 89447, 89447, '1564747806', 29000, 'PLN', '390885093', 25, 'p24-F88-K50-A93', '359ae7dde1e388de0ee289b6e48d4792', '2019-09-17 06:28:40'),
(126, 89447, 89447, '1564747806', 29000, 'PLN', '390885093', 25, 'p24-F88-K50-A93', '359ae7dde1e388de0ee289b6e48d4792', '2019-09-17 06:28:40'),
(127, 89447, 89447, '1564774218', 39000, 'PLN', '391044539', 25, 'p24-H04-K45-B39', 'e938ebc132033f86445fe746a7ee60d6', '2019-09-17 06:28:40'),
(128, 89447, 89447, '1564774218', 39000, 'PLN', '391044539', 25, 'p24-H04-K45-B39', 'e938ebc132033f86445fe746a7ee60d6', '2019-09-17 06:28:40'),
(129, 89447, 89447, '1564774218', 39000, 'PLN', '391044539', 25, 'p24-H04-K45-B39', 'e938ebc132033f86445fe746a7ee60d6', '2019-09-17 06:28:40'),
(130, 89447, 89447, '1564774218', 39000, 'PLN', '391044539', 25, 'p24-H04-K45-B39', 'e938ebc132033f86445fe746a7ee60d6', '2019-09-17 06:28:40'),
(131, 89447, 89447, '1564774218', 39000, 'PLN', '391044539', 25, 'p24-H04-K45-B39', 'e938ebc132033f86445fe746a7ee60d6', '2019-09-17 06:28:40'),
(132, 89447, 89447, '1564774218', 39000, 'PLN', '391044539', 25, 'p24-H04-K45-B39', 'e938ebc132033f86445fe746a7ee60d6', '2019-09-17 06:28:40'),
(133, 89447, 89447, '1564774218', 39000, 'PLN', '391044539', 25, 'p24-H04-K45-B39', 'e938ebc132033f86445fe746a7ee60d6', '2019-09-17 06:28:40'),
(134, 89447, 89447, '1564747806', 29000, 'PLN', '390885093', 25, 'p24-F88-K50-A93', '359ae7dde1e388de0ee289b6e48d4792', '2019-09-17 06:28:40'),
(135, 89447, 89447, '1564774218', 39000, 'PLN', '391044539', 25, 'p24-H04-K45-B39', 'e938ebc132033f86445fe746a7ee60d6', '2019-09-17 06:28:40'),
(136, 89447, 89447, '1565353260', 39000, 'PLN', '393995229', 31, 'p24-C99-K52-D29', '76046e52a2dbd600d53761409f08b40f', '2019-09-17 06:28:40'),
(137, 89447, 89447, '1566131584', 29000, 'PLN', '397652516', 65, 'p24-K65-K25-H16', '3aa6dd122dc96e140b8ca7973f6a376d', '2019-09-17 06:28:40'),
(138, 89447, 89447, '1566199372', 29000, 'PLN', '397964742', 88, 'p24-A96-K47-H42', '0b04ba72d4ddeaa282afdb1e9b528ab2', '2019-09-17 06:28:40'),
(139, 89447, 89447, '1566457774', 79000, 'PLN', '399453065', 31, 'p24-G45-K30-K65', '2c5e486f5d40c7a0af0bdb5aa799fcd6', '2019-09-17 06:28:40'),
(140, 89447, 89447, '1568275443', 29000, 'PLN', '409138648', 65, 'p24-K13-M86-K48', '672a449ba9484a4c4405787565e48397', '2019-09-17 06:28:40'),
(141, 89447, 89447, '1568292776', 29000, 'PLN', '409283479', 65, 'p24-E28-M34-K79', '1d1142a8ba1ab7b3d9565f8a5fd03c4c', '2019-09-17 06:28:40'),
(142, 89447, 89447, '1569849399', 29000, 'PLN', '417536417', 65, 'p24-F53-N64-H17', '1e90566d6cb5abe26ea929b6e352d93b', '2019-09-30 13:18:53'),
(143, 89447, 89447, '1570039518', 29000, 'PLN', '418874083', 88, 'p24-D87-N40-J83', 'bc808dfaa33800f9a46bd6f86b53913f', '2019-10-02 18:06:32'),
(144, 89447, 89447, '1572538971', 49000, 'PLN', '433519454', 225, 'p24-H51-R94-D54', '5092de8b367240973af9c01286f8aaf9', '2019-10-31 16:23:19'),
(145, 89447, 89447, '1572538971', 49000, 'PLN', '433519454', 225, 'p24-H51-R94-D54', '5092de8b367240973af9c01286f8aaf9', '2019-10-31 16:26:20'),
(146, 89447, 89447, '1572538971', 49000, 'PLN', '433519454', 225, 'p24-H51-R94-D54', '5092de8b367240973af9c01286f8aaf9', '2019-10-31 16:31:20'),
(147, 89447, 89447, '1572538971', 49000, 'PLN', '433519454', 225, 'p24-H51-R94-D54', '5092de8b367240973af9c01286f8aaf9', '2019-10-31 16:46:20'),
(148, 89447, 89447, '1572538971', 49000, 'PLN', '433519454', 225, 'p24-H51-R94-D54', '5092de8b367240973af9c01286f8aaf9', '2019-10-31 17:16:20'),
(149, 89447, 89447, '1572538971', 49000, 'PLN', '433519454', 225, 'p24-H51-R94-D54', '5092de8b367240973af9c01286f8aaf9', '2019-10-31 18:16:21'),
(150, 89447, 89447, '1572538971', 49000, 'PLN', '433519454', 225, 'p24-H51-R94-D54', '5092de8b367240973af9c01286f8aaf9', '2019-10-31 20:46:21'),
(151, 89447, 89447, '1572538971', 49000, 'PLN', '433519454', 225, 'p24-H51-R94-D54', '5092de8b367240973af9c01286f8aaf9', '2019-11-01 04:16:22');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `gw24_przelewy24_response_status_siwz`
--

CREATE TABLE `gw24_przelewy24_response_status_siwz` (
  `id` int(11) NOT NULL,
  `p24_merchant_id` int(11) NOT NULL,
  `p24_pos_id` int(11) NOT NULL,
  `p24_session_id` varchar(100) NOT NULL,
  `p24_amount` int(11) NOT NULL,
  `p24_currency` varchar(3) NOT NULL,
  `p24_order_id` varchar(100) NOT NULL,
  `p24_method` int(11) NOT NULL,
  `p24_statement` varchar(250) NOT NULL,
  `p24_sign` varchar(250) NOT NULL,
  `payment_date` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `gw24_przelewy24_response_status_siwz`
--

INSERT INTO `gw24_przelewy24_response_status_siwz` (`id`, `p24_merchant_id`, `p24_pos_id`, `p24_session_id`, `p24_amount`, `p24_currency`, `p24_order_id`, `p24_method`, `p24_statement`, `p24_sign`, `payment_date`) VALUES
(1, 53659, 53659, '1554280973', 63900, 'PLN', '300073668', 153, 'p24-B07-A36-A68', 'dedd3aead1e79656c52ede7be04107e2', '2019-09-17 06:29:05'),
(2, 53659, 53659, '1555070048', 65800, 'PLN', '300082194', 153, 'p24-C08-A21-A94', 'd69e31e05a48438a9d1a680286f823c4', '2019-09-17 06:29:05'),
(3, 53659, 53659, '1555592482', 43900, 'PLN', '300087023', 153, 'p24-B08-A70-A23', '5e51fa1c531d5c1f36ae2ac81875733f', '2019-09-17 06:29:05'),
(4, 53659, 53659, '1555627513', 63900, 'PLN', '300087259', 94, 'p24-E08-A72-A59', 'a65680daca58afe2cb0a433a61d67492', '2019-09-17 06:29:05'),
(5, 53659, 53659, '1555629338', 33900, 'PLN', '300087275', 94, 'p24-B08-A72-A75', '65a3829562a4193ec49d49796ce22c0b', '2019-09-17 06:29:05'),
(6, 53659, 53659, '1555629899', 33900, 'PLN', '300087276', 94, 'p24-B08-A72-A76', '9d0a648388fc79c478a87dbf6f74ee0a', '2019-09-17 06:29:05'),
(7, 53659, 53659, '1555654047', 33900, 'PLN', '300087332', 85, 'p24-D08-A73-A32', '818551d4356d92618ec99a6e2becc39c', '2019-09-17 06:29:05'),
(8, 53659, 53659, '1555661501', 63900, 'PLN', '300087438', 85, 'p24-J08-A74-A38', 'aefa19a485988ddcf8f5b96beab40ae0', '2019-09-17 06:29:05'),
(9, 53659, 53659, '1555661501', 63900, 'PLN', '300087438', 85, 'p24-J08-A74-A38', 'aefa19a485988ddcf8f5b96beab40ae0', '2019-09-17 06:29:05'),
(10, 53659, 53659, '1555661501', 63900, 'PLN', '300087438', 85, 'p24-J08-A74-A38', 'aefa19a485988ddcf8f5b96beab40ae0', '2019-09-17 06:29:05'),
(11, 53659, 53659, '1555661501', 63900, 'PLN', '300087438', 85, 'p24-J08-A74-A38', 'aefa19a485988ddcf8f5b96beab40ae0', '2019-09-17 06:29:05'),
(12, 53659, 53659, '1555670347', 53900, 'PLN', '300087656', 25, 'p24-K08-A76-A56', 'f13ca5530bb6a6b27acc2eb5fce1e865', '2019-09-17 06:29:05'),
(13, 53659, 53659, '1556027829', 83900, 'PLN', '300089806', 85, 'p24-F08-A98-A06', 'd1fd9ee1b0669ca2d8fbc7516d6b36a0', '2019-09-17 06:29:05'),
(14, 53659, 53659, '1556027829', 83900, 'PLN', '300089806', 85, 'p24-F08-A98-A06', 'd1fd9ee1b0669ca2d8fbc7516d6b36a0', '2019-09-17 06:29:05'),
(15, 53659, 53659, '1557828924', 43900, 'PLN', '300103831', 94, 'p24-D10-A38-A31', '4a27c98459729d4703c5f26b3b16704c', '2019-09-17 06:29:05'),
(16, 53659, 53659, '1557839891', 83900, 'PLN', '300104018', 154, 'p24-C10-A40-A18', '6ceb53768e0e374bb3daec8a52c9d3f2', '2019-09-17 06:29:05'),
(17, 53659, 53659, '1557840160', 43900, 'PLN', '300104020', 26, 'p24-K10-A40-A20', '8aabcbdb85454014fa5dce1cf5e27d37', '2019-09-17 06:29:05'),
(18, 53659, 53659, '1557901775', 63900, 'PLN', '300104372', 85, 'p24-H10-A43-A72', 'c337231a2731050d27ef972cecbf85b0', '2019-09-17 06:29:05'),
(19, 53659, 53659, '1557902108', 63900, 'PLN', '300104375', 85, 'p24-G10-A43-A75', '6c2d82f915eeb21c0cb5ae0ce0450e31', '2019-09-17 06:29:05'),
(20, 53659, 53659, '1557902339', 63900, 'PLN', '300104376', 85, 'p24-A10-A43-A76', '0c8fc15dff457c2072553ff6d63a5006', '2019-09-17 06:29:05'),
(21, 53659, 53659, '1557902444', 63900, 'PLN', '300104377', 85, 'p24-E10-A43-A77', '3134b1cc02353dbcaee2e96b5596ab82', '2019-09-17 06:29:05'),
(22, 53659, 53659, '1557909242', 63900, 'PLN', '300104504', 94, 'p24-D10-A45-A04', 'ffec5c4e95cbe5ae78242a7eee194fc2', '2019-09-17 06:29:05'),
(23, 53659, 53659, '1557909703', 83900, 'PLN', '300104517', 20, 'p24-J10-A45-A17', 'd3f35bd7cfcab63af1dd52a854eccf39', '2019-09-17 06:29:05'),
(24, 53659, 53659, '1558010172', 33900, 'PLN', '300105633', 94, 'p24-K10-A56-A33', '1ed4d607d056287c6c51377cab93c237', '2019-09-17 06:29:05'),
(25, 53659, 53659, '1558079619', 33900, 'PLN', '300106098', 25, 'p24-H10-A60-A98', 'f3d402b3cb4029b7275d20eb7136c367', '2019-09-17 06:29:05'),
(26, 53659, 53659, '1558092163', 33900, 'PLN', '300106299', 94, 'p24-D10-A62-A99', '43e0db07001e436fb9107d9b0354a5dc', '2019-09-17 06:29:05'),
(27, 53659, 53659, '1558092163', 33900, 'PLN', '300106299', 94, 'p24-D10-A62-A99', '43e0db07001e436fb9107d9b0354a5dc', '2019-09-17 06:29:05'),
(28, 53659, 53659, '1558099111', 83900, 'PLN', '300106435', 110, 'p24-A10-A64-A35', '257ff4ef0860da47e8ccbebdcf4ef0e7', '2019-09-17 06:29:05'),
(29, 62398, 62398, '1558695975', 83900, 'PLN', '361302036', 112, 'p24-H30-G20-B36', '2768f682a76cf7f4d840b45e4bc2a0d2', '2019-09-17 06:29:05'),
(30, 62398, 62398, '1558695975', 83900, 'PLN', '361302036', 112, 'p24-H30-G20-B36', '2768f682a76cf7f4d840b45e4bc2a0d2', '2019-09-17 06:29:05'),
(31, 62398, 62398, '1558695975', 83900, 'PLN', '361302036', 112, 'p24-H30-G20-B36', '2768f682a76cf7f4d840b45e4bc2a0d2', '2019-09-17 06:29:05'),
(32, 62398, 62398, '1558695975', 83900, 'PLN', '361302036', 112, 'p24-H30-G20-B36', '2768f682a76cf7f4d840b45e4bc2a0d2', '2019-09-17 06:29:05'),
(33, 62398, 62398, '1558695975', 83900, 'PLN', '361302036', 112, 'p24-H30-G20-B36', '2768f682a76cf7f4d840b45e4bc2a0d2', '2019-09-17 06:29:05'),
(34, 62398, 62398, '1558695975', 83900, 'PLN', '361302036', 112, 'p24-H30-G20-B36 ', '2768f682a76cf7f4d840b45e4bc2a0d2', '2019-09-17 06:29:05'),
(35, 89447, 89447, '1558949565', 53900, 'PLN', '362244594', 25, 'p24-C24-G45-C94', 'b4503ad1a4ad05fbe13599019c544e7c', '2019-09-17 06:29:05'),
(36, 89447, 89447, '1562656006', 63900, 'PLN', '380263898', 225, 'p24-G26-J38-A98', 'c5cfc0960b990be2d68b1c1c4bc3f7ef', '2019-09-17 06:29:05'),
(37, 89447, 89447, '1564112292', 33900, 'PLN', '387778646', 85, 'p24-C77-J86-H46', 'f6d6b14fe3887f374257bf55801ad621', '2019-09-17 06:29:05'),
(38, 89447, 89447, '1565692471', 83900, 'PLN', '395719390', 88, 'p24-D71-K93-F90', '3062a371ab1e00643d4ddafa16fea61b', '2019-09-17 06:29:05'),
(39, 89447, 89447, '1566122351', 33900, 'PLN', '397585972', 85, 'p24-A58-K59-H72', '962232c4512658441f9e66ca912fd000', '2019-09-17 06:29:05'),
(40, 89447, 89447, '1567582247', 83900, 'PLN', '405212036', 25, 'p24-K21-M20-F36', 'f61cfb3fad652f30cf237bafba15f936', '2019-09-17 06:29:05'),
(41, 89447, 89447, '1568473333', 33900, 'PLN', '410189433', 65, 'p24-H18-N94-A33', 'a8e099c45aced9959929c7d7c008bdce', '2019-09-17 06:29:05'),
(42, 89447, 89447, '1569320927', 33900, 'PLN', '414703990', 25, 'p24-K70-N39-E90', '0c6dfbc58ae4027eae107122848d0f8c', '2019-09-24 10:34:16'),
(43, 89447, 89447, '1569328994', 33900, 'PLN', '414769260', 25, 'p24-B76-N92-E60', 'd114cd196c825fa1df7af1d70c5a9135', '2019-09-24 12:44:44'),
(44, 89447, 89447, '1569329204', 33900, 'PLN', '414770831', 25, 'p24-C77-N08-E31', '7423c3fefc86099c4d1ac05b9a238d2b', '2019-09-24 12:48:11'),
(45, 89447, 89447, '1570375608', 33900, 'PLN', '420660472', 225, 'p24-D66-Q04-A72', '7a00fabb81b36a0676aa1aff3776b019', '2019-10-06 15:27:52'),
(46, 89447, 89447, '1571665958', 53900, 'PLN', '428405971', 25, 'p24-G40-Q59-J71', 'a8a4007cbc096f5314e335587f19be9e', '2019-10-21 13:53:12'),
(47, 89447, 89447, '1572190946', 33900, 'PLN', '431312709', 25, 'p24-F31-R27-B09', 'c42fb24e8c3a53e11b1ab279f79a531c', '2019-10-27 15:43:55'),
(48, 89447, 89447, '1572192179', 33900, 'PLN', '431323769', 25, 'p24-A32-R37-B69', '30e4aa826853593bca7027aed77760a6', '2019-10-27 16:07:34'),
(49, 89447, 89447, '1573035012', 83900, 'PLN', '436370639', 31, 'p24-E37-R06-G39', 'e2d2bbd5e68da95ee9ca9276f6055be0', '2019-11-06 10:11:56'),
(50, 89447, 89447, '1573038710', 83900, 'PLN', '436406025', 31, 'p24-E40-R60-G25', 'da826593eb61df77008163dd6f7b1058', '2019-11-06 11:13:01'),
(51, 89447, 89447, '1574324491', 83900, 'PLN', '445328973', 225, 'p24-C32-T89-F73', 'fc07fb81d9f99a375dab462748149a59', '2019-11-21 08:23:18'),
(52, 89447, 89447, '1574768402', 53900, 'PLN', '448213582', 223, 'p24-K21-T35-J82', '09e60c4ec2b35ab5f4e0f69e0bd2b9d2', '2019-11-26 11:49:08'),
(53, 89447, 89447, '1574768402', 53900, 'PLN', '448213582', 223, 'p24-K21-T35-J82', '09e60c4ec2b35ab5f4e0f69e0bd2b9d2', '2019-11-26 11:54:08'),
(54, 89447, 89447, '1575920267', 83900, 'PLN', '458072502', 112, 'p24-H07-U25-J02', 'b9b9821448d253bca1488f3aa94ef459', '2019-12-09 19:39:03'),
(55, 89447, 89447, '1575963912', 33900, 'PLN', '458362751', 222, 'p24-C36-U27-J51', '6b0eafbdcf079e25e2f04f7beb41fcb5', '2019-12-10 07:52:16'),
(56, 89447, 89447, '1575963912', 33900, 'PLN', '458362751', 222, 'p24-C36-U27-J51', '6b0eafbdcf079e25e2f04f7beb41fcb5', '2019-12-10 07:55:17'),
(57, 89447, 89447, '1575963912', 33900, 'PLN', '458362751', 222, 'p24-C36-U27-J51', '6b0eafbdcf079e25e2f04f7beb41fcb5', '2019-12-10 08:00:17'),
(58, 89447, 89447, '1575963912', 33900, 'PLN', '458362751', 222, 'p24-C36-U27-J51', '6b0eafbdcf079e25e2f04f7beb41fcb5', '2019-12-10 08:15:17');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `gw24_recommendations`
--

CREATE TABLE `gw24_recommendations` (
  `id` int(11) NOT NULL,
  `text` varchar(1500) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `author` varchar(200) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `create_date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `gw24_recommendations`
--

INSERT INTO `gw24_recommendations` (`id`, `text`, `author`, `create_date`) VALUES
(1, '\"Mieliśmy tydzień na uzyskanie gwarancji wadialnej do przetargu. Z pomocą przyszła nam strona gwarancje24 – dzięki profesjonalnej obsłudze wszystko zakończyło się sukcesem. Bez zbędnych formalności dostaliśmy gwarancję prosto do biura.\"', 'EFL Polaris, Dariusz Świątek', '2019-09-17 08:29:57'),
(2, '\"Gwarancje24 – nie wiedziałem, że to takie proste! Wystarczy pięć minut i gotowe wadium mam na biurku następnego dnia! To najprostszy sposób na wzięcie udziału w przetargu.\"', 'SAEPE Marcin Węglarski', '2019-09-17 08:29:57'),
(3, '\"Gwarancje 24 to firma godna zaufania, zdobycie wadium staje się banalnie proste. To firma, która pomogła w rozwoju mojego biznesu. Dzięki nim zdobyłem nowe zamówienia! Pomogli, gdy potrzebowałem wadium oraz gwarancji należytego wykonania umowy.\"', 'HYDRO KAN BRUK', '2019-09-17 08:29:57'),
(4, '\"Szybki sposób na pozyskanie gwarancji wadialnej bez przedstawiania dokumentów i profesjonalna obsługa to zdecydowanie najmocniejsze cechy firmy Gwarancje24. Zachęcam do skorzystania z ich usług – bo warto.\"', 'ASGARD Bartosz Szerszeń', '2019-09-17 08:29:57'),
(5, '\"Pragniemy udzielić referencji firmie Gwarancje24 za fachową realizację gwarancji wadialnych. Wysoka jakość usług podczas dotychczasowej współpracy świadczy o rzetelności firmy. Rekomenduję tego partnera jako godnego zaufania.\"', 'Paweł Adamiak, Rewizor sp. z o.o.', '2019-09-17 08:29:57'),
(6, '\"Poszukiwałem opcji na realizację większych inwestycji. Wystartowałem w pretargu, z pomocą Gwarancje24 udało mi się uzyskać gwarancję wadialną bez wychodzenia z biura. Fachowa pomoc i szybka realizacja - polecam sprawdzić wszystkim firmom startującym w przetargach.\"', 'Dariusz Świątek, D-WELL sp. z o.o.', '2019-09-17 08:29:57'),
(7, '\"Korzystamy z usług Gwarancje24 już od dłuższego czasu. Nasza współpraca przebiega zawsze sprawnie, zespół zawsze służy nam pomocą. Nawet w najkrótszym terminie i w bardzo napiętych sytuacjach nasze oczekiwania zostają spełnione. Jesteśmy bardzo zadowoleni usług i z czystym sumieniem możemy polecić tę firmę każdemu!\"', 'AKS-BUD Kamil Sarosiek', '2019-09-17 08:29:57'),
(8, '\"Od dłuższego czasu współpracuję z firmą Gwarancje24 i jestem bardzo zadowolony z profesjonalnej obsługi. Możliwość uzyskania gwarancji wadialnej w tak krótkim czasie czyni portal Gwarancje24 jednym z najlepszych rozwiązań na rynku. Polecam wszystkim przedsiębiorcom.\"', 'FDB-MELBOS 2 FIRMA DROGOWO-BUDOWLANA - JAROSŁAW SIECZKOWSKI', '2019-09-29 08:29:57'),
(9, '\"Chcemy wyrazić swoje zadowolenie ze świadczonych usług przez firmę Gwarancje24. To jedyny taki portal, w którym gwarancję wadialną zamówiliśmy online bez zbędnych formalności. Z przyjemnością możemy stwierdzić, iż obowiązujące w firmie procedury i profesjonalizm pracowników oraz bieżąca obsługa zasługuje na najwyższe uznanie. Usługi świadczone są zawsze terminowo oraz z zachowaniem należytej staranności. Firma zyskała u nas bardzo dobrą opinię, polecamy ją jako godnego partnera biznesowego.\"', 'PRZEDSIĘBIORSTWO USŁUGOWO-HANDLOWE \"DRA-BUD\" SP. Z O.O.', '2019-10-30 08:29:57');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `gw24_roles`
--

CREATE TABLE `gw24_roles` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `gw24_roles`
--

INSERT INTO `gw24_roles` (`id`, `name`) VALUES
(1, 'Super admin'),
(2, 'Administrator'),
(3, 'Normal user');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `gw24_seo`
--

CREATE TABLE `gw24_seo` (
  `id` int(11) NOT NULL,
  `link` varchar(255) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_keywords` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `gw24_seo`
--

INSERT INTO `gw24_seo` (`id`, `link`, `meta_title`, `meta_keywords`, `meta_description`) VALUES
(1, 'o-nas', 'O nas', 'o nas,firma,gwarancje24', 'Poznaj gwarancje24.pl. Dowiedz się na czym polega nasza działalność i co mamy do zaoferowania. Poznaj nasze innowacyjne narzędzie.'),
(2, 'faq', 'FAQ', 'faq,wadium,gwarancja wadialna,gwarancja przetargowa,często zadawane pytania', 'Dowiedz się więcej o wadium i gwarancji wadialnej. Przygotowaliśmy odpowiedzi na najczęściej zadawane pytania.'),
(3, 'kontakt', 'Kontakt', 'kontakt,wadium,gwarancja wadialna,gwarancja przetargowa', 'Zapraszamy do kontaktu. Podpowiemy Ci jak uzyskać wadium potrzebne do przetargu. Zapraszamy do kontaktu kontakt@gwarancje24.pl oraz +48 22 39 84 797.'),
(4, 'jak-to-dziala', 'Jak to działa', 'wadium online,gwarancja wadialna online,gwarancja wadialna przez internet,gwarancja przetargowa,jak to dziala', 'Dowiedz się jak działa opracowana przez nas platforma do zakupu gwarancji wadialnej przez Internet. Sprawdź teraz.');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `gw24_service_request`
--

CREATE TABLE `gw24_service_request` (
  `id` int(11) NOT NULL,
  `customer_nip` varchar(15) NOT NULL,
  `company_name` varchar(200) NOT NULL,
  `customer_name` varchar(50) NOT NULL,
  `customer_last_name` varchar(50) NOT NULL,
  `customer_email` varchar(100) NOT NULL,
  `customer_telephone` varchar(20) NOT NULL,
  `customer_pesel` varchar(15) NOT NULL,
  `file_path` varchar(400) NOT NULL,
  `file_name` varchar(400) NOT NULL,
  `url_link` varchar(1000) DEFAULT '',
  `comments` varchar(1500) DEFAULT NULL,
  `address_street` varchar(100) NOT NULL,
  `address_number` varchar(15) NOT NULL,
  `address_local` varchar(15) NOT NULL,
  `address_postal` varchar(10) NOT NULL,
  `address_city` varchar(100) NOT NULL,
  `status` int(11) NOT NULL,
  `price` float NOT NULL,
  `security_deposit` int(11) NOT NULL,
  `days` int(11) NOT NULL,
  `bonus_days` int(11) DEFAULT 15,
  `partner_id` int(11) DEFAULT NULL,
  `create_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `delivery_type` varchar(50) NOT NULL,
  `shipment_type` varchar(50) NOT NULL,
  `payment_type` varchar(50) NOT NULL,
  `order_type` varchar(50) NOT NULL,
  `order_number` varchar(50) NOT NULL,
  `kur_ulica` varchar(100) NOT NULL,
  `kur_adres_numer` varchar(100) NOT NULL,
  `kur_adres_kod_pocztowy` varchar(100) NOT NULL,
  `kur_adres_lokalu` varchar(100) NOT NULL,
  `kur_adres_miejscowosc` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `gw24_service_request`
--

INSERT INTO `gw24_service_request` (`id`, `customer_nip`, `company_name`, `customer_name`, `customer_last_name`, `customer_email`, `customer_telephone`, `customer_pesel`, `file_path`, `file_name`, `url_link`, `comments`, `address_street`, `address_number`, `address_local`, `address_postal`, `address_city`, `status`, `price`, `security_deposit`, `days`, `bonus_days`, `partner_id`, `create_date`, `delivery_type`, `shipment_type`, `payment_type`, `order_type`, `order_number`, `kur_ulica`, `kur_adres_numer`, `kur_adres_kod_pocztowy`, `kur_adres_lokalu`, `kur_adres_miejscowosc`) VALUES
(29, '9731014524', 'USABILITY LAB SPÓŁKA Z OGRANICZONĄ ODPOWIEDZIALNOŚCIĄ', 'Aneta', 'Płocharczyk-Rajkowska', 'aplocharczyk@pir.edu.pl', '509771876', '74050604040', '', '', 'https://ezamowienia.ms.gov.pl/czs/public/postepowanie?postepowanie=1814585', NULL, 'ul. Kazimierza Wielkiego', '7', '5', '65-047', 'Zielona Góra', 4, 839, 50000, 60, 15, NULL, '2019-05-24 11:06:14', 'odbiór osobisty', '1', '', '1', '998060106001', '', '', '', '', ''),
(30, '6692525175', 'ERGOGIS SPÓŁKA Z OGRANICZONĄ ODPOWIEDZIALNOŚCIĄ', 'Dariusz, Antoni', 'Osuch', 'd.osuch@ergogis.eu', '607098342', '63061303394', 'Klienci/6692525175/Inne', 'SIWZ_i_zalaczniki_nr_247_91012.doc', '', NULL, 'Aleja Monte Cassino', '6', '', '75-412', 'Koszalin', 4, 539, 15000, 60, 15, NULL, '2019-05-27 09:32:45', 'odbiór osobisty', '1', '', '1', '998060106002', '', '', '', '', ''),
(31, '5842726881', 'EUROTEC POLAND SPÓŁKA Z OGRANICZONĄ ODPOWIEDZIALNOŚCIĄ', 'Krzysztof ', 'Patyk ', 'Biuro.eurotecpoland@gmail.com', '575986777', '76112205594', 'Klienci/5842726881/Inne', 'siwz-gogoczyn_zalacznik-1.pdf', '', NULL, '', '175', '', '87-140', 'Grzywna', 4, 839, 22500, 60, 15, NULL, '2019-06-18 08:03:00', 'kurier', '2', '', '1', '998060106004', '', '', '', '', ''),
(32, '5842726881', 'EUROTEC POLAND SPÓŁKA Z OGRANICZONĄ ODPOWIEDZIALNOŚCIĄ', 'Krzysztof ', 'Patyk ', 'Biuro.eurotecpoland@gmail.com', '575986777', '76112205594', 'Klienci/5842726881/Inne', '21-19_SIWZ.pdf', '', NULL, '', '175', '', '87-140', 'Grzywna', 4, 339, 10000, 30, 15, NULL, '2019-06-18 11:22:16', 'kurier', '2', '', '1', '998060106005', '', '', '', '', ''),
(33, '5842726881', 'EUROTEC POLAND SPÓŁKA Z OGRANICZONĄ ODPOWIEDZIALNOŚCIĄ', 'Krzysztof ', 'Patyk ', 'Biuro.eurotecpoland@gmail.com', '575986777', '76112205594', 'Klienci/5842726881/Inne', '22-19_SIWZ Biesowice.pdf', '', NULL, '', '175', '', '87-140', 'Grzywna', 4, 339, 5500, 30, 15, NULL, '2019-06-18 11:34:42', 'kurier', '2', '', '1', '998060106006', '', '', '', '', ''),
(34, '5842726881', 'EUROTEC POLAND SPÓŁKA Z OGRANICZONĄ ODPOWIEDZIALNOŚCIĄ', 'Krzysztof ', 'Patyk ', 'Biuro.eurotecpoland@gmail.com', '575986777', '76112205594', 'Klienci/5842726881/Inne', '23-19_SIWZ Morzeszczyn.pdf', '', NULL, '', '175', '', '87-140', 'Grzywna', 4, 339, 3700, 30, 15, NULL, '2019-06-18 11:39:42', 'kurier', '2', '', '1', '998060106007', '', '', '', '', ''),
(37, '6392006353', 'A&M Przedsiębiorstwo Robót Drogowych Mateusz Kűhn', 'Mateusz', 'Kuhn', 'amprdkuhn@gmail.com', '603885412', '94111904535', 'Klienci/6392006353/Inne', 'siwz.doc', '', NULL, 'ul. Tworkowska', '48', '', '47-450', 'Krzyżanowice', 4, 639, 40000, 30, 15, NULL, '2019-07-09 07:06:45', 'kurier', '2', '', '1', '998060106010', '', '', '', '', ''),
(38, '6372101634', 'KAMILA NOWAKOWSKA KAMBUD', 'Kamil', 'Nowakowski', 'biuro@fhu-kambud.pl', '514551805', '87090311418', 'Klienci/6372101634/Inne', 'SIWZ.pdf', '', NULL, 'os. XX-lecia', '7', '24', '32-340', 'Wolbrom', 4, 339, 5000, 30, 15, NULL, '2019-07-26 03:38:11', 'kurier', '2', '', '1', '998060106014', '', '', '', '', ''),
(39, '5842726881', 'EUROTEC POLAND SPÓŁKA Z OGRANICZONĄ ODPOWIEDZIALNOŚCIĄ', 'Krzysztof ', 'Patyk ', 'Biuro.eurotecpoland@gmail.com', '575986777', '76112205594', 'Klienci/5842726881/Inne', '26-19_SIWZ.pdf', '', NULL, '', '175', '', '87-140', 'Grzywna', 4, 439, 11000, 30, 15, NULL, '2019-07-30 09:26:17', 'kurier', '2', '1', '1', '998060106018', '', '', '', '', ''),
(40, '9581677618', 'ENDO-TECH BUCZMA WIŚNIEWSKI SPÓŁKA JAWNA', 'Robert', 'Wiśniewski', 'robert.wisniewski@endo-tech.pl', '721566885', '88050307452', '', '', 'https://www.sop.gov.pl/bip/zamowienia-publiczne/wszczete/830,Dostawa-wykrywaczy-materialow-wybuchowych-31-kpl.html', NULL, 'ul. Hutnicza', '59', '', '81-061', 'Gdynia', 4, 839, 27000, 60, 15, NULL, '2019-08-13 10:34:31', '', '3', '2', '1', '998060106021', 'ul. Hutnicza', '59', '81-061', '', 'Gdynia'),
(41, '6372101634', 'KAMILA NOWAKOWSKA KAMBUD', 'Kamil', 'Nowakowski', 'biuro@fhu-kambud.pl', '514551805', '89080511965', 'Klienci/6372101634/Inne', 'SIWZ082019.pdf', '', NULL, 'os. XX-lecia', '7', '24', '32-340', 'Wolbrom', 4, 339, 5000, 30, 15, NULL, '2019-08-18 09:59:10', '', '2', '2', '1', '998060106023', 'Chmielna', '38B', '32-329', '', 'Bolesław'),
(42, '5783111527', 'CZATA OCHRONA OSÓB I MIENIA SPÓŁKA Z OGRANICZONĄ ODPOWIEDZIALNOŚCIĄ', 'Janusz', 'Staszewski', 'czata@czata.pl', '603196045', '59040110590', 'Klienci/5783111527/Inne', 'ogloszenie_ochrona.pdf', '', NULL, 'Lotnicza 19/11 biuro ul. Adama Mickiewicza 10/1', '19', '11', '82-300', 'Elbląg', 4, 439, 20000, 30, 15, NULL, '2019-08-28 07:42:08', '', '2', '1', '1', '998060106026', 'Lotnicza 19/11 biuro ul. Adama Mickiewicza 10/1', '19', '82-300', '11', 'Elbląg'),
(43, '7422256056', 'IWBIG SPÓŁKA Z OGRANICZONĄ ODPOWIEDZIALNOŚCIĄ', 'Jacek', 'Jakubowski', 'iwbig@o2.pl', '502572636', '82071905918', 'Klienci/7422256056/Inne', 'SIWZ.pdf', '', NULL, 'ul. Kaszubska', '6A', '1', '11-400', 'Kętrzyn', 4, 839, 25000, 60, 15, NULL, '2019-09-04 07:30:47', '', '3', '2', '1', '998060106027', 'Trzy Lipy 5/1', '5', '11-400', '1', 'Kętrzyn'),
(44, '5842726881', 'EUROTEC POLAND SPÓŁKA Z OGRANICZONĄ ODPOWIEDZIALNOŚCIĄ', 'Krzysztof ', 'Patyk ', 'biuro.eurotecpoland@gmail.com', '575986777', '76112205594', 'Klienci/5842726881/Inne', 'siwz-pomierzyn-dz-nr-177-16-177-17-177-18_zalacznik-2.pdf', '', NULL, '', '175', '', '87-140', 'Grzywna', 4, 439, 14000, 30, 15, NULL, '2019-09-04 11:43:17', '', '2', '1', '1', '998060106029', 'Polna', '7b', '87-100', '', 'Toruń '),
(45, '5842726881', 'EUROTEC POLAND SPÓŁKA Z OGRANICZONĄ ODPOWIEDZIALNOŚCIĄ', 'Krzysztof ', 'Patyk ', 'biuro.eurotecpoland@gmail.com', '575986777', '76112205594', 'Klienci/5842726881/Inne', '28-19-siwz_zalacznik-2.pdf', '', NULL, '', '175', '', '87-140', 'Grzywna', 4, 439, 13000, 30, 15, NULL, '2019-09-04 11:47:20', '', '3', '1', '1', '998060106028', 'Polna', '7b', '87-100', '', 'Toruń '),
(46, '6372101634', 'KAMILA NOWAKOWSKA KAMBUD', 'Kamil', 'Nowakowski', 'biuro@fhu-kambud.pl', '514551805', '89080511965', 'Klienci/6372101634/Inne', 'SIWZ_.doc', '', NULL, 'os. XX-lecia', '7', '24', '32-340', 'Wolbrom', 4, 339, 10000, 30, 15, NULL, '2019-09-14 15:02:13', '', '2', '2', '1', '998060106032', 'ul.Chmielna 38B', '38B', '32-329', '', 'Bolesław'),
(47, '5210521848', 'Sławomir Gradek \"TREST\" \"Auto-Viper\"', 'SŁAWOMIR', 'GRADEK', 'trest@trest.pl', '601216349', '58050805175', 'Klienci/5210521848/Inne', '37-19-PN_SIWZ.pdf', '', NULL, 'ul. Wołoska', '70', '40', '02-507', 'Warszawa', 4, 339, 10000, 30, 15, NULL, '2019-09-16 08:02:00', '', '1', '1', '1', '998060106033', 'ul. Wołoska', '70', '02-507', '40', 'Warszawa'),
(49, '9452180896', 'MARCIN KRYSTECKI MERKURY MR DEVELOPMENT POLAND TECHNIKA GRZEWCZA I SANITARNA', 'Marcin', 'Krystecki', 'merkury.krakow.pl@interia.pl', '500286898', '95030509171', 'Klienci/9452180896/Inne', 'ZBK SIWZ.doc', 'https://www.bip.krakow.pl/zalaczniki/dokumenty/n/251519/karta', NULL, 'ul. Składowa', '28', '', '30-010', 'Kraków', 4, 339, 1000, 30, 15, NULL, '2019-09-24 10:28:47', '', '2', '2', '1', '998060106035', 'ul. Szopkarzy', '6', '31-228', '1', 'Kraków'),
(52, '9452180896', 'MARCIN KRYSTECKI MERKURY MR DEVELOPMENT POLAND TECHNIKA GRZEWCZA I SANITARNA', 'Marcin', 'Krystecki', 'merkury.krakow.pl@interia.pl', '500286898', '95030509171', 'Klienci/9452180896/Inne', 'ZBK SIWZ.doc', 'https://www.bip.krakow.pl/zalaczniki/dokumenty/n/251519/karta', NULL, 'ul. Składowa', '28', '', '30-010', 'Kraków', 4, 339, 6100, 30, 15, NULL, '2019-09-24 12:43:14', '', '2', '2', '1', '998060106037', 'ul. Składowa', '28', '30-010', '', 'Kraków'),
(53, '9452180896', 'MARCIN KRYSTECKI MERKURY MR DEVELOPMENT POLAND TECHNIKA GRZEWCZA I SANITARNA', 'Marcin', 'Krystecki', 'merkury.krakow.pl@interia.pl', '500286898', '95030509171', 'Klienci/9452180896/Inne', 'ZBK SIWZ.doc', 'https://www.bip.krakow.pl/zalaczniki/dokumenty/n/251519/karta', NULL, 'ul. Składowa', '28', '', '30-010', 'Kraków', 4, 339, 1700, 30, 15, NULL, '2019-09-24 12:46:44', '', '2', '2', '1', '998060106036', 'ul. Szopkarzy', '6', '31-228', '1', 'Kraków'),
(54, '7393899690', 'K2 GROUP SPÓŁKA Z OGRANICZONĄ ODPOWIEDZIALNOŚCIĄ', 'Mateusz', 'Kiełek', 'k2olsztyn@gmail.com', '512083383', '91061602236', 'Klienci/7393899690/Inne', '24892_SIWZ.pdf', '', NULL, 'ul. Janiny Wengris', '26', '', '10-765', 'Olsztyn', 4, 439, 20000, 30, 15, NULL, '2019-09-26 08:39:56', '', '1', '1', '1', '998060106038', 'ul. Janiny Wengris', '26', '10-765', '', 'Olsztyn'),
(55, '5492413198', 'EFL POLARIS SPÓŁKA Z OGRANICZONĄ ODPOWIEDZIALNOŚCIĄ', 'Aneta', 'Gondzik-Polimeni', 'a.gondzik-polimeni@efl-polaris.com', '577888091', '68012501555', 'Klienci/5492413198/Inne', 'Siwz Gmina Trojanów uliczne bez enec ik ip 30.09.2019.docx', 'http://trojanow.biuletyn.net/fls/bip_pliki/2019_09/BIPF59334D6C0716CZ/Wyjanienia_II_i_zmiana_SIWZ.pdf', NULL, 'ul. Stefana Żeromskiego', '12 A', '', '05-250', 'Słupno', 4, 339, 10000, 30, 15, NULL, '2019-09-26 10:30:28', '', '2', '1', '1', '998060106039', 'ul. Stefana Żeromskiego', '12 A', '05-250', '', 'Słupno'),
(56, '6372101634', 'KAMILA NOWAKOWSKA KAMBUD', 'Kamil', 'Nowakowski', 'biuro@fhu-kambud.pl', '514551805', '89080511965', 'Klienci/6372101634/Inne', 'SIWZ_.doc', '', NULL, 'os. XX-lecia', '7', '24', '32-340', 'Wolbrom', 4, 339, 10000, 30, 15, NULL, '2019-10-06 15:26:47', '', '2', '2', '1', '998060106042', 'Chmielna', '38B', '32-329', '', 'Bolesław'),
(57, '9571090998', 'BALTIC SUN SPÓŁKA Z OGRANICZONĄ ODPOWIEDZIALNOŚCIĄ', 'Krzysztof', 'Unger ', 'biuro@baltic-sun.gda.pl', '727933377', '74070302933', 'Klienci/9571090998/Inne', 'SIWZ_13-09-2019_08-49-15.pdf', '', NULL, 'ul. Myśliwska', '78', '40', '80-283', 'Gdańsk', 4, 539, 20000, 60, 15, NULL, '2019-10-16 08:14:00', '', '3', '1', '1', '998060106043', 'ul. Myśliwska', '78', '80-283', '40', 'Gdańsk'),
(58, '7422256056', 'IWBIG SPÓŁKA Z OGRANICZONĄ ODPOWIEDZIALNOŚCIĄ', 'Jacek', 'Jakubowski', 'iwbig@o2.pl', '502572636', '82071905918', 'Klienci/7422256056/Inne', 'SIWZ ZP.272.12.2019 - Cyfryzacja zasobów PODGiK - PSIP Zadanie 58.pdf', '', NULL, 'Trzy Lipy 5/1', '5', '1', '11-400', 'Kętrzyn', 4, 539, 20000, 60, 15, NULL, '2019-10-21 13:52:38', '', '3', '2', '1', '998060106045', 'Trzy Lipy 5/1', '5', '11-400', '1', 'Kętrzyn'),
(59, '9452180896', 'MARCIN KRYSTECKI MERKURY MR DEVELOPMENT POLAND TECHNIKA GRZEWCZA I SANITARNA', 'Marcin', 'Krystecki', 'merkury.krakow.pl@interia.pl', '500286898', '95030509171', 'Klienci/9452180896/Inne', 'ZBK SIWZ 2.doc', 'https://www.bip.krakow.pl/zalaczniki/dokumenty/n/254794/karta', NULL, 'ul. Składowa', '28', '', '30-010', 'Kraków', 4, 339, 6200, 30, 15, NULL, '2019-10-27 15:42:26', '', '2', '2', '1', '998060106049', 'ul. Szopkarzy', '6', '31-228', '1', 'Kraków'),
(61, '9452180896', 'MARCIN KRYSTECKI MERKURY MR DEVELOPMENT POLAND TECHNIKA GRZEWCZA I SANITARNA', 'Marcin', 'Krystecki', 'merkury.krakow.pl@interia.pl', '500286898', '95030509171', 'Klienci/9452180896/Inne', 'ZBK SIWZ 2.doc', 'https://www.bip.krakow.pl/zalaczniki/dokumenty/n/254794/karta', NULL, 'ul. Składowa', '28', '', '30-010', 'Kraków', 4, 339, 1000, 30, 15, NULL, '2019-10-27 16:02:59', '', '2', '2', '1', '998060106048', 'ul. Szopkarzy', '6', '31-228', '1', 'Kraków'),
(62, '9492194054', 'BIURO OCHRONY SPECJALNEJ BOS SPÓŁKA Z OGRANICZONĄ ODPOWIEDZIALNOŚCIĄ', 'Beata', 'Pośpiech', 'bos47@op.pl', '698649831', '74111610849', 'Klienci/9492194054/Inne', 'siwz_1076562.pdf', '', NULL, 'ul. Lelewela', '8', '40', '42-202', 'Częstochowa', 4, 839, 46000, 60, 15, NULL, '2019-11-06 10:10:12', '', '3', '2', '1', '998060106051', 'ul. Lelewela', '8', '42-202', '40', 'Częstochowa'),
(63, '9492194054', 'BIURO OCHRONY SPECJALNEJ BOS SPÓŁKA Z OGRANICZONĄ ODPOWIEDZIALNOŚCIĄ', 'Beata', 'Pośpiech', 'bos47@op.pl', '698649831', '74111610849', 'Klienci/9492194054/Inne', 'siwz_1076562.pdf', '', NULL, 'ul. Lelewela', '8', '40', '42-202', 'Częstochowa', 4, 839, 38000, 60, 15, NULL, '2019-11-06 11:11:50', '', '3', '2', '1', '998060106052', 'ul. Lelewela', '8', '42-202', '40', 'Częstochowa'),
(64, '5492432965', 'COTRIP KOMPLEX SPÓŁKA Z OGRANICZONĄ ODPOWIEDZIALNOŚCIĄ', 'Justyna', 'Zagórska', 'biuro@cotrip.pl', '796441133', '72081011534', '', '', 'https://tbip.srk.com.pl/menu-przedmiotowe/przetargi/71433', NULL, 'ul. Poloczka', '2', '', '44-178', 'Przyszowice', 4, 539, 12900, 60, 15, NULL, '2019-11-06 19:56:04', '', '3', '1', '1', '998060106055', 'ul. Kałusa ', '30', '41-710', '', 'Ruda Śląska'),
(65, '5210521848', 'Sławomir Gradek \"TREST\"; \"Auto-Viper\"', 'Sławomir ', 'Gradek', 'trest@trest.pl', '601216349', '58050805175', 'Klienci/5210521848/Inne', 'document-1.pdf', '', NULL, 'ul. Wołoska', '70', '40', '02-507', 'Warszawa', 4, 339, 2000, 30, 15, NULL, '2019-11-07 10:02:12', '', '1', '1', '1', '998060106053', 'ul. Wołoska', '70', '02-507', '40', 'Warszawa'),
(66, '5641723166', 'KMD PRZEMYSŁAW MYDLAK', 'IWONA', 'WYSOCKA', 'iwona.wysocka@kmd.biz.pl', '731122117', '86040609290', 'Klienci/5641723166/Inne', '2. SIWZ.pdf', '', NULL, 'Średnia Wieś', '69', '', '22-335', 'Żółkiewka-Osada', 4, 839, 50000, 60, 15, NULL, '2019-11-08 11:19:18', '', '3', '1', '1', '998060106054', 'Średnia Wieś', '69', '22-335', '', 'Żółkiewka-Osada'),
(68, '6211052540', 'DOM-LAS DOMINIK STRYJAK', 'Dominik', 'Stryjak', 'dawidgoss@o2.pl', '724759740', '74032714275', 'Klienci/6211052540/Inne', 'px_dg_rdlp_poznan_nadl_antonin_siwz_miniportal._2019.08.11___po_korekcie_ogloszenia_31.10.19.pdf', '', NULL, 'ul. Krotoszyńska', '74', '', '63-714', 'Tomnice', 4, 839, 25000, 60, 15, NULL, '2019-11-19 13:12:11', '', '3', '1', '1', '998060106059', 'ul. Krotoszyńska', '74', '63-714', '', 'Tomnice'),
(69, '7621011713', 'ZAKŁAD USŁUG LEŚNYCH \"ZATBOR\" ZBIGNIEW CHOMEJ', 'Zbigniew', 'Chomej', 'tomaszchomej@wp.pl', '517245027', '61030305031', 'Klienci/7621011713/Inne', 'px_dg_rdlp_warszawa_nadl_pultusk_siwz_wersja_17_10 (1).doc', '', NULL, 'Strażacka', '10', '', '07-217', 'Zatory', 4, 839, 38000, 60, 15, NULL, '2019-11-21 08:21:31', '', '3', '2', '1', '998060106057', 'Strażacka', '10', '07-217', '', 'Zatory'),
(70, '4990386749', 'ZAKŁAD USŁUG LEŚNYCH MADEJ STANISŁAW', 'Stanislaw ', 'Madej', 'madej22.83@o2.pl', '795594267', '83121108194', 'Klienci/4990386749/Inne', 'px_dg_rdlp_szczecinek_nadl_manowo_zg.270.30.2019_siwz-1.pdf', '', NULL, 'Leśna ', '7', '11', '76-015', 'Manowo', 4, 539, 16000, 60, 15, NULL, '2019-11-21 09:02:17', '', '3', '1', '1', '998060106058', 'Leśna ', '7', '76-015', '11', 'Manowo'),
(71, '6211052540', 'DOM-LAS DOMINIK STRYJAK', 'Dominik', 'Stryjak', 'dawidgoss@o2.pl', '724759740', '74032714275', 'Klienci/6211052540/Inne', 'px_dg_rdlp_poznan_nadl_antonin_siwz_miniportal._2019.08.11___po_korekcie_ogloszenia_31.10.19.pdf', '', NULL, 'ul. Krotoszyńska', '74', '', '63-714', 'Tomnice', 4, 439, 5000, 60, 15, NULL, '2019-11-21 17:21:11', '', '3', '1', '1', '998060106060', 'ul. Krotoszyńska', '74', '63-714', '', 'Tomnice'),
(72, '4990386749', 'ZAKŁAD USŁUG LEŚNYCH MADEJ STANISŁAW', 'Stanisław ', 'MADEJ ', 'madej22.83@o2.pl', '*795594267', '83121108194', '', '', '', NULL, 'ul. Leśna', '7', '11', '76-015', 'Manowo', 4, 439, 6000, 60, 15, NULL, '2019-11-22 16:24:14', '', '3', '1', '1', '998060106061', 'ul. Leśna', '7', '76-015', '11', 'Manowo'),
(73, '5492432965', 'COTRIP KOMPLEX SPÓŁKA Z OGRANICZONĄ ODPOWIEDZIALNOŚCIĄ', 'Justyna', 'Zagórska', 'biuro@cotrip.pl', '796441133', '72081011534', '', '', 'https://tbip.srk.com.pl/menu-przedmiotowe/przetargi/71433', NULL, 'ul. Poloczka', '2', '', '44-178', 'Przyszowice', 4, 839, 24800, 60, 15, NULL, '2019-11-22 21:26:54', '', '3', '1', '1', '998060106067', 'ul. Poloczka', '2', '44-178', '', 'Przyszowice'),
(74, '5210521848', 'Sławomir Gradek \"TREST\"; \"Auto-Viper\"', 'Sławomir', 'Gradek', 'trest@trest.pl', '601216349', '58050805175', 'Klienci/5210521848/Inne', 'SIWZ.pdf', '', NULL, 'ul. Wołoska', '70', '40', '02-507', 'Warszawa', 4, 339, 2000, 30, 15, NULL, '2019-11-25 07:15:45', '', '1', '1', '1', '998060106062', 'ul. Wołoska', '70', '02-507', '40', 'Warszawa'),
(75, '6211052540', 'DOM-LAS DOMINIK STRYJAK', 'Dominik', 'Stryjak', 'dawidgoss@o2.pl', '724759740', '74032714275', 'Klienci/6211052540/Inne', 'px_dg_rdlp_katowice_nadl_rudy_sprostowanie_terminu_ul_2020.pdf', '', NULL, 'ul. Krotoszyńska', '74', '', '63-714', 'Tomnice', 4, 439, 6200, 60, 15, NULL, '2019-11-25 15:37:27', '', '3', '1', '1', '998060106063', 'ul. Krotoszyńska', '74', '63-714', '', 'Tomnice'),
(76, '7621011713', 'ZAKŁAD USŁUG LEŚNYCH \"ZATBOR\" ZBIGNIEW CHOMEJ', 'Zbigniew', 'Chomej', 'tomaszchomej@wp.pl', '502617600', '61030305031', 'Klienci/7621011713/Inne', 'px_dg_rdlp_bialystok_nadl_knyszyn_siwz_sa.270.2.2019.pdf', '', NULL, 'ul. Strażacka', '10', '', '07-217', 'Zatory', 4, 539, 13000, 60, 15, NULL, '2019-11-26 11:40:02', '', '3', '2', '1', '998060106066', 'ul. Strażacka', '10', '07-217', '', 'Zatory'),
(77, '6211052540', 'DOM-LAS DOMINIK STRYJAK', 'Dominik', 'Stryjak', 'dawidgoss@o2.pl', '724759740', '74032714275', 'Klienci/6211052540/Inne', 'px_dg_rdlp_katowice_nadl_rudy_sprostowanie_terminu_ul_2020.pdf', '', NULL, 'ul. Krotoszyńska', '74', '', '63-714', 'Tomnice', 4, 439, 5700, 60, 15, NULL, '2019-11-27 06:18:26', '', '3', '1', '1', '998060106068', 'ul. Krotoszyńska', '74', '63-714', '', 'Tomnice'),
(78, '6211052540', 'DOM-LAS DOMINIK STRYJAK', 'Dawid ', 'Goss ', 'dawidgoss@o2.pl', '724759740', '74032714275', 'Klienci/6211052540/Inne', 'px_dg_rdlp_katowice_nadl_rudy_sprostowanie_terminu_ul_2020.pdf', '', NULL, 'ul. Krotoszyńska', '74', '', '63-714', 'Tomnice', 4, 439, 7600, 60, 15, NULL, '2019-11-27 06:22:49', '', '3', '1', '1', '998060106069', 'ul. Krotoszyńska', '74', '63-714', '', 'Tomnice'),
(79, '5641723166', 'KMD PRZEMYSŁAW MYDLAK', 'ALICJA', 'DYRAŁA', 'sekretariat@kmd.biz.pl', '731122113', '86040609290', 'Klienci/5641723166/Inne', 'SIWZ Iława.pdf', '', NULL, 'Średnia Wieś', '69', '', '22-335', 'Żółkiewka-Osada', 4, 639, 50000, 30, 15, NULL, '2019-12-02 11:26:15', '', '2', '1', '1', '998060106070', 'Astronomów, 5', '5', '80-299', '', 'Gdańsk'),
(80, '5361870386', 'Specjaliści od Zieleni Grzegorz Zakrzewski', 'Grzegorz', 'Zakrzewski', 'specjalisciodzieleni@wp.pl', '515794748', '91041407754', 'Klienci/5361870386/Inne', 'SIWZ-2.docx', '', NULL, 'ul. Jana Kazimierza', '43', '', '05-126', 'Nieporęt', 4, 839, 45000, 60, 15, NULL, '2019-12-04 22:29:46', '', '3', '2', '1', '998060106071', 'ul. Jana Kazimierza', '43', '05-126', '', 'Nieporęt'),
(81, '7531333749', 'Usługi leśne AD-KAM Ireneusz Łaciak - lider konsorcjum', 'Ireneusz', 'Łaciak', 'ireklaciak70@gmail.com', '692423437', '70110703696', 'Klienci/7531333749/Inne', 'px_dg~rdlp_katowice~nadl_prudnik~siwz_obreb_prudnik_2020.pdf', '', NULL, 'ul. Nyska', '26', '', '48-325', 'Ścinawa Nyska', 4, 839, 30000, 60, 15, NULL, '2019-12-09 19:37:47', '', '3', '2', '1', '998060106073', 'ul. Nyska', '26', '48-325', '', 'Ścinawa Nyska'),
(82, '5140344802', 'W GROUP SPÓŁKA Z OGRANICZONĄ ODPOWIEDZIALNOŚCIĄ', 'Arkadiusz', 'Wasielewski', 'biuro@wgroup.pl', '513897808', '91062011457', 'Klienci/5140344802/Inne', '1._SIWZ_-_utrzymanie_zieleni.d.doc', 'https://bip.czarnkow.pl/content.php?cms_id=743', NULL, 'Mostki 17', '17', '', '63-507', 'Mostki', 4, 339, 10000, 30, 15, NULL, '2019-12-10 07:45:12', '', '2', '2', '1', '998060106074', 'Mostki', '17', '63-507', '', 'Mostki'),
(83, '8261969945', 'STOWARZYSZENIE CENTRUM INTEGRACYJNO ANIMACYJNE', 'Karol', 'Ryż', 'test@test.pl', '23432434', '72051061611', '', '', 'https://www.google.pl', 'uwaga do zamówienia', 'ul. Alejowa', '13', '', '08-450', 'Łaskarzew', 4, 839, 25000, 60, 15, NULL, '2019-12-11 12:36:52', '', '3', '1', '1', '998060106075', 'ul. Alejowa', '13', '08-450', '', 'Łaskarzew');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `gw24_settings`
--

CREATE TABLE `gw24_settings` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL COMMENT 'Status wysłania',
  `value` int(11) NOT NULL COMMENT 'Status wysłania'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `gw24_settings`
--

INSERT INTO `gw24_settings` (`id`, `name`, `value`) VALUES
(1, 'agreement_number', 20),
(2, '<i class=\"fas fa-check\"></i> Wysłano', 1),
(3, '<i class=\"fas fa-times\"></i> Nie wysłano', 0),
(4, 'number_of_bonus_days', 15),
(5, 'user_limit', 50000);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `gw24_shipment_type`
--

CREATE TABLE `gw24_shipment_type` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `gw24_shipment_type`
--

INSERT INTO `gw24_shipment_type` (`id`, `name`) VALUES
(1, 'Odbiór osobisty'),
(2, 'Przesyłka kurierska'),
(3, 'Wersja elektroniczna - email');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `gw24_users`
--

CREATE TABLE `gw24_users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `active_key` varchar(255) NOT NULL,
  `reset_key` varchar(255) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `gw24_users`
--

INSERT INTO `gw24_users` (`id`, `username`, `email`, `password`, `active`, `active_key`, `reset_key`, `deleted`, `role_id`) VALUES
(1, 'admin', 'hdwik@lst.pl', '442e875654e6161c0239453026a00e3e', 1, '', '', 0, 1),
(4, 'lila', 'liliana.zielinska@gwarancje24.pl', '5bbcf051e88662c4ae8767eed6885a7f', 0, '', '', 0, 1),
(5, 'zbyszek', 'zbigniew.zielinski@zzbrokers.pl', '09005112ce8daa90d639a4e6a9fe4e8f', 0, '', '', 0, 1),
(6, 'natalia', 'natalia.janik@gwarancje24.pl', 'bfa8d2ff6711193cb758d85602787ab1', 0, '', '', 0, 1),
(8, 'admin_user', 'hdwik@lst.pl', '442e875654e6161c0239453026a00e3e', 1, '', '', 0, 2);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `gw24_user_roles`
--

CREATE TABLE `gw24_user_roles` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `gw24_user_roles`
--

INSERT INTO `gw24_user_roles` (`id`, `user_id`, `role_id`) VALUES
(1, 1, 1);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `gw24_agreement`
--
ALTER TABLE `gw24_agreement`
  ADD PRIMARY KEY (`agreement_nr`);

--
-- Indeksy dla tabeli `gw24_agreement_numbers`
--
ALTER TABLE `gw24_agreement_numbers`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `gw24_alert`
--
ALTER TABLE `gw24_alert`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `gw24_auction`
--
ALTER TABLE `gw24_auction`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `gw24_blog_articles`
--
ALTER TABLE `gw24_blog_articles`
  ADD PRIMARY KEY (`id_blog`);

--
-- Indeksy dla tabeli `gw24_blog_categories`
--
ALTER TABLE `gw24_blog_categories`
  ADD PRIMARY KEY (`id_category`);

--
-- Indeksy dla tabeli `gw24_customer`
--
ALTER TABLE `gw24_customer`
  ADD PRIMARY KEY (`user_id`);

--
-- Indeksy dla tabeli `gw24_customer_orders_invoice`
--
ALTER TABLE `gw24_customer_orders_invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `gw24_mails`
--
ALTER TABLE `gw24_mails`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `gw24_nip_check_history`
--
ALTER TABLE `gw24_nip_check_history`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `gw24_orders`
--
ALTER TABLE `gw24_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `gw24_order_group`
--
ALTER TABLE `gw24_order_group`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `gw24_order_numbers_stock`
--
ALTER TABLE `gw24_order_numbers_stock`
  ADD PRIMARY KEY (`number`);

--
-- Indeksy dla tabeli `gw24_order_status`
--
ALTER TABLE `gw24_order_status`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `gw24_order_type`
--
ALTER TABLE `gw24_order_type`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `gw24_partners`
--
ALTER TABLE `gw24_partners`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `gw24_payment_type`
--
ALTER TABLE `gw24_payment_type`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `gw24_pricelist`
--
ALTER TABLE `gw24_pricelist`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `gw24_przelewy24`
--
ALTER TABLE `gw24_przelewy24`
  ADD PRIMARY KEY (`p24_session_id`);

--
-- Indeksy dla tabeli `gw24_przelewy24_response_status`
--
ALTER TABLE `gw24_przelewy24_response_status`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `gw24_przelewy24_response_status_siwz`
--
ALTER TABLE `gw24_przelewy24_response_status_siwz`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `gw24_recommendations`
--
ALTER TABLE `gw24_recommendations`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `gw24_roles`
--
ALTER TABLE `gw24_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `gw24_seo`
--
ALTER TABLE `gw24_seo`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `gw24_service_request`
--
ALTER TABLE `gw24_service_request`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `gw24_settings`
--
ALTER TABLE `gw24_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `gw24_shipment_type`
--
ALTER TABLE `gw24_shipment_type`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `gw24_users`
--
ALTER TABLE `gw24_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indeksy dla tabeli `gw24_user_roles`
--
ALTER TABLE `gw24_user_roles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT dla tabel zrzutów
--

--
-- AUTO_INCREMENT dla tabeli `gw24_agreement`
--
ALTER TABLE `gw24_agreement`
  MODIFY `agreement_nr` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=321;

--
-- AUTO_INCREMENT dla tabeli `gw24_agreement_numbers`
--
ALTER TABLE `gw24_agreement_numbers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT dla tabeli `gw24_alert`
--
ALTER TABLE `gw24_alert`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `gw24_auction`
--
ALTER TABLE `gw24_auction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=250;

--
-- AUTO_INCREMENT dla tabeli `gw24_blog_articles`
--
ALTER TABLE `gw24_blog_articles`
  MODIFY `id_blog` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT dla tabeli `gw24_blog_categories`
--
ALTER TABLE `gw24_blog_categories`
  MODIFY `id_category` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT dla tabeli `gw24_customer`
--
ALTER TABLE `gw24_customer`
  MODIFY `user_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;

--
-- AUTO_INCREMENT dla tabeli `gw24_customer_orders_invoice`
--
ALTER TABLE `gw24_customer_orders_invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT dla tabeli `gw24_mails`
--
ALTER TABLE `gw24_mails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT dla tabeli `gw24_nip_check_history`
--
ALTER TABLE `gw24_nip_check_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;

--
-- AUTO_INCREMENT dla tabeli `gw24_orders`
--
ALTER TABLE `gw24_orders`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=427;

--
-- AUTO_INCREMENT dla tabeli `gw24_order_group`
--
ALTER TABLE `gw24_order_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT dla tabeli `gw24_order_numbers_stock`
--
ALTER TABLE `gw24_order_numbers_stock`
  MODIFY `number` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=998060106151;

--
-- AUTO_INCREMENT dla tabeli `gw24_order_status`
--
ALTER TABLE `gw24_order_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT dla tabeli `gw24_order_type`
--
ALTER TABLE `gw24_order_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT dla tabeli `gw24_partners`
--
ALTER TABLE `gw24_partners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT dla tabeli `gw24_payment_type`
--
ALTER TABLE `gw24_payment_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT dla tabeli `gw24_pricelist`
--
ALTER TABLE `gw24_pricelist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT dla tabeli `gw24_przelewy24_response_status`
--
ALTER TABLE `gw24_przelewy24_response_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- AUTO_INCREMENT dla tabeli `gw24_przelewy24_response_status_siwz`
--
ALTER TABLE `gw24_przelewy24_response_status_siwz`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT dla tabeli `gw24_recommendations`
--
ALTER TABLE `gw24_recommendations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT dla tabeli `gw24_roles`
--
ALTER TABLE `gw24_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT dla tabeli `gw24_seo`
--
ALTER TABLE `gw24_seo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT dla tabeli `gw24_service_request`
--
ALTER TABLE `gw24_service_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT dla tabeli `gw24_settings`
--
ALTER TABLE `gw24_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT dla tabeli `gw24_shipment_type`
--
ALTER TABLE `gw24_shipment_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT dla tabeli `gw24_users`
--
ALTER TABLE `gw24_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT dla tabeli `gw24_user_roles`
--
ALTER TABLE `gw24_user_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

DELIMITER $$
--
-- Zdarzenia
--
CREATE DEFINER=`root`@`localhost` EVENT `Move_SEND_to_finished` ON SCHEDULE EVERY 1 DAY STARTS '2019-08-26 23:59:00' ON COMPLETION PRESERVE ENABLE DO Update gw24_orders
Set order_group = 3
where status_id = 5$$

CREATE DEFINER=`root`@`localhost` EVENT `Update_group_by_status_end` ON SCHEDULE EVERY 1 MINUTE STARTS '2019-07-04 08:00:00' ON COMPLETION PRESERVE ENABLE DO Update gw24_orders
Set order_group = 3
where status_id >= 5$$

CREATE DEFINER=`root`@`localhost` EVENT `Update_group_id_inProgress` ON SCHEDULE EVERY 1 MINUTE STARTS '2019-07-04 08:00:00' ON COMPLETION NOT PRESERVE ENABLE DO Update gw24_orders
Set order_group = 2
where status_id IN (3,4)$$

CREATE DEFINER=`root`@`localhost` EVENT `Warranty_group_update` ON SCHEDULE EVERY 1 DAY STARTS '2019-08-23 08:00:00' ON COMPLETION PRESERVE ENABLE COMMENT 'Zmienia status zamienia, które wpłyneło dnia dzisiejszego po god' DO Update gw24_orders
Set order_group = 2
where order_group = 1$$

DELIMITER ;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
