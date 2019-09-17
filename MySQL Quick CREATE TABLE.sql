CREATE TABLE `table1` (
  `id` int(11) NOT NULL,
  `key1` varchar(300) COLLATE utf8_turkish_ci NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;
ALTER TABLE `table1`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `table1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
