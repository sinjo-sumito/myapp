class AddQuantityToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :quantity, :integer
  end
end
