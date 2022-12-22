CREATE TABLE "public.Companies" (
	"id" serial NOT NULL,
	"name" TEXT NOT NULL,
	"acronym" varchar(15) NOT NULL,
	"fligths" integer NOT NULL,
	CONSTRAINT "Companies_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.Flights" (
	"id" serial NOT NULL,
	"name" TEXT NOT NULL,
	"acronym" varchar(15) NOT NULL,
	"airport" varchar(15) NOT NULL,
	"departure_time" DATETIME NOT NULL,
	"entry_time" DATETIME NOT NULL,
	CONSTRAINT "Flights_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.Airports" (
	"id" serial NOT NULL,
	"name" TEXT NOT NULL,
	"acronym" varchar(15) NOT NULL,
	CONSTRAINT "Airports_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



ALTER TABLE "Companies" ADD CONSTRAINT "Companies_fk0" FOREIGN KEY ("fligths") REFERENCES "Flights"("id");

ALTER TABLE "Flights" ADD CONSTRAINT "Flights_fk0" FOREIGN KEY ("airport") REFERENCES "Airports"("id");





