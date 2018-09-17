class AddColumnToUserProfileCanopy < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :profileCanopy, :string
  end
end
