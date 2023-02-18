use onboardRozitek;

-- ----------------------------------
-- 1. get product size code
-- ----------------------------------
select p.productName, a.sizeCode
from product as p
join apparelSize as a
on p.productId = a.productId;
-- 1 product --- k size code


-- ----------------------------------
-- 2. get product categories
-- ----------------------------------
select p.productId, p.productName, c.categoryId, c.categoryName
from product as p
join productCategories as pc
on p.productId = pc.productId
join categories as c
on c.categoryId = pc.categoryId;


