require 'rails_helper'

RSpec.describe Post, type: :model do
  it 'is can save' do
    post = create(:post)
    expect(post.title).to eq('1MyString')
  end
  it 'find with nil' do
    post = Post.find("fdsafdsas")
    expect(post).to eq nil
  end
end
