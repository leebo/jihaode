require 'rails_helper'

RSpec.describe User, type: :model do

  it 'User first is nil' do
    expect(User.first).to eq(nil)
  end

  it 'email is prsent' do
    user = User.new
    user.password = '12345678'
    user.save
    p user.errors.messages
    expect(user.valid?).to eq(false)
  end

  it 'email is not valid' do
    user = User.new
    user.email = "test@aaa"
    user.password = '12345678'
    user.save
    p user.errors.messages
    expect(user.valid?).to eq(false)
  end

  it 'password is present' do
    user = User.new
    user.email = "test@aaa.com"
    user.save
    p user.errors.messages
    expect(user.valid?).to eq(false)
  end

  it 'password is too short' do
    user = User.new
    user.email = "test@aaa.com"
    user.password = '12345'
    user.save
    p user.errors.messages
    expect(user.valid?).to eq(false)
  end

  it 'user is valid' do
    user = User.new
    user.email = "me@bobo.im"
    user.password = '12345678'
    user.save
    p user.errors.messages
    expect(user.valid?).to eq(true)
  end
end
