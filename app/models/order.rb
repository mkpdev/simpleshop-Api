class Order < ApplicationRecord
  belongs_to :user
  belongs_to :address
  has_many   :items, dependent: :destroy

end
