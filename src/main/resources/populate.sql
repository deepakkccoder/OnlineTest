INSERT INTO `User` (`userId`, `email`, `enabled`, `firstName`, `lastName`, `password`, `username`) VALUES (1, 'deepakkc669@gmail.com', b'1', 'admin', 'admin', '$2a$10$TSCbbjh3BkwYSc.uc.V/begrFwAI6LJOqHewuvCSTOMp8q2ZMPbpy', 'admin');
INSERT INTO `Authority` (`id`, `authority`, `userId`) VALUES (1, 'ROLE_ADMIN', 1);
INSERT INTO `Grade` (`name`, `rangeFrom`, `rangeTo`) VALUES ('A', 95, 98);
INSERT INTO `Grade` (`name`, `rangeFrom`, `rangeTo`) VALUES ('A+', 98, 100);
INSERT INTO `Grade` (`name`, `rangeFrom`, `rangeTo`) VALUES ('A-', 90, 94);
INSERT INTO `Grade` (`name`, `rangeFrom`, `rangeTo`) VALUES ('B', 80, 84);
INSERT INTO `Grade` (`name`, `rangeFrom`, `rangeTo`) VALUES ('B+', 85, 89);
INSERT INTO `Grade` (`name`, `rangeFrom`, `rangeTo`) VALUES ('B-', 75, 79);
INSERT INTO `Grade` (`name`, `rangeFrom`, `rangeTo`) VALUES ('C', 65, 69);
INSERT INTO `Grade` (`name`, `rangeFrom`, `rangeTo`) VALUES ('C+', 70, 74);
INSERT INTO `Grade` (`name`, `rangeFrom`, `rangeTo`) VALUES ('C-', 60, 64);
INSERT INTO `Grade` (`name`, `rangeFrom`, `rangeTo`) VALUES ('NC', 0, 59);


