-- table creation
CREATE TABLE memberships (
    mem_num CHAR(4) PRIMARY KEY,
    mem_fname VARCHAR(20) NOT NULL,
    mem_lname VARCHAR(20) NOT NULL,
    mem_street VARCHAR(50),
    mem_city VARCHAR(30),
    mem_state VARCHAR(5),
    mem_zip VARCHAR(10),
    mem_balance DECIMAL(9,2) DEFAULT 0.00
);

CREATE TABLE prices (
    price_code INT PRIMARY KEY AUTO_INCREMENT,
    price_description VARCHAR(30),
    price_rentfee DECIMAL(5,2),
    price_dailylatefee DECIMAL(5,2)
);


CREATE TABLE movies (
    movie_num INT PRIMARY KEY,
    movie_title VARCHAR(50) NOT NULL,
    movie_year INT,
    movie_cost DECIMAL(7,2),
    movie_genre VARCHAR(20),
    price_code INT,

    CONSTRAINT movies_price_code_fk FOREIGN KEY (price_code) REFERENCES prices(price_code)
);

CREATE TABLE videos (
    vid_num INT PRIMARY KEY,
    vid_indate DATE,
    movie_num INT,

    CONSTRAINT videos_movie_num_fk FOREIGN KEY (movie_num) REFERENCES movies(movie_num)
);


CREATE TABLE rentals (
    rent_num INT PRIMARY KEY AUTO_INCREMENT,
    rent_date DATE NOT NULL,
    mem_num CHAR(4),

    CONSTRAINT rentals_mem_num_fk FOREIGN KEY (mem_num) REFERENCES memberships(mem_num)
);


CREATE TABLE rental_details (
    rent_num INT,
    vid_num INT,
    detail_fee DECIMAL(5,2),
    detail_duedate DATE,
    detail_returndate DATE,
    detail_dailylatefee DECIMAL(5,2),

    PRIMARY KEY (rent_num, vid_num),

    CONSTRAINT rentaldetails_rent_num_fk FOREIGN KEY (rent_num) REFERENCES rentals(rent_num),
    CONSTRAINT rentaldetails_vid_num_fk FOREIGN KEY (vid_num) REFERENCES videos(vid_num)
);


-- view all tables 
SHOW TABLES;

-- describe each table 
DESCRIBE memberships;
DESCRIBE prices;
DESCRIBE movies;
DESCRIBE videos;
DESCRIBE rentals;
DESCRIBE rental_details;