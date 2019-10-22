require 'rails_helper'

RSpec.describe Product, type: :model do
  category = Category.new(name: 'test')
  category.save

  subject {
    described_class.new(name: 'name', description: 'test', image: 'test', price_cents: 100, quantity: 100, category: category)
  }

  describe 'Validations' do

    it 'validates when all values are correct' do    
      expect(subject).to be_valid
    end

    it 'validates name' do
      subject.name = nil
      expect(subject).not_to be_valid
    end

    it 'validates price' do
      subject.price_cents = nil
      expect(subject).not_to be_valid
    end

    it 'validates quantity' do
      subject.quantity = nil
      expect(subject).not_to be_valid
    end

    it 'validates category' do
      subject.category = nil
      expect(subject).not_to be_valid
    end

  end
end