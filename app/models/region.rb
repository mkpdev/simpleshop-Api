class Region < ApplicationRecord
	validates :title, :currency, presence: true
end
