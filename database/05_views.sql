
-- create view for overdue rentals 
CREATE VIEW view_overdue_rentals AS
SELECT 
    r.rent_num,
    CONCAT(m.mem_fname, ' ', m.mem_lname) AS member_name,
    mv.movie_title,
    rd.detail_duedate,
    rd.detail_returndate,
    DATEDIFF(rd.detail_returndate, rd.detail_duedate) AS days_late
FROM rentals r
JOIN memberships m
    ON r.mem_num = m.mem_num
JOIN rental_details rd
    ON r.rent_num = rd.rent_num
JOIN videos v
    ON rd.vid_num = v.vid_num
JOIN movies mv
    ON v.movie_num = mv.movie_num
WHERE rd.detail_returndate > rd.detail_duedate;

-- test the overdue rentals view
SELECT * FROM view_overdue_rentals;


-- movie inventory view
CREATE VIEW view_movie_inventory AS
SELECT 
    mv.movie_title,
    mv.movie_genre,
    COUNT(v.vid_num) AS total_copies
FROM movies mv
LEFT JOIN videos v
    ON mv.movie_num = v.movie_num
GROUP BY mv.movie_title, mv.movie_genre;


SELECT * FROM view_movie_inventory;


-- memeber balance view
CREATE VIEW view_member_balances AS
SELECT 
    mem_num,
    CONCAT(mem_fname, ' ', mem_lname) AS member_name,
    mem_balance
FROM memberships;

SELECT * FROM view_member_balances;


