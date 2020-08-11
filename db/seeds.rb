# This is where you can create initial data for your app.
Intern.destroy_all
Doctor.destroy_all
# Patient.destroy_all
# Consultation.destroy_all

puts 'Creating Doctors'

Doctor.create(
    first_name: 'Albus',
    last_name: 'Dumbledore'
)

Doctor.create(
    first_name: 'Severus',
    last_name: 'Snape'
)

Doctor.create(
    first_name: 'Gandalf',
    last_name: 'The White'
)

puts 'Created 3 Doctors'
puts 'Creating Interns'

Intern.create(
    first_name: 'Harry',
    last_name: 'Potter',
    doctor: Doctor.first
)

Intern.create(
    first_name: 'Hermione',
    last_name: 'Granger',
    doctor: Doctor.first
)
puts 'Created 2 Interns'
puts 'Creating Patients'

Patient.create(
    first_name: 'Frodo',
    last_name: 'Baggins'
)

Patient.create(
    first_name: 'Samwise',
    last_name: 'Gamgee'
)



