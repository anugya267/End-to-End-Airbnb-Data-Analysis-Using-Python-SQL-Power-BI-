select * from airbnb_data;
-- 1. Average price by neighborhood group?
select neighbourhood_group, avg(price)as avg_pricre from airbnb_data
group by neighbourhood_group;


--2. Which room type is most expensive on average? 
SELECT room_type,
       AVG(price) AS avg_price
FROM airbnb_data
GROUP BY room_type
ORDER BY avg_price DESC;

--3. Top 10 most reviewed listings?
SELECT id, name, number_of_reviews
FROM airbnb_data
ORDER BY number_of_reviews DESC
LIMIT 10;

--4. Which neighborhoods have the most listings?
select neighbourhood, count(*) as total_listing from airbnb_data
group by neighbourhood order by total_listing desc;

--5. Hosts with multiple listings?
select host_id, host_name , count(*) as listing_count 
from airbnb_data
group by host_id, host_name having count(*)>1 
order by listing_count desc;   

--6. Average availability by room type?
select room_type, avg(availability_365) as avg_availability
FROM airbnb_data
GROUP BY room_type;

--7.Price comparison: Manhattan vs Brooklyn?

SELECT neighbourhood_group,
       AVG(price) AS avg_price
FROM airbnb_data
WHERE neighbourhood_group IN ('Manhattan', 'Brooklyn')
GROUP BY neighbourhood_group;

--8.Listings with no reviews?
select   count(*) as no_rev_listing from airbnb_data
 where number_of_reviews=0; 

--9. Recently active listings?
SELECT *
FROM airbnb_data
WHERE last_review IS NOT NULL;
--10. High price but low demand listings?
SELECT id, name, price, number_of_reviews
FROM airbnb_data
WHERE price > (SELECT AVG(price) FROM airbnb_data)
  AND number_of_reviews < (SELECT AVG(number_of_reviews) FROM airbnb_data);


--11.Which listings have the highest revenue potential?
SELECT id, name, neighbourhood_group,
       price * (365 - availability_365) AS revenue_potential
FROM airbnb_data
ORDER BY revenue_potential DESC
LIMIT 10;

--12.Which listings are priced above market but receive fewer reviews?
SELECT id, name, neighbourhood, price, number_of_reviews
FROM airbnb_data
WHERE price > (SELECT AVG(price) FROM airbnb_data)
  AND number_of_reviews < (SELECT AVG(number_of_reviews) FROM airbnb_data)
ORDER BY price DESC;

--13.Which listings are underpriced but highly demanded?
SELECT id, name, neighbourhood, price, number_of_reviews
FROM airbnb_data
WHERE price < (SELECT AVG(price) FROM airbnb_data)
  AND number_of_reviews > (SELECT AVG(number_of_reviews) FROM airbnb_data)
ORDER BY number_of_reviews DESC;

--14.How unequal are prices within the same neighborhood?

SELECT neighbourhood,
       MAX(price) - MIN(price) AS price_gap
FROM airbnb_data
GROUP BY neighbourhood
ORDER BY price_gap DESC;

--15.Which hosts dominate a neighborhood?

SELECT neighbourhood, host_id, host_name,
       COUNT(*) AS listing_count
FROM airbnb_data
GROUP BY neighbourhood, host_id, host_name
HAVING COUNT(*) >= 20
ORDER BY listing_count DESC;

--16.Which room type gives best value for guests?

SELECT room_type,
       AVG(price) AS avg_price,
       AVG(number_of_reviews) AS avg_reviews
FROM airbnb_data
GROUP BY room_type;

--17.Are highly available listings actually less popular?

SELECT
  CASE
    WHEN availability_365 > 300 THEN 'Highly Available'
    WHEN availability_365 BETWEEN 100 AND 300 THEN 'Moderately Available'
    ELSE 'Low Availability'
  END AS availability_segment,
  AVG(number_of_reviews) AS avg_reviews
FROM airbnb_data
GROUP BY availability_segment;


--18.Do newer listings struggle with visibility?

SELECT
  CASE
    WHEN number_of_reviews < 10 THEN 'New Listing'
    ELSE 'Established Listing'
  END AS listing_type,
  AVG(price) AS avg_price,
  AVG(availability_365) AS avg_availability
FROM airbnb_data
GROUP BY listing_type;


--19.Which areas show more frequent guest turnover?

SELECT neighbourhood_group,
       AVG(reviews_per_month) AS avg_reviews_per_month
FROM airbnb_data
GROUP BY neighbourhood_group
ORDER BY avg_reviews_per_month DESC;

--20.Room type dominance by borough?

SELECT neighbourhood_group, room_type,
       COUNT(*) AS listing_count
FROM airbnb_data
GROUP BY neighbourhood_group, room_type
ORDER BY neighbourhood_group,  listing_count DESC;

























  
