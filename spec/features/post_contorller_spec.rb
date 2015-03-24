require 'rails_helper'

feature 'fdsafdsaf' do
  scenario 'test1' do
      visit '/posts/'
      click_on 'New Post'
      expect(current_path).to eq(new_post_path)
      expect(page).to have_content('back')
  end
end
