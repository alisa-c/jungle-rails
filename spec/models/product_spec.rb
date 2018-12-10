require 'rails_helper'

RSpec.describe Product, type: :model do

  describe 'Validations' do
    before(:each) do
      @category = Category.new(:name => "something")
    end

      it "is valid with valid attributes" do
        @product = Product.new(name: "some_name", price: 5, quantity: 1, category: @category)
        expect(@product).to be_valid
      end

      it "is not valid without a name" do
        @product = Product.new(name: nil, price: 5, quantity: 1, category: @category)
        expect(@product).to_not be_valid
      end

      it "is not valid without a price" do
        @product = Product.new(name: "some_name", price: nil, quantity: 1, category: @category)
        expect(@product).to_not be_valid
      end

      it "is not valid without a quantity" do
        @product = Product.new(name: "some_name", price_cents: 5, quantity: nil, category: @category)
        expect(@product).to_not be_valid
      end

      it "is not valid without a category" do
        @product = Product.new(name: "some_name", price_cents: 5, quantity: 1, category: nil)
        expect(@product).to_not be_valid
      end
  end
end



