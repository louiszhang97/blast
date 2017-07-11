class Message < ApplicationRecord
	validates :content, length: { maximum: 150 }
end
