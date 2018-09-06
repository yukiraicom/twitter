class RenameTagsColumn < ActiveRecord::Migration[5.0]
  def change
    rename_table :tags, :hashtags
  end
end
