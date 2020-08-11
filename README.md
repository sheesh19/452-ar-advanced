## ActiveRecord Boilerplate

This is a starting point for the Activerecord Basics lecture using sqlite. During the lecture, you need to:

- Clone The project
- Run `bundle install`
- Explain `rake -T`
- Explain `config/database.yml`
- Run `rake db:create` / `rake db:drop`
- Create and run 2 migrations

## RELATIONSHIPS

- One to Many Relationship
- Many to Many Relationship (needs join table which has two foreign keys)
- One to One Relationship

- HAS MANY && BELONGS TO are keywords when you discuss databases 


## SQL QUERIES

- CREATE: INSERT INTO
- READ: SELECT
- UPDATE: UPDATE
- DELETE: DELETE FROM

- RETURN 10 PATIENTS FROM DOCTORS DATABASE
- SELECT * FROM patients LIMIT 10;

- RETURN EVERYTHING FROM DOCTORS & INTERNS TABLES
- SELECT * 
- FROM doctors
- JOIN interns ON doctors.id = interns.doctor_id

- SQL: the language to query our database

## ACTIVERECORD

- ActiveRecord: ruby library for the 'ruby magic', which lets us interact with our DB without SQL and creates instances for us. Links our Model & our database together.

- MIGRATION TO CREATE DOCTOR TABLE
- class CreateDoctors < ActiveRecord::Migration[5.1]
-   def change
        create_table :doctors do |t|
            t.string :first_name
            t.string :last_name
            t.timestamps
        end
-   end
- end

- class AddSpecialtyToDoctors < ActiveRecord::Migration[5.1]
-   def change
        add_column :doctors, :specialty, :string
-   end
- end

## ACTIVERECORD QUERIES

- CREATE: Doctor.create(first_name: 'Gregory', last_name: 'House') <- Doctor.new + Doctor.save
- READ ALL: Doctor.all
- READ ONE: Doctor.find(1) <- put in ID
- READ ONE: Doctor.find_by(first_name: 'Gregory') <- returns first doctor with first_name Gregory
- READ ALL + QUERY: Doctor.where(first_name: 'Gregory') <- returns every doctor with first_name Gregory
- UPDATE: doctor = Doctor.find(1), doctor.first_name = 'New Name', doctor.save
- DELETE: doctor = Doctor.find(1), doctor.destroy

- RETURN last_name: doctor = Doctor.find(1), doctor.last_name
- RETURN LAST DOCTOR: Doctor.last
- RETURN FIRST DOCTOR: Doctor.first
- RETURN COUNT of DOCTORS: Doctor.count
- RETURN FIRST 5 DOCTORS: Doctor.first(5)