class Key < ApplicationRecord
	validate :count_within_limit
	def count_within_limit
		if Key.count > 1
			raise "Cannot have more than 1 key"
		end
	end 
end
