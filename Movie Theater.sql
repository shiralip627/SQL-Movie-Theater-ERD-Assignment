CREATE TABLE "Movie" (
  "movie_id" SERIAL,
  "title" VARCHAR(50),
  "rating" VARCHAR(5),
  PRIMARY KEY ("movie_id")
);

CREATE TABLE "Customer" (
  "customer_id" SERIAL,
  "first_name" VARCHAR(100),
  "last_name" VARCHAR(100),
  "age" NUMERIC(3),
  PRIMARY KEY ("customer_id")
);

CREATE TABLE "Concessions" (
  "concession_id" SERIAL,
  "price" NUMERIC(2,2),
  PRIMARY KEY ("concession_id"),
  CONSTRAINT "FK_Concessions.concession_id"
    FOREIGN KEY ("concession_id")
      REFERENCES "Customer"("last_name")
);

CREATE TABLE "Ticket" (
  "ticket_id" SERIAL,
  "price" NUMERIC(2,2),
  PRIMARY KEY ("ticket_id")
);