-- Database: RSVP Movie Case Study

CREATE TABLE movies (
   movie_id VARCHAR(10) PRIMARY KEY,
   title VARCHAR(100),
   year INT,
   date_published DATE,
   duration    INT,
   country     VARCHAR(50),
   languages   VARCHAR(100),
   genre       VARCHAR(50),
   budget      NUMERIC(15,2),
   revenue     NUMERIC(15,2)
);

CREATE TABLE directors (
    director_id   VARCHAR(10) PRIMARY KEY,
    name          VARCHAR(100),
    movies_count  INT
);
CREATE TABLE movie_directors (
    movie_id    VARCHAR(10),
    director_id VARCHAR(10)
);
CREATE TABLE ratings (
    movie_id      VARCHAR(10),
    avg_rating    NUMERIC(3,1),
    votes         INT,
    median_rating INT
);
CREATE TABLE actors (
    actor_id   VARCHAR(10) PRIMARY KEY,
    name       VARCHAR(100)
);
CREATE TABLE movie_actors (
    movie_id   VARCHAR(10),
    actor_id   VARCHAR(10),
    role       VARCHAR(20)
);

INSERT INTO movies VALUES
('M001','KGF Chapter 2',2022,'2022-04-14',168,'India','Kannada','Action',1000000000,12500000000),
('M002','RRR',2022,'2022-03-25',187,'India','Telugu','Action',550000000,11000000000),
('M003','Baahubali 2',2017,'2017-04-28',167,'India','Telugu','Action',2500000000,18100000000),
('M004','3 Idiots',2009,'2009-12-25',170,'India','Hindi','Comedy',550000000,6000000000),
('M005','Dangal',2016,'2016-12-23',161,'India','Hindi','Drama',700000000,19400000000),
('M006','PK',2014,'2014-12-19',153,'India','Hindi','Comedy',850000000,8540000000),
('M007','Mughal-E-Azam',1960,'1960-08-05',197,'India','Hindi','Drama',15000000,150000000),
('M008','Sholay',1975,'1975-08-15',204,'India','Hindi','Action',150000000,3500000000),
('M009','Dilwale Dulhania Le Jayenge',1995,'1995-10-20',189,'India','Hindi','Romance',400000000,2000000000),
('M010','Queen',2014,'2014-03-07',116,'India','Hindi','Drama',35000000,1200000000),
('M011','Andhadhun',2018,'2018-10-05',139,'India','Hindi','Thriller',320000000,4560000000),
('M012','Gully Boy',2019,'2019-02-14',154,'India','Hindi','Drama',650000000,4720000000),
('M013','Uri',2019,'2019-01-11',138,'India','Hindi','Action',250000000,3420000000),
('M014','Kabir Singh',2019,'2019-06-21',182,'India','Hindi','Romance',600000000,3790000000),
('M015','Super 30',2019,'2019-07-12',156,'India','Hindi','Drama',300000000,2000000000),
('M016','Tanhaji',2020,'2020-01-10',135,'India','Hindi','Action',150000000,2800000000),
('M017','83',2021,'2021-12-24',150,'India','Hindi','Drama',185000000,1030000000),
('M018','Pushpa',2021,'2021-12-17',179,'India','Telugu','Action',250000000,3650000000),
('M019','Sooryavanshi',2021,'2021-11-05',145,'India','Hindi','Action',1650000000,1960000000),
('M020','Brahmastra',2022,'2022-09-09',167,'India','Hindi','Fantasy',410000000,2250000000);

INSERT INTO directors VALUES
('D001','Prashanth Neel',3),
('D002','SS Rajamouli',4),
('D003','Rajkumar Hirani',5),
('D004','Nitesh Tiwari',3),
('D005','Sriram Raghavan',4),
('D006','Zoya Akhtar',4),
('D007','Aditya Chopra',3),
('D008','Kabir Khan',5),
('D009','Vikramaditya Motwane',3),
('D010','Ayan Mukerji',2);

INSERT INTO movie_directors VALUES
('M001','D001'),('M002','D002'),('M003','D002'),
('M004','D003'),('M005','D004'),('M006','D003'),
('M007','D007'),('M008','D007'),('M009','D007'),
('M010','D006'),('M011','D005'),('M012','D006'),
('M013','D008'),('M014','D009'),('M015','D004'),
('M016','D008'),('M017','D008'),('M018','D001'),
('M019','D008'),('M020','D010');

INSERT INTO ratings VALUES
('M001',8.4,550000,8),('M002',7.8,480000,8),
('M003',8.2,620000,8),('M004',8.4,480000,9),
('M005',8.3,420000,8),('M006',8.1,390000,8),
('M007',8.0,95000,8),('M008',8.2,280000,8),
('M009',8.1,320000,8),('M010',8.2,185000,8),
('M011',8.3,310000,8),('M012',7.9,195000,8),
('M013',8.2,245000,8),('M014',7.1,320000,7),
('M015',7.4,185000,7),('M016',7.8,215000,8),
('M017',7.5,165000,7),('M018',7.6,285000,8),
('M019',7.2,195000,7),('M020',5.6,285000,5);

INSERT INTO actors VALUES
('A001','Yash'),('A002','Ram Charan'),
('A003','Jr NTR'),('A004','Prabhas'),
('A005','Aamir Khan'),('A006','Shah Rukh Khan'),
('A007','Ranveer Singh'),('A008','Hrithik Roshan'),
('A009','Ayushmann Khurrana'),('A010','Kangana Ranaut'),
('A011','Deepika Padukone'),('A012','Alia Bhatt'),
('A013','Vicky Kaushal'),('A014','Shahid Kapoor'),
('A015','Ranbir Kapoor');

INSERT INTO movie_actors VALUES
('M001','A001','lead'),('M002','A002','lead'),
('M002','A003','lead'),('M003','A004','lead'),
('M004','A005','lead'),('M005','A005','lead'),
('M006','A005','lead'),('M007','A006','lead'),
('M008','A006','lead'),('M009','A006','lead'),
('M010','A010','lead'),('M011','A009','lead'),
('M012','A007','lead'),('M013','A013','lead'),
('M014','A014','lead'),('M015','A008','lead'),
('M016','A007','lead'),('M017','A007','lead'),
('M018','A001','lead'),('M019','A007','lead'),
('M020','A015','lead'),('M020','A012','lead');


/*SELECT 'movies' AS table_name, COUNT(*) AS rows FROM movies 
UNION ALL
SELECT 'directors', COUNT(*) FROM directors
UNION ALL
SELECT 'ratings', COUNT(*) FROM ratings
UNION ALL
SELECT 'actors', COUNT(*) FROM actors
UNION ALL
SELECT 'movie_actors', COUNT(*) FROM movie_actors
UNION ALL
SELECT 'movie_directors', COUNT(*) FROM movie_directors;*/

--Problem 1
SELECT year, COUNT(*) AS movie_count 
FROM movies
GROUP BY year
ORDER BY year ASC;

--Problem 2
SELECT m.movie_id, m.title, r.avg_rating
FROM movies m
INNER JOIN ratings r
ON m.movie_id = r.movie_id
WHERE r.avg_rating > 8.0
ORDER BY r.avg_rating DESC;

--Problem 3
SELECT genre, count(*) AS most_movie
FROM movies
GROUP BY genre
ORDER BY most_movie DESC LIMIT 1;

--Problem 4
SELECT m.movie_id, m.title, r.avg_rating, r.votes
FROM movies m
INNER JOIN ratings r
ON m.movie_id = r.movie_id
ORDER BY r.avg_rating DESC;

--Problem 5
SELECT name, movies_count
FROM directors  d
ORDER BY movies_count DESC LIMIT 1;

--Problem 6
SELECT m.title, r.avg_rating
FROM directors d
JOIN movie_directors md ON md.director_id = d.director_id
JOIN movies m ON m.movie_id = md.movie_id
JOIN ratings r ON r.movie_id = md.movie_id
WHERE d.name = 'SS Rajamouli';

--Problem 7
SELECT genre,AVG(budget) AS Avg_bud, 
             AVG(revenue) AS Avg_rev
FROM movies
GROUP BY genre;

--Problem 8
SELECT m.title, r.avg_rating,
      DENSE_RANK() OVER (ORDER BY r.avg_rating DESC) AS Avg_rank 
FROM movies m
JOIN ratings r
ON m.movie_id = r.movie_id;

--Problem 9
SELECT m.title, r.avg_rating
FROM movies m
JOIN ratings r ON  m.movie_id = r.movie_id
WHERE r.avg_rating > (SELECT AVG(avg_rating) FROM ratings);

--Problem 10
SELECT a.name, COUNT(a.name)
FROM actors a
JOIN movie_actors ma ON ma.actor_id = a.actor_id
GROUP BY a.actor_id
ORDER BY COUNT(a.name) DESC;


--Problem 11
WITH
movie AS (
    SELECT m.title, m.genre, r.avg_rating
    FROM movies m
    JOIN ratings r
    ON m.movie_id = r.movie_id 
	WHERE genre = 'Action'
)
SELECT * FROM movie
ORDER BY avg_rating DESC LIMIT 3;

--Problem 12
SELECT * FROM (
    SELECT title, genre, budget, revenue,
      revenue - budget AS profit_margin,
	  DENSE_RANK() OVER (PARTITION BY genre ORDER BY (revenue-budget) DESC) AS profit_rank
    FROM movies
) profit
WHERE profit_rank = 1;