/*
SQLyog Community v13.2.0 (64 bit)
MySQL - 8.0.30 : Database - cafe_uts
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

/*Table structure for table `categories` */

DROP TABLE IF EXISTS `categories`;

CREATE TABLE `categories` (
  `category_id` int NOT NULL AUTO_INCREMENT,
  `category_name` varchar(50) NOT NULL,
  `description` text,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `categories` */

insert  into `categories`(`category_id`,`category_name`,`description`) values 
(1,'Kopi','Berbagai jenis minuman kopi'),
(2,'Non-Kopi','Minuman tanpa kopi'),
(3,'Makanan Ringan','Snack dan makanan ringan'),
(4,'Makanan Berat','Makanan utama'),
(5,'Dessert','Makanan penutup');

/*Table structure for table `customers` */

DROP TABLE IF EXISTS `customers`;

CREATE TABLE `customers` (
  `customer_id` int NOT NULL AUTO_INCREMENT,
  `full_name` varchar(100) NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `join_date` date NOT NULL,
  `points` int DEFAULT '0',
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `customers` */

insert  into `customers`(`customer_id`,`full_name`,`phone`,`email`,`join_date`,`points`) values 
(1,'Andi Wijaya','082345678901','andi@email.com','2024-01-10',150),
(2,'Rina Susanti','082345678902','rina@email.com','2024-02-15',220),
(3,'Dani Firmansyah','082345678903','dani@email.com','2024-03-20',180),
(4,'Putri Ayu','082345678904','putri@email.com','2024-04-05',95),
(5,'Hendra Gunawan','082345678905','hendra@email.com','2024-05-12',310),
(6,'Tina Marlina','082345678906','tina@email.com','2024-06-08',125),
(7,'Bambang Sutrisno','082345678907','bambang@email.com','2024-07-22',260),
(8,'Yuni Kartika','082345678908','yuni@email.com','2024-08-15',190),
(9,'Agus Salim','082345678909','agus@email.com','2024-09-03',140),
(10,'Sari Indah','082345678910','sari@email.com','2024-10-01',75);

/*Table structure for table `employees` */

DROP TABLE IF EXISTS `employees`;

CREATE TABLE `employees` (
  `employee_id` int NOT NULL AUTO_INCREMENT,
  `full_name` varchar(100) NOT NULL,
  `position` varchar(50) NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `hire_date` date NOT NULL,
  `salary` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`employee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `employees` */

insert  into `employees`(`employee_id`,`full_name`,`position`,`phone`,`email`,`hire_date`,`salary`) values 
(1,'Budi Santoso','Manager','081234567890','budi@kafe.com','2023-01-15',6000000.00),
(2,'Siti Nurhaliza','Barista','081234567891','siti@kafe.com','2023-03-20',3500000.00),
(3,'Ahmad Hidayat','Barista','081234567892','ahmad@kafe.com','2023-04-10',3500000.00),
(4,'Dewi Lestari','Kasir','081234567893','dewi@kafe.com','2023-02-05',3200000.00),
(5,'Rudi Hartono','Chef','081234567894','rudi@kafe.com','2023-01-20',4500000.00),
(6,'Linda Wijaya','Waitress','081234567895','linda@kafe.com','2023-05-15',3000000.00),
(7,'Eko Prasetyo','Waiter','081234567896','eko@kafe.com','2023-06-01',3000000.00),
(8,'Maya Anggraini','Cleaning Service','081234567897','maya@kafe.com','2023-07-10',2800000.00);

/*Table structure for table `suppliers` */

DROP TABLE IF EXISTS `suppliers`;

CREATE TABLE `suppliers` (
  `supplier_id` int NOT NULL AUTO_INCREMENT,
  `supplier_name` varchar(100) NOT NULL,
  `contact_person` varchar(100) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` text,
  `category` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`supplier_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `suppliers` */

insert  into `suppliers`(`supplier_id`,`supplier_name`,`contact_person`,`phone`,`email`,`address`,`category`) values 
(1,'PT Kopi Nusantara','Joko Widodo','021-5551234','joko@kopinusa.com','Jakarta Selatan','Coffee Beans'),
(2,'CV Susu Segar','Ani Yudhoyono','021-5551235','ani@sususegar.com','Bogor','Dairy Products'),
(3,'Toko Roti Makmur','Bambang SBY','021-5551236','bambang@rotimakmur.com','Tangerang','Bakery'),
(4,'PT Sayur Mayur','Megawati S','021-5551237','mega@sayurmayur.com','Bekasi','Vegetables'),
(5,'CV Daging Segar','Habibie Tech','021-5551238','habibie@dagingsegar.com','Jakarta Timur','Meat'),
(6,'Distributor Minuman','Gus Dur','021-5551239','gusdur@minuman.com','Depok','Beverages'),
(7,'PT Bumbu Rempah','Soekarno','021-5551240','soekarno@bumbu.com','Jakarta Barat','Spices');

/*Table structure for table `inventory` */

DROP TABLE IF EXISTS `inventory`;

CREATE TABLE `inventory` (
  `inventory_id` int NOT NULL AUTO_INCREMENT,
  `item_name` varchar(100) NOT NULL,
  `supplier_id` int DEFAULT NULL,
  `quantity` decimal(10,2) NOT NULL,
  `unit` varchar(20) NOT NULL,
  `min_stock` decimal(10,2) DEFAULT NULL,
  `last_restock_date` date DEFAULT NULL,
  PRIMARY KEY (`inventory_id`),
  KEY `supplier_id` (`supplier_id`),
  CONSTRAINT `inventory_ibfk_1` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`supplier_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `inventory` */

insert  into `inventory`(`inventory_id`,`item_name`,`supplier_id`,`quantity`,`unit`,`min_stock`,`last_restock_date`) values 
(1,'Coffee Beans Arabica',1,25.50,'kg',10.00,'2024-11-01'),
(2,'Coffee Beans Robusta',1,18.00,'kg',10.00,'2024-11-01'),
(3,'Fresh Milk',2,45.00,'liter',20.00,'2024-11-03'),
(4,'Sugar',6,50.00,'kg',15.00,'2024-10-28'),
(5,'Flour',3,30.00,'kg',10.00,'2024-11-02'),
(6,'Butter',2,12.00,'kg',5.00,'2024-11-03'),
(7,'Eggs',2,200.00,'pcs',100.00,'2024-11-04'),
(8,'Chicken Breast',5,15.00,'kg',8.00,'2024-11-05'),
(9,'Pasta',6,20.00,'kg',5.00,'2024-10-30'),
(10,'Tomatoes',4,25.00,'kg',10.00,'2024-11-04'),
(11,'Lettuce',4,10.00,'kg',5.00,'2024-11-04'),
(12,'Onions',4,18.00,'kg',8.00,'2024-11-03'),
(13,'Cheese',2,8.00,'kg',3.00,'2024-11-02'),
(14,'Chocolate Powder',6,15.00,'kg',5.00,'2024-11-01'),
(15,'Matcha Powder',6,3.50,'kg',2.00,'2024-11-01'),
(16,'Caramel Syrup',6,8.00,'liter',3.00,'2024-10-29'),
(17,'Vanilla Extract',6,2.00,'liter',1.00,'2024-10-28');

/*Table structure for table `menu` */

DROP TABLE IF EXISTS `menu`;

CREATE TABLE `menu` (
  `item_id` int NOT NULL AUTO_INCREMENT,
  `item_name` varchar(100) NOT NULL,
  `category_id` int DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `description` text,
  `is_available` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`item_id`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `menu` */

insert  into `menu`(`item_id`,`item_name`,`category_id`,`price`,`description`,`is_available`) values 
(1,'Espresso',1,15000.00,'Kopi espresso single shot',1),
(2,'Cappuccino',1,25000.00,'Espresso dengan susu berbusa',1),
(3,'Latte',1,28000.00,'Espresso dengan susu steamed',1),
(4,'Americano',1,20000.00,'Espresso dengan air panas',1),
(5,'Caramel Macchiato',1,32000.00,'Latte dengan sirup caramel',1),
(6,'Matcha Latte',2,30000.00,'Teh hijau Jepang dengan susu',1),
(7,'Chocolate',2,25000.00,'Cokelat panas premium',1),
(8,'Lemon Tea',2,18000.00,'Teh dengan lemon segar',1),
(9,'Croissant',3,22000.00,'Roti croissant butter',1),
(10,'Sandwich',3,35000.00,'Sandwich ayam dengan sayuran',1),
(11,'French Fries',3,20000.00,'Kentang goreng crispy',1),
(12,'Nasi Goreng',4,35000.00,'Nasi goreng spesial',1),
(13,'Pasta Carbonara',4,45000.00,'Pasta dengan saus carbonara',1),
(14,'Chicken Steak',4,55000.00,'Steak ayam dengan sayuran',1),
(15,'Tiramisu',5,35000.00,'Dessert Italia klasik',1),
(16,'Brownies',5,25000.00,'Brownies cokelat dengan es krim',1),
(17,'Cheesecake',5,32000.00,'Kue keju New York style',1);

/*Table structure for table `tables` */

DROP TABLE IF EXISTS `tables`;

CREATE TABLE `tables` (
  `table_id` int NOT NULL AUTO_INCREMENT,
  `table_number` int NOT NULL,
  `capacity` int NOT NULL,
  `location` varchar(50) DEFAULT NULL,
  `status` enum('Available','Occupied','Reserved') DEFAULT 'Available',
  PRIMARY KEY (`table_id`),
  UNIQUE KEY `table_number` (`table_number`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `tables` */

insert  into `tables`(`table_id`,`table_number`,`capacity`,`location`,`status`) values 
(1,1,2,'Indoor','Available'),
(2,2,2,'Indoor','Available'),
(3,3,4,'Indoor','Occupied'),
(4,4,4,'Indoor','Available'),
(5,5,6,'Indoor','Reserved'),
(6,6,2,'Outdoor','Available'),
(7,7,4,'Outdoor','Available'),
(8,8,4,'Outdoor','Occupied'),
(9,9,8,'VIP Room','Reserved'),
(10,10,2,'Outdoor','Available');

/*Table structure for table `transactions` */

DROP TABLE IF EXISTS `transactions`;

CREATE TABLE `transactions` (
  `transaction_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int DEFAULT NULL,
  `employee_id` int DEFAULT NULL,
  `table_id` int DEFAULT NULL,
  `transaction_date` datetime NOT NULL,
  `total_amount` decimal(10,2) NOT NULL,
  `payment_method` enum('Cash','Debit','Credit','E-Wallet') NOT NULL,
  `status` enum('Pending','Completed','Cancelled') DEFAULT 'Completed',
  PRIMARY KEY (`transaction_id`),
  KEY `customer_id` (`customer_id`),
  KEY `employee_id` (`employee_id`),
  KEY `table_id` (`table_id`),
  CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`),
  CONSTRAINT `transactions_ibfk_2` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`employee_id`),
  CONSTRAINT `transactions_ibfk_3` FOREIGN KEY (`table_id`) REFERENCES `tables` (`table_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `transactions` */

insert  into `transactions`(`transaction_id`,`customer_id`,`employee_id`,`table_id`,`transaction_date`,`total_amount`,`payment_method`,`status`) values 
(1,1,4,1,'2024-11-01 10:30:00',53000.00,'Cash','Completed'),
(2,2,4,3,'2024-11-01 11:15:00',110000.00,'E-Wallet','Completed'),
(3,3,4,6,'2024-11-01 14:20:00',78000.00,'Debit','Completed'),
(4,4,4,2,'2024-11-02 09:45:00',45000.00,'Cash','Completed'),
(5,5,4,4,'2024-11-02 12:00:00',135000.00,'Credit','Completed'),
(6,6,4,8,'2024-11-02 15:30:00',92000.00,'E-Wallet','Completed'),
(7,7,4,1,'2024-11-03 10:00:00',67000.00,'Cash','Completed'),
(8,8,4,7,'2024-11-03 13:45:00',125000.00,'Debit','Completed'),
(9,9,4,3,'2024-11-03 16:20:00',88000.00,'E-Wallet','Completed'),
(10,10,4,2,'2024-11-04 11:30:00',56000.00,'Cash','Completed'),
(11,1,4,6,'2024-11-04 14:15:00',103000.00,'Credit','Completed'),
(12,2,4,4,'2024-11-04 17:00:00',71000.00,'E-Wallet','Completed'),
(13,3,4,8,'2024-11-05 10:20:00',95000.00,'Cash','Completed'),
(14,4,4,1,'2024-11-05 12:45:00',112000.00,'Debit','Completed'),
(15,5,4,3,'2024-11-05 15:10:00',84000.00,'E-Wallet','Completed');


/*Table structure for table `transaction_details` */

DROP TABLE IF EXISTS `transaction_details`;

CREATE TABLE `transaction_details` (
  `detail_id` int NOT NULL AUTO_INCREMENT,
  `transaction_id` int DEFAULT NULL,
  `item_id` int DEFAULT NULL,
  `quantity` int NOT NULL,
  `unit_price` decimal(10,2) NOT NULL,
  `subtotal` decimal(10,2) NOT NULL,
  `notes` text,
  PRIMARY KEY (`detail_id`),
  KEY `transaction_id` (`transaction_id`),
  KEY `item_id` (`item_id`),
  CONSTRAINT `transaction_details_ibfk_1` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`transaction_id`),
  CONSTRAINT `transaction_details_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `menu` (`item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `transaction_details` */

insert  into `transaction_details`(`detail_id`,`transaction_id`,`item_id`,`quantity`,`unit_price`,`subtotal`,`notes`) values 
(1,1,3,1,28000.00,28000.00,'Less sugar'),
(2,1,9,1,22000.00,22000.00,NULL),
(3,1,16,1,25000.00,25000.00,'Extra ice cream'),
(4,2,14,2,55000.00,110000.00,NULL),
(5,3,5,1,32000.00,32000.00,NULL),
(6,3,13,1,45000.00,45000.00,'No mushroom'),
(7,4,2,1,25000.00,25000.00,NULL),
(8,4,8,1,18000.00,18000.00,'Extra lemon'),
(9,5,13,2,45000.00,90000.00,NULL),
(10,5,17,1,32000.00,32000.00,NULL),
(11,5,7,1,25000.00,25000.00,'Hot'),
(12,6,4,2,20000.00,40000.00,NULL),
(13,6,10,1,35000.00,35000.00,'No onion'),
(14,6,15,1,35000.00,35000.00,NULL),
(15,7,1,2,15000.00,30000.00,NULL),
(16,7,9,1,22000.00,22000.00,NULL),
(17,7,16,1,25000.00,25000.00,NULL),
(18,8,12,2,35000.00,70000.00,'Extra spicy'),
(19,8,3,2,28000.00,56000.00,NULL),
(20,9,6,1,30000.00,30000.00,NULL),
(21,9,10,1,35000.00,35000.00,NULL),
(22,9,17,1,32000.00,32000.00,NULL),
(23,10,2,2,25000.00,50000.00,NULL),
(24,11,14,1,55000.00,55000.00,'Well done'),
(25,11,11,1,20000.00,20000.00,NULL),
(26,11,6,1,30000.00,30000.00,NULL),
(27,12,5,1,32000.00,32000.00,NULL),
(28,12,9,1,22000.00,22000.00,NULL),
(29,12,15,1,35000.00,35000.00,NULL),
(30,13,13,1,45000.00,45000.00,NULL),
(31,13,4,2,20000.00,40000.00,NULL),
(32,13,16,1,25000.00,25000.00,NULL),
(33,14,12,2,35000.00,70000.00,NULL),
(34,14,3,1,28000.00,28000.00,NULL),
(35,14,8,1,18000.00,18000.00,NULL),
(36,15,7,2,25000.00,50000.00,NULL),
(37,15,17,1,32000.00,32000.00,NULL);

/*Table structure for table `work_shifts` */

DROP TABLE IF EXISTS `work_shifts`;

CREATE TABLE `work_shifts` (
  `shift_id` int NOT NULL AUTO_INCREMENT,
  `employee_id` int DEFAULT NULL,
  `shift_date` date NOT NULL,
  `shift_type` enum('Morning','Afternoon','Night') NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `status` enum('Scheduled','Completed','Absent') DEFAULT 'Scheduled',
  PRIMARY KEY (`shift_id`),
  KEY `employee_id` (`employee_id`),
  CONSTRAINT `work_shifts_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`employee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `work_shifts` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
