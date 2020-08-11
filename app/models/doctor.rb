class Doctor < ActiveRecord::Base
    has_many :interns
    has_many :consultations
    has_many :patients, through: :consultations

    validates :last_name, presence: true
    # validates :last_name, uniqueness: true
    validates :first_name, uniqueness: { scope: :last_name }
    validates :last_name, length: { minimum: 3 }

    # same code as has_many :patients, through: :consultations
    # patients = []
    # Doctor.first.consultations.each do |consultation|
    #     patients << consultation.patient
    # end
    # patients
end