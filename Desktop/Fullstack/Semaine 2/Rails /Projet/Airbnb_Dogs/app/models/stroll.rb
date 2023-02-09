class Stroll < ApplicationRecord
	has_many :dogs
	belongs_to :dogsitter
	belongs_to :city
end
