require 'rails_helper'

RSpec.describe Product, type: :model do

  describe 'Validations' do
    before(:each) do
      @category = Category.create(:name => "something")
    end

      it "is valid with valid attributes" do
        @product = Product.create(name: "some_name", price: 248, quantity: 49, category: @category)
        expect(@product).to be_valid
      end

      it "is not valid without a name" do
        @product = Product.create(name: nil, price: 394, quantity: 290, category: @category)
        expect(@product).to_not be_valid
      end

      it "is not valid without a price" do
        @product = Product.create(name: "name", price: nil, quantity: 943, category: @category)
        expect(@product).to_not be_valid
      end

      it "is not valid without a quantity" do
        @product = Product.create(name: "what_name", price: 3493, quantity: nil, category: @category)
        expect(@product).to_not be_valid
      end

      it "is not valid without a category" do
        @product = Product.create(name: "some", price: 100, quantity: 2, category: nil)
        expect(@product).to_not be_valid
      end
  end
end



