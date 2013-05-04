class AddCommentsCountToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :comments_counter, :integer
  end
end
