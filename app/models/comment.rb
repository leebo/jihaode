class Comment
  include Mongoid::Document
  field :message, type: String
end
