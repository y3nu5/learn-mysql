CREATE database Student;
USE Student;


-- Melihat keseluruhan data
SELECT * FROM StudentsPerformance;

-- Melihat race atau ethinicity apa saja dalam tabel
SELECT DISTINCT race_or_ethnicity from StudentsPerformance
ORDER BY race_or_ethnicity ASC;

-- Melihat data orang yang memiliki nilai matematika 0
SELECT * FROM StudentsPerformance
WHERE math_score = 0;

-- or
SELECT gender, race_or_ethnicity, parental_level_of_education, 
lunch, test_preparation_course, math_score from StudentsPerformance
WHERE math_score = 0;

-- mencari nilai writing terendah di grup A
SELECT MIN(writing_score), race_or_ethnicity from StudentsPerformance
WHERE race_or_ethnicity ='group A';


-- nilai writing terkecil orang yang memiliki orangtua dengan tingkat pendidikan associate's degree
SELECT gender, race_or_ethnicity, parental_level_of_education, 
lunch, test_preparation_course, writing_score from StudentsPerformance
WHERE parental_level_of_education = 'associate''s degree'
ORDER BY writing_score ASC;

--  orang yang memiliki nilai math kurang dari 65 namun memiliki nilai writing lebih besar dari 80?
SELECT * FROM StudentsPerformance
WHERE math_score <65 AND writing_score > 80;

-- tingkat pendidikan orang tua dengan nilai reading lebih 
-- dari 10 dan kurang dari 25
SELECT DISTINCT parental_level_of_education, reading_score from StudentsPerformance
WHERE reading_score > 10 AND  reading_score < 25;

SELECT SUM(math_score) FROM StudentsPerformance;

-- Menghitung row atau records pada tabel
SELECT COUNT(*) AS Total_Records FROM StudentsPerformance;

SELECT * FROM StudentsPerformance;

-- perbandingan rata rata nilai reading laki-laki dan perempuan
SELECT gender, AVG(reading_score) AS rerata_nilai_reading FROM StudentsPerformance
GROUP BY gender
ORDER BY rerata_nilai_reading DESC
;

-- nilai math tertinggi dan terendah dari masing-masing tingkatan
-- pendidikan orangtua (parental level of education)
SELECT 
	parental_level_of_education,
	MAX(math_score) AS Nilai_Metik_Tertinggi, 
	MIN(math_score) AS Nilai_Metik_Terendah FROM studentsperformance
GROUP BY parental_level_of_education;
    
-- nilai rata-rata dari math, reading dan writing orang
-- bergender perempuan yang pernah / sudah menyelesaikan 
-- kursus persiapan ujian (test_preparation_course)
SELECT 
	gender, 
    test_preparation_course, 
    AVG(math_score) AS Rerata_Nilai_Metik, 
	AVG(reading_score) AS Rerata_Nilai_Reading,
    AVG(writing_score) AS Rerata_Nilai_Writing FROM StudentsPerformance
WHERE gender = 'female' AND  test_preparation_course = 'completed';

-- nilai rata-rata writing orang yang memiliki
-- orangtua yang tingkat pendidikannya adalah high school /
-- some high school? (digabung, tidak terpisah) 
SELECT parental_level_of_education, AVG(writing_score) AS Rerata_Nilai_Writing FROM StudentsPerformance
WHERE parental_level_of_education IN('high school', 'some high school')
GROUP BY parental_level_of_education;


SELECT 
	gender,
	race_or_ethnicity,
	test_preparation_course,
	AVG(math_score) AS avg_math_score,
	AVG(reading_score) AS avg_reading_score,
	AVG(writing_score) AS avg_writing_score
	FROM studentsperformance
GROUP BY	
	gender,
	race_or_ethnicity,
	test_preparation_course
HAVING avg_math_score > 70
ORDER BY 	
	gender,
	race_or_ethnicity,
	test_preparation_course;