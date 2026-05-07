MovieHub – Movie Rental Database Management System

MovieHub is a MySQL-based movie rental database management system designed to model the operations of a movie rental business.

The system manages members, movies, videos, rental transactions, pricing categories, rental details, late returns, and business reporting.


Technologies Used
- MySQL
- MySQL Workbench
- SQL
- Relational Database Design
- Git & GitHub


Database Features
- Relational database schema
- Primary key and foreign key constraints
- Composite primary key for rental details
- Seeded data for members, movies, pricing, videos, and rentals
- Business reporting queries
- Views for reusable reports
- Date calculations for overdue rentals
- Aggregation queries for analytics


Database Tables
- `memberships
- `prices
- `movies
- `videos
- `rentals
- `rental_details



Entity Relationship Diagram
- [MovieHub ERD](diagrams/moviehub_erd.png)


The project includes queries for:
- Viewing movies with pricing details
- Finding overdue rentals
- Calculating days late
- Calculating total spending per member
- Analyzing movies by genre
- Calculating movie break-even rentals
- Viewing movie inventory


Views Created
- view_overdue_rentals
- view_movie_inventory
- view_member_balances



Project Background

MovieHub is a redesigned and expanded version of an earlier academic database assignment originally developed during university coursework.

The original project focused on relational database fundamentals and SQL query development using Oracle SQL. 

This version rebuilds and modernizes the system using improved relational modeling, structured SQL scripting, reusable views, enhanced reporting queries, cleaner project organization, and GitHub-based project management.



Structure


MovieHub/
│
├── database/
│   ├── 01_create_database.sql
│   ├── 02_schema.sql
│   ├── 03_seed_data.sql
│   ├── 04_business_queries.sql
│   └── 05_views.sql
│
├── diagrams/
│   └── moviehub_erd.png
│
└── README.md