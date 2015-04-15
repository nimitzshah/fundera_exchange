class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |vote|
      vote.integer  :post_id
      vote.integer  :rating
      vote.integer  :user_id
      vote.datetime :creation_date
    end
  end
end
