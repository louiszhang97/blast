class Message < ApplicationRecord
	belongs_to :member
	validates :content, length: { maximum: 150 }
end
