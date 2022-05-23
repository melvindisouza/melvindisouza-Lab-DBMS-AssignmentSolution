use Ecommerce;

CREATE TABLE IF NOT EXISTS supplier
(
SUPP_ID int primary key,
SUPP_NAME varchar(50) NOT NULL,
SUPP_CITY varchar(50) NOT NULL,
SUPP_PHONE varchar(50) NOT NULL 
);

CREATE TABLE IF NOT EXISTS customer
(
CUS_ID int primary key,
CUS_NAME varchar(20) NOT NULL,
CUS_PHONE varchar(10) NOT NULL,
CUS_CITY varchar(30) NOT NULL,
CUS_GENDER char 
);

CREATE TABLE IF NOT EXISTS category
(
CAT_ID int primary key,
CAT_NAME varchar(20) NOT NULL
);

CREATE TABLE IF NOT EXISTS product
(
PRO_ID int primary key,
PRO_NAME VARCHAR(20) NOT NULL DEFAULT "DUMMY",
PRO_DESC varchar(60) NOT NULL,
CAT_ID INT NOT NULL,
FOREIGN KEY(CAT_ID) REFERENCES CATEGORY(CAT_ID)
);

CREATE TABLE IF NOT EXISTS supplier_pricing
(
PRICING_ID int primary key,
PRO_ID INT NOT NULL,
SUPP_ID INT NOT NULL,
FOREIGN KEY(PRO_ID ) REFERENCES PRODUCT(PRO_ID ),
FOREIGN KEY(SUPP_ID) REFERENCES SUPPLIER(SUPP_ID),
SUPP_PRICE INT NOT NULL DEFAULT 0
);

CREATE TABLE IF NOT EXISTS order_
(
ORD_ID int primary key,
CUS_ID INT NOT NULL,
PRICING_ID INT NOT NULL,
FOREIGN KEY(CUS_ID ) REFERENCES CUSTOMER(CUS_ID ),
FOREIGN KEY(PRICING_ID) REFERENCES SUPPLIER_PRICING(PRICING_ID),
ORD_AMOUNT INT NOT NULL,
ORD_DATE DATE NOT NULL
);

CREATE TABLE IF NOT EXISTS rating(
RAT_ID INT PRIMARY KEY,
ORD_ID INT NOT NULL,
RAT_RATSTARS INT NOT NULL,
FOREIGN KEY(ORD_ID) REFERENCES ORDER_(ORD_ID)
);


INSERT INTO SUPPLIER VALUES(1,"Rajesh Retails","Delhi",'1234567890');
INSERT INTO SUPPLIER VALUES(2,"Appario Ltd.","Mumbai",'2589631470');
INSERT INTO SUPPLIER VALUES(3,"Knome products","Banglore",'9785462315');
INSERT INTO SUPPLIER VALUES(4,"Bansal Retails","Kochi",'9785462315');
INSERT INTO SUPPLIER VALUES(5,"Retails Ltd.","Lucknow",'9785462315');

INSERT INTO CUSTOMER VALUES(1, "AAKASH", '9999999999', "DELHI", 'M');
INSERT INTO CUSTOMER VALUES(2, "AMAN", '9785463215', "NOIDA", 'M');
INSERT INTO CUSTOMER VALUES(3, "NEHA", 9999999999, "MUMBAI" ,'F');
INSERT INTO CUSTOMER VALUES(4, "MEGHA", 9994562399, "KOLKATA" ,'F');
INSERT INTO CUSTOMER VALUES(5, "PULKIT", '7895999999', "LUCKNOW", 'M');

INSERT INTO CATEGORY VALUE(1,"BOOKS");
INSERT INTO CATEGORY VALUE(2,"GAMES");
INSERT INTO CATEGORY VALUE(3,"GROCERIES");
INSERT INTO CATEGORY VALUE(4,"ELECTRONICS");
INSERT INTO CATEGORY VALUE(5,"CLOTHES");

INSERT INTO PRODUCT VALUE(1,"GTA V ","Windows 7 and above with i5 processor and 8GB RAM ",2);
INSERT INTO PRODUCT VALUE(2,"TSHIRT","SIZE-L with Black, Blue and White variations",5);
INSERT INTO PRODUCT VALUE(3,"ROG LAPTOP","Windows 10 with 15inch screen, i7 processor, 1TB SSD",4);
INSERT INTO PRODUCT VALUE(4,"OATS","Highly Nutritious from Nestle",3);
INSERT INTO PRODUCT VALUE(5,"HARRY POTTER","Best Collection of all time by J.K Rowling",1);
INSERT INTO PRODUCT VALUE(6,"MILK","1L Toned MIlk",3);
INSERT INTO PRODUCT VALUE(7,"BOAT Earphones","1.5Meter long Dolby Atmos",4);
INSERT INTO PRODUCT VALUE(8,"JEANS","Stretchable Denim Jeans with various sizes and color",5);
INSERT INTO PRODUCT VALUE(9,"PROJECT IGI","compatible with windows 7 and above",2);
INSERT INTO PRODUCT VALUE(10,"HOODIE","Black GUCCI for 13 yrs and above",5);
INSERT INTO PRODUCT VALUE(11,"RICH DAD POOR DAD","Written by RObert Kiyosaki",1);
INSERT INTO PRODUCT VALUE(12,"TRAIN YOUR BRAIN","By Shireen Stephen",1);


INSERT INTO SUPPLIER_PRICING VALUE(1,1,2,1500);
INSERT INTO SUPPLIER_PRICING VALUE(2,3,5,30000);
INSERT INTO SUPPLIER_PRICING VALUE(3,5,1,3000);
INSERT INTO SUPPLIER_PRICING VALUE(4,2,3,2500);
INSERT INTO SUPPLIER_PRICING VALUE(5,4,1,1000);
INSERT INTO SUPPLIER_PRICING VALUE(6,1,2,1500);
INSERT INTO SUPPLIER_PRICING VALUE(7,3,5,30000);
INSERT INTO SUPPLIER_PRICING VALUE(8,5,1,3000);
INSERT INTO SUPPLIER_PRICING VALUE(9,2,3,2500);
INSERT INTO SUPPLIER_PRICING VALUE(10,4,1,1000);
INSERT INTO SUPPLIER_PRICING VALUE(11,1,2,1500);
INSERT INTO SUPPLIER_PRICING VALUE(12,3,5,30000);
INSERT INTO SUPPLIER_PRICING VALUE(13,5,1,3000);
INSERT INTO SUPPLIER_PRICING VALUE(14,2,3,2500);
INSERT INTO SUPPLIER_PRICING VALUE(15,4,1,1000);



INSERT INTO ORDER_ VALUE(101, 2, 1, 1500, '2021-10-06');
INSERT INTO ORDER_ VALUE(102, 3, 5, 1000, '2021-10-12');
INSERT INTO ORDER_ VALUE(103, 5, 2, 30000, '2021-09-16');
INSERT INTO ORDER_ VALUE(104, 1, 1, 1500, '2021-10-05');
INSERT INTO ORDER_ VALUE(105, 4, 3, 3000, '2021-08-16');
INSERT INTO ORDER_ VALUE(106, 1, 9, 1450, '2021-08-18');
INSERT INTO ORDER_ VALUE(107, 3, 7, 789, '2021-09-01');
INSERT INTO ORDER_ VALUE(108, 5, 6, 780, '2021-09-07');
INSERT INTO ORDER_ VALUE(109, 5, 3, 3000, '2021-09-10');
INSERT INTO ORDER_ VALUE(110, 2, 4, 2500, '2021-09-10');
INSERT INTO ORDER_ VALUE(111, 4, 5, 1000, '2021-09-15');
INSERT INTO ORDER_ VALUE(112, 4, 7, 789, '2021-09-16');
INSERT INTO ORDER_ VALUE(113, 1, 8, 31000, '2021-09-16');
INSERT INTO ORDER_ VALUE(114, 3, 5,1000, '2021-09-16');
INSERT INTO ORDER_ VALUE(115, 5, 3, 3000, '2021-09-16');
INSERT INTO ORDER_ VALUE(116, 2, 14, 99, '2021-09-17');

INSERT INTO RATING VALUE (1, 101 ,4);
INSERT INTO RATING VALUE (2, 102 ,3);
INSERT INTO RATING VALUE (3, 103 ,1);
INSERT INTO RATING VALUE (4, 104 ,2);
INSERT INTO RATING VALUE (5, 105 ,4);
INSERT INTO RATING VALUE (6, 106 ,3);
INSERT INTO RATING VALUE (7, 107 ,4);
INSERT INTO RATING VALUE (8, 108, 4);
INSERT INTO RATING VALUE (9, 109 ,3);
INSERT INTO RATING VALUE (10, 110 ,5);
INSERT INTO RATING VALUE (11 ,111 ,3);
INSERT INTO RATING VALUE (12 ,112 ,4);
INSERT INTO RATING VALUE (13 ,113 ,2);
INSERT INTO RATING VALUE (14 ,114, 1);
INSERT INTO RATING VALUE (15 ,115, 1);
INSERT INTO RATING VALUE (16 ,116, 0);

/*Question 3*/
SELECT CUS_GENDER as GENDER, count(distinct(CUS_ID)) as NoOfCustomers from 
(select customer.CUS_ID,customer.CUS_GENDER from customer inner join 
(select CUS_ID from Ecommerce.order_ where ORD_AMOUNT >=3000)as filter_order
on customer.CUS_ID= filter_order.CUS_ID) as filter_customer group by CUS_GENDER;

/*Question 4*/
select order_details.*, prod.pro_name from product as prod inner join
(select ord.*,price.PRO_ID from Ecommerce.order_ as ord inner join supplier_pricing as price
on ord.PRICING_ID= price.PRICING_ID where ord.cus_id=2) as order_details on order_details.PRO_ID = prod.pro_id;

/*Question 5*/
select supplier.* from supplier where supplier.supp_id in
(select supp_id from supplier_pricing group by supp_id having count(PRO_ID)>1);

/*Question 6*/
select category.cat_id, category.cat_name, min(t3.min_price) as Min_Price from category inner join
(select product.cat_id, product.pro_name, t2.* from product inner join
(select pro_id, min(supp_price)as Min_Price from supplier_pricing group by pro_id)
as t2 where t2.pro_id = product.pro_id)
as t3 where t3.cat_id = category.cat_id group by t3.cat_id;

/*Question 7*/
select PRO_ID, PRO_NAME from product where pro_id in
(select pro_id from supplier_pricing where pricing_id in (select pricing_id from Ecommerce.order_ where ord_date> "2021-10-05"));

/*Question 8*/
select customer.cus_name, customer.cus_gender from customer where customer.cus_name like 'A%' or customer.cus_name like '%A';


/*Question 9*/

DELIMITER &&
CREATE PROCEDURE `question9` ()
BEGIN
select report.supp_id, report.supp_name, report.Average,
CASE
WHEN report.Average =5 THEN 'Excellent Service'
WHEN report.Average >4 THEN 'Good Service'
WHEN report.Average >2 THEN 'Average Service'
ELSE 'Poor Service'

END AS Type_Of_Service from
(select final.supp_id, supplier.supp_name,final.Average from
(select test2.supp_id, sum(test2.rat_ratstars)/count(test2.rat_ratstars)as Average from
(select supplier_pricing.supp_id, test.ORD_ID, test.rat_ratstars from supplier_pricing inner join
(select `order_`.pricing_id, rating.ORD_ID, rating.RAT_RATSTARS from `order_` inner join 
rating on rating.`ord_id`=`order_`.ord_id)as test
on test.pricing_id = supplier_pricing.pricing_id)
as test2 group by supplier_pricing.supp_id)
as final inner join supplier where final.supp_id= supplier.supp_id) as report;
END &&
DELIMITER ;
call question9();