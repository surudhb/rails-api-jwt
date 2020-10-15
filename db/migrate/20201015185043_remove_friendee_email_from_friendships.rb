class RemoveFriendeeEmailFromFriendships < ActiveRecord::Migration[6.0]
  def change
    remove_column :friendships, :friendee_email, :string
  end
end
