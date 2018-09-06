class AddColumnToTweet2 < ActiveRecord::Migration[5.0]
  def change
    add_column :tweets, :tags, :string
  end
end
