require 'rails_helper'

RSpec.describe User, type: :model do

  it 'email is prsent' do
    user = User.new
    user.password = '12345678'
    user.save
    expect(user).to be_invalid
  end

  it 'email is not valid' do
    user = User.new
    user.email = "test@aaa"
    user.password = '12345678'
    user.save
    expect(user).to be_invalid
    expect(user.errors[:email]).to include('is invalid')
  end

  it 'password is present' do
    user = User.new
    user.email = "test@aaa.com"
    user.save
    expect(user).to be_invalid
  end

  it 'password is too short' do
    user = User.new
    user.email = "test@aaa.com"
    user.password = '12345'
    user.save
    expect(user).to be_invalid
  end

  it 'user is valid' do
    user = User.new
    user.email = "me@bobo.im"
    user.password = '12345678'
    user.save
    expect(user).to be_valid
  end

  describe "redis counter" do

    it 'is count' do
      user = User.create(
        email: "bobo@im.com",
        password: "123321123"
      )
      expect(user.views).to eq(0)
    end

    it 'is count add 1' do
      user = User.create(
        email: "bobo@im.com",
        password: "123321123"
      )
      user.views.increment
      expect(user.views).to eq(1)
    end

  end

end
