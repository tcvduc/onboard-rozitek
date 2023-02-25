-- ------------------------
-- Onboard Rozitek
-- ------------------------

drop database onboardRozitek;
create database onboardRozitek;
use onboardRozitek;

-- ----------------------------------
-- table for `product`
-- ----------------------------------
create table product (
    productId nvarchar(255),
	productName nvarchar(255),
    otherData nvarchar(255),
    primary key (productId)
);

-- ----------------------------------
-- records for `product`
-- ----------------------------------
insert into product (productId,productName,otherData) values ('product id 1','product name 1','random 1');
insert into product (productId,productName,otherData) values ('product id 2','product name 2','random 2');
insert into product (productId,productName,otherData) values ('product id 3','product name 3','random 3');


-- ----------------------------------
-- table for `apparelSize`
-- ----------------------------------
create table apparelSize (
	sizeId nvarchar(255),
    productId nvarchar(255),
    sizeCode nvarchar(255),
    sortOrder nvarchar(255),
    primary key (sizeId),
    foreign key (productId) references product(productId)
);

-- ----------------------------------
-- records for `apparelSize`
-- ----------------------------------
insert into apparelSize(sizeId,productId,sizeCode,sortOrder) values ('size id 1','product id 1','#1234','descending');
insert into apparelSize(sizeId,productId,sizeCode,sortOrder) values ('size id 2','product id 1','#4312','descending');
insert into apparelSize(sizeId,productId,sizeCode,sortOrder) values ('size id 3','product id 2','#321','ascending');
insert into apparelSize(sizeId,productId,sizeCode,sortOrder) values ('size id 4','product id 2','#213','ascending');


-- ----------------------------------
-- table for `categories`
-- ----------------------------------
create table categories(
	categoryId nvarchar(255),
    parentCategoryId nvarchar(255),
    categoryName nvarchar(255),
    primary key (categoryId)
);

-- ----------------------------------
-- records for `categories`
-- ----------------------------------
insert into categories(categoryId,parentCategoryId,categoryName) values ('category id 1','parent category 1','category 1');
insert into categories(categoryId,parentCategoryId,categoryName) values ('category id 2','parent category 1','category 2');
insert into categories(categoryId,parentCategoryId,categoryName) values ('category id 3','parent category 1','category 3');




-- ----------------------------------
-- table for `productCategories`
-- ----------------------------------
create table productCategories(
    productId nvarchar(255),
	categoryId nvarchar(255),
    primary key (productId,categoryId)
);

-- ----------------------------------
-- records for `productCategories`
-- ----------------------------------
insert into productCategories(productId,categoryId) values('product id 1','category id 1');
insert into productCategories(productId,categoryId) values('product id 1','category id 2');




-- ----------------------------------
-- table for `productColors`
-- ----------------------------------
create table productColors(
	colorId nvarchar(255),
    productId nvarchar(255),
    primary key (colorId),
    foreign key (productId) references product(productId)
);

-- ----------------------------------
-- records for `productColors`
-- ----------------------------------
insert into productColors(colorId,productId) values ('color id 1','product id 1');
insert into productColors(colorId,productId) values ('color id 2','product id 2');
insert into productColors(colorId,productId) values ('color id 3','product id 2');


-- ----------------------------------
-- table for `color`
-- ----------------------------------
create table color(
	colorId nvarchar(255),
    colorCode nvarchar(255),
    colorName nvarchar(255),
    primary key (colorId)
);

-- ----------------------------------
-- records for `color`
-- ----------------------------------
insert into color(colorId,colorCode,colorName) values ('color id 1','#clc123','red');
insert into color(colorId,colorCode,colorName) values ('color id 2','#clc312','green');
insert into color(colorId,colorCode,colorName) values ('color id 3','#clc213','blue');






