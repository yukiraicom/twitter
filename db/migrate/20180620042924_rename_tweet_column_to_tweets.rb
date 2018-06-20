class RenameTweetColumnToTweets < ActiveRecord::Migration[5.0]
  def change
    rename_column :tweets, :tweet, :text
  end
end
