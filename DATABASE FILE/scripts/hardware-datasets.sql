-- Table structure for table `attributes`
TRUNCATE TABLE `attributes`;

INSERT INTO `attributes` (`id`, `name`, `active`) VALUES
(1, 'Color', 1),
(2, 'Size', 1),
(3, 'Material', 1),
(4, 'Finish', 1),
(5, 'Weight', 1),
(6, 'Dimensions', 1),
(7, 'Capacity', 1),
(8, 'Strength', 1),
(9, 'Voltage', 1),
(10, 'Wattage', 1),
(11, 'Warranty', 1),
(12, 'Brand', 1),
(13, 'Model Number', 1),
(14, 'Installation Type', 1),
(15, 'Safety Features', 1);

-- Table structure for table `attribute_value`
TRUNCATE TABLE `attribute_value`;

INSERT INTO `attribute_value` (`id`, `value`, `attribute_parent_id`) VALUES
(1, 'Blue', 1),
(2, 'Red', 1),
(3, 'Green', 1),
(4, 'Small', 2),
(5, 'Medium', 2),
(6, 'Large', 2),
(7, 'Steel', 3),
(8, 'Aluminum', 3),
(9, 'Concrete', 3),
(10, 'Matte', 4),
(11, 'Glossy', 4),
(12, 'Satin', 4),
(13, 'Lightweight', 5),
(14, 'Heavy', 5),
(15, 'Compact', 6),
(16, 'Spacious', 6),
(17, 'High Capacity', 7),
(18, 'Low Capacity', 7),
(19, 'High Strength', 8),
(20, 'Medium Strength', 8),
(21, '110V', 9),
(22, '220V', 9),
(23, '60W', 10),
(24, '100W', 10),
(25, '1 Year', 11),
(26, '2 Years', 11),
(27, 'Brand A', 12),
(28, 'Brand B', 12),
(29, 'Model X', 13),
(30, 'Model Y', 13),
(31, 'Wall Mounted', 14),
(32, 'Free Standing', 14),
(33, 'Fire Resistant', 15),
(34, 'Water Resistant', 15);

-- Table structure for table `brands`
TRUNCATE TABLE `brands`;

INSERT INTO `brands` (`id`, `name`, `active`) VALUES
(1, 'DeWalt', 1),
(2, 'Makita', 1),
(3, 'Bosch', 1),
(4, 'Milwaukee', 1),
(5, 'Stanley', 1),
(6, 'Hilti', 1),
(7, 'Hitachi', 1),
(8, 'Black & Decker', 1),
(9, 'Craftsman', 1),
(10, 'Ridgid', 1),
(11, 'Porter-Cable', 1),
(12, 'Ryobi', 1),
(13, 'Metabo', 1),
(14, 'Festool', 1),
(15, 'Klein Tools', 1);

-- Table structure for table `categories`
TRUNCATE TABLE `categories`;

INSERT INTO `categories` (`id`, `name`, `active`) VALUES
(1, 'Power Tools', 1),
(2, 'Hand Tools', 1),
(3, 'Building Materials', 1),
(4, 'Fasteners', 1),
(5, 'Safety Equipment', 1),
(6, 'Electrical', 1),
(7, 'Plumbing', 1),
(8, 'Hardware', 1),
(9, 'Paint & Supplies', 1),
(10, 'Adhesives & Sealants', 1),
(11, 'Ladders & Scaffolding', 1),
(12, 'Storage & Organization', 1),
(13, 'Lighting & Ceiling Fans', 1),
(14, 'HVAC', 1);

-- Table structure for table `company`
TRUNCATE TABLE `company`;

INSERT INTO `company` (`id`, `company_name`, `service_charge_value`, `vat_charge_value`, `address`, `phone`, `country`, `message`, `currency`) VALUES
(1, 'AllHome', '15', '12', 'Km 23 West Service Road, Muntinlupa', '09171234567', 'PH', '<p>Your one-stop shop for all construction hardware needs!</p>', 'PHP');

-- Table structure for table `orders`
TRUNCATE TABLE `orders`;

INSERT INTO `orders` (`id`, `bill_no`, `customer_name`, `customer_address`, `customer_phone`, `date_time`, `gross_amount`, `service_charge_rate`, `service_charge`, `vat_charge_rate`, `vat_charge`, `net_amount`, `discount`, `paid_status`, `user_id`) VALUES
(1, 'CONPR-1234', 'Juan Dela Cruz', '1234 Construction Ave, Makati, Metro Manila', '09171234567', '1650912337', '15000.00', '15', '2250.00', '12', '1800.00', '19050.00', '0', 1, 1);

-- Table structure for table `orders_item`
TRUNCATE TABLE `orders_item`;

INSERT INTO `orders_item` (`id`, `order_id`, `product_id`, `qty`, `rate`, `amount`) VALUES
(1, 1, 1, '10', '1500', '15000.00');

-- Table structure for table `products`
TRUNCATE TABLE `products`;

INSERT INTO `products` (`id`, `name`, `sku`, `price`, `qty`, `image`, `description`, `attribute_value_id`, `brand_id`, `category_id`, `store_id`, `availability`) VALUES
(1, '2d Nails', 'NAIL-2D', '0.50', '1000', 'assets/images/product_image/common-nails.jpg', 'Standard 2d nails used in construction.', '[1]', '1', '1', 1, 1),
(2, '3d Nails', 'NAIL-3D', '0.60', '800', 'assets/images/product_image/common-nails.jpg', 'Standard 3d nails used in construction.', '[2]', '1', '1', 1, 1),
(3, '4d Nails', 'NAIL-4D', '0.70', '600', 'assets/images/product_image/common-nails.jpg', 'Standard 4d nails used in construction.', '[3]', '1', '1', 1, 1),
(4, '4/4 Lumber', 'LUM-4/4', '20.00', '50', 'assets/images/product_image/lumber.jpg', 'High-quality 4/4 lumber for construction.', '[4]', '2', '2', 1, 1),
(5, '5/4 Lumber', 'LUM-5/4', '25.00', '40', 'assets/images/product_image/lumber.jpg', 'High-quality 5/4 lumber for construction.', '[5]', '2', '2', 1, 1),
(6, '6/4 Lumber', 'LUM-6/4', '30.00', '30', 'assets/images/product_image/lumber.jpg', 'High-quality 6/4 lumber for construction.', '[6]', '2', '2', 1, 1),
(7, '16mm Screws', 'SCR-16MM', '0.10', '2000', 'assets/images/product_image/screw.jpg', '16mm screws used in construction.', '[7]', '3', '3', 1, 1),
(8, '25mm Screws', 'SCR-25MM', '0.15', '1500', 'assets/images/product_image/screw.jpg', '25mm screws used in construction.', '[8]', '3', '3', 1, 1),
(9, '32mm Screws', 'SCR-32MM', '0.20', '1000', 'assets/images/product_image/screw.jpg', '32mm screws used in construction.', '[9]', '3', '3', 1, 1),
(10, 'Shovel', 'SHV-001', '10.00', '100', 'assets/images/product_image/shovel.jpg', 'Durable shovel for construction use.', '[10]', '4', '4', 1, 1),
(11, '25kg Cement Bag', 'CEM-25KG', '5.00', '200', 'assets/images/product_image/cement-bag-25kg.jpg', '25kg bag of cement for construction.', '[11]', '5', '5', 1, 1),
(12, '50kg Cement Bag', 'CEM-50KG', '10.00', '100', 'assets/images/product_image/cement-bag-50kg.jpg', '50kg bag of cement for construction.', '[12]', '5', '5', 1, 1),
(13, 'Hammer', 'HAM-001', '15.00', '80', 'assets/images/product_image/hammer.jpg', 'Heavy-duty hammer for construction.', '[13]', '6', '6', 1, 1),
(14, 'Saw', 'SAW-001', '20.00', '60', 'assets/images/product_image/saw.jpg', 'High-quality saw for construction.', '[14]', '6', '6', 1, 1),
(15, 'Wrench', 'WRE-001', '12.00', '90', 'assets/images/product_image/wrench.jpg', 'Durable wrench for construction.', '[15]', '6', '6', 1, 1);

-- Table structure for table `stores`
TRUNCATE TABLE `stores`;

INSERT INTO `stores` (`id`, `name`, `active`) VALUES
(1, 'Ace Hardware', 1),
(2, 'Handyman', 1),
(3, 'Wilcon Depot', 1),
(4, 'True Value', 1),
(5, 'Mr. DIY',  1),
(6, 'AllHome',  1),
(7, 'Builders Warehouse',  1),
(8, 'CW Home Depot', 1),
(9, 'Robinsons Builders', 1),
(10, 'Ado Home Depot',  1),
(11, 'Home & More', 1),
(12, 'DIY Shop',  1),
(13, 'Hyper Hardware', 1),
(14, 'Goldrich Hardware', 1),
(15, 'Metro Hardware',  1);
