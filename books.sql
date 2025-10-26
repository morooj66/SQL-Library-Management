SELECT * FROM books;

SELECT Title, Author, Category 
FROM books
WHERE Category = 'Self-Development';

SELECT Title, Author, Rating
FROM books
WHERE Rating > 4.7;

SELECT Title, Author, Publication_Year
FROM books
WHERE Publication_Year > 2015
ORDER BY Publication_Year DESC;

SELECT Category, COUNT(*) AS total_books
FROM books
GROUP BY Category
ORDER BY total_books DESC;

SELECT Category, ROUND(AVG(Rating), 2) AS avg_rating
FROM books
GROUP BY Category
ORDER BY avg_rating DESC;

SELECT Author, COUNT(*) AS number_of_books
FROM books
GROUP BY Author
HAVING COUNT(*) > 1;

SELECT Title, Available_Copies
FROM books
WHERE Available_Copies < 5;

SELECT Title, Author
FROM books
WHERE Title LIKE '%Design%';

SELECT Title, Author, Rating
FROM books
ORDER BY Rating DESC
LIMIT 3;
