require 'rails_helper'

RSpec.describe User, type: :model do
  before :each do
    @user = User.new(name: 'Elisha', email: 'Elisha@gmail.com', password: 123456,
                     password_confirmation: 123456)
  end

  context 'validations' do
    it 'is valid with valid attributes' do
      @user.save
      expect(@user).to be_valid
    end

    it 'is not valid without email' do
      @user.email = nil
      @user.save
      expect(@user).to_not be_valid
    end

    it 'is not valid without password' do
      @user.password = nil
      @user.save
      expect(@user).to_not be_valid
    end
  end

  context 'associations' do
    it 'has_many foods' do
      t = User.reflect_on_association(:foods)
      expect(t.macro).to eq :has_many
    end

    it 'has_many recipes' do
      t = User.reflect_on_association(:recipes)
      expect(t.macro).to eq :has_many
    end
  end
end
