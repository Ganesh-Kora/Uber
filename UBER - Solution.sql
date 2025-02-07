create database Uber;
use Uber;
show tables;
select * from driver d ;
select * from passenger p ;
select * from rides r ;

# Basic Level:

#1. What are & how many unique pickup location are there in the dataset?
select distinct pickup_location from rides r ;
select count(distinct pickup_location) from rides r ;

#2. What is the total number of rides in the dataset?
SELECT COUNT(*) AS total_rides FROM rides;

#3. Calculate the average ride duration.
select avg(ride_duration) from rides r ;

#4. List the top 5 drivers based on their total earnings.
select driver_id ,sum(earnings) as total_earnings 
from driver d group by driver_id order by total_earnings desc limit 5;

#5. Calculate the total number of rides for each payment method.
select payment_method , count(*) as ride_count
from rides r group by payment_method ;

#6. Retrieve rides with a fare amount greater than 20.
select * from rides r where fare_amount >20;

#7. Identify the most common pickup location.
SELECT pickup_location, COUNT(*) AS ride_count 
FROM rides
GROUP BY pickup_location 
ORDER BY ride_count DESC LIMIT 1;

#8. Calculate the average fare amount.
select avg(fare_amount)from rides r ;

#9. List the top 10 drivers with the highest average ratings.
SELECT driver_id, avg(rating) as avg_rating 
FROM driver d 
GROUP BY driver_id 
order by avg_rating DESC LIMIT 10;

#10. Calculate the total earnings for all drivers.
select sum(earnings) total_earning from driver d ;

#11. How many rides were paid using the "Cash" payment method?
select count(*) from rides r where payment_method  = 'cash' ;

#12. Calculate the number of rides & average ride distance for rides originating from the 'Dhanbad' pickup location.
select pickup_location ,count(*), avg(ride_distance) from rides r where pickup_location = 'Dhanbad';

#13. Retrieve rides with a ride duration less than 10 minutes.
select * from rides r where ride_duration <10;

#14. List the passengers who have taken the most number of rides.
select passenger_id, count(*) ride_count from rides r group by passenger_id order by ride_count desc limit 5;

#15. Calculate the total number of rides for each driver in descending order.


#16. Identify the payment methods used by passengers who took rides from the 'Gandhinagar' pickup location.

#17. Calculate the average fare amount for rides with a ride distance greater than 10.

#18. List the drivers in descending order accordinh to their total number of rides.

#19. Calculate the percentage distribution of rides for each pickup location.
select round(count(distinct pickup_location)*100/count(pickup_location),2),
pickup_location from rides r group by pickup_location ;

#20. Retrieve rides where both pickup and dropoff locations are the same.



# Intermediate Level:     

                 

#1. List the passengers who have taken rides from at least 300 different pickup locations.
we

#2. Calculate the average fare amount for rides taken on weekdays.

#3. Identify the drivers who have taken rides with distances greater than 19.

#4. Calculate the total earnings for drivers who have completed more than 100 rides.

#5. Retrieve rides where the fare amount is less than the average fare amount.
select 

#6. Calculate the average rating of drivers who have driven rides with both 'Credit Card' and 'Cash' payment methods.

#7. List the top 3 passengers with the highest total spending.

#8. Calculate the average fare amount for rides taken during different months of the year.

#9. Identify the most common pair of pickup and dropoff locations.

#10. Calculate the total earnings for each driver and order them by earnings in descending order.

#11. List the passengers who have taken rides on their signup date.

#12. Calculate the average earnings for each driver and order them by earnings in descending order.

#13. Retrieve rides with distances less than the average ride distance.

#14. List the drivers who have completed the least number of rides.

#15. Calculate the average fare amount for rides taken by passengers who have taken at least 20 rides.

#16. Identify the pickup location with the highest average fare amount.

#17. Calculate the average rating of drivers who completed at least 100 rides.

#18. List the passengers who have taken rides from at least 5 different pickup locations.

#19. Calculate the average fare amount for rides taken by passengers with ratings above 4.


#20. Retrieve rides with the shortest ride duration in each pickup location.



# Advanced Level:

#1. List the drivers who have driven rides in all pickup locations.
select count(distinct pickup_location) count_p, driver_id from rides r 
group by driver_id having count_p = 316;

#2. Calculate the average fare amount for rides taken by passengers who have spent more than 300 in total.
select avg(fare_amount), ride_id from rides r 

#3. List the bottom 5 drivers based on their average earnings.

#4. Calculate the sum fare amount for rides taken by passengers who have taken rides in different payment methods.

#5. Retrieve rides where the fare amount is significantly above the average fare amount.

#6. List the drivers who have completed rides on the same day they joined.

#7. Calculate the average fare amount for rides taken by passengers who have taken rides in different payment methods.

#8. Identify the pickup location with the highest percentage increase in average fare amount compared to the overall average fare.

#9. Retrieve rides where the dropoff location is the same as the pickup location.

#10. Calculate the average rating of drivers who have driven rides with varying pickup locations.

