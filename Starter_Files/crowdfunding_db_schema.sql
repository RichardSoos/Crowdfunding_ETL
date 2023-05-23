CREATE TABLE Contacts (
   contact_id NUMERIC PRIMARY KEY,
   first_name VARCHAR NOT NULL,
   last_name VARCHAR NOT NULL,
   email VARCHAR NOT NULL
);

CREATE TABLE Category (
   cat_id VARCHAR PRIMARY KEY,
   category VARCHAR NOT NULL
);

CREATE TABLE Subcategory (
   subcategory_id VARCHAR PRIMARY KEY,
   subcategory VARCHAR NOT NULL
); 

CREATE TABLE Campaign (
   cf_id NUMERIC PRIMARY KEY,
   contact_id NUMERIC,
   company_name VARCHAR NOT NULL,
   description VARCHAR,
   goal FLOAT NOT NULL,
   pledged FLOAT NOT NULL ,
   outcome VARCHAR NOT NULL CHECK (outcome IN ('failed', 'successful','canceled','live')),
   backers_count NUMERIC NOT NULL,
   country VARCHAR,
   currency VARCHAR,
   launched_date DATE NOT NULL,
   end_date DATE NOT NULL,
   category_id VARCHAR,
   subcategory_id VARCHAR,
   FOREIGN KEY (contact_id) REFERENCES Contacts(contact_id),
   FOREIGN KEY (category_id) REFERENCES Category (cat_id),
   FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);

select * from Contacts;
select * from Category;
select * from Subcategory;
select * from Campaign;


