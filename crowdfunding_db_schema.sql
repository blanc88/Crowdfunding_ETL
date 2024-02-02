DROP TABLE if exists contacts;
DROP TABLE if exists category;
DROP TABLE if exists subcategory;
DROP TABLE if exists campaign;


CREATE TABLE contacts(
	contact_id INT NOT NULL,
	first_name VARCHAR(255) NOT NULL,
	last_name VARCHAR(255) NOT NULL,
	email VARCHAR(255) NOT NULL,
		primary key(contact_id)
);


CREATE TABLE category(
	category_id VARCHAR(255) NOT NULL,
	category VARCHAR(255)NOT NULL,
		primary key (category_id)
);



CREATE TABLE subcategory(
	subcategory_id VARCHAR(255) NOT NULL,
	subcategory VARCHAR(255) NOT NULL,
		primary key (subcategory_id)
);


CREATE TABLE campaign(
	cf_id INT NOT NULL,
	contact_id INT NOT NULL,
	company_name VARCHAR(255),
	description VARCHAR(255),
	goal FLOAT NOT NULL,
	pledged FLOAT NOT NULL,
	outcome VARCHAR(255),
	backers_count INT NOT NULL,
	country VARCHAR(255) NOT NULL,
	currency VARCHAR(255) NOT NULL,
	launched_date DATE NOT NULL,
	end_date DATE NOT NULL, 
	category_id VARCHAR(255) NOT NULL,
	subcategory_id VARCHAR(255) NOT NULL,
		primary key (cf_id),
		foreign key (contact_id) references contacts(contact_id),
		foreign key (category_id) references category(category_id),
		foreign key (subcategory_id) references subcategory(subcategory_id)
);



SELECT * from contacts


SELECT * from category


SELECT * from subcategory


SELECT * from campaign