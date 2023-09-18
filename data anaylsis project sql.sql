use cars;
--- Read Data---
select * from car_dekho;
--- total cars : to get a count of total records---
select count(* ) from car_dekho;
--- how many cars availaible in 2023----
select count(*) from car_dekho 
where year =2023;
--- how many cars available in 2020,2021,2022---
select count(*) from car_dekho
where year in (2020,2021,2022)group by year;
-- client asked me to print the total of all cars by year 
select year,count(*) from car_dekho group by year;
-- client asked to car dealer agent . how many diesel cars will there be in 2020?
select count(*) from car_dekho where year = 2020 and fuel ='Diesel';
-- client request the car dealer . how many petrol cars there in 2020?--
select count(*) from car_dekho where year = 2020 and fuel = 'Petrol';
# the manager told the employee to give a print . All the fuel cars( petrol,diesel,and CNG came by all year--
select year,count(*) from car_dekho where fuel='Petrol' group by year;
select year,count(*) from car_dekho where fuel='Diesel' group by year;
select year,count(*) from car_dekho where fuel='CNG' group by year;
# manager ask which year has more than 100 cars 
select year,count(*) from car_dekho group by year having count(*)>=100;
# the manager said to the employee.all cars count details between 2015 and 2023 and need complete list
select count(*) from car_dekho where year between 2015 and 2023;
# the manager said to the employee all cars  details between 2015 and 2023 and need complete list
select* from car_dekho where year between 2015 and 2023;








