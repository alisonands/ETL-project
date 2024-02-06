DROP TABLE campaign;
DROP TABLE category;
DROP TABLE contacts;
DROP TABLE subcategory;

CREATE TABLE IF NOT EXISTS contacts(
--	id SERIAL PRIMARY KEY,
	contact_id INT PRIMARY KEY,
	first_name VARCHAR,
	last_name VARCHAR,
	email VARCHAR
);

CREATE TABLE IF NOT EXISTS category(
	"Category ID" VARCHAR PRIMARY KEY,
	caregory VARCHAR
);


CREATE TABLE IF NOT EXISTS subcategory(
	"Sub-category ID" VARCHAR PRIMARY KEY,
	"sub-category" VARCHAR
);

CREATE TABLE IF NOT EXISTS campaign(
	id SERIAL PRIMARY KEY,
	"cf_id" INT,
	"contact_id" INT,
	"company_name" VARCHAR,
	"description" VARCHAR,
	"goal" FLOAT,
	"pledged" FLOAT,
	"outcome" VARCHAR,
	"backers_count" INT,
	"country" VARCHAR,
	"currency" VARCHAR,
	"launched_date" DATE,
	"end_date" DATE,
	"category & sub-category" VARCHAR,
	"Category ID" VARCHAR,
	"Sub-category ID" VARCHAR,
	FOREIGN KEY ("contact_id") REFERENCES contacts(contact_id),
	FOREIGN KEY ("Category ID") REFERENCES category("Category ID"),
	FOREIGN KEY ("Sub-category ID") REFERENCES subcategory("Sub-category ID")
);

