select *  from City;

--alter table city drop column F6;

--1. Query all columns for all American cities in the CITY table with populations larger than 100000.
--The CountryCode for America is USA.select * from city where countrycode='USA' and population > 100000;--Q2. Query the NAME field for all American cities in the CITY table with populations larger than 120000.
--The CountryCode for America is USA.select name from city where countrycode='USA' and population > 120000;--3. Query all columns (attributes) for every row in the CITY table.
select * from city;--4. Query all columns for a city in CITY with the ID 1661.select * from city where id=1661;--Q5. Query all attributes of every Japanese city in the CITY table. The COUNTRYCODE for Japan is JPN.select * from city where countrycode='JPN';--Q6. Query the names of all the Japanese cities in the CITY table. The COUNTRYCODE for Japan is JPNselect name from city where countrycode='JPN';--7. Query a list of CITY and STATE from the STATION table.select city, state from station;--Q8. Query a list of CITY names from STATION for cities that have an even ID number. Print the results
--in any order, but exclude duplicates from the answer.select distinct(city) from station where convert(int,id)%2=0;--Q9. Find the difference between the total number of CITY entries in the table and the number of
--distinct CITY entries in the table./*For example, if there are three records in the table with CITY values 'New York', 'New York', 'Bengalaru',
there are 2 different city names: 'New York' and 'Bengalaru'. The query returns , because total number
of records - number of unique city names = 3-2 =1  */select count(city)-count(distinct city) as unique_city from station;/*Q10. Query the two cities in STATION with the shortest and longest CITY names, as well as their
respective lengths (i.e.: number of characters in the name). If there is more than one smallest or
largest city, choose the one that comes first when ordered alphabetically.Sample Input
For example, CITY has four entries: DEF, ABC, PQRS and WXY.
Sample Output
ABC 3
PQRS 4
Hint -
When ordered alphabetically, the CITY names are listed as ABC, DEF, PQRS, and WXY, with lengths
and. The longest name is PQRS, but there are options for shortest named city. Choose ABC, because
it comes first alphabetically.
Note
You can write two separate queries to get the desired output. It need not be a single query.  */select top 1 city from station where len(city)= (select min(len(city)) from station) order by city;select top 1 city from station where len(city)= (select max(len(city)) from station) order by city;--Q11. Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. Your result  cannot contain duplicates.select distinct city from station where left(city,1) in ( 'a','e','i','o','u');--Q12. Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. Your result cannot contain duplicates.select distinct city from station where right(city,1) in ( 'a','e','i','o','u');--Q13. Query the list of CITY names from STATION that do not start with vowels. Your result cannot contain duplicatesselect distinct city from station where left(city,1) not in ( 'a','e','i','o','u');--Q14. Query the list of CITY names from STATION that do not end with vowels. Your result cannot contain duplicates.select distinct city from station where right(city,1) not in ( 'a','e','i','o','u');/*Q15. Query the list of CITY names from STATION that either do not start with vowels or do not end
with vowels. Your result cannot contain duplicates.  */select distinct city from station where left(city,1) not in ( 'a','e','i','o','u') or right(city,1) not in ( 'a','e','i','o','u');--Q16. Query the list of CITY names from STATION that do not start with vowels and do not end with
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

