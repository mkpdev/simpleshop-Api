class Region < ApplicationRecord
	validates :title, :currency, presence: true
	has_many :products, dependent: :destroy
end
