class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :product_name
      t.string :work_name
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
