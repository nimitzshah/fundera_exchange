class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :type
      t.integer :parent_id, :index
      t.string :text
    end
    add_index :posts,[:parent_id]
  end
end
