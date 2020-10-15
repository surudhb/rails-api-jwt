class RemoveFrienderEmailFromFriendships < ActiveRecord::Migration[6.0]
  def change
    remove_column :friendships, :friender_email, :string
  end
end
