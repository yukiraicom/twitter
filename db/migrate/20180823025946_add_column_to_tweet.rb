class AddColumnToTweet < ActiveRecord::Migration[5.0]
  def change
    add_column :tweets, :image, :string
  end
end
