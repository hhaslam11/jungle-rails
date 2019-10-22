require 'rails_helper'

RSpec.describe Product, type: :model do
  @category = Category.new(name: 'test')

  describe 'Validations' do

    xit 'validates when all values are correct' do
      @product  = Product.new(name: 'name', description: 'test', image: 'test', price_cents: 100, quantity: 100, category: @category)
      
      expect(@product).to be_valid
    end

    it 'validates name' do
      @product  = Product.new(description: 'test', image: 'test', price_cents: 100, quantity: 100, category: @category)
      
      expect(@product.name).to be_nil
      expect(@product).not_to be_valid
    end

    it 'validates price' do
      @product  = Product.new(name: 'test', description: 'test', image: 'test', quantity: 100, category: @category)
      
      expect(@product.price_cents).to be_nil
      expect(@product).not_to be_valid
    end

    it 'validates quantity' do
      @product  = Product.new(name: 'test', description: 'test', image: 'test', price_cents: 100, category: @category)
      
      expect(@product.quantity).to be_nil
      expect(@product).not_to be_valid
    end

    it 'validates category' do
      @product  = Product.new(name: 'test', description: 'test', image: 'test', price_cents: 100, quantity: 100)
      
      expect(@product.category).to be_nil
      expect(@product).not_to be_valid
    end
  end
end