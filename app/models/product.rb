class Product < ApplicationRecord
	belongs_to :region
	validates :title, :description, :price, :sku, :stock, presence: true

end
