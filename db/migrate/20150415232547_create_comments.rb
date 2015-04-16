class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string   :text
      t.datetime :creation_date
      t.integer  :post_id
    end
  end
end
