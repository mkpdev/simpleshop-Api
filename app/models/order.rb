class Order < ApplicationRecord
  belongs_to :user
  belongs_to :address
  has_many   :items, dependent: :destroy

  after_create :update_order_status


  def update_order_status
    PaymentJob.perform_in(1.minutes, self.id)
  end

end
