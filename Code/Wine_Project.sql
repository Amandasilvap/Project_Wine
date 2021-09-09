-- Looking if th data is correct
SELECT * FROM wine_production;
SELECT * FROM wine_project;

-- Join the tables to compare wine production with price and rating
SELECT wp.country, `vineyard_surface_area(ha)`, `wine_consumption(1000_hl)`, 
`wine_exports(1000_hl)`, `wine_imports(1000_hl)`, `wine_production(1000_hl)`, 
ROUND(AVG(points),2) as rating, ROUND(AVG(price),2) as price
FROM wine_production wp
JOIN wine_project w 
ON wp.country = w.country
GROUP BY wp.country, `vineyard_surface_area(ha)`, `wine_consumption(1000_hl)`, 
`wine_exports(1000_hl)`, `wine_imports(1000_hl)`, `wine_production(1000_hl)`
ORDER BY `vineyard_surface_area(ha)` desc;


-- Looking for the rating by year
SELECT year, ROUND(AVG(points),2) as rating, ROUND(AVG(price),2)  
FROM wine_project
GROUP BY year
ORDER BY year, rating;

-- Looking for the rating by year and country
SELECT country, ROUND(AVG(points),2)as rating, ROUND(AVG(price),2), year
FROM wine_project
GROUP BY year, country
ORDER BY year;

-- Looking for the rating by year, country and regions
SELECT country, ROUND(AVG(points),2)as rating, ROUND(AVG(price),2), province, year 
FROM wine_project
GROUP BY year, country, province
ORDER BY year;

-- Looking for the rating by year, country, regions and grapes
SELECT country, ROUND(AVG(points),2)as rating, ROUND(AVG(price),2), province, year, variety  
FROM wine_project
GROUP BY year, country, province, variety
ORDER BY rating desc;

-- Looking for the rating by year, country, regions and grapes
SELECT country, ROUND(AVG(points),2)as rating, ROUND(AVG(price),2), province, year, variety, region_1, title  
FROM wine_project
GROUP BY year, country, province, variety, region_1, title
ORDER BY rating desc;

-- Looking for the wines years
SELECT COUNT(title)
FROM wine_project
WHERE price <= 10 AND points > 90;

SELECT title, year, country, points, price
FROM wine_project
Where year < 1980;

SELECT * FROM wine_production
WHERE country = "France"