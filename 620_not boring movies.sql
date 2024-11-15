--  https://leetcode.com/problems/not-boring-movies/description/

USE PRACTICE;
TRUNCATE TABLE cinema;
CREATE TABLE cinema (id int, movie varchar(255), description varchar(255), rating float(2, 1));
INSERT INTO
	cinema (id, movie, description, rating)
VALUES
	('1', 'War', 'great 3D', '8.9')
	,('2', 'Science', 'fiction', '8.5')
	,('3', 'irish', 'boring', '6.2')
	,('4', 'Ice song', 'Facinemacinemacinemantacy', '8.6')
	,('5', 'House card', 'Interesting', '9.1');
SELECT * FROM cinema;

-- 답안 작성 
SELECT * FROM cinema
where (id % 2 = 1) and (description != 'boring')
ORDER BY rating DESC;

-- MOD & %: 나머지 구하기
-- MOD(a, b) = (a % b)  

