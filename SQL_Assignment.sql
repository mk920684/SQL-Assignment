select *  from City;

--alter table city drop column F6;

--1. Query all columns for all American cities in the CITY table with populations larger than 100000.
--The CountryCode for America is USA.
--The CountryCode for America is USA.
select * from city;
--in any order, but exclude duplicates from the answer.
--distinct CITY entries in the table.
there are 2 different city names: 'New York' and 'Bengalaru'. The query returns , because total number
of records - number of unique city names = 3-2 =1  */
respective lengths (i.e.: number of characters in the name). If there is more than one smallest or
largest city, choose the one that comes first when ordered alphabetically.
For example, CITY has four entries: DEF, ABC, PQRS and WXY.
Sample Output
ABC 3
PQRS 4
Hint -
When ordered alphabetically, the CITY names are listed as ABC, DEF, PQRS, and WXY, with lengths
and. The longest name is PQRS, but there are options for shortest named city. Choose ABC, because
it comes first alphabetically.
Note
You can write two separate queries to get the desired output. It need not be a single query.  */
with vowels. Your result cannot contain duplicates.  */
--vowels. Your result cannot contain duplicates.

select distinct city from station where left(city,1) not in ( 'a','e','i','o','u') and right(city,1) not in ( 'a','e','i','o','u');

--Q.17
select product_id, product_name from product p join sales s on 
p.product_id=s.product_id and sale_date between '2019-01-01' and '2019-03-31';

--Q.18
select v1.author_id from views v1 join views v2 on 
v1.author_id=v2.viewer_id;

--Q19

select (select count(1) from delivery d where d.order_date=d.customer_pref_delivery_date)/(count(d1.delivery_id)) as immediate_percentage from delivery d1;

--Q.20
