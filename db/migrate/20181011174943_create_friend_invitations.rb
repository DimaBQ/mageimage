class CreateFriendInvitations < ActiveRecord::Migration[5.2]
  def change
    create_table :friend_invitations do |t|
      t.references :account, unique: true
      t.text :invitations_list, null: true
      t.timestamps
    end
  end
end
