class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string   :type
      t.integer  :parent_id
      t.string   :topic
      t.integer  :view_count
      t.string   :text
      t.integer  :rating, :default =>0
      t.datetime :creation_time
    end
    add_index :posts,[:parent_id]
    add_index :posts ,[:creation_time]
  end
end
