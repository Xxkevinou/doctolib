class Doctor < ApplicationRecord
	belongs_to :city
	has_and_belongs_to_many :speciality
	has_many :appos
	has_many :patients, through: :appos
end
