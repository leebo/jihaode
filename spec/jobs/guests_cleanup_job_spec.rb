require 'rails_helper'

RSpec.describe OneJob, type: :job do
  it 'can preform' do
    OneJob.perform_in(10.second)
  end

end
