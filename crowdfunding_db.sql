-- Create all tables
CREATE TABLE category(
	category_id VARCHAR(50) NOT NULL PRIMARY KEY,
	category VARCHAR(50) NOT NULL
);

CREATE TABLE subcategory(
	subcategory_id VARCHAR(50) NOT NULL PRIMARY KEY,
	subcategory VARCHAR(50) NOT NULL
);

CREATE TABLE contacts(
	contact_id INT NOT NULL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	email VARCHAR(100) NOT NULL
);

CREATE TABLE campaign(
	cf_id INT NOT NULL,
	contact_id INT NOT NULL PRIMARY KEY REFERENCES contacts(contact_id),
	company_name VARCHAR(100) NOT NULL,
	description VARCHAR(100) NOT NULL,
	goal NUMERIC(10,2) NOT NULL,
	pledged NUMERIC(10,2) NOT NULL,
	outcome VARCHAR(50) NOT NULL,
	backers_count VARCHAR(50) NOT NULL,
	country VARCHAR(50) NOT NULL,
	currency VARCHAR(50) NOT NULL,
	launch_date DATE NOT NULL,
	end_date DATE NOT NULL,
	category_id VARCHAR(50) NOT NULL REFERENCES category(category_id),
	subcategory_id VARCHAR(50) NOT NULL REFERENCES subcategory(subcategory_id)
);

SELECT * FROM campaign;
SELECT * FROM contacts;
SELECT * FROM category;
SELECT * FROM subcategory;