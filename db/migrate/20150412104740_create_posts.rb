class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :type
      t.integer :parent_id
      t.string :text
      t.integer :rating, :default =>0
    end
    add_index :posts,[:parent_id]
  end
end
