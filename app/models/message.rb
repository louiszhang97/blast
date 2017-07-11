class Message < ApplicationRecord
	validates :sender_id, presence: true 
	validates :content, presence: true 
	validates :content, length: { in: 1..100 }
end
