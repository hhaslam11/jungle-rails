require 'rails_helper'

RSpec.describe User, type: :model do

  subject {
    described_class.new(first_name: 'Firstname', last_name: 'Lastname', email: 'testuser@example.com', password: 'Hunter2', password_confirmation: 'Hunter2')
  }

  describe 'Validations' do

    it 'validates with all fields correct' do
      expect(subject).to be_valid
    end

    it 'validates first_name field' do
      subject.first_name = nil
      expect(subject).not_to be_valid
    end

    it 'validates last_name field' do
      subject.last_name = nil
      expect(subject).not_to be_valid
    end

    it 'validates email field' do
      subject.email = nil
      expect(subject).not_to be_valid
    end

    it 'validates password field' do
      subject.password = nil
      expect(subject).not_to be_valid
    end

    it 'validates password_confirmation field' do
      subject.password_confirmation = nil
      expect(subject).not_to be_valid
    end

    xit 'validates if user email is not already in database (case insensitive)' do
      user1 = User.new(first_name: 'Firstname', last_name: 'Lastname', email: 'testuser@example.com', password: 'Hunter2', password_confirmation: 'Hunter2')
      user2 = User.new(first_name: 'Firstname', last_name: 'Lastname', email: 'testuser@example.com', password: 'Hunter2', password_confirmation: 'Hunter2')
      expect(@user2).to be_valid
    end
  end
end
