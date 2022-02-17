class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.string :city
      t.string :address
      t.string :pincode
      t.string :state
      t.string :country
      t.references :user

      t.timestamps
    end
  end
end
