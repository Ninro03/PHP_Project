-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- 생성 시간: 21-06-29 17:26
-- 서버 버전: 10.4.19-MariaDB
-- PHP 버전: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 데이터베이스: `ashram7`
--

-- --------------------------------------------------------

--
-- 테이블 구조 `members`
--

CREATE TABLE `members` (
  `num` int(11) NOT NULL,
  `id` char(15) NOT NULL,
  `pass` char(15) NOT NULL,
  `name` char(10) NOT NULL,
  `email` char(80) DEFAULT NULL,
  `regist_day` char(20) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `point` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 테이블의 덤프 데이터 `members`
--

INSERT INTO `members` (`num`, `id`, `pass`, `name`, `email`, `regist_day`, `level`, `point`) VALUES
(1, 'ashram7', '1234', '오윤석샘', 'ashram7@hanmail.net', '2021-06-18 (05:56)', 2, 500),
(3, 'ashram', '1234', '오윤석', 'ashram@hanmail.net', '2021-06-22 (07:28)', 2, 400),
(4, 'admin', '1234', '관리자', 'ashram@hanmail.net', '2021-06-23 (12:47)', 1, 1100),
(5, 'ajy6712', '1234', '안진영', 'ajy6712@naver.com', '2021-06-23 (14:52)', 2, 400),
(6, 'LHJ', '1234', '임현진', 'bluestarim92@naver.com', '2021-06-23 (14:52)', 2, 600),
(7, 'midna_eat', '1234', '권영석', 'midna1994@gmail.com', '2021-06-23 (14:53)', 2, 100),
(8, 'aze624', '1234', '박은서', 'ashram77@hanmail.net', '2021-06-23 (15:13)', 2, 500),
(9, 'asd', '1234', '남하영', 'skagkdud@hanmail.net', '2021-06-23 (15:16)', 2, 400),
(10, 'chlqjagml', '1234', '최범희', 'ashram8@hanmail.net', '2021-06-28 (15:49)', 8, 500),
(12, 'ashram9', '1234', '오윤석', 'ashram@hanmail.net', '2021-06-29 (16:34)', 9, 0);

--
-- 덤프된 테이블의 인덱스
--

--
-- 테이블의 인덱스 `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`num`);

--
-- 덤프된 테이블의 AUTO_INCREMENT
--

--
-- 테이블의 AUTO_INCREMENT `members`
--
ALTER TABLE `members`
  MODIFY `num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
