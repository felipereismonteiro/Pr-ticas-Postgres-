CREATE TABLE "public.Students" (
	"id" serial NOT NULL,
	"name" TEXT NOT NULL,
	"cpf" integer NOT NULL,
	"email" integer NOT NULL,
	"class" integer NOT NULL,
	CONSTRAINT "Students_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.Students_Cpf" (
	"id" serial NOT NULL,
	"cpf" TEXT NOT NULL,
	CONSTRAINT "Students_Cpf_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.Students_email" (
	"id" serial NOT NULL,
	"email" TEXT NOT NULL,
	CONSTRAINT "Students_email_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.Classes" (
	"id" serial NOT NULL,
	"name" varchar(10) NOT NULL,
	CONSTRAINT "Classes_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.Students_history" (
	"id" serial NOT NULL,
	"student_id" integer NOT NULL,
	"current_class" TEXT NOT NULL,
	"next_class" TEXT NOT NULL,
	"period_in_class" daterange NOT NULL,
	CONSTRAINT "Students_history_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.Modules" (
	"id" serial NOT NULL,
	"name" TEXT NOT NULL,
	CONSTRAINT "Modules_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.Projects" (
	"id" serial NOT NULL,
	"student_id" integer NOT NULL,
	"name" TEXT NOT NULL,
	"date" DATE NOT NULL,
	"review" TEXT NOT NULL,
	"modules" integer NOT NULL,
	CONSTRAINT "Projects_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



ALTER TABLE "Students" ADD CONSTRAINT "Students_fk0" FOREIGN KEY ("cpf") REFERENCES "Students_Cpf"("id");
ALTER TABLE "Students" ADD CONSTRAINT "Students_fk1" FOREIGN KEY ("email") REFERENCES "Students_email"("id");
ALTER TABLE "Students" ADD CONSTRAINT "Students_fk2" FOREIGN KEY ("class") REFERENCES "Classes"("id");




ALTER TABLE "Students_history" ADD CONSTRAINT "Students_history_fk0" FOREIGN KEY ("student_id") REFERENCES "Students"("id");


ALTER TABLE "Projects" ADD CONSTRAINT "Projects_fk0" FOREIGN KEY ("student_id") REFERENCES "Students"("id");
ALTER TABLE "Projects" ADD CONSTRAINT "Projects_fk1" FOREIGN KEY ("modules") REFERENCES "Modules"("id");








