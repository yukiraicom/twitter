class CreateTags < ActiveRecord::Migration[5.0]
  def change
    create_table :tags do |t|
      t.string :tag
      t.integer :tweet_id
      t.timestamps
    end
  end
end
