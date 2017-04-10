#SQL
####10-04-2017

####Basic select

**1. Revising the Select Query I**
```sql
SELECT *
FROM city
WHERE countrycode = 'USA'
AND population > 100000
```

**2. Revising the Select Query II**
```sql
SELECT name
FROM city
WHERE countrycode = 'USA'
AND population > 100000
```

**3. Select All**
```sql
SELECT *
FROM city
```

**4. Select By ID**
```sql
SELECT *
FROM city
WHERE id = 1661
```

**5. Japanese Cities' Attributes**
```sql
SELECT *
FROM city
WHERE countrycode = 'JPN'
```

**6. Japanese Cities' Names**
```sql
SELECT name
FROM city
WHERE countrycode = 'JPN'
```

####Advanced select
**1. Type of Triangle**
```sql
SELECT CASE
  WHEN A+B<=C or B+C<=A or A+C<=B THEN 'Not A Triangle'
  WHEN A=B AND B=C THEN 'Equilateral'
  WHEN A=B OR B=C OR A=C THEN 'Isosceles'
  ELSE 'Scalene'
       END
FROM TRIANGLES;
```

**2. The PADS**
```sql
select concat(Name, '(', left(Occupation, 1), ')')
from occupations
order by Name;
select concat('There are total ', count(*), ' ', lower(Occupation), 's.')
from occupations
group by Occupation
order by count(*);
```

####Aggregation
**1. Revising Aggregations - The Count Function**
```sql
select count(*)
from city
where Population > 100000
```

**2. Revising Aggregations - The Sum Function**
```sql
select sum(population)
from city
where District = 'California'
```

**3. Revising Aggregations - Averages**
```sql
select AVG(population)
from city
where District = 'California'
```

**4. Average Population**
```sql
select round(avg(population))
from city
```

**5. Japan Population**
```sql
select sum(population)
from city where countrycode = 'JPN'
```

####Basic join
**1. Asian Population**
```sql
select sum(city.population)
from city
join country
on city.countrycode = country.code
where continent = 'Asia'
```

**2. African Cities**
```sql
select city.name
from city
join country
on city.countrycode = country.code
where continent = 'Africa'
```

**3. Average Population of Each Continent**
```sql
select country.continent,
floor(avg(city.population))
from city
join country
on city.countrycode = country.code
group by country.continent
```

**4. The report**
```sql
select if(Grade < 8,NULL,Name),Grade,Marks
from Students
join Grades
on Marks >= Min_Mark && Marks <= Max_Mark
order by Grade desc, Name, Marks asc
```
