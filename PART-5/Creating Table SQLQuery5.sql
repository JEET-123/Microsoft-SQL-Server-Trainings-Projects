CREATE TABLE movies (
       movie_name VARCHAR(200),
	   movie_year INTEGER,
	   country VARCHAR(100),
	   genre VARCHAR(1000) NOT NULL
	   PRIMARY KEY( movie_name , movie_year )
    
)