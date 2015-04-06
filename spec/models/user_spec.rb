require 'rails_helper'

RSpec.describe User, type: :model do

  it 'email is prsent' do
    user = create(:admin_user, email: '')
    user = create(:user, email: '')
    expect(user).to be_invalid
  end

  it 'email is not valid' do
    user = build(:user, email: 'aaa@fdsafds')
    expect(user).to be_invalid
    expect(user.errors[:email]).to include('is invalid')
  end

  it 'password is present' do
    user = build(:user, password: '')
    expect(user).to be_invalid
  end

  it 'password is too short' do
    user = build(:user, password: '12345')
    expect(user).to be_invalid
  end

  it 'user is valid' do
    user = build(:user)
    expect(user).to be_valid
  end

  describe "redis counter" do
    before :each do
      @user = create(:user)
    end
    it 'is count' do
      expect(@user.views.value).to eq(1)
    end

    it 'is count add 1' do
      @user.views.increment
      expect(@user.views).to eq(1)
    end

  end

end
