require 'rails_helper'

RSpec.describe GuestsCleanupJob, type: :job do
  it 'can preform' do
    GuestsCleanupJob.set(wait_until: 1.minute.from_now).perform_later
    GuestsCleanupJob.perform_later
  end
end
