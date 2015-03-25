class GuestsCleanupJob < ActiveJob::Base
  queue_as :default
  around_enqueue :ae
  around_perform :ap

  def perform(*args)
    # Do something later
  end

  private
  def ae
    p "before enqueue"
    yield
    p "after enqueue"
  end
  def ap
    p "before perform"
    yield
    p "after perform"
  end
end
