require 'rails_helper'

RSpec.describe Order, type: :model do
  describe "validations" do

    it do
      should have_many(:items)
    end

    it do
      should belong_to(:user)
      should belong_to(:address)
    end
  end

end