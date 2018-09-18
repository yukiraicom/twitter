class Favorite < ApplicationRecord
  balongs_to :user
  belongs_to :tweet
end
