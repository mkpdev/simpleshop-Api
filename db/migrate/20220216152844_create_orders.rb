class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.references :user, null: false, foreign_key: true
      t.references :address, null: false, foreign_key: true
      t.integer :order_total
      t.string :status
      t.datetime :paid_at

      t.timestamps
    end
  end
end
