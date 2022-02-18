class Payment

    def self.status(order_id)
      order = Order.find(order_id)
      order.status = ["paid", "unpaid"].sample
      order.paid_at = Date.today if order.status == "paid"
      order.save
    end
end