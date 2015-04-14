class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |vote|
      vote.int :post_id
    end
  end
end
