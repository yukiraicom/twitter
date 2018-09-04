class Hashtag < ApplicationRecord
  belongs_to :tweet, optional: true
end
