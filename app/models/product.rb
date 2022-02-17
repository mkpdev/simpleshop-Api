class Product < ApplicationRecord
	belongs_to :region
	has_many   :items, dependent: :destroy

	validates :title, :description, :price, :sku, :stock, presence: true

end
