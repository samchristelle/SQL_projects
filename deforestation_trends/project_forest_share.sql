SELECT *
FROM forest_share;

--1. What are the top ten countries that saw the largest increase in forest share from 2000 to 2020?
SELECT 
	country,
	continent,
	forests_2000,
	forests_2020,
	trend
FROM forest_share
WHERE trend > 0
ORDER BY trend DESC
LIMIT 10;

--2. What are the top ten countries that saw the largest decrease in forest share from 2000 to 2020?
SELECT 
	country,
	continent,
	forests_2000,
	forests_2020,
	trend
FROM forest_share
WHERE trend < 0
ORDER BY trend ASC
LIMIT 10;

--3. What is the change in forest share per continent between 2000 and 2020?
--Round the results by two decimal places
--Sort the results by change in forest share in descending order
SELECT
	continent,
	ROUND(AVG(forests_2000), 2) AS avg_forest2000,
	ROUND(AVG(forests_2020), 2) AS avg_forest2020,
	ROUND(AVG(forests_2020) - AVG(forests_2000), 2) AS difference
FROM forest_share
GROUP BY continent
ORDER BY difference DESC;

--4. How do UN member countries compare to non-members in terms of forest share change?
--Round the results to two decimal places
SELECT
	un_member,
	ROUND(AVG(forests_2000), 2) AS avg_forest2000,
	ROUND(AVG(forests_2020), 2) AS avg_forest2020,
	ROUND(AVG(forests_2020) - AVG(forests_2000), 2) AS difference
FROM forest_share
GROUP BY un_member;

--5. Which UN nations have an increasing trend of at least 30?
--Sort by trend in descending order
SELECT
	country,
	trend
FROM forest_share
WHERE un_member = 'yes'
	AND trend >= 30
ORDER BY trend DESC;