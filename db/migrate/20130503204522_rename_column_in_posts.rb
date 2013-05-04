class RenameColumnInPosts < ActiveRecord::Migration
  def up
    rename_column :posts, :comments_counter, :comments_count
  end

  def down
    rename_column :posts, :comments_count, :comments_counter
  end
end
