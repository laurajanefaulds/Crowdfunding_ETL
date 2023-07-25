-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

CREATE TABLE "Contacts" (
    "contact_id" varchar(10)   ,
    "first_name" varchar(30)   ,
    "last_name" varchar(30)  ,
    "email" varchar(50)   ,
    CONSTRAINT "pk_Contacts" PRIMARY KEY (
        "contact_id"
     )
);

CREATE TABLE "Category" (
    "category_id" varchar(10)   ,
    "category" varchar(30)   ,
    CONSTRAINT "pk_Category" PRIMARY KEY (
        "category_id"
     )
);

CREATE TABLE "Sub_Category" (
    "subcategory_id" varchar(10)   ,
    "sub-category" varchar   ,
    CONSTRAINT "pk_Sub_Category" PRIMARY KEY (
        "subcategory_id"
     )
);


CREATE TABLE "Campaign" (
    "cf_id" varchar(30)   ,
    "contact_id" varchar(10)   ,
    "company_name" varchar   ,
    "description" varchar   ,
    "goal" varchar(20)   ,
    "pledged" varchar(30)   ,
    "outcome" varchar(30)   ,
    "backers_count" varchar(30)   ,
    "country" varchar(10)   ,
    "currency" varchar(10)   ,
    "launch_date" date   ,
    "end_date" date   ,
    "category_id" varchar(10)   ,
    "subcategory_id" varchar(10)   ,
    CONSTRAINT "pk_Campaign" PRIMARY KEY (
        "cf_id"
     )
);

ALTER TABLE "Campaign" ADD CONSTRAINT "fk_Campaign_contact_id" FOREIGN KEY("contact_id")
REFERENCES "Contacts" ("contact_id");

ALTER TABLE "Campaign" ADD CONSTRAINT "fk_Campaign_category_id" FOREIGN KEY("category_id")
REFERENCES "Category" ("category_id");

ALTER TABLE "Campaign" ADD CONSTRAINT "fk_Campaign_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "Sub_Category" ("subcategory_id");

