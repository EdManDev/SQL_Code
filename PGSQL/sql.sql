CREATE TABLE "your_table"(
  "user_id" INTEGER NOT NULL PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  "name" VARCHAR(255),
  "isadmin" BOOLEAN,
  "sales" FLOAT,
  "dates" DATE,
);