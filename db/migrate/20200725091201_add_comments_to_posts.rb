class AddCommentsToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :comments, :text
  end
end
