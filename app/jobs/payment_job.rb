class PaymentJob
  include Sidekiq::Job

  def perform(id)
    order_id = id
    Payment.status(order_id)
  end
end