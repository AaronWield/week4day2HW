-- Create tables
CREATE TABLE customers(
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50),
	last_name VARCHAR(50)
);
CREATE TABLE movies(
	movie_id SERIAL PRIMARY KEY,
	title VARCHAR(100),
	rating VARCHAR(50),
	description VARCHAR(500),
	runtime NUMERIC(10)
);
CREATE TABLE concessions(
	product_id SERIAL PRIMARY KEY,
	product_name VARCHAR(50),
	price NUMERIC(5,2),
	amount INTEGER,
	customer_id INTEGER NOT NULL,
	FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);
CREATE TABLE tickets(
	ticket_id SERIAL PRIMARY KEY,
	order_date DATE DEFAULT CURRENT_TIMESTAMP,
	cost_per NUMERIC(5,2),
	amount INTEGER,
	customer_id INTEGER NOT NULL,
	movie_id INTEGER NOT NULL,
	FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
	FOREIGN KEY (movie_id) REFERENCES movies(movie_id)
);

-- Add data to customer table
INSERT INTO customers(
	customer_id,
	first_name,
	last_name
)VALUES(
	1,
	'Aaron',
	'Wieldraayer'
);
INSERT INTO customers(
	customer_id,
	first_name,
	last_name
)VALUES(
	2,
	'Sammy',
	'Sosa'
);
INSERT INTO customers(
	customer_id,
	first_name,
	last_name
)VALUES(
	3,
	'Mark',
	'McGwire'
);

-- movies
INSERT INTO movies(
	movie_id,
	title,
	rating,
	description,
	runtime
)VALUES(
	1,
	'The Godfather',
	'R',
	'An organized crime dynastys aging patriarch transfers control of his clandestine empire to his reluctant son.',
	177
);
INSERT INTO movies(
	movie_id,
	title,
	rating,
	description,
	runtime
)VALUES(
	2,
	'The Godfather, Part II',
	'R',
	'The early life and career of Vito Corleone in 1920s New York City is portrayed, while his son, Michael, expands and tightens his grip on the family crime syndicate.',
	200
);
INSERT INTO movies(
	movie_id,
	title,
	rating,
	description,
	runtime
)VALUES(
	3,
	'Goodfellas',
	'R',
	'The story of Henry Hill and his life in the mob, covering his relationship with his wife Karen Hill and his mob partners Jimmy Conway and Tommy DeVito in the Italian-American crime syndicate.',
	146
);

-- concessions
INSERT INTO concessions(
	product_id,
	product_name,
	price,
	amount,
	customer_id
)VALUES(
	1,
	'Popcorn',
	7.99,
	1,
	1
);
INSERT INTO concessions(
	product_id,
	product_name,
	price,
	amount,
	customer_id
)VALUES(
	2,
	'Soft Drink',
	3.99,
	1,
	1
);
INSERT INTO concessions(
	product_id,
	product_name,
	price,
	amount,
	customer_id
)VALUES(
	3,
	'Nachos',
	5.99,
	1,
	2
);
INSERT INTO concessions(
	product_id,
	product_name,
	price,
	amount,
	customer_id
)VALUES(
	4,
	'M&Ms',
	2.99,
	2,
	3
);
INSERT INTO concessions(
	product_id,
	product_name,
	price,
	amount,
	customer_id
)VALUES(
	5,
	'Gummi Bears',
	1.99,
	3,
	2
);

-- tickets
INSERT INTO tickets(
	ticket_id,
	cost_per,
	amount,
	customer_id,
	movie_id
)VALUES(
	1,
	10.00,
	1,
	1,
	1
);
INSERT INTO tickets(
	ticket_id,
	cost_per,
	amount,
	customer_id,
	movie_id
)VALUES(
	2,
	15.00,
	1,
	2,
	2
);
INSERT INTO tickets(
	ticket_id,
	cost_per,
	amount,
	customer_id,
	movie_id
)VALUES(
	3,
	15.00,
	1,
	3,
	2
);