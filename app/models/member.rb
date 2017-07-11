class Member < ApplicationRecord
	validates :name, presence: true
	validates :phone, presence: true 
	validates :name, length: {in: 1..20}
	validates :phone, length: {is: 10}
end
