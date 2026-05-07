
-- view all movies with price details 
SELECT 
    m.movie_title,
    m.movie_genre,
    p.price_description,
    p.price_rentfee
FROM movies m
JOIN prices p
    ON m.price_code = p.price_code;


-- check for overdue rentals and join respective tables 
SELECT 
    r.rent_num,
    mv.movie_title,
    rd.detail_duedate,
    rd.detail_returndate,
    DATEDIFF(rd.detail_returndate, rd.detail_duedate) AS days_late
FROM rentals r
JOIN rental_details rd
    ON r.rent_num = rd.rent_num
JOIN videos v
    ON rd.vid_num = v.vid_num
JOIN movies mv
    ON v.movie_num = mv.movie_num
WHERE rd.detail_returndate > rd.detail_duedate;

-- totla rental per memeber
SELECT 
    m.mem_num,
    CONCAT(m.mem_fname, ' ', m.mem_lname) AS member_name,
    COALESCE(SUM(rd.detail_fee), 0) AS total_spent
FROM memberships m
LEFT JOIN rentals r
    ON m.mem_num = r.mem_num
LEFT JOIN rental_details rd
    ON r.rent_num = rd.rent_num
GROUP BY m.mem_num, m.mem_fname, m.mem_lname
ORDER BY total_spent DESC;

-- genre analytics
SELECT 
    movie_genre,
    COUNT(*) AS total_movies,
    ROUND(AVG(movie_cost), 2) AS average_cost
FROM movies
GROUP BY movie_genre
ORDER BY average_cost DESC;


-- break even rental analysis
SELECT 
    m.movie_title,
    m.movie_cost,
    p.price_rentfee,
    ROUND(m.movie_cost / p.price_rentfee, 2) AS break_even_rentals
FROM movies m
JOIN prices p
    ON m.price_code = p.price_code;

