class Appo < ApplicationRecord
	belongs_to :city
	belongs_to :patient, optional: true
	belongs_to :doctor, optional: true
end
