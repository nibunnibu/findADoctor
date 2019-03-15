CREATE TABLE IF NOT EXISTS public.doctor(
 id bigserial PRIMARY KEY,
 name VARCHAR (50) NOT NULL,
 dob date,
 email VARCHAR (355),
 practice_started_on date,
 gender int,
 mobile varchar(50),
 created_on TIMESTAMP default now(),
 active boolean default true
);

CREATE TABLE IF NOT EXISTS public.hospital(
 id bigserial PRIMARY KEY,
 name VARCHAR (50) NOT NULL,
 email VARCHAR (355),
 mobile varchar(50),
 created_on TIMESTAMP default now(),
 active boolean default true
);

CREATE TABLE IF NOT EXISTS public.patient(
 id bigserial PRIMARY KEY,
 name VARCHAR (50) NOT NULL,
 email VARCHAR (355),
 mobile varchar(50),
 gender int,
 address1 text,
 address2 text,
 district text,
 state text,
 nationality text,
 created_on TIMESTAMP default now(),
 active boolean default true
);

CREATE TABLE IF NOT EXISTS public.location_patient (
	hospital_id int8 NOT NULL,
	patient_id int8 NOT NULL,
	uhid varchar(100) NULL,
	active bool NOT NULL DEFAULT true,
	created_at timestamptz NOT NULL DEFAULT now(),
	updated_at timestamptz NOT NULL DEFAULT now(),
	CONSTRAINT hospital_patient_pkey PRIMARY KEY (hospital_id, patient_id),
	CONSTRAINT hospital_patient_location_fkey FOREIGN KEY (hospital_id) REFERENCES hospital(id),
	CONSTRAINT hospital_patient_patient_fkey FOREIGN KEY (patient_id) REFERENCES patient(id)
);

CREATE TABLE IF NOT EXISTS public.department (
	id bigserial NOT NULL PRIMARY KEY,
	"name" varchar(255) NULL,
	active bool NOT NULL DEFAULT true,
	created_at timestamptz NOT NULL DEFAULT now(),
	updated_at timestamptz NOT NULL DEFAULT now()
);