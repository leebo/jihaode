class SomeJob
  include Sidekiq::Worker
  include Sidetiq::Schedulable

  recurrence { daily }

  def perform
    # do stuff ...
    #   end
    #   end
  end
end
