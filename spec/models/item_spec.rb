require 'rails_helper'

RSpec.describe Item, type: :model do
  describe "validations" do
    it { should validate_presence_of(:quantity) }

    it do
      should belong_to(:order)
      should belong_to(:product)
    end
  end

end