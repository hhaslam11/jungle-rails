require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do

    it 'validates with all fields correct' do
      @user = User.new(first_name: 'Firstname', last_name: 'Lastname', email: 'testuser@example.com', password: 'Hunter2', password_confirmation: 'Hunter2')
      expect(@user).to be_valid
    end

    it 'validates first_name field' do
      @user = User.new(last_name: 'Lastname', email: 'testuser@example.com', password: 'Hunter2', password_confirmation: 'Hunter2')
      expect(@user).not_to be_valid
    end

    it 'validates last_name field' do
      @user = User.new(first_name: 'Firstname', email: 'testuser@example.com', password: 'Hunter2', password_confirmation: 'Hunter2')
      expect(@user).not_to be_valid
    end

    it 'validates email field' do
      @user = User.new(first_name: 'Firstname', last_name: 'Lastname', password: 'Hunter2', password_confirmation: 'Hunter2')
      expect(@user).not_to be_valid
    end

    it 'validates password field' do
      @user = User.new(first_name: 'Firstname', last_name: 'Lastname', email: 'testuser@example.com', password_confirmation: 'Hunter2')
      expect(@user).not_to be_valid
    end

    it 'validates password_confirmation field' do
      @user = User.new(first_name: 'Firstname', last_name: 'Lastname', email: 'testuser@example.com', password: 'Hunter2')
      expect(@user).not_to be_valid
    end
    
  end
end
