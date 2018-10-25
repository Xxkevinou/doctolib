class Patient < ApplicationRecord
	belongs_to :city
	has_many :appos
	has_many :patients, through: :appos
end
