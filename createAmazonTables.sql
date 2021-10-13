-- CREATE customer table
CREATE TABLE customer (
	customer_id SERIAL PRIMARY KEY, 
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	address VARCHAR(150),
	billing_info VARCHAR(150)
);
-- CREATE brand table
CREATE TABLE brand (
	seller_id SERIAL PRIMARY KEY,
	brand_name VARCHAR(150),
	contact_num VARCHAR(15),
	address VARCHAR(150)
);
-- CREATE Inventory table
CREATE TABLE inventory(
	upc SERIAL PRIMARY KEY,
	product_count INTEGER
);
-- CREATE Cart table
CREATE TABLE cart(
	cart_id SERIAL PRIMARY KEY,
	customer_id INTEGER NOT NULL,
	FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);
-- CREATE Order table
CREATE TABLE order_(
	order_id SERIAL PRIMARY KEY,
	order_date DATE DEFAULT CURRENT_DATE,
	sub_total NUMERIC(8,2),
	total_cost NUMERIC(10,2),
	upc INTEGER NOT NULL,
	cart_id INTEGER NOT NULL,
	FOREIGN KEY (upc) REFERENCES inventory(upc),
	FOREIGN KEY (cart_id) REFERENCES cart(cart_id)
);
-- CREATE Product table
CREATE TABLE product(
	product_id SERIAL PRIMARY KEY,
	product_name VARCHAR(100),
	amount NUMERIC(6,2),
	seller_id INTEGER,
	upc INTEGER,
	FOREIGN KEY (seller_id) REFERENCES brand(seller_id),
	FOREIGN KEY (upc) REFERENCES inventory(upc)
);
