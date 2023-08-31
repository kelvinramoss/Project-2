-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "campaign" (
    "cf_id" INT PRIMARY KEY  NOT NULL,
    "contact_id" INT   NOT NULL,
    "company_name" VARCHAR(255)   NOT NULL,
    "description" VARCHAR   NOT NULL,
    "goal" FLOAT   NOT NULL,
    "pledged" FLOAT   NOT NULL,
    "outcome" VARCHAR(20)   NOT NULL,
    "backers_count" INT   NOT NULL,
    "country" VARCHAR(10)   NOT NULL,
    "currency" VARCHAR(10)   NOT NULL,
    "launched_date" DATE   NOT NULL,
    "end_date" DATE   NOT NULL,
    "category_id" VARCHAR(20)   NOT NULL,
    "subcategory_id" VARCHAR(20)   NOT NULL,
    FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
	FOREIGN KEY (category_id) REFERENCES category(category_id),
	FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);

CREATE TABLE "contacts" (
    "contact_id" INT PRIMARY KEY  NOT NULL,
    "first_name" VARCHAR(255)   NOT NULL,
    "last_name" VARCHAR(255)   NOT NULL,
    "email" VARCHAR(255)   NOT NULL
);

CREATE TABLE "category" (
    "category_id" VARCHAR(20) PRIMARY KEY  NOT NULL,
    "category" VARCHAR(255)   NOT NULL
);

CREATE TABLE "subcategory" (
    "subcategory_id" VARCHAR(20) PRIMARY KEY  NOT NULL,
    "subcategory" VARCHAR(255)   NOT NULL
);

-- Display all tables using SELECT statement
SELECT * FROM category
SELECT * FROM subcategory
SELECT * FROM contacts
SELECT * FROM campaign




