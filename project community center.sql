CREATE TABLE IF NOT EXISTS activity (
    activity_id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    type TEXT NOT NULL,
    rating REAL NOT NULL,
    duration INTEGER NOT NULL,
    participants INTEGER NOT NULL
);

INSERT INTO activity VALUES (1, 'Yoga Club', 'fitness', 9.2, 60, 18);
INSERT INTO activity VALUES (2, 'Art Workshop', 'creative', 8.5, 90, 12);
INSERT INTO activity VALUES (3, 'Football Training', 'sports', 7.8, 75, 24);
INSERT INTO activity VALUES (4, 'Dance Class', 'fitness', 9.5, 60, 20);
INSERT INTO activity VALUES (5, 'Painting Club', 'creative', 7.2, 120, 10);
INSERT INTO activity VALUES (6, 'Basketball Club', 'sports', 8.9, 90, 22);
INSERT INTO activity VALUES (7, 'Cooking Class', 'creative', 8.9, 120, 14);
INSERT INTO activity VALUES (8, 'Running Group', 'fitness', 9.0, 60, 16);

SELECT * FROM activity;

SELECT name, rating FROM activity ORDER BY rating ASC;

SELECT name, rating FROM activity ORDER BY rating DESC;

SELECT name, type, rating FROM activity ORDER BY type ASC, rating DESC;

SELECT name, rating FROM activity ORDER BY rating DESC LIMIT 3;

SELECT name, duration FROM activity ORDER BY rating ASC LIMIT 5;

SELECT type, COUNT(*) AS activity_count FROM activity GROUP BY type;

SELECT type, SUM(participants) AS total_participants, AVG(rating) AS average_rating 
FROM activity 
GROUP BY type;

SELECT type, COUNT(*) AS activity_count 
FROM activity 
GROUP BY type 
HAVING COUNT(*) > 2;

SELECT type, AVG(rating) AS avg_rating 
FROM activity 
GROUP BY type 
HAVING AVG(rating) >= 8.5;

DROP TABLE activity;