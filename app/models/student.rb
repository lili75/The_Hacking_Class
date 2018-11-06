class Student < ApplicationRecord
	belongs_to :cour, required: false
end