PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "Category" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "Name" TEXT,
    "status" TEXT,
    "icon" TEXT,
    "image" TEXT
);
INSERT INTO Category VALUES(1,'Electronics',NULL,'iconoir:electronics-chip','Product-2024-1-2-21-2200.webp');
INSERT INTO Category VALUES(2,'Fashion',NULL,NULL,'Product-2024-1-3-21-18024.webp');
INSERT INTO Category VALUES(3,'Home & Furniture',NULL,NULL,'Product-2024-1-2-20-58027.webp');
INSERT INTO Category VALUES(4,'Beauty & Health',NULL,NULL,'Product-2024-1-2-20-58027.webp');
INSERT INTO Category VALUES(5,'Sports & Outdoors',NULL,NULL,'Product-2024-1-2-20-58027.webp');
INSERT INTO Category VALUES(6,'Toys & Games',NULL,NULL,'Product-2024-1-2-20-58027.webp');
INSERT INTO Category VALUES(7,'Groceries & Food',NULL,NULL,'Product-2024-2-6-21-40045.webp');
INSERT INTO Category VALUES(8,'Automotive',NULL,NULL,'Product-2024-1-2-20-58027.webp');
INSERT INTO Category VALUES(9,'Books & Stationery',NULL,NULL,'Product-2024-1-2-20-58027.webp');
INSERT INTO Category VALUES(10,'Pet Supplies',NULL,NULL,'Product-2024-1-2-20-58027.webp');
INSERT INTO Category VALUES(11,'Jewelry & Accessories',NULL,NULL,'Product-2024-1-2-20-58027.webp');
INSERT INTO Category VALUES(12,'Baby & Kids',NULL,NULL,'Product-2024-1-2-20-58027.webp');
INSERT INTO Category VALUES(13,'Appliances',NULL,NULL,'Product-2024-1-2-20-58027.webp');
INSERT INTO Category VALUES(14,'Tools & Home Improvement',NULL,NULL,'Product-2024-1-2-20-58027.webp');
INSERT INTO Category VALUES(15,'Office Supplies & Equipment',NULL,NULL,'Product-2024-1-2-20-58027.webp');
INSERT INTO Category VALUES(16,'Musical Instruments',NULL,NULL,'Product-2024-1-2-20-58027.webp');
INSERT INTO Category VALUES(17,'Gaming & Entertainment',NULL,NULL,NULL);
INSERT INTO Category VALUES(18,'Arts & Crafts',NULL,NULL,NULL);
INSERT INTO Category VALUES(19,'Travel & Luggage',NULL,NULL,NULL);
INSERT INTO Category VALUES(20,'Health & Wellness',NULL,NULL,NULL);
INSERT INTO Category VALUES(21,'Digital Products',NULL,NULL,NULL);
INSERT INTO Category VALUES(22,'Industrial & Scientific',NULL,NULL,NULL);
INSERT INTO Category VALUES(23,'Luxury & Designer Goods',NULL,NULL,NULL);
INSERT INTO Category VALUES(24,'Energy & Utilities',NULL,NULL,NULL);
INSERT INTO Category VALUES(25,'Educational Supplies',NULL,NULL,NULL);
INSERT INTO Category VALUES(26,NULL,NULL,NULL,NULL);
CREATE TABLE IF NOT EXISTS "ProductTypes" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "Category" TEXT,
    "Name" TEXT
);
INSERT INTO ProductTypes VALUES(1,'Electronics','Smartphones');
INSERT INTO ProductTypes VALUES(2,'Electronics','Laptops');
INSERT INTO ProductTypes VALUES(3,'Electronics','Tablets');
INSERT INTO ProductTypes VALUES(4,'Electronics','Cameras');
INSERT INTO ProductTypes VALUES(5,'Electronics','Wearable Devices');
INSERT INTO ProductTypes VALUES(6,'Electronics','Audio Equipment');
INSERT INTO ProductTypes VALUES(7,'Fashion','Men''s Clothing');
INSERT INTO ProductTypes VALUES(8,'Fashion','Women''s Clothing');
INSERT INTO ProductTypes VALUES(9,'Fashion','Footwear');
INSERT INTO ProductTypes VALUES(10,'Fashion','Accessories');
INSERT INTO ProductTypes VALUES(11,'Fashion','Bags');
INSERT INTO ProductTypes VALUES(12,'Home & Furniture','Furniture');
INSERT INTO ProductTypes VALUES(13,'Home & Furniture','Kitchen Appliances');
INSERT INTO ProductTypes VALUES(14,'Home & Furniture','Home Decor');
INSERT INTO ProductTypes VALUES(15,'Home & Furniture','Storage Solutions');
INSERT INTO ProductTypes VALUES(16,'Beauty & Health','Skincare');
INSERT INTO ProductTypes VALUES(17,'Beauty & Health','Makeup');
INSERT INTO ProductTypes VALUES(18,'Beauty & Health','Hair Care');
INSERT INTO ProductTypes VALUES(19,'Beauty & Health','Health Products');
INSERT INTO ProductTypes VALUES(20,'Sports & Outdoors','Fitness Equipment');
INSERT INTO ProductTypes VALUES(21,'Sports & Outdoors','Cycling');
INSERT INTO ProductTypes VALUES(22,'Sports & Outdoors','Outdoor Gear');
INSERT INTO ProductTypes VALUES(23,'Sports & Outdoors','Sportswear');
INSERT INTO ProductTypes VALUES(24,'Toys & Games','Action Figures');
INSERT INTO ProductTypes VALUES(25,'Toys & Games','Board Games');
INSERT INTO ProductTypes VALUES(26,'Toys & Games','Educational Toys');
INSERT INTO ProductTypes VALUES(27,'Toys & Games','Video Games');
INSERT INTO ProductTypes VALUES(28,'Groceries & Food','Fresh Produce');
INSERT INTO ProductTypes VALUES(29,'Groceries & Food','Dairy & Eggs');
INSERT INTO ProductTypes VALUES(30,'Groceries & Food','Snacks');
INSERT INTO ProductTypes VALUES(31,'Groceries & Food','Beverages');
INSERT INTO ProductTypes VALUES(32,'Automotive','Car Accessories');
INSERT INTO ProductTypes VALUES(33,'Automotive','Motorcycle Gear');
INSERT INTO ProductTypes VALUES(34,'Automotive','Car Parts');
INSERT INTO ProductTypes VALUES(35,'Automotive','Maintenance Products');
INSERT INTO ProductTypes VALUES(36,'Books & Stationery','Books');
INSERT INTO ProductTypes VALUES(37,'Books & Stationery','Stationery');
INSERT INTO ProductTypes VALUES(38,'Books & Stationery','Office Supplies');
INSERT INTO ProductTypes VALUES(39,'Pet Supplies','Pet Food');
INSERT INTO ProductTypes VALUES(40,'Pet Supplies','Pet Accessories');
INSERT INTO ProductTypes VALUES(41,'Pet Supplies','Pet Health Products');
INSERT INTO ProductTypes VALUES(42,'Jewelry & Accessories','Rings');
INSERT INTO ProductTypes VALUES(43,'Jewelry & Accessories','Necklaces');
INSERT INTO ProductTypes VALUES(44,'Jewelry & Accessories','Bracelets');
INSERT INTO ProductTypes VALUES(45,'Jewelry & Accessories','Earrings');
INSERT INTO ProductTypes VALUES(46,'Baby & Kids','Baby Clothing');
INSERT INTO ProductTypes VALUES(47,'Baby & Kids','Toys for Babies');
INSERT INTO ProductTypes VALUES(48,'Baby & Kids','Kids’ Clothing');
INSERT INTO ProductTypes VALUES(49,'Baby & Kids','Baby Gear');
INSERT INTO ProductTypes VALUES(50,'Appliances','Kitchen Appliances');
INSERT INTO ProductTypes VALUES(51,'Appliances','Home Appliances');
INSERT INTO ProductTypes VALUES(52,'Appliances','Small Appliances');
INSERT INTO ProductTypes VALUES(53,'Appliances','Personal Care Appliances');
INSERT INTO ProductTypes VALUES(54,'Tools & Home Improvement','Power Tools');
INSERT INTO ProductTypes VALUES(55,'Tools & Home Improvement','Hand Tools');
INSERT INTO ProductTypes VALUES(56,'Tools & Home Improvement','Gardening Tools');
INSERT INTO ProductTypes VALUES(57,'Tools & Home Improvement','Lighting');
INSERT INTO ProductTypes VALUES(58,'Office Supplies & Equipment','Office Furniture');
INSERT INTO ProductTypes VALUES(59,'Office Supplies & Equipment','Printers & Scanners');
INSERT INTO ProductTypes VALUES(60,'Office Supplies & Equipment','Computer Accessories');
INSERT INTO ProductTypes VALUES(61,'Office Supplies & Equipment','Office Organization');
INSERT INTO ProductTypes VALUES(62,'Musical Instruments','String Instruments');
INSERT INTO ProductTypes VALUES(63,'Musical Instruments','Percussion Instruments');
INSERT INTO ProductTypes VALUES(64,'Musical Instruments','Wind Instruments');
INSERT INTO ProductTypes VALUES(65,'Musical Instruments','Keyboard Instruments');
INSERT INTO ProductTypes VALUES(66,'Gaming & Entertainment','Video Game Consoles');
INSERT INTO ProductTypes VALUES(67,'Gaming & Entertainment','PC Gaming');
INSERT INTO ProductTypes VALUES(68,'Gaming & Entertainment','Board Games');
INSERT INTO ProductTypes VALUES(69,'Gaming & Entertainment','Card Games');
INSERT INTO ProductTypes VALUES(70,'Arts & Crafts','Painting Supplies');
INSERT INTO ProductTypes VALUES(71,'Arts & Crafts','Crafting Supplies');
INSERT INTO ProductTypes VALUES(72,'Arts & Crafts','Sewing & Knitting');
INSERT INTO ProductTypes VALUES(73,'Arts & Crafts','Scrapbooking');
INSERT INTO ProductTypes VALUES(74,'Travel & Luggage','Luggage');
INSERT INTO ProductTypes VALUES(75,'Travel & Luggage','Travel Accessories');
INSERT INTO ProductTypes VALUES(76,'Travel & Luggage','Outdoor Gear');
INSERT INTO ProductTypes VALUES(77,'Travel & Luggage','Travel Clothing');
INSERT INTO ProductTypes VALUES(78,'Health & Wellness','Fitness Equipment');
INSERT INTO ProductTypes VALUES(79,'Health & Wellness','Supplements');
INSERT INTO ProductTypes VALUES(80,'Health & Wellness','Personal Care');
INSERT INTO ProductTypes VALUES(81,'Health & Wellness','Medical Equipment');
INSERT INTO ProductTypes VALUES(82,'Digital Products','E-books');
INSERT INTO ProductTypes VALUES(83,'Digital Products','Software');
INSERT INTO ProductTypes VALUES(84,'Digital Products','Online Courses');
INSERT INTO ProductTypes VALUES(85,'Digital Products','Stock Photos & Videos');
INSERT INTO ProductTypes VALUES(86,'Industrial & Scientific','Lab Equipment');
INSERT INTO ProductTypes VALUES(87,'Industrial & Scientific','Measuring Tools');
INSERT INTO ProductTypes VALUES(88,'Industrial & Scientific','Construction Equipment');
INSERT INTO ProductTypes VALUES(89,'Industrial & Scientific','Safety Gear');
INSERT INTO ProductTypes VALUES(90,'Luxury & Designer Goods','Designer Clothing');
INSERT INTO ProductTypes VALUES(91,'Luxury & Designer Goods','Designer Handbags');
INSERT INTO ProductTypes VALUES(92,'Luxury & Designer Goods','Luxury Watches');
INSERT INTO ProductTypes VALUES(93,'Luxury & Designer Goods','High-End Jewelry');
INSERT INTO ProductTypes VALUES(94,'Energy & Utilities','Solar Panels');
INSERT INTO ProductTypes VALUES(95,'Energy & Utilities','Generators');
INSERT INTO ProductTypes VALUES(96,'Energy & Utilities','Energy Storage');
INSERT INTO ProductTypes VALUES(97,'Energy & Utilities','Energy-saving Appliances');
INSERT INTO ProductTypes VALUES(98,'Educational Supplies','School Supplies');
INSERT INTO ProductTypes VALUES(99,'Educational Supplies','Learning Aids');
INSERT INTO ProductTypes VALUES(100,'Educational Supplies','STEM Kits');
CREATE TABLE IF NOT EXISTS "Brandname" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "ProductType" TEXT,
    "Name" TEXT
);
INSERT INTO Brandname VALUES(1,'Smartphones','Apple');
INSERT INTO Brandname VALUES(2,'Smartphones','Samsung');
INSERT INTO Brandname VALUES(3,'Smartphones','Xiaomi');
INSERT INTO Brandname VALUES(4,'Smartphones','OnePlus');
INSERT INTO Brandname VALUES(5,'Laptops','Dell');
INSERT INTO Brandname VALUES(6,'Laptops','HP');
INSERT INTO Brandname VALUES(7,'Laptops','Lenovo');
INSERT INTO Brandname VALUES(8,'Laptops','ASUS');
INSERT INTO Brandname VALUES(9,'Tablets','iPads');
INSERT INTO Brandname VALUES(10,'Tablets','Android Tablets');
INSERT INTO Brandname VALUES(11,'Tablets','Windows Tablets');
INSERT INTO Brandname VALUES(12,'Cameras','Canon');
INSERT INTO Brandname VALUES(13,'Cameras','Nikon');
INSERT INTO Brandname VALUES(14,'Cameras','Sony');
INSERT INTO Brandname VALUES(15,'Cameras','GoPro');
INSERT INTO Brandname VALUES(16,'Wearable Devices','Apple');
INSERT INTO Brandname VALUES(17,'Wearable Devices','Fitbit');
INSERT INTO Brandname VALUES(18,'Wearable Devices','Garmin');
INSERT INTO Brandname VALUES(19,'Wearable Devices','Samsung');
INSERT INTO Brandname VALUES(20,'Audio Equipment','Bose');
INSERT INTO Brandname VALUES(21,'Audio Equipment','Sony');
INSERT INTO Brandname VALUES(22,'Audio Equipment','JBL');
INSERT INTO Brandname VALUES(23,'Audio Equipment','Sennheiser');
INSERT INTO Brandname VALUES(24,'Men''s Clothing','Nike');
INSERT INTO Brandname VALUES(25,'Men''s Clothing','Adidas');
INSERT INTO Brandname VALUES(26,'Men''s Clothing','Ralph Lauren');
INSERT INTO Brandname VALUES(27,'Men''s Clothing','Levi’s');
INSERT INTO Brandname VALUES(28,'Women''s Clothing','Zara');
INSERT INTO Brandname VALUES(29,'Women''s Clothing','H&M');
INSERT INTO Brandname VALUES(30,'Women''s Clothing','Gucci');
INSERT INTO Brandname VALUES(31,'Women''s Clothing','Prada');
INSERT INTO Brandname VALUES(32,'Footwear','Converse');
INSERT INTO Brandname VALUES(33,'Footwear','Puma');
INSERT INTO Brandname VALUES(34,'Footwear','Timberland');
INSERT INTO Brandname VALUES(35,'Footwear','Vans');
INSERT INTO Brandname VALUES(36,'Accessories','Ray-Ban');
INSERT INTO Brandname VALUES(37,'Accessories','Fossil');
INSERT INTO Brandname VALUES(38,'Accessories','Michael Kors');
INSERT INTO Brandname VALUES(39,'Accessories','Casio');
INSERT INTO Brandname VALUES(40,'Bags','Louis Vuitton');
INSERT INTO Brandname VALUES(41,'Bags','Coach');
INSERT INTO Brandname VALUES(42,'Bags','Tumi');
INSERT INTO Brandname VALUES(43,'Bags','Herschel');
INSERT INTO Brandname VALUES(44,'Furniture','IKEA');
INSERT INTO Brandname VALUES(45,'Furniture','Ashley Furniture');
INSERT INTO Brandname VALUES(46,'Furniture','West Elm');
INSERT INTO Brandname VALUES(47,'Furniture','La-Z-Boy');
INSERT INTO Brandname VALUES(48,'Kitchen Appliances','KitchenAid');
INSERT INTO Brandname VALUES(49,'Kitchen Appliances','Whirlpool');
INSERT INTO Brandname VALUES(50,'Kitchen Appliances','Cuisinart');
INSERT INTO Brandname VALUES(51,'Kitchen Appliances','Philips');
INSERT INTO Brandname VALUES(52,'Home Decor','Crate & Barrel');
INSERT INTO Brandname VALUES(53,'Home Decor','Pottery Barn');
INSERT INTO Brandname VALUES(54,'Home Decor','Anthropologie');
INSERT INTO Brandname VALUES(55,'Home Decor','Wayfair');
INSERT INTO Brandname VALUES(56,'Storage Solutions','Rubbermaid');
INSERT INTO Brandname VALUES(57,'Storage Solutions','Sterilite');
INSERT INTO Brandname VALUES(58,'Storage Solutions','The Container Store');
INSERT INTO Brandname VALUES(59,'Storage Solutions','IKEA');
CREATE TABLE IF NOT EXISTS "Inventory" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "styleCode" TEXT NOT NULL,
    "productType" TEXT,
    "category" TEXT,
    "name" TEXT,
    "status" TEXT,
    "dateCreated" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "dateUpdated" DATETIME,
    "agentEmail" TEXT,
    "brandname" TEXT,
    "collectionItem" BOOLEAN
);
INSERT INTO Inventory VALUES(1,'Style_2024-1-2-20-53-24','Accessories','Automotive','Suzuki Raider  150','Active',1708433604653,1726477502904,'Legitem2023@gmail.com','Android Tablets',0);
INSERT INTO Inventory VALUES(2,'Style_2024-1-2-20-54-0','Motorcycle Gear','Automotive','Kawasaki Versys 650','Active',1708433640345,1726103557675,'Legitem2023@gmail.com','Samsung',0);
INSERT INTO Inventory VALUES(3,'Style_2024-1-2-20-54-8','Car Accessories','Automotive','Dominar 400','Active',1708433648319,1726477548292,'Legitem2023@gmail.com','Nikon',0);
INSERT INTO Inventory VALUES(4,'Style_2024-1-2-20-57-9','Motorcycle Gear','Automotive','Honda','Active',1708433829559,1726103364231,'Legitem2023@gmail.com','Rubbermaid',0);
INSERT INTO Inventory VALUES(5,'Style_2024-1-2-20-57-13','Motorcycle Gear','Automotive','Honda Rebel','Active',1708433833048,1726101112465,'digitaloutofhome2019@gmail.com','IKEA',0);
INSERT INTO Inventory VALUES(6,'Style_2024-1-3-21-22-54','Motorcycle Gear','Automotive','Honda CB500','Active',1709126574162,1726103299803,'digitaloutofhome2019@gmail.com','Sennheiser',0);
INSERT INTO Inventory VALUES(7,'Style_2024-1-3-21-26-3','Car Accessories','Automotive','Kawasaki Ninja 400','Active',1709126763261,1726477589324,'digitaloutofhome2019@gmail.com','Sony',0);
INSERT INTO Inventory VALUES(8,'Style_2024-1-3-21-28-18','Motorcycle Gear','Automotive','Kawasaki ZH2','Active',1709126898109,1726562588714,'digitaloutofhome2019@gmail.com','Levi’s',0);
INSERT INTO Inventory VALUES(9,'Style_2024-1-3-21-32-18','Motorcycle Gear','Automotive','Ducati Diavel','Active',1709127138486,1726562559701,'digitaloutofhome2019@gmail.com','Adidas',0);
INSERT INTO Inventory VALUES(10,'Style_2024-2-5-20-19-11','Smartphones','Electronics','One Plus Mobile','Active',1709295551772,1726562642132,'Legitem2023@gmail.com','OnePlus',0);
INSERT INTO Inventory VALUES(11,'Style_2024-2-5-20-19-23','Board Games','Arts & Crafts','Short','Active',1709295563292,1726558529744,'Legitem2023@gmail.com','Coach',0);
INSERT INTO Inventory VALUES(12,'Style_2024-2-5-20-19-56','Bags','Fashion','Bag','Active',1709295596180,1726474277181,'Legitem2023@gmail.com','Fitbit',0);
INSERT INTO Inventory VALUES(13,'Style_2024-2-5-20-28-3','Sportswear','Fashion','Shoes','Active',1709296083327,1725854318378,'Legitem2023@gmail.com','Adidas',0);
INSERT INTO Inventory VALUES(14,'Style_2024-2-0-17-45-39','Makeup','Fashion','Lipstick','Active',1709459139728,1725854233069,'Legitem2023@gmail.com','Prada',0);
INSERT INTO Inventory VALUES(15,'Style_2024-2-0-17-45-52','Footwear','Fashion','Adidas Shoes','Active',1709459152166,1726814421450,'Legitem2023@gmail.com','Adidas',0);
INSERT INTO Inventory VALUES(16,'Style_2024-2-0-17-45-59','Laptops','Electronics','Lenovo Laptop','Active',1709459159668,1726814506370,'Legitem2023@gmail.com','Lenovo',0);
INSERT INTO Inventory VALUES(17,'Style_2024-5-5-13-32-43','Laptops','Electronics','ASUS Laptop','Active',1718343163234,1725843726762,'Legitem2023@gmail.com','ASUS',0);
INSERT INTO Inventory VALUES(18,'Style_2024-5-5-13-32-50','Smartphones','Electronics','Samsung Phone','Active',1718343170207,1725715481834,'Legitem2023@gmail.com','Samsung',0);
INSERT INTO Inventory VALUES(19,'Style_2024-7-6-13-19-35','Women''s Clothing','Fashion','T-Shirt Women','Active',1724476775349,1726796287577,'Legitem2023@gmail.com','Zara',0);
INSERT INTO Inventory VALUES(20,'Style_2024-7-6-13-19-48','Men''s Clothing','Fashion','T-Shirt Men','Active',1724476788090,1726796173239,'Legitem2023@gmail.com','Adidas',0);
INSERT INTO Inventory VALUES(21,'Style_2024-7-6-13-19-59','Women''s Clothing','Fashion','Jeep','Active',1724476799680,1725714644179,'Legitem2023@gmail.com','Zara',0);
INSERT INTO Inventory VALUES(22,'Style_2024-7-3-13-26-32','Laptops','Electronics','Lenovo','Active',1724822792242,1725714529347,'','Lenovo',0);
INSERT INTO Inventory VALUES(23,'Style_2024-8-1-9-49-37','Smartphones','Electronics','Samsung A51','Active',1725846577626,1725849410074,'Legitem2023@gmail.com','Samsung',0);
INSERT INTO Inventory VALUES(24,'Style_2024-8-1-9-50-49','Smartphones','Electronics','Samsung A15','Active',1725846649188,1725847283000,'Legitem2023@gmail.com','Samsung',0);
INSERT INTO Inventory VALUES(25,'Style_2024-8-1-9-51-53','Smartphones','Electronics','Samsung A72','Active',1725846713905,1725847229343,'Legitem2023@gmail.com','Samsung',0);
INSERT INTO Inventory VALUES(26,'Style_2024-8-1-9-57-21','Smartphones','Electronics','Lenovo','Active',1725847041013,1725847041013,'Legitem2023@gmail.com','Samsung',0);
INSERT INTO Inventory VALUES(27,'Style_2024-8-1-10-58-3','Smartphones','Electronics','IPhone 15','Active',1725850683798,1725850683798,'Legitem2023@gmail.com','Apple',0);
INSERT INTO Inventory VALUES(28,'Style_2024-8-1-11-52-52','Smartphones','Electronics','IPhone 15s','Active',1725853972622,1725853972622,'Legitem2023@gmail.com','Apple',0);
INSERT INTO Inventory VALUES(29,'Style_2024-8-1-13-29-31','Laptops','Electronics','Asus','Active',1725859771182,1725859771182,'Legitem2023@gmail.com','ASUS',0);
INSERT INTO Inventory VALUES(30,'Style_2024-8-3-18-34-29','Smartphones','Electronics','Samsung A71','Active',1726050869859,1726473644646,'Legitem2023@gmail.com','Samsung',0);
INSERT INTO Inventory VALUES(31,'Style_2024-8-4-9-15-39','Footwear','Fashion','Tshirt','Active',1726103739366,1726536433369,'Legitem2023@gmail.com','Nikon',0);
INSERT INTO Inventory VALUES(32,'Style_2024-8-2-11-40-15','Smartphones','Electronics','Short','Active',1726544415227,1726558433340,'Legitem2023@gmail.com','Samsung',0);
INSERT INTO Inventory VALUES(33,'Style_2024-8-2-11-43-39','Smartphones','Electronics','Phone','Active',1726544619054,1726556279396,'Legitem2023@gmail.com','Samsung',0);
INSERT INTO Inventory VALUES(34,'Style_2024-8-5-9-20-5','Smartphones','Electronics','Lenovo','Active',1726795205151,1726795205151,'Legitem2023@gmail.com','Apple',0);
CREATE TABLE IF NOT EXISTS "Inv_subImage" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "subImageRelationParent" INTEGER,
    "subImageRelationChild" INTEGER NOT NULL,
    "isVideo" BOOLEAN NOT NULL DEFAULT false,
    "ImagePath" TEXT,
    CONSTRAINT "Inv_subImage_subImageRelationChild_fkey" FOREIGN KEY ("subImageRelationChild") REFERENCES "ChildInventory" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);
INSERT INTO Inv_subImage VALUES(1,NULL,1,0,'Product-2024-1-2-20-58027.webp');
INSERT INTO Inv_subImage VALUES(2,NULL,1,0,'Product-2024-1-2-20-5909.webp');
INSERT INTO Inv_subImage VALUES(3,NULL,6,0,'Product-2024-1-2-21-6020.webp');
INSERT INTO Inv_subImage VALUES(4,NULL,2,0,'Product-2024-1-2-21-2200.webp');
INSERT INTO Inv_subImage VALUES(5,NULL,3,0,'Product-2024-1-2-22-3017.webp');
INSERT INTO Inv_subImage VALUES(6,NULL,4,0,'Product-2024-1-3-21-15024.webp');
INSERT INTO Inv_subImage VALUES(7,NULL,5,0,'Product-2024-1-3-21-18024.webp');
INSERT INTO Inv_subImage VALUES(8,NULL,7,0,'Product-2024-1-3-21-24021.webp');
INSERT INTO Inv_subImage VALUES(9,NULL,8,0,'Product-2024-1-3-21-26055.webp');
INSERT INTO Inv_subImage VALUES(10,NULL,9,0,'Product-2024-1-3-21-28044.webp');
INSERT INTO Inv_subImage VALUES(11,NULL,10,0,'Product-2024-1-3-21-32050.webp');
INSERT INTO Inv_subImage VALUES(12,NULL,4,0,'Product-2024-2-6-21-40045.webp');
INSERT INTO Inv_subImage VALUES(13,NULL,15,0,'Product-2024-5-5-10-57048.webp');
INSERT INTO Inv_subImage VALUES(14,NULL,15,0,'Product-2024-5-5-11-13058.webp');
INSERT INTO Inv_subImage VALUES(15,NULL,15,0,'Product-2024-5-5-11-17044.webp');
INSERT INTO Inv_subImage VALUES(16,NULL,15,0,'Product-2024-7-6-12-15026.webp');
INSERT INTO Inv_subImage VALUES(17,NULL,15,0,'Product-2024-7-6-12-19010.webp');
INSERT INTO Inv_subImage VALUES(18,NULL,15,0,'Product-2024-7-6-12-22056.webp');
INSERT INTO Inv_subImage VALUES(19,NULL,15,0,'Product-2024-7-6-12-26034.webp');
CREATE TABLE IF NOT EXISTS "AllowedDevices" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "macAddress" TEXT
);
CREATE TABLE IF NOT EXISTS "NumberOfViews" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "count" TEXT,
    "productCode" TEXT,
    "emailAddress" TEXT,
    "IpAddress" TEXT,
    "Country" TEXT,
    "dateVisited" TEXT
);
CREATE TABLE IF NOT EXISTS "WebsiteVisits" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "IpAddress" TEXT NOT NULL,
    "Country" TEXT NOT NULL,
    "dateVisited" TEXT NOT NULL
);
CREATE TABLE IF NOT EXISTS "CrowdMessages" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "Messages" TEXT,
    "Sender" TEXT,
    "dateSent" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);
INSERT INTO CrowdMessages VALUES('cc832893-2c56-4bee-88cd-f719bb30a73a','hey','Legitem2023@gmail.com',1726216840008);
INSERT INTO CrowdMessages VALUES('5df867a7-8db0-4f39-940d-ea22733fcf35','asasfasf','digitaloutofhome2019@gmail.com',1726279642102);
INSERT INTO CrowdMessages VALUES('1540659d-03bb-49a2-a8e3-42f71aa0e620','asfasf','Legitem2023@gmail.com',1726279649745);
INSERT INTO CrowdMessages VALUES('db05e218-4887-4ed0-a627-3ef2e73448df','gigi','digitaloutofhome2019@gmail.com',1726279657397);
INSERT INTO CrowdMessages VALUES('e0a41524-8cbd-41b2-95e6-3f5b024c6a9b','hoho','digitaloutofhome2019@gmail.com',1726279667235);
INSERT INTO CrowdMessages VALUES('a6044a93-59cb-4f64-bd79-60abddf14cce','sdgsg','Legitem2023@gmail.com',1726449132519);
INSERT INTO CrowdMessages VALUES('762644e5-0b02-41ce-b3dc-d820d14de505','sdgsdg','Legitem2023@gmail.com',1726452335328);
INSERT INTO CrowdMessages VALUES('3137bb18-736c-44f8-bb03-855d0538ed05','fdhdfhd','Legitem2023@gmail.com',1726452607956);
INSERT INTO CrowdMessages VALUES('2129c508-6dd0-4f0e-8c5b-10ac2e1c0e1b','dfhdfh','Legitem2023@gmail.com',1726452611351);
INSERT INTO CrowdMessages VALUES('4be08144-abf5-46b1-9da1-42b6379a954f','dfhdfh','Legitem2023@gmail.com',1726452613716);
INSERT INTO CrowdMessages VALUES('6799f635-5122-4cd2-b530-99da1ce231c5','asdfasf','Legitem2023@gmail.com',1726453241317);
INSERT INTO CrowdMessages VALUES('7773884e-4a80-421b-8b4f-1ae049a712c8','yow','Legitem2023@gmail.com',1726453245689);
INSERT INTO CrowdMessages VALUES('e90e638a-1dcb-4f98-9bf0-8437cc2814af','asfasf','Legitem2023@gmail.com',1726454013693);
INSERT INTO CrowdMessages VALUES('bd2fc411-31f8-43c2-98bf-789d368c9a43','sdsdd','Legitem2023@gmail.com',1726464897670);
INSERT INTO CrowdMessages VALUES('df74696a-42c2-46e3-bc4b-22478cf8d76d','tytyty','Legitem2023@gmail.com',1726464906283);
INSERT INTO CrowdMessages VALUES('9f23ba85-c871-4da1-886a-2cf825fcaf8a','676767','Legitem2023@gmail.com',1726464911354);
INSERT INTO CrowdMessages VALUES('0e7b8ad0-201d-473c-be44-2082594b800d','fgfgfg','Legitem2023@gmail.com',1726464997990);
INSERT INTO CrowdMessages VALUES('40963ec3-2755-4fa5-8266-bd6bc3ace06e','tytyty','Legitem2023@gmail.com',1726465007756);
INSERT INTO CrowdMessages VALUES('75887ebd-8797-444a-b6d6-f3e98811a06d','yyyyy','Legitem2023@gmail.com',1726465016114);
INSERT INTO CrowdMessages VALUES('297324c1-aa8f-4837-8d4c-7681f8941ba2','ssdsd','Legitem2023@gmail.com',1726465050635);
INSERT INTO CrowdMessages VALUES('aa1e8085-21e2-455d-9776-a35356432655','fgfgfg','Legitem2023@gmail.com',1726465057603);
INSERT INTO CrowdMessages VALUES('305d36b3-d5b9-4044-a8d7-6d735f5c5727','asfasfas','Legitem2023@gmail.com',1726465077264);
INSERT INTO CrowdMessages VALUES('f9c843e6-a013-4cf6-94a3-a116b957db5c','ghghgh','Legitem2023@gmail.com',1726465174164);
INSERT INTO CrowdMessages VALUES('a15f0bf7-23c2-424f-ba29-9603619c266c','uuuu','Legitem2023@gmail.com',1726465194822);
INSERT INTO CrowdMessages VALUES('91b3388a-aa58-4187-8e39-200f6dfb1762','ggdg','Legitem2023@gmail.com',1726465313769);
INSERT INTO CrowdMessages VALUES('e9f20834-1c60-4fd1-92be-ebbe6bf92c20','fhfh','Legitem2023@gmail.com',1726465348939);
INSERT INTO CrowdMessages VALUES('dfb54386-8bd4-430e-b816-e661ab839cec','dfgdfh','Legitem2023@gmail.com',1726465379121);
INSERT INTO CrowdMessages VALUES('877d275e-b071-402c-91b5-f5d9219d26ef','yuyu','Legitem2023@gmail.com',1726465423359);
INSERT INTO CrowdMessages VALUES('3d0ec957-4c9b-4116-a47b-ef9c1ce3e8a7','ghgh','Legitem2023@gmail.com',1726465465942);
INSERT INTO CrowdMessages VALUES('3ce66b7b-7c33-4c3e-a72a-a70e53ff406c','asdasd','Legitem2023@gmail.com',1726465484349);
INSERT INTO CrowdMessages VALUES('7fc1b107-683b-4fcc-be98-cfccbbd38744','asfasfasf','Legitem2023@gmail.com',1726465489643);
INSERT INTO CrowdMessages VALUES('ec90c677-7fe2-4dcf-a9d9-247b14c50d08','asfasf','Legitem2023@gmail.com',1726465502893);
INSERT INTO CrowdMessages VALUES('b03b74d1-ec08-4a70-bbcf-dfbb2a65ba19','asfasfasf','Legitem2023@gmail.com',1726465710799);
INSERT INTO CrowdMessages VALUES('9fae0673-7620-4d74-bdb3-3bf09c30cf77','909090','Legitem2023@gmail.com',1726465723403);
INSERT INTO CrowdMessages VALUES('69a4c68c-9fd4-47d8-aa08-9957a898c31f','ghgh','Legitem2023@gmail.com',1726465796983);
INSERT INTO CrowdMessages VALUES('85927081-5e13-4284-8832-9385fc2ee38e','hjhjhj','Legitem2023@gmail.com',1726465832065);
INSERT INTO CrowdMessages VALUES('270c15f2-2874-4f1b-9d69-f9e110a8af61','asdffa','Legitem2023@gmail.com',1726466031352);
INSERT INTO CrowdMessages VALUES('d131daa4-6036-4011-8aad-5afeae8f3381','afssfas','Legitem2023@gmail.com',1726466034153);
INSERT INTO CrowdMessages VALUES('57298f0f-166a-4a0b-846b-020c32ce0a18','asfasf','Legitem2023@gmail.com',1726466036132);
INSERT INTO CrowdMessages VALUES('bf1b86c5-cc4b-4679-a2f4-8827023349c7','asfasfasf','Legitem2023@gmail.com',1726466038340);
INSERT INTO CrowdMessages VALUES('c611bea7-8043-4b17-9e4a-a11372aed5b6','sdsdgs','Legitem2023@gmail.com',1726466063499);
INSERT INTO CrowdMessages VALUES('9d785b47-16a9-48b3-840e-dc5a4825bbfb','ghgh','Legitem2023@gmail.com',1726466135426);
INSERT INTO CrowdMessages VALUES('0fd1dcf7-3c4a-457a-a509-c68cdc763a38','asfasf','Legitem2023@gmail.com',1726466214286);
INSERT INTO CrowdMessages VALUES('223ca25c-eb29-43e2-ad9c-afc8dc2a4606','asfasf','Legitem2023@gmail.com',1726466216831);
INSERT INTO CrowdMessages VALUES('096527cc-ea6a-4ecb-853a-eb8591321407','ASFAS','Legitem2023@gmail.com',1726466344519);
INSERT INTO CrowdMessages VALUES('206ef3f6-a1f3-4171-9e9b-1660addf9651','yuyu','Legitem2023@gmail.com',1726466837970);
INSERT INTO CrowdMessages VALUES('df515b25-ba46-4f52-9b27-e269a8b0e66d','hjhjhj','Legitem2023@gmail.com',1726466848074);
INSERT INTO CrowdMessages VALUES('48b300ea-d34e-4161-b737-6f693d6de2b8','sdsdgsg','Legitem2023@gmail.com',1726466930553);
INSERT INTO CrowdMessages VALUES('5a0889ec-acad-4a29-bf81-4c1abd945b0d','rttrt','Legitem2023@gmail.com',1726466954348);
INSERT INTO CrowdMessages VALUES('49e57b0a-a667-47e5-a3f2-564d7d6736e4','ASASF','Legitem2023@gmail.com',1726467357232);
INSERT INTO CrowdMessages VALUES('57fab6b9-e8ec-4834-81f6-908a116efaab','ASFASF','Legitem2023@gmail.com',1726467420878);
INSERT INTO CrowdMessages VALUES('85b33114-5b8a-45d8-9b9e-8323aeeb958d','ASFASF','Legitem2023@gmail.com',1726467424186);
INSERT INTO CrowdMessages VALUES('e57d3d3e-6ec1-4129-9405-6c0712015d1d','ASFASF','Legitem2023@gmail.com',1726467432898);
INSERT INTO CrowdMessages VALUES('6ba1b37b-5ece-4c33-81ea-c79e3b261339','afasfa','Legitem2023@gmail.com',1726467574712);
INSERT INTO CrowdMessages VALUES('df5d7fcf-f335-461e-8540-04b80f97ef3f','asfasf','Legitem2023@gmail.com',1726467652503);
INSERT INTO CrowdMessages VALUES('1e35d915-2b82-40ea-b592-080609a4a47c','asfasf','Legitem2023@gmail.com',1726467660504);
INSERT INTO CrowdMessages VALUES('e2567b47-9ecd-4fce-86f6-dace33347beb','trurtu','Legitem2023@gmail.com',1726467665585);
INSERT INTO CrowdMessages VALUES('3da6ba6e-0f97-4d57-90e8-e3ad636adf67','asasf','Legitem2023@gmail.com',1726468303805);
INSERT INTO CrowdMessages VALUES('218719c3-0853-49be-800f-71ca1417947a','78788','Legitem2023@gmail.com',1726468314329);
INSERT INTO CrowdMessages VALUES('2154ac8b-dcd4-4cbe-9dcf-83bfcb9ba3af','sdgsdgsg','Legitem2023@gmail.com',1726468395927);
INSERT INTO CrowdMessages VALUES('8468ae9d-ef19-4ae3-9d22-1cde01dd5c3d','sdsdgdsg','Legitem2023@gmail.com',1726468441400);
INSERT INTO CrowdMessages VALUES('5e09ea5e-d419-4351-adf9-7d2bfbcbb99c','787878','Legitem2023@gmail.com',1726468445478);
INSERT INTO CrowdMessages VALUES('dfcdfc96-d101-4d75-8a5a-6fda126e60da','JKJK','Legitem2023@gmail.com',1726474553555);
INSERT INTO CrowdMessages VALUES('9ce4176b-df91-4eec-bbcd-2a825c0c8b41','UIUI','Legitem2023@gmail.com',1726474558002);
INSERT INTO CrowdMessages VALUES('5b0e4fbd-0087-4d43-b922-025b8e46eeb8','afas','',1726474802490);
INSERT INTO CrowdMessages VALUES('8530ef37-5669-4019-a5f8-d46c24a1ccb1','asfaf','',1726474806739);
INSERT INTO CrowdMessages VALUES('9b86a964-316b-4d3f-bcc0-e8eea3a2e7aa','sdsdsd','Legitem2023@gmail.com',1726474848682);
INSERT INTO CrowdMessages VALUES('e63d5e77-c4e0-4ecf-83b1-81e280e44eed','asfasf','Legitem2023@gmail.com',1726474961257);
INSERT INTO CrowdMessages VALUES('54fa7a5e-7972-4358-9bb6-3d96acccef33','ghghgh','Legitem2023@gmail.com',1726621658129);
INSERT INTO CrowdMessages VALUES('5f1dc318-49fb-470f-aa9f-126d027c0cbd','ghghgh','Legitem2023@gmail.com',1726621662025);
INSERT INTO CrowdMessages VALUES('4abb2fec-aaa6-4626-8a85-db9afde2f0b1','ghghgh','Legitem2023@gmail.com',1726621665062);
CREATE TABLE IF NOT EXISTS "AccountDetails" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "userId" TEXT NOT NULL,
    "fullname" TEXT,
    "storeName" TEXT,
    "contactNo" TEXT,
    "Address" TEXT,
    "accountEmail" TEXT NOT NULL,
    "defaultAddress" BOOLEAN NOT NULL DEFAULT false,
    CONSTRAINT "AccountDetails_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);
INSERT INTO AccountDetails VALUES(1,'6287949b-f712-42e3-add9-9a35afb7b406','Robert Marquez',NULL,'09153392816','#18 Ipil St Del rosario compound','Legitem2023@gmail.com',1);
INSERT INTO AccountDetails VALUES(2,'6287949b-f712-42e3-add9-9a35afb7b406','Kristine Saavedra',NULL,'09065962015','#16 4th St. Brgy West Tapinac Olongapo','Legitem2023@gmail.com',0);
INSERT INTO AccountDetails VALUES(12,'ccd83a0d-2ee8-4de8-bc5e-b2cd21354af5',NULL,NULL,NULL,NULL,'ezekiel282@yahoo.com',0);
INSERT INTO AccountDetails VALUES(13,'2fe14bc2-8040-4f8e-b655-c4d71a464f95','Robert S. Marquez','Diwata Trading','09153392813','#18 Ipil St Del rosario compound zzz','robert_sanco_marquez1988@yahoo.com',1);
INSERT INTO AccountDetails VALUES(14,'9a3a0368-3950-44cc-a4ec-551574a2b16c',NULL,NULL,NULL,NULL,'digitaloutofhome2019@gmail.com',1);
CREATE TABLE IF NOT EXISTS "OrderHistory" (
    "id" TEXT NOT NULL,
    "Image" TEXT,
    "Size" TEXT,
    "Color" TEXT,
    "productCode" TEXT,
    "emailAddress" TEXT,
    "TrackingNo" TEXT,
    "OrderNo" TEXT,
    "Quantity" INTEGER,
    "Price" REAL,
    "Address" TEXT,
    "Contact" TEXT,
    "agentEmail" TEXT,
    "OrderStatus" TEXT NOT NULL DEFAULT 'New Order',
    "StatusText" TEXT NOT NULL DEFAULT 'New Order',
    "dateCreated" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);
INSERT INTO OrderHistory VALUES('3cede4f4-3d95-477d-a10f-1128246f3f37','Product-2024-1-2-20-5909.webp','Unkown','Red','Rdr150001','Legitem2023@gmail.com','TRK-7TRK-UTRK-DTRK-9TRK-GTRK-LTRK-CTRK-LTRK-ZTRK-CTRK-CTRK-S','ODR-IODR-PODR-KODR-9ODR-OODR-PODR-CODR-0ODR-FODR-TODR-1ODR-X',1,96999.999999999999998,NULL,NULL,'Legitem2023@gmail.com','Delivered','Your Order Successfully Delivered',1724743806629);
INSERT INTO OrderHistory VALUES('26896099-0e87-42e5-a5ff-025ff3f51bc4','Product-2024-1-3-21-24021.webp','','Red','CB001','Legitem2023@gmail.com','TRK-9TRK-MTRK-5TRK-ZTRK-MTRK-OTRK-5TRK-0TRK-ITRK-2TRK-ATRK-8','ODR-2ODR-2ODR-BODR-FODR-YODR-5ODR-CODR-RODR-YODR-ZODR-0ODR-8',1,100000.0,NULL,NULL,'Legitem2023@gmail.com','Delivered','Your Order Successfully Delivered',1724745730650);
INSERT INTO OrderHistory VALUES('80033958-d7f6-44f3-942b-a97c2c04c3ce','Product-2024-1-3-21-26055.webp',NULL,NULL,NULL,'Legitem2023@gmail.com','TRK-9TRK-MTRK-5TRK-ZTRK-MTRK-OTRK-5TRK-0TRK-ITRK-2TRK-ATRK-8','ODR-2ODR-2ODR-BODR-FODR-YODR-5ODR-CODR-RODR-YODR-ZODR-0ODR-8',1,0.0,NULL,NULL,'Legitem2023@gmail.com','Delivered','Your Order Successfully Delivered',1724745730650);
INSERT INTO OrderHistory VALUES('f641e53e-ed45-4231-b34d-2014102111a6','Product-2024-1-2-22-3017.webp','','Black','DMR001','Legitem2023@gmail.com','TRK-9TRK-MTRK-5TRK-ZTRK-MTRK-OTRK-5TRK-0TRK-ITRK-2TRK-ATRK-8','ODR-2ODR-2ODR-BODR-FODR-YODR-5ODR-CODR-RODR-YODR-ZODR-0ODR-8',1,390000.0,NULL,NULL,'Legitem2023@gmail.com','Delivered','Your Order Successfully Delivered',1724745730650);
INSERT INTO OrderHistory VALUES('99b8acb4-7e9b-4d9b-92bf-c1981f88b9c4','Product-2024-1-2-20-5909.webp','Unkown','Red','Rdr150001','Legitem2023@gmail.com','TRK-FTRK-WTRK-JTRK-JTRK-QTRK-MTRK-OTRK-BTRK-FTRK-UTRK-XTRK-Z','ODR-CODR-TODR-GODR-WODR-RODR-UODR-HODR-BODR-NODR-YODR-7ODR-U',1,96999.999999999999998,NULL,NULL,'Legitem2023@gmail.com','Delivered','Your Order Successfully Delivered',1724829813480);
INSERT INTO OrderHistory VALUES('a6fdd70f-0ef7-457b-bf05-d3ae4b39199b','Product-2024-1-2-21-2200.webp','','Gray',NULL,'Legitem2023@gmail.com','TRK-9TRK-DTRK-HTRK-NTRK-4TRK-9TRK-ETRK-7TRK-PTRK-ATRK-UTRK-E','ODR-NODR-7ODR-GODR-LODR-8ODR-AODR-BODR-HODR-XODR-AODR-JODR-L',3,500000.0,NULL,NULL,NULL,'New Order','New Order',1724987679716);
INSERT INTO OrderHistory VALUES('9afa68f8-9c06-4a29-be90-ed86d37389ca','Product-2024-1-3-21-24021.webp','','Red','CB001','Legitem2023@gmail.com','TRK-9TRK-DTRK-HTRK-NTRK-4TRK-9TRK-ETRK-7TRK-PTRK-ATRK-UTRK-E','ODR-NODR-7ODR-GODR-LODR-8ODR-AODR-BODR-HODR-XODR-AODR-JODR-L',1,100000.0,NULL,NULL,'Legitem2023@gmail.com','Delivered','Your Order Successfully Delivered',1724987680257);
INSERT INTO OrderHistory VALUES('271e3f70-da26-49e3-b9ee-850c228a4a4d','Product-2024-1-2-20-5909.webp','Unkown','Red','Rdr150001','Legitem2023@gmail.com','TRK-9TRK-DTRK-HTRK-NTRK-4TRK-9TRK-ETRK-7TRK-PTRK-ATRK-UTRK-E','ODR-NODR-7ODR-GODR-LODR-8ODR-AODR-BODR-HODR-XODR-AODR-JODR-L',1,96999.999999999999998,NULL,NULL,'Legitem2023@gmail.com','Delivered','Your Order Successfully Delivered',1724987679716);
INSERT INTO OrderHistory VALUES('d7085266-2ea9-4c5a-b308-d64045e8d8d4','Product-2024-1-2-21-6020.webp','','Red','Rdr150002','Legitem2023@gmail.com','TRK-9TRK-DTRK-HTRK-NTRK-4TRK-9TRK-ETRK-7TRK-PTRK-ATRK-UTRK-E','ODR-NODR-7ODR-GODR-LODR-8ODR-AODR-BODR-HODR-XODR-AODR-JODR-L',1,96999.999999999999998,NULL,NULL,'Legitem2023@gmail.com','Delivered','Your Order Successfully Delivered',1724987679716);
INSERT INTO OrderHistory VALUES('002ea10d-3ec9-495f-8404-fb8321610efa','Product-2024-1-3-21-28044.webp','','Emerald Green','ZH2001','Legitem2023@gmail.com','TRK-9TRK-DTRK-HTRK-NTRK-4TRK-9TRK-ETRK-7TRK-PTRK-ATRK-UTRK-E','ODR-NODR-7ODR-GODR-LODR-8ODR-AODR-BODR-HODR-XODR-AODR-JODR-L',1,100000.0,NULL,NULL,'Legitem2023@gmail.com','Delivered','Your Order Successfully Delivered',1724987679716);
INSERT INTO OrderHistory VALUES('89a94ff7-21b1-41b7-af27-56a83605743a','Product-2024-1-3-21-24021.webp','','Red','CB001','Legitem2023@gmail.com','TRK-LTRK-ITRK-ATRK-1TRK-9TRK-5TRK-CTRK-STRK-QTRK-9TRK-RTRK-D','ODR-2ODR-3ODR-PODR-HODR-QODR-YODR-SODR-1ODR-4ODR-HODR-KODR-2',1,100000.0,NULL,NULL,'Legitem2023@gmail.com','Delivered','Your Order Successfully Delivered',1724988920966);
INSERT INTO OrderHistory VALUES('ffeedab4-15ba-4ec1-8822-7cc75a609006','Product-2024-2-6-21-40045.webp','','Red',NULL,'Legitem2023@gmail.com','TRK-LTRK-ITRK-ATRK-1TRK-9TRK-5TRK-CTRK-STRK-QTRK-9TRK-RTRK-D','ODR-2ODR-3ODR-PODR-HODR-QODR-YODR-SODR-1ODR-4ODR-HODR-KODR-2',1,1000000.0,NULL,NULL,NULL,'New Order','New Order',1724988920978);
INSERT INTO OrderHistory VALUES('e40d51d6-f4a8-4819-9b53-1756bb039e79','Product-2024-1-2-20-5909.webp','Unkown','Red','Rdr150001','Legitem2023@gmail.com','TRK-LTRK-ITRK-ATRK-1TRK-9TRK-5TRK-CTRK-STRK-QTRK-9TRK-RTRK-D','ODR-2ODR-3ODR-PODR-HODR-QODR-YODR-SODR-1ODR-4ODR-HODR-KODR-2',1,96999.999999999999998,NULL,NULL,'Legitem2023@gmail.com','Delivered','Your Order Successfully Delivered',1724988920922);
INSERT INTO OrderHistory VALUES('40e40945-0135-4b58-bca1-837f8023f065','Product-2024-1-2-20-5909.webp','Unkown','Red','Rdr150001','Legitem2023@gmail.com','TRK-FTRK-ATRK-4TRK-STRK-YTRK-JTRK-BTRK-ITRK-XTRK-2TRK-3TRK-W','ODR-TODR-TODR-LODR-5ODR-4ODR-PODR-9ODR-2ODR-ZODR-FODR-0ODR-P',1,96999.999999999999998,NULL,NULL,'Legitem2023@gmail.com','Delivered','Your Order Successfully Delivered',1724993750759);
INSERT INTO OrderHistory VALUES('15da9e9b-f1d3-4205-882e-609196b7c417','Product-2024-2-6-21-40045.webp','','Red',NULL,'Legitem2023@gmail.com','TRK-FTRK-ATRK-4TRK-STRK-YTRK-JTRK-BTRK-ITRK-XTRK-2TRK-3TRK-W','ODR-TODR-TODR-LODR-5ODR-4ODR-PODR-9ODR-2ODR-ZODR-FODR-0ODR-P',4,1000000.0,NULL,NULL,NULL,'New Order','New Order',1724993750760);
INSERT INTO OrderHistory VALUES('d229729b-e261-40e1-98d3-703305099a53','Product-2024-1-3-21-24021.webp','','Red','CB001','Legitem2023@gmail.com','TRK-FTRK-ATRK-4TRK-STRK-YTRK-JTRK-BTRK-ITRK-XTRK-2TRK-3TRK-W','ODR-TODR-TODR-LODR-5ODR-4ODR-PODR-9ODR-2ODR-ZODR-FODR-0ODR-P',2,100000.0,NULL,NULL,'Legitem2023@gmail.com','Delivered','Your Order Successfully Delivered',1724993750858);
INSERT INTO OrderHistory VALUES('1a4bca2c-a6ce-4712-bdaa-b86d69453a11','Product-2024-1-3-21-32050.webp','','Red','DCT001','Legitem2023@gmail.com','TRK-FTRK-ATRK-4TRK-STRK-YTRK-JTRK-BTRK-ITRK-XTRK-2TRK-3TRK-W','ODR-TODR-TODR-LODR-5ODR-4ODR-PODR-9ODR-2ODR-ZODR-FODR-0ODR-P',2,1000000.0,NULL,NULL,'Legitem2023@gmail.com','Delivered','Your Order Successfully Delivered',1724993750787);
INSERT INTO OrderHistory VALUES('fcecbfe8-6373-4862-b1a4-72ac2f26569f','Product-2024-1-2-21-6020.webp','','Red','Rdr150002','Legitem2023@gmail.com','TRK-3TRK-JTRK-1TRK-JTRK-FTRK-WTRK-DTRK-CTRK-9TRK-STRK-RTRK-9','ODR-5ODR-HODR-ZODR-MODR-RODR-2ODR-VODR-3ODR-EODR-CODR-MODR-N',1,96999.999999999999998,NULL,NULL,'Legitem2023@gmail.com','Delivered','Your Order Successfully Delivered',1724994743954);
INSERT INTO OrderHistory VALUES('987a836c-5b3f-4ea7-8f08-85a524ad3555','Product-2024-1-3-21-24021.webp','','Red','CB001','Legitem2023@gmail.com','TRK-3TRK-JTRK-1TRK-JTRK-FTRK-WTRK-DTRK-CTRK-9TRK-STRK-RTRK-9','ODR-5ODR-HODR-ZODR-MODR-RODR-2ODR-VODR-3ODR-EODR-CODR-MODR-N',1,100000.0,NULL,NULL,'Legitem2023@gmail.com','Delivered','Your Order Successfully Delivered',1724994743955);
INSERT INTO OrderHistory VALUES('b9b063de-86df-4307-8e34-2de85bbd30c4','Product-2024-1-3-21-18024.webp','','Gray',NULL,'Legitem2023@gmail.com','TRK-3TRK-JTRK-1TRK-JTRK-FTRK-WTRK-DTRK-CTRK-9TRK-STRK-RTRK-9','ODR-5ODR-HODR-ZODR-MODR-RODR-2ODR-VODR-3ODR-EODR-CODR-MODR-N',3,1000000.0,NULL,NULL,NULL,'New Order','New Order',1724994743954);
INSERT INTO OrderHistory VALUES('6f4a3e94-aa91-46cf-8829-40fd5cb9dedb','Product-2024-1-3-21-28044.webp','','Emerald Green','ZH2001','Legitem2023@gmail.com','TRK-XTRK-UTRK-BTRK-8TRK-HTRK-6TRK-UTRK-RTRK-TTRK-YTRK-2TRK-L','ODR-NODR-FODR-YODR-VODR-DODR-9ODR-YODR-KODR-7ODR-RODR-OODR-P',1,100000.0,NULL,NULL,'Legitem2023@gmail.com','Delivered','Your Order Successfully Delivered',1724995285075);
INSERT INTO OrderHistory VALUES('26cb5e7b-4aea-4c7a-a527-b64b437d3fef','Product-2024-1-2-21-2200.webp','','Gray','VRSYS0011','Legitem2023@gmail.com','TRK-PTRK-WTRK-STRK-QTRK-WTRK-STRK-LTRK-LTRK-MTRK-ETRK-8TRK-B','ODR-JODR-CODR-ZODR-YODR-3ODR-7ODR-IODR-5ODR-UODR-JODR-BODR-I',1,500000.0,NULL,NULL,'Legitem2023@gmail.com','Delivered','Your Order Successfully Delivered',1724995306953);
INSERT INTO OrderHistory VALUES('1cd40bf9-1ce4-416b-a24e-23fe80c59dac','Product-2024-1-2-20-5909.webp','Unkown','Red','Rdr150001','Legitem2023@gmail.com','TRK-PTRK-ZTRK-PTRK-PTRK-KTRK-7TRK-DTRK-0TRK-ETRK-ETRK-CTRK-E','ODR-VODR-6ODR-CODR-8ODR-MODR-WODR-QODR-5ODR-XODR-JODR-FODR-L',1,96999.999999999999998,NULL,NULL,'Legitem2023@gmail.com','Delivered','Your Order Successfully Delivered',1724995324892);
INSERT INTO OrderHistory VALUES('b3c68fd6-307d-453f-94c6-e25018facd2d','Product-2024-1-2-21-6020.webp','','Red','Rdr150002','Legitem2023@gmail.com','TRK-ETRK-MTRK-6TRK-6TRK-2TRK-XTRK-ITRK-4TRK-UTRK-NTRK-3TRK-M','ODR-PODR-8ODR-QODR-4ODR-5ODR-ZODR-PODR-PODR-BODR-HODR-CODR-1',1,96999.999999999999998,NULL,NULL,'Legitem2023@gmail.com','Delivered','Your Order Successfully Delivered',1724995804177);
INSERT INTO OrderHistory VALUES('bac3054f-ea09-4cdc-af0f-f82805120a32','Product-2024-1-2-20-5909.webp','Unkown','Red','Rdr150001','Legitem2023@gmail.com','TRK-GTRK-MTRK-JTRK-VTRK-ETRK-GTRK-1TRK-BTRK-KTRK-DTRK-ATRK-V','ODR-AODR-VODR-SODR-6ODR-VODR-8ODR-2ODR-RODR-QODR-9ODR-BODR-1',1,96999.999999999999998,NULL,NULL,'Legitem2023@gmail.com','Packed','Your order is Packed!',1724995850251);
INSERT INTO OrderHistory VALUES('3dd93b04-2e3b-453e-ad62-053fd3e73923','Product-2024-1-3-21-24021.webp','','Red','CB001','Legitem2023@gmail.com','TRK-GTRK-MTRK-JTRK-VTRK-ETRK-GTRK-1TRK-BTRK-KTRK-DTRK-ATRK-V','ODR-AODR-VODR-SODR-6ODR-VODR-8ODR-2ODR-RODR-QODR-9ODR-BODR-1',1,100000.0,NULL,NULL,'Legitem2023@gmail.com','Packed','Your order is Packed!',1724995850252);
INSERT INTO OrderHistory VALUES('922a7a44-5375-48a7-a39a-3d7195d44c46','Product-2024-1-2-20-5909.webp','Unkown','Red','Rdr150001','Legitem2023@gmail.com','TRK-PTRK-BTRK-TTRK-YTRK-ETRK-ATRK-QTRK-7TRK-ITRK-MTRK-CTRK-Q','ODR-XODR-8ODR-OODR-NODR-SODR-IODR-QODR-3ODR-AODR-CODR-WODR-P',1,96999.999999999999998,NULL,NULL,'Legitem2023@gmail.com','Recieved','Your order has received and on process',1724996125615);
INSERT INTO OrderHistory VALUES('c2e9c4d2-f8f7-46f9-9cb9-f836225de509','Product-2024-1-3-21-28044.webp','','Emerald Green',NULL,'Legitem2023@gmail.com','TRK-PTRK-BTRK-TTRK-YTRK-ETRK-ATRK-QTRK-7TRK-ITRK-MTRK-CTRK-Q','ODR-XODR-8ODR-OODR-NODR-SODR-IODR-QODR-3ODR-AODR-CODR-WODR-P',4,100000.0,NULL,NULL,NULL,'New Order','New Order',1724996125615);
INSERT INTO OrderHistory VALUES('7a7f5ccc-e685-4c56-8876-681b99c55693','Product-2024-1-3-21-24021.webp','','Red','CB001','Legitem2023@gmail.com','TRK-PTRK-BTRK-TTRK-YTRK-ETRK-ATRK-QTRK-7TRK-ITRK-MTRK-CTRK-Q','ODR-XODR-8ODR-OODR-NODR-SODR-IODR-QODR-3ODR-AODR-CODR-WODR-P',1,100000.0,NULL,NULL,'Legitem2023@gmail.com','Recieved','Your order has received and on process',1724996125615);
INSERT INTO OrderHistory VALUES('2a5c4f34-f3e7-4114-865c-42d45605a2a7','Product-2024-1-3-21-32050.webp','','Red','DCT001','Legitem2023@gmail.com','TRK-WTRK-TTRK-MTRK-OTRK-7TRK-3TRK-2TRK-ETRK-STRK-QTRK-RTRK-Z','ODR-BODR-5ODR-AODR-0ODR-QODR-HODR-4ODR-QODR-ZODR-TODR-GODR-U',1,1000000.0,NULL,NULL,'Legitem2023@gmail.com','Recieved','Your order has received and on process',1725001411186);
INSERT INTO OrderHistory VALUES('2cda1af7-b543-455d-90fe-3debc82c8572','Product-2024-1-3-21-24021.webp','','Red','CB001','Legitem2023@gmail.com','TRK-WTRK-TTRK-MTRK-OTRK-7TRK-3TRK-2TRK-ETRK-STRK-QTRK-RTRK-Z','ODR-BODR-5ODR-AODR-0ODR-QODR-HODR-4ODR-QODR-ZODR-TODR-GODR-U',1,100000.0,NULL,NULL,'Legitem2023@gmail.com','Recieved','Your order has received and on process',1725001411216);
INSERT INTO OrderHistory VALUES('b79171da-ee07-4661-9e30-6b4b49f000d1','Product-2024-1-2-20-5909.webp','Unkown','Red','Rdr150001','Legitem2023@gmail.com','TRK-WTRK-TTRK-MTRK-OTRK-7TRK-3TRK-2TRK-ETRK-STRK-QTRK-RTRK-Z','ODR-BODR-5ODR-AODR-0ODR-QODR-HODR-4ODR-QODR-ZODR-TODR-GODR-U',2,96999.999999999999998,NULL,NULL,'Legitem2023@gmail.com','Recieved','Your order has received and on process',1725001411187);
INSERT INTO OrderHistory VALUES('0ecd589e-b10b-47b2-bf3a-0843b96e8be6','Product-2024-1-2-21-2200.webp','','Gray','VRSYS0011','Legitem2023@gmail.com','TRK-ITRK-STRK-1TRK-KTRK-JTRK-3TRK-NTRK-TTRK-BTRK-STRK-KTRK-Z','ODR-AODR-ZODR-4ODR-PODR-LODR-9ODR-VODR-VODR-6ODR-XODR-9ODR-T',1,500000.0,NULL,NULL,'Legitem2023@gmail.com','Recieved','Your order has received and on process',1725002242910);
INSERT INTO OrderHistory VALUES('ecfc80cf-fd72-4fb2-b970-3552308bef6e','Product-2024-2-6-21-40045.webp','','Red',NULL,'Legitem2023@gmail.com','TRK-ITRK-STRK-1TRK-KTRK-JTRK-3TRK-NTRK-TTRK-BTRK-STRK-KTRK-Z','ODR-AODR-ZODR-4ODR-PODR-LODR-9ODR-VODR-VODR-6ODR-XODR-9ODR-T',15,1000000.0,NULL,NULL,NULL,'New Order','New Order',1725002242910);
INSERT INTO OrderHistory VALUES('f0a02af7-e0f7-46d3-8c62-138cc8d110da','Product-2024-1-2-20-5909.webp','Unkown','Red','Rdr150001','Legitem2023@gmail.com','TRK-ITRK-STRK-1TRK-KTRK-JTRK-3TRK-NTRK-TTRK-BTRK-STRK-KTRK-Z','ODR-AODR-ZODR-4ODR-PODR-LODR-9ODR-VODR-VODR-6ODR-XODR-9ODR-T',2,96999.999999999999998,NULL,NULL,'Legitem2023@gmail.com','Recieved','Your order has received and on process',1725002242910);
INSERT INTO OrderHistory VALUES('acf36e0f-40bb-4864-b83f-bb95d6b15813','Product-2024-1-2-22-3017.webp','','Black','DMR001','Legitem2023@gmail.com','TRK-WTRK-5TRK-BTRK-STRK-LTRK-RTRK-KTRK-STRK-FTRK-GTRK-PTRK-J','ODR-5ODR-FODR-UODR-8ODR-QODR-BODR-FODR-XODR-CODR-RODR-MODR-2',1,390000.0,NULL,NULL,'Legitem2023@gmail.com','Recieved','Your order has received and on process',1725003752954);
INSERT INTO OrderHistory VALUES('c673aa67-0ab2-4585-ac19-3e71e0126354','Product-2024-1-2-21-6020.webp','','Red','Rdr150002','Legitem2023@gmail.com','TRK-WTRK-5TRK-BTRK-STRK-LTRK-RTRK-KTRK-STRK-FTRK-GTRK-PTRK-J','ODR-5ODR-FODR-UODR-8ODR-QODR-BODR-FODR-XODR-CODR-RODR-MODR-2',1,96999.999999999999998,NULL,NULL,'Legitem2023@gmail.com','Recieved','Your order has received and on process',1725003753174);
INSERT INTO OrderHistory VALUES('bac60839-2438-4075-a571-be72e2a42c09','Product-2024-1-3-21-24021.webp','','Red','CB001','Legitem2023@gmail.com','TRK-WTRK-5TRK-BTRK-STRK-LTRK-RTRK-KTRK-STRK-FTRK-GTRK-PTRK-J','ODR-5ODR-FODR-UODR-8ODR-QODR-BODR-FODR-XODR-CODR-RODR-MODR-2',2,100000.0,NULL,NULL,'Legitem2023@gmail.com','Recieved','Your order has received and on process',1725003753563);
INSERT INTO OrderHistory VALUES('5cf01c4b-d43e-4368-ac6c-d23b6160b67a','Product-2024-1-3-21-32050.webp','','Red','DCT001','Legitem2023@gmail.com','TRK-WTRK-5TRK-BTRK-STRK-LTRK-RTRK-KTRK-STRK-FTRK-GTRK-PTRK-J','ODR-5ODR-FODR-UODR-8ODR-QODR-BODR-FODR-XODR-CODR-RODR-MODR-2',5,1000000.0,NULL,NULL,'Legitem2023@gmail.com','Recieved','Your order has received and on process',1725003752954);
INSERT INTO OrderHistory VALUES('0243e028-cc2b-4576-a6b2-3c64992d4415','Product-2024-1-2-21-2200.webp','','Gray','VRSYS0011','Legitem2023@gmail.com','TRK-WTRK-5TRK-BTRK-STRK-LTRK-RTRK-KTRK-STRK-FTRK-GTRK-PTRK-J','ODR-5ODR-FODR-UODR-8ODR-QODR-BODR-FODR-XODR-CODR-RODR-MODR-2',3,500000.0,NULL,NULL,'Legitem2023@gmail.com','Recieved','Your order has received and on process',1725003752954);
INSERT INTO OrderHistory VALUES('84e63e73-6a0b-43d3-a6e1-66323db3931f','Product-2024-1-2-21-2200.webp','','Gray',NULL,'Legitem2023@gmail.com','TRK-WTRK-5TRK-BTRK-STRK-LTRK-RTRK-KTRK-STRK-FTRK-GTRK-PTRK-J','ODR-5ODR-FODR-UODR-8ODR-QODR-BODR-FODR-XODR-CODR-RODR-MODR-2',5,500000.0,NULL,NULL,NULL,'New Order','New Order',1725003752954);
INSERT INTO OrderHistory VALUES('5dd44673-98a6-4de6-b133-0f053553036d','Product-2024-1-2-20-5909.webp','Unkown','Red','Rdr150001','ezekiel282@yahoo.com','TRK-KTRK-XTRK-FTRK-LTRK-UTRK-8TRK-XTRK-LTRK-9TRK-5TRK-ETRK-B','ODR-EODR-JODR-SODR-IODR-9ODR-IODR-KODR-XODR-IODR-4ODR-RODR-5',1,96999.999999999999998,NULL,NULL,'Legitem2023@gmail.com','Recieved','Your order has received and on process',1725081337354);
INSERT INTO OrderHistory VALUES('ccfaf42e-90c6-466f-b5b2-cbe12e818907','Product-2024-1-2-20-5909.webp','Unkown','Red','Rdr150001','Legitem2023@gmail.com','TRK-STRK-9TRK-RTRK-KTRK-HTRK-ETRK-CTRK-1TRK-ZTRK-KTRK-XTRK-U','ODR-9ODR-FODR-JODR-PODR-OODR-RODR-6ODR-JODR-BODR-AODR-AODR-W',2,96999.999999999999998,NULL,NULL,'Legitem2023@gmail.com','Recieved','Your order has received and on process',1725106488236);
INSERT INTO OrderHistory VALUES('7141fa41-9ffc-4483-b23a-417f0794ddc2','Product-2024-1-2-20-5909.webp','Unkown','Red','Rdr150001','Legitem2023@gmail.com','TRK-BTRK-WTRK-DTRK-6TRK-DTRK-ATRK-4TRK-JTRK-3TRK-STRK-BTRK-O','ODR-6ODR-FODR-7ODR-RODR-YODR-MODR-MODR-EODR-8ODR-CODR-AODR-X',4,96999.999999999999998,NULL,NULL,'Legitem2023@gmail.com','Recieved','Your order has received and on process',1725162399825);
INSERT INTO OrderHistory VALUES('37d91f63-05f8-46a3-9fcd-6c54028fc722','Product-2024-1-3-21-32050.webp','','Red','DCT001','Legitem2023@gmail.com','TRK-7TRK-PTRK-RTRK-FTRK-JTRK-9TRK-JTRK-LTRK-STRK-LTRK-BTRK-X','ODR-3ODR-PODR-8ODR-HODR-7ODR-3ODR-YODR-RODR-3ODR-KODR-WODR-U',3,1000000.0,NULL,NULL,'Legitem2023@gmail.com','Recieved','Your order has received and on process',1725164926351);
INSERT INTO OrderHistory VALUES('392936e9-2968-425a-b8fe-1fc4ae22dfe1','Product-2024-1-2-21-6020.webp','','Red','Rdr150002','Legitem2023@gmail.com','TRK-7TRK-PTRK-RTRK-FTRK-JTRK-9TRK-JTRK-LTRK-STRK-LTRK-BTRK-X','ODR-3ODR-PODR-8ODR-HODR-7ODR-3ODR-YODR-RODR-3ODR-KODR-WODR-U',12,96999.999999999999998,NULL,NULL,'Legitem2023@gmail.com','Recieved','Your order has received and on process',1725164926351);
INSERT INTO OrderHistory VALUES('5155d8ab-b454-4470-aaf0-3447487ed94b','Product-2024-1-2-20-5909.webp','Unkown','Red','Rdr150001','Legitem2023@gmail.com','TRK-4TRK-PTRK-YTRK-4TRK-DTRK-3TRK-GTRK-0TRK-7TRK-4TRK-VTRK-B','ODR-FODR-0ODR-5ODR-FODR-VODR-6ODR-4ODR-MODR-QODR-GODR-8ODR-C',1,96999.999999999999998,NULL,NULL,'Legitem2023@gmail.com','Recieved','Your order has received and on process',1725327759926);
INSERT INTO OrderHistory VALUES('770b4726-b18f-48eb-8b22-a54b32d30cdc','Product-2024-1-2-20-5909.webp','Unkown','Red','Rdr150001','Legitem2023@gmail.com','TRK-DTRK-3TRK-1TRK-YTRK-ITRK-YTRK-MTRK-KTRK-KTRK-QTRK-1TRK-K','ODR-RODR-KODR-YODR-HODR-WODR-9ODR-TODR-YODR-0ODR-7ODR-NODR-M',1,96999.999999999999998,NULL,NULL,'Legitem2023@gmail.com','Recieved','Your order has received and on process',1725328884468);
INSERT INTO OrderHistory VALUES('4e7be396-897e-48fd-9354-bda563947672','Product-2024-1-2-20-5909.webp','Unkown','Red','Rdr150001','Legitem2023@gmail.com','TRK-ZTRK-9TRK-QTRK-ATRK-STRK-4TRK-UTRK-ETRK-DTRK-NTRK-PTRK-3','ODR-JODR-0ODR-EODR-CODR-LODR-XODR-5ODR-TODR-OODR-JODR-MODR-R',1,96999.999999999999998,NULL,NULL,'Legitem2023@gmail.com','Recieved','Your order has received and on process',1725329021315);
INSERT INTO OrderHistory VALUES('bc229375-a86d-4813-8f06-bc6473c46e6d','Product-2024-1-2-21-6020.webp','','Red','Rdr150002','Legitem2023@gmail.com','TRK-WTRK-2TRK-PTRK-UTRK-FTRK-1TRK-TTRK-NTRK-2TRK-GTRK-FTRK-8','ODR-MODR-7ODR-SODR-6ODR-BODR-WODR-LODR-WODR-YODR-WODR-FODR-X',1,96999.999999999999998,NULL,NULL,'Legitem2023@gmail.com','Recieved','Your order has received and on process',1725329159693);
INSERT INTO OrderHistory VALUES('76282316-a3c3-4011-9fa4-162b00eb905a','Product-2024-1-2-21-6020.webp','','Red','Rdr150002','Legitem2023@gmail.com','TRK-OTRK-UTRK-STRK-VTRK-BTRK-WTRK-1TRK-WTRK-TTRK-YTRK-3TRK-S','ODR-GODR-FODR-4ODR-YODR-LODR-JODR-QODR-1ODR-WODR-9ODR-KODR-P',1,96999.999999999999998,NULL,NULL,'Legitem2023@gmail.com','Recieved','Your order has received and on process',1725329245300);
INSERT INTO OrderHistory VALUES('0306ea05-38fd-4507-a4a5-9949e52d132a','Product-2024-1-2-21-6020.webp','','Red','Rdr150002','Legitem2023@gmail.com','TRK-BTRK-BTRK-7TRK-2TRK-ZTRK-FTRK-7TRK-GTRK-QTRK-UTRK-1TRK-L','ODR-7ODR-9ODR-WODR-UODR-ZODR-VODR-8ODR-HODR-IODR-HODR-PODR-J',1,96999.999999999999998,NULL,NULL,'Legitem2023@gmail.com','Recieved','Your order has received and on process',1725329271942);
INSERT INTO OrderHistory VALUES('44a44627-1e94-4268-8aec-b225d4c2f316','Product-2024-1-2-21-6020.webp','','Red','Rdr150002','Legitem2023@gmail.com','TRK-BTRK-ATRK-STRK-DTRK-BTRK-GTRK-6TRK-ETRK-YTRK-6TRK-XTRK-2','ODR-RODR-SODR-OODR-4ODR-4ODR-CODR-UODR-7ODR-HODR-4ODR-SODR-U',1,96999.999999999999998,NULL,NULL,'Legitem2023@gmail.com','Recieved','Your order has received and on process',1725329508866);
INSERT INTO OrderHistory VALUES('bea2658b-b9c5-4b30-a2d5-f1fd1477d94d','Product-2024-1-2-20-5909.webp','Unkown','Red','Rdr150001','Legitem2023@gmail.com','TRK-GTRK-GTRK-CTRK-RTRK-HTRK-2TRK-MTRK-QTRK-NTRK-ATRK-8TRK-2','ODR-YODR-YODR-YODR-9ODR-AODR-4ODR-BODR-FODR-GODR-XODR-VODR-W',1,96999.999999999999998,NULL,NULL,'Legitem2023@gmail.com','Recieved','Your order has received and on process',1725329596748);
INSERT INTO OrderHistory VALUES('6b129138-1e79-4ea9-85a0-6b1a431970fd','Product-2024-1-2-20-5909.webp','Unkown','Red','Rdr150001','Legitem2023@gmail.com','TRK-WTRK-3TRK-TTRK-DTRK-KTRK-HTRK-KTRK-QTRK-VTRK-ZTRK-5TRK-D','ODR-LODR-1ODR-VODR-QODR-5ODR-VODR-GODR-8ODR-OODR-EODR-9ODR-G',1,96999.999999999999998,NULL,NULL,'Legitem2023@gmail.com','Recieved','Your order has received and on process',1725329887664);
INSERT INTO OrderHistory VALUES('12d4d6c7-aa23-48f1-982a-27a556c079d6','Product-2024-1-2-20-5909.webp','Unkown','Red','Rdr150001','Legitem2023@gmail.com','TRK-OTRK-ETRK-LTRK-ETRK-BTRK-FTRK-0TRK-VTRK-2TRK-BTRK-XTRK-N','ODR-GODR-4ODR-5ODR-LODR-ZODR-EODR-4ODR-2ODR-HODR-SODR-KODR-B',1,96999.999999999999998,NULL,NULL,'Legitem2023@gmail.com','Recieved','Your order has received and on process',1725329928429);
INSERT INTO OrderHistory VALUES('4f05298f-9f3f-468b-a8c6-aac041faaa96','Product-2024-1-2-21-6020.webp','','Red','Rdr150002','Legitem2023@gmail.com','TRK-LTRK-ETRK-JTRK-6TRK-ZTRK-FTRK-RTRK-GTRK-FTRK-GTRK-YTRK-D','ODR-WODR-ZODR-WODR-NODR-EODR-4ODR-EODR-1ODR-9ODR-EODR-QODR-9',1,96999.999999999999998,NULL,NULL,'Legitem2023@gmail.com','Recieved','Your order has received and on process',1725332175980);
INSERT INTO OrderHistory VALUES('a02bd8c3-0a69-4e71-810e-297c8b86c393','Product-2024-1-2-21-6020.webp','','Red','Rdr150002','Legitem2023@gmail.com','TRK-5TRK-LTRK-7TRK-5TRK-XTRK-PTRK-JTRK-JTRK-HTRK-DTRK-6TRK-5','ODR-7ODR-XODR-SODR-MODR-PODR-TODR-RODR-SODR-FODR-AODR-HODR-5',1,96999.999999999999998,NULL,NULL,'Legitem2023@gmail.com','Recieved','Your order has received and on process',1725332284605);
INSERT INTO OrderHistory VALUES('20b57e53-4d29-47d8-b28d-2c83e03bfb11','Product-2024-1-2-21-2200.webp','','Gray','VRSYS0011','Legitem2023@gmail.com','TRK-9TRK-4TRK-DTRK-5TRK-6TRK-2TRK-LTRK-8TRK-DTRK-UTRK-7TRK-X','ODR-HODR-SODR-NODR-0ODR-2ODR-UODR-GODR-HODR-4ODR-SODR-5ODR-J',1,500000.0,NULL,NULL,'Legitem2023@gmail.com','Recieved','Your order has received and on process',1725332343357);
INSERT INTO OrderHistory VALUES('8cd02df6-017b-42da-8628-91dee23599d8','Product-2024-1-2-20-5909.webp','Unkown','Red','Rdr150001','Legitem2023@gmail.com','TRK-0TRK-FTRK-WTRK-XTRK-TTRK-6TRK-6TRK-BTRK-ETRK-TTRK-9TRK-V','ODR-WODR-WODR-LODR-6ODR-7ODR-KODR-QODR-1ODR-5ODR-GODR-HODR-K',1,96999.999999999999998,NULL,NULL,'Legitem2023@gmail.com','Recieved','Your order has received and on process',1725332582023);
INSERT INTO OrderHistory VALUES('e61150bf-15f1-4cf1-ad65-f571bd4c97b8','Product-2024-1-2-21-6020.webp','','Red','Rdr150002','Legitem2023@gmail.com','TRK-ATRK-ITRK-JTRK-1TRK-8TRK-7TRK-BTRK-9TRK-0TRK-PTRK-MTRK-J','ODR-IODR-DODR-1ODR-BODR-OODR-9ODR-CODR-NODR-CODR-JODR-IODR-A',1,96999.999999999999998,NULL,NULL,'Legitem2023@gmail.com','Recieved','Your order has received and on process',1725332623313);
INSERT INTO OrderHistory VALUES('ae95f131-71da-4aca-8040-53f7ccd743c2','Product-2024-1-2-21-2200.webp','','Gray','VRSYS0011','Legitem2023@gmail.com','TRK-8TRK-RTRK-VTRK-UTRK-XTRK-KTRK-RTRK-5TRK-MTRK-ATRK-9TRK-K','ODR-HODR-SODR-ZODR-PODR-7ODR-EODR-SODR-QODR-OODR-7ODR-AODR-7',1,500000.0,NULL,NULL,'Legitem2023@gmail.com','Recieved','Your order has received and on process',1725332672386);
INSERT INTO OrderHistory VALUES('d674d9e6-29c2-43a7-9fe0-4cafb320629f','Product-2024-1-2-22-3017.webp','','Black','DMR001','Legitem2023@gmail.com','TRK-MTRK-RTRK-CTRK-ETRK-GTRK-2TRK-STRK-XTRK-WTRK-9TRK-PTRK-C','ODR-5ODR-AODR-5ODR-3ODR-KODR-0ODR-3ODR-4ODR-GODR-XODR-ZODR-H',1,390000.0,NULL,NULL,'Legitem2023@gmail.com','Recieved','Your order has received and on process',1725332830455);
INSERT INTO OrderHistory VALUES('4fd3e4da-9bb4-4fe0-ae46-102a81dc4e35','Product-2024-1-2-21-6020.webp','','Red','Rdr150002','Legitem2023@gmail.com','TRK-5TRK-5TRK-TTRK-CTRK-ITRK-8TRK-KTRK-NTRK-CTRK-4TRK-3TRK-P','ODR-JODR-3ODR-3ODR-BODR-FODR-4ODR-CODR-9ODR-WODR-2ODR-GODR-8',1,96999.999999999999998,NULL,NULL,'Legitem2023@gmail.com','Recieved','Your order has received and on process',1725332867144);
INSERT INTO OrderHistory VALUES('ac8c5efe-91b4-4239-923f-641b6135246c','Product-2024-1-2-20-5909.webp','Unkown','Red','Rdr150001','Legitem2023@gmail.com','TRK-MTRK-GTRK-5TRK-XTRK-7TRK-OTRK-FTRK-JTRK-VTRK-XTRK-ZTRK-G','ODR-IODR-YODR-KODR-9ODR-JODR-SODR-1ODR-9ODR-8ODR-QODR-FODR-W',1,96999.999999999999998,NULL,NULL,'Legitem2023@gmail.com','Recieved','Your order has received and on process',1725332915608);
INSERT INTO OrderHistory VALUES('b74b0362-840f-401e-b859-6cc68f6a9433','Product-2024-1-3-21-18024.webp','','Gray','HND001','Legitem2023@gmail.com','TRK-9TRK-3TRK-ITRK-7TRK-6TRK-YTRK-ITRK-UTRK-RTRK-CTRK-BTRK-8','ODR-TODR-NODR-2ODR-GODR-ZODR-VODR-7ODR-BODR-TODR-PODR-SODR-H',1,1000000.0,NULL,NULL,'Legitem2023@gmail.com','Recieved','Your order has received and on process',1725333029442);
INSERT INTO OrderHistory VALUES('bc68fc0e-9034-491c-994c-c6d39b67a1de','Product-2024-1-3-21-32050.webp','','Red','DCT001','Legitem2023@gmail.com','TRK-LTRK-NTRK-PTRK-FTRK-YTRK-GTRK-4TRK-CTRK-MTRK-6TRK-0TRK-3','ODR-UODR-8ODR-IODR-3ODR-CODR-8ODR-AODR-WODR-QODR-JODR-6ODR-3',1,1000000.0,NULL,NULL,'Legitem2023@gmail.com','Recieved','Your order has received and on process',1725333090569);
INSERT INTO OrderHistory VALUES('b8bec39f-878a-4f23-8158-1e87de17c98b','Product-2024-1-2-20-5909.webp','Unkown','Red','Rdr150001','Legitem2023@gmail.com','TRK-ITRK-UTRK-MTRK-LTRK-ETRK-HTRK-0TRK-4TRK-STRK-FTRK-2TRK-O','ODR-WODR-CODR-TODR-KODR-8ODR-LODR-HODR-LODR-QODR-NODR-FODR-O',1,96999.999999999999998,NULL,NULL,'Legitem2023@gmail.com','Recieved','Your order has received and on process',1725333145995);
INSERT INTO OrderHistory VALUES('87835e8a-e6c4-4713-9a0f-cb20489dd611','Product-2024-1-2-20-5909.webp','Unkown','Red','Rdr150001','Legitem2023@gmail.com','TRK-0TRK-JTRK-0TRK-CTRK-QTRK-8TRK-7TRK-HTRK-HTRK-CTRK-3TRK-Y','ODR-SODR-RODR-IODR-VODR-SODR-GODR-FODR-5ODR-YODR-SODR-ZODR-L',1,96999.999999999999998,NULL,NULL,'Legitem2023@gmail.com','Recieved','Your order has received and on process',1725333182811);
INSERT INTO OrderHistory VALUES('74eed6a0-d640-4bff-a374-8cfa005825d1','Product-2024-1-2-21-6020.webp','','Red','Rdr150002','Legitem2023@gmail.com','TRK-OTRK-ETRK-BTRK-NTRK-1TRK-3TRK-BTRK-RTRK-9TRK-4TRK-UTRK-C','ODR-8ODR-BODR-7ODR-CODR-3ODR-JODR-0ODR-1ODR-6ODR-HODR-3ODR-Y',1,96999.999999999999998,NULL,NULL,'Legitem2023@gmail.com','Recieved','Your order has received and on process',1725333243337);
INSERT INTO OrderHistory VALUES('f59db6d7-61d4-4a0c-8dda-8e40cb9a377c','Product-2024-1-2-20-5909.webp','Unkown','Red','Rdr150001','Legitem2023@gmail.com','TRK-HTRK-QTRK-GTRK-VTRK-PTRK-YTRK-7TRK-XTRK-QTRK-9TRK-UTRK-2','ODR-ZODR-EODR-EODR-4ODR-IODR-BODR-4ODR-3ODR-3ODR-CODR-NODR-1',1,96999.999999999999998,NULL,NULL,'Legitem2023@gmail.com','Recieved','Your order has received and on process',1725333334618);
INSERT INTO OrderHistory VALUES('6c61bcc4-40c6-4425-bf5c-5f93969d2b53','Product-2024-1-2-20-5909.webp','Unkown','Red','Rdr150001','Legitem2023@gmail.com','TRK-FTRK-3TRK-ETRK-WTRK-4TRK-DTRK-2TRK-8TRK-DTRK-PTRK-WTRK-A','ODR-BODR-QODR-QODR-XODR-NODR-ZODR-6ODR-IODR-1ODR-IODR-6ODR-L',1,96999.999999999999998,NULL,NULL,'Legitem2023@gmail.com','Recieved','Your order has received and on process',1725333358987);
INSERT INTO OrderHistory VALUES('83cd6338-3e0b-456c-a957-929b890bedef','Product-2024-1-2-21-6020.webp','','Red','Rdr150002','Legitem2023@gmail.com','TRK-MTRK-ITRK-9TRK-ITRK-WTRK-UTRK-ETRK-YTRK-VTRK-LTRK-XTRK-P','ODR-WODR-LODR-IODR-7ODR-5ODR-HODR-PODR-8ODR-2ODR-0ODR-UODR-1',1,96999.999999999999998,NULL,NULL,'Legitem2023@gmail.com','Recieved','Your order has received and on process',1725333399985);
INSERT INTO OrderHistory VALUES('0efd4a0a-c17f-40dc-9f13-85d82480ce91','Product-2024-1-2-20-5909.webp','Unkown','Red','Rdr150001','Legitem2023@gmail.com','TRK-UTRK-GTRK-LTRK-CTRK-RTRK-9TRK-PTRK-FTRK-1TRK-2TRK-6TRK-J','ODR-KODR-HODR-UODR-CODR-JODR-PODR-QODR-PODR-VODR-CODR-FODR-G',1,96999.999999999999998,NULL,NULL,'Legitem2023@gmail.com','Recieved','Your order has received and on process',1725334048429);
INSERT INTO OrderHistory VALUES('2b172a55-a2a2-41f9-946d-574544f9a719','Product-2024-1-2-20-5909.webp','Unkown','Red','Rdr150001','Legitem2023@gmail.com','TRK-1TRK-UTRK-JTRK-UTRK-NTRK-VTRK-OTRK-CTRK-LTRK-0TRK-QTRK-J','ODR-ZODR-CODR-GODR-0ODR-ZODR-QODR-UODR-UODR-ZODR-NODR-0ODR-0',1,96999.999999999999998,NULL,NULL,'Legitem2023@gmail.com','Recieved','Your order has received and on process',1725334702015);
INSERT INTO OrderHistory VALUES('897f6392-a6ce-43a4-88fb-81bd145b32d2','Product-2024-1-2-21-6020.webp','','Red','Rdr150002','Legitem2023@gmail.com','TRK-4TRK-ATRK-OTRK-LTRK-8TRK-HTRK-UTRK-WTRK-3TRK-ITRK-BTRK-X','ODR-5ODR-JODR-NODR-3ODR-EODR-5ODR-FODR-TODR-XODR-HODR-4ODR-K',1,96999.999999999999998,NULL,NULL,'Legitem2023@gmail.com','Recieved','Your order has received and on process',1725335064756);
INSERT INTO OrderHistory VALUES('a795d050-e962-4e52-980a-ac9e1382b7d6','Product-2024-1-2-20-5909.webp','Unkown','Red','Rdr150001','Legitem2023@gmail.com','TRK-FTRK-2TRK-CTRK-PTRK-PTRK-TTRK-ZTRK-9TRK-5TRK-ATRK-STRK-A','ODR-HODR-9ODR-WODR-LODR-QODR-UODR-LODR-SODR-2ODR-1ODR-PODR-L',1,96999.999999999999998,NULL,NULL,'Legitem2023@gmail.com','Recieved','Your order has received and on process',1725336042835);
INSERT INTO OrderHistory VALUES('af0c1442-5495-4cec-92b6-7d158d96044f','Product-2024-1-2-20-5909.webp','Unkown','Red','Rdr150001','Legitem2023@gmail.com','TRK-TTRK-MTRK-BTRK-ATRK-FTRK-OTRK-RTRK-LTRK-XTRK-JTRK-8TRK-U','ODR-KODR-IODR-FODR-EODR-TODR-GODR-FODR-7ODR-5ODR-SODR-MODR-5',1,96999.999999999999998,NULL,NULL,'Legitem2023@gmail.com','Recieved','Your order has received and on process',1725336277055);
INSERT INTO OrderHistory VALUES('1e93d039-dbcc-47af-8913-72a8f9726721','Product-2024-1-2-20-5909.webp','Unkown','Red','Rdr150001','Legitem2023@gmail.com','TRK-1TRK-RTRK-2TRK-FTRK-6TRK-HTRK-8TRK-ETRK-CTRK-BTRK-PTRK-S','ODR-0ODR-NODR-8ODR-WODR-UODR-RODR-2ODR-SODR-XODR-FODR-AODR-G',1,96999.999999999999998,NULL,NULL,'Legitem2023@gmail.com','Recieved','Your order has received and on process',1725336591086);
INSERT INTO OrderHistory VALUES('1cf89b78-8827-4aa0-ba31-7eb7beae4b4d','Product-2024-1-2-20-5909.webp','Unkown','Red','Rdr150001','Legitem2023@gmail.com','TRK-9TRK-PTRK-DTRK-1TRK-TTRK-8TRK-PTRK-CTRK-9TRK-3TRK-YTRK-T','ODR-TODR-OODR-MODR-SODR-EODR-AODR-AODR-NODR-DODR-AODR-HODR-K',1,96999.999999999999998,NULL,NULL,'Legitem2023@gmail.com','Recieved','Your order has received and on process',1725336701542);
INSERT INTO OrderHistory VALUES('6c277fe3-37fc-4073-a12f-21514f21c539','Product-2024-1-2-20-5909.webp','Unkown','Red','Rdr150001','Legitem2023@gmail.com','TRK-ITRK-OTRK-RTRK-STRK-GTRK-UTRK-LTRK-LTRK-1TRK-OTRK-ZTRK-N','ODR-VODR-CODR-EODR-4ODR-UODR-DODR-LODR-0ODR-3ODR-5ODR-0ODR-H',1,96999.999999999999998,NULL,NULL,'Legitem2023@gmail.com','Recieved','Your order has received and on process',1725336762294);
INSERT INTO OrderHistory VALUES('8091e643-2e6e-47b7-9d8f-52963fc6a24b','Product-2024-1-2-20-5909.webp','Unkown','Red','Rdr150001','Legitem2023@gmail.com','TRK-HTRK-BTRK-5TRK-UTRK-ATRK-STRK-ITRK-UTRK-ATRK-6TRK-YTRK-M','ODR-0ODR-LODR-MODR-SODR-WODR-3ODR-LODR-JODR-XODR-JODR-1ODR-X',1,96999.999999999999998,NULL,NULL,'Legitem2023@gmail.com','Recieved','Your order has received and on process',1725337678835);
INSERT INTO OrderHistory VALUES('e7a887cd-3de7-4faa-88ea-3abddafdfb99','Product-2024-1-2-21-6020.webp','','Red','Rdr150002','Legitem2023@gmail.com','TRK-5TRK-MTRK-4TRK-ITRK-XTRK-7TRK-4TRK-QTRK-ITRK-ITRK-ATRK-H','ODR-JODR-VODR-GODR-UODR-0ODR-HODR-ZODR-OODR-SODR-7ODR-OODR-7',1,96999.999999999999998,NULL,NULL,'Legitem2023@gmail.com','Recieved','Your order has received and on process',1725337706017);
INSERT INTO OrderHistory VALUES('34193704-5a99-4354-bba2-2ff9bc3d221d','Product-2024-1-2-20-5909.webp','Unkown','Red','Rdr150001','Legitem2023@gmail.com','TRK-CTRK-WTRK-FTRK-PTRK-0TRK-5TRK-QTRK-QTRK-8TRK-ETRK-QTRK-M','ODR-9ODR-PODR-HODR-HODR-JODR-QODR-7ODR-NODR-HODR-EODR-QODR-W',1,96999.999999999999998,NULL,NULL,'Legitem2023@gmail.com','Recieved','Your order has received and on process',1725337809344);
INSERT INTO OrderHistory VALUES('6574c96b-eb66-47c0-b0c8-f7d886b08e4c','Product-2024-1-2-21-6020.webp','','Red','Rdr150002','Legitem2023@gmail.com','TRK-XTRK-HTRK-OTRK-0TRK-XTRK-NTRK-FTRK-STRK-0TRK-LTRK-1TRK-0','ODR-QODR-EODR-SODR-0ODR-UODR-TODR-4ODR-XODR-AODR-ZODR-UODR-Q',1,96999.999999999999998,NULL,NULL,'Legitem2023@gmail.com','Recieved','Your order has received and on process',1725338079149);
INSERT INTO OrderHistory VALUES('d1003e41-0504-40b1-822f-2ebcfccf5ebb','Product-2024-1-3-21-24021.webp','','Red','CB001','Legitem2023@gmail.com','TRK-ATRK-UTRK-4TRK-UTRK-XTRK-FTRK-TTRK-GTRK-1TRK-3TRK-WTRK-P','ODR-OODR-9ODR-XODR-GODR-9ODR-OODR-XODR-WODR-0ODR-IODR-PODR-E',1,100000.0,NULL,NULL,'Legitem2023@gmail.com','Recieved','Your order has received and on process',1725339555275);
INSERT INTO OrderHistory VALUES('44c65f20-6cf3-4a6c-8fa2-04ecfcf2e8c1','Product-2024-1-3-21-28044.webp','','Emerald Green','ZH2001','Legitem2023@gmail.com','TRK-ATRK-ITRK-1TRK-HTRK-ZTRK-ATRK-NTRK-OTRK-ITRK-QTRK-8TRK-1','ODR-WODR-RODR-GODR-7ODR-NODR-3ODR-JODR-CODR-AODR-1ODR-1ODR-G',1,100000.0,NULL,NULL,'Legitem2023@gmail.com','Recieved','Your order has received and on process',1725339948447);
INSERT INTO OrderHistory VALUES('b97dc7c0-50fe-4311-a181-9c85f96fd062','Product-2024-1-2-20-5909.webp','Unkown','Red','Rdr150001','Legitem2023@gmail.com','TRK-HTRK-OTRK-6TRK-KTRK-3TRK-5TRK-ZTRK-FTRK-TTRK-1TRK-HTRK-Q','ODR-3ODR-4ODR-WODR-VODR-OODR-IODR-3ODR-7ODR-3ODR-8ODR-XODR-F',1,96999.999999999999998,NULL,NULL,'Legitem2023@gmail.com','Recieved','Your order has received and on process',1725345618621);
INSERT INTO OrderHistory VALUES('bf7c4266-777f-4ec0-b830-025ecb8f7715','Product-2024-1-3-21-24021.webp','','Red','CB001','Legitem2023@gmail.com','TRK-RTRK-PTRK-STRK-GTRK-RTRK-7TRK-VTRK-STRK-1TRK-2TRK-GTRK-I','ODR-BODR-OODR-EODR-YODR-AODR-RODR-YODR-BODR-7ODR-LODR-VODR-2',1,100000.0,NULL,NULL,'Legitem2023@gmail.com','Recieved','Your order has received and on process',1725345645964);
INSERT INTO OrderHistory VALUES('a5773875-81e4-478c-a403-bf9ac7aa53ee','Product-2024-1-2-21-6020.webp','','Red','Rdr150002','Legitem2023@gmail.com','TRK-TTRK-7TRK-ATRK-1TRK-OTRK-QTRK-JTRK-HTRK-1TRK-TTRK-WTRK-R','ODR-UODR-KODR-1ODR-4ODR-TODR-QODR-7ODR-LODR-FODR-1ODR-DODR-E',1,96999.999999999999998,NULL,NULL,'Legitem2023@gmail.com','Recieved','Your order has received and on process',1725348379918);
INSERT INTO OrderHistory VALUES('20d70018-0b97-41e9-9d2d-f63cb1599406','Product-2024-1-2-21-6020.webp','','Red','Rdr150002','Legitem2023@gmail.com','TRK-ETRK-ITRK-STRK-RTRK-KTRK-MTRK-QTRK-0TRK-MTRK-PTRK-CTRK-U','ODR-ZODR-BODR-7ODR-OODR-VODR-TODR-HODR-YODR-LODR-PODR-6ODR-X',1,96999.999999999999998,NULL,NULL,'Legitem2023@gmail.com','Recieved','Your order has received and on process',1725348608503);
INSERT INTO OrderHistory VALUES('44c65220-f715-4505-9577-098253254520','Product-2024-1-3-21-24021.webp','','Red','CB001','Legitem2023@gmail.com','TRK-KTRK-3TRK-9TRK-4TRK-CTRK-BTRK-2TRK-4TRK-WTRK-RTRK-1TRK-H','ODR-EODR-8ODR-YODR-SODR-VODR-IODR-AODR-TODR-LODR-PODR-MODR-W',1,100000.0,NULL,NULL,'Legitem2023@gmail.com','Recieved','Your order has received and on process',1725348636976);
INSERT INTO OrderHistory VALUES('a187a3a8-e5d2-4598-bb64-d9f8a80877dc','Product-2024-1-2-20-5909.webp','Unkown','Red','Rdr150001','Legitem2023@gmail.com','TRK-ZTRK-ZTRK-ZTRK-5TRK-ZTRK-PTRK-LTRK-OTRK-1TRK-KTRK-JTRK-V','ODR-0ODR-AODR-8ODR-QODR-FODR-CODR-VODR-9ODR-TODR-ZODR-6ODR-M',1,96999.999999999999998,NULL,NULL,'Legitem2023@gmail.com','Recieved','Your order has received and on process',1725348672885);
INSERT INTO OrderHistory VALUES('ec54dc91-c2f8-4934-9c2c-7d676c28af19','Product-2024-1-2-21-6020.webp','','Red','Rdr150002','Legitem2023@gmail.com','TRK-HTRK-UTRK-0TRK-4TRK-9TRK-MTRK-ETRK-VTRK-YTRK-ITRK-1TRK-7','ODR-LODR-0ODR-XODR-ZODR-0ODR-ZODR-6ODR-WODR-8ODR-DODR-RODR-E',1,96999.999999999999998,NULL,NULL,'Legitem2023@gmail.com','Recieved','Your order has received and on process',1725348747297);
INSERT INTO OrderHistory VALUES('6a0a6b86-bf4b-43ed-bb7e-eb81524a616f','Product-2024-1-2-21-6020.webp','','Red','Rdr150002','Legitem2023@gmail.com','TRK-ATRK-JTRK-6TRK-WTRK-5TRK-5TRK-ETRK-KTRK-PTRK-5TRK-3TRK-O','ODR-SODR-YODR-4ODR-AODR-EODR-AODR-GODR-8ODR-0ODR-BODR-NODR-2',1,96999.999999999999998,NULL,NULL,'Legitem2023@gmail.com','Recieved','Your order has received and on process',1725348810767);
INSERT INTO OrderHistory VALUES('af016e82-9588-4571-89d3-550572e1ec76','Product-2024-1-2-21-6020.webp','','Red','Rdr150002','Legitem2023@gmail.com','TRK-MTRK-STRK-CTRK-PTRK-ETRK-7TRK-CTRK-JTRK-ETRK-HTRK-WTRK-O','ODR-8ODR-7ODR-XODR-NODR-GODR-AODR-LODR-GODR-9ODR-ZODR-NODR-F',1,96999.999999999999998,NULL,NULL,'Legitem2023@gmail.com','Recieved','Your order has received and on process',1725349434336);
INSERT INTO OrderHistory VALUES('9c12ded6-3b66-47b1-86eb-2bcd198c6246','Product-2024-1-3-21-24021.webp','','Red','CB001','Legitem2023@gmail.com','TRK-QTRK-2TRK-HTRK-STRK-PTRK-TTRK-PTRK-STRK-5TRK-2TRK-STRK-4','ODR-UODR-AODR-4ODR-4ODR-RODR-4ODR-0ODR-DODR-SODR-CODR-ZODR-R',1,100000.0,NULL,NULL,'Legitem2023@gmail.com','Recieved','Your order has received and on process',1725349940085);
INSERT INTO OrderHistory VALUES('c806ae43-97aa-436c-807b-fb367501662e','Product-2024-1-2-21-6020.webp','','Red','Rdr150002','Legitem2023@gmail.com','TRK-CTRK-TTRK-LTRK-5TRK-VTRK-TTRK-ETRK-BTRK-QTRK-UTRK-4TRK-H','ODR-NODR-GODR-DODR-UODR-MODR-YODR-RODR-YODR-2ODR-UODR-RODR-G',1,96999.999999999999998,NULL,NULL,'Legitem2023@gmail.com','Recieved','Your order has received and on process',1725349958466);
INSERT INTO OrderHistory VALUES('d80a4b55-aac6-43d5-aa44-904697caf981','Product-2024-1-3-21-24021.webp','','Red','CB001','Legitem2023@gmail.com','TRK-7TRK-5TRK-BTRK-GTRK-FTRK-ETRK-BTRK-KTRK-UTRK-MTRK-5TRK-G','ODR-2ODR-DODR-7ODR-7ODR-SODR-BODR-LODR-GODR-OODR-WODR-OODR-Y',1,100000.0,NULL,NULL,'Legitem2023@gmail.com','Recieved','Your order has received and on process',1725349979342);
INSERT INTO OrderHistory VALUES('17521283-6a68-43d9-a70a-c40c7a10d1d9','Product-2024-1-3-21-28044.webp','','Emerald Green','ZH2001','Legitem2023@gmail.com','TRK-OTRK-DTRK-4TRK-3TRK-1TRK-ETRK-MTRK-BTRK-QTRK-TTRK-XTRK-A','ODR-ZODR-3ODR-UODR-MODR-WODR-6ODR-NODR-EODR-WODR-SODR-3ODR-S',1,100000.0,NULL,NULL,'Legitem2023@gmail.com','Recieved','Your order has received and on process',1725351559250);
INSERT INTO OrderHistory VALUES('f0fd1058-c6fa-4fe3-8860-a618537abf87','Product-2024-1-3-21-24021.webp','','Red','CB001','Legitem2023@gmail.com','TRK-UTRK-STRK-YTRK-BTRK-BTRK-WTRK-MTRK-PTRK-LTRK-2TRK-TTRK-6','ODR-XODR-5ODR-WODR-WODR-PODR-IODR-OODR-2ODR-3ODR-NODR-1ODR-F',1,100000.0,NULL,NULL,'Legitem2023@gmail.com','Recieved','Your order has received and on process',1725351616294);
INSERT INTO OrderHistory VALUES('42f4a4e4-32f9-48ef-9de4-8a1a1d451756','Product-2024-1-3-21-24021.webp','','Red','CB001','Legitem2023@gmail.com','TRK-RTRK-8TRK-ETRK-UTRK-2TRK-BTRK-2TRK-PTRK-OTRK-LTRK-3TRK-9','ODR-CODR-2ODR-AODR-AODR-FODR-0ODR-WODR-EODR-6ODR-AODR-OODR-1',1,100000.0,NULL,NULL,'Legitem2023@gmail.com','Recieved','Your order has received and on process',1725352499118);
INSERT INTO OrderHistory VALUES('933048df-dceb-40d7-8e8e-9e21d3a20aba','Product-2024-1-2-21-6020.webp','','Red','Rdr150002','Legitem2023@gmail.com','TRK-KTRK-MTRK-ITRK-FTRK-ETRK-GTRK-LTRK-QTRK-GTRK-3TRK-2TRK-4','ODR-MODR-KODR-FODR-5ODR-UODR-JODR-RODR-QODR-4ODR-0ODR-7ODR-C',1,96999.999999999999998,NULL,NULL,'Legitem2023@gmail.com','Recieved','Your order has received and on process',1725352541878);
INSERT INTO OrderHistory VALUES('7ba36f7c-4f34-4a16-9516-3fb4dfeb3a5a','Product-2024-1-3-21-24021.webp','','Red','CB001','Legitem2023@gmail.com','TRK-OTRK-STRK-NTRK-ITRK-6TRK-KTRK-XTRK-CTRK-9TRK-4TRK-TTRK-3','ODR-FODR-AODR-YODR-QODR-CODR-ZODR-XODR-PODR-OODR-1ODR-PODR-8',1,100000.0,NULL,NULL,'Legitem2023@gmail.com','Recieved','Your order has received and on process',1725352659423);
INSERT INTO OrderHistory VALUES('a06bee89-6d8f-4bbc-a89b-52ca0844b157','Product-2024-1-3-21-24021.webp','','Red','CB001','Legitem2023@gmail.com','TRK-LTRK-OTRK-4TRK-STRK-RTRK-2TRK-BTRK-XTRK-5TRK-QTRK-WTRK-Z','ODR-KODR-0ODR-4ODR-LODR-4ODR-2ODR-DODR-0ODR-QODR-AODR-MODR-Q',1,100000.0,NULL,NULL,'Legitem2023@gmail.com','Recieved','Your order has received and on process',1725353206102);
INSERT INTO OrderHistory VALUES('35492b8f-d99d-4524-bbb8-acdfc36fe519','Product-2024-1-2-20-5909.webp','Unkown','Red','Rdr150001','Legitem2023@gmail.com','TRK-ZTRK-ETRK-ATRK-RTRK-RTRK-BTRK-8TRK-STRK-ITRK-KTRK-KTRK-9','ODR-YODR-BODR-9ODR-MODR-FODR-1ODR-FODR-TODR-GODR-2ODR-AODR-G',1,96999.999999999999998,NULL,NULL,'Legitem2023@gmail.com','Recieved','Your order has received and on process',1725353409298);
INSERT INTO OrderHistory VALUES('eb0f5bd3-0467-4a62-bd67-7385077bd551','Product-2024-1-3-21-24021.webp','','Red','CB001','Legitem2023@gmail.com','TRK-ZTRK-ETRK-ATRK-RTRK-RTRK-BTRK-8TRK-STRK-ITRK-KTRK-KTRK-9','ODR-YODR-BODR-9ODR-MODR-FODR-1ODR-FODR-TODR-GODR-2ODR-AODR-G',1,100000.0,NULL,NULL,'Legitem2023@gmail.com','Recieved','Your order has received and on process',1725353409299);
INSERT INTO OrderHistory VALUES('32cf2521-94d7-4e30-93ee-368393b32c53','Product-2024-1-3-21-28044.webp','','Emerald Green','ZH2001','Legitem2023@gmail.com','TRK-BTRK-KTRK-1TRK-PTRK-OTRK-4TRK-LTRK-2TRK-FTRK-3TRK-5TRK-8','ODR-4ODR-HODR-UODR-GODR-PODR-XODR-1ODR-AODR-JODR-YODR-MODR-6',2,100000.0,NULL,NULL,'Legitem2023@gmail.com','Recieved','Your order has received and on process',1725354395436);
INSERT INTO OrderHistory VALUES('ed4d91bb-4a59-4cdf-8078-531995dc5e21','Product-2024-1-2-21-6020.webp','','Red','Rdr150002','Legitem2023@gmail.com','TRK-WTRK-MTRK-NTRK-QTRK-QTRK-TTRK-BTRK-ITRK-5TRK-XTRK-PTRK-5','ODR-0ODR-4ODR-GODR-EODR-4ODR-HODR-4ODR-FODR-HODR-CODR-ZODR-4',1,96999.999999999999998,NULL,NULL,'Legitem2023@gmail.com','Recieved','Your order has received and on process',1725354452842);
INSERT INTO OrderHistory VALUES('a34f4724-d6a9-4fab-bfd2-e61a23c3229b','Product-2024-1-2-20-5909.webp','Unkown','Red','Rdr150001','Legitem2023@gmail.com','TRK-RTRK-ATRK-TTRK-ITRK-FTRK-CTRK-XTRK-DTRK-UTRK-MTRK-WTRK-U','ODR-0ODR-TODR-VODR-6ODR-KODR-0ODR-8ODR-EODR-SODR-9ODR-EODR-1',1,96999.999999999999998,NULL,NULL,'Legitem2023@gmail.com','Recieved','Your order has received and on process',1725355835485);
INSERT INTO OrderHistory VALUES('6f66368e-667d-4e75-acd4-d51fa4df5e95','Product-2024-1-2-21-6020.webp','','Red','Rdr150002','Legitem2023@gmail.com','TRK-9TRK-UTRK-JTRK-OTRK-2TRK-KTRK-6TRK-3TRK-JTRK-JTRK-JTRK-N','ODR-ZODR-BODR-SODR-1ODR-VODR-6ODR-VODR-GODR-XODR-1ODR-XODR-V',1,96999.999999999999998,NULL,NULL,'Legitem2023@gmail.com','Recieved','Your order has received and on process',1725356436947);
INSERT INTO OrderHistory VALUES('cd2773da-920e-4107-bbc6-61ac96974cd9','Product-2024-1-2-20-5909.webp','Unkown','Red','Rdr150001','Legitem2023@gmail.com','TRK-9TRK-CTRK-WTRK-LTRK-5TRK-XTRK-UTRK-3TRK-KTRK-PTRK-FTRK-C','ODR-XODR-DODR-UODR-9ODR-RODR-HODR-GODR-BODR-5ODR-CODR-DODR-K',1,96999.999999999999998,NULL,NULL,'Legitem2023@gmail.com','Recieved','Your order has received and on process',1725356476517);
INSERT INTO OrderHistory VALUES('eb69a908-e611-4e17-94c6-604fc73ba86b','Product-2024-1-2-21-6020.webp','','Red','Rdr150002','Legitem2023@gmail.com','TRK-WTRK-DTRK-1TRK-STRK-KTRK-7TRK-YTRK-YTRK-JTRK-QTRK-0TRK-5','ODR-5ODR-YODR-HODR-MODR-JODR-6ODR-5ODR-2ODR-MODR-KODR-0ODR-E',1,96999.999999999999998,NULL,NULL,'Legitem2023@gmail.com','Recieved','Your order has received and on process',1725356527383);
INSERT INTO OrderHistory VALUES('d35f3c65-8d69-4f3f-b965-fb4622468f28','Product-2024-1-2-20-5909.webp','Unkown','Red','Rdr150001','Legitem2023@gmail.com','TRK-NTRK-TTRK-WTRK-MTRK-ZTRK-ZTRK-LTRK-ETRK-YTRK-8TRK-XTRK-M','ODR-1ODR-LODR-KODR-HODR-OODR-HODR-XODR-WODR-EODR-7ODR-IODR-P',1,96999.999999999999998,NULL,NULL,'Legitem2023@gmail.com','Recieved','Your order has received and on process',1725356602936);
INSERT INTO OrderHistory VALUES('575c2133-0b74-4590-be69-dc56790520b7','Product-2024-1-2-20-5909.webp','Unkown','Red','Rdr150001','Legitem2023@gmail.com','TRK-BTRK-MTRK-MTRK-ETRK-DTRK-YTRK-LTRK-UTRK-CTRK-MTRK-UTRK-D','ODR-XODR-MODR-JODR-1ODR-OODR-EODR-EODR-XODR-YODR-VODR-NODR-G',1,96999.999999999999998,NULL,NULL,'Legitem2023@gmail.com','Recieved','Your order has received and on process',1725366384214);
INSERT INTO OrderHistory VALUES('26fa30f7-4b5c-4895-9aa8-17f37e239808','Product-2024-1-2-21-6020.webp','','Red','Rdr150002','Legitem2023@gmail.com','TRK-NTRK-ATRK-ETRK-1TRK-5TRK-LTRK-BTRK-FTRK-HTRK-ATRK-PTRK-N','ODR-XODR-YODR-YODR-KODR-UODR-XODR-1ODR-1ODR-JODR-GODR-DODR-P',1,96999.999999999999998,NULL,NULL,'Legitem2023@gmail.com','Recieved','Your order has received and on process',1725366507217);
INSERT INTO OrderHistory VALUES('86fcc790-e9b2-4e99-96e4-7be0b712a208','Product-2024-1-3-21-28044.webp','','Emerald Green','ZH2001','Legitem2023@gmail.com','TRK-DTRK-QTRK-3TRK-XTRK-6TRK-PTRK-5TRK-MTRK-1TRK-ATRK-NTRK-E','ODR-JODR-SODR-EODR-5ODR-DODR-7ODR-EODR-LODR-NODR-UODR-LODR-A',1,100000.0,NULL,NULL,'Legitem2023@gmail.com','New Order','New Order',1726276518212);
INSERT INTO OrderHistory VALUES('2d1bac05-ad29-4047-99be-23e337750321','Product-2024-1-3-21-24021.webp','small','Red','CB001','Legitem2023@gmail.com','TRK-DTRK-QTRK-3TRK-XTRK-6TRK-PTRK-5TRK-MTRK-1TRK-ATRK-NTRK-E','ODR-JODR-SODR-EODR-5ODR-DODR-7ODR-EODR-LODR-NODR-UODR-LODR-A',10,NULL,NULL,NULL,'Legitem2023@gmail.com','New Order','New Order',1726276518212);
INSERT INTO OrderHistory VALUES('e382ce4a-d870-4ff8-a2cd-9858e3a54ad2','Product-2024-1-2-21-2200.webp','','Gray',NULL,'Legitem2023@gmail.com','TRK-DTRK-QTRK-3TRK-XTRK-6TRK-PTRK-5TRK-MTRK-1TRK-ATRK-NTRK-E','ODR-JODR-SODR-EODR-5ODR-DODR-7ODR-EODR-LODR-NODR-UODR-LODR-A',1,500000.0,NULL,NULL,NULL,'New Order','New Order',1726276518212);
INSERT INTO OrderHistory VALUES('6de989ea-2b9c-484f-97f0-b82a975aa3f2','Product-2024-1-3-21-24021.webp','small','Red','CB001','Legitem2023@gmail.com','TRK-4TRK-RTRK-ATRK-7TRK-3TRK-5TRK-UTRK-8TRK-TTRK-GTRK-3TRK-U','ODR-XODR-0ODR-HODR-WODR-KODR-GODR-FODR-EODR-BODR-0ODR-FODR-D',1,NULL,NULL,NULL,'Legitem2023@gmail.com','New Order','New Order',1726628285128);
CREATE TABLE IF NOT EXISTS "User" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "email" TEXT NOT NULL,
    "accountCode" TEXT,
    "password" TEXT,
    "activation" TEXT NOT NULL DEFAULT 'IN-ACTIVE',
    "accountLevel" TEXT,
    "loginAttemp" TEXT,
    "macAddress" TEXT,
    "agentIdentity" TEXT,
    "image" TEXT,
    "nameOfStore" TEXT,
    "dateCreated" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "dateUpdated" DATETIME
);
INSERT INTO User VALUES('6287949b-f712-42e3-add9-9a35afb7b406','Legitem2023@gmail.com','LGT001','$2b$10$qUcn5DXSk5a8evqpm0LiauyESPpzHhwQw.4nyiPLtHCGo7VskQa2W','IN-ACTIVE','Merchant',NULL,'D6:AD:EE:6C:B2:48','Legitem2023@gmail.com',NULL,NULL,1707921354226,1725683292148);
INSERT INTO User VALUES('ccd83a0d-2ee8-4de8-bc5e-b2cd21354af5','ezekiel282@yahoo.com','Acct-2024-8-5-11-43-5','$2b$10$Qhwf7vFDwjv1cDDsdxcKCO4s0bSZG6PKM5H8OI/PAm1D8H6ZhjYc.','IN-ACTIVE','Encoder','2','D6:AD:EE:6C:B2:48','Legitem2023@gmail.com',NULL,'Legitem',1725594185533,1725684055330);
INSERT INTO User VALUES('2fe14bc2-8040-4f8e-b655-c4d71a464f95','robert_sanco_marquez1988@yahoo.com','Acct-2024-8-5-16-28-12','$2b$10$u6hzN4Vi2xcV1RbedgUej./T0Qux4YcjOZdBAGi2GMviQj73G8tsy','IN-ACTIVE','Merchant','3','D6:AD:EE:6C:B2:48','Legitem2023@gmail.com',NULL,'Diwata Trading',1725611292491,1725684236990);
INSERT INTO User VALUES('9a3a0368-3950-44cc-a4ec-551574a2b16c','digitaloutofhome2019@gmail.com','Acct-2024-8-5-18-41-21','$2b$10$d8r88yjF3G7YpMAbpYJpPOd2cvqA2dVKOibWlyinGCZSJVI9PNQkm','IN-ACTIVE','Encoder','2',NULL,'Legitem2023@gmail.com',NULL,'Legitem',1725619281515,1725684189493);
CREATE TABLE IF NOT EXISTS "News" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "title" TEXT,
    "thumbnail" TEXT,
    "summary" TEXT,
    "dateCreated" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
, "postedBy" TEXT);
INSERT INTO News VALUES('1216aa16-0e2f-476d-9159-e3ea48d9d002','Legitem Inauguration ','Thumnail.png','Today date is when the Legitem website inauguration and the beginning of the great succession of e-commerce company founded by robert marquez',1708433605062,'Legitem2023@gmail.com');
INSERT INTO News VALUES('e498b5c8-5cd5-4234-902c-d1ace0d35a17','News Data','Thumnail.png','Today date is when the Legitem website inauguration and the beginning of the great succession of e-commerce company founded by robert marquez',1725875028855,'Legitem2023@gmail.com');
INSERT INTO News VALUES('3057b1b2-2380-44da-98b1-3f77b4b46e91','News Data','Thumnail.png','Today date is when the Legitem website inauguration and the beginning of the great succession of e-commerce company founded by robert marquez',1725875729120,'Legitem2023@gmail.com');
INSERT INTO News VALUES('55fcfdca-3691-45b6-893b-4c54ce6f800c','News Data','Thumnail.png','Today date is when the Legitem website inauguration and the beginning of the great succession of e-commerce company founded by robert marquez',1725876140501,'Legitem2023@gmail.com');
INSERT INTO News VALUES('f7180423-2a83-4f75-9606-a29d7fce464d','News Data','Thumnail.png','Today date is when the Legitem website inauguration and the beginning of the great succession of e-commerce company founded by robert marquez',1725876192897,'Legitem2023@gmail.com');
INSERT INTO News VALUES('c47b6f94-39b7-40f7-a311-40415b3b7626','News Data','Thumnail.png','Today date is when the Legitem website inauguration and the beginning of the great succession of e-commerce company founded by robert marquez',1725876285026,'Legitem2023@gmail.com');
INSERT INTO News VALUES('c3a21851-ac01-47dd-ab8f-dea24c71c6fb','News Data','Thumnail.png','Today date is when the Legitem website inauguration and the beginning of the great succession of e-commerce company founded by robert marquez',1725876326229,'Legitem2023@gmail.com');
INSERT INTO News VALUES('4cad55d7-6012-4771-8a02-f04314463abc','News Data','Thumnail.png','Today date is when the Legitem website inauguration and the beginning of the great succession of e-commerce company founded by robert marquez',1725876399416,'Legitem2023@gmail.com');
INSERT INTO News VALUES('49e3446f-a77b-48e1-8f7e-aeae64cd7bb3','News Data','Thumnail.png','Today date is when the Legitem website inauguration and the beginning of the great succession of e-commerce company founded by robert marquez',1725876577971,'Legitem2023@gmail.com');
INSERT INTO News VALUES('70056a12-0205-450e-a0b0-0cab3ce4d47a','News Data','Thumnail.png','Today date is when the Legitem website inauguration and the beginning of the great succession of e-commerce company founded by robert marquez',1725876937039,'Legitem2023@gmail.com');
INSERT INTO News VALUES('78f57257-8172-47e6-9ea1-227ed9f9a314','News Data','Thumnail.png','Today date is when the Legitem website inauguration and the beginning of the great succession of e-commerce company founded by robert marquez',1725877452219,'Legitem2023@gmail.com');
INSERT INTO News VALUES('ec8ba926-ea77-4be5-adf4-78c7beb6897c','News','Thumnail.png','<p>Today date is when the Legitem website inauguration and the beginning of the great succession of e-commerce company founded by robert marquez</p>',1726818057148,'Legitem2023@gmail.com');
INSERT INTO News VALUES('197c4415-bf82-49d6-a453-d0d61c63aff1','News','Thumnail.png','<p>News From Your Store Products</p>',1726818150619,'Legitem2023@gmail.com');
INSERT INTO News VALUES('fddf73e5-1a89-47b0-8b2d-c0c3020ce9dd','News','Thumnail.png','<p>News From Your Store Products</p>',1726818191169,'Legitem2023@gmail.com');
INSERT INTO News VALUES('6f9e0e50-f5c1-4504-ba53-a57a3284e243','News','Thumnail.png','<p>News From Your Store Products</p>',1726818301172,'Legitem2023@gmail.com');
INSERT INTO News VALUES('39cf841f-e43a-4eed-b987-81621f429f5f','News','Thumnail.png','<p>News From Your Store Products</p>',1726818374112,'Legitem2023@gmail.com');
INSERT INTO News VALUES('dba26433-d3c4-450b-89be-c90f2e16817f','News','Thumnail.png','<p>Today date is when the Legitem website inauguration and the beginning of the great succession of e-commerce company founded by robert marquez</p>',1726818422839,'Legitem2023@gmail.com');
CREATE TABLE IF NOT EXISTS "ChildInventory" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "productCode" TEXT,
    "category" TEXT,
    "productType" TEXT,
    "imageReferences" TEXT,
    "brandname" TEXT,
    "model" TEXT,
    "style_Code" TEXT,
    "name" TEXT,
    "color" TEXT,
    "size" TEXT,
    "price" REAL,
    "stock" REAL,
    "status" TEXT,
    "thumbnail" TEXT,
    "parentId" TEXT,
    "creator" TEXT,
    "editor" TEXT,
    "dateCreated" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "dateUpdated" DATETIME,
    "agentEmail" TEXT, "productDescription" TEXT,
    CONSTRAINT "ChildInventory_style_Code_fkey" FOREIGN KEY ("style_Code") REFERENCES "Inventory" ("styleCode") ON DELETE SET NULL ON UPDATE CASCADE
);
INSERT INTO ChildInventory VALUES(1,'Rdr150001','Cars & Vehicles','Accessories',NULL,'Android Tablets','https://hokei-storage.s3.ap-northeast-1.amazonaws.com/images/Legit/model_houses/NoModel.glb','Style_2024-1-2-20-53-24','SuzuRaider 150','Red','Unkown',96999.999999999999998,10.0,'Active','Product-2024-1-2-20-5909.webp',NULL,'Legitem2023@gmail.com','Legitem2023@gmail.com',1708433605062,1726562841555,'Legitem2023@gmail.com','<h2><strong>Suzuki Raider R150 Carb Specs &amp; Features</strong></h2><p>The Suzuki Raider R150 Carb is offered Gasoline engine in the Philippines. The new Moped from Suzuki comes in a total of 1 variants. If we talk about Suzuki Raider R150 Carb engine specs then the Gasoline engine displacement is 147.3 cc. Raider R150 Carb is available with Manual transmission. Also, depending on the variant and fuel type the Raider R150 Carb has a fuel consumption of 50 kmpl. The Raider R150 Carb is a 2 Seater Moped and has a length of 1945 mm the width of 670 mm, and a wheelbase of 1280 mm. along with a ground clearance of 140 mm.</p><p>Read More</p><h2><strong>Key Specs of Suzuki Raider R150 Carb</strong></h2><figure class="table"><table><tbody><tr><td>Displacement</td><td>Gasoline147.3 cc</td></tr><tr><td>Maximum Power</td><td>Gasoline15 hp</td></tr><tr><td>Start Option</td><td>GasolineKick &amp; Electric</td></tr><tr><td>Ground Clearance</td><td>Gasoline140 mm</td></tr><tr><td>Front Brake</td><td>GasolineDisc</td></tr><tr><td>Transmission Type</td><td>GasolineManual</td></tr></tbody></table></figure><h2><strong>Suzuki Raider R150 Carb Specifications</strong></h2><p>The <a href="https://www.zigwheels.ph/new-motorcycles/suzuki/raider-r150-carb">Raider R150 Carb</a>, a new Moped from Suzuki comes in 1 variants. The top variant of Raider R150 Carb is powered by the Standard a 147.3 cc, 1 cylinder Gasoline engine that fires 15 hp of power and 12.5 Nm torque. The 2 seater <a href="https://www.zigwheels.ph/new-motorcycles/suzuki/raider-r150-carb/standard">Raider R150 Carb Standard</a> 6-Speed comes with Manual transmission. For added safety are provided central locking &amp; power door locks.</p>');
INSERT INTO ChildInventory VALUES(2,'VRSYS0011','Cars & Vehicles','Motorcycle Gear',NULL,'Samsung','https://hokei-storage.s3.ap-northeast-1.amazonaws.com/images/Legit/model_houses/Kawasaki/Ninja.glb','Style_2024-1-2-20-54-0','Kawasaki Versys 650','Gray','',500000.0,10.0,'Active','Product-2024-1-2-21-2200.webp',NULL,'Legitem2023@gmail.com','',1708433640598,1726103557844,'Legitem2023@gmail.com',NULL);
INSERT INTO ChildInventory VALUES(3,'DMR001','Cars & Vehicles','Car Accessories',NULL,'Nikon','https://hokei-storage.s3.ap-northeast-1.amazonaws.com/images/Legit/model_houses/zh2/zh2.glb','Style_2024-1-2-20-54-8','Dominar 400','Black','small',390000.0,10.0,'Active','Product-2024-1-2-22-3017.webp',NULL,'Legitem2023@gmail.com','Legitem2023@gmail.com',1708433648538,1726542348166,'Legitem2023@gmail.com','');
INSERT INTO ChildInventory VALUES(4,'GLDW001','Cars & Vehicles','Motorcycle Gear',NULL,'Rubbermaid','https://hokei-storage.s3.ap-northeast-1.amazonaws.com/images/Legit/model_houses/valkyrie/valkyrie.glb','Style_2024-1-2-20-57-9','Honda Goldwing',NULL,NULL,NULL,NULL,NULL,'Product-2024-2-6-21-40045.webp',NULL,'Legitem2023@gmail.com','Legitem2023@gmail.com',1708433829814,1726112460172,'Legitem2023@gmail.com',NULL);
INSERT INTO ChildInventory VALUES(5,'HND001','Cars & Vehicles',NULL,NULL,NULL,'https://hokei-storage.s3.ap-northeast-1.amazonaws.com/images/Legit/model_houses/zh2/zh2.glb','Style_2024-1-2-20-57-13','Honda Rebel','Gray','',1000000.0,0.0,'Active','Product-2024-1-3-21-18024.webp',NULL,'Legitem2023@gmail.com','',1708433833276,1718183285953,'Legitem2023@gmail.com',NULL);
INSERT INTO ChildInventory VALUES(6,'Rdr150002','Cars & Vehicles','Accessories',NULL,'Android Tablets','https://hokei-storage.s3.ap-northeast-1.amazonaws.com/images/Legit/model_houses/NoModel.glb','Style_2024-1-2-20-53-24','SuzuRaider 150','RED','UNKNOWN',95000.0,2.0,'Active','Product-2024-1-2-21-6020.webp',NULL,'Legitem2023@gmail.com','Legitem2023@gmail.com',1708434282316,1726562941479,'Legitem2023@gmail.com','<h2><strong>Suzuki Raider R150 Carb Specs &amp; Features</strong></h2><p>The Suzuki Raider R150 Carb is offered Gasoline engine in the Philippines. The new Moped from Suzuki comes in a total of 1 variants. If we talk about Suzuki Raider R150 Carb engine specs then the Gasoline engine displacement is 147.3 cc. Raider R150 Carb is available with Manual transmission. Also, depending on the variant and fuel type the Raider R150 Carb has a fuel consumption of 50 kmpl. The Raider R150 Carb is a 2 Seater Moped and has a length of 1945 mm the width of 670 mm, and a wheelbase of 1280 mm. along with a ground clearance of 140 mm.</p><p>Read More</p><h2><strong>Key Specs of Suzuki Raider R150 Carb</strong></h2><figure class="table"><table><tbody><tr><td>Displacement</td><td>Gasoline147.3 cc</td></tr><tr><td>Maximum Power</td><td>Gasoline15 hp</td></tr><tr><td>Start Option</td><td>GasolineKick &amp; Electric</td></tr><tr><td>Ground Clearance</td><td>Gasoline140 mm</td></tr><tr><td>Front Brake</td><td>GasolineDisc</td></tr><tr><td>Transmission Type</td><td>GasolineManual</td></tr></tbody></table></figure><h2><strong>Suzuki Raider R150 Carb Specifications</strong></h2><p>The <a href="https://www.zigwheels.ph/new-motorcycles/suzuki/raider-r150-carb">Raider R150 Carb</a>, a new Moped from Suzuki comes in 1 variants. The top variant of Raider R150 Carb is powered by the Standard a 147.3 cc, 1 cylinder Gasoline engine that fires 15 hp of power and 12.5 Nm torque. The 2 seater <a href="https://www.zigwheels.ph/new-motorcycles/suzuki/raider-r150-carb/standard">Raider R150 Carb Standard</a> 6-Speed comes with Manual transmission. For added safety are provided central locking &amp; power door locks.</p>');
INSERT INTO ChildInventory VALUES(7,'CB001','Cars & Vehicles',NULL,NULL,NULL,'https://hokei-storage.s3.ap-northeast-1.amazonaws.com/images/Legit/model_houses/cb500x/source/CB500X.glb','Style_2024-1-3-21-22-54','Honda CB500','Red','small',NULL,NULL,'Active','Product-2024-1-3-21-24021.webp',NULL,'Legitem2023@gmail.com','Legitem2023@gmail.com',1709126574433,1726117404063,'Legitem2023@gmail.com','<h2><strong>Honda CB500F Standard 2024</strong></h2><p>The Honda CB500F Standard price in the Philippines starts at ₱379,000 . The CB500F Standard is powered by a 471 cc engine, and has a 6-Speed gearbox. The Honda CB500F Standard has a seating height of 789 mm and kerb weight of 189 kg. The CB500F Standard comes with Dual Disc front brakes and Disc rear brakes. Over 7 users have reviewed CB500F Standard on basis of Features, Mileage, seating comfort, and engine performance. CB500F Standard top competitors are Ninja 650 Standard, Z650 Standard, CBR500R Standard and Ninja 400 Standard.</p><p>Read More</p><h2><strong>CB500F Standard Specs</strong></h2><p>&nbsp;</p><figure class="table"><table><tbody><tr><td>Start Option</td><td>GasolineElectric</td></tr><tr><td>Transmission Type</td><td>GasolineManual</td></tr><tr><td>Front Brake</td><td>GasolineDual Disc</td></tr><tr><td>Engine</td><td>Gasoline471 cc</td></tr><tr><td>Power</td><td>Gasoline46.9 hp</td></tr><tr><td>Ground Clearance</td><td>Gasoline144 mm</td></tr></tbody></table></figure><h2><strong>Honda CB500F Standard Key Highlights</strong></h2><p>The Honda CB500F Standard is a Gasoline Manual variant of the <a href="https://www.zigwheels.ph/new-motorcycles/honda/cb500f">Honda CB500F</a> lineup. Checkout Honda CB500F Standard Price in the Philippines. View CB500F Standard Latest Promos, Colors, Review, Images and more at Zigwheels.</p><figure class="media"><oembed url="https://youtu.be/6waK6TYDGOA"></oembed></figure>');
INSERT INTO ChildInventory VALUES(8,NULL,'Cars & Vehicles','Car Accessories',NULL,'Sony','https://hokei-storage.s3.ap-northeast-1.amazonaws.com/images/Legit/model_houses/zh2/zh2.glb','Style_2024-1-3-21-26-3',NULL,NULL,NULL,0.0,0.0,'Active','Product-2024-1-3-21-26055.webp',NULL,'Legitem2023@gmail.com','Legitem2023@gmail.com',1709126763654,1726477589484,'Legitem2023@gmail.com',NULL);
INSERT INTO ChildInventory VALUES(9,'ZH2001','Cars & Vehicles','Motorcycle Gear',NULL,'Levi’s','https://hokei-storage.s3.ap-northeast-1.amazonaws.com/images/Legit/model_houses/zh2/zh2.glb','Style_2024-1-3-21-28-18','Kawasaki ZH2','Emerald Green','BIG',1.0,1.0,'Active','Product-2024-1-3-21-28044.webp',NULL,'Legitem2023@gmail.com','Legitem2023@gmail.com',1709126898396,1726647606610,'Legitem2023@gmail.com',replace('<h2><strong>Kawasaki Z H2 Specs &amp; Features</strong></h2>\n<p>The Kawasaki Z H2 is offered Gasoline engine in the Philippines. The new Super Sport from Kawasaki comes in a total of 1 variants. If we talk about Kawasaki Z H2 engine specs then the Gasoline engine displacement is 998 cc. Z H2 is available with Manual transmission. Also, depending on the variant and fuel type the Z H2 has a fuel consumption of 12 kmpl. The Z H2 is a 2 Seater Super Sport and has a length of 2085 mm the width of 810 mm, and a wheelbase of 1455 mm. along with a ground clearance of 140 mm.</p>\n<p>Read More</p>\n<h2><strong>Key Specs of Kawasaki Z H2</strong></h2>\n<figure class="table">\n<table>\n<tbody>\n<tr>\n<td>Displacement</td>\n<td>Gasoline998 cc</td>\n</tr>\n<tr>\n<td>Maximum Power</td>\n<td>Gasoline197.4 mm hp</td>\n</tr>\n<tr>\n<td>Start Option</td>\n<td>GasolineElectric</td>\n</tr>\n<tr>\n<td>Ground Clearance</td>\n<td>Gasoline140 mm</td>\n</tr>\n<tr>\n<td>Front Brake</td>\n<td>GasolineDual Disc</td>\n</tr>\n<tr>\n<td>Transmission Type</td>\n<td>GasolineManual</td>\n</tr>\n</tbody>\n</table>\n</figure>\n<h2><strong>Kawasaki Z H2 Specifications</strong></h2>\n<p>The <a href="https://www.zigwheels.ph/new-motorcycles/kawasaki/z-h2">Z H2</a>, a new Super Sport from Kawasaki comes in 1 variants. The top variant of Z H2 is powered by the Standard a 998 cc, 4 cylinder Gasoline engine that fires 197.4 mm hp of power and 133.5 Nm torque. The 2 seater <a href="https://www.zigwheels.ph/new-motorcycles/kawasaki/z-h2/standard">Z H2 Standard</a> 6-Speed comes with Manual transmission. For added safety are provided central locking &amp; power door locks.</p>\n<p>Read More</p>\n<p>StandardSuper Sport, Gasoline, Manual₱950,000 SRP Price</p>\n<p>fbbb</p>','\n',char(10)));
INSERT INTO ChildInventory VALUES(10,'DCT001','Cars & Vehicles','Motorcycle Gear',NULL,'Adidas','https://hokei-storage.s3.ap-northeast-1.amazonaws.com/images/Legit/model_houses/scene/scene.glb','Style_2024-1-3-21-32-18','Ducati Diavel','Red','',1000000.0,100000.0,'Active','Product-2024-1-3-21-32050.webp',NULL,'Legitem2023@gmail.com','',1709127139172,1726562559867,'Legitem2023@gmail.com',NULL);
INSERT INTO ChildInventory VALUES(12,NULL,'Electronics','Board Games',NULL,'Coach','https://hokei-storage.s3.ap-northeast-1.amazonaws.com/images/Legit/model_houses/zh2/zh2.glb','Style_2024-2-5-20-19-23',NULL,'Red','small',NULL,NULL,'Active',NULL,NULL,'Legitem2023@gmail.com','Legitem2023@gmail.com',1709295563531,1726558529911,'Legitem2023@gmail.com','<p>HELLO</p>');
INSERT INTO ChildInventory VALUES(13,NULL,'Electronics','Bags',NULL,'Fitbit','https://hokei-storage.s3.ap-northeast-1.amazonaws.com/images/Legit/model_houses/zh2/zh2.glb','Style_2024-2-5-20-19-56',NULL,'Red','small',10.0,0.0,'Active',NULL,NULL,'Legitem2023@gmail.com','Legitem2023@gmail.com',1709295596431,1726536539275,'Legitem2023@gmail.com','');
INSERT INTO ChildInventory VALUES(15,'Rdr150003','Electronics','Accessories',NULL,'Android Tablets','https://hokei-storage.s3.ap-northeast-1.amazonaws.com/images/Legit/model_houses/zh2/zh2.glb','Style_2024-1-2-20-53-24','SuzuRaider 150','Green','0',0.0,0.0,'Active','Product-2024-7-6-12-26034.webp',NULL,'Legitem2023@gmail.com','Legitem2023@gmail.com',1709296823468,1726562849519,'Legitem2023@gmail.com','<h2><strong>Suzuki Raider R150 Carb Specs &amp; Features</strong></h2><p>The Suzuki Raider R150 Carb is offered Gasoline engine in the Philippines. The new Moped from Suzuki comes in a total of 1 variants. If we talk about Suzuki Raider R150 Carb engine specs then the Gasoline engine displacement is 147.3 cc. Raider R150 Carb is available with Manual transmission. Also, depending on the variant and fuel type the Raider R150 Carb has a fuel consumption of 50 kmpl. The Raider R150 Carb is a 2 Seater Moped and has a length of 1945 mm the width of 670 mm, and a wheelbase of 1280 mm. along with a ground clearance of 140 mm.</p><p>Read More</p><h2><strong>Key Specs of Suzuki Raider R150 Carb</strong></h2><figure class="table"><table><tbody><tr><td>Displacement</td><td>Gasoline147.3 cc</td></tr><tr><td>Maximum Power</td><td>Gasoline15 hp</td></tr><tr><td>Start Option</td><td>GasolineKick &amp; Electric</td></tr><tr><td>Ground Clearance</td><td>Gasoline140 mm</td></tr><tr><td>Front Brake</td><td>GasolineDisc</td></tr><tr><td>Transmission Type</td><td>GasolineManual</td></tr></tbody></table></figure><h2><strong>Suzuki Raider R150 Carb Specifications</strong></h2><p>The <a href="https://www.zigwheels.ph/new-motorcycles/suzuki/raider-r150-carb">Raider R150 Carb</a>, a new Moped from Suzuki comes in 1 variants. The top variant of Raider R150 Carb is powered by the Standard a 147.3 cc, 1 cylinder Gasoline engine that fires 15 hp of power and 12.5 Nm torque. The 2 seater <a href="https://www.zigwheels.ph/new-motorcycles/suzuki/raider-r150-carb/standard">Raider R150 Carb Standard</a> 6-Speed comes with Manual transmission. For added safety are provided central locking &amp; power door locks.</p>');
INSERT INTO ChildInventory VALUES(149,NULL,NULL,NULL,NULL,NULL,NULL,'Style_2024-5-5-13-32-43',NULL,NULL,NULL,0.0,0.0,'Active',NULL,NULL,'Legitem2023@gmail.com','Legitem2023@gmail.com',1718343163237,1718343163237,'Legitem2023@gmail.com',NULL);
INSERT INTO ChildInventory VALUES(150,NULL,NULL,NULL,NULL,NULL,NULL,'Style_2024-5-5-13-32-50',NULL,NULL,NULL,0.0,0.0,'Active',NULL,NULL,'Legitem2023@gmail.com','Legitem2023@gmail.com',1718343170209,1718343170209,'Legitem2023@gmail.com',NULL);
INSERT INTO ChildInventory VALUES(153,NULL,NULL,NULL,NULL,NULL,NULL,'Style_2024-7-6-13-19-59',NULL,NULL,NULL,0.0,0.0,'Active',NULL,NULL,'Legitem2023@gmail.com','Legitem2023@gmail.com',1724476800207,1724476800207,'Legitem2023@gmail.com',NULL);
INSERT INTO ChildInventory VALUES(160,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.0,0.0,'Active',NULL,NULL,'','',1724902762880,1724902762880,'',NULL);
INSERT INTO ChildInventory VALUES(161,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.0,0.0,'Active',NULL,NULL,'','',1724902790913,1724902790913,'',NULL);
INSERT INTO ChildInventory VALUES(162,NULL,NULL,NULL,NULL,NULL,NULL,'Style_2024-8-1-9-49-37',NULL,NULL,NULL,0.0,0.0,'Active',NULL,NULL,'Legitem2023@gmail.com','Legitem2023@gmail.com',1725846577926,1725846577926,'Legitem2023@gmail.com',NULL);
INSERT INTO ChildInventory VALUES(163,NULL,NULL,NULL,NULL,NULL,NULL,'Style_2024-8-1-9-50-49',NULL,NULL,NULL,0.0,0.0,'Active',NULL,NULL,'Legitem2023@gmail.com','Legitem2023@gmail.com',1725846649354,1725846649354,'Legitem2023@gmail.com',NULL);
INSERT INTO ChildInventory VALUES(165,NULL,NULL,NULL,NULL,NULL,NULL,'Style_2024-8-1-9-57-21',NULL,NULL,NULL,0.0,0.0,'Active',NULL,NULL,'Legitem2023@gmail.com','Legitem2023@gmail.com',1725847041344,1725847041344,'Legitem2023@gmail.com',NULL);
INSERT INTO ChildInventory VALUES(166,'PrCode_20248110583','Electronics',NULL,NULL,NULL,NULL,'Style_2024-8-1-10-58-3','IPhone 15','Red','small',0.0,0.0,'Active',NULL,NULL,'Legitem2023@gmail.com','Legitem2023@gmail.com',1725850684031,1726535449430,'Legitem2023@gmail.com','');
INSERT INTO ChildInventory VALUES(167,'PrCode_202481115252','Electronics',NULL,NULL,NULL,NULL,'Style_2024-8-1-11-52-52','IPhone 15s',NULL,NULL,0.0,0.0,'Active',NULL,NULL,'Legitem2023@gmail.com','Legitem2023@gmail.com',1725853973004,1726474119321,'Legitem2023@gmail.com',NULL);
INSERT INTO ChildInventory VALUES(168,'PrCode_202481132931','Electronics',NULL,NULL,NULL,NULL,'Style_2024-8-1-13-29-31','Asus',NULL,NULL,0.0,0.0,'Active',NULL,NULL,'Legitem2023@gmail.com','Legitem2023@gmail.com',1725859771556,1726474119321,'Legitem2023@gmail.com',NULL);
INSERT INTO ChildInventory VALUES(181,'PrCode_20248213424','Fashion','Footwear',NULL,'Nikon',NULL,'Style_2024-8-4-9-15-39','Tshirt','Redish','Freesize',3000.0,10.0,'Active',NULL,NULL,'Legitem2023@gmail.com','Legitem2023@gmail.com',1726551724450,1726552799460,'Legitem2023@gmail.com','<h2><strong>How to write product descriptions for t-shirts?</strong></h2><p>Don’t just focus on the features of your t-shirt. Instead, think about what you can do to tell a story about the product.&nbsp;</p><ul><li>What makes your t-shirt different from others?</li><li>Is it made with high-quality fabric?</li><li>Do you have a unique history?</li><li>Who are your customers?</li></ul><p>Think about how you could make the customer feel a part of the brand.</p><p>Humans are hard-wired to like stories.&nbsp;</p><p>By telling a compelling story about your product, you can help your customers connect with your brand and your product.</p><h3><strong>Keep things simple</strong></h3><p>According to <a href="https://contentsquare.com/insights/digital-experience-benchmark/">Contentsquare, 2022 Digital Experience benchmark</a>, visitors spend around 55 seconds per page across all industries.</p><p>Imagine if someone comes on your t-shirt product listing, they will need to find all the information that they need in just a few seconds.</p><p>You do not want to use jargon or technical words which will make them click the back button or, even worse, close your website.</p><p>If a customer sees a product with 80% cotton and 20% polyester, they will ask themselves:</p><p>“What does this mean for me? Is the product a lower quality because of the polyester? Will my odour be bad after 2 hours of wearing this t-shirt?”</p><p>Probably most people have heard about cotton and polyester, but make sure to say why your product uses them.</p><h3><strong>Mix between features and benefits</strong></h3><p>Everyone wants to know what is your t-shirt fabric, what is the neck style or what is the fit type, but you do not wish to have these as the only things for your product.</p><p>Focus on how your t-shirt will improve your customer’s life.&nbsp;</p><p>Use power words to emphasize the benefits of your product instead of talking about its features.&nbsp;</p><p>Benefits are the way your product will improve your customer’s life.</p><p>For example, I created the below table and how each of the features would translate into benefits.</p><p>Show 102550100 entries</p><p>Search:</p><figure class="table"><table><thead><tr><th colspan="1" rowspan="1"><strong>Feature</strong></th><th colspan="1" rowspan="1"><strong>Benefit</strong></th></tr></thead><tbody><tr><td>100% Organic Cotton</td><td>A soft, breathable jersey which is an excellent choice for the warmest day. It will mix great with any pair of jeans or pants.</td></tr><tr><td>Machine Wash</td><td>All your t-shirts shrink in size after you wash them? This product is machine washable in just 30 minutes and will keep its color like new.</td></tr><tr><td>Plain design</td><td>You cannot go wrong with this simple design. Less is more. The design on this t-shirt will work no matter if you go out with friends or if you want to have a casual dinner with your loved ones.</td></tr></tbody></table></figure>');
INSERT INTO ChildInventory VALUES(182,'PrCode_202482145634','Fashion','Sportswear',NULL,'Adidas',NULL,'Style_2024-2-5-20-28-3','Shoes','Red','Freesize',100000.0,10.0,'Active',NULL,NULL,'Legitem2023@gmail.com','Legitem2023@gmail.com',1726556194367,1726556194367,'Legitem2023@gmail.com','');
INSERT INTO ChildInventory VALUES(184,'PrCode_2024821500','Electronics','Smartphones',NULL,'Samsung',NULL,'Style_2024-8-2-11-43-39','Phone','Emerald Green','small',100000.0,10.0,'Active',NULL,NULL,'Legitem2023@gmail.com','Legitem2023@gmail.com',1726556400139,1726559557862,'Legitem2023@gmail.com','<p>GHGHH</p>');
INSERT INTO ChildInventory VALUES(185,'PrCode_202482154750','Electronics','Laptops',NULL,'Lenovo',NULL,'Style_2024-7-3-13-26-32','Lenovo','Red','small',100000.0,10.0,'Active',NULL,NULL,'Legitem2023@gmail.com','Legitem2023@gmail.com',1726559270213,1726559270213,'Legitem2023@gmail.com','');
INSERT INTO ChildInventory VALUES(186,'PrCode_20248215499','Electronics','Laptops',NULL,'Lenovo',NULL,'Style_2024-7-3-13-26-32','Lenovo','Emerald Green','BIG',100000.0,10.0,'Active',NULL,NULL,'Legitem2023@gmail.com','Legitem2023@gmail.com',1726559349070,1726559349070,'Legitem2023@gmail.com','');
INSERT INTO ChildInventory VALUES(187,'PrCode_202482155422','Electronics','Smartphones',NULL,'Samsung',NULL,'Style_2024-8-2-11-43-39','Phone','Emerald Green','BIG',100000.0,600.0,'Active',NULL,NULL,'Legitem2023@gmail.com','Legitem2023@gmail.com',1726559662157,1726559662157,'Legitem2023@gmail.com','');
INSERT INTO ChildInventory VALUES(189,'PrCode_202482161550','Electronics','Smartphones',NULL,'Samsung',NULL,'Style_2024-8-2-11-40-15','Short','Gun metal black','freesize',100.0,100.0,'Active',NULL,NULL,'Legitem2023@gmail.com','Legitem2023@gmail.com',1726560950652,1726560950652,'Legitem2023@gmail.com','');
INSERT INTO ChildInventory VALUES(190,'PrCode_202482164441','Electronics','Smartphones',NULL,'OnePlus',NULL,'Style_2024-2-5-20-19-11','One Plus Mobile','Gun Metal Black','Freesize',100.0,198.99999999999999999,'Active',NULL,NULL,'Legitem2023@gmail.com','Legitem2023@gmail.com',1726562681832,1726562681832,'Legitem2023@gmail.com','');
INSERT INTO ChildInventory VALUES(191,'PrCode_202483162313','Electronics','Smartphones',NULL,'Samsung',NULL,'Style_2024-8-3-18-34-29','Samsung A71','Gun Metal Black','Dimension (H×W×D, mm)	165.0 × 77.4 × 8.4	159.9 × 75.1 × 8.4',20000.0,20.0,'Active',NULL,NULL,'Legitem2023@gmail.com','Legitem2023@gmail.com',1726647793278,1726647889602,'Legitem2023@gmail.com',replace('<table style="width: 727px;" cellspacing="0">\n<tbody>\n<tr>\n<th style="width: 86px;" rowspan="15" scope="row">Network</th>\n<td style="width: 110px;"><a href="https://www.gsmarena.com/network-bands.php3">Technology</a></td>\n<td><a href="https://www.gsmarena.com/samsung_galaxy_a72-10469.php" data-spec="nettech">GSM / HSPA / LTE</a></td>\n</tr>\n</tbody>\n</table>\n<table style="width: 727px;" cellspacing="0">\n<tbody>\n<tr>\n<th style="width: 86px;" rowspan="2" scope="row">Launch</th>\n<td style="width: 110px;"><a href="https://www.gsmarena.com/glossary.php3?term=phone-life-cycle">Announced</a></td>\n<td data-spec="year">2021, March 17</td>\n</tr>\n<tr>\n<td style="width: 110px;"><a href="https://www.gsmarena.com/glossary.php3?term=phone-life-cycle">Status</a></td>\n<td data-spec="status">Available. Released 2021, March 26</td>\n</tr>\n</tbody>\n</table>\n<table style="width: 727px;" cellspacing="0">\n<tbody>\n<tr>\n<th style="width: 86px;" rowspan="6" scope="row">Body</th>\n<td style="width: 110px;"><a href="https://www.gsmarena.com/samsung_galaxy_a72-10469.php">Dimensions</a></td>\n<td data-spec="dimensions">165 x 77.4 x 8.4 mm (6.50 x 3.05 x 0.33 in)</td>\n</tr>\n<tr>\n<td style="width: 110px;"><a href="https://www.gsmarena.com/samsung_galaxy_a72-10469.php">Weight</a></td>\n<td data-spec="weight">203 g (7.16 oz)</td>\n</tr>\n<tr>\n<td style="width: 110px;"><a href="https://www.gsmarena.com/glossary.php3?term=build">Build</a></td>\n<td data-spec="build">Glass front (Gorilla Glass 5), plastic frame, plastic back</td>\n</tr>\n<tr>\n<td style="width: 110px;"><a href="https://www.gsmarena.com/glossary.php3?term=sim">SIM</a></td>\n<td data-spec="sim">Single SIM (Nano-SIM) or Hybrid Dual SIM (Nano-SIM, dual stand-by)</td>\n</tr>\n<tr>\n<td style="width: 110px;">&nbsp;</td>\n<td data-spec="bodyother">IP67 dust/water resistant (up to 1m for 30 min)</td>\n</tr>\n</tbody>\n</table>\n<table style="width: 727px;" cellspacing="0">\n<tbody>\n<tr>\n<th style="width: 86px;" rowspan="5" scope="row">Display</th>\n<td style="width: 110px;"><a href="https://www.gsmarena.com/glossary.php3?term=display-type">Type</a></td>\n<td data-spec="displaytype">Super AMOLED, 90Hz, 800 nits (HBM)</td>\n</tr>\n<tr>\n<td style="width: 110px;"><a href="https://www.gsmarena.com/samsung_galaxy_a72-10469.php">Size</a></td>\n<td data-spec="displaysize">6.7 inches, 107.8 cm<sup>2</sup>&nbsp;(~84.4% screen-to-body ratio)</td>\n</tr>\n<tr>\n<td style="width: 110px;"><a href="https://www.gsmarena.com/glossary.php3?term=resolution">Resolution</a></td>\n<td data-spec="displayresolution">1080 x 2400 pixels, 20:9 ratio (~394 ppi density)</td>\n</tr>\n<tr>\n<td style="width: 110px;"><a href="https://www.gsmarena.com/glossary.php3?term=screen-protection">Protection</a></td>\n<td data-spec="displayprotection">Corning Gorilla Glass 5</td>\n</tr>\n<tr>\n<td style="width: 110px;">&nbsp;</td>\n<td data-spec="displayother">Always-on display</td>\n</tr>\n</tbody>\n</table>\n<table style="width: 727px;" cellspacing="0">\n<tbody>\n<tr>\n<th style="width: 86px;" rowspan="4" scope="row">Platform</th>\n<td style="width: 110px;"><a href="https://www.gsmarena.com/glossary.php3?term=os">OS</a></td>\n<td data-spec="os">Android 11, upgradable to Android 12, One UI 4.1</td>\n</tr>\n<tr>\n<td style="width: 110px;"><a href="https://www.gsmarena.com/glossary.php3?term=chipset">Chipset</a></td>\n<td data-spec="chipset">Qualcomm SM7125 Snapdragon 720G (8 nm)</td>\n</tr>\n<tr>\n<td style="width: 110px;"><a href="https://www.gsmarena.com/glossary.php3?term=cpu">CPU</a></td>\n<td data-spec="cpu">Octa-core (2x2.3 GHz Kryo 465 Gold &amp; 6x1.8 GHz Kryo 465 Silver)</td>\n</tr>\n<tr>\n<td style="width: 110px;"><a href="https://www.gsmarena.com/glossary.php3?term=gpu">GPU</a></td>\n<td data-spec="gpu">Adreno 618</td>\n</tr>\n</tbody>\n</table>\n<table style="width: 727px;" cellspacing="0">\n<tbody>\n<tr>\n<th style="width: 86px;" rowspan="5" scope="row">Memory</th>\n<td style="width: 110px;"><a href="https://www.gsmarena.com/glossary.php3?term=memory-card-slot">Card slot</a></td>\n<td data-spec="memoryslot">microSDXC (uses shared SIM slot)</td>\n</tr>\n<tr>\n<td style="width: 110px;"><a href="https://www.gsmarena.com/glossary.php3?term=dynamic-memory">Internal</a></td>\n<td data-spec="internalmemory">128GB 6GB RAM, 128GB 8GB RAM, 256GB 6GB RAM, 256GB 8GB RAM</td>\n</tr>\n</tbody>\n</table>\n<table style="width: 727px;" cellspacing="0">\n<tbody>\n<tr>\n<th style="width: 86px;" rowspan="4" scope="row">Main Camera</th>\n<td style="width: 110px;"><a href="https://www.gsmarena.com/glossary.php3?term=camera">Quad</a></td>\n<td data-spec="cam1modules">64 MP, f/1.8, 26mm (wide), 1/1.7", 0.8&micro;m, PDAF, OIS<br>8 MP, f/2.4, (telephoto), 1.0&micro;m, PDAF, OIS, 3x optical zoom<br>12 MP, f/2.2, 123˚ (ultrawide), 1.12&micro;m<br>5 MP, f/2.4, (macro)</td>\n</tr>\n<tr>\n<td style="width: 110px;"><a href="https://www.gsmarena.com/glossary.php3?term=camera">Features</a></td>\n<td data-spec="cam1features">LED flash, panorama, HDR</td>\n</tr>\n<tr>\n<td style="width: 110px;"><a href="https://www.gsmarena.com/glossary.php3?term=camera">Video</a></td>\n<td data-spec="cam1video">4K@30fps, 1080p@30/60fps; gyro-EIS</td>\n</tr>\n</tbody>\n</table>\n<table style="width: 727px;" cellspacing="0">\n<tbody>\n<tr>\n<th style="width: 86px;" rowspan="4" scope="row">Selfie camera</th>\n<td style="width: 110px;"><a href="https://www.gsmarena.com/glossary.php3?term=secondary-camera">Single</a></td>\n<td data-spec="cam2modules">32 MP, f/2.2, 26mm (wide), 1/2.8", 0.8&micro;m</td>\n</tr>\n<tr>\n<td style="width: 110px;"><a href="https://www.gsmarena.com/glossary.php3?term=secondary-camera">Features</a></td>\n<td data-spec="cam2features">HDR</td>\n</tr>\n<tr>\n<td style="width: 110px;"><a href="https://www.gsmarena.com/glossary.php3?term=secondary-camera">Video</a></td>\n<td data-spec="cam2video">4K@30fps, 1080p@30fps</td>\n</tr>\n</tbody>\n</table>\n<table style="width: 727px;" cellspacing="0">\n<tbody>\n<tr>\n<th style="width: 86px;" rowspan="3" scope="row">Sound</th>\n<td style="width: 110px;"><a href="https://www.gsmarena.com/glossary.php3?term=loudspeaker">Loudspeaker</a></td>\n<td>Yes, with stereo speakers</td>\n</tr>\n<tr>\n<td style="width: 110px;"><a href="https://www.gsmarena.com/glossary.php3?term=audio-jack">3.5mm jack</a></td>\n<td>Yes</td>\n</tr>\n</tbody>\n</table>\n<table style="width: 727px;" cellspacing="0">\n<tbody>\n<tr>\n<th style="width: 86px;" rowspan="9" scope="row">Comms</th>\n<td style="width: 110px;"><a href="https://www.gsmarena.com/glossary.php3?term=wi-fi">WLAN</a></td>\n<td data-spec="wlan">Wi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct</td>\n</tr>\n<tr>\n<td style="width: 110px;"><a href="https://www.gsmarena.com/glossary.php3?term=bluetooth">Bluetooth</a></td>\n<td data-spec="bluetooth">5.0, A2DP, LE</td>\n</tr>\n<tr>\n<td style="width: 110px;"><a href="https://www.gsmarena.com/glossary.php3?term=gnss">Positioning</a></td>\n<td data-spec="gps">GPS, GLONASS, GALILEO, BDS</td>\n</tr>\n<tr>\n<td style="width: 110px;"><a href="https://www.gsmarena.com/glossary.php3?term=nfc">NFC</a></td>\n<td data-spec="nfc">Yes (market/region dependent)</td>\n</tr>\n<tr>\n<td style="width: 110px;"><a href="https://www.gsmarena.com/glossary.php3?term=fm-radio">Radio</a></td>\n<td data-spec="radio">FM radio</td>\n</tr>\n<tr>\n<td style="width: 110px;"><a href="https://www.gsmarena.com/glossary.php3?term=usb">USB</a></td>\n<td data-spec="usb">USB Type-C 2.0, OTG</td>\n</tr>\n</tbody>\n</table>\n<table style="width: 727px;" cellspacing="0">\n<tbody>\n<tr>\n<th style="width: 86px;" rowspan="9" scope="row">Features</th>\n<td style="width: 110px;"><a href="https://www.gsmarena.com/glossary.php3?term=sensors">Sensors</a></td>\n<td data-spec="sensors">Fingerprint (under display, optical), accelerometer, gyro, compass</td>\n</tr>\n<tr>\n<td style="width: 110px;">&nbsp;</td>\n<td data-spec="featuresother">Virtual proximity sensing</td>\n</tr>\n</tbody>\n</table>\n<table style="width: 727px;" cellspacing="0">\n<tbody>\n<tr>\n<th style="width: 86px;" rowspan="7" scope="row">Battery</th>\n<td style="width: 110px;"><a href="https://www.gsmarena.com/glossary.php3?term=rechargeable-battery-types">Type</a></td>\n<td data-spec="batdescription1">Li-Ion 5000 mAh, non-removable</td>\n</tr>\n<tr>\n<td style="width: 110px;"><a href="https://www.gsmarena.com/glossary.php3?term=battery-charging">Charging</a></td>\n<td>25W wired</td>\n</tr>\n</tbody>\n</table>\n<table style="width: 727px;" cellspacing="0">\n<tbody>\n<tr>\n<th style="width: 86px;" rowspan="6" scope="row">Misc</th>\n<td style="width: 110px;"><a href="https://www.gsmarena.com/glossary.php3?term=build">Colors</a></td>\n<td data-spec="colors">Awesome Black, Awesome White, Awesome Violet, Awesome Blue</td>\n</tr>\n<tr>\n<td style="width: 110px;"><a href="https://www.gsmarena.com/glossary.php3?term=models">Models</a></td>\n<td data-spec="models">SM-A725F, SM-A725F/DS, SM-A725M, SM-A725M/DS</td>\n</tr>\n<tr>\n<td style="width: 110px;"><a href="https://www.gsmarena.com/glossary.php3?term=sar">SAR EU</a></td>\n<td data-spec="sar-eu">0.23 W/kg (head) &nbsp; &nbsp; 1.17 W/kg (body) &nbsp; &nbsp;</td>\n</tr>\n<tr>\n<td style="width: 110px;"><a href="https://www.gsmarena.com/glossary.php3?term=price">Price</a></td>\n<td data-spec="price"><a href="https://www.gsmarena.com/samsung_galaxy_a72-price-10469.php">$&thinsp;789.99 / &euro;&thinsp;369.99 / &pound;&thinsp;209.00 / ₹&thinsp;20,499</a></td>\n</tr>\n</tbody>\n</table>\n<table style="width: 727px;" cellspacing="0">\n<tbody>\n<tr>\n<th style="width: 86px;" rowspan="6" scope="row">Tests</th>\n<td style="width: 110px;"><a href="https://www.gsmarena.com/glossary.php3?term=benchmarking">Performance</a></td>\n<td data-spec="tbench">AnTuTu: 279342 (v8)<br>GeekBench: 6483 (v4.4), 1627 (v5.1)<br>GFXBench: 15fps (ES 3.1 onscreen)</td>\n</tr>\n<tr>\n<td style="width: 110px;"><a href="https://www.gsmarena.com/gsmarena_lab_tests-review-751p2.php">Display</a></td>\n<td><a href="https://www.gsmarena.com/samsung_galaxy_a72-review-2260p3.php#dt">825 nits max brightness (measured)</a></td>\n</tr>\n<tr>\n<td style="width: 110px;"><a href="https://www.gsmarena.com/gsmarena_lab_tests-review-751p5.php">Camera</a></td>\n<td><a href="https://www.gsmarena.com/piccmp.php3?idType=4&amp;idPhone1=10469&amp;nSuggest=1">Photo</a>&nbsp;/&nbsp;<a href="https://www.gsmarena.com/vidcmp.php3?idType=4&amp;idPhone1=10469&amp;nSuggest=1">Video</a></td>\n</tr>\n<tr>\n<td style="width: 110px;"><a href="https://www.gsmarena.com/gsmarena_lab_tests-review-751p7.php">Loudspeaker</a></td>\n<td><a href="https://www.gsmarena.com/samsung_galaxy_a72-review-2260p3.php#lt">-26.4 LUFS (Good)</a></td>\n</tr>\n<tr>\n<td style="width: 110px;"><a href="https://www.gsmarena.com/gsmarena_lab_tests-review-751p6.php">Battery (old)</a></td>\n<td data-spec="batlife">\n<div><a href="https://www.gsmarena.com/samsung_galaxy_a72-10469.php">Endurance rating 117h</a></div>\n</td>\n</tr>\n</tbody>\n</table>','\n',char(10)));
INSERT INTO ChildInventory VALUES(192,'PrCode_202483163635','Electronics','Smartphones',NULL,'Samsung',NULL,'Style_2024-8-1-9-51-53','Samsung A72','Gun Metal Black','Dimensions	165 x 77.4 x 8.4 mm (6.50 x 3.05 x 0.33 in)',20000.0,20.0,'Active',NULL,NULL,'Legitem2023@gmail.com','Legitem2023@gmail.com',1726648595192,1726649121020,'Legitem2023@gmail.com',replace('<table style="width: 727px;" cellspacing="0">\n<tbody>\n<tr>\n<th style="width: 86px;" rowspan="15" scope="row">\n<p>&nbsp;</p>\n<p>Network</p>\n</th>\n<td style="width: 110px;"><a href="https://www.gsmarena.com/network-bands.php3">Technology</a></td>\n<td><a href="https://www.gsmarena.com/samsung_galaxy_a72-10469.php" data-spec="nettech">GSM / HSPA / LTE</a></td>\n</tr>\n</tbody>\n</table>\n<table style="width: 727px;" cellspacing="0">\n<tbody>\n<tr>\n<th style="width: 86px;" rowspan="2" scope="row">Launch</th>\n<td style="width: 110px;"><a href="https://www.gsmarena.com/glossary.php3?term=phone-life-cycle">Announced</a></td>\n<td data-spec="year">2021, March 17</td>\n</tr>\n<tr>\n<td style="width: 110px;"><a href="https://www.gsmarena.com/glossary.php3?term=phone-life-cycle">Status</a></td>\n<td data-spec="status">Available. Released 2021, March 26</td>\n</tr>\n</tbody>\n</table>\n<table style="width: 727px;" cellspacing="0">\n<tbody>\n<tr>\n<th style="width: 86px;" rowspan="6" scope="row">Body</th>\n<td style="width: 110px;"><a href="https://www.gsmarena.com/samsung_galaxy_a72-10469.php">Dimensions</a></td>\n<td data-spec="dimensions">165 x 77.4 x 8.4 mm (6.50 x 3.05 x 0.33 in)</td>\n</tr>\n<tr>\n<td style="width: 110px;"><a href="https://www.gsmarena.com/samsung_galaxy_a72-10469.php">Weight</a></td>\n<td data-spec="weight">203 g (7.16 oz)</td>\n</tr>\n<tr>\n<td style="width: 110px;"><a href="https://www.gsmarena.com/glossary.php3?term=build">Build</a></td>\n<td data-spec="build">Glass front (Gorilla Glass 5), plastic frame, plastic back</td>\n</tr>\n<tr>\n<td style="width: 110px;"><a href="https://www.gsmarena.com/glossary.php3?term=sim">SIM</a></td>\n<td data-spec="sim">Single SIM (Nano-SIM) or Hybrid Dual SIM (Nano-SIM, dual stand-by)</td>\n</tr>\n<tr>\n<td style="width: 110px;">&nbsp;</td>\n<td data-spec="bodyother">IP67 dust/water resistant (up to 1m for 30 min)</td>\n</tr>\n</tbody>\n</table>\n<table style="width: 727px;" cellspacing="0">\n<tbody>\n<tr>\n<th style="width: 86px;" rowspan="5" scope="row">Display</th>\n<td style="width: 110px;"><a href="https://www.gsmarena.com/glossary.php3?term=display-type">Type</a></td>\n<td data-spec="displaytype">Super AMOLED, 90Hz, 800 nits (HBM)</td>\n</tr>\n<tr>\n<td style="width: 110px;"><a href="https://www.gsmarena.com/samsung_galaxy_a72-10469.php">Size</a></td>\n<td data-spec="displaysize">6.7 inches, 107.8 cm<sup>2</sup>&nbsp;(~84.4% screen-to-body ratio)</td>\n</tr>\n<tr>\n<td style="width: 110px;"><a href="https://www.gsmarena.com/glossary.php3?term=resolution">Resolution</a></td>\n<td data-spec="displayresolution">1080 x 2400 pixels, 20:9 ratio (~394 ppi density)</td>\n</tr>\n<tr>\n<td style="width: 110px;"><a href="https://www.gsmarena.com/glossary.php3?term=screen-protection">Protection</a></td>\n<td data-spec="displayprotection">Corning Gorilla Glass 5</td>\n</tr>\n<tr>\n<td style="width: 110px;">&nbsp;</td>\n<td data-spec="displayother">Always-on display</td>\n</tr>\n</tbody>\n</table>\n<table style="width: 727px;" cellspacing="0">\n<tbody>\n<tr>\n<th style="width: 86px;" rowspan="4" scope="row">Platform</th>\n<td style="width: 110px;"><a href="https://www.gsmarena.com/glossary.php3?term=os">OS</a></td>\n<td data-spec="os">Android 11, upgradable to Android 12, One UI 4.1</td>\n</tr>\n<tr>\n<td style="width: 110px;"><a href="https://www.gsmarena.com/glossary.php3?term=chipset">Chipset</a></td>\n<td data-spec="chipset">Qualcomm SM7125 Snapdragon 720G (8 nm)</td>\n</tr>\n<tr>\n<td style="width: 110px;"><a href="https://www.gsmarena.com/glossary.php3?term=cpu">CPU</a></td>\n<td data-spec="cpu">Octa-core (2x2.3 GHz Kryo 465 Gold &amp; 6x1.8 GHz Kryo 465 Silver)</td>\n</tr>\n<tr>\n<td style="width: 110px;"><a href="https://www.gsmarena.com/glossary.php3?term=gpu">GPU</a></td>\n<td data-spec="gpu">Adreno 618</td>\n</tr>\n</tbody>\n</table>\n<table style="width: 727px;" cellspacing="0">\n<tbody>\n<tr>\n<th style="width: 86px;" rowspan="5" scope="row">Memory</th>\n<td style="width: 110px;"><a href="https://www.gsmarena.com/glossary.php3?term=memory-card-slot">Card slot</a></td>\n<td data-spec="memoryslot">microSDXC (uses shared SIM slot)</td>\n</tr>\n<tr>\n<td style="width: 110px;"><a href="https://www.gsmarena.com/glossary.php3?term=dynamic-memory">Internal</a></td>\n<td data-spec="internalmemory">128GB 6GB RAM, 128GB 8GB RAM, 256GB 6GB RAM, 256GB 8GB RAM</td>\n</tr>\n</tbody>\n</table>\n<table style="width: 727px;" cellspacing="0">\n<tbody>\n<tr>\n<th style="width: 86px;" rowspan="4" scope="row">Main Camera</th>\n<td style="width: 110px;"><a href="https://www.gsmarena.com/glossary.php3?term=camera">Quad</a></td>\n<td data-spec="cam1modules">64 MP, f/1.8, 26mm (wide), 1/1.7", 0.8&micro;m, PDAF, OIS<br>8 MP, f/2.4, (telephoto), 1.0&micro;m, PDAF, OIS, 3x optical zoom<br>12 MP, f/2.2, 123˚ (ultrawide), 1.12&micro;m<br>5 MP, f/2.4, (macro)</td>\n</tr>\n<tr>\n<td style="width: 110px;"><a href="https://www.gsmarena.com/glossary.php3?term=camera">Features</a></td>\n<td data-spec="cam1features">LED flash, panorama, HDR</td>\n</tr>\n<tr>\n<td style="width: 110px;"><a href="https://www.gsmarena.com/glossary.php3?term=camera">Video</a></td>\n<td data-spec="cam1video">4K@30fps, 1080p@30/60fps; gyro-EIS</td>\n</tr>\n</tbody>\n</table>\n<table style="width: 727px;" cellspacing="0">\n<tbody>\n<tr>\n<th style="width: 86px;" rowspan="4" scope="row">Selfie camera</th>\n<td style="width: 110px;"><a href="https://www.gsmarena.com/glossary.php3?term=secondary-camera">Single</a></td>\n<td data-spec="cam2modules">32 MP, f/2.2, 26mm (wide), 1/2.8", 0.8&micro;m</td>\n</tr>\n<tr>\n<td style="width: 110px;"><a href="https://www.gsmarena.com/glossary.php3?term=secondary-camera">Features</a></td>\n<td data-spec="cam2features">HDR</td>\n</tr>\n<tr>\n<td style="width: 110px;"><a href="https://www.gsmarena.com/glossary.php3?term=secondary-camera">Video</a></td>\n<td data-spec="cam2video">4K@30fps, 1080p@30fps</td>\n</tr>\n</tbody>\n</table>\n<table style="width: 727px;" cellspacing="0">\n<tbody>\n<tr>\n<th style="width: 86px;" rowspan="3" scope="row">Sound</th>\n<td style="width: 110px;"><a href="https://www.gsmarena.com/glossary.php3?term=loudspeaker">Loudspeaker</a></td>\n<td>Yes, with stereo speakers</td>\n</tr>\n<tr>\n<td style="width: 110px;"><a href="https://www.gsmarena.com/glossary.php3?term=audio-jack">3.5mm jack</a></td>\n<td>Yes</td>\n</tr>\n</tbody>\n</table>\n<table style="width: 727px;" cellspacing="0">\n<tbody>\n<tr>\n<th style="width: 86px;" rowspan="9" scope="row">Comms</th>\n<td style="width: 110px;"><a href="https://www.gsmarena.com/glossary.php3?term=wi-fi">WLAN</a></td>\n<td data-spec="wlan">Wi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct</td>\n</tr>\n<tr>\n<td style="width: 110px;"><a href="https://www.gsmarena.com/glossary.php3?term=bluetooth">Bluetooth</a></td>\n<td data-spec="bluetooth">5.0, A2DP, LE</td>\n</tr>\n<tr>\n<td style="width: 110px;"><a href="https://www.gsmarena.com/glossary.php3?term=gnss">Positioning</a></td>\n<td data-spec="gps">GPS, GLONASS, GALILEO, BDS</td>\n</tr>\n<tr>\n<td style="width: 110px;"><a href="https://www.gsmarena.com/glossary.php3?term=nfc">NFC</a></td>\n<td data-spec="nfc">Yes (market/region dependent)</td>\n</tr>\n<tr>\n<td style="width: 110px;"><a href="https://www.gsmarena.com/glossary.php3?term=fm-radio">Radio</a></td>\n<td data-spec="radio">FM radio</td>\n</tr>\n<tr>\n<td style="width: 110px;"><a href="https://www.gsmarena.com/glossary.php3?term=usb">USB</a></td>\n<td data-spec="usb">USB Type-C 2.0, OTG</td>\n</tr>\n</tbody>\n</table>\n<table style="width: 727px;" cellspacing="0">\n<tbody>\n<tr>\n<th style="width: 86px;" rowspan="9" scope="row">Features</th>\n<td style="width: 110px;"><a href="https://www.gsmarena.com/glossary.php3?term=sensors">Sensors</a></td>\n<td data-spec="sensors">Fingerprint (under display, optical), accelerometer, gyro, compass</td>\n</tr>\n<tr>\n<td style="width: 110px;">&nbsp;</td>\n<td data-spec="featuresother">Virtual proximity sensing</td>\n</tr>\n</tbody>\n</table>\n<table style="width: 727px;" cellspacing="0">\n<tbody>\n<tr>\n<th style="width: 86px;" rowspan="7" scope="row">Battery</th>\n<td style="width: 110px;"><a href="https://www.gsmarena.com/glossary.php3?term=rechargeable-battery-types">Type</a></td>\n<td data-spec="batdescription1">Li-Ion 5000 mAh, non-removable</td>\n</tr>\n<tr>\n<td style="width: 110px;"><a href="https://www.gsmarena.com/glossary.php3?term=battery-charging">Charging</a></td>\n<td>25W wired</td>\n</tr>\n</tbody>\n</table>\n<table style="width: 727px;" cellspacing="0">\n<tbody>\n<tr>\n<th style="width: 86px;" rowspan="6" scope="row">Misc</th>\n<td style="width: 110px;"><a href="https://www.gsmarena.com/glossary.php3?term=build">Colors</a></td>\n<td data-spec="colors">Awesome Black, Awesome White, Awesome Violet, Awesome Blue</td>\n</tr>\n<tr>\n<td style="width: 110px;"><a href="https://www.gsmarena.com/glossary.php3?term=models">Models</a></td>\n<td data-spec="models">SM-A725F, SM-A725F/DS, SM-A725M, SM-A725M/DS</td>\n</tr>\n<tr>\n<td style="width: 110px;"><a href="https://www.gsmarena.com/glossary.php3?term=sar">SAR EU</a></td>\n<td data-spec="sar-eu">0.23 W/kg (head) &nbsp; &nbsp; 1.17 W/kg (body) &nbsp; &nbsp;</td>\n</tr>\n<tr>\n<td style="width: 110px;"><a href="https://www.gsmarena.com/glossary.php3?term=price">Price</a></td>\n<td data-spec="price"><a href="https://www.gsmarena.com/samsung_galaxy_a72-price-10469.php">$&thinsp;789.99 / &euro;&thinsp;369.99 / &pound;&thinsp;209.00 / ₹&thinsp;20,499</a></td>\n</tr>\n</tbody>\n</table>\n<table style="width: 727px;" cellspacing="0">\n<tbody>\n<tr>\n<th style="width: 86px;" rowspan="6" scope="row">Tests</th>\n<td style="width: 110px;"><a href="https://www.gsmarena.com/glossary.php3?term=benchmarking">Performance</a></td>\n<td data-spec="tbench">AnTuTu: 279342 (v8)<br>GeekBench: 6483 (v4.4), 1627 (v5.1)<br>GFXBench: 15fps (ES 3.1 onscreen)</td>\n</tr>\n<tr>\n<td style="width: 110px;"><a href="https://www.gsmarena.com/gsmarena_lab_tests-review-751p2.php">Display</a></td>\n<td><a href="https://www.gsmarena.com/samsung_galaxy_a72-review-2260p3.php#dt">825 nits max brightness (measured)</a></td>\n</tr>\n<tr>\n<td style="width: 110px;"><a href="https://www.gsmarena.com/gsmarena_lab_tests-review-751p5.php">Camera</a></td>\n<td><a href="https://www.gsmarena.com/piccmp.php3?idType=4&amp;idPhone1=10469&amp;nSuggest=1">Photo</a>&nbsp;/&nbsp;<a href="https://www.gsmarena.com/vidcmp.php3?idType=4&amp;idPhone1=10469&amp;nSuggest=1">Video</a></td>\n</tr>\n<tr>\n<td style="width: 110px;"><a href="https://www.gsmarena.com/gsmarena_lab_tests-review-751p7.php">Loudspeaker</a></td>\n<td><a href="https://www.gsmarena.com/samsung_galaxy_a72-review-2260p3.php#lt">-26.4 LUFS (Good)</a></td>\n</tr>\n<tr>\n<td style="width: 110px;"><a href="https://www.gsmarena.com/gsmarena_lab_tests-review-751p6.php">Battery (old)</a></td>\n<td data-spec="batlife">\n<div><a href="https://www.gsmarena.com/samsung_galaxy_a72-10469.php">Endurance rating 117h</a></div>\n</td>\n</tr>\n</tbody>\n</table>\n<div style="max-width: 650px;" data-ephox-embed-iri="https://youtu.be/oyKyTnezhp8">\n<div style="left: 0; width: 100%; height: 0; position: relative; padding-bottom: 56.25%;"><iframe style="top: 0; left: 0; width: 100%; height: 100%; position: absolute; border: 0;" src="https://www.youtube.com/embed/oyKyTnezhp8?rel=0" scrolling="no" allow="accelerometer; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share;" allowfullscreen="allowfullscreen"></iframe></div>\n</div>','\n',char(10)));
INSERT INTO ChildInventory VALUES(193,'PrCode_2024859205','Electronics','Smartphones',NULL,'Apple',NULL,'Style_2024-8-5-9-20-5','Lenovo',NULL,NULL,0.0,0.0,'Active',NULL,NULL,'Legitem2023@gmail.com','Legitem2023@gmail.com',1726795205410,1726795205410,'Legitem2023@gmail.com',NULL);
INSERT INTO ChildInventory VALUES(194,'PrCode_20248593739','Fashion','Men''s Clothing',NULL,'Adidas',NULL,'Style_2024-7-6-13-19-48','T-Shirt Men','White','fressize',250.0,10.0,'Active',NULL,NULL,'Legitem2023@gmail.com','Legitem2023@gmail.com',1726796259085,1726796259085,'Legitem2023@gmail.com','');
INSERT INTO ChildInventory VALUES(195,'PrCode_20248593840','Fashion','Women''s Clothing',NULL,'Zara',NULL,'Style_2024-7-6-13-19-35','T-Shirt Women','White','small',250.0,20.0,'Active',NULL,NULL,'Legitem2023@gmail.com','Legitem2023@gmail.com',1726796320803,1726796320803,'Legitem2023@gmail.com','');
INSERT INTO ChildInventory VALUES(196,'PrCode_202485143948','Fashion','Footwear',NULL,'Adidas',NULL,'Style_2024-2-0-17-45-52','Adidas Shoes','white','12',500.0,20.0,'Active',NULL,NULL,'Legitem2023@gmail.com','Legitem2023@gmail.com',1726814388056,1726814421671,'Legitem2023@gmail.com','');
CREATE TABLE IF NOT EXISTS "PersonalMessages" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "Messages" TEXT,
    "Sender" TEXT,
    "Reciever" TEXT,
    "dateSent" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);
INSERT INTO PersonalMessages VALUES('8043afb2-41fb-4030-94e4-e221d0e6f15d','yow','Legitem2023@gmail.com','Legitem2023@gmail.com',1726216892891);
INSERT INTO PersonalMessages VALUES('9548d665-4b1f-4e7e-8ba9-c8e770bab068','ghghh','Legitem2023@gmail.com','Legitem2023@gmail.com',1726217254675);
INSERT INTO PersonalMessages VALUES('6d4ff1b8-93e5-429e-b044-b1268b6a018f','ghghh','Legitem2023@gmail.com','Legitem2023@gmail.com',1726217339540);
INSERT INTO PersonalMessages VALUES('ed6cba85-79f8-4d6c-870f-84bcd2b4e83d','yuyuyuyuyu','Legitem2023@gmail.com','Legitem2023@gmail.com',1726217348908);
INSERT INTO PersonalMessages VALUES('6fa60c27-4cec-4498-abc9-dbaf0c76e841','hoy hoy hoy','Legitem2023@gmail.com','Legitem2023@gmail.com',1726217460030);
INSERT INTO PersonalMessages VALUES('1166fbce-6762-415e-b8a8-955f260f6c6f','ghgh','Legitem2023@gmail.com','Legitem2023@gmail.com',1726219843377);
INSERT INTO PersonalMessages VALUES('529b1f00-717e-4963-ba88-5a4103897311','ghghgh','digitaloutofhome2019@gmail.com','Legitem2023@gmail.com',1726219943584);
INSERT INTO PersonalMessages VALUES('df7626e2-743e-4e35-b560-9431e063ddfa','ghghgh','digitaloutofhome2019@gmail.com','Legitem2023@gmail.com',1726219947904);
INSERT INTO PersonalMessages VALUES('8b66b014-f9c8-4dd0-87cd-45cc11f7a31d','hjhjhj','digitaloutofhome2019@gmail.com','Legitem2023@gmail.com',1726219959797);
INSERT INTO PersonalMessages VALUES('b089d411-7184-40be-9ff2-5a2ef7b7dcce','no no no','Legitem2023@gmail.com','digitaloutofhome2019@gmail.com',1726220371299);
INSERT INTO PersonalMessages VALUES('39d88cf1-57a2-4c35-8f29-2f05ea0be131','alright','Legitem2023@gmail.com','digitaloutofhome2019@gmail.com',1726220388205);
INSERT INTO PersonalMessages VALUES('b2cd6603-804b-4389-b1ac-046a95a2571f','asfaaf','Legitem2023@gmail.com','digitaloutofhome2019@gmail.com',1726220473837);
INSERT INTO PersonalMessages VALUES('9828a25d-bac6-4000-a13b-ec3ca7a57155','ghghgh','Legitem2023@gmail.com','Legitem2023@gmail.com',1726220582472);
INSERT INTO PersonalMessages VALUES('bf99ce02-de74-421e-95b0-535e3c10ab46','ha?','Legitem2023@gmail.com','Legitem2023@gmail.com',1726220589280);
INSERT INTO PersonalMessages VALUES('ea16aa60-81e6-4978-9e8d-765b85b4036c','hey','Legitem2023@gmail.com','digitaloutofhome2019@gmail.com',1726220595769);
INSERT INTO PersonalMessages VALUES('085ded9b-b12d-431f-a975-03441f8803b5','sssfsf','Legitem2023@gmail.com','digitaloutofhome2019@gmail.com',1726220645652);
INSERT INTO PersonalMessages VALUES('dd86ca1a-5c51-4f29-8797-2857b81facfa','sfsfsf','Legitem2023@gmail.com','Legitem2023@gmail.com',1726220650256);
INSERT INTO PersonalMessages VALUES('af0e191c-7e6d-4c54-845b-2c75ff9c811e','gogogo','Legitem2023@gmail.com','Legitem2023@gmail.com',1726220655233);
INSERT INTO PersonalMessages VALUES('86ecfad5-26ef-4e08-b5bb-e3ecd20fc204','FGFGFG','Legitem2023@gmail.com','Legitem2023@gmail.com',1726220738447);
INSERT INTO PersonalMessages VALUES('8de20afd-badc-481d-b12f-ef349b63890a','FGFGFG','Legitem2023@gmail.com','digitaloutofhome2019@gmail.com',1726220741968);
INSERT INTO PersonalMessages VALUES('722d5316-674e-49d7-9245-6f2a249ff29e','HEY DIGITAL OUT OF HOME','Legitem2023@gmail.com','digitaloutofhome2019@gmail.com',1726220776899);
INSERT INTO PersonalMessages VALUES('a1311040-a265-4921-b4b4-8ed0ed248652','HEY LEGITEM','Legitem2023@gmail.com','Legitem2023@gmail.com',1726220801325);
INSERT INTO PersonalMessages VALUES('5188a1ff-d4a9-4725-8bd4-d2292e0fd5f5','sdsdsd','Legitem2023@gmail.com','digitaloutofhome2019@gmail.com',1726223769735);
INSERT INTO PersonalMessages VALUES('524310e1-f18b-4930-baa6-51662f6ae411','sdsdsdsdsd','Legitem2023@gmail.com','digitaloutofhome2019@gmail.com',1726223789836);
INSERT INTO PersonalMessages VALUES('a6e7daf5-34ad-4d5e-bae7-035aa509cf3a','sdsdsdsd','Legitem2023@gmail.com','digitaloutofhome2019@gmail.com',1726223792074);
INSERT INTO PersonalMessages VALUES('10fb0d1d-0ca3-4a00-9e9c-1cfc89055bf2','sdsdsdsd','Legitem2023@gmail.com','digitaloutofhome2019@gmail.com',1726223794617);
INSERT INTO PersonalMessages VALUES('4f3b9979-dc40-46d2-bce9-93b8c4b2af2b','HGHGH','Legitem2023@gmail.com','digitaloutofhome2019@gmail.com',1726231358180);
INSERT INTO PersonalMessages VALUES('21f57199-2448-44d9-83a8-e66c82af3520','heya','Legitem2023@gmail.com','digitaloutofhome2019@gmail.com',1726278423839);
INSERT INTO PersonalMessages VALUES('890b4f5a-27dd-4ab3-9835-f10bb5d8a544','crungcrung','Legitem2023@gmail.com','digitaloutofhome2019@gmail.com',1726278464016);
INSERT INTO PersonalMessages VALUES('11f908a6-171d-42bf-91df-bc79d8a8699f','asfasf','Legitem2023@gmail.com','digitaloutofhome2019@gmail.com',1726278504828);
INSERT INTO PersonalMessages VALUES('0c739b77-4858-4bbe-baa9-fb804dcebdf8','dddd','Legitem2023@gmail.com','digitaloutofhome2019@gmail.com',1726278588430);
INSERT INTO PersonalMessages VALUES('39407aaf-1b1d-441c-856d-1377bd230745','sdsd','Legitem2023@gmail.com','digitaloutofhome2019@gmail.com',1726278610485);
INSERT INTO PersonalMessages VALUES('db10109e-2740-4ecc-8e6e-75b6d8a9dc2a','tytyty','Legitem2023@gmail.com','digitaloutofhome2019@gmail.com',1726278614513);
INSERT INTO PersonalMessages VALUES('1d05bf8c-b0a6-40b9-9ad8-5756791bf753','hgfhfg','Legitem2023@gmail.com','digitaloutofhome2019@gmail.com',1726278627053);
INSERT INTO PersonalMessages VALUES('b2f27cf0-a623-4e89-867e-2ef9c4c5bb6d','saf','Legitem2023@gmail.com','Legitem2023@gmail.com',1726278783630);
INSERT INTO PersonalMessages VALUES('b22f2230-f07d-4bb3-ad82-a09a7f531dd3','asfasf','Legitem2023@gmail.com','Legitem2023@gmail.com',1726278786233);
INSERT INTO PersonalMessages VALUES('c7d7a220-0482-4fbd-afce-382d371bd2e6','asdasfasf','Legitem2023@gmail.com','Legitem2023@gmail.com',1726278809439);
INSERT INTO PersonalMessages VALUES('e20a4660-3148-4830-820c-66b0c3b828c3','asfasf','Legitem2023@gmail.com','Legitem2023@gmail.com',1726278812432);
INSERT INTO PersonalMessages VALUES('9bf8f52c-dde0-423f-8df1-4cb4a1f540d7','ghgh','Legitem2023@gmail.com','Legitem2023@gmail.com',1726278956536);
INSERT INTO PersonalMessages VALUES('9926be86-533c-4778-ac26-a23cd2986172','hjhjhj','Legitem2023@gmail.com','Legitem2023@gmail.com',1726278979480);
INSERT INTO PersonalMessages VALUES('77e12742-969b-4be3-9ec5-e0885f6f96b0','sdfsdf','Legitem2023@gmail.com','Legitem2023@gmail.com',1726278992025);
INSERT INTO PersonalMessages VALUES('b3f1bdb1-4a40-4ccd-af8e-c05b3199a16f','DSDASFHH','Legitem2023@gmail.com','Legitem2023@gmail.com',1726278998884);
INSERT INTO PersonalMessages VALUES('4875403a-1bea-43c4-be80-0a9825f807a8','67876867867','Legitem2023@gmail.com','Legitem2023@gmail.com',1726279006570);
INSERT INTO PersonalMessages VALUES('1a56bac2-80d9-494a-883e-818f4f12aa6b','ASASF','Legitem2023@gmail.com','Legitem2023@gmail.com',1726279306159);
INSERT INTO PersonalMessages VALUES('d97d80e3-ddf4-44ef-89d9-33795f43041b','hjhjhj','Legitem2023@gmail.com','digitaloutofhome2019@gmail.com',1726279379817);
INSERT INTO PersonalMessages VALUES('4bffe37c-f9dd-4252-a92a-b185a7a4423d','asfaf','Legitem2023@gmail.com','digitaloutofhome2019@gmail.com',1726279393587);
INSERT INTO PersonalMessages VALUES('1101a278-0fbd-4143-9a59-f5056cd9ca92','asfasf','digitaloutofhome2019@gmail.com','Legitem2023@gmail.com',1726279398316);
INSERT INTO PersonalMessages VALUES('59d73457-3b3c-4151-b300-2271dd42c8fe','67676767','digitaloutofhome2019@gmail.com','Legitem2023@gmail.com',1726279405523);
INSERT INTO PersonalMessages VALUES('6c48e6a9-2da0-4c0b-a6bd-412046861baa','asasfas','Legitem2023@gmail.com','Legitem2023@gmail.com',1726279428116);
INSERT INTO PersonalMessages VALUES('86c969e8-0dd4-4e92-865c-340cfdb395dc','565656','Legitem2023@gmail.com','digitaloutofhome2019@gmail.com',1726279434978);
INSERT INTO PersonalMessages VALUES('319d715e-2da0-4e4d-9628-26602d530064','ghgh','Legitem2023@gmail.com','digitaloutofhome2019@gmail.com',1726279581456);
INSERT INTO PersonalMessages VALUES('28760ba9-b653-4c74-9cdd-e5b49565b8d8','asfasf','Legitem2023@gmail.com','digitaloutofhome2019@gmail.com',1726279611038);
INSERT INTO PersonalMessages VALUES('b59e0ba6-c001-4cda-821a-41ef425b2c46','asfasf','Legitem2023@gmail.com','digitaloutofhome2019@gmail.com',1726279618461);
INSERT INTO PersonalMessages VALUES('6f87172b-7b84-4ba2-a82f-b9eb236953da','ASDASD','Legitem2023@gmail.com','digitaloutofhome2019@gmail.com',1726280191995);
INSERT INTO PersonalMessages VALUES('3e0afe43-2eb3-4544-a481-42b14a0f575d','ADAD','digitaloutofhome2019@gmail.com','Legitem2023@gmail.com',1726280209464);
INSERT INTO PersonalMessages VALUES('2d80cfac-a7ee-4e1c-ac84-9243c3fbea06','ASFASF','Legitem2023@gmail.com','Legitem2023@gmail.com',1726280298358);
INSERT INTO PersonalMessages VALUES('ea187ea8-2f1f-49c6-b780-0ce4ef3d8c19','GHGHGHGH','Legitem2023@gmail.com','Legitem2023@gmail.com',1726280317657);
INSERT INTO PersonalMessages VALUES('bb8139d8-f44b-40b9-a84a-d5fccc4aca78','AdD','Legitem2023@gmail.com','digitaloutofhome2019@gmail.com',1726280423117);
INSERT INTO PersonalMessages VALUES('c19ce6eb-1d20-4024-809b-c76b512ad4e0','AaDAD','Legitem2023@gmail.com','Legitem2023@gmail.com',1726280428038);
INSERT INTO PersonalMessages VALUES('fb81efb1-b688-4591-b836-cf9305257531','ADAD','Legitem2023@gmail.com','digitaloutofhome2019@gmail.com',1726280432235);
INSERT INTO PersonalMessages VALUES('c3358cbf-324c-4d5f-98c2-bc4c3e88d3d8','GHGHGHGH','Legitem2023@gmail.com','digitaloutofhome2019@gmail.com',1726280747994);
INSERT INTO PersonalMessages VALUES('2c506224-3588-4b44-a5c8-2b260fae82a2','asfasf','Legitem2023@gmail.com','digitaloutofhome2019@gmail.com',1726280778572);
INSERT INTO PersonalMessages VALUES('c9015940-9810-47fe-ba0b-060b80bb6c2f','fhdfhdfh','Legitem2023@gmail.com','digitaloutofhome2019@gmail.com',1726280790696);
INSERT INTO PersonalMessages VALUES('fcba5825-7d01-4638-9118-916f75442884','dfdfhfdh','Legitem2023@gmail.com','Legitem2023@gmail.com',1726280795293);
INSERT INTO PersonalMessages VALUES('6f9afa56-e046-4cb5-8609-3f2e366e3231','sdgsdg','digitaloutofhome2019@gmail.com','Legitem2023@gmail.com',1726280821655);
INSERT INTO PersonalMessages VALUES('203ef310-546b-42e2-871f-e886c7e7a7b5','yuyuyu','digitaloutofhome2019@gmail.com','Legitem2023@gmail.com',1726280845393);
INSERT INTO PersonalMessages VALUES('da6ab210-2a18-4558-aae9-3437d6fab942','asfasf','digitaloutofhome2019@gmail.com','Legitem2023@gmail.com',1726280860353);
INSERT INTO PersonalMessages VALUES('77d2deb0-e826-49f6-bf77-e958a9e877ed','hihihi','digitaloutofhome2019@gmail.com','Legitem2023@gmail.com',1726280866628);
INSERT INTO PersonalMessages VALUES('23f4d954-b80a-4911-9787-811b0e6127ae','ghghghghh','Legitem2023@gmail.com','digitaloutofhome2019@gmail.com',1726280952815);
INSERT INTO PersonalMessages VALUES('a71c269b-5bdd-4846-870b-21346e45af6b','676767','Legitem2023@gmail.com','digitaloutofhome2019@gmail.com',1726280970328);
INSERT INTO PersonalMessages VALUES('d01a4869-a07b-433d-b967-64adf431a430','sssss','Legitem2023@gmail.com','digitaloutofhome2019@gmail.com',1726281024262);
INSERT INTO PersonalMessages VALUES('02d99fb3-9c09-4829-87f8-5b8929f45096','dfhdfh','Legitem2023@gmail.com','digitaloutofhome2019@gmail.com',1726281032797);
INSERT INTO PersonalMessages VALUES('f64a8289-8d4e-413e-bc6b-dba229251a32','yuyu','Legitem2023@gmail.com','digitaloutofhome2019@gmail.com',1726281055247);
INSERT INTO PersonalMessages VALUES('69a64067-4b2d-4759-bd36-96063cb13b72','yuyuyu','Legitem2023@gmail.com','digitaloutofhome2019@gmail.com',1726281063172);
INSERT INTO PersonalMessages VALUES('7a584743-bea2-4ec0-8778-f72ce8fda5d5','asasf','digitaloutofhome2019@gmail.com','Legitem2023@gmail.com',1726281144145);
INSERT INTO PersonalMessages VALUES('8183b683-5aa1-4b21-9f48-2b9925eedef0','asfasfafas','digitaloutofhome2019@gmail.com','Legitem2023@gmail.com',1726281159251);
INSERT INTO PersonalMessages VALUES('19cefc48-a3c2-403c-8f5f-5c5a3d79fde2','aSFASFASF','digitaloutofhome2019@gmail.com','Legitem2023@gmail.com',1726281163223);
INSERT INTO PersonalMessages VALUES('50517ca1-aee4-49e4-8249-03c36143adde','ASfasfaasf','digitaloutofhome2019@gmail.com','Legitem2023@gmail.com',1726281165811);
INSERT INTO PersonalMessages VALUES('bf286d91-1107-4cca-bc7e-463db3812e8b','ssfsf','digitaloutofhome2019@gmail.com','Legitem2023@gmail.com',1726281171941);
INSERT INTO PersonalMessages VALUES('ccac0d25-19ed-479c-af29-b97dbd53bc07','asfasfsaf','digitaloutofhome2019@gmail.com','Legitem2023@gmail.com',1726281188044);
INSERT INTO PersonalMessages VALUES('1254144c-4f8c-4159-a3e1-460feef4ed25','asfasf','Legitem2023@gmail.com','digitaloutofhome2019@gmail.com',1726281192005);
INSERT INTO PersonalMessages VALUES('630899d5-d717-4edc-973d-70f833c10a08','asfasf','digitaloutofhome2019@gmail.com','Legitem2023@gmail.com',1726281195788);
INSERT INTO PersonalMessages VALUES('23626714-7884-4ea8-ba82-3373884f000f','asfassaf','Legitem2023@gmail.com','digitaloutofhome2019@gmail.com',1726281200619);
INSERT INTO PersonalMessages VALUES('327e3b17-5a2d-43f3-83f6-a800adf96432','asfasf','Legitem2023@gmail.com','digitaloutofhome2019@gmail.com',1726281429192);
INSERT INTO PersonalMessages VALUES('e70b95df-c725-49c9-a4df-11a85f49c39f','asfasfasf','Legitem2023@gmail.com','digitaloutofhome2019@gmail.com',1726281461055);
INSERT INTO PersonalMessages VALUES('fabf6a3c-e926-4550-87e9-d5ed9e9b29ea','sender','Legitem2023@gmail.com','digitaloutofhome2019@gmail.com',1726281588388);
INSERT INTO PersonalMessages VALUES('44d0dbdc-a5ce-4b56-b740-3d130890ba7f','asfasf','Legitem2023@gmail.com','digitaloutofhome2019@gmail.com',1726281602101);
INSERT INTO PersonalMessages VALUES('dc52694e-6aec-454b-809b-aa4974f6b007','asfaf','digitaloutofhome2019@gmail.com','Legitem2023@gmail.com',1726281616423);
INSERT INTO PersonalMessages VALUES('aab0ac12-77b3-41c0-9692-74ad01b535b6','hjhjhj','Legitem2023@gmail.com','digitaloutofhome2019@gmail.com',1726281781075);
INSERT INTO PersonalMessages VALUES('4132f52d-e165-486c-a199-f094daaef8c6','afasf','digitaloutofhome2019@gmail.com','Legitem2023@gmail.com',1726281787491);
INSERT INTO PersonalMessages VALUES('5bd92489-8932-4bce-8b95-4b4ec670c304','sddvsdv','digitaloutofhome2019@gmail.com','Legitem2023@gmail.com',1726281841092);
INSERT INTO PersonalMessages VALUES('2f01c792-fddd-4b3a-8fe8-beee2c0c786e','asfasfaf','Legitem2023@gmail.com','digitaloutofhome2019@gmail.com',1726281851325);
INSERT INTO PersonalMessages VALUES('6381343f-a329-449c-b7e6-747aca026dc0','asfasfas','digitaloutofhome2019@gmail.com','Legitem2023@gmail.com',1726281855166);
INSERT INTO PersonalMessages VALUES('4f032e6a-ba44-4913-87d6-942cb9f8449c','ASSfs','Legitem2023@gmail.com','digitaloutofhome2019@gmail.com',1726281859135);
INSERT INTO PersonalMessages VALUES('3eb19684-6a6a-451f-92de-7f61fa4e48e8','asfasf','Legitem2023@gmail.com','digitaloutofhome2019@gmail.com',1726282091858);
INSERT INTO PersonalMessages VALUES('31181642-0822-419c-828d-23ed637fab5e','asfasf','digitaloutofhome2019@gmail.com','Legitem2023@gmail.com',1726282099431);
INSERT INTO PersonalMessages VALUES('601a19e9-ec38-4e5b-9829-01cf20f18909','uiuiiui','digitaloutofhome2019@gmail.com','Legitem2023@gmail.com',1726282102907);
INSERT INTO PersonalMessages VALUES('7bc12d0e-4ca4-4055-acc6-25b06835dc1a','asfasf','Legitem2023@gmail.com','digitaloutofhome2019@gmail.com',1726283413743);
INSERT INTO PersonalMessages VALUES('fe72c27d-2ef4-42c8-aa93-9e0dd5fa884b','asfasf','digitaloutofhome2019@gmail.com','Legitem2023@gmail.com',1726283945364);
INSERT INTO PersonalMessages VALUES('5ce85f9d-815e-4e7a-999c-acfb0e370286','werwer','digitaloutofhome2019@gmail.com','Legitem2023@gmail.com',1726283951277);
INSERT INTO PersonalMessages VALUES('22d4449a-68d1-4c98-8460-9db9e9b18be4','sf','digitaloutofhome2019@gmail.com','Legitem2023@gmail.com',1726283975561);
INSERT INTO PersonalMessages VALUES('7dbe0146-b731-4fa2-9d9a-ab872a8af71e','tyuty','digitaloutofhome2019@gmail.com','Legitem2023@gmail.com',1726283982346);
INSERT INTO PersonalMessages VALUES('be8292a8-5989-4c97-bcae-5020aa0c8178','asfaf','digitaloutofhome2019@gmail.com','Legitem2023@gmail.com',1726283991751);
INSERT INTO PersonalMessages VALUES('fe53d3a3-bf89-4504-a0d7-91583baec464','tytyty','digitaloutofhome2019@gmail.com','Legitem2023@gmail.com',1726283997632);
INSERT INTO PersonalMessages VALUES('7cbe10a4-9a53-4094-ba72-5d16199470bd','asfasf','Legitem2023@gmail.com','digitaloutofhome2019@gmail.com',1726284008119);
INSERT INTO PersonalMessages VALUES('87957764-8fee-4468-9c9f-7baba220c918','sdsd','digitaloutofhome2019@gmail.com','Legitem2023@gmail.com',1726284018564);
INSERT INTO PersonalMessages VALUES('2fe77e2d-8b9d-4c82-a22d-0e12e91aae75','aSDSA','Legitem2023@gmail.com','digitaloutofhome2019@gmail.com',1726284022731);
INSERT INTO PersonalMessages VALUES('af71daff-98c0-4fe3-9053-aa5e25f3e639','ghgh','Legitem2023@gmail.com','digitaloutofhome2019@gmail.com',1726287363464);
INSERT INTO PersonalMessages VALUES('1d26794e-b7ad-4333-8aa9-6dfe82d98613','asfasf','Legitem2023@gmail.com','digitaloutofhome2019@gmail.com',1726287397148);
INSERT INTO PersonalMessages VALUES('7884a4ca-3161-471b-8b62-5c1755853f25','yuyuyuyu','digitaloutofhome2019@gmail.com','Legitem2023@gmail.com',1726287404734);
INSERT INTO PersonalMessages VALUES('034d5490-ead5-42f4-b0af-f2b220f61ac4','yuyuyu','Legitem2023@gmail.com','digitaloutofhome2019@gmail.com',1726287409913);
INSERT INTO PersonalMessages VALUES('b996c866-1467-4494-85e3-b6aeccfc4171','rtrtrtrt','digitaloutofhome2019@gmail.com','Legitem2023@gmail.com',1726287417986);
INSERT INTO PersonalMessages VALUES('811cfd00-0d79-42d9-a9a1-942b6df4fcfd','uyuyuyu','Legitem2023@gmail.com','digitaloutofhome2019@gmail.com',1726287423887);
INSERT INTO PersonalMessages VALUES('9ebec923-6618-48cb-bc6b-4aaea32a27b9','afafas','digitaloutofhome2019@gmail.com','Legitem2023@gmail.com',1726287646943);
INSERT INTO PersonalMessages VALUES('bb600b3a-6019-4cba-ad7c-a035223deeab','asfaf','Legitem2023@gmail.com','digitaloutofhome2019@gmail.com',1726287753702);
INSERT INTO PersonalMessages VALUES('70c0eebf-f59e-4912-80ba-a205dc44a9b3','trytryrt','Legitem2023@gmail.com','digitaloutofhome2019@gmail.com',1726287761614);
INSERT INTO PersonalMessages VALUES('849196d5-60d0-454d-b537-3e29a5a2d527','gfhfgfj','digitaloutofhome2019@gmail.com','Legitem2023@gmail.com',1726287775455);
INSERT INTO PersonalMessages VALUES('5d1a92d3-a231-45ab-87f0-706f65957840','sfsf','Legitem2023@gmail.com','Legitem2023@gmail.com',1726296073825);
INSERT INTO PersonalMessages VALUES('194cf3c8-135e-4791-95a4-469f0944f078','hffhfh','Legitem2023@gmail.com','Legitem2023@gmail.com',1726296191341);
INSERT INTO PersonalMessages VALUES('599c0852-eff4-4d54-a8b9-44cf79cfcead','dfhdfh','Legitem2023@gmail.com','Legitem2023@gmail.com',1726297037197);
INSERT INTO PersonalMessages VALUES('ce267009-0c2c-4249-aaea-ef50d4a9088b','dfhdfhdfh','Legitem2023@gmail.com','Legitem2023@gmail.com',1726297040074);
INSERT INTO PersonalMessages VALUES('0d36c3b0-bc5c-463c-80dd-b4f9754a316d','dfhdfhdfh','Legitem2023@gmail.com','Legitem2023@gmail.com',1726297042618);
INSERT INTO PersonalMessages VALUES('04d55230-974f-4208-8270-f434ac2cc5af','hohoho','digitaloutofhome2019@gmail.com','digitaloutofhome2019@gmail.com',1726299419598);
INSERT INTO PersonalMessages VALUES('ee12b8ed-71d2-49aa-82fd-8b50273beb95','crab','digitaloutofhome2019@gmail.com','digitaloutofhome2019@gmail.com',1726299431769);
INSERT INTO PersonalMessages VALUES('f8c5073b-548b-4758-9d31-4ebeb3296991','yeah','Legitem2023@gmail.com','Legitem2023@gmail.com',1726299438196);
INSERT INTO PersonalMessages VALUES('2952c677-a8a9-4f70-ad02-80f66689a8d3','asfasf','Legitem2023@gmail.com','Legitem2023@gmail.com',1726299559078);
INSERT INTO PersonalMessages VALUES('35bf0eea-de31-4fdf-ae51-10c389bd18da','sdsd','digitaloutofhome2019@gmail.com','digitaloutofhome2019@gmail.com',1726299572711);
INSERT INTO PersonalMessages VALUES('39f9c44a-6f4b-4bc0-a55c-a0783e12d510','ghghgh','Legitem2023@gmail.com','Legitem2023@gmail.com',1726453495031);
INSERT INTO PersonalMessages VALUES('84b22718-8a4d-42c1-a9cf-59d9f8f634cb','ghghgh','Legitem2023@gmail.com','Legitem2023@gmail.com',1726453499479);
INSERT INTO PersonalMessages VALUES('924cf255-c9d0-4e32-832d-fca67fa558f5','hjhjhj','Legitem2023@gmail.com','Legitem2023@gmail.com',1726454247937);
INSERT INTO PersonalMessages VALUES('f2b28f52-6f47-41c1-9dad-43b03e7e8de6','ghgh','Legitem2023@gmail.com','Legitem2023@gmail.com',1726454918913);
INSERT INTO PersonalMessages VALUES('ec8fe18a-55c3-42e7-bb5c-8815930b32d4','hjhj','Legitem2023@gmail.com','Legitem2023@gmail.com',1726465224024);
INSERT INTO PersonalMessages VALUES('180391e9-bd69-4ed4-83b7-8ca92800d73a','klklkl','Legitem2023@gmail.com','Legitem2023@gmail.com',1726465233045);
INSERT INTO PersonalMessages VALUES('7fbabbbb-f32f-4f81-9c9a-6ef93c95fe67','sadsdas','Legitem2023@gmail.com','digitaloutofhome2019@gmail.com',1726470377764);
INSERT INTO PersonalMessages VALUES('05886b0b-34a1-4c46-b05a-835eaab4aa47','asfasf','Legitem2023@gmail.com','digitaloutofhome2019@gmail.com',1726470397971);
INSERT INTO PersonalMessages VALUES('8831cc05-1a72-41cd-9261-e31992066ed8',replace('asdasd\n','\n',char(10)),'Legitem2023@gmail.com','Legitem2023@gmail.com',1726470416780);
INSERT INTO PersonalMessages VALUES('00559112-2462-4e11-8f12-f0e7ec88ecd9','sdsdsd','Legitem2023@gmail.com','Legitem2023@gmail.com',1726470426308);
INSERT INTO PersonalMessages VALUES('7fb4c2c8-20de-41c6-8def-1a08cba0393a','asfaf','Legitem2023@gmail.com','Legitem2023@gmail.com',1726476191600);
INSERT INTO PersonalMessages VALUES('dd85dfc9-2d43-4ae0-a507-72d31698e0c0','hahahaha','Legitem2023@gmail.com','Legitem2023@gmail.com',1726476197720);
INSERT INTO PersonalMessages VALUES('ab78fbad-c12f-4ae0-a808-e8be12a9a84e','yuyuyu','Legitem2023@gmail.com','Legitem2023@gmail.com',1726476750553);
INSERT INTO PersonalMessages VALUES('016baaa3-8f0b-4f5e-8ec7-ccd8af440064','uiuiiui','Legitem2023@gmail.com','Legitem2023@gmail.com',1726476758423);
INSERT INTO PersonalMessages VALUES('27583f69-73c1-4b8d-b129-7e5a6ecd717c','asasf','Legitem2023@gmail.com','Legitem2023@gmail.com',1726476768815);
INSERT INTO PersonalMessages VALUES('2482a500-e45c-4367-9904-4ade7727683a','asfasfsaf','Legitem2023@gmail.com','digitaloutofhome2019@gmail.com',1726476803816);
INSERT INTO PersonalMessages VALUES('d822b5e7-2e7d-4bef-a4b0-330c4307e321','ADAD','Legitem2023@gmail.com','digitaloutofhome2019@gmail.com',1726476984926);
INSERT INTO PersonalMessages VALUES('3d2ea3e3-280f-4051-89ba-7d49112b766f','ghghg','Legitem2023@gmail.com','digitaloutofhome2019@gmail.com',1726476999363);
INSERT INTO PersonalMessages VALUES('3127a8c5-9a83-4adb-8616-7e5d217bc349','ADAD','Legitem2023@gmail.com','digitaloutofhome2019@gmail.com',1726477067724);
INSERT INTO PersonalMessages VALUES('64bf1b73-798d-4b90-8e32-5d8a878a93c7','ADAD','Legitem2023@gmail.com','digitaloutofhome2019@gmail.com',1726477078338);
INSERT INTO PersonalMessages VALUES('c89aa0c3-b97a-4bc3-ac43-4202cbff5315','ghghgh','Legitem2023@gmail.com','Legitem2023@gmail.com',1726477662144);
INSERT INTO PersonalMessages VALUES('649c52f3-d7b0-460e-8c79-4148c5af21fc','ADAD','Legitem2023@gmail.com','Legitem2023@gmail.com',1726478388864);
INSERT INTO PersonalMessages VALUES('b079a7e2-cdbd-4a89-b144-4c49b9bf9438','aSASFASF','Legitem2023@gmail.com','',1726478591821);
INSERT INTO PersonalMessages VALUES('2b9659d2-75ec-46c3-aca5-f83595b4762b','ADAD','Legitem2023@gmail.com','digitaloutofhome2019@gmail.com',1726478630465);
INSERT INTO PersonalMessages VALUES('d95800e3-65b4-4d30-99f7-27d47e802802','ADAD','Legitem2023@gmail.com','digitaloutofhome2019@gmail.com',1726478638185);
INSERT INTO PersonalMessages VALUES('0e4d2301-e39f-4665-9399-7c4141a1abfa','DADAD','Legitem2023@gmail.com','Legitem2023@gmail.com',1726478645560);
INSERT INTO PersonalMessages VALUES('f7346666-4c02-4fe0-a975-1d2a3f8422a3','asfasf','Legitem2023@gmail.com','digitaloutofhome2019@gmail.com',1726479567072);
INSERT INTO PersonalMessages VALUES('0bf2e9e8-bcb5-451c-bfb4-5d4640fc0f79','asfasf','Legitem2023@gmail.com','digitaloutofhome2019@gmail.com',1726479621962);
INSERT INTO PersonalMessages VALUES('0a31664a-b26b-48b5-89db-951957258ea0','ghkghkghk','Legitem2023@gmail.com','digitaloutofhome2019@gmail.com',1726479625405);
INSERT INTO PersonalMessages VALUES('0e19b33a-9584-4dd9-937e-b0bfdacbfa2a','ghkghk','Legitem2023@gmail.com','Legitem2023@gmail.com',1726479628344);
INSERT INTO PersonalMessages VALUES('962005e4-0986-4501-a548-75d75b48f263','uiuiui','Legitem2023@gmail.com','Legitem2023@gmail.com',1726479685705);
INSERT INTO PersonalMessages VALUES('4d3b65bf-aa2f-4098-bf5e-3719b5add780','yuyu','Legitem2023@gmail.com','',1726479704276);
INSERT INTO PersonalMessages VALUES('f82718b6-ce2a-411d-ab98-e212d9d8c170','asfasf','Legitem2023@gmail.com','',1726479730291);
INSERT INTO PersonalMessages VALUES('6edf55b1-e626-4064-b36d-7de670ef4162','yuyuyu','Legitem2023@gmail.com','digitaloutofhome2019@gmail.com',1726480163481);
INSERT INTO PersonalMessages VALUES('f3a5cc6a-d142-4b55-97ee-c8d480a304aa','asfsaf','Legitem2023@gmail.com','digitaloutofhome2019@gmail.com',1726480204945);
INSERT INTO PersonalMessages VALUES('32ea7fa6-9c90-4097-9138-3374421616bb','jkjkjk','Legitem2023@gmail.com','digitaloutofhome2019@gmail.com',1726480294587);
INSERT INTO PersonalMessages VALUES('7021e384-6ee2-4f03-a863-fb02f19b9deb','aDADaD','Legitem2023@gmail.com','digitaloutofhome2019@gmail.com',1726480400185);
INSERT INTO PersonalMessages VALUES('c8aa8bfe-c9df-4fec-a9a7-8d63ef9ad626','ASAS','Legitem2023@gmail.com','digitaloutofhome2019@gmail.com',1726480560225);
INSERT INTO PersonalMessages VALUES('756fc11b-fd04-4a83-87e1-c74c76e48dd9','GHGHGH','Legitem2023@gmail.com','Legitem2023@gmail.com',1726480630516);
INSERT INTO PersonalMessages VALUES('e5040cd3-c061-4cb6-963d-40bf8017dc86','hjhjj','Legitem2023@gmail.com','digitaloutofhome2019@gmail.com',1726539136346);
INSERT INTO PersonalMessages VALUES('41c18e30-2406-4671-b84d-aa97ba5428fe','hjhjhj','Legitem2023@gmail.com','Legitem2023@gmail.com',1726539142138);
INSERT INTO PersonalMessages VALUES('ec9306de-10c4-4f81-a239-e650380f55e2','hjhjj','Legitem2023@gmail.com','Legitem2023@gmail.com',1726621701803);
INSERT INTO PersonalMessages VALUES('b018b9b1-c19e-437c-89ba-33b449be8d04','aSDASDASD','Legitem2023@gmail.com','Legitem2023@gmail.com',1726640426089);
INSERT INTO PersonalMessages VALUES('ead80ee9-e55b-4b1a-a5a5-92abc9267ace','ADAD','Legitem2023@gmail.com','Legitem2023@gmail.com',1726640684306);
INSERT INTO PersonalMessages VALUES('31c2f3ce-abc1-40b8-8b76-eab01d87a750','ADADAD','Legitem2023@gmail.com','Legitem2023@gmail.com',1726640703228);
INSERT INTO PersonalMessages VALUES('8a077ab3-2634-4a1e-939d-459f7ffc64b6','ADAdA','Legitem2023@gmail.com','digitaloutofhome2019@gmail.com',1726640706769);
INSERT INTO PersonalMessages VALUES('c7dfaf4f-712a-4100-850c-84ec65959b9d','asasf','Legitem2023@gmail.com','digitaloutofhome2019@gmail.com',1726641232802);
INSERT INTO PersonalMessages VALUES('2b0ad412-e98b-4223-a801-4f4facf15dd4','tytyty','Legitem2023@gmail.com','Legitem2023@gmail.com',1726641243480);
INSERT INTO PersonalMessages VALUES('978d7d30-16bc-4ba6-b39c-56b9ad6e96b2','tytyty','Legitem2023@gmail.com','Legitem2023@gmail.com',1726641265338);
INSERT INTO PersonalMessages VALUES('d733214e-3882-4a6d-92dd-99e50f6e30a0','787878','Legitem2023@gmail.com','Legitem2023@gmail.com',1726641269273);
INSERT INTO PersonalMessages VALUES('83c4205f-20e9-4f2f-881f-feaa00ef51b0','78788','Legitem2023@gmail.com','Legitem2023@gmail.com',1726641276488);
INSERT INTO PersonalMessages VALUES('e4d19748-7c10-4115-aa5f-019bf3cca5b4','ghghgh','Legitem2023@gmail.com','Legitem2023@gmail.com',1726641280233);
INSERT INTO PersonalMessages VALUES('e89790d6-ecb2-4251-a2c0-ba925ce280b8','ghghgh','Legitem2023@gmail.com','digitaloutofhome2019@gmail.com',1726641283838);
INSERT INTO PersonalMessages VALUES('b0061126-498c-4b64-8682-737b8da99e90','ADADaD','Legitem2023@gmail.com','digitaloutofhome2019@gmail.com',1726641326116);
INSERT INTO PersonalMessages VALUES('eb53b161-f915-432c-9a32-930eae15e830','TYTYTY','Legitem2023@gmail.com','Legitem2023@gmail.com',1726641422525);
INSERT INTO PersonalMessages VALUES('c9e8870d-b87d-4b7b-9201-8468b8a41f6a','TYTYTY','Legitem2023@gmail.com','digitaloutofhome2019@gmail.com',1726641430496);
INSERT INTO PersonalMessages VALUES('7d881940-b09f-4966-9549-87ffcace7bc7','SDSDSD','Legitem2023@gmail.com','digitaloutofhome2019@gmail.com',1726641459025);
INSERT INTO PersonalMessages VALUES('12b8b389-1d7a-416a-a574-f9ebeba698df','GHGHGH','Legitem2023@gmail.com','Legitem2023@gmail.com',1726641466726);
INSERT INTO PersonalMessages VALUES('42b4cfd5-4d58-41c4-a23b-cb040413f66d','yuyuyu','Legitem2023@gmail.com','Legitem2023@gmail.com',1726641556358);
INSERT INTO PersonalMessages VALUES('08ee20b9-1475-477f-99b8-46556f81b3bb','yuyuyu','Legitem2023@gmail.com','digitaloutofhome2019@gmail.com',1726641563392);
INSERT INTO PersonalMessages VALUES('3a877722-f8dc-490e-afc3-eb0a27f6d094','yuyuyuuyuyuyu','Legitem2023@gmail.com','Legitem2023@gmail.com',1726641677770);
INSERT INTO PersonalMessages VALUES('87954012-5412-4fe1-9843-4813a01d4d7a','yuyuyuyuyu','Legitem2023@gmail.com','Legitem2023@gmail.com',1726641686094);
INSERT INTO PersonalMessages VALUES('d439d2f3-c50d-4506-8619-e715cc1b25c3','5656666','Legitem2023@gmail.com','digitaloutofhome2019@gmail.com',1726641696839);
INSERT INTO PersonalMessages VALUES('fda0f747-937a-40dd-9d4f-1ecab01dc039','666666666','Legitem2023@gmail.com','digitaloutofhome2019@gmail.com',1726641705279);
INSERT INTO PersonalMessages VALUES('ec15eb1d-cfd5-490d-89e4-bb0598a623fc','666666555555','Legitem2023@gmail.com','Legitem2023@gmail.com',1726641712639);
INSERT INTO PersonalMessages VALUES('9e9db542-fa87-4a10-8ae6-ed6dda852ae6','7677777','Legitem2023@gmail.com','digitaloutofhome2019@gmail.com',1726641844698);
INSERT INTO PersonalMessages VALUES('3fb63d4b-9542-4f51-a358-99875f221b3f','7878787878','Legitem2023@gmail.com','Legitem2023@gmail.com',1726641857083);
INSERT INTO PersonalMessages VALUES('c26c9b82-39f3-41b9-a70d-ac967b9dd760','ge','Legitem2023@gmail.com','Legitem2023@gmail.com',1726817011169);
INSERT INTO PersonalMessages VALUES('65abed33-e051-420b-9350-2596b0dcdc3e','ty','Legitem2023@gmail.com','digitaloutofhome2019@gmail.com',1726817016483);
CREATE TABLE IF NOT EXISTS "Privacy" (
    "id" TEXT NOT NULL,
    "content" TEXT
);
INSERT INTO Privacy VALUES('5a72d7e3-6315-4ffa-9cfc-8efcec2acbba',replace('<div>\n<h2>Introduction</h2>\n<p>Thank you for visiting Legitem. This Privacy Policy explains how we collect, use, disclose, and safeguard your information when you visit our website <a href="https://www.legitem.com">www.legitem.com</a>&nbsp;(the "Site"). Please read this privacy policy carefully. If you do not agree with the terms of this privacy policy, please do not access the site.</p>\n</div>\n<div>\n<h2>Information We Collect</h2>\n<p>We may collect personal information about you in various ways, including: Information You Provide: When you make a purchase, register an account, or communicate with us, you may provide personal information such as your name, email address, shipping address, and payment information. Automatically Collected Information: We may automatically collect certain information about your device and usage patterns when you interact with our Site, including IP address, browser type, referring/exit pages, and operating system.</p>\n</div>\n<div>\n<h2>Use of Your Information</h2>\n<p>We may use the information we collect for various purposes, including: To process and fulfill your orders and requests. To communicate with you, including sending order confirmations, updates, and promotional messages. To improve our products and services. To comply with legal obligations.</p>\n</div>\n<div>\n<h2>Sharing Your Information</h2>\n<p>We may share your information with third parties only in the ways that are described in this privacy policy: With service providers who assist us in operating our website and conducting our business. With your consent or as necessary to complete any transaction or provide any product you have requested. In response to a subpoena or similar investigative demand, a court order, or other legal process.</p>\n</div>\n<div>\n<h2>Security of Your Information</h2>\n<p>We use administrative, technical, and physical security measures to help protect your personal information. However, no method of transmission over the internet or electronic storage is completely secure, so we cannot guarantee absolute security.</p>\n</div>\n<div>\n<h2>Your Choices Regarding Your Information</h2>\n<p>You have choices regarding the collection, use, and sharing of your personal information: You may choose not to provide certain personal information, although this may limit your ability to use certain features of the Site. You can update your account information and communication preferences at any time by logging into your account.</p>\n</div>\n<div>\n<h2>Changes to This Privacy Policy</h2>\n<p>We may update this Privacy Policy from time to time in order to reflect, for example, changes to our practices or for other operational, legal, or regulatory reasons.</p>\n</div>','\n',char(10)));
CREATE TABLE IF NOT EXISTS "Disclaimer" (
    "id" TEXT NOT NULL,
    "content" TEXT
);
INSERT INTO Disclaimer VALUES('7bb6cf85-a193-44e5-9835-2f587eef98b4',replace('<div>The information provided on the Legitem website [<a href="https://www.legitem.com">www.legitem.com</a>] (the "Site") is for general informational purposes only. All information on the Site is provided in good faith, however we make no representation or warranty of any kind, express or implied, regarding the accuracy, adequacy, validity, reliability, availability, or completeness of any information on the Site.</div>\n<div>The Site may contain links to external websites that are not provided or maintained by or in any way affiliated with Legitem. Please note that we do not guarantee the accuracy, relevance, timeliness, or completeness of any information on these external websites.</div>\n<div>The information provided on the Site is not intended to constitute legal, financial, medical, or professional advice of any kind. You should seek appropriate professional advice before taking any action based on any information contained on the Site.</div>\n<div>In no event shall Legitem, nor any of its officers, directors, and employees, be liable to you for anything arising out of or in any way connected with your use of the Site, whether such liability is under contract, tort, or otherwise, and Legitem, including its officers, directors, and employees shall not be liable for any indirect, consequential, or special liability arising out of or in any way related to your use of the Site.</div>\n<div>We may update this disclaimer from time to time in order to reflect, for example, changes to our practices or for other operational, legal, or regulatory reasons. We will notify you of any changes by posting the new disclaimer on the Site. You are advised to review this disclaimer periodically for any changes.</div>','\n',char(10)));
CREATE TABLE IF NOT EXISTS "About" (
    "id" TEXT NOT NULL,
    "content" TEXT
);
INSERT INTO About VALUES('fa88a659-6ff4-4809-b08e-5ebb44e0710d',replace('<div>About Legitem</div>\n<div>Welcome to Legitem, your ultimate destination for stylish and reliable fashion essentials. Established in 2024 in Taytay&nbsp;Rizal, we are committed to providing our customers with high-quality products that blend comfort, affordability, and contemporary style.</div>\n<div>At Legitem, our mission is simple: to offer fashion-forward individuals a curated selection of clothing and accessories that complement their lifestyle. Whether you''re looking for everyday basics, standout pieces for special occasions, or trendy accessories to complete your look, we''ve got you covered.</div>\n<div>We source our products from trusted suppliers to ensure durability and comfort without compromising on style.</div>\n<div>We believe that looking good shouldn''t break the bank. That''s why we strive to offer competitive prices and regular promotions to make fashion accessible to everyone.</div>\n<div>Follow us on social media to stay updated on the latest trends, promotions, and new arrivals. Join the Legitem community and be inspired to express your unique sense of style with confidence.</div>\n<div>About Legitem</div>','\n',char(10)));
CREATE TABLE IF NOT EXISTS "FAQ" (
    "id" TEXT NOT NULL,
    "question" TEXT,
    "answer" TEXT
);
DELETE FROM sqlite_sequence;
INSERT INTO sqlite_sequence VALUES('Inventory',34);
INSERT INTO sqlite_sequence VALUES('Inv_subImage',19);
INSERT INTO sqlite_sequence VALUES('Category',26);
INSERT INTO sqlite_sequence VALUES('AccountDetails',14);
INSERT INTO sqlite_sequence VALUES('ProductTypes',100);
INSERT INTO sqlite_sequence VALUES('Brandname',59);
INSERT INTO sqlite_sequence VALUES('ChildInventory',196);
CREATE UNIQUE INDEX "Inventory_styleCode_key" ON "Inventory"("styleCode");
CREATE UNIQUE INDEX "OrderHistory_id_key" ON "OrderHistory"("id");
CREATE UNIQUE INDEX "User_email_key" ON "User"("email");
CREATE UNIQUE INDEX "Privacy_id_key" ON "Privacy"("id");
CREATE UNIQUE INDEX "Disclaimer_id_key" ON "Disclaimer"("id");
CREATE UNIQUE INDEX "About_id_key" ON "About"("id");
CREATE UNIQUE INDEX "FAQ_id_key" ON "FAQ"("id");
COMMIT;
