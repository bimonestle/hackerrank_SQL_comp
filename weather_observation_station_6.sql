(select city from station
where left(city, 1) = 'a' 
group by city)
union
(select city from station
where left(city, 1) = 'e' 
group by city)
union
(select city from station
where left(city, 1) = 'i' 
group by city)
union
(select city from station
where left(city, 1) = 'o' 
group by city)
union
(select city from station
where left(city, 1) = 'u' 
group by city)
    