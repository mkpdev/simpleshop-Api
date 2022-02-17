require 'rails_helper'

RSpec.describe Product, type: :model do
  describe "validations" do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:description) }
    it { should validate_presence_of(:price) }
    it { should validate_presence_of(:sku) }
    it { should validate_presence_of(:stock) }

    it do
      should have_many(:items)
    end

    it do
      should belong_to(:region)
    end
  end

end