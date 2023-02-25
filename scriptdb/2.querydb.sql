use onboardRozitek;

-- ----------------------------------
-- 1. get product size code
-- ----------------------------------
use onboardRozitek;

select p.productName, a.sizeCode
from product as p
join apparelSize as a
on p.productId = a.productId;
-- 1 product --- k size code


-- ----------------------------------
-- 2. get product categories
-- ----------------------------------
use onboardRozitek;

select *
from  product as p;

select *
from  productCategories as pc;

select *
from categories as c;

select *
from product as p
join productCategories as pc
on p.productId = pc.productId;

select *
from productCategories as pc
join categories as c
on pc.categoryId = c.categoryId;


select p.productId, p.productName, c.categoryId, c.categoryName
from product as p
join productCategories as pc
on p.productId = pc.productId
join categories as c
on c.categoryId = pc.categoryId;




-- ---------------------------------
-- 3. Get product color info
-- ---------------------------------
use onboardrozitek;

select *
from productColors as pc;



-- ---------------------------------
-- 4. Get product 1 color info
-- --------------------------- ------
select *
from product as p;

select * 
from productColors as pc;

select *
from color as c;


select p.productId, p.productName, pc.colorId,
c.colorCode, c.colorName
from product as p
join productColors as pc
on p.productId = pc.productId
join color as c 
on c.colorId = pc.colorId
where p.productId = 'product id 1';

