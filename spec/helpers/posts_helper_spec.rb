require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the PostsHelper. For example:
#
# describe PostsHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe PostsHelper, type: :helper do
  it 'can add 5 and 4' do
    expect(add(5,4)).to eq 9
  end

  it 'can add 2 and 3' do
    expect(add(2,3)).not_to eq 9
  end
end
