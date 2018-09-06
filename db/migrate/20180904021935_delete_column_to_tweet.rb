class DeleteColumnToTweet < ActiveRecord::Migration[5.0]
  def change
    remove_column :tweets, :tags, :string
  end
end
